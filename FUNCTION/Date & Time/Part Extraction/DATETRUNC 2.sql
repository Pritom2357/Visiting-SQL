SELECT
DATETRUNC(month, CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(month, CreationTime)