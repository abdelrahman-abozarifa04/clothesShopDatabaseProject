use company;



--insert record in department with write column name
insert into departments(dept_name)
values('machine');


--insert record in department without write column name
insert into departments
values('DS');



--insert record in employees with write column name
insert into employees(emp_id,lname,fname,dept_id,salary)
values(1,'ibrahim','mahmoud',1,7440);


--insert record in employees without write column name
insert into employees
values(2,'mahmoud','Ahmed',5500,1);


--insert mutliple record in employees with write column name
insert into  employees(emp_id,lname,fname,dept_id,salary)
values(7,'ibrahim','mahmoud',1,5000),
(4,'ibrahim','zaki',1,6000),
(8,'Emad','mahmoud',1,5500),
(3,'syed','Ali',1,4000);




--update all data
update employees
set fname='salah';


--update specific data
update employees
set dept_id=3
where dept_id=1;


--remove all data 
delete  from employees;


--remove specific data from departments
delete from departments
where dept_id=2;


--remove from frist three records
delete top(3) from employees;





---------------------------------merge-------------------------------------

--create tabel (employees)
create table copy_employees(
emp_id int primary key,
Fname varchar(200) not null,
Lname varchar(200) not null,
salary float check (salary >=3000),
dept_id int 
);


merge into copy_employees c using employees e
on (c.emp_id=e.emp_id)
when matched then update
set
c.fname=e.fname,
c.lname=e.lname,
c.salary=e.salary,
c.dept_id=e.dept_id
when not matched then insert
values(2,'ali','ahmed',3000,3);
