-- Find the total number of customers
-- Additionally provide all customers details

SELECT
*,
COUNT(*) OVER() TotalCustomers
FROM Sales.Customers

-- Find the total number of customers
-- Find the total number of scores for the customers
-- Additionally provide all customers details

SELECT
*,
COUNT(*) OVER() TotalCustomers,
COUNT(Score) OVER() as Totalscores
FROM Sales.Customers