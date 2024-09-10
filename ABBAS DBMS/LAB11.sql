--Implement SQL Joins
--Create below tables as per following data
CREATE TABLE Stu_Info (
    Rno INT ,
    Name VARCHAR(50),
    Branch VARCHAR(50)
);

INSERT INTO Stu_Info (Rno, Name, Branch)
VALUES 
    (101, 'Raju', 'CE'),
    (102, 'Amit', 'CE'),
    (103, 'Sanjay', 'ME'),
    (104, 'Neha', 'EC'),
    (105, 'Meera', 'EE'),
    (106, 'Mahesh', 'ME');

CREATE TABLE Result (
	RNO INT,
    SPI DECIMAL(4, 2),
	);

INSERT INTO Result (Rno, SPI)
VALUES 
    (101, 8.8),
    (102, 9.2),
    (103, 7.6),
    (104, 8.2),
    (105, 7.0),
    (107, 8.9);  

CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(50) ,
	Name VARCHAR(50),
    ManagerNo VARCHAR(50)
);

INSERT INTO EMPLOYEE_MASTER(EmployeeNo, Name, ManagerNo)
VALUES 
    ('E01', 'Tarun', NULL),
    ('E02', 'Rohan', 'E02'),
    ('E03', 'Priya', 'E01'),
    ('E04', 'Milan', 'E03'),
    ('E05', 'Jay', 'E01'),
    ('E06', 'Anjana', 'E04');

--Part – A:
--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM Stu_Info
CROSS JOIN RESULT
--2. Perform inner join on Student and Result tables.
SELECT * FROM Stu_Info s
INNER JOIN RESULT r
ON S.RNO = R.rno
--3. Perform the left outer join on Student and Result tables.
SELECT * FROM Stu_Info s
LEFT OUTER JOIN Result r
ON s.RNO = r.RNO
--4. Perform the right outer join on Student and Result tables.
SELECT * FROM Stu_Info s
RIGHT OUTER JOIN Result r
ON s.RNO = r.RNO
--5. Perform the full outer join on Student and Result tables.
SELECT * FROM Stu_Info s
FULL OUTER JOIN Result r
ON s.RNO = r.RNO
--6. Display Rno, Name, Branch and SPI of all students.
SELECT s.RNO,s.NAME,s.BRANCH,r.SPI FROM Stu_Info s
LEFT OUTER JOIN Result r
ON s.RNO = r.RNO
--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT s.RNO,s.NAME,s.BRANCH,r.SPI FROM Stu_Info s
LEFT OUTER JOIN RESULT r
ON s.RNO = r.RNO
WHERE BRANCH = 'CE'
--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT s.RNO,s.NAME,s.BRANCH,r.SPI FROM Stu_Info s
LEFT OUTER JOIN RESULT r
ON s.RNo = r.RNo
WHERE BRANCH = 'EC'
--9. Display average result of each branch.
SELECT AVG(r.SPI),s.BRANCH FROM Stu_Info s
JOIN RESULT r
ON s.RNO = r.RNO
GROUP BY s.BRANCH
--10. Display average result of CE and ME branch.
SELECT AVG(r.SPI),s.BRANCH FROM Stu_Info s
JOIN RESULT r
ON s.RNO = r.RNO
GROUP BY BRANCH
HAVING BRANCH IN('CE' , 'ME')

--Part – B:
--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT AVG(r.SPI),s.BRANCH,r.SPI FROM Stu_Info s
JOIN RESULT r
ON s.RNO = r.RNO
GROUP BY s.BRANCH,r.SPI
ORDER BY r.SPI
--2. Display highest SPI from each branch and sort them in descending order.
SELECT MAX(r.SPI),s.BRANCH FROM Stu_Info s
JOIN RESULT r
ON s.RNO = r.RNO
GROUP BY s.BRANCH
ORDER BY MAX(r.SPI) DESC

--Part – C:
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
SELECT E1.NAME,E2.NAME FROM EMPLOYEE_MASTER E1
JOIN EMPLOYEE_MASTER E2
ON E1.ManagerNo = E2.EmployeeNo
