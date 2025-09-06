-- Calculate the length of the each customers first name

SELECT 
first_name,
LEN(first_name) AS length
FROM customers