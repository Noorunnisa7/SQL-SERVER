CREATE DATABASE Shop
-- USE Database 
--
/**/
USE Shop

-- Create
CREATE TABLE products(
    id int,
	name varchar(50),
	price int,
	Stock int,
	description text
)
--insert
insert into products
(id , name , price , Stock , description)
values 
(1, 'Shirt' ,500 , 20 , 'This is shirt in 500 rupess');

insert into products
(id , name , price , Stock , description)
values 
(2, 'jeans' ,600 , 20 , 'This is jeans in 600 rupess'),
(3, 'jeans1' ,601 , 20 , 'This is jeans1 in 600 rupess'),
(4, 'jeans2' ,606 , 20 , 'This is jeans2 in 600 rupess');

--select
SELECT * from products

-- delete 
delete from products 
delete from products where id = 2

-- update 
-- update tableName set column = value   where 
update products set 
name = 'Cap'
where id = 3

update products set 
name = 'black jeans',
price = 700,
description = 'This is black jeans in 700 rupees'
where id = 4 

-- drop 
drop table products

create table users(id int , name varchar(20) , phone int)

Select * from users 
-- alter 
-- change datatype 
--  add column 
-- drop column 
-- Rename 

--Alter table  users ADD columnName columntype
Alter Table users add gender varchar(20)
Alter table users add address_1 varchar(30)


--Alter table users drop columnName
alter table users drop column address_1

-- Modify 
--Alter table tableName Alter column  columnName Type
alter table users alter column phone varchar(30)

--Alter table users Rename column phone to phone_no
Exec sp_rename 'users.phone' , 'phone_no' , 'COLUMN';
Exec sp_rename 'users' , 'users_data';


INSERT INTO products (id, name, price, Stock, description) VALUES 
(99, 'Wireless Mouse', 19.99, 120, 'Ergonomic wireless mouse with USB receiver'),
(98, 'Mechanical Keyboard', 49.99, 75, 'RGB backlit mechanical keyboard with blue switches'),
(97, 'USB-C Charger', 14.99, 200, 'Fast charging USB-C wall adapter 20W'),
(96, 'Bluetooth Speaker', 29.99, 90, 'Portable waterproof Bluetooth speaker'),
(62, 'Gaming Monitor', 199.99, 30, '27-inch full HD gaming monitor 144Hz'),
(63, 'Laptop Stand', 23.50, 60, 'Adjustable aluminum laptop stand'),
(7, 'Noise Cancelling Headphones', 89.99, 40, 'Over-ear wireless noise cancelling headphones'),
(8, 'Webcam 1080p', 39.99, 85, 'Full HD USB webcam with microphone'),
(9, 'HDMI Cable 6ft', 7.99, 150, 'High-speed HDMI cable with gold connectors'),
(10, 'Smart LED Bulb', 12.99, 100, 'Wi-Fi enabled smart bulb with app control'),
(11, 'External Hard Drive 1TB', 59.99, 70, 'Portable 1TB USB 3.0 external hard drive'),
(12, 'Fitness Tracker', 49.95, 65, 'Water-resistant fitness tracker with heart rate monitor'),
(13, 'Wireless Earbuds', 39.99, 130, 'True wireless earbuds with charging case'),
(14, 'Graphics Tablet', 89.00, 25, 'Drawing tablet with pressure-sensitive pen'),
(15, 'LED Desk Lamp', 18.50, 110, 'Adjustable LED desk lamp with touch control'),
(16, 'Smartwatch', 129.99, 45, 'Bluetooth smartwatch with health tracking'),
(17, 'USB Flash Drive 64GB', 9.99, 180, 'USB 3.0 flash drive with keychain loop'),
(18, 'Portable Projector', 159.99, 20, 'Mini HD projector with HDMI and USB input'),
(19, 'Phone Tripod Stand', 15.99, 95, 'Adjustable tripod with phone holder'),
(20, 'Laptop Backpack', 34.99, 50, 'Water-resistant laptop backpack with USB port'),
(21, 'Car Phone Mount', 11.99, 140, 'Universal magnetic phone holder for car'),
(22, 'Gaming Chair', 149.99, 15, 'Ergonomic gaming chair with lumbar support'),
(23, 'Power Bank 10000mAh', 22.95, 120, 'Slim power bank with dual USB output'),
(24, 'Digital Thermometer', 6.99, 200, 'Fast-reading digital body thermometer'),
(25, 'Smart Plug', 10.99, 100, 'Wi-Fi smart plug with voice control'),
(26, 'Wireless Charger Pad', 17.99, 90, 'Qi-certified fast wireless charging pad'),
(27, 'VR Headset', 299.00, 10, 'Virtual reality headset with motion tracking'),
(28, 'USB Desk Fan', 13.50, 80, 'Portable USB-powered desktop fan'),
(29, 'Bluetooth Keyboard', 27.99, 55, 'Compact Bluetooth keyboard for tablets and phones'),
(30, 'Wi-Fi Range Extender', 24.99, 60, 'Signal booster for home Wi-Fi coverage');



