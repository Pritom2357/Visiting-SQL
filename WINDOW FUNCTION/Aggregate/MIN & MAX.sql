-- Find the highest and lowest sales of all orders and for each product

SELECT
OrderID,
OrderDate,
ProductID,
Sales,
MAX(Sales) OVER() HighestSales,
MIN(Sales) OVER() LowestSales,
MAX(Sales) OVER(PARTITION BY ProductID) HighestSales,
MIN(Sales) OVER(PARTITION BY ProductID) LowestSales
FROM Sales.Orders