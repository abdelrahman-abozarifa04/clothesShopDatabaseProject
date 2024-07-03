
--select all 
SELECT * FROM production.brands
SELECT * FROM production.categories
SELECT * FROM production.products
SELECT * FROM production.stocks
SELECT * FROM sales.customers
SELECT * FROM sales.order_items
SELECT * FROM sales.staffs
SELECT * FROM sales.stores

--retrieve specific column
select email
from sales.customers;

--use concatenation fname,lname as fullname 
select first_name+' '+last_name as customers_name
from sales.customers;

--retreive data as unique
select distinct(product_id)
from production.products ;

--use condition in select 
select * from production.products
where list_price >=750;


