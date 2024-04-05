USE [master]
GO

-- create database if not exist
IF DB_ID (N'test_db') IS NULL
	CREATE DATABASE [test_db];
GO

USE [test_db]
GO
