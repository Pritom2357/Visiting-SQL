-- Orders data are stored in separate tables (Orders and OrdersArchive)
-- Combine all orders data into one report without duplicate


SELECT 
'orders' AS SourceTable,
OrderID,
ProductID,
CustomerID,
SalesPersonID,
OrderDate, 
ShipDate,
OrderStatus,
ShipAddress,
BillAddress,
Quantity,
Sales,
CreationTime
FROM Sales.Orders

UNION

SELECT 
'ordersArchieve' AS SourceTable,
OrderID,
ProductID,
CustomerID,
SalesPersonID,
OrderDate, 
ShipDate,
OrderStatus,
ShipAddress,
BillAddress,
Quantity,
Sales,
CreationTime 
FROM Sales.OrdersArchive

ORDER BY OrderID
