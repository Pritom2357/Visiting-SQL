-- Monitoring Index Usage

SELECT
tbl.name as IndexName,
idx.name IndexName,
idx.type_desc as IndexType,
idx.is_primary_key,
idx.is_unique,
idx.is_disabled,
s.user_seeks,
s.user_scans,
s.user_lookups,
s.user_updates,
COALESCE(s.last_user_seek, s.last_user_scan) lastUpdate
FROM sys.indexes idx
JOIN sys.tables tbl
ON idx.object_id = tbl.object_id
LEFT JOIN sys.dm_db_index_usage_stats as s
ON s.object_id = idx.object_id AND s.index_id = idx.index_id

SELECT * FROM sys.dm_db_index_usage_stats