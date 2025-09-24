-- Show the employees with the highest salaries

SELECT *
FROM
(
SELECT
* ,
MAX(Salary) OVER() Hi
FROM Sales.Employees
) t WHERE Salary = hi