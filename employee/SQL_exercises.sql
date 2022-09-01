-- SQL exercise pt2
-- Author : Kenneth Lopez

--  1. Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use
-- the ALIAS name as EmpName.
 SELECT UPPER(EmpFname) AS EmpName From employee_info;

-- 2. Write a query to fetch the number of employees working in the department ‘HR’.
select count(*) from employee_info where Department = 'HR';

-- 3. Write a query to get the current date.
Select sysdate();

-- 4. Write a query to retrieve the first four characters of EmpLname from the EmployeeInfo table.
Select substring(EmpLname, 1, 4) from Employee_info;

-- 5. Write a query to fetch only the place name(string before brackets) from the Address column of
-- EmployeeInfo table.
SELECT SUBSTRING(Address, 1, locate('(',Address)) FROM employee_info;

-- 6. Write a query to create a new table that consists of data and structure copied from the other
-- table.
Create table NewEmployee as select * from employee_info;

-- 7. Write a query to find all the employees whose salary is between 50000 to 100000.
Select * from employee_position where Salary between 50000 and 100000;

-- 8. Write a query to find the names of employees that begin with ‘S’
Select * from employee_info where EmpFname like 'S%';

-- 9. Write a query to fetch top N records.
Select * from employee_position order by Salary desc limit 4;

-- 10. Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The
-- first name and the last name must be separated with space.
Select concat(EmpFname, ' ', EmpLname) AS 'FullName' From employee_info;

-- 11. Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1975
-- and are grouped according to gender.
Select count(*), Gender from employee_info where DOB between '02/05/1970' and '31/12/1975' 
Group By Gender;
-- There are no records that have these dates.

-- 12. Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in
-- descending order and Department in the ascending order.
Select * from employee_info order by EmpFname desc, Department asc;

-- 13. Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and
-- contains five alphabets.
select * from employee_info where EmpLname like '_____a';

-- 14. Write a query to fetch details of all employees excluding the employees with first names,
-- “Sanjay” and “Sonia” from the EmployeeInfo table.
Select * from employee_info where EmpFname not in ('Sanjay','Sonia');

-- 15. Write a query to fetch details of employees with the address as “DELHI(DEL)”.
Select * from employee_info where address like 'DELHI(DEL)';

-- 16. Write a query to fetch all employees who also hold the managerial position.
Select E.EmpFname, E.EmpLname, P.EmpPosition from employee_info E 
Inner Join employee_position P on E.EmpID = P.EmpID and P.EmpPosition in ('Manager');

-- 17. Write a query to fetch the department-wise count of employees sorted by department’s count in
-- ascending order.
Select Department, count(EmpID) as EmpDeptCount from employee_info group by 
Department Order by EmpDeptCount ASC;

-- 18. Write a query to calculate the even and odd records from a table.
-- The code below is for even records from a table:
Select EmpID from (Select EmpID from employee_info) as rownum where mod(EmpID,2)=0;

-- The code below is for odd records from a table:
Select EmpID from (Select EmpID from employee_info) as rownum where mod(EmpID,2)=1;

-- 19. Write a SQL query to retrieve employee details from EmployeeInfo table who have a date of
-- joining in the EmployeePosition table.
Select * from employee_info E where exists (Select * from employee_position P 
where E.EmpID = P.EmpID);

-- 20. Write a query to retrieve two minimum and maximum salaries from the EmployeePosition
-- table.
-- The Query below displays the Minimum Salary:
Select distinct Salary from employee_position E1 
Where 2 >= (select count(Distinct Salary) from employee_position E2 where E1.Salary >= E2.Salary)
Order by E1.Salary Desc;
-- The Query below displays the Maximum Salary:
Select distinct Salary from employee_position E1 
Where 2 >= (select count(Distinct Salary) from employee_position E2 where E1.Salary <= E2.Salary)
Order by E1.Salary Desc;

-- 21. Write a query to find the Nth highest salary from the table without using TOP/limit keyword.
Set @N := 1;
Select Salary from employee_position E1 where @N = (Select count(Distinct (E2.Salary)) 
from employee_position e2 where E2.Salary >= E1.Salary);

-- 22. Write a query to retrieve duplicate records from a table.
Select EmpID, EmpFname, Department, COUNT(*) from employee_info 
group by EmpID, EmpFname, Department Having count(*) > 1;
-- There are no duplicates in the dataset.

-- 23. Write a query to retrieve the list of employees working in the same department.
Select Distinct E.EmpID, E.EmpFname, E.Department from employee_info E, employee_info E1
where E.Department = E1.Department and E.EmpID != E1.EmpID;

-- 24. Write a query to retrieve the last 3 records from the EmployeeInfo table.
select * from employee_info order by EmpID Desc limit 3;

-- 25. Write a query to find the third-highest salary from the EmpPosition table.
select Salary from employee_position order by Salary desc limit 2, 1;

-- 26. Write a query to display the first and the last record from the EmployeeInfo table.
(Select * from employee_info limit 1)
union (select * from employee_info order by EmpId desc limit 1);

-- 27. Write a query to add email validation to your database
Select *, Email 'Validated Emails' 
from employee_info 
where Email 
regexp '^[a-zA-Z0-9.!#$%&\'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$';

-- 28. Write a query to retrieve Departments who have less than 2 employees working in it.
SELECT Department, count(EmpID) as 'EmpNo' from employee_info 
group by Department having count(EmpID)<2;

-- 29. Write a query to retrieve EmpPostion along with total salaries paid for each of them.
Select EmpPosition, sum(Salary) from employee_position group by EmpPosition;

-- 30. Write a query to fetch 50% records from the EmployeeInfo table.
Select * from employee_info where EmpID <= (Select count(EmpID)/2 from employee_info);
