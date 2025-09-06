/* Show all orders that were placed during the
month of February */

SELECT 
MONTH(OrderDate) as times,
COUNT(*) as orders
FROM Sales.Orders
GROUP BY MONTH(OrderDate)
HAVING MONTH(OrderDate) = 2