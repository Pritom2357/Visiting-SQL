-- Rank the orders based on their sales from highest to lowest

SELECT
OrderID,
ProductID,
Sales,
ROW_NUMBER() OVER(ORDER BY Sales DESC) ranking_row_number,
RANK() OVER(ORDER BY Sales DESC) ranking_rank,
DENSE_RANK() OVER(ORDER BY Sales DESC) ranking_dense_rank
FROM Sales.Orders