-- Calculate moving average of sales for each product over time

SELECT
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	AVG(Sales) OVER(PARTITION BY ProductID ) avg,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) movingAvg
FROM Sales.Orders