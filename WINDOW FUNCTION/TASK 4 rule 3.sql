-- Find the total sales for each order status, only for two products 101 and 102

SELECT
	OrderID,
	OrderDate,
	OrderStatus,
	Sales,
	SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderStatus) TotalSales
FROM Sales.Orders -- then aggregation  
WHERE ProductID IN (101, 102) -- first filtering