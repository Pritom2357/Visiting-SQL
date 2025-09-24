-- Rank each order based on their sales from highest to lowest
-- additionally provide details such order id and order date

SELECT 
	OrderID,
	OrderDate,
	Sales,
	RANK() OVER(ORDER BY Sales DESC) RankSales,
	SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY Sales) 
FROM Sales.Orders