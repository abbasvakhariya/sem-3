
--lab 4
--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSITE 
ADD CITY VARCHAR(20),PINCODE INT
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSITE ALTER COLUMN CNAME VARCHAR(35)
--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSITE ALTER COLUMN AMOUNT INT
--. Rename Column ActNo to ANO.
EXEC SP_RENAME 'DEPOSITE.ACTNO','ANO'
--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSITE DROP COLUMN CITY
SELECT * FROM DEPOSITE_DETAIL
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME 'DEPOSITE', 'DEPOSITE_DETAIL'

--PART B
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
EXEC SP_RENAME 'DEPOSITE_DETAIL.ADATE','AOPENDATE'
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSITE_DETAIL 
DROP COLUMN AOPENDATE
--3. Rename Column CNAME to CustomerName
EXEC SP_RENAME 'DEPOSITE_DETAIL.CNAME','CUSTOMERName'

--PART C
CREATE  TABLE STUDENT_DETAIL(ENROLLMENT_NO VARCHAR(20),Name VARCHAR(25),
CPI DECIMAL(5,2),
Birthdate DATETIME)--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL 
ADD  City VARCHAR (20),Backlog INT 
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE student_detail 
ALTER COLUMN NAME VARCHAR(35) 
--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE student_detail 
ALTER COLUMN CPI INT
--4. Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'student_detail.ENROLLMENT_NO','ENO'
--5. Delete Column City from the student_detail table.
ALTER TABLE  student_detail 
DROP COLUMN CITY
--6. Change name of table student_detail to STUDENT_MASTER.EXEC SP_RENAME 'student_detail','STUDENT_MASTER'--DELETE, Truncate, Drop Operation--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSITE_DETAIL 
WHERE AMOUNT>=4000
--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSITE_DETAIL 
WHERE BNAME='CHANDI'
SELECT * FROM DEPOSITE_DETAIL
--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSITE_DETAIL 
WHERE ANO>105
--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE 
--5. Remove Deposit_Detail table. (Use Drop)