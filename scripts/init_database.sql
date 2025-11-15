/*
====================================================================
create database and schemas
==================================================================
SCript purpose:
    this script creates a new database named 'datawarehouse' after checking if it already exists.
    if the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze' , 'silver' , 'gold'.


WARNING:
   Running this script will drop the entire 'datawarehouse' database if it exists.
   All data in the database will be permanently deleted. Proceed with caution
   and ensure you have proper backups before running this script.
*/
USE master;
GO
_ _ drop and recieve the 'datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse'
BEGIN
  ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
END;
GO

_ _ create the 'datawarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
_ _ create schemas;
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

