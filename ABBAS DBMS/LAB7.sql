--Part � A:
--Create table and inset records as per below.

create table EMP(
	EID int,
	EName varchar(25),
	Department varchar(25),
	Salary int,
	JoiningDate datetime,
	City varchar(25)
);

INSERT INTO EMP VALUES(101,'Rahul','Admin',56000,'1990-1-1','Rajkot')
INSERT INTO EMP VALUES(102,'Hardik','IT',18000,'1990-9-25','Ahmedabad')
INSERT INTO EMP VALUES(103,'Bhavin','HR',25000,'1991-5-14','Baroda')
INSERT INTO EMP VALUES(104,'Bhoomi','Admin',39000,'1991-2-8','Rajkot')
INSERT INTO EMP VALUES(105,'Rohit','IT',17000,'1990-7-23','Jamnagar')
INSERT INTO EMP VALUES(106,'Priya','IT',9000,'1990-10-18','Ahmedabad')
INSERT INTO EMP VALUES(107,'Bhoomi','HR',34000,'1991-12-25','Rajkot')

SELECT*FROM EMP

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM,MIN(SALARY) AS MINIMUM FROM EMP
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
SELECT SUM(SALARY) AS TOTAL_SAL,AVG(SALARY) AS AVERAGE_SAL FROM EMP
--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(ENAME) FROM  EMP
--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) FROM EMP 
WHERE CITY='RAJKOT'
--5. Give maximum salary from IT department.
SELECT MAX(SALARY) FROM EMP
WHERE DEPARTMENT='IT'
--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(ENAME) FROM EMP
WHERE JoiningDate>'1991-2-8'
--7. Display average salary of Admin department.
SELECT AVG(SALARY) FROM EMP
WHERE DEPARTMENT='ADMIN'
--8. Display total salary of HR department.
SELECT SUM(SALARY) FROM EMP 
WHERE DEPARTMENT='HR'
--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) FROM EMP
--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) FROM EMP
--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) FROM EMP 
WHERE CITY='AHMEDABAD'
--12. Find city wise highest salary.
SELECT MAX(SALARY) FROM EMP 
GROUP BY CITY
--13. Find department wise lowest salary.
SELECT MIN (SALARY) FROM EMP 
GROUP BY DEPARTMENT
--14. Display city with the total number of employees belonging to each city.
SELECT COUNT(ENAME),CITY FROM EMP 
GROUP BY CITY
--15. Give total salary of each department of EMP table.
SELECT SUM(SALARY) FROM EMP 
GROUP BY DEPARTMENT
--16. Give average salary of each department of EMP table without displaying the respective department
--name
SELECT AVG(SALARY) FROM EMP 
GROUP BY DEPARTMENT

--Part � B:
--1. Count the number of employees living in Rajkot.
SELECT COUNT(ENAME) FROM EMP 
WHERE CITY='RAJKOT'
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE FROM EMP
--3. Display the total number of employees hired before 1st January, 1991.SELECT COUNT(ENAME) FROM EMPWHERE JOININGDATE<'1991-1-1'--Part � C:
--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(ENAME) FROM EMP 
WHERE CITY='BARODA'
--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(ENAME) FROM EMP 
WHERE JOININGDATE<'1991-1-1' AND DEPARTMENT='IT'
--3. Find the Joining Date wise Total Salaries.
SELECT SUM(SALARY) FROM EMP
GROUP BY JOININGDATE
--4. Find the Maximum salary department & city wise in which city name starts with �R�SELECT DEPARTMENT,CITY,MAX(SALARY) FROM EMP WHERE CITY LIKE 'R%'GROUP BY DEPARTMENT,CITY