/* Find the sales price for each order by dividing sales by quantity */

SELECT
OrderID,
Sales,
Quantity,
Sales/NULLIF(Quantity, 0) AS Price
FROM Sales.Orders