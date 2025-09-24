-- Task: Show the employee hierarchy by displaying each employees' level within the organization

WITH CTE_hierarchy AS
(
-- Anchor query
SELECT
	EmployeeID,
	FirstName,
	ManagerID,
	1 AS Level
FROM Sales.Employees
WHERE ManagerID IS NULL

UNION ALL

-- Recursive query
SELECT
	e.EmployeeID,
	e.FirstName,
	e.ManagerID,
	ch.Level+1 AS Level
FROM Sales.Employees as e
INNER JOIN CTE_hierarchy ch
ON e.ManagerID = ch.EmployeeID
)

SELECT * FROM CTE_hierarchy;
