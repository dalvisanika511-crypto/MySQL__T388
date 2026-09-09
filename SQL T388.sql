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


