create database cse_3A_242

create table deposit(
	actno int,
	cname varchar(50),
	bname varchar(50),
	amount decimal(8,2),
	adate datetime
);


insert into deposit values(101, 'ANIL', 'VRCE', 1000, '1995-3-1');
insert into deposit values(102, 'SUNIL', 'AJNI', 5000, '1996-1-4');
insert into deposit values(103, 'MEHUL', 'KAROLBAGH', 3500, '1995-11-17');
insert into deposit values(104, 'MADHURI', 'CHANDI', 1200, '1995-12-17');
insert into deposit values(105, 'PRMOD', 'M.G. ROAD', 3000, '1996-3-27');
insert into deposit values(106, 'SANDIP', 'ANDHERI', 2000, '1996-3-31');
insert into deposit values(107, 'SHIVANI', 'VIRAR', 1000, '1995-9-5');
insert into deposit values(108, 'KRANTI', 'NEHRU PALACE', 5000, '1996-7-2');
insert into deposit values(109, 'MINU', 'POWAI', 7000, '1995-8-10');

select*from deposit

create table branch(
	bname varchar(50),
	city varchar(50)
);

insert into branch values('POWAI', 'BOMBAY')

select*from branch

create table customers(
	cname varchar(50),
	city varchar(50)
);

insert into customers values('ANIL', 'CALCUTTA')
insert into customers values('SUNIL', 'DELHI')
insert into customers values('MEHUL', 'BARODA')
insert into customers values('MANDAR', 'PATNA')
insert into customers values('MADHURI ', 'NAGPUR')
insert into customers values('PRAMOD ', 'NAGPUR')
insert into customers values('SANDIP', 'SURAT')
insert into customers values('SHIVANI ', 'BOMBAY')
insert into customers values('KRANTI', 'BOMBAY')
insert into customers values('NAREN', 'BOMBAY')


select*from customers

create table borrow(
	loanno int,
	cname varchar(50),
	bname varchar(50),
	amount decimal(8,2)
);

insert into borrow values(201 , 'ANIL' , 'VRCE' , 1000.00)
insert into borrow values(206 ,  'MEHUL' ,  'AJNI' ,  5000.00 )
insert into borrow values(311 , 'SUNIL' , 'DHARAMPETH' , 3000.00 )
insert into borrow values(321 , 'MADHURI' , 'ANDHERI' , 2000.00 )
insert into borrow values(375 , 'PRAMOD' , 'VIRAR' , 8000.00 )
insert into borrow values(481 , 'KRANTI' , 'NEHRU PLACE' , 3000.00 )

SELECT * FROM BORROW
	
