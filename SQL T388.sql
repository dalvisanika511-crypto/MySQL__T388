use t388;
show tables;
select * from employee;
delete from employee where gender ="Male";
delete from employee where age>25;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
truncate table employee;
alter table employee 
add Location varchar(10);
alter table employee 
add Bonus float after salary;
select * from employee;
alter table employee 
add Title Varchar(5) first;
desc employee;
alter table employee modify fullname varchar(35);
alter table employee change column location address varchar(36);
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
update employee set address ="Thane";
alter table employee drop title, drop bonus, drop address;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
alter table employee 
add Location varchar(10);
alter table employee 
add Bonus float after salary;
alter table employee 
add Location varchar(10);
select * from employee;
alter table employee modify fullname varchar(35);
alter table employee change column location address varchar(36);
alter table employee 
add Title Varchar(5) first;
update employee set address ="Thane";
update employee set address ="Dombivali"
where department ="IT";
UPDATE employee set Title="Mr" where gender= "Male";
UPDATE employee set Title="Mrs" where gender= "Female";
select * from employee;
update employee set bonus=salary*0.05;

use t388;
create table Kisan_Info 
( ID int unique not null,
Name varchar(50) unique not null,
Age int check (age>=18),
Email_id varchar(40) default "dummy@gmail.com"
);
desc kisan_info;
insert into kisan_info values
(1022, "Sarthak Bhosale", 45, ".");
select*from kisan_info;

update kisan_info set email_id=default
where id=1022;
select*from kisan_info;
alter table kisan_info modify age int check (age>=0);
insert into kisan_info values
(1020, "Ram Bhosale", 12, default);
select*from kisan_info;
INSERT INTO kisan_info
VALUES (1020, "Ram Bhosale", 18, DEFAULT);
ALTER TABLE kisan_info
DROP CHECK kisan_info_chk_1;
alter table kisan_info modify age int check (age>=0);
insert into kisan_info values
(1020, "Ram Bhosale", 12, default);
select*from kisan_info;
show create table kisan_info;
ALTER TABLE kisan_info
DROP CHECK kisan_info_chk_2;
ALTER TABLE kisan_info
DROP CHECK kisan_info_chk_3;
insert into kisan_info values
(1020, "Ram Bhosale", 12, default);
select*from kisan_info;


select distinct department from employee;
select distinct gender from employee;

use t388;
show tables;
select * from employee;
USE t388_db;

SHOW TABLES;
select * from employee;
SHOW DATABASES;
USE t388_db;
SHOW TABLES;
SELECT * FROM employee;

select * from employee order by EmployeeId;
select * from employee where gender ="male" order by fullname;
select * from employee limit 5;
-- W H G O--CLAUSES
-- WHERE, GROUP BY [-HAVING], ORDER BY

Select department, count(EmployeeId) from employee group by department;
Select gender, count(EmployeeId) from employee group by gender;
Select department, sum(salary) from employee group by department;
Select department, avg(salary) from employee group by department;
Select department, avg(salary), sum(salary) from employee group by department;
Select department, avg(salary) as avg_salary, sum(salary) as total_salary from employee group by department;
select Department, count(Gender) from employee group by department;

select Department, count(*) from employee group by department;
 


select avg(salary) from employee;
-- having clause(along with Group By Clause)
select Department, count(*) from employee group by department having sum(salary)>150000;

select Department, avg(age),count(*) from employee group by department having avg(age) <27;

select * from employee;
select Department, count(*) , sum(salary) from employee group by department;

CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME 
);

INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select * , datediff(enddate,startdate) as duration from projects;
select * , datediff(enddate,startdate) as duration from projects 
where  datediff(enddate,startdate) = 45;
alter table projects add duration int;
select * from projects ;
UPDATE projects 
SET duration = DATEDIFF(enddate, startdate);
select now();
select duration,count(*) from projects group by duration;
select duration,count(*) from projects group by duration having count(*) >=2;
select duration,count(*) from projects where duration>=20
group by duration having count(*)>=2
order by duration desc;

select * from employee order by employeeid desc limit 5;

select*from employee limit 2, 3;
use projects;
select * from projects where employeeid is not null; 
SHOW TABLES;
update projects set employeeid = 1003 where projectid =6;
select* from projects;