-- In order to export the data, divide the orders into 2 groups.

SELECT 
NTILE(2) OVER (ORDER BY OrderID) buckets,
* 
FROM Sales.Orders