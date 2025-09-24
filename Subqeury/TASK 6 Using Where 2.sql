-- Show the details of orders made by customers in Germany

SELECT
*
FROM Sales.Orders
WHERE CustomerID IN (
SELECT
CustomerID
FROM Sales.Customers
WHERE Country = 'Germany'
)

SELECT
CustomerID
FROM Sales.Customers
WHERE Country = 'Germany'