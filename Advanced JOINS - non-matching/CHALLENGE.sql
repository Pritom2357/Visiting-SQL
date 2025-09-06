/* Get all customers along with their orders
but only for customers who have placed an order */

-- without INNER JOIN

SELECT * FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE 
	c.id IS NOT NULL AND
	o.customer_id IS NOT NULL

-- alternative approach
SELECT * FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE 
	o.customer_id IS NOT NULL