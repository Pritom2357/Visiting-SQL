-- Filtering data
-- Tip 2: Avoid unnecessary DISTINCT & ORDER BY
-- Tip 3: For Exploration purpose, limit rows

SELECT TOP 10
	OrderID,
	Sales
FROM Sales.Orders

-- Tip 4: Create Non-clustered index on frequently used columns in WHERE clause

SELECT * FROM Sales.Orders WHERE OrderStatus = 'Delivered'
CREATE NONCLUSTERED INDEX Idx_Orders_OrderStatus ON Sales.Orders (OrderStatus)

-- Tip 5: Avoid applying functions to columns in WHERE clauses

SELECT * FROM Sales.Orders
WHERE LOWER(OrderStatus) = 'delivered' -- The index is gone for lower case or other functions

SELECT * FROM Sales.Orders WHERE OrderDate BETWEEN '2025-01-01' AND '2025-12-31'  -- Good practice that using just YEAR function

-- Tip 6: Avoid leading wildcards as they prevent index usage
SELECT * FROM Sales.Customers
WHERE LastName LIKE '%Gold%' -- Bad practice

-- Tip 7: Use IN instead of Multiple OR
SELECT * FROM Sales.Orders 
WHERE CustomerID IN (1, 2, 3)