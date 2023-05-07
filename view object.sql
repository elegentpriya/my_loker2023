CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE Gender
(
  Id INT PRIMARY KEY,
  Name VARCHAR(50)
);
INSERT INTO Gender VALUES(1, 'Male');
INSERT INTO Gender VALUES(2, 'Female');
INSERT INTO Gender VALUES(3, 'Unknown');
CREATE TABLE Employee
(
  Id INT PRIMARY KEY,
  Name VARCHAR(50),
  GenderId VARCHAR(50),
  Salary INT,
  Department VARCHAR(50)
);
INSERT INTO Employee VALUES(1, 'Pranaya', 1, 20000, 'IT');
INSERT INTO Employee VALUES(2, 'Priyanka', 2, 30000, 'HR');
INSERT INTO Employee VALUES(3, 'Anurag', 1, 40000, 'IT');
INSERT INTO Employee VALUES(4, 'Preety', 2, 25000, 'HR');
INSERT INTO Employee VALUES(5, 'Sambit', 3, 35000, 'INFRA');
INSERT INTO Employee VALUES(6, 'Hina', 2, 45000, 'HR');


SELECT * FROM EMPLOYEE;
SELECT * FROM Gender;

create view employee_view1 as select * from employee;
select * from employee_view1;
select * from employee;

insert into employee_view1 values(7,'messi',3,23000,'accounts');


update employee_view1 set name = 'Hanna',genderid = 3 where id = 6;

delete from employee_view1 where id=5;








