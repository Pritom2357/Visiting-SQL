-- In order to analyze customer loyalty,
-- rank customers based on the average days between their orders

SELECT
CustomerID,
AVG(diff) avgdays,
RANK() OVER(ORDER BY AVG(diff))
FROM
(
SELECT
OrderID,
CustomerID,
OrderDate currentO,
LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) next,
DATEDIFF(day, OrderDate, LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate)) as diff
FROM Sales.Orders
) t
GROUP BY CustomerID