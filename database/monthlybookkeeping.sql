use dmc353_1;

-- Charging the plans
insert into Transaction (transactionType, transactionAmount, accountNumber, transactionFees, transactionDescription)
select "CHARGE", -1.0*branchCharge, Account.accountNumber, 0, concat("Charge for your plan " ,branchPlanOption)
from Account
join Charge_plans on branchPlanId = accountPlanId
where accountNumber not in (
select Account.accountNumber
from Account, Transaction
where Transaction.accountNumber = Account.accountNumber and Transaction.transactionType = "CHARGE"
and YEAR(Transaction.transactionDate) = year(curdate()) and MONTH(Transaction.transactionDate) = MONTH(curdate()));

update Account
set accountBalance = accountBalance + ifnull((
  select transactionAmount
  from Transaction
  where transactionType = "CHARGE" and Transaction.accountNumber = Account.accountNumber
  and year(transactionDate) = year(curdate()) and month(transactionDate) = month(curdate())),0);



-- Charging / adding interest
insert into Transaction (transactionType, transactionAmount, accountNumber, transactionFees, transactionDescription)
select "INTEREST", interestRatePercentage*accountBalance, Account.accountNumber, 0, "Interest"
from Account
join Interest_Rate on interestRateId = accountRateId
where accountNumber not in (
select Account.accountNumber
from Account, Transaction
where Transaction.accountNumber = Account.accountNumber and Transaction.transactionType = "INTEREST"
and YEAR(Transaction.transactionDate) = year(curdate()) and MONTH(Transaction.transactionDate) = MONTH(curdate()));

update Account
set accountBalance = ifnull(accountBalance,0) + ifnull(
  (select transactionAmount
  from Transaction
  where transactionType = "INTEREST" and Transaction.accountNumber = Account.accountNumber
  and year(transactionDate) = year(curdate()) and month(transactionDate) = month(curdate()))
,0);



-- Paying the employees
SET @pay_year = year(curdate() - INTERVAL 1 DAY);
set @pay_month = month(curdate() - INTERVAL 1 DAY);

insert into Employee_Payroll (employeeId, employeePaymentAmount)
select Employee.employeeId, hours*employeeHourlySalary as pay
from Employee, (
  select employeeId, sum(employeeScheduleHours) as hours
  from Employee_Schedule
  where year(employeeScheduleDay) = @pay_year and month(employeeScheduleDay) = @pay_month
  and employeeScheduleCode in ('working','holidays','sick_paid')
  group by employeeId
) pay
where pay.employeeId = Employee.employeeId

and pay.employeeId not in (
  select employeeId from Employee_Payroll
where year(employeePaymentDate) = year(curdate()) and month(employeePaymentDate) = month(curdate()) and day(employeePaymentDate) = day(curdate())

);