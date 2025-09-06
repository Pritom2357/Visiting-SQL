-- Convert customers first name to uppercase

SELECT 
first_name,
country,
CONCAT (first_name, ' ', country) AS name_country,
UPPER(first_name) AS upper_name
FROM customers