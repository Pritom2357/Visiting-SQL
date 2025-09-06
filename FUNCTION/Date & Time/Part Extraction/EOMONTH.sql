SELECT
OrderID,
CreationTime,
EOMONTH(CreationTime) end_of_month
FROM Sales.Orders