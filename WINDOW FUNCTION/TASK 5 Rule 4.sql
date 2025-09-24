-- Rank customers based on their total sales

SELECT
	CustomerID,
	SUM(Sales) TotalSales,
	RANK() OVER(ORDER BY SUM(Sales) DESC) Ranks
FROM Sales.Orders
GROUP BY CustomerID
