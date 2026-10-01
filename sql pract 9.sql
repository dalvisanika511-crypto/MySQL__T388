-- outer join
use t388;
select *from t388_name;
select *from t388_salary_2;
select n.ID as name_ID,s.ID as salary_ID, name, salary from t388_name as n left join t388_salary_2 as s on s.ID =n.ID union 
select n.ID as name_ID,s.ID as salary_ID, name, salary from t388_name as n right join t388_salary_2 as s on s.ID =n.ID;