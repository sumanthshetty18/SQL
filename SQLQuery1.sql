
use ORG;

CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000,  '2022-02-14 09:00:00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '2022-02-14 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000,'2022-02-14 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000,'2022-02-14 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2022-02-14 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2022-02-14 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2022-02-14 09:00:00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2022-02-14 09:00:00', 'Admin');

select * from Worker;


CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT,
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
ON DELETE CASCADE
);

INSERT INTO Bonus
(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, '2016-02-20 07:00:00'),
(002, 3000, '2016-06-11 06:00:00'),
(003, 4000, '2016-02-20 09:00:00'),
(001, 4500, '2016-02-20 03:00:00'),
(002, 3500, '2016-06-11 05:00:00');

select * from Bonus;

CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(001, 'Manager', '2016-02-20 00:00:00'),
(002, 'Executive', '2016-06-11 00:00:00'),
(008, 'Executive', '2016-06-11 00:00:00'),
(005, 'Manager', '2016-06-11 00:00:00'),
(004, 'Asst. Manager', '2016-06-11 00:00:00'),
(007, 'Executive', '2016-06-11 00:00:00'),
(006, 'Lead', '2016-06-11 00:00:00'),
(003, 'Lead', '2016-06-11 00:00:00');


select * from Title;

select * from Worker;



select first_name  as Worker_Name from Worker ;


select upper(first_name) from Worker ;


select distinct(department) from Worker;


select substring(first_name,1,3) from Worker;


select  distinct DEPARTMENT,LEN(DEPARTMENT) as 'No of Employees' from Worker;


select concat(FIRST_NAME,' ',LAST_NAME) as Complete_Name from Worker;


select * from Worker where FIRST_NAME='Vipul' or FIRST_NAME='Satish';


select * from Worker where DEPARTMENT='admin';


select * from Worker where FIRST_NAME like '%a';


select * from Worker where FIRST_NAME like '%a%';
