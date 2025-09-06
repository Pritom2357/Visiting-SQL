-- Display the full name of customers in a single field by merging therifirst and last name
-- and add 10 bonus points to each customers's score.
USE SalesDB

SELECT
CustomerID,
COALESCE(FirstName, '') as first_name,
COALESCE(LastName, '') last_name,
COALESCE(FirstName, '') + ' ' + COALESCE(LastName, '') as FullName,
10 + COALESCE(Score, 0) bonus
FROM Sales.Customers