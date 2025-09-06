-- Retrieve a list of customers 'first names' after removing the first character
-- In SQL, the index starts from 1, not 0
SELECT 
	first_name,
	SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS sub_name
FROM customers