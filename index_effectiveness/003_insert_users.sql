USE [test_db]
GO

DECLARE @index int = 0;
DECLARE @count int = 3000000;
WHILE @index < @count
BEGIN
    SET @index = @index + 1

	INSERT INTO [Users] VALUES(
		NEWID(),
		(SELECT
			CASE (SELECT ABS(CHECKSUM(NEWID())) % 4)
				WHEN 0 THEN 1
				WHEN 1 THEN 2
				WHEN 2 THEN 3
				WHEN 3 THEN null
			END),
		'User' + COALESCE(REPLICATE('0' ,LEN(CONVERT(VARCHAR(100),@count)) - LEN(CONVERT(VARCHAR(100),@index))), '') + CONVERT(VARCHAR(100), @index),
		'user' + CAST(@index AS VARCHAR) + '@email.com',
		1,
		DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 364 ), '2020-01-01'),
		0,
		DATEADD(DAY, RAND(CHECKSUM(NEWID()))*(1+DATEDIFF(DAY, '2010-01-01', '2024-12-31')), '2010-01-01'),
		CAST(RAND()*(3000-1000)+1000 AS INT)
	)
END
