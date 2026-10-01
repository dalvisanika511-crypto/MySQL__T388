-- outer join
use t388;
select *from t388_name;
select *from t388_salary_2;
select n.ID as name_ID,s.ID as salary_ID, name, salary from t388_name as n left join t388_salary_2 as s on s.ID =n.ID union 
select n.ID as name_ID,s.ID as salary_ID, name, salary from t388_name as n right join t388_salary_2 as s on s.ID =n.ID;

-- 10th practical--
-- foreign key-- 
use t388;
create database FK_T388;
use FK_T388;
create table students
(ID int primary key auto_increment, 
Name varchar (20));
insert into students values 
(1, "Kunal"); 

desc students;
select*from students;

insert into students(name) values
("Suman");
delete from students where id = 2;

create table info 
(id int,
Scores int,
foreign key (id) references students (ID));

insert into info values (1, 300), (3, 300);
select *from info;
 
 
 
 
 create database T388_FK_PK;
 CREATE TABLE Employee ( 
 ID INT PRIMARY KEY, 
 Name VARCHAR(100) NOT NULL, 
 Age INT, 
 Salary DECIMAL(10, 2) 
); 

CREATE TABLE Project ( 
 ProjectID INT PRIMARY KEY, 
 ProjectName VARCHAR(100) NOT NULL, 
 ID INT, 
 FOREIGN KEY (ID) REFERENCES Employee(ID) 
 ON UPDATE CASCADE 
 ON DELETE CASCADE 
);

CREATE TABLE Project ( 
 ProjectID INT PRIMARY KEY, 
 ProjectName VARCHAR(100) NOT NULL, 
 ID INT, 
 FOREIGN KEY (ID) REFERENCES Employee(ID) 
 ON UPDATE CASCADE 
 ON DELETE CASCADE 
);

INSERT INTO Employee (ID, Name, Age, Salary) VALUES 
(101, 'Alice Smith', 29, 75000.00), 
(102, 'Bob Jones', 34, 82000.50), 
(103, 'Charlie Brown', 41, 95000.00), 
(104, 'Diana Prince', 26, 68000.00);

INSERT INTO Project (ProjectID, ProjectName, ID) VALUES 
(1, 'Website Redesign', 101), 
(2, 'Cloud Migration', 101), 
(3, 'Mobile App Launch', 102), 
(4, 'Data Analytics Pipeline', 103);

select*from employee;
select*from project;

update employee set id =500 where id =101;
-- update project set projectname ="Hello" where id =102;--
insert into employee values (666, "Kamlesh", 50000, 34);
delete from employee where id =666;






