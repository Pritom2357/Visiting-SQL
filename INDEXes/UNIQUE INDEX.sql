SELECT * FROM Sales.Products

CREATE UNIQUE NONCLUSTERED INDEX idx_Products_Product
ON Sales.Products (Product)