-- Show the details of orders made by customers in Germany


SELECT
*
FROM Sales.Orders o
WHERE EXISTS (
	SELECT 1 FROM Sales.Customers c
	WHERE Country = 'Germany' 
	AND c.CustomerID = o.CustomerID
)