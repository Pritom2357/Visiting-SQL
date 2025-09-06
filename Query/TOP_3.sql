-- Retrieve the Top 3 customers with higest scores

SELECT TOP 2 *
FROM customers
ORDER BY score ASC