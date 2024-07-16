use InfiniteDB
create table Emp5(
Empno numeric(4) primary key,Ename varchar(20) not null,Job varchar(15),Salary numeric(7) check(Salary>0),
  Deptno numeric(2) foreign key  references Departments(Deptno),Gender varchar(10)
);
select*from Emp5
insert into EMP5 (Empno, Ename, Job, Salary, Deptno,Gender) values
(7001, 'Sandeep', 'Analyst', 25000, 10,'MALE'),
(7002, 'Rajesh', 'Designer', 30000, 10,'MALE'),
(7003, 'Madhav', 'Developer', 40000, 20,'MALE'),
(7004, 'Manoj', 'Developer', 40000, 20,'MALE'),
(7005, 'Abhay', 'Designer', 35000, 10,'MALE'),
(7006, 'Uma', 'Tester', 30000, 30,'FEMALE'),
(7007, 'Gita', 'Tech. Writer', 30000, 40,'FEMALE'),
(7008, 'Priya', 'Tester', 35000, 30,'FEMALE'),
(7009, 'Nutan', 'Developer', 45000, 20,'MALE'),
(7010, 'Smita', 'Analyst', 20000, 10,'MALE'),
(7011, 'Anand', 'Project Mgr', 65000, 10,'MALE');

CREATE FUNCTION fnGetMaleEmpolCount()
RETURNS INT
AS
BEGIN
    RETURN (SELECT COUNT(*) FROM Emp5 WHERE gender = 'Male')
END;
SELECT dbo.fnGetMaleEmpolCount();

Create function FnaddNUMBER(@int1 int , @int2 int )
returns int
as 
begin
return @int1+@int2
end;
select dbo.FnaddNUMBER (2,3) 

create function fnArea(@len1 int ,@len2 int)
returns int
as
begin
return @len1*@len2
end;
 
select dbo.fnArea(4,5) 

create function fn_tablevalued(@deptno int )
returns table
as
return(select empno,salary,ename,deptno from Employees where Deptno = @deptno)
select*from fn_tablevalued(10)

use northwind
select*from Customers

create or alter function fn_GetEmployeesDetails(@ContactName varchar(50),@phone varchar(50),@Country varchar(50))
returns
@EmpDetails table(
ContactName varchar(50), phone varchar(50),
Country varchar(50))
as
begin
--bulk insertion
insert into @EmpDetails
select ContactName,phone,Country from Customers
where Country= @Country
--handling exception situation
if @@ROWCOUNT = 0
begin
  insert into @EmpDetails
  values(0,'Employees found with the given Details',null)
  end
return
end

 
--to execute the above function
select * from fn_GetEmployeesDetails('Mexico')




use Infinitedb
select * from Employees
begin tran 
insert into Employees values (7012,'Saivardhan','Software',66000,40,'Male',null)
save tran t1
select * from Employees
delete from Employees where Empno = 7011
select * from Employees where Empno = 7001
save tran t2
update Departments set budget = 50000 where Deptno=40
select * from Departments
rollback tran t1
commit




Select * from Departments
alter table Departments
add budget varchar(10)
update Departments set budget = 50000 where Deptno=40





