-- Replace File Extension from txt to csv

SELECT 
'report.txt' AS old,
REPLACE('report.txt', '.txt', '.csv') AS new