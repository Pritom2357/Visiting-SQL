SELECT 
FirstName AS Name,
Country AS Last_name
FROM Sales.Customers

UNION

SELECT 
FirstName,
LastName 
From Sales.Employees

-- Though column names are different, they still join as # is same