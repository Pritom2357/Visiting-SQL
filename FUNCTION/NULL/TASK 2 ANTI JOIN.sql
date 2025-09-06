/* List all details for customers who have not placed any orders */

SELECT c.*,
o.OrderID
FROM Sales.Customers as c
LEFT JOIN Sales.Orders as o
On c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL