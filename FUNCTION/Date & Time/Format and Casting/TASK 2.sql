-- aggregation

SELECT 
FORMAT(OrderDate, 'MMM yy') OrderDate,
COUNT(*) AS Total
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy')