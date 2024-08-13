--Part – A:
--Create following table using query according to the definition.
create table STUDENT(
	StuID int,
	FirstName varchar(25),
	LastName varchar(25),
	Website varchar(50),
	City varchar(25),
	Address varchar(100)
);
--Insert the following records in the STUDENT table.
 INSERT INTO STUDENT VALUES(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303''Vasant Kunj'',Rajkot')
 INSERT INTO STUDENT VALUES(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa",Raiya Road')
 INSERT INTO STUDENT VALUES(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot,near garden')
 INSERT INTO STUDENT VALUES(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jig''s Home",Narol')
 INSERT INTO STUDENT VALUES(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55,Raj Residency')
 INSERT INTO STUDENT VALUES(1066,'Ashok','Jani',null,'Baroda','A502,Club House Building')
 
 SELECT*FROM STUDENT
--From the above given tables perform the following queries (LIKE Operation):
--1. Display the name of students whose name starts with 'k'.
SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE 'K%'
--2. Display the name of students whose name consists of five characters.
SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE'_____'
--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT FIRSTNAME FROM STUDENT
WHERE CITY LIKE '_____a'
--4. Display all the students whose last name ends with 'tel'.
SELECT * FROM STUDENT
WHERE LASTNAME LIKE '%tel'
--5. Display all the students whose first name starts with 'ha' & ends with't'.
SELECT*FROM STUDENT
WHERE FIRSTNAME LIKE 'ha%t'
--6. Display all the students whose first name starts with 'k' and third character is 'y'.
SELECT *FROM STUDENT
WHERE FIRSTNAME LIKE 'K_Y%'
--7. Display the name of students having no website and name consists of five characters.
SELECT FIRSTNAME FROM STUDENT
WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____'
--8. Display all the students whose last name consist of 'jer'.
SELECT*FROM STUDENT
WHERE LASTNAME LIKE '%jer%'
--9. Display all the students whose city name starts with either 'r' or 'b'.
SELECT *FROM STUDENT
WHERE CITY LIKE '[rb]%'
--10. Display all the name students having websites.
SELECT*FROM STUDENT
WHERE WEBSITE IS NOT NULL
--11. Display all the students whose name starts from alphabet A to H.
SELECT*FROM STUDENT 
WHERE FIRSTNAME LIKE '[A-H]%'
--12. Display all the students whose name's second character is vowel.
SELECT*FROM STUDENT
WHERE FIRSTNAME LIKE '_[aeiou]%'
--13. Display the name of students having no website and name consists of minimum five characters.
SELECT FIRSTNAME FROM STUDENT
WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____%'
--14. Display all the students whose last name starts with 'Pat'.
SELECT*FROM STUDENT
WHERE LASTNAME LIKE 'Pat%'
--15. Display all the students whose city name does not starts with 'b'.
SELECT*FROM STUDENT
WHERE CITY NOT LIKE 'b%'

--Part – B:
--1. Display all the students whose name starts from alphabet A or H.
SELECT*FROM STUDENT
WHERE FIRSTNAME LIKE '[AH]%'
--2. Display all the students whose name's second character is vowel and of and start with H.
SELECT*FROM STUDENT
WHERE FIRSTNAME LIKE 'H[aeiou]%'
--3. Display all the students whose last name does not ends with 'a'.
SELECT*FROM STUDENT
WHERE LASTNAME NOT LIKE '%a'
--4. Display all the students whose first name starts with consonant.
SELECT*FROM STUDENT
WHERE FIRSTNAME NOT LIKE '[AEIOU]%' 
--5. Display all the students whose website contains .netSELECT*FROM STUDENTWHERE WEBSITE LIKE '.net'--Part – C:
--1. Display all the students whose address consist of -.
SELECT*FROM STUDENT
WHERE ADDRESS LIKE '%-%'
--2. Display all the students whose address contains single quote or double quote.
SELECT*FROM STUDENT
WHERE ADDRESS LIKE '%[''"]%'
--3. Display all the students whose website contains @.
SELECT*FROM STUDENT
WHERE WEBSITE LIKE '%@%'
--4. Display all the names those are either four or five charactersSELECT FIRSTNAME FROM STUDENTWHERE FIRSTNAME LIKE '____' OR FIRSTNAME LIKE '_____'