-- Change the score of the customer 6 to 0

UPDATE customers
SET score = 0
WHERE id = 6

SELECT * FROM customers