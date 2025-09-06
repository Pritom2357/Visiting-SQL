-- Find the total score for each country and filter score less than 800

SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY 
	country 
HAVING SUM(score) > 800
ORDER BY country ASC

/* 
	Before aggregation -> WHERE
	After aggregation -> HAVING
*/