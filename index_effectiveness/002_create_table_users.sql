USE [test_db]
GO

CREATE TABLE [Users](
	[Id] [uniqueidentifier] NOT NULL,
	[DepartmentId] [int] NULL,
	[UserName] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ExpireDate] [date] NOT NULL,
	[Lockout] [bit] NOT NULL,
	[LastActivityDate] [datetime2](2) NOT NULL,
	[Score] [int] NOT NULL
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
 ,CONSTRAINT [UQ_Email] UNIQUE ([Email])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