--select

--AND

select * from products  where stock >= 20 AND price  >=150 AND id >=10

--OR

SELECT * from products where stock >= 100  OR price <= 200 OR id <=5

--Not 

SELECT * from products  where not id >10 OR not stock >=40

-- Aggregate Function 
-- Sum Count avg min max 
-- group by  order by 

select * from products
-- SUM 
-- AS 
sELECT sum(price) AS PriceTotal FROM products 
sELECT sum(price) PriceTotal FROM products
-- COUNT 
select count(id) totalProduct from products
-- Avg 
select avg(price) priceAverage from products
-- min 
select min(stock) totalProduct from products

create table myproducts (
      id int , 
	  name varchar(30),
	  price int ,
	  stock int ,
	  category varchar(20)
);


INSERT INTO myproducts (id, name, price, stock, category) VALUES
(1, 'Cotton Fabric', 15, 100, 'Fabric'),
(2, 'Silk Fabric', 40, 50, 'Fabric'),
(3, 'Zipper', 5, 200, 'Accessories'),
(4, 'Linen Fabric', 25, 75, 'Fabric'),
(5, 'Velvet Fabric', 35, 40, 'Fabric'),
(6, 'Buttons Pack', 7, 150, 'Accessories'),
(7, 'Wool Fabric', 30, 55, 'Fabric'),
(8, 'Sewing Thread', 3, 300, 'Tools'),
(9, 'Chiffon Fabric', 22, 80, 'Fabric'),
(10, 'Satin Fabric', 28, 65, 'Fabric'),
(11, 'Measuring Tape', 4, 120, 'Tools'),
(12, 'Organza Fabric', 27, 70, 'Fabric'),
(13, 'Pins Box', 6, 180, 'Accessories'),
(14, 'Canvas Fabric', 18, 90, 'Fabric'),
(15, 'Polyester Fabric', 12, 120, 'Fabric'),
(16, 'Scissors', 15, 75, 'Tools'),
(17, 'Rayon Fabric', 17, 110, 'Fabric'),
(18, 'Jute Fabric', 14, 95, 'Fabric'),
(19, 'Tailor Chalk', 2, 200, 'Tools'),
(20, 'Tweed Fabric', 32, 45, 'Fabric'),
(21, 'Flannel Fabric', 21, 85, 'Fabric'),
(22, 'Thread Cutter', 8, 60, 'Tools'),
(23, 'Corduroy Fabric', 26, 60, 'Fabric'),
(24, 'Fabric Glue', 10, 50, 'Tools'),
(25, 'Georgette Fabric', 23, 75, 'Fabric'),
(26, 'Seam Ripper', 7, 90, 'Tools'),
(27, 'Crepe Fabric', 24, 80, 'Fabric'),
(28, 'Elastic Band', 9, 130, 'Accessories'),
(29, 'Muslin Fabric', 13, 100, 'Fabric'),
(30, 'Lace Fabric', 38, 35, 'Fabric');


select * from myproducts

-- GROUp by 
select category , COUNT(category) productCount , sum(price) CategoryAmount  from myproducts group by category


-- customer -- city -- country 


--having 
select sum(price) AS TotalPrice , Count(stock) As StockCount , category
 from myproducts    group by category having count(stock) >= 6

 select count(id) productCount , sum(price) TotalPrice , category from myproducts  group by category having Sum(price) >=30
