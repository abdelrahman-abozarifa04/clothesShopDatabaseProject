
use clothesStore;

SET IDENTITY_INSERT production.brands ON;  

INSERT INTO production.brands(brand_id,brand_name) VALUES(1,'Bershka')
INSERT INTO production.brands(brand_id,brand_name) VALUES(2,'Zara')
INSERT INTO production.brands(brand_id,brand_name) VALUES(3,'Defacto')
INSERT INTO production.brands(brand_id,brand_name) VALUES(4,'Pull&Bear')
INSERT INTO production.brands(brand_id,brand_name) VALUES(5,'splash')
INSERT INTO production.brands(brand_id,brand_name) VALUES(6,'Lacoste')
INSERT INTO production.brands(brand_id,brand_name) VALUES(7,'Polo')
INSERT INTO production.brands(brand_id,brand_name) VALUES(8,'Max')
INSERT INTO production.brands(brand_id,brand_name) VALUES(9,'Versace')

SET IDENTITY_INSERT production.brands OFF;  

SET IDENTITY_INSERT production.categories ON;  

INSERT INTO production.categories(category_id,category_name) VALUES(1,'Children Clothes')
INSERT INTO production.categories(category_id,category_name) VALUES(2,'Men Clothes')
INSERT INTO production.categories(category_id,category_name) VALUES(3,'Women Clothes')

SET IDENTITY_INSERT production.categories OFF;  

SET IDENTITY_INSERT production.products ON;


INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(1,'Kids Vest Leather - 2022',3,1,2022,559.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(2,'Kids Jeans - 2019',6,1,2019,799.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(3,'Kids Pajamas - 2021',9,1,2021,899.99)


INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(4,'Men Blazer Leather - 2019 ',1,2,2019,559.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(5,'Men Suit - 2020',4,2,2020,799.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(6,'Men Jeans - 2023',7,2,2023,899.99)


INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(7,'Women Dress - 2018',5,3,2018,559.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(8,'Women Skirt - 2018',8,3,2019,799.99)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(9,'Women Leggings - 2023',2,3,2023,899.99)

SET IDENTITY_INSERT production.products OFF;

-- sales.customers table
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('ali','mohamed',NULL,'ali.mohamed@yahoo.com',' Mohamed Ali ','cairo','EG',14127);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('ahmed','khaled',NULL,'ahmed.khaled@yahoo.com','Elmoez ','cairo','EG',14156);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('menna','mohamed',NULL,'menna.mohamed@yahoo.com','Qaser Nile ','cairo','EG',14150);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('mostafa','mohamed',NULL,'mostafa.mohamed@yahoo.com','Elazher ','cairo','EG',14145);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('omer','mohamed',NULL,'omer.mohamed@yahoo.com','Salah Salem ','cairo','EG',14123);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('loay','ahmed',NULL,'loay.ahmed@yahoo.com','Fesal ','Giza','EG',141253);
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('gehan','ali',NULL,'gehan.ali@yahoo.com','Mostafa Elnahas ','cairo','EG',14158);




-- stores

INSERT INTO sales.stores(store_name, phone, email, street, city, state, zip_code)
VALUES('Owl store 1','01097457086','Owl store 1@clothes.shop','Emad Eldean', 'cairo','EG',95060),
      ('Owl store 2','01025592193','Owl store 2@clothes.shop','Elazher', 'cairo','EG',11432);
      


-- production.stocks 
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,1,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,3,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,2,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,7,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,5,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,8,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,4,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,9,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,6,10);

SET IDENTITY_INSERT sales.staffs ON;  

INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(1,'Fabiola','Jackson','fabiola.jackson@bikes.shop','(831) 555-5554',1,1,NULL);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(2,'Mireya','Copeland','mireya.copeland@bikes.shop','(831) 555-5555',0,2,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(3,'Genna','Serrano','genna.serrano@bikes.shop','(831) 555-5556',1,2,2);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(4,'Virgie','Wiggins','virgie.wiggins@bikes.shop','(831) 555-5557',0,1,2);


SET IDENTITY_INSERT sales.staffs OFF;  

SET IDENTITY_INSERT sales.orders ON;  
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(1,259,4,'20160101','20160103','20160103',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(2,1212,4,'20160101','20160104','20160103',2,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(3,523,4,'20160102','20160105','20160103',2,4);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(4,175,4,'20160103','20160104','20160105',1,1);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(5,1324,4,'20160103','20160106','20160106',2,2);



SET IDENTITY_INSERT sales.orders OFF;  


INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,3,1,56,5499.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(2,4,5,22,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(3,1,7,23,869.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(4,2,4,40,3199.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(5,3,9,20,659.99,0.07);

