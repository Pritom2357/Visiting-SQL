-- Step 1: Write a query
-- For US Customers Find the total Number of Customers and the Average Score



ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA'
AS
BEGIN
-- variables declaration
DECLARE @TotalCustomers INT, @AvgScore FLOAT;
-- Prepare and Cleanup data

IF EXISTS(SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country = @Country)
BEGIN
	PRINT('Updating Score to 0')
	UPDATE Sales.Customers
	SET Score = 0
	WHERE Score IS NULL AND Country = @Country;
END

ELSE
BEGIN
	PRINT('No NULL Scores found')
END;

-- Generating Reports
SELECT 
	@TotalCustomers = COUNT(*),
	@AvgScore = AVG(Score)
FROM Sales.Customers
WHERE Country = @Country; -- Parameters

-- Variables
PRINT 'Total Customers from ' + @Country + ': ' + CAST(@TotalCustomers AS NVARCHAR);
PRINT 'Average score from' + @Country + ': ' + CAST(@AvgScore AS NVARCHAR);

SELECT
	COUNT(OrderID) TotalOrders,
	SUM(Sales) TotalSales
FROM Sales.Orders o
JOIN Sales.Customers c
ON c.CustomerID = o.CustomerID
WHERE c.Country = @Country;
END

EXEC GetCustomerSummary @Country='Germany'
EXEC GetCustomerSummary -- Default USA

-- For German Customers Find the Total Number of Customers and the Average Score
-- solutions: User country parameter

-- Find the total Number of Orders and Total Sales
SELECT
	COUNT(OrderID) TotalOrders,
	SUM(Sales) TotalSales
FROM Sales.Orders o
JOIN Sales.Customers c
ON c.CustomerID = o.CustomerID
WHERE c.Country = 'USA'