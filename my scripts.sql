create database datas;
use datas;
create table country(I_d  int primary key auto_increment,
country_name varchar(20) not null,population int not null,Area int not null);
create table persons(i_d int primary key auto_increment,F_name varchar(30),
L_name varchar(30),population int not null,
Rating decimal(3,1) not null,country_id int not null,country_name varchar(30));
insert into country(country_name,population,Area)values('United States', 328200000, 9834000),
('China', 1393000000, 9597000),
('India', 1366000000, 3287000),
('Russia', 144500000, 17125000),
('Brazil', 211800000, 8515770),
('Canada', 37600000, 9985000),
('Australia', 25700000, 7692024),
('Argentina', 44940000, 2780400),
('Kazakhstan', 18780000, 2724900),
('Algeria', 43000000, 2381740);
select * from country;
insert into persons(F_name,L_name,population,Rating,country_id,country_name)values('John', 'Doe', 250000, 4.5, 1, 'United States'),
('Jane', 'Doe', 150000, 4.0, 1, 'United States'),
('Bob', 'Smith', 50000, 3.2, 2, 'China'),
('Alice', 'Johnson', 100000, 4.1, 2, 'China'),
('Sam', 'Lee', 75000, 3.7, 3, 'India'),
('Priya', 'Patel', 125000, 4.2, 3, 'India'),
('Sergei', 'Ivanov', 1000000, 4.9, 4, 'Russia'),
('Irina', 'Petrova', 500000, 4.7, 4, 'Russia'),
('Pedro', 'Garcia', 250000, 4.3, 5, 'Brazil'),
('Maria', 'Silva', 100000, 3.8, 5, 'Brazil');
select * from  persons;
SELECT Persons.F_name, Persons.L_name, Country.Country_name
FROM Persons
INNER JOIN Country ON Persons.Country_Id = 'Country.Id';
SELECT Persons.F_name, Persons.L_name, Country.Country_name
FROM Persons
LEFT JOIN Country ON Persons.Country_Id = 'Country.Id';
SELECT Persons.F_name, Persons.L_name, Country.Country_name
FROM Persons
RIGHT JOIN Country ON Persons.Country_Id = 'Country.Id';
SELECT SUBSTRING(Country_name, 1, 3) AS Country_shortname
FROM Country;
SELECT CONCAT(F_name, ' ', L_name) AS Fullname
FROM Persons;
SELECT COUNT(DISTINCT Country_name) AS Unique_countries
FROM Persons;
SELECT MAX(Population) AS Max_population
FROM Country;
SELECT MIN(Population) AS Min_population
FROM Persons;

DELIMITER $$
CREATE FUNCTION Func_Cube(Num INT)RETURNS
 INT DETERMINISTIC BEGIN DECLARE TotalCube INT;
SET TotalCube = Num * Num * Num;
RETURN TotalCube;
END$$
DELIMITER ;
DELIMITER $$
CREATE FUNCTION Func_Calculate_Age(Age date
)RETURNS INT DETERMINISTIC BEGIN DECLARE TodayDate DATE;
SELECT CURRENT_DATE() INTO TodayDate;RETURN YEAR(TodayDate) - YEAR(Age);
END$$
DELIMITER ;
DELIMITER $$
CREATE FUNCTION square(x INT) 
RETURNS INT
DETERMINISTIC BEGIN RETURN x * x;
END$$
DELIMITER;
DELIMITER $$
CREATE FUNCTION random_number()
RETURNS INT
BEGIN
    DECLARE random_num INT;
    SET random_num = FLOOR(RAND() * 10) + 1;
    RETURN random_num;
END$$

/*Add a new column called DOB in Persons table with datatype as Date.*/
ALTER TABLE PERSONS ADD DOB DATE;

UPDATE Person SET DOB = '1990-05-22' WHERE i_d = 1;
UPDATE Person SET DOB = '1993-09-20' WHERE i_d = 2;
UPDATE Person SET DOB = '1994-01-22' WHERE i_d = 3;
UPDATE Person SET DOB = '1995-01-20' WHERE i_d = 4;
UPDATE Person SET DOB = '1992-05-26' WHERE i_d = 5;
UPDATE Person SET DOB = '1988-02-12' WHERE i_d = 6;
UPDATE Person SET DOB = '1995-02-20' WHERE i_d = 7;
UPDATE Person SET DOB = '1993-03-06' WHERE i_d = 8;
UPDATE Person SET DOB = '1990-05-20' WHERE i_d = 9;
UPDATE Person SET DOB = '1990-05-20' WHERE i_d = 10;

/*Write a user defined function to calculate age using DOB.*/
DELIMITER $$
CREATE FUNCTION Func_Calculate_Age(Age date
)RETURNS INT DETERMINISTIC BEGIN DECLARE TodayDate DATE;
SELECT CURRENT_DATE() INTO TodayDate;RETURN YEAR(TodayDate) - YEAR(Age);
END$$
DELIMITER ;
SELECT FUNC_CALCULATE_AGE()







