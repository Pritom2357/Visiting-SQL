SELECT
ISDATE('123') DateCheck1,
ISDATE('2025') DateCheck2,
ISDATE('2025-08-12') DateCheck3,
ISDATE('20-08-2025') DateCheck4 -- sql does not understand the BD date format lol

SELECT
	-- CAST(OrderDate AS DATE) OrderDate,
	OrderDate,
	ISDATE(OrderDate),
	CASE WHEN ISDATE(OrderDate) = 1 THEN CAST(OrderDate AS DATE)
		ELSE '9999-01-01' -- some default value for dummy data
	END NewOrderDate
FROM 
(
	SELECT '2025-08-20' AS OrderDate UNION
	SELECT '2025-08-21' UNION
	SELECT '2025-08-23' UNION
	SELECT '2025-08'
) t