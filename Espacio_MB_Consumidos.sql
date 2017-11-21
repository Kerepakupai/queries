/*
SQL SERVER
 */
SELECT d.name,
ROUND(SUM(mf.size) * 8 / 1024, 0) Size_MBs
FROM sys.master_files mf
INNER JOIN sys.databases d ON d.database_id = mf.database_id
WHERE d.database_id > 4 -- Skip system databases
GROUP BY d.name
ORDER BY Size_MBs DESC;

/*
MySQL
 */
SELECT
 table_schema "blueisocial",
 sum( data_length + index_length ) / 1024 / 1024 "Tamaño en MB"
FROM
  information_schema.TABLES GROUP BY table_schema;