--Keys
create table Customers(
  id int primary key,
  name varchar(30),
  phone int 
);
drop table Customers

insert into Customers(id , name , phone) values 
(1 , 'Ali' , 03215455 ),
 (2 , 'Ali' , 03215455 ),
  (3 , 'Ali' , 03215455 ),
   (4 , 'Ali' , 03215455 )
   select * from Customers
--  identity(start , incre)
create table Customers(
  id int primary key identity(200,1),
  name varchar(30),
  phone int 
);
insert into Customers( name , phone) values 
('Ali' , 03215455 ),
 ('Ahmed' , 03215455 ),
  ('Raza' , 03215455 ),
   ( 'Haroon' , 03215455 )
-- alter drop 
-- identity alter drop 

--Foreign key 
use shop 
drop table products

create table category (
     id int primary key identity(101 , 1),
	 name varchar(30)
	 )

create table products (
  id int primary key identity(101 , 1),
  name varchar(100),
  price int,
  stock int, 
  cat_id int,
  color_id int ,
  Foreign key (cat_id) References category(id),
  foreign key (color_id) references color(id)
)
-- alter drop
insert into category (name) values ('Men') , ('Women') , ('Kids') , ('accessories')
select * from category
insert into products(name , price , stock , cat_id) values 
('Shirt' , 900 , 2 , 101),
('Scarf' , 400 , 50 , 102),
('toy' , 600 , 10 , 103),
('Cap' , 700, 4 , 101)
delete from category


select * from products
select * from category

-- Design Institute database
-- teacher , students , fees , course ,enroll, exam


INSERT INTO category (name) VALUES
('Men'),
('Women'),
('Kids'),
('Accessories'),
('Shoes'),
('Beauty'),
('Sportswear'),
('Winter Wear');

INSERT INTO products (name, price, stock, cat_id) VALUES 
-- Existing 4
('Shirt', 900, 2, 105),
('Scarf', 400, 50, 106),
('Toy', 600, 10, 107),
('Cap', 700, 4, 108),

-- New 15
('Jeans', 1200, 8, 105),
('Dress', 2000, 6, 106),
('Sneakers', 3000, 12, 110),
('Lipstick', 450, 30, 106),
('Football', 1500, 15, 107),
('Jacket', 2500, 5, 108),
('Watch', 3500, 7, 112),
('Handbag', 4000, 3, 111),
('T-shirt', 850, 20, 105),
('Running Shoes', 3200, 9, 109),
('Sunscreen', 550, 40, 108),
('Gloves', 650, 18, 108),
('Shorts', 950, 13, 111),
('Earrings', 800, 10, 108),
('Backpack', 1800, 6, 108);


--joins
-- Inner Join 
select * from products 
inner join category ON category.id = products.cat_id

select products.id pid , products.name productName , products.price ,
 products.stock  , category.name Category, category.id  cid
from products 
inner join category ON category.id = products.cat_id

select p.name , p.price , p.stock , c.name
from products p
inner join category c on c.id = p.cat_id

select *
 from orders o 
inner join Customers c on c.id = o.cid 
inner join products p on  p.id = o.pid
inner join category ca ON ca.id = p.cat_id


select o.orderDate , c.name , c.phone , p.name , p.price
,p.cat_id , ca.name 
 from orders o 
inner join Customers c on c.id = o.cid 
inner join products p on  p.id = o.pid
inner join category ca ON ca.id = p.cat_id
-- left join
select * from orders o 
right join Customers c on c.id = o.cid 
right join products p on p.id = o.pid
right join category ca on ca.id = p.cat_id








select * from Customers
select * from products 
create  table orders(
    id int primary key identity(1,1),
	orderDate date,
	cid int ,
	pid int 
)
insert into orders(orderDate , cid , pid)
values 
('2025-10-7' , 203 , 130),
('2025-10-6' , 200 , 124),
('2025-10-5' , 201 , 122),
('2025-10-4' , 202 , 125),
('2025-10-7' , 212 , 140),
('2025-10-3' , 273 , 160),
('2025-10-2' , 26 , 10),
('2025-10-7' , 29 , 120),
('2025-10-1' , 223 , 118)

