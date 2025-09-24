/* Find the total sales accross all orders 
additionally provide details such order id & order date */


SELECT 
OrderID,
OrderDate,
SUM(Sales) OVER()
FROM Sales.Orders

/* Find the total sales for each products
additionally provide details such order id & order date */

SELECT 
OrderID,
OrderDate,
SUM(Sales) OVER(PARTITION BY ProductID) sales
FROM Sales.Orders

/*
Find the total sales accross all orders
Find the total sales for each products
additionally provide details such order id & order date 
*/

SELECT 
OrderID,
OrderDate,
SUM(Sales) OVER() total_sales,
SUM(Sales) OVER(PARTITION BY ProductID) sales
FROM Sales.Orders

/*
Find the total sales accross all orders
Find the total sales for each products
Find the total sales for each combination of product and order status
additionally provide details such order id & order date 
*/

SELECT 
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER() total_sales,
SUM(Sales) OVER(PARTITION BY ProductID) sales,
SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) sales_by_status
FROM Sales.Orders