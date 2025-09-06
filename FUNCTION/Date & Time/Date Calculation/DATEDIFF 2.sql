-- Find the average shipping duration in days for each month

SELECT
DATETRUNC(month, OrderDate), 
AVG(DATEDIFF(day, OrderDate, ShipDate)) as average_order_time
FROM Sales.Orders
GROUP BY DATETRUNC(month, OrderDate)