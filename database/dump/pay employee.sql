insert into Employee_Payroll (employeeId, employeePaymentAmount)

select Employee.employeeId, hours*employeeHourlySalary as pay
from Employee, (

select employeeId, sum(employeeScheduleHours) as hours
from Employee_Schedule
where year(employeeScheduleDay) = year(curdate() - INTERVAL 1 DAY) and month(employeeScheduleDay) = month(curdate() - INTERVAL 1 DAY)
and employeeScheduleCode in ('working','holidays','sick_paid') ) pay
where pay.employeeId = Employee.employeeId

and pay.employeeId not in (
  select employeeId from Employee_Payroll
where year(employeePaymentDate) = year(curdate()) and month(employeePaymentDate) = month(curdate()) and day(employeePaymentDate) = day(curdate())

)