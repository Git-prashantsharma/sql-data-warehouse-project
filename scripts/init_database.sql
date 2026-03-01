/*
======================================
Create Database and Schemas
======================================
Script Purpose:
  This script creates a new database named 'DateWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 
  'bronze', 'silver', and 'gold'.
Warning:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution 
  and ensure you have backups before running this scripts.
*/


use master;
Go
-- Drop and recreate the 'DateWarehouse' database
if exists (select 1 from sys.databases where name = 'DateWarehouse')
begin
  alter database DateWarehouse set single_user with rollback immediate;
  drop database DateWarehouse;
end;
Go

-- create the 'DateWarehouse' database
create database DataWarehouse;
Go
use DateWarehouse;
go

-- create schemas
create schema bronze;
go

create schema silver;
go

create schema gold;
go
