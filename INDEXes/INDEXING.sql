-- CREATE CLUSTERED INDEX idx_DBCustomer_CustomerID
-- ON Sales.DBCustomer (CustomerID);

--CREATE NONCLUSTERED INDEX idx_DBCustomer_LastName
--ON Sales.DBCustomer (LastName)

CREATE INDEX idx_DBCustomer_CountryScore
ON Sales.DBCustomer (Country, Score)