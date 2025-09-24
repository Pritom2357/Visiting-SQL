-- Find female employees whose salaries are greater than the salaries of all male employees


SELECT
EmployeeID,
FirstName,
Gender,
Salary
FROM Sales.Employees
WHERE Gender = 'F' 
AND Salary > ALL(
SELECT
Salary
FROM Sales.Employees
WHERE Gender = 'M'
)

SELECT
EmployeeID,
Salary
FROM Sales.Employees
WHERE Gender = 'M'