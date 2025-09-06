-- Retrieve all customers not from Germany

SELECT * 
FROM customers 
WHERE country!='Germany' 

-- != and <> are equivalent