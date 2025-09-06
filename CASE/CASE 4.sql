-- Find the average scores of customers and treat Nulls as 0
-- Additionally provide details such CustomerID and LastName

SELECT
CustomerID,
LastName,
Score,
AVG(CASE
		WHEN Score IS NULL THEN 0
		ELSE Score
	END) OVER() as average_clean
FROM Sales.Customers