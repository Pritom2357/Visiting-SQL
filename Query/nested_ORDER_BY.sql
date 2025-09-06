/* Retrieve all customers and sort the results
by the country and by highest score first */

SELECT *
FROM customers
ORDER BY 
	country ASC,
	score DESC