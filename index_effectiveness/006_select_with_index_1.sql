USE [test_db]
GO

SELECT
p.[DepartmentId],
p.[Score]
FROM [Users] AS p WITH(INDEX = Users_LA_S)
WHERE p.[LastActivityDate] >= '2020-01-01'
	AND p.[LastActivityDate] < '2021-01-01'
	AND p.[Score] > 2500
    AND 1 = (SELECT 1)
ORDER BY p.[Score] DESC