-- Find the Employees who are also Customers

SELECT 
FirstName,
LastName
FROM Sales.Customers

INTERSECT

SELECT
FirstName,
LastName
FROM Sales.Employees
