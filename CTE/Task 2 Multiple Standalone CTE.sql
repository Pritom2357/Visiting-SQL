-- Step 1: Find the total sales per customer.
-- Step 2: Find the last orde date for each customer
WITH CTE_total_sales AS
(
SELECT
	CustomerID,
	SUM(Sales) totalSales
FROM Sales.Orders
GROUP BY CustomerID
), CTE_last_order AS
(
SELECT
CustomerID,
MAX(OrderDate) lastOrder
FROM Sales.Orders
GROUP BY CustomerID
)

-- Main query
SELECT 
c.CustomerID,
c.FirstName,
cte.totalSales,
ctel.lastOrder
FROM Sales.Customers c
LEFT JOIN CTE_total_sales cte
ON c.CustomerID = cte.CustomerID
LEFT JOIN CTE_last_order ctel
ON c.CustomerID = ctel.CustomerID