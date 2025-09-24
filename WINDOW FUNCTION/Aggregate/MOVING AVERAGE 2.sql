-- Calculate moving average of sales for each product over time
/*
	Calculate moving average of sales for each product over time,
	including only the next order
*/

SELECT
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	AVG(Sales) OVER(PARTITION BY ProductID ) avg,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) runningAvg,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) RollingAvg
FROM Sales.Orders