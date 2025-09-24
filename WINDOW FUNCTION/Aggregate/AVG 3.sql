-- Find all orders where sales are higher than the average sales accross all orders.
SELECT *
FROM
(
	SELECT
		OrderID,
		ProductID,
		Sales,
		AVG(Sales) OVER() avg
	FROM Sales.Orders
) t
WHERE avg < Sales