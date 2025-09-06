-- Show Creation Time using the following Format
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT
OrderID,
CreationTime,
'Day ' + FORMAT(CreationTime, 'ddd MMM') + ' Q' + DATENAME(QUARTER, CreationTime) + ' ' + DATENAME(YEAR, CreationTime) + FORMAT(CreationTime, 'hh:mm:ss tt') ,
FORMAT(CreationTime, 'ddd-MMM-yyyy') dd
FROM Sales.Orders
