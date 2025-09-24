-- Find the total sales accross all orders
-- and total sales for each product 
-- additionally, provide details such orderId and orderdate
USE SalesDB
SELECT
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	SUM(sales) OVER() ProductSales,
	SUM(sales) OVER(PARTITION BY ProductID) TotalSales
FROM Sales.Orders