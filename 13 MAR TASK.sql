/*Task for DDL,DML Commands: 
1.  Create a database called “Sales”.*/ 
CREATE DATABASE SALES;
USE SALES;

/*2.  Create a new table named “Orders” in Sales database with columns: 
(Order_Id, Customer_name, Product_name, Ordered_item). Use 
constraints: 
 Primary Key 
 Unique 
 Not Null */
CREATE TABLE ORDERS(ORDER_ID INT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(30),PRODUCT_NAME VARCHAR(30) NOT NULL,
ORDERED_ITEM VARCHAR(30) UNIQUE);


/*3.  Add a new column named “order_quantity” to the orders table.*/
ALTER TABLE ORDERS ADD COLUMN (ORDER_QUANTITY INT);
DESC ORDERS;  


/*4.  Rename orders table to sales_orders table.*/
RENAME TABLE ORDERS TO SALES_ORDERS;


/*5.  Insert 10 rows to sales_orders table. */
INSERT INTO SALES_ORDERS VALUE(1,'VERMA','SHOES','RED SHOES',1),
(2,'ABIJITH','BOOKS','FOUR LINE BOOK',12),(3,'ARUN','SHIRT','FULL HAND SHIRT',2),
(4,'SHAJAHAN','BOX','MAKUP BOX',1),(5,'PUAL','T SHIRT','COLLER T SHIRT',3),
(6,'NAIR','BULB','CFL',12),(7,'PERAM','SHOES','BLACK SHOES',3),
(8,'ABIN','PLANT','INDOOR PLANT',4),(9,'SHALINI','SAREE','RED SAREE',1),
(10,'BALU','CHURIDAR','BLUE',1);
SELECT * FROM SALES_ORDERS;


/*6.  Retrieve customer_name and Product_name from sales_orders table.*/
SELECT CUSTOMER_NAME,PRODUCT_NAME FROM SALES_ORDERS; 


/*7.  Use update command to change the name of the product for any row.*/
UPDATE SALES_ORDERS
SET PRODUCT_NAME ='TEXT BOOK'
WHERE ORDER_ID = 2; 

/*8.  Delete sales_orders table from the database.*/ 
DROP TABLE SALES_ORDERS;