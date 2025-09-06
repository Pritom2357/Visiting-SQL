-- Retrieve the last two characters from the first_name


SELECT 
	first_name,
	RIGHT(TRIM(first_name), 2) AS right_2_char
FROM customers