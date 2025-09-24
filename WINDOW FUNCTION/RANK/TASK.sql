-- Assign unique IDs to the rows of the 'Orders Archive' table

SELECT
ROW_NUMBER() OVER(ORDER BY OrderID, OrderDate) uniqueID,
*
FROM Sales.OrdersArchive

-- good for paginating