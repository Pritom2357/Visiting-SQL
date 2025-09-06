/* Generate all possible combinations of 
customers and orders */

SELECT * FROM customers
CROSS JOIN orders

-- Helps when generating test data