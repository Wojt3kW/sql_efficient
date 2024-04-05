USE [test_db]
GO

CREATE INDEX Users_LA_S
ON [Users]([LastActivityDate], [Score])
INCLUDE ([DepartmentId])
WITH (SORT_IN_TEMPDB = ON, DATA_COMPRESSION = PAGE);