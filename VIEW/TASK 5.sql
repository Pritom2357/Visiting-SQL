-- Provide a view for EU Sales Team
-- that combines details from all EU tables
-- And excludes Data related to the USA

CREATE VIEW Sales.V_Order_Details_EU AS
(
	SELECT
	o.OrderID,
	o.OrderDate,
	p.ProductID,
	p.Category,
	COALESCE(c.FirstName, '') + ' ' + COALESCE(c.LastName, '') customerName,
	c.Country CustomerCountry,
	COALESCE(e.FirstName, '') + ' ' + COALESCE(e.LastName, '') SalesName,
	o.Sales,
	o.Quantity
	FROM Sales.Orders o
	LEFT JOIN Sales.Products p
	ON p.ProductID = o.ProductID
	LEFT JOIN Sales.Customers c
	ON c.CustomerID = o.CustomerID
	LEFT JOIN Sales.Employees e
	ON e.EmployeeID = o.SalesPersonID
	WHERE c.Country != 'USA'
)