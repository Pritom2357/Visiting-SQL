-- Identity duplicate rows in the table 'Orders Archive' and
-- return a clean result without any duplicates

SELECT * FROM
(
SELECT
ROW_NUMBER() OVER (PARTITION BY OrderID ORDER  BY CreationTime DESC) rn,
*
FROM Sales.OrdersArchive
) t WHERE rn = 1