use org;

create table salesman(
	salesman_id int primary key,
	sname varchar(20),
	city varchar(20),
	commission float
);

insert into salesman values
(5001,'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'ondon' , 0.11),
(5006,'Mc Lyon' , 'Paris' , 0.14),
(5007, 'Paul Adam', 'Rome' , 0.13),
(5003, 'Lauson Hen', 'San Jose' , 0.12);

select * from salesman;

create view 
sales1 as 
select salesman_id, sname
from salesman 
where city='New York';


select * from sales1;


create view 
sales2 as 
select salesman_id, sname, city
from salesman;

select * from sales2;


create view 
sales3 as 
select city,count(distinct salesman_id) as No_of_Employees
from salesman group by city;
 

select * from sales3;



CREATE TABLE customers
( customer_id int PRIMARY KEY,
  cust_name varchar(50),
  city varchar(50),
  grade int,
  salesman_id int
);

insert into customers values(3002,'Nick Rimando','New York',100,5001)
insert into customers values(3007,'Brad Davis','New York',200,5001)
insert into customers values(3005,'Graham Zusi','California',200,5002)
insert into customers values(3008,'Julian Green','London',300,5002)
insert into customers values(3004,'Fabian Johnson','Paris',300,5006)
insert into customers values(3009,'Geoff Cameron','Berlin',100,5003)
insert into customers values(3003,'Jozy Altidor','Moscow',200,5007)

select * from customers;


create view sales4 as
select grade, count(distinct customer_id) as No_of_Employees
from customers
group by grade;

select * from sales4;


CREATE TABLE orders
( ord_no int PRIMARY KEY,
  purch_amt float(10),
  ord_date Date,
  customer_id int,
  salesman_id int
);


insert into orders values
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001)


select * from orders;



create view sales5 as
select ord_no,purch_amt,o.salesman_id,s.sname,c.cust_name
from orders o, salesman s, customers c
where o.customer_id=c.customer_id and o.salesman_id=s.salesman_id;

select * from sales5;

