-- Find the deviation of each sales from the minimum and maximum sales amounts

SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	MAX(Sales) OVER() Hi,
	MIN(Sales) OVER() Lo,
	(Sales - MIN(Sales) OVER()) devfrommin,
	(MAX(Sales) OVER() - Sales) devfrommin
FROM Sales.Orders