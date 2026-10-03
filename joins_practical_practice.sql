-- joins-- 
use t388_db;
create table students
(Id int,
Name varchar(20),
Age int,
Subject varchar(35)
);

Insert into students values 
(111, "Sanika Dalvi", 22, "MySql"),
(112, "Arya Pawar", 25, "MySql"),
(113, "Dhriti Palange", 32, "MySql"),
(114, "Aarya Deshmukh", 23, "MySql"),
(115, "Vaishnavi Kadam", 21, "MySql"),
(116, "Sahil Shelke", 33, "MySql"),
(117, "Swayam Dalvi", 20, "MySql");

use t388_db;
select *from students;

create table std_Data
( Id int,
Marks int);

Insert into std_Data values
(111, 48),
(112, 49),
(120, 45),
(124, 44),
(115, 43),
(119, 41),
(117, 40);

select*from std_Data;

-- join work as a inner join-- shows only common rows --
select students.Id, name, Subject, std_Data.marks from students inner join std_Data on students.Id = std_Data.Id;

-- left join--shows left rows ---
select students.Id, name, Subject, std_Data.marks from students left join std_Data on students.Id = std_Data.Id;

-- right join-- shows right rows-- 
select students.Id, name, Subject, std_Data.marks from students right join std_Data on students.Id = std_Data.Id;

-- Outer join-- want to combine rows from two table and keep unmatched rows--
-- left outer join--- keep all rows from left table --
select students.Id, name, Subject, std_Data.marks from students left outer join std_Data on students.Id = std_Data.Id;

-- right outer join-- keep all rows from right table--
select students.Id, name, Subject, std_Data.marks from students right outer join std_Data on students.Id = std_Data.Id;

-- full outer join--  unsupported function in mysql so instead of this we use following--
-- union all -- insert both table rows as it is including duplicates --
select *from students left join std_Data on students.Id = std_Data.Id
union all 
select *from students right join std_Data on students.Id = std_Data.Id;

-- union -- insert both table rows, removing duplicates--
select *from students left join std_Data on students.Id = std_Data.Id
union 
select *from students right join std_Data on students.Id = std_Data.Id;




