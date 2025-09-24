-- Find the top highest sales for each product
USE SalesDB
SELECT * FROM
(
SELECT
	OrderID,
	ProductID,
	Sales,
	ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC) rankByProduct
FROM Sales.Orders
) t WHERE rankByProduct = 1