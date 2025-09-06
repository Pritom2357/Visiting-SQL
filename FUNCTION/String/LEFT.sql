-- Retrieve the first two characters from the first_name


SELECT 
	first_name,
	LEFT(TRIM(first_name), 2) AS left_2_char
FROM customers