create database My_Birthday
use My_Birthday



create table MyBirthday(
name varchar(20),
age int,
birthdate date )
insert into MyBirthday values ('sai vardhan',23,'2001/10/23')
select * from MyBirthday


--1 Query 
select birthdate, format(birthdate,N'dddd","dd MMMM yyyy' ) as day_of_week
from MyBirthday where name = 'sai vardhan'

--2 Query
select name,birthdate, DATEDIFF(DAY,birthdate,GETDATE()) as currentageindates
from MyBirthday where name = 'sai vardhan'

--3 Query 

use Assignment2
		select*from EMP
		update EMP set HireDate = '2019-07-17' where Empno = 7934
		update EMP set HireDate = '2019-07-20' where Empno = 7369
		update EMP set HireDate = '2019-07-3' where Empno = 7782
		update EMP set HireDate = '2019-07-9' where Empno = 7698

	select * from EMP where DATEDIFF(yy,hiredate,GETDATE()) = 5 and month(hiredate)=month(getdate());

-- 4 Query
create table employee2(
emp_no varchar(20),
ename varchar(20),
sal int,
doj date)
select*from employee2

begin tran
insert into employee2 values (1,'Kajal',28200,'2024/01/20'),
(2,'shreyash',28453,'2024/04/28'),
(3,'vejandra',24500,'2024/02/23'),
(4,'saivardhan',28654,'2024/05/28')
update employee2 set sal = sal * 0.15 where emp_no = 2
delete from employee2 where emp_no = 1


--5 Query
use Assignment2
select * from EMP
select * from DEPT

create or alter function calculateBonus (@Deptno int , @salary float)
returns float 
as
begin
declare @bonus float
if @Deptno = 10 set @bonus = @salary * 0.15

else if @Deptno = 20 set @bonus = @salary * 0.20

else 
set @bonus = @salary * 0.05

return @bonus
end

select Empno, Ename , sal , dbo.calculateBonus(DeptNo, sal) from EMP





