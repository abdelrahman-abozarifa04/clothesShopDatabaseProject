use company;


--retrieve all employees
select * from employees;


--retrieve specific column
select fname,salary
from employees;


--use concatenation fname,lname as fullname 
select fname+' '+lname as fullname
from employees;

--use concatenation fname,lname as fullname 
select CONCAT(fname,' ',lname) as fullname
from employees;


--retreive data as unique
select distinct(fname)
from employees;



--use condition in select 
select * from employees
where salary >=4000;


--use And in where   true +false=false     true+ true=true
select * from employees
where salary >=4000 and fname='ahmed';



--use or in where   true +false=true    true+ true=true
select * from employees
where salary >=4000 or fname='ahmed';



--use order by to order results as asc or desc
select * from employees
where salary >=4000 or fname='ahmed'
order by salary desc;

-- wildcard-->'%a' , 'a%',%a%, _o% ,__s%,[a-c]%,[abc]%,ahm%,a%b
select * from employees
where fname like '[a-c]%';


--use in for text
select * from employees
where fname in('ahmed','mahmoud','mohmed')
;

--use in  for number
select * from employees
where salary in(3500,6000,4000,9000)
;


--use between use range
select * from employees
where salary between 3000 and 4000;
;

--use between use range
select * from employees
where Lname is null
;


------------------------use aggregate function(sum,avg,max,min,count)--------------------------------------------------------------------
select count(*) as number_employees
from employees
where dept_id=1;

select  max(salary) as max_salary
from employees
where dept_id=9;


-----------use union -union all - intersect - EXCEPT
select  dept_name from departments
 union -- or union all 
select dept_name from car_department;





--------------------create view- ------ update when data updated in source ----------------------------


create view employees_salary(fname,salary)
as
select fname,salary from employees
where salary>=6000;


