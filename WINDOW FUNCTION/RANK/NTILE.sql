SELECT
OrderID,
Sales,
NTILE(4) OVER(ORDER BY Sales DESC) buckets
FROM Sales.Orders