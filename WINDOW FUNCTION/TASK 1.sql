-- Find the total Sales accross all orders
SELECT 
	SUM(Sales) TotalSales
FROM Sales.Orders

-- Find the total sales for each product
SELECT 
	ProductID,
	SUM(Sales) TotalSales
FROM Sales.Orders
GROUP BY ProductID

-- Find the total sales for each product
-- additionally provide details such order id and order date
SELECT 
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) TotalSales
FROM Sales.Orders
GROUP BY ProductID, OrderID, OrderDate  /* This is the limit of GROUP BY */

-- Using Window function
SELECT 
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSales
FROM Sales.Orders
