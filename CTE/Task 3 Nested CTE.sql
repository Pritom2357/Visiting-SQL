-- Step 1: Find the total sales per customer.

WITH CTE_total_sales AS
(
SELECT
	CustomerID,
	SUM(Sales) totalSales
FROM Sales.Orders
GROUP BY CustomerID
),
-- Step 2: Find the last orde date for each customer
CTE_last_order AS
(
SELECT
CustomerID,
MAX(OrderDate) lastOrder
FROM Sales.Orders
GROUP BY CustomerID
),
-- Step 3: Rank Customers based on Total Sales per customer
CTE_Customer_Rank AS
(
SELECT
	CustomerID,
	totalSales,
	RANK() OVER(ORDER BY totalSales DESC) as customerRank
FROM CTE_total_sales
)

--SELECT * FROM CTE_Customer_Rank;

-- Main query
SELECT 
c.CustomerID,
c.FirstName,
cte.totalSales,
ctel.lastOrder,
cter.customerRank
FROM Sales.Customers c
LEFT JOIN CTE_total_sales cte
ON c.CustomerID = cte.CustomerID
LEFT JOIN CTE_last_order ctel
ON c.CustomerID = ctel.CustomerID
LEFT JOIN CTE_Customer_Rank cter
ON c.CustomerID = cter.CustomerID
