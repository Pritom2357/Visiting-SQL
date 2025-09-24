-- Find the products that fall within the highest 40% of the prices

SELECT * FROM
(
SELECT
Product,
Price, 
CUME_DIST() OVER(ORDER BY Price DESC) distRank
FROM Sales.Products
)t WHERE distRank <= 0.4