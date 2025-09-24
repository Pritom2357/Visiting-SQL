-- Step 4: Create Partition Scheme

CREATE PARTITION SCHEME SchemePartitionByYear
AS PARTITION PartitionByYear
TO (FG_2023, FG_2024, FG_2025, FG_2026)

-- Query lists all Partition Scheme

SELECT
	ps.name as PartitionSchemeName,
	pf.name as PartitionFunctionName,
	ds.destination_id as PartitionNumber,
	fg.name as FilegroupName
FROM sys.partition_schemes as ps
JOIN sys.partition_functions as pf ON ps.function_id = pf.function_id
JOIN sys.destination_data_spaces ds ON ps.data_space_id = ds.partition_scheme_id
JOIN sys.filegroups fg ON ds.data_space_id = fg.data_space_id