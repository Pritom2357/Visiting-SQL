-- Find the lowest 2 customers based on their total sales

SELECT * FROM
(
SELECT
	CustomerID,
	SUM(Sales) sales,
	ROW_NUMBER() OVER(ORDER BY SUM(Sales)) ranks
FROM Sales.Orders
GROUP BY CustomerID
) t WHERE ranks <= 2