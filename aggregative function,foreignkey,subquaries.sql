create database workers;
CREATE TABLE Worker (
  WORKER_ID INT PRIMARY KEY,
  FIRST_NAME VARCHAR(50),
  LAST_NAME VARCHAR(50),
  SALARY INT,
  JOINED_ON DATE
);
INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINED_ON) VALUES
(1, 'John', 'Doe', 50000, '2020-01-01'),
(2, 'Jane', 'Doe', 60000, '2019-01-01'),
(3, 'Bob', 'Smith', 55000, '2018-01-01'),
(4, 'Alice', 'Johnson', 65000, '2017-01-01'),
(5, 'David', 'Lee', 70000, '2016-01-01'),
(6, 'Emily', 'Wong', 45000, '2021-01-01'),
(7, 'James', 'Kim', 55000, '2022-01-01'),
(8, 'Karen', 'Chen', 80000, '2015-01-01'),
(9, 'Michael', 'Nguyen', 75000, '2014-01-01'),
(10, 'Sarah', 'Tan', 60000, '2013-01-01');
SELECT * FROM WORKER;
CREATE TABLE Title (
  WORKER_REF_ID INT,
  WORKER_TITLE CHAR(25),
  JOINED_ON DATETIME,
  FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);
INSERT INTO TITLE(WORKER_REF_ID,WORKER_TITLE,JOINED_ON)VALUES
(001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00'); 
 SELECT * FROM TITLE;
CREATE TABLE Bonus (
  worker_REF_ID INT,
  BONUS_AMOUNT INT,
  BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID) REFERENCES WORKER(WORKER_ID) ON DELETE CASCADE
); 
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
        SELECT * FROM BONUS;
 /* 1) List all employees whose salary is not between 10000 and 35000*/
SELECT * FROM WORKER
WHERE salary NOT BETWEEN 10000 AND 35000;

/*2) List of all employees whose name starts with s.*/
SELECT * FROM WORKER
WHERE FIRST_NAME LIKE 's%';

/*3)List all employees whose firstname starts with with a and ends with m*/
SELECT * FROM WORKER
WHERE first_name LIKE 'a%m';

/*4) Find number of staff working in each department and sum of their salaries from worker table.*/
SELECT deptname, COUNT(*) as num_staff, SUM(salary) as total_salary
FROM worker
GROUP BY deptname;

/*5) Find number of workers working in each department and sum of their salaries greater than 45000*/
SELECT deptname, COUNT(*) as num_staff, SUM(salary) as total_salary
FROM worker
WHERE salary > 45000
GROUP BY deptname;

/*6) List the workers whose salary is greater than the avg salary of all workers.*/
SELECT *
FROM worker
WHERE salary > (SELECT AVG(salary) FROM worker);


/*7) Find the second largest salary from worker table.*/
SELECT MAX(salary) 
FROM worker 
WHERE salary < (SELECT MAX(salary) FROM worker);


/*8) Write an SQL query to fetch departments along with the total salaries paid for each of them.*/
SELECT DEPATMENT, SUM(salary) AS total_salary
FROM worker
GROUP BY WORKERS_TITLE;

/*9) select names of all workers containing 'a' as the second character.*/
SELECT * 
FROM worker 
WHERE FIRST_NAME LIKE '_a%';



SELECT salary FROM worker ORDER BY salary DESC LIMIT 1 OFFSET 1;
SELECT first_name, salary FROM worker WHERE salary > (
	 SELECT AVG(salary) FROM worker);
SELECT MAX(salary) FROM worker WHERE salary NOT IN (
	SELECT MAX(salary) FROM worker);



       
 
 

