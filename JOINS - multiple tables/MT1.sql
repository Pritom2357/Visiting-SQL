/* 
Using salesDB, Retrieve a list of all orders,
along with the related customer, product, and 
employee details.

For each order, display:
- Order ID,
- Customer's name,
- Product name,
- Sales amount,
- Product price,
- Salesperson's name
*/

SELECT 
	o.OrderID,
	o.Sales,
	c.FirstName AS customer_first_name,
	c.LastName AS customer_last_name,
	p.Product,
	p.Price,
	e.FirstName,
	e.LastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.OrdersArchive AS oa
ON o.OrderID = oa.OrderID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID

SELECT * FROM Sales.Orders
SELECT * FROM Sales.Customers
SELECT * FROM Sales.Employees
SELECT * FROM Sales.OrdersArchive
SELECT * FROM Sales.Products

