CREATE DATABASE pizza_sales_analysis;
use pizza_sales_analysis;
CREATE TABLE `order` (
    id INT,
    date DATE
);
ALTER TABLE `order`
ADD COLUMN time TIME AFTER date;
RENAME TABLE `order` TO orders;
ALTER TABLE orders
ADD PRIMARY KEY (id);
SHOW COLUMNS FROM orders;
SELECT * FROM orders;

-- 6 practical --
-- auto increment --
select exp(2);
select power (2,4);
select pow (2,4);
use t388;
select*, sqrt(salary) from employee;

select concat("good"," ", "morning");
select concat("good"," ", "morning") as remarks;

select*, concat(fullname, "-", department) as code from employee;
select*, concat(fullname, "@itvedant.com") as email from employee;

select*, lower(fullname) as newname, upper(fullname) as CAPITALNAME from employee;
select* from employee;
alter table employee add email varchar(20);
alter table employee modify EMAIL varchar(50);

UPDATE employee set EMAIL = concat(fullname, "@gmail.com");
select replace("Hello Everyone, Good Morning","Night","Morning") as Statement;
select fullname, replace(fullname, "Mohanty", "Patil") from employee;
select fullname, replace(fullname, "Jones", "Patil") as changed, 
reverse(fullname)
 from employee;

select salary, length(salary)
from employee;

select fullname, length(fullname)
from employee;

select substring("Maharashtra", 1, 3);
select substring("Maharashtra", 5, 3);

select* from trimmer;

select FULLNAME,length(FULLNAME),ltrim(FULLNAME),length((ltrim(FULLNAME))) as LTRIM from trimmer;
select FULLNAME,length(FULLNAME),rtrim(FULLNAME),length((rtrim(FULLNAME))) as RTRIM from trimmer;
Select fullname, trim(fullname) as trim_together from trimmer;

select age from employee where employeeid = 1002;
select age from employee where fullname = "Mary smith";


select * from employee
 where age = (select age from employee where fullname = "Mary smith");
 
select * from employee
 where department = (select department from employee where fullname= "John doe");
 
 select max(salary) from employee;

-- to show 2nd highest salary--
 select max(salary) from employee where salary <(select max(salary) from employee);
 -- to show 3rd highest salary--
 select max(salary) from employee where salary <(select max(salary) from employee where salary < (select max(salary) from employee));
 