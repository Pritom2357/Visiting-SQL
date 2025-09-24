-- Find the total number of Orders

SELECT 
COUNT(*) TotalOrdres
FROM Sales.Orders

-- Find the total number of Orders
-- Provide details like orderId, and ordredate
SELECT 
OrderID,
OrderDate,
COUNT(*) OVER() TotalOrders
FROM Sales.Orders

-- Find the total number of Orders
-- Find the total number of Orders for each customer
-- Provide details like orderId, and ordreDate

SELECT 
OrderID,
OrderDate,
CustomerID,
COUNT(*) OVER() TotalOrders,
COUNT(*) OVER(PARTITION BY CustomerID) OrdersByCustomers
FROM Sales.Orders