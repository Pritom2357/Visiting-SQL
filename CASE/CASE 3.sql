-- Retrieve customer details with abbreviated country code

SELECT 
CustomerID,
FirstName, 
LastName,
CASE Country
	WHEN 'Germany' THEN 'ge'
	WHEN 'USA' THEN 'us'
	ELSE 'n/a'
END country
FROM Sales.Customers

SELECT DISTINCT Country
FROM Sales.Customers