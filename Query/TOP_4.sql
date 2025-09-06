-- Get the two most recent orders

SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC
