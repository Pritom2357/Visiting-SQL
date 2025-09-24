-- Tip 21: Try to avoid VARCHAR & TEXT
CREATE TABLE CustomerInfo(
	CustomerID INT,
	FirstName VARCHAR(MAX),
	LastName VARCHAR(255),
	Score INT, -- avoid varchar
	BirthDate DATE -- Not varchar
)

--Tip 22: Avoid (MAX) unnecessarily large lengths in data types
CREATE TABLE CustomerInfo2(
	CustomerID INT,
	FirstName VARCHAR(50), -- Not max
	LastName VARCHAR(50),
	Score INT, -- avoid varchar
	BirthDate DATE -- Not varchar
)

-- Tip 23: Use the NOT NULL contraint where applicable as index is sure that it is not null
CREATE TABLE CustomerInfo3(
	CustomerID INT NOT NULL,
	FirstName VARCHAR(50) NOT NULL, -- Not max
	LastName VARCHAR(50) NOT NULL,
	Score INT, -- avoid varchar
	BirthDate DATE -- Not varchar
)

-- Tip 24: Ensure all your tables have a clustered primary key
-- Tip 25: Create a non-clustered index for foreign keys that are used frequently


