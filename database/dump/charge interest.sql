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
,0)
