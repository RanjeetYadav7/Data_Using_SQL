CREATE DATABASE Employees;
USE Employees;
SELECT * FROM salaries;
-- Show the EmployeeName,JobTitle From the salaries table.
SELECT EmployeeName,JobTitle FROM salaries;

-- show the number of employee in the table.
SELECT COUNT(EmployeeName) FROM salaries;

SELECT DISTINCT(JobTitle) FROM salaries;

--
SELECT JobTitle,OvertimePay FROM salaries WHERE BasePay > 50000;

--
SELECT avg(BasePAy) FROM salaries;
SELECT avg(BasePay) AS AVG_BasePay FROM salaries;

-- Show the top 10 highest paid em[ployee
SELECT EmployeeName,TotalPay FROM salaries ORDER BY TotalPay DESC LIMIT 10;

-- Show the avg of BasePay,OvertimePay And OtherPay for each employee.
SELECT EmployeeName,(BasePay+OvertimePay+OtherPay)/3 AS AVG_Pay FROM salaries;

-- Show all the employees who have the world manager in their jobtitle.
SELECT EmployeeName,JobTitle FROM salaries WHERE JobTitle LIKE '%Manager%';

-- Show all the Employee with a JobTitle not equal to 'Manager'
SELECT EmployeeName,JobTitle FROM salaries WHERE JobTitle <> 'Manager';

-- Show all employee with TotalPay b/w 50000 to 75000
SELECT EmployeeName,TotalPay FROM salaries WHERE TotalPay BETWEEN 50000 AND 75000;

-- Show all employee with a BasePay less than 50000 or TotalPay greater than 100000
SELECT EmployeeName,BasePay,TotalPay FROM salaries WHERE BasePay < 50000 OR TotalPay > 100000;

-- Show all employees with a totalPayBenifits value b/w 125000 and 150000 and JobTitle containg the world 'Director'
SELECT EmployeeName,TotalPayBenerfits,JobTitle FROM salaries WHERE TotalPayBenefits 
BETWEEN 125000 AND 150000 JobTitle LIKE '%Director%';

-- Show all the employee order by their TotalPayBenefits Iin DESC order.
SELECT EmployeeName,TotalPayBenefits FROM salaries ORDER BY TotalPayBenefits DESC;

-- Show all JobTitles with an Avg BasePay of at leat 100000 and order them by the Avg BasePAy in DESC order.
SELECT JobTitle,AVG(BasePay) AS AVG_BasePay FROM salaries GROUP BY(JobTitle) HAVING AVG(BasePay) >= 100000 ORDER BY AVG_BasePay DESC;

-- Delete the column(Notes)
Alter TABLE salaries DROP COLUMN Notes;

-- Update the BasePAy of all employees with the JobTitle containing 'manager' by including it by 10%.
UPDATE salaries SET BasePay = BasePay * 1.1 WHERE JobTitle LIKE '%Manager%';

-- For disable safe_update
SET SQL_SAFE_UPDATE = 0;
 
  -- for enable safe_update
SET SQL_SAFE_UPDATE = 1;


-- Delete all employees who have no OverTimePay.
SELECT COUNT(*) FROM salaries WHERE OverTimePay = 0;

DELETE FROM salaries WHERE OverTimePay = 0;

SELECT * FROM salaries;