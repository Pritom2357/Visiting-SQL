-- Check whether the table 'Orders' contains any duplicate rows.
SELECT 
OrderID,
COUNT(*) OVER(PARTITION BY OrderID) CheckPK
FROM Sales.Orders

SELECT * FROM
(SELECT 
OrderID,
COUNT(*) OVER(PARTITION BY OrderID) CheckPK
FROM Sales.OrdersArchive) t 
WHERE CheckPK > 1