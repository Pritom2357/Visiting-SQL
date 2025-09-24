-- Find the top highest sales for each product


SELECT * FROM
(
SELECT
OrderID,
ProductID,
Sales,
ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC) rankByProd
FROM Sales.Orders
) t WHERE rankByProd = 1