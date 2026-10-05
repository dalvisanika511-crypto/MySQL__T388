-- SELF JOIN-- 
use t388;
create table emp
( ID int primary key,
EMP_Name varchar (20),
Manager_ID int
);

insert into emp values 
(301, "Amar", 305),
(302, "Bharat", 304),
(303, "Chitra", NULL),
(304, "Eisha", 303),
(305, "Abhi", 303);
select *from emp;
drop table emp;

select
E.ID as employee_Id,
E.EMP_Name as Employee,
M.EMP_Name as Manager
from
emp as E
left join 
emp as M 
on M.Id = E.manager_Id;

-- CROSS JOIN --

create table chess_team_1
( ID int primary key,
Players_Name varchar (20)
);

insert into chess_team_1 values 
(301, "Varun"),
(302, "Nani"),
(303, "Vijay"),
(304, "Sidhart");

create table chess_team_2
( ID int primary key,
Players_Name varchar (20)
);

insert into chess_team_2 values 
(301, "Varshra"),
(302, "Nitesh"),
(303, "Vijaya"),
(304, "Swara");
select *from chess_team_1;
select *from chess_team_2;

select A.ID, B.ID, A.Players_Name, B.Players_Name
from
chess_team_1 as A
Cross join
chess_team_2 as B;


-- VIEW & CTE-[COMMON TABLE EXPRESSION]--
CREATE VIEW T388_VIEW_1 AS 
select A.ID as AID, B.ID AS BID, A.Players_Name as name_A, B.Players_Name as Name_B
from
chess_team_1 as A
Cross join
chess_team_2 as B;
Select*from T388_VIEW_1;





