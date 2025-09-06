/* Find customers without order and orders without
customers */

SELECT * FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE
	c.id IS NULL OR
	o.customer_id IS NULL

-- After giving aliases, you cannot use the original names.
