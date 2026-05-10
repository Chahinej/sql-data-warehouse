--
-- =============================================================
-- Create Database and Schemas
-- =============================================================
-- Script Purpose:
-- This script creates a new database named 'DataWarehouse'.
-- If it already exists, it is dropped and recreated.
-- It also creates three schemas: bronze, silver, and gold.
--
-- Note:
-- In PostgreSQL, database creation is done outside a database session.
-- You must run CREATE DATABASE from a maintenance DB (like postgres).
-- =============================================================

-- Create database (run this while connected to 'postgres' database)
DROP DATABASE IF EXISTS datawarehouse;
CREATE DATABASE datawarehouse;

-- After this, reconnect to:
-- \c datawarehouse


-- Create Schemas
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
