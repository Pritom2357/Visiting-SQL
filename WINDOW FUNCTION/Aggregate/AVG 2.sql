-- Find the average scores of customers
-- Additionally, provide details sucn as customer ID and last name

SELECT
CustomerID,
LastName,
COALESCE(Score, 0) score,
AVG(COALESCE(Score, 0)) OVER() avg
FROM Sales.Customers
