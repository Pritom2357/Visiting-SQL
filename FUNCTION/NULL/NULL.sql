-- Find the average scores for the customers

SELECT 
CustomerID,
Score,
AVG(Score) OVER() AvgScores,
AVG(COALESCE(Score, 0)) OVER() zeored
FROM Sales.Customers