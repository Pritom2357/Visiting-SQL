/* Get all customers along with their orders,
but only for customers who have placed an order */

SELECT 
 c.id,
 c.first_name,
 c.country,
 c.score,
 o.order_id,
 o.order_date,
 o.sales
FROM customers AS c INNER JOIN orders AS o
ON c.id = o.customer_id

-- ALIAS are really important
