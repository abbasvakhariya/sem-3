

--1. Retrieve all data from table DEPOSIT.
 SELECT * FROM DEPOSITE

--2. Retrieve all data from table BORROW.
SELECT * FROM BORROW
--3. Retrieve all data from table CUSTOMERS.
SELECT * FROM  CUSTOMERS
--4. Display Account No, Customer Name & Amoount from DEPOSIT.
 SELECT ACTNO,CNAME,AMOUNT FROM DEPOSITE

--5. Display Loan No, Amount from BORROW.
SELECT LOANNO,AMOUNT FROM BORROW
--6. Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table.
SELECT * FROM BORROW
WHERE BNAME='ANDHERI'
--7. Give account no and amount of depositor, whose account no is equals to 106 from deposit table.
select ACTNO,AMOUNT from DEPOSITE
WHERE ACTNO=106
--8. Give name of borrowers having amount greater than 5000 from borrow table.
SELECT * FROM BORROW 
WHERE AMOUNT>5000
--9. Give name of customers who opened account after date '1-12-96' from deposit table.
 SELECT * FROM DEPOSITE
 WHERE ADATE='01-DEC-1996'
--10. Display name of customers whose account no is less than 105 from deposit table.
 SELECT * FROM DEPOSITE
WHERE ACTNO<105
--11. Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN)
 SELECT * FROM COSTOMERS
 WHERE BNAME=' NAGPUR' OR DELHI

--12. Display name of customers with branch whose amount is greater than 4000 and account no is less than
--105 from deposit table.
--13. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow
--table. (AND & BETWEEN)
--14. Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table.
--15. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’
--Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.


