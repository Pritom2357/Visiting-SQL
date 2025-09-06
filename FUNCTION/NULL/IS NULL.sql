-- Identify the customers who have no scores

SELECT 
*
FROM Sales.Customers
Where Score IS NULL

-- Identify the customers who have scores

SELECT 
*
FROM Sales.Customers
Where Score IS NOT NULL