create table student_info(
rno int,
name varchar(50),
branch varchar(50),
spi decimal(4,2),
blog int,
)
insert into student_info values (101,'Raju','CE',8.80, 0),
              (102,'Amit','CE',2.20, 3),
              (103,'Sanjay','ME',1.50, 6),
              (104,'Neha','EC',7.65, 1),
              (105,'Meera','EE',5.52, 2),
              (106,'Mahesh','EC',4.50, 3);--			  lab 10 part a--1. Create a view Personal with all columns.
create view personal 
as 
select * from student_info
select * from personal

--2. Create a view Student_Details having columns Name, Branch & SPI.
create view Student_Details
as
select name,BRANCH,spi from student_info

select * from Student_Details

--3. Create a view AcademicData having columns RNo, Name, Branch.
Create view AcademicData 
AS
SELECT RNo, Name, Branch FROM student_info
SELECT * FROM AcademicData 
--4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
CREATE VIEW Student_bklog 
AS 
SELECT * FROM student_info
WHERE blog>2
SELECT * FROM Student_bklog

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four
--letters.
CREATE VIEW Student_Pattern
AS
SELECT RNo, Name , Branch FROM student_info
WHERE NAME like '____'
select * from Student_Pattern
--6. Insert a new record to AcademicData view. (107, Meet, ME)
insert into AcademicData values (107, 'Meet', 'ME');
select * from AcademicData
--7. Update the branch of Amit from CE to ME in Student_Details view.
update Student_Details
set branch = 'me'
where name='amit'

--8. Delete a student whose roll number is 104 from AcademicData view.
delete 
from AcademicData
where rno=104
select * from AcademicData



--Part – B:
--1. Create a view that displays information of all students whose SPI is above 8.5
create view abovespi
as
select * from student_info
where spi>8.5
select * from abovespi
--2. Create a view that displays 0 backlog students.
create view zeroblog
as 
select * from student_info
where blog=0
select * from zeroblog
--3. Create a view Computerview that displays CE branch data only.

 Create view Computerview
 as 
select * from student_info
 where branch='ce'
 select * from Computerview
--Part – C:
--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
create view Result_EC
as
select * from student_info
where branch='ec'and spi<5
select * from Result_EC
--2. Update the result of student MAHESH to 4.90 in Result_EC view.
update Result_EC
set spi=4.90
where name = 'mahesh'
--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having
create view Stu_Bklog
as
select rno,name,blog from student_info
where name like 'm%' and blog>5
select * from Stu_Bklog
--bklogs more than 5.
--4. Drop Computerview form the database.
drop table Computerview