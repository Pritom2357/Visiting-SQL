-- Segment all orders into 3 categories - low, mid, high

SELECT
*, 
CASE WHEN cat=1 THEN 'High'
	 WHEN cat=2 THEN 'Medium'
	 WHEN cat=3 THEN 'Low'
END SalesSegment
FROM
(
SELECT
	OrderID, 
	Sales,
	NTILE(3) OVER(ORDER BY Sales DESC) cat
FROM Sales.Orders
) t