-- Step 1: Find the total sales per customer.

WITH CTE_total_sales AS
(
SELECT
	CustomerID,
	SUM(Sales) totalSales
FROM Sales.Orders
GROUP BY CustomerID
)

-- Main query
SELECT 
c.CustomerID,
c.FirstName,
cte.totalSales
FROM Sales.Customers c
LEFT JOIN CTE_total_sales cte
ON c.CustomerID = cte.CustomerID
ORDER BY CustomerID DESC