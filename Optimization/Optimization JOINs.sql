-- Tip 8: Understand the speed of JOINs and Use INNER JOIN when possible

-- Best performance:  INNER JOIN
SELECT c.FirstName, o.OrderID FROM Sales.Customers c INNER JOIN Sales.Orders o ON c.CustomerID = o.CustomerID

-- Slightly slower: RIGHT and LEFT JOINs
-- Worst performance: OUTER JOIN

--  Tip 9: Use Explicit Join (ANSI Join) Instead of Implicit Join (non-ANSI Join)
-- Bad
SELECT c.FirstName, o.OrderID FROM Sales.Customers c, Sales.Orders o c.CustomerID = o.CustomerID
-- Good
SELECT c.FirstName, o.OrderID FROM Sales.Customers c INNER JOIN Sales.Orders o ON c.CustomerID = o.CustomerID

-- Tip 10: Make sure to Index the columns used in the ON clause
SELECT c.FirstName, o.OrderID FROM Sales.Customers c INNER JOIN Sales.Orders o ON c.CustomerID = o.CustomerID
CREATE NONCLUSTERED INDEX IX_Order_CustomerID ON Sales.Orders (customerID)

-- Tip 11: Filter Before Joining (Big Tables) - Use CTE for preparing the table beforehand
-- Tip 12: Aggregate Before Joining (Big Tables) - use subquery or CTE
 
 -- Tip 13: Use Union Instead of OR in JOINs
SELECT o.OrderID, c.FirstName
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
UNION ALL
SELECT o.OrderID, c.FirstName
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.SalesPersonID


-- Tip 14: Check for  Nested Loops and Use SQL Hints
SELECT o.OrderID, c.FirstName
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
OPTION (HASH JOIN)

-- Tip 15: Use UNION ALL Instead of UNION if duplicates are acceptable
-- Tip 16: Use UNION ALL + DISTINCT Instead of UNION if duplicates are not acceptable (Only large tables)
-- Tip 17: Use columnstore Index for Aggerations on Large Table
-- Tip 18: Pre-Aggregate data and store in new Table for reporting

-- JOIN (Best Practice), EXIATS(Best Practice for Large Tables), IN (Bad Practice)

-- Tip 20: Avoid redundant logic in query

