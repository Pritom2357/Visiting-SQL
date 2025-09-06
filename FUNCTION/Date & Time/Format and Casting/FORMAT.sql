USE SalesDB
SELECT
OrderID,
CreationTime,
FORMAT(CreationTime, 'dd-MM-yyyy') dd
FROM Sales.Orders