-- Show all customer details and find the total orders of each customer

SELECT
*,
(SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID = c.CustomerID) totalSales
FROM Sales.Customers c

SELECT COUNT(*) FROM Sales.Orders