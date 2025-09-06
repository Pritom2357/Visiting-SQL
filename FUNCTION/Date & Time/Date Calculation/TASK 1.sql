-- Time Gap analysis
-- Find the number of days between each order and the previous order

SELECT 
OrderID,
OrderDate Currrent_order_date,
LAG(OrderDate) OVER (ORDER BY OrderDate) Previous_order_date,
DATEDIFF(day, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) number_of_days
FROM Sales.Orders