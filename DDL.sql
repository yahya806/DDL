CREATE TABLE custumer(
Custumer_id VARCHAR2(20) PRIMARY KEY NOT NULL,
custumer_Name VARCHAR2(20) NOT NULL,
custumer_Tel NUMBER  );



CREATE TABLE Product (
Product_id VARCHAR2(20) PRIMARY KEY NOT NULL,
product_name VARCHAR2(20) NOT NULL,
Price NUMBER CHECK (Price>0) ;



CREATE TABLE Orders (
Custumer_id VARCHAR2(20) PRIMARY KEY NOT NULL,
Product_id VARCHAR2(20) FOREIGN KEY NOT NULL,
Quantity NUMBER,
Total_amount NUMBER,
CONSTRAINT pk_Orders FOREIGN KEY(Customer_id) REFERENCES Customer (Customer_id),
CONSTRAINT pk_Orders FOREIGN KEY(Product_id) REFERENCES Product (Product_id) );


ALTER TABLE Product ADD Category VARCHAR2(20); 
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE ;