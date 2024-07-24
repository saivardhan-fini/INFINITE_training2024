create database Employeemanagement;
use Employeemanagement;

create table Employee_Detailss (
    Empno int PRIMARY KEY,
    EmpName varchar(50) not null, 
    Emp_sal numeric,
	Emptype char(1) check(Emptype in ('F','P'))
);

select * from Employee_Detailss;

create or alter procedure AddEmployee
    @EmpName varchar(50),
    @Emp_sal numeric(10,2),
    @Emptype char(1)
as
begin
    declare @NewEmpno int;

    select @NewEmpno = isnull(max(Empno), 0) + 1 from Employee_Detailss;
    
	
	
	insert into Employee_Detailss(Empno, EmpName, Emp_sal, Emptype)
	values (@NewEmpno, @EmpName, @Emp_sal, @Emptype);
end;

select * from Employee_Detailss