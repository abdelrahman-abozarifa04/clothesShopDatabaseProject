

/*
*transactions
1)explicit ->(begin -end with rollback or commit)
2)imlicit ->(autocommit)

alter table car_department
drop constraints +name


*/

insert into car_department
values('DR');


begin transaction 
insert into car_department
select dept_name from departments
save transaction D

update car_department
set dept_name='fiat'
save transaction A

update car_department
set dept_name='hundai'
save transaction B

delete from car_department
save transaction C


--restore data from A or B or C or all
rollback transaction A ;

--save for ever
commit transaction 

--retreive result
select *from car_department;

