/* Task: Find the products that have a price higher than 
	the average price of all products */

SELECT
*
FROM
(
SELECT
ProductID,
Price,
AVG(Price) OVER() avg
FROM Sales.Products
) t WHERE Price > avg