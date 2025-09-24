-- Step 5: Create the Partitioned Table

CREATE TABLE Sales.Orders_Partitioned
(
	OrderID INT,
	OrderDate DATE,
	Sales INT
) ON SchemePartitionByYear