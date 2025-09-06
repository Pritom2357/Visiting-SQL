/* 
	Change the score of the customer 10 to 0 
	and update the country to UK 
*/

UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id = 9

SELECT * FROM customers
WHERE id = 9