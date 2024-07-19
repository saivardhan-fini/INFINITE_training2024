use InfiniteDB


declare @no int
declare @res int

set @no = 6
set @res = 1

while @no > 1
begin
	set @res = @res * @no
	set @no = @no -1
end

select @res as factorial;
begin
	print 'factorial of  '+cast('6' as varchar(20)) + ' is  '+' '+cast(@res as varchar(30))
end;

create procedure Multi_Table @table int
as 
begin
	declare @i int
	declare @j int
 if @table <= 0
    begin
	print 'Invalid Input Please Input A Positive Integer'
	return
    end
	set @i = 8
	while @i <= @table 
    begin 
	print 'Multiplication Table For ' + cast(@i as varchar(10)) + ':'
	set @j = 1
 while @j<=10
    begin
	print cast(@i as varchar(10)) + ' * ' + cast(@j as varchar(10)) + ' = ' + cast(@i * @j as varchar(10))
	set @j = @j+1
    end
	print ''
	set @i = @j + 1
    end
end

execute Multi_Table @table = 10;
	
create Database Assignment_4
use Assignment_4


create Table Holiday(
holiday_date Date primary key,
holiday_name varchar(20)
);

Insert into Holiday(holiday_date, holiday_name)
values
	('2025-03-26', 'Holi'),
	('2024-08-19', 'Rakshabandhan'),
	('2024-10-15', 'Diwali'),
	('2025-01-01', 'New year')

select * from Holiday

create table Emp (
	id int,
    Name varchar(20),
);

select*from Emp


create or alter trigger prevent_dml_operation
on emp
after insert, update, delete
as
begin
    declare @existsHoliday int;
    set @existsHoliday = (select count(*) from holiday where holiday_date = convert(date, getdate()));
    
    if @existsHoliday > 0
    begin
        declare @createErrorMessage varchar(50);
        declare @getHoliday varchar(30);
        select @getHoliday = holiday_name from holiday where holiday_date = convert(date, getdate());
        set @createErrorMessage = 'Due to ' + @getHoliday + ', you can not manipulate the data.';
        raiserror(@createErrorMessage, 16, 1);
		return
    end
end

 

 insert into Emp values(7,'saivardhan');