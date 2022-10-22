use mvc_db;

create table employee(
	id int primary key identity(1,1),
	ename varchar(20),
	designation varchar(15)
);
 
select * from employee;