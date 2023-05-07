/*Create a table named Managers with fields : 
 Manager_Id 
 First_name 
 Last_Name 
 DOB 
 Age ->Use check constraint 
 Last_update 
 Gender 
 Department 
 Salary -> NOT NULL */
CREATE TABLE Managers (
  Manager_Id INT PRIMARY KEY,
  First_name VARCHAR(50),
  Last_Name VARCHAR(50),
  DOB DATE,
  Age INT CHECK (Age > 0),
  Last_update DATE,
  Gender VARCHAR(10),
  Department VARCHAR(50),
  Salary DECIMAL(10, 2) NOT NULL
);

SELECT * FROM MANAGERS;
/*Questions: 
1.  Insert 10 rows.*/
 INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Last_update, Gender, Department, Salary)
VALUES
  (1, 'John', 'Doe', '1980-01-01', 41, '2022-01-01', 'Male', 'IT', 30000.00),
  (2, 'Jane', 'Doe', '1985-02-15', 36, '2022-01-01', 'Female', 'HR', 28000.00),
  (3, 'Bob', 'Smith', '1978-05-20', 43, '2022-01-01', 'Male', 'IT', 32000.00),
  (4, 'Alice', 'Johnson', '1982-07-10', 39, '2022-01-01', 'Female', 'Sales', 27000.00),
  (5, 'David', 'Lee', '1975-10-05', 48, '2022-01-01', 'Male', 'IT', 35000.00),
  (6, 'Lisa', 'Wang', '1989-03-25', 32, '2022-01-01', 'Female', 'Finance', 26000.00),
  (7, 'Michael', 'Brown', '1983-09-12', 38, '2022-01-01', 'Male', 'IT', 28000.00),
  (8, 'Emily', 'Davis', '1979-12-08', 42, '2022-01-01', 'Female', 'Marketing', 29000.00),
  (9, 'William', 'Jones', '1987-06-30', 34, '2022-01-01', 'Male', 'IT', 33000.00),
  (10, 'Karen', 'Wilson', '1991-01-20', 32, '2022-01-01', 'Female', 'HR', 27000.00);

/*2.  Write a query that retrieves the name and date of birth of manager with 
ManagerId 1.*/
 SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

/*3.  Write a query to display annual income of all managers.*/ 
SELECT Manager_Id, First_name, Last_Name, Department, Salary * 12 AS Annual_Income
FROM Managers;

/*4.  Write a query to display records of all employees except ‘Aaliya’.*/
 SELECT *
FROM Managers
WHERE First_name != 'Aaliya';
 
/*5.  Write a query to display details of managers whose department is IT and 
earns more than 25000 per month.*/
 SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000.00;

/*6.  Write a query to display details of managers whose salary is between 
10000 and 35000.*/
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;


USE MANAGER;