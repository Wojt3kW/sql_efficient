USE [test_db]
GO

CREATE INDEX Users_S_LA
ON [Users]([Score], [LastActivityDate])
INCLUDE ([DepartmentId])
WITH (SORT_IN_TEMPDB = ON, DATA_COMPRESSION = PAGE);