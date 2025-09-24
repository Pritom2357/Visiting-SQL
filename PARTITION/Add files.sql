-- step 3: Add .ndf files to each filegroup

ALTER DATABASE SalesDB ADD FILE
(
	NAME = P_2023, -- Logical Name
	FILENAME = 'C:\Users\Pritom\OneDrive\文档\SQL Server Management Studio 21\SQL codes\PARTITION\P_2023.ndf'
) TO FILEGROUP FG_2023;

ALTER DATABASE SalesDB ADD FILE
(
	NAME = P_2023, -- Logical Name
	FILENAME = 'C:\Users\Pritom\OneDrive\文档\SQL Server Management Studio 21\SQL codes\PARTITION\P_2024.ndf'
) TO FILEGROUP FG_2024;

ALTER DATABASE SalesDB ADD FILE
(
	NAME = P_2023, -- Logical Name
	FILENAME = 'C:\Users\Pritom\OneDrive\文档\SQL Server Management Studio 21\SQL codes\PARTITION\P_2025.ndf'
) TO FILEGROUP FG_2025;

ALTER DATABASE SalesDB ADD FILE
(
	NAME = P_2023, -- Logical Name
	FILENAME = 'C:\Users\Pritom\OneDrive\文档\SQL Server Management Studio 21\SQL codes\PARTITION\P_2026.ndf'
) TO FILEGROUP FG_2026;