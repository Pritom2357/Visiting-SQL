/* how many orders were placed each year */

SELECT 
MONTH(OrderDate) as times,
COUNT(*) as orders
FROM Sales.Orders
GROUP BY MONTH(OrderDate)