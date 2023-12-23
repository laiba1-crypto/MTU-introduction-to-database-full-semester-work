create table MERCHANTS
(merchantID int NOT NULL AUTO_INCREMENT,
lname varchar(10),
fname varchar(10),
country varchar(20),
primary key (merchantID));

create table CUSTOMER_DETAILS
(customerID int NOT NULL AUTO_INCREMENT,
lname varchar(10),
fname varchar(10),
sex	CHAR(1),           
DOB	DATE,
phoneNo VARCHAR(16),
address varchar(25),
city varchar(20),
zipcode varchar(10), 
primary key (customerID));

create table PRODUCT 
(productID int NOT NULL AUTO_INCREMENT,
productName varchar(80),
QTY varchar(50),
price€ Decimal(10,2),
merchantID int NOT NULL ,
primary key(productID),
foreign key (merchantID) REFERENCES MERCHANTS(merchantID));


create table PURCHASED_ORDER
(orderID int NOT NULL AUTO_INCREMENT,
customerID int NOT NULL,
orderDate DATE,
to_ddress varchar(25),
to_city varchar(20),
to_zipcode varchar(10),
total_cost€ Decimal(13,2),
productID int NOT NULL,
primary key (orderID),
foreign key (customerID) REFERENCES CUSTOMER_DETAILS(customerID),
foreign key (productID) REFERENCES PRODUCT(productID));

commit;
