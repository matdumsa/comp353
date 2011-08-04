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
  and year(transactionDate) = year(curdate()) and month(transactionDate) = month(curdate())),0)
