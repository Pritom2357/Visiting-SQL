 -- Generate a report showing the total sales for each category
 -- High: If the sales higher than 50
 -- Medium: If the sales between 20 and 50
 -- Low: If the sales equal or lower than 20
 -- Sort the categories from highest to lowest

 SELECT
 Category,
 SUM(Sales) AS TotalSales
 FROM(
	 SELECT
	 OrderID,
	 Sales,
	 CASE
		WHEN Sales > 50 THEN 'High'
		WHEN Sales > 20 THEN 'Medium'
		ELSE 'Low'
	END Category
	FROM Sales.Orders
) t
GROUP BY Category
ORDER BY TotalSales DESC