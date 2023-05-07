/*Insert 10 rows to both tables given below. 
Create a table named Country with fields: 
 Id 
 Country_name 
 Population 
 Area */
CREATE TABLE Country (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Country_name VARCHAR(50) NOT NULL,
    Population INT NOT NULL,
    Area INT NOT NULL
);

INSERT INTO Country (Country_name, Population, Area) VALUES
('United States', 328200000, 9834000),
('China', 1393000000, 9597000),
('India', 1366000000, 3287000),
('Russia', 144500000, 17125000),
('Brazil', 211800000, 8515770),
('Canada', 37600000, 9985000),
('Australia', 25700000, 7692024),
('Argentina', 44940000, 2780400),
('Kazakhstan', 18780000, 2724900),
('Algeria', 43000000, 2381740);

/*Create another table named Persons with fields: 
 Id 
 Fname  
 Lname 
 Population 
 Rating 
 Country_Id 
 Country_name*/
CREATE TABLE Persons (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Fname VARCHAR(50) NOT NULL,
    Lname VARCHAR(50) NOT NULL,
    Population INT NOT NULL,
    Rating DECIMAL(3,1) NOT NULL,
    Country_Id INT NOT NULL,
    Country_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
 
INSERT INTO Persons (Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
('John', 'Doe', 250000, 4.5, 1, 'United States'),
('Jane', 'Doe', 150000, 4.0, 1, 'United States'),
('Bob', 'Smith', 50000, 3.2, 2, 'China'),
('Alice', 'Johnson', 100000, 4.1, 2, 'China'),
('Sam', 'Lee', 75000, 3.7, 3, 'India'),
('Priya', 'Patel', 125000, 4.2, 3, 'India'),
('Sergei', 'Ivanov', 1000000, 4.9, 4, 'Russia'),
('Irina', 'Petrova', 500000, 4.7, 4, 'Russia'),
('Pedro', 'Garcia', 250000, 4.3, 5, 'Brazil'),
('Maria', 'Silva', 100000, 3.8, 5, 'Brazil');
use population;
/*Perform inner join,Left join, Right join on the tables above.*/
SELECT Persons.Fname, Persons.Lname, Country.Country_name
FROM Persons
INNER JOIN Country ON Persons.Country_Id = Country.Id;

SELECT Persons.Fname, Persons.Lname, Country.Country_name
FROM Persons
LEFT JOIN Country ON Persons.Country_Id = Country.Id;

SELECT Persons.Fname, Persons.Lname, Country.Country_name
FROM Persons
RIGHT JOIN Country ON Persons.Country_Id = Country.Id;
 
/*1.  Write an sql query to print the first three characters of Country_name 
from Country table.*/
SELECT SUBSTRING(Country_name, 1, 3) AS Country_shortname
FROM Country;
 
/*2.  Write an sql query to concatenate firstname and lastname from Persons 
table. */
SELECT CONCAT(Fname, ' ', Lname) AS Fullname
FROM Persons;

/*3.  Write an SQL to count the number of unique country names from 
Persons table.*/ 
SELECT COUNT(DISTINCT Country_name) AS Unique_countries
FROM Persons;

/*4.  Write a query to print maximum population from Country table.*/
 SELECT MAX(Population) AS Max_population
FROM Country;

/*5.  Write a query to print minimum population from Persons table.*/
SELECT MIN(Population) AS Min_population
FROM Persons;
 