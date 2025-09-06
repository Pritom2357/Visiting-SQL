-- Retrieve all customers from either Germany or USA

-- using '=' approach
SELECT * FROM customers
WHERE country = 'Germany' OR country = 'USA'

-- using IN approach
SELECT * FROM customers
WHERE country IN ('Germany', 'USA')