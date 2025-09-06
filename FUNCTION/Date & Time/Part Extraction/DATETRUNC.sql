USE SalesDB
SELECT
OrderID,
CreationTime,
DATETRUNC(year, CreationTime) Year_dp,
DATETRUNC(month, CreationTime) month_dp,
DATETRUNC(day, CreationTime) day_dp,
DATETRUNC(week, CreationTime) week_dp,
DATEPART(hour, CreationTime) hour_dp
FROM Sales.Orders