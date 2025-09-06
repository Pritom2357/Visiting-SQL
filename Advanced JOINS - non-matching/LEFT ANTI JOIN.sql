/* Get all customers who haven't place any order */

SELECT * FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL

-- Anything compared to NULL is also a NULL or you can say false, so, doing this: WHERE orders.customer_id = NULL, does not work