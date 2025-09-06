/* Get all customers and all orders, even if 
there's no match. */

SELECT * FROM customers
FULL JOIN orders
ON customers.id = orders.customer_id