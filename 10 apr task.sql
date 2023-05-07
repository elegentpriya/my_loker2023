CREATE DATABASE POPULATION;
USE POPULATION;
CREATE TABLE COUNTRY(ID INT PRIMARY KEY,COUNTRY_NAME VARCHAR(30),
POPULATION INT,AREA INT);
INSERT INTO Country (Id, Country_name, Population, Area)
VALUES 
(1, 'United States', 331449281, 9833520),
(2, 'China', 1444216101, 9706961),
(3, 'India', 1393409038, 3287263),
(4, 'Brazil', 213993437, 8515770),
(5, 'Russia', 145912025, 17098246),
(6, 'Japan', 126050000, 377975),
(7, 'Mexico', 130262216, 1964375),
(8, 'Philippines', 110730468, 300000),
(9, 'Egypt', 104258327, 1010408),
(10, 'Ethiopia', 114963588, 1104300);
SELECT * FROM COUNTRY;
CREATE TABLE PERSONS(ID INT PRIMARY KEY,FNAME VARCHAR(30),LNAME VARCHAR(30),
POPULATION INT,RATING DECIMAL,COUNTRY_ID INT,
COUNTRY_NAME VARCHAR(30));
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES 
(1, 'John', 'Doe', 1000000, 4.5, 1, 'United States'),
(2, 'Jane', 'Doe', 500000, 4.2, 1, 'United States'),
(3, 'Jorge', 'Gonzalez', 2000000, 4.0, 7, 'Mexico'),
(4, 'Hiroshi', 'Sato', 1500000, 4.7, 6, 'Japan'),
(5, 'Maria', 'Silva', 800000, 3.9, 4, 'Brazil'),
(6, 'Yulia', 'Ivanova', 1200000, 4.1, 5, 'Russia'),
(7, 'Raj', 'Kumar', 3000000, 3.8, 3, 'India'),
(8, 'Chen', 'Wei', 10000000, 4.6, 2, 'China'),
(9, 'Ahmed', 'Ali', 4000000, 3.7, 9, 'Egypt'),
(10, 'Alem', 'Bekele', 6000000, 4.3, 10, 'Ethiopia');
SELECT* FROM PERSONS;


/*1.Add a new column called DOB in Persons table with datatype as Date.*/
 ALTER TABLE PERSONS ADD COLUMN DOB DATE;
UPDATE PERSONS SET DOB = '1991-05-21' WHERE ID = 1;
UPDATE PERSONS SET DOB = '1984-09-15' WHERE ID = 2;
UPDATE PERSONS SET DOB = '1985-01-22' WHERE ID = 3;
UPDATE PERSONS SET DOB = '1986-01-20' WHERE ID = 4;  
UPDATE PERSONS SET DOB = '1987-05-26' WHERE ID = 5;
UPDATE PERSONS SET DOB = '1991-02-12' WHERE ID = 6;
UPDATE PERSONS SET DOB = '1995-02-20' WHERE ID = 7;
UPDATE PERSONS SET DOB = '1993-03-06' WHERE ID= 8;
UPDATE PERSONS SET DOB = '1990-05-20' WHERE ID = 9;
UPDATE PERSONS SET DOB = '1990-05-20' WHERE ID = 10;
SELECT * FROM PERSONS;


/*2. Write a user defined function to calculate age using DOB.*/
DELIMITER $$
CREATE FUNCTION Func_Calculate_Age(Age date
)RETURNS INT DETERMINISTIC BEGIN DECLARE TodayDate DATE;
SELECT CURRENT_DATE() INTO TodayDate;RETURN YEAR(TodayDate) - YEAR(Age);
END$$
DELIMITER ;


/*3. Write a select query to fetch Age of all persons reusing the function that has been created.*/
SELECT ID, FNAME, LNAME, FUNC_CALCULATE_AGE(DOB) AS AGE
FROM PERSONS;

/*4. Insert 2 new rows to the Persons table making the Lname NULL. Then write another query to count Lname from Persons table.*/
INSERT INTO Persons (Id, Fname, DOB, Population, Rating, Country_Id, Country_name) VALUES
(11, 'Sarah', '1990-05-12', 2000000, 4.4, 1, 'United States'),
(12, 'David', '1995-09-18', 1500000, 4.1, 1, 'United States');
SELECT * FROM PERSONS;


/*5. Write a query to find the number of rows in the Persons table.*/
SELECT COUNT(*) AS num_rows FROM Persons;


/*6. Write an SQL query to return current date and time.*/
SELECT NOW();

/*7. Write an SQL query to show the population of Country table for the first 3 rows.(Hint: Use LIMIT)*/
SELECT Population FROM Country LIMIT 3;



/*8. Write a query to print 3 random rows of countries. (Hint: Use rand() function and LIMIT)*/
SELECT * FROM Country ORDER BY RAND() LIMIT 3;
