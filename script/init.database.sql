/*
==================================================================================================================
Create Database and Schemas
==================================================================================================================
Script Purpose:
This script creates a new database named 'Datawarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'Datawarehouse' database if it exist.
    All data in the database will be permanemtly deleted. Proceed with caution
    and ensure you have proper backups before running this script.
  */

USE master;
GO

-- Drop and recreate 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'dataWarehouse')
BEGIN
    ALTER DATABASE Datawarehous SET SINGLE_USER WITH ROLLBAck IMMEDIATE;
    DROP DATABASE Datwwarehous;
END;
GO

-- CREATE the 'Datawarehous' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA Silver;
GO
  
CREATE SCHEMA gold;
GO
