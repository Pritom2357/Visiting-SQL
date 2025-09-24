-- Show the product IDs, product names, prices, and the total number of orders

SELECT
ProductID,
Product,
Price,
(SELECT COUNT(*) TotalOrders FROM Sales.Orders) totalOrders
FROM Sales.Products;

