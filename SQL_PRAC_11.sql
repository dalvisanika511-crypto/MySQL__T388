-- NORMALIZATION --
-- Practical 11th --
-- window function [ RANKING ]--
use t388;
select*from employee;
select 
EmployeeID,
FullName,
Department,
Salary,
row_NUMBER() OVER(PARTITION BY DEPARTMENT) AS RANKINDEPARTMENT
FROM
EMPLOYEE order by department asc;
select fullname, department, salary, rank() over (partition by salary) as rank_indepartment
from employee order by salary asc;

select fullname, salary, rank() over (order by salary) as rank_indepartment
from employee;

select fullname, salary, dense_rank() over (order by salary) as rank_indepartment
from employee;
select department, sum(salary) as TOTAL_SALARY, avg(Salary) AS AVERAGE_SALARY From employee group by department;
select 
EmployeeID,
FullName,
Department,
Salary,
avg(salary) over (partition by department) as DepartmentAvgSalary,
sum(salary) over (partition by department) as DepartmentTotalSalary
from EMPLOYEE
 order by department, Salary DESC;
 
 
 select 
EmployeeID,
FullName,
Department,
Salary,
avg(salary) over (partition by department) as DepartmentAvgSalary,
sum(salary) over (partition by department) as DepartmentTotalSalary
from EMPLOYEE
where gender ="female"
 order by department, Salary DESC;
 
  select 
EmployeeID,
FullName,
Department,
Salary,
avg(salary) over (partition by department) as DepartmentAvgSalary,
sum(salary) over (partition by department) as DepartmentTotalSalary
from EMPLOYEE
where gender ="male"
 order by department, Salary DESC;
 
  select 
EmployeeID,
FullName,
Department,
Age,
Salary,
LAG(salary, 1, 0) over (partition by department ORDER BY Age ASC) as PreviousEmployeeSalaryBYAGE
from EMPLOYEE
where gender ="male"
 order by department, Salary DESC;
 
  select 
EmployeeID,
FullName,
Department,
Age,
Salary,
LAG(salary, 1, 0) over ( ORDER BY SALARY) as PreviousEmployeeSalaryBYAGE
from EMPLOYEE
 order by SALARY;
 
 
 select 
EmployeeID,
FullName,
Department,
Age,
Salary,
LAG(salary, 2, 0) over ( ORDER BY SALARY) as PreviousEmployeeSalaryBYAGE,
(SALARY -(LAG(salary, 1, 0) over ( ORDER BY SALARY))) as DIFF
from EMPLOYEE
 order by SALARY;
 
 
 select 
EmployeeID,
FullName,
Department,
Age,
Salary,
LEAD(salary,3, '-') over ( ORDER BY SALARY) as PreviousEmployeeSalaryBYAGE,
(SALARY -(LAG(salary, 1, 0) over ( ORDER BY SALARY))) as DIFF
from EMPLOYEE
 order by SALARY;
 
 
 