-- Find the percentage contribution of each products's sales to the total sales

SELECT
OrderID,
ProductID,
Sales,
SUM(Sales) OVER() Total,
ROUND (CAST (Sales AS Float)/ SUM(Sales) OVER() * 100, 2) as perentage
FROM Sales.Orders