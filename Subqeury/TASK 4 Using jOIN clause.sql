-- Show all customer details and find the total orders of each customer
-- Main query

SELECT
c.*,
o.orders
FROM Sales.Customers as c
LEFT JOIN (
SELECT
CustomerID,
COUNT(*) orders
FROM Sales.Orders
GROUP BY CustomerID
) o
ON c.CustomerID = o.CustomerID