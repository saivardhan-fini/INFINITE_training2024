use Assignment2

create table Books(
id int primary key,
title varchar(255),
author varchar(255),
isbn bigint unique,
published_date datetime);
insert into Books(id,title,author,isbn,published_date)values
(1,'My First SQL Book','Mary Pariser',981483029127,'2012-02-22 12:08:17'),
(2,'My Second SQL Book','John Mayer',867300923713,'1972-07-03 09:22:48'),
(3,'My Third SQL Book','Cary Flint',523120967812,'2015-10-18 14:06:44');
--QUERY1
select * from Books where author like '%er';
 

create table Reviews(
id int primary key,
Book_id int,
Reviewer_name varchar(90),
Content varchar(90),
rating int,
Published_date Date);
drop table Reviews

insert into Reviews values (1,2,'John Smith','My First review',4,'2017-12-10'),
(2,2,'John Smith','My Second review',5,'2017-10-13'),
(3,2,'Alice Walker','Another review',1,'2017-10-22')
--QUERY2
select b.title,b.author,r.Reviewer_name from Books b join Reviews r on b.id= r.Book_id;


create table employees(
id int primary key,
Name varchar(30),
Age int,
Address varchar(30),
salary int);

insert into employees values (2,'khilan',25,'Delhi',1500.0),
(3,'Kaushik',23,'Kota',2000.00),
(4,'Chaitali',25,'Mumbai',6500.00),
(5,'Hardik',27,'Bhopal',8500.00),
(6,'komal',22,'MP',null),
(7,'Muffy',24,'Indore',null)
select * from employees
--QUERY3
select name from employees Where Address like '%o%';

create table Orders(
Oid int primary key,
order_date date,
Customer_id int,
Amount int);
drop table Orders
insert into Orders values (102,'2009-10-08',3,3000),
(100,'2009-10-08',3,1500),
(101,'2009-11-20',2,1560),
(103,'2008-05-20',4,2060)

--QUERY4
select order_date , count(Distinct Customer_id) as TotalCustomersordered from Orders group by Order_date

--QUERY5
select lower(Name) from employees where salary is null;


--QUERY6
CREATE TABLE Studentdetails (
    RegisterNo int primary key,
    Name varchar(100),
    Age int,
    Qualification varchar(50),
    MobileNo varchar(15),
    Mail_Id varchar(100),
    Location varchar(100),
    Gender char(1)
);
INSERT INTO Studentdetails (RegisterNo, Name, Age, Qualification, MobileNo, Mail_Id, Location, Gender) VALUES
(1, 'Sai', 22, 'B.E', '9952836777', 'Sai@gmail.com', 'Chennai', 'M'),
(2, 'Kumar', 20, 'BSC', '7890125648', 'Kumar@gmail.com', 'Madurai', 'M'),
(3, 'Selvi', 22, 'B.Tech', '8904567342', 'selvi@gmail.com', 'Selam', 'F'),
(4, 'Nisha', 25, 'M.E', '7834672310', 'Nisha@gmail.com', 'Theni', 'F'),
(5, 'SaiSaran', 21, 'B.A', '8901234675', 'saran@gmail.com', 'Madurai', 'F'),
(6, 'Tom', 23, 'BCA', '7890345678', 'Tom@gmail.com', 'Pune', 'M');
  
SELECT Gender, COUNT(*) AS Total_No FROM Studentdetails GROUP BY Gender;