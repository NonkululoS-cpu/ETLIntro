-- 1. Create Staging Database and Bronze schema (if they do not already exist)
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'LuloHigh_stg')
BEGIN
    CREATE DATABASE LuloHigh_stg;
END;
GO

USE LuloHigh_stg;
GO

-- Create the bronze schema for raw/dirty data if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bronze')
BEGIN
    EXEC('CREATE SCHEMA bronze;');
END;
GO


-- 2. Create Data Warehouse Database and Silver/Gold schemas (if they do not already exist)
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'LuloHigh_dwh')
BEGIN
    CREATE DATABASE LuloHigh_dwh;
END;
GO

USE LuloHigh_dwh;
GO

-- Create the silver schema for cleaned/transformed data if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'silver')
BEGIN
    EXEC('CREATE SCHEMA silver;');
END;
GO

-- Create the gold schema for aggregated/reporting data if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'gold')
BEGIN
    EXEC('CREATE SCHEMA gold;');
END;
GO