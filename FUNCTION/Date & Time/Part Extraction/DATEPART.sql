SELECT
OrderID,
CreationTime,
DATEPART(year, CreationTime) Year_dp,
DATEPART(month, CreationTime) month_dp,
DATEPART(day, CreationTime) day_dp,
DATEPART(week, CreationTime) week_dp,
DATEPART(hour, CreationTime) hour_dp
FROM Sales.Orders