CREATE DATABASE Customers;

USE Customers;

CREATE TABLE Customers(
customer_id INT NOT NULL,
first_name VARCHAR (20) NOT NULL, 
sur_name VARCHAR (20) NOT NULL, 
address VARCHAR (20) NOT NULL,
phone_number INT NOT NULL,
Product_id INT NOT NULL, 
PRIMARY KEY (customer_id),
UNIQUE (PHONE_NUMBER));


Explain customers;

CREATE TABLE Products(
Product_id INT NOT NULL,
Product_type VARCHAR (20) NOT NULL, 
Colour VARCHAR (20), 
size INT NOT NULL,
price DECIMAL (8,2) NOT NULL, 
PRIMARY KEY (PRODUCT_ID));

EXPLAIN PRODUCTS;

INSERT INTO CUSTOMERS (customer_id, first_name, sur_name, address,phone_number, product_id)
VALUES ('1', 'Blue', 'Peter', '49,Eton Road', '987041', '111'),
('2', 'Henry', 'Ford', '54,Stratford Road', '876909', '114'),
('3', 'Dan', 'Barnes', '32,Hilton Road', '768932', '115'),
('4', 'Ben', 'Finley', '67,Melton Road', '456781', '116'),
('5', 'Rex', 'Davies', '39,Malvern Road', '768965', '112'),
('6', 'Betty', 'Crocker', '21,Garden Road', '768562', '117'),
('7', 'Xavi', 'Newman', '98, Epperstone Road', '168932', '113'),
('8', 'Anthony', 'Harvard', '56,Hilton Road', '456326', '118'),
('9', 'Sam', 'Belton', '75, Musters Road', '629541', '119'),
('10', 'Jack', 'Knight', '11,Bridge Road', '942315', '120');



Explain Products;

Alter table customers
 ADD column Gender Varchar(20) Not Null;
 
 Select * from Customers;

update customers    
set phone_number='976541'
where customer_id =1;

Delete from customers
where customer_id =4;

Select  customers.Product_id, Products.Product_id     
from customers
Inner join Products
where customers.product_id= Products.Product_id;

Select * from Customers
where first_name ='Rex';

Select * from Products;

select* from customers, products
where Customers.Product_id = Products.Product_id and products.colour='blue';

Select * from Customers
order by First_name;

Select * from Products
Order by product_type;

Select Product_type, colour, size from Products 
where price>20
order by Product_type Desc;



