-- Generate a sequence of numbers from 1 to 20

WITH Series AS (
-- Anchor query
SELECT
1 AS MyNumber

UNION ALL

-- Recursive query
SELECT MyNumber + 1
FROM Series
WHERE MyNumber < 200
)

-- Main Query
SELECT *
FROM Series
OPTION (MAXRECURSION 1000)