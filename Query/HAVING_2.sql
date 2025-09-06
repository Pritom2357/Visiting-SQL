/* 
	Find the average score for each country
	considering only customers with a score not equal to 
	0 and return only those countries with an average 
	score greater than 430
*/

SELECT 
	country,
	AVG(score) as _avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430