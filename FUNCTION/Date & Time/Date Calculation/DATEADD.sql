SELECT
OrderID,
OrderDate,
DATEADD(year, 2, OrderDate) AS two_years_diff,
DATEADD(month, -2, OrderDate) AS two_months_diff,
DATEADD(day, 2, OrderDate) AS two_days_diff
FROM Sales.Orders