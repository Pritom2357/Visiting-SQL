CREATE TABLE Sales.EmployeeLogs(
	LogID INT IDENTITY(1, 1) PRIMARY KEY,
	EmployeeID INT,
	LogMessage VARCHAR(255),
	LogDate DATE
)

CREATE TRIGGER trg_afterInsertEmployees ON Sales.Employees
AFTER INSERT 
AS
BEGIN
	INSERT INTO Sales.EmployeeLogs (EmployeeID, LogMessage, LogDate)
	SELECT
		EmployeeID,
		'New Employee Added = ' + CAST(EmployeeID AS VARCHAR),
		GETDATE()
	FROM INSERTED -- virtual table that holds a copy of the rows that are being inserted into the target table, only in triggers
END

SELECT * FROM Sales.EmployeeLogs

INSERT INTO Sales.Employees
VALUES (6, 'Maria', 'Doe', 'HR', '1988-01-12', 'F', 90000, 3)