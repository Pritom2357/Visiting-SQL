SELECT
OrderID,
CreationTime,
DATENAME(year, CreationTime) Year_dn,
DATENAME(month, CreationTime) month_dn,
DATENAME(weekday, CreationTime) day_dn,
DATENAME(week, CreationTime) week_dn,
DATENAME(hour, CreationTime) hour_dn
FROM Sales.Orders