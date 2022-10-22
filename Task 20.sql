use org;

create synonym cust for customers;

select * from customers;

insert into cust values(3010,'Paul','Mosco',300,5007);

select * from customers;




--Sequence
Create table student(
	sid int,
	sname varchar(20),
	branch varchar(10)
);

create sequence studentID as int 
start with 1000 increment by 2

insert into student values
(Next Value for studentID,'John','CSE'),
(Next Value for studentID,'Paul','ISE'),
(Next Value for studentID,'Rock','ECE')

select * from student;



--index
create index nameIndex on student(sname)
create nonclustered index nameIndex2 on student(sname)




--simple views
create view 
sale1 as 
select salesman_id, sname
from salesman 
where city='New York';


--complex views
create view sale2 as
select ord_no,purch_amt,o.salesman_id,s.sname,c.cust_name
from orders o, salesman s, customers c
where o.customer_id=c.customer_id and o.salesman_id=s.salesman_id;



--string functions
SELECT CONCAT('SQL', ' is', ' fun!');
select len('Hello');
select upper('sql');


--math functions
Select abs(-6);
Select floor(5.7);
Select power(2,5);
Select sqrt(9);


--datetime functions

--print the only date of given value
SELECT DAY('2020-11-06 07:10:11') as Day_Output --as Month_Output, as Year_Output

--Find the difference between the year
SELECT DATEDIFF(year, '2000/11/06', '2022/11/06') as DateDiff_Output


--Check if the enter date is valid or not
SELECT ISDATE('2022-10-07') as Valid_date_Output --1
SELECT ISDATE('Hello!') as Invalid_date_Output --0


--print the current date with time
SELECT CURRENT_TIMESTAMP as Current_Date_Time

--Gives the date and time of SQL server
SELECT SYSDATETIME() as SysDateTime_Output

