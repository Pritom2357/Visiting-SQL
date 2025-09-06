-- Find the total score for each country

SELECT 
	country,
	--first_name,
	/* first_name, -> cannot be aggregated
	as it cannot be wrapped under aggregate clause*/
	SUM(score) AS total_score
FROM customers
GROUP BY 
	country 
	--first_name
ORDER BY country ASC