-- Retrieve employee details with gender displayed as full text

SELECT
EmployeeID,
FirstName,
LastName,
CASE
	WHEN Gender = 'M' THEN 'Male'
	ELSE 'Female'
END Gender
FROM Sales.Employees