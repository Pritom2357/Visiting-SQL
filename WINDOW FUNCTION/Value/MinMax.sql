-- Time series analyses

-- Analyze the month-over-month performance by finding the percentage change
-- is sales between the current and previous months

SELECT 
*,
CurrentMonthSales - prevmonthsales diff,
ROUND(CAST ((CurrentMonthSales - prevmonthsales) as FLOAT)/prevmonthsales * 100, 1) as percentage
FROM
(
SELECT
MONTH(OrderDate) OrderMonth,
SUM(Sales) CurrentMonthSales,
LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) prevmonthsales
FROM Sales.Orders
GROUP BY MONTH(OrderDate)
) t 