SELECT * FROM Sales.Products

CREATE NONCLUSTERED INDEX idx_Products_Country_USA
ON Sales.Customers (Country)
WHERE Country='USA'