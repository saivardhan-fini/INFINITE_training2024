use InfiniteDB
create or alter proc sp_payslip
@eid int 
as
begin 
declare @salary float,@ename varchar(10)
select @salary = Salary, @ename = ename from Employees where @eid = Empno
declare @HRA float ,@DA float ,@PF float, @IT float , @Deductions float, @Gross_salary float , @net_salary float
set @HRA = 0.1*@salary
	set @DA = 0.2*@salary
	set @PF = 0.08*@salary
	set @IT = 0.05*@salary
	set @Deductions = @PF+@IT
	set @Gross_salary = @salary+@HRA+@DA
	set @net_salary = @Gross_salary-@Deductions
	print '---- Payslip of Employee '+cast(@eid as varchar(10)) + ' is generated as below: --------'
	print 'Employee ID = ' + cast(@eid as varchar(10))
	print 'Employee Name = '+cast(@ename as varchar(10))
	print 'Basic salary = '+ cast(@salary as varchar(10))
	print 'HRA = '+cast(@HRA as varchar(10))
	print 'DA = ' + cast(@DA as varchar(10))
	print 'PF Deductions = '+cast(@PF as varchar(10))
	print 'IT Deductions = '+cast(@IT as varchar(10))
	print 'Total Deductions (PF+IT) = '+cast(@Deductions as varchar(10))
	print 'Total Gross salary = '+cast(@Gross_salary as varchar(10))
	print 'Total Net Salary = '+cast(@net_salary as varchar(10))
	print 'Payslip Generated Successfully...'
 select empno as 'Employee id',ename as 'Employee Name',@salary as 'Basic salary',@HRA as 'HRA',@DA as 'DA',@PF as 'PF Deductions',
			@IT as 'IT Deductions',@Deductions as 'Total Deductions',@Gross_salary as 'Total Gross salary',
			@net_salary as 'net salary' from Employees where empno=@eid
end
 
exec sp_payslip 7001