select * from orders



insert into Customers (name , phone) values('Nisa' , 031455)

--full outer join
select * from orders o
full outer join  Customers c on c.id = o.cid 

-- self join   (join)

create table Employee (
      EmpId int primary key identity(1,1),
	  EmpName varchar(50),
	  ManagerId int 
)
select * from Employee

('NoorUnNisa' , null), -- ceo
('saleha' , 1), -- manager
('waseela' , 1), -- manager
('Ghazala' , 2),
('Manahil',2),
('Ume Hani' , 3),
('Sufyan' , 3),
('kashaf' , 3),
('Ahsan' , 2),
('Hannan' , 1)

insert into Employee (EmpName , ManagerId)
values 
('ha' , 2),
('Ali' , 1)

select e.EmpName AS EmployeeName, m.EmpName AS ManagerName from Employee e
join Employee m ON m.EmpId = e.ManagerId

--Like %
-- WildCards _, [], ^, -
use Shop
select * from Employee where not EmpName  like 'S%';
select * from Employee where EmpName like 'h%';

select * from Employee where EmpName like '%sa';

select * from Employee where EmpName like '%na%';

select * from Employee where EmpName like 'm%l';

select * from Employee where EmpName like 'h__%'

select * from Employee where EmpName like 'a_____%'


select * from Employee where EmpName like '[abcdefgh]%'
select * from Employee where EmpName like '[a-z]%'

select * from Employee where EmpName like '[^a-h]%'


-- TRY CATCH 
create table Suppliers (
      Id int primary key,
	  Name varchar(50)
)

insert into Suppliers (Id , Name) values
(3,'Askari'),(4,'ali')


Begin TRY 
	insert into Suppliers (Id , Name) values
	(7,'Askari'),(8,'ali')
	insert into Suppliers (Id , Name) values
	(9,'Askari'),(10,'ali')
	insert into Suppliers (Id , Name) values
	(11,'Askari'),(12,'ali')
	insert into Suppliers (Id , Name) values
	(5,'Askari'),(6,'ali')
	Print 'Record Inserted Successully';
end try
Begin catch 
    Print 'Error:'+ Error_Message();
end Catch


select * from Suppliers





--trigger
--users -- logtable

create table users
(
  id int primary key identity(1,1),
  name varchar(50),
  password int
)
 
create table LogTable
(
  id int primary key identity(1,1),
  LogMessage varchar(100),
  LogDate date
)

--After insert
--create tigger TriggerName
--ON Users
--AFTER INSERT
--AS 
--BEGIN 
--result

--END


CREATE Trigger tg_user_insert
ON users
AFTER INSERT 
AS 
BEGIN 
  insert into LogTable(LogMessage,LogDate)
  select 'User Inserted:'+name , GETDATE()
   from inserted
END

--update
create trigger tg_update
ON users
After UPDATE 
AS 
BEGIN
  insert into LogTable(LogMessage,LogDate)
  select 'User Updated: '+name , GETDATE()
  from inserted
 
END

drop trigger tg_user_insert
drop trigger tg_update
insert into users (name,password) values ('RAZA' , 98745)
update users set name = 'Ali Raza' , password = 7890 where id = 3
select * from users
select * from LogTable


-- Transaction 
CREATE TABLE Vendors(
   id int primary key , 
   name varchar(50)
);

INSERT into Vendors (id , name) values (1,'ALI'),(2,'Haider')
select * from Vendors

BEGIN transaction
INSERT into Vendors (id , name) values (3,'RAZA'),(4,'Zain')
PRINT @@TRANCOUNT

BEGIN transaction
INSERT into Vendors (id , name) values (9,'Sara'),(10,'Zara')
PRINT @@TRANCOUNT
select * from Vendors
COMMIT
ROLLBACK


BEGIN TRANSACTION
save transaction s1
delete from Vendors where id = 5
delete from Vendors where id = 6
save transaction s2
INSERT into Vendors (id , name) values (9,'Sara'),(10,'Zara')
INSERT into Vendors (id , name) values (11,'Sara'),(12,'Zara')
select * from Vendors
PRINT @@trancount

Commit 
  
Rollback Transaction s1

select * from Vendors