SELECT
OrderID,
CreationTime,
DAY(CreationTime) as day,
MONTH(CreationTime) as month,
YEAR(CreationTime) as year,
CONCAT(DAY(CreationTime), '/', MONTH(CreationTime), '/', YEAR(CreationTime)) as new_date
FROM Sales.Orders