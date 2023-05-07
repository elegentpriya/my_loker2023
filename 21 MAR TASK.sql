/*Create a table named teachers with fields : 
 Id (Use datatype as INT and set the constraint as primary key) 
 First_name(Use datatype as VARCHAR and set the constraint as NOT 
NULL) 
 Last_name(Use datatype as VARCHAR and set the constraint as NOT 
NULL) 
 School(Use VARCHAR datatype) 
 Hire_date(Use the datatype as date) 
 Salary(Use decimal datatype) 
 Age(Use INT and CHECK constraint) */

CREATE DATABASE SCHOOL_DATA;
USE SCHOOL_DATA;
CREATE TABLE TEACHERS(ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(30) NOT NULL,LAST_NAME VARCHAR(30) NOT NULL,
SCHOOL VARCHAR(30),HIRE_DATE DATE,SALARY DECIMAL,AGE INT CHECK(AGE>20));

/*Insert atleast 10 rows .*/ 
INSERT INTO teachers (Id, First_name, Last_name, School, Hire_date, Salary, Age)
VALUES (1, 'John', 'Doe', 'ABC School', '2020-01-01', 50000.00, 30),
       (2, 'Jane', 'Smith', 'XYZ School', '2018-05-15', 55000.00, 35),
       (3, 'Tom', 'Wilson', 'ABC School', '2019-08-10', 60000.00, 40),
       (4, 'Sara', 'Lee', 'XYZ School', '2021-02-28', 65000.00, 28),
       (5, 'Mark', 'Davis', 'ABC School', '2022-03-20', 70000.00, 45),
       (6, 'Laura', 'Nguyen', 'XYZ School', '2020-06-01', 75000.00, 32),
       (7, 'Michael', 'Johnson', 'ABC School', '2017-11-05', 80000.00, 50),
       (8, 'Emily', 'Kim', 'XYZ School', '2019-09-15', 85000.00, 38),
       (9, 'James', 'Chen', 'ABC School', '2021-01-10', 90000.00, 42),
       (10, 'Linda', 'Wang', 'XYZ School', '2018-03-15', 95000.00, 47);
       
SELECT * FROM TEACHERS;
/*Perform the following queries on the table: 
1.  Write an SQL query to fetch School using alias nama : School_name.*/
SELECT SCHOOL AS SCHOOL_NAME FROM TEACHERS;

/*2.  Write an SQL query to fetch First_name in uppercase. */
SELECT UPPER(FIRST_NAME) FROM TEACHERS;

/*3.  Write an SQL query to fetch unique values of School. */
SELECT DISTINCT SCHOOL FROM TEACHERS;