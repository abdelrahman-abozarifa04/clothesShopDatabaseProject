
----------------------string function (concat-upper-lower-substring-replace)-----------------------

--generate email by concatenation
select concat(upper(fname),'.',lower(lname),'@eru.edu.eg') as email
from employees
order by email;


--replacement ahmed by A
select replace(fname,'ahmed','A') as shortName 
from employees;

--cutting string and  display cutting characters
select substring(fname,1,2) as shortName
from employees;





-----------where-----join----inner join -----outer join-----right outer join ----left outer join ---------------


--retreive from more table  without join 
select employees.Fname as employee_name,departments.dept_name as department_name
from employees,departments
where departments.dept_id=employees.dept_id;


--retreive from more table  with join 
select employees.Fname as employee_name,departments.dept_name as department_name
from employees join departments
on  departments.dept_id=employees.dept_id;


--retreive from more table  with  inner join 
select employees.Fname as employee_name,departments.dept_name as department_name
from employees inner join departments
on  departments.dept_id=employees.dept_id;



--retreive from more table  with right outer join 
select employees.Fname as employee_name,departments.dept_name as department_name
from employees  right outer join departments
on  departments.dept_id=employees.dept_id;




--retreive from more table  with left outer join 
select employees.Fname as employee_name,departments.dept_name as department_name
from employees  left outer join departments
on  departments.dept_id=employees.dept_id;




--retreive from more table  with full outer join 
select employees.Fname as employee_name,departments.dept_name as department_name
from employees  full outer join departments
on  departments.dept_id=employees.dept_id;


----------------------------------------grouping---------------------------------------------
select dept_id ,count(*)as dept_numbers
from employees
group by dept_id
having count(*)>=24

------------------------------------nested query--------------------------
select fname ,salary 
from employees
where dept_id=(select dept_id 
from departments 
where dept_name='cs')
