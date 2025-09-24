-- Rank Customers based on their total amount of sales

SELECT 
*,
RANK() OVER(ORDER BY total) rank
FROM
(
SELECT
CustomerID,
SUM(Sales) as total
FROM Sales.Orders
GROUP BY CustomerID
) t  