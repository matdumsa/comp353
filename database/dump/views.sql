use dmc353_1;

drop view Client_Overview;

CREATE VIEW `dmc353_1`.`Client_Overview` AS
select `dmc353_1`.`Client`.`clientId` AS `clientId`
,`dmc353_1`.`Client`.`clientAddress` AS `clientAddress`
,`dmc353_1`.`Client`.`clientDateOfBirth` AS `clientDateOfBirth`
,`dmc353_1`.`Client`.`clientJoiningDate` AS `clientJoiningDate`
,`dmc353_1`.`Client`.`clientName` AS `clientName`
,`dmc353_1`.`Client`.`clientCategory` AS `clientCategory`
,(select count(0) from `dmc353_1`.`Clients_own_account` `cos` where (`cos`.`clientId` = `dmc353_1`.`Client`.`clientId`)) AS `accountCount`
,(select sum(`acc`.`accountBalance`) from (`dmc353_1`.`Account` `acc` join `dmc353_1`.`Clients_own_account` `cos` on((`acc`.`accountNumber` = `cos`.`accountId`))) where (`cos`.`clientId` = `dmc353_1`.`Client`.`clientId`)) AS `netValue`
from `dmc353_1`.`Client`;

drop view Password;

create view Password as

select concat(clientCardNumber,'') 'Username', clientPassword as Password, 'client' as Type, clientId as Id
from ClientCard
union all
select el.employeeId, employeeLoginPassword, 'manager' as Type, el.employeeId as Id
from Employee_login el
join Employee e on e.employeeId = el.employeeId
where e.employeeId in (select branchManagedBy from Branch)
union all
select el.employeeId, employeeLoginPassword, 'clerk' as Type, el.employeeId as Id
from Employee_login el
join Employee e on e.employeeId = el.employeeId
where e.employeeId not in (select branchManagedBy from Branch);

drop view billableTransactionSoFarThisMonth;

CREATE VIEW `billableTransactionSoFarThisMonth` AS 
select `Transaction`.`accountNumber` AS `accountNumber`, count(*) AS `transactionCount`
from `Transaction`
where (((`Transaction`.`transactionType` = 'WITHDRAW') or ((`Transaction`.`transactionType` = 'TRANSFER') and (`Transaction`.`transactionAmount` < 0)))
and (month(`Transaction`.`transactionDate`) = month(curdate())) and (year(`Transaction`.`transactionDate`) = year(curdate()))) group by `Transaction`.`accountNumber`;

drop view profitability_report;

create view profitability_report
as
select branchId, rm.name, 
(
select sum(transactionFees)+sum(case when transactionType='CHARGE' then -1.0*transactionAmount else 0.0 end)
from Account, Transaction
where Account.accountBranchId = m.branchId and Transaction.accountNumber = Account.accountNumber
and year(transactionDate) = rm.year and month(transactionDate) = rm.month
) as FeesReceived, 

(
select sum(-1*transactionAmount)
from Account, Transaction
where Account.accountBranchId = m.branchId and Transaction.accountNumber = Account.accountNumber and transactionType = "INTEREST"
and year(transactionDate) = rm.year and month(transactionDate) = rm.month

) as InterestReceived, 


(
select sum(employeePaymentAmount)
from Employee_Payroll, Employee
where Employee.employeeId = Employee_Payroll.employeeId and Employee.employeeBranchId = m.branchId
and year(employeePaymentDate) = rm.year and month(employeePaymentDate) = rm.month

) as PayGivenToEmployees

 from Branch m, Reports_Month rm


drop view account_detail

create view `account_detail` AS select `Account`.`accountNumber` AS `accountNumber`,`Account`.`accountType` AS `accountType`,`Account`.`accountBalance` AS `accountBalance`,`Account`.`accountCreationDate` AS `accountCreationDate`,`Account`.`accountOption` AS `accountOption`,`Account`.`accountBranchId` AS `accountBranchId`,`Account`.`accountRateId` AS `accountRateId`,`Account`.`accountPlanId` AS `accountPlanId`,`Account`.`accountCreditLimit` AS `accountCreditLimit`,`Account`.`accountLevel` AS `accountLevel`,`b`.`transactionCount` AS `transactionCount`,`p`.`branchPlanId` AS `branchPlanId`,`p`.`branchPlanLimit` AS `branchPlanLimit`,`p`.`branchPlanOption` AS `branchPlanOption`,`p`.`branchCharge` AS `branchCharge`,`p`.`branchChargeExcessLimit` AS `branchChargeExcessLimit` from ((`Account` left join `billableTransactionSoFarThisMonth` `b` on((`b`.`accountNumber` = `Account`.`accountNumber`))) join `Charge_plans` `p` on((`p`.`branchPlanId` = `Account`.`accountPlanId`)));
	
