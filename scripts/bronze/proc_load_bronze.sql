/*
Stored procedure: Load Bronze Layer (Source -> Bronze)

Script purpose:
This stored procedure loads data into the bronze schema from external CSV files.

It performs the following actions:
- Truncates bronze tables before loading data
- Loads data from CSV files into bronze tables using COPY command
- Logs progress for monitoring and debugging

Parameters:
- None

This stored procedure does not return any values.

Usage Example:
CALL bronze.load_bronze();
*/


CREATE OR REPLACE PROCEDURE bronze.load_bronze()
LANGUAGE plpgsql
AS $$

DECLARE
    start_time TIMESTAMP;
    batch_start_time TIMESTAMP;
    batch_end_time TIMESTAMP;
    total_duration NUMERIC;
BEGIN

    start_time := clock_timestamp();

    RAISE NOTICE '=============================================';
    RAISE NOTICE 'Loading Bronze Layer Started';
    RAISE NOTICE '=============================================';


    /* ================= CRM TABLES ================= */

    batch_start_time := clock_timestamp();

    RAISE NOTICE '---------------------------------------------';
    RAISE NOTICE 'Loading CRM Tables';
    RAISE NOTICE '---------------------------------------------';


    RAISE NOTICE '>>> Truncating Table: bronze.crm_cust_info';
    TRUNCATE TABLE bronze.crm_cust_info;

    RAISE NOTICE '>>> Loading Data Into: bronze.crm_cust_info';
    COPY bronze.crm_cust_info
    FROM 'FILE PATH'
    DELIMITER ','
    CSV HEADER;


    RAISE NOTICE '>>> Truncating Table: bronze.crm_prd_info';
    TRUNCATE TABLE bronze.crm_prd_info;

    RAISE NOTICE '>>> Loading Data Into: bronze.crm_prd_info';
    COPY bronze.crm_prd_info
    FROM 'FILE PATH'
    DELIMITER ','
    CSV HEADER;


    RAISE NOTICE '>>> Truncating Table: bronze.crm_sales_details';
    TRUNCATE TABLE bronze.crm_sales_details;

    RAISE NOTICE '>>> Loading Data Into: bronze.crm_sales_details';
    COPY bronze.crm_sales_details
    FROM 'FILE PATH'
    DELIMITER ','
    CSV HEADER;


    batch_end_time := clock_timestamp();

    RAISE NOTICE 'CRM Batch Completed in % seconds',
        EXTRACT(EPOCH FROM (batch_end_time - batch_start_time));


    /* ================= ERP TABLES ================= */

    batch_start_time := clock_timestamp();

    RAISE NOTICE '---------------------------------------------';
    RAISE NOTICE 'Loading ERP Tables';
    RAISE NOTICE '---------------------------------------------';


    RAISE NOTICE '>>> Truncating Table: bronze.erp_loc_a101';
    TRUNCATE TABLE bronze.erp_loc_a101;

    RAISE NOTICE '>>> Loading Data Into: bronze.erp_loc_a101';
    COPY bronze.erp_loc_a101
    FROM 'FILE PATH'
    DELIMITER ','
    CSV HEADER;


    RAISE NOTICE '>>> Truncating Table: bronze.erp_cust_az12';
    TRUNCATE TABLE bronze.erp_cust_az12;

    RAISE NOTICE '>>> Loading Data Into: bronze.erp_cust_az12';
    COPY bronze.erp_cust_az12
    FROM 'FILE PATH'
    DELIMITER ','
    CSV HEADER;


    RAISE NOTICE '>>> Truncating Table: bronze.erp_px_cat_g1v2';
    TRUNCATE TABLE bronze.erp_px_cat_g1v2;

    RAISE NOTICE '>>> Loading Data Into: bronze.erp_px_cat_g1v2';
    COPY bronze.erp_px_cat_g1v2
    FROM 'FILE PATH'
    DELIMITER ','
    CSV HEADER;


    batch_end_time := clock_timestamp();

    RAISE NOTICE 'ERP Batch Completed in % seconds',
        EXTRACT(EPOCH FROM (batch_end_time - batch_start_time));


    /* ================= FINAL ================= */

    total_duration := EXTRACT(EPOCH FROM (clock_timestamp() - start_time));

    RAISE NOTICE '=============================================';
    RAISE NOTICE 'Bronze Layer Load Completed Successfully';
    RAISE NOTICE 'Total Duration: % seconds', total_duration;
    RAISE NOTICE '=============================================';

EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE '=============================================';
        RAISE NOTICE 'ERROR DURING BRONZE LOAD';
        RAISE NOTICE 'Error Message: %', SQLERRM;
        RAISE NOTICE '=============================================';
END;
$$;
