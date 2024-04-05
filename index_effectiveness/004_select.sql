USE [test_db]
GO

SELECT
p.[DepartmentId],
p.[Score]
FROM [Users] AS p
WHERE p.[LastActivityDate] >= '2020-01-01'
	AND p.[LastActivityDate] < '2021-01-01'
	AND p.[Score] > 2500
    AND 1 = (SELECT 1) --https://erikdarling.com/whats-the-point-of-1-select-1/
ORDER BY p.[Score] DESC