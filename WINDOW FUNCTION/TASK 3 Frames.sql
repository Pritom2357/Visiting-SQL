SELECT
	OrderID,
	OrderDate,
	OrderStatus,
	Sales,
	SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) TotalSales
FROM Sales.Orders