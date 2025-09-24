-- COUNT(*) OVER (PARTITION BY tb1.name, col.name) ColumnCount

-- Update statistics sys.dm_db_stats_properties(s.object_id, s.stats_id) as sp

SELECT * FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED')