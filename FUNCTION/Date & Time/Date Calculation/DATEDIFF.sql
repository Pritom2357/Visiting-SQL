-- Calculte the age of employees

SELECT
EmployeeID,
BirthDate,
DATEDIFF(year, BirthDate, GETDATE()) AS Age,
DATEDIFF(month, BirthDate, GETDATE()) AS Age_month,
DATEDIFF(day, BirthDate, GETDATE()) AS Age_days
FROM Sales.Employees