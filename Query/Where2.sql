-- Retrieve customers from Germany

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany' -- Not '==', only '=' means equals to 
