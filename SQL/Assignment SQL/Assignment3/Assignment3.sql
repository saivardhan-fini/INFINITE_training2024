use Assignment2
select * from EMP;
select * from Dept;

--1)Retrieve a list of MANAGERS.
select * from EMP where Job = 'manager';
--2)Find out the names and salaries of all employees earning more than 1000 per month.
select Ename,Sal from EMP where Sal > 1000;
--3)Display the names and salaries of all employees except JAMES. 
select Ename,Sal from EMP where Ename <> 'james';
--4)Find out the details of employees whose names begin with ‘S’.
select * from EMP where Ename like 's%';
--5)Find out the names of all employees that have ‘A’ anywhere in their name. 
select Ename from EMP where Ename like '%a%';
--6)Find out the names of all employees that have ‘L’ as their third character in their name.
select Ename from EMP where SUBSTRING(Ename,3,1) = 'l';
--7)Compute daily salary of JONES.
select Ename, Sal /30 as dailysal from EMP where Ename = 'jones';
--8)Calculate the total monthly salary of all employees. 
select sum(Sal) as totalsal from EMP;
--9)Print the average annual salary . 
select avg(sal*12) as AvgAnnualSal from EMP;
--10)Select the name, job, salary, department number of all employees except SALESMAN from department number 30.
select Ename,Job,Sal,DeptNo from EMP where DeptNo = 30 and Job <> 'salesman';
--11)List unique departments of the EMP table. 
select distinct DeptNo from EMP;
--12)List the name and salary of employees who earn more than 1500 and are in department 10 or 30. Label the columns Employee and Monthly Salary respectively.
select Ename as Employee, Sal as Monthly_Salary 
from EMP where (DeptNo=10 or DeptNo=30) and Sal>1500;
--13)Display the name, job, and salary of all the employees whose job is MANAGER or ANALYST and their salary is not equal to 1000, 3000, or 5000.
select Ename,Job,Sal from EMP 
where (Job='manager' or Job='analyst') and Sal not in (1000,3000,5000);
--14)Display the name, salary and commission for all employees whose commission amount is greater than their salary increased by 10%.
select Ename,Sal,Comm from EMP where Comm > Sal*0.1;
--15)Display the name of all employees who have two Ls in their name and are in department 30 or their manager is 7782.
select Ename from EMP where (Ename like '%l%l%' and DeptNo = 30) or Mgr_id = 7782;
--16)Display the names of employees with experience of over 30 years and under 40 yrs Count the total number of employees.
select Ename as totalEmp from EMP 
where DATEDIFF(yy,hiredate,getdate()) between 30 and 40;
select count(Ename) as totalEmp from EMP where DATEDIFF(yy,hiredate,getdate()) between 30 and 40
--17)Retrieve the names of departments in ascending order and their employees in descending order. 
select D.Dname as department, E.Ename as employee 
from DEPT D left join EMP E on D.DeptNo = E.DeptNo order by D.Dname asc, E.Ename desc;
--18)Find out experience of MILLER. 
select Ename, DATEDIFF(YY,HireDate,GETDATE()) as ExpInYear 
from EMP where Ename = 'miller';