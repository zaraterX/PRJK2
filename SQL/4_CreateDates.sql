-------------
--DM LAYER Date table
-------------
USE C_DM
GO

DROP TABLE IF EXISTS C_DM.dbo.DimDate

CREATE TABLE C_DM.dbo.DimDate
(
DimDateID int,
[Date] datetime,
[Day] int,
[Month] int,
[Quarter] int,
[Year] int,
LoadTimeStamp TIMESTAMP
)

DROP PROCEDURE IF EXISTS LoadDimDate

USE C_DM
GO

CREATE OR ALTER PROCEDURE LoadDimDate
@StartDate DATE = '2000-01-01',
@EndDate DATE = '2025-12-31'

AS
BEGIN
	SET XACT_ABORT ON;
	TRUNCATE TABLE dbo.DimDate;

BEGIN TRAN;

-- amíg nem pörgetjük végig a kezdődátumtól a végdátumig
WHILE @StartDate < @EndDate
BEGIN
	INSERT INTO dbo.DimDate (
		[DimDateID],
		[Date],
		[Day],
		[Month],
		[Quarter],
		[Year]
	)
	SELECT [DimDateID] = YEAR(@StartDate) * 10000 + MONTH(@StartDate) * 100 + DAY(@StartDate),
		[Date] = @StartDate,
		[Day] = DAY(@StartDate),
		[Month] = MONTH(@StartDate),
		[Quarter] = DATEPART(q, @StartDate),
		[Year] = YEAR(@StartDate)
      
	-- növeljük a kezdődátum értékét 1 nappal (következő nap)
	SET @StartDate = DATEADD(DD, 1, @StartDate)
END
	SELECT * FROM dbo.DimDate
	COMMIT;
END;