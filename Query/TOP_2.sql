-- Retrieve the Top 3 customers with higest scores

SELECT TOP 3 *
FROM customers
ORDER BY score DESC