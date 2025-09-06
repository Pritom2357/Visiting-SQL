/* Retrieve all data from customers who are from
usa or score greater than 500
*/

SELECT * FROM customers
WHERE country = 'USA' OR score > 500