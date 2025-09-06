-- Retrieve customers with a score not equal to 0

SELECT 
	first_name,
	country,
	score	
FROM customers
WHERE score != 0