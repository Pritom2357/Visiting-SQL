-- Find the average sales accross all orders
-- and the average sales for each product
-- additionally provide details such order id, orderdate

SELECT
OrderID,
OrderDate,
Sales,
AVG(Sales) OVER() AvgSales,
AVG(Sales) OVER(PARTITION BY ProductID) perProduct
FROM Sales.Orders