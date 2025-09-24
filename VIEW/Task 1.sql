-- View
IF OBJECT_ID('Sales.v_monthly_summary', 'V') IS NOT NULL
	DROP VIEW Sales.v_monthly_summary;
GO
CREATE VIEW Sales.v_monthly_summary as
(
	SELECT
		DATETRUNC(month, OrderDate) OrderMonth,
		SUM(Sales) totalSales,
		COUNT(OrderID) totalOrders,
		SUM(Quantity) totalQuantity
	FROM Sales.Orders
	GROUP BY DATETRUNC(month, OrderDate)
)

-- Find the running total of sales for each month

/*WITH CTE_monthly_summary AS
(
SELECT
DATETRUNC(month, OrderDate) OrderMonth,
SUM(Sales) totalSales
FROM Sales.Orders
GROUP BY DATETRUNC(month, OrderDate)
)
SELECT 
OrderMonth,
SUM(totalSales) OVER(ORDER BY OrderMonth) AS running
FROM CTE_monthly_summary
*/


