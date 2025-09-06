/* Get all the orders without matching customers */

SELECT * FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
WHERE id IS NULL