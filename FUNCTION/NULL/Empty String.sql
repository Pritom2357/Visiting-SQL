WITH Orders AS (
	SELECT 1 Id, 'A' Category UNION
	SELECT 2, NULL UNION
	SELECT 3, '' UNION
	SELECT 4, '  '
)

SELECT
*,
DATALENGTH(TRIM(Category)),
NULLIF(TRIM(Category), ''),
COALESCE(NULLIF(TRIM(Category), ''), 'unknown') as Policy3
FROM Orders