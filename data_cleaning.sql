-- ===========================================
-- DATA CLEANING
-- ===========================================

-- Viewing all data
-- ===========================================
SELECT * FROM sales_data;

-- Checking data types
-- ===========================================
SHOW COLUMNS FROM sales_data;

-- Changing column names and fixing data types
-- ============================================
ALTER TABLE sales_data
CHANGE COLUMN `Row ID` row_id INT;

ALTER TABLE sales_data
CHANGE COLUMN order_id order_id VARCHAR(14);

ALTER TABLE sales_data
CHANGE COLUMN `Order Date` order_date TEXT;

ALTER TABLE sales_data
CHANGE COLUMN `Ship Date` ship_date TEXT;

ALTER TABLE sales_data
CHANGE COLUMN Ship_Mode ship_mode VARCHAR(50);

ALTER TABLE sales_data
CHANGE COLUMN customer_id customer_id VARCHAR(8);

ALTER TABLE sales_data
CHANGE COLUMN customer_Name customer_name VARCHAR(100);

ALTER TABLE sales_data
CHANGE COLUMN Segment segment VARCHAR(50);

ALTER TABLE sales_data
CHANGE COLUMN Country country VARCHAR(50);

ALTER TABLE sales_data
CHANGE COLUMN City city VARCHAR(50);

ALTER TABLE sales_data
CHANGE COLUMN State state VARCHAR(50);

ALTER TABLE sales_data
CHANGE COLUMN Postal_Code postal_code INT;

ALTER TABLE sales_data
CHANGE COLUMN Region region VARCHAR(50);

ALTER TABLE sales_data
CHANGE COLUMN product_id product_id VARCHAR(15);

ALTER TABLE sales_data
CHANGE COLUMN Category category VARCHAR(50);

ALTER TABLE sales_data
CHANGE COLUMN Sub_Category sub_category VARCHAR(50);

ALTER TABLE sales_data
CHANGE COLUMN product_name product_name VARCHAR(150);

ALTER TABLE sales_data
CHANGE COLUMN Sales sales DECIMAL(10,2);

ALTER TABLE sales_data
CHANGE COLUMN Quantity quantity INT;

ALTER TABLE sales_data
CHANGE COLUMN discount discount DECIMAL(3,2);

ALTER TABLE sales_data
CHANGE COLUMN profit profit DECIMAL(10,2);

-- Add new column, update date, drop old column, and rename new column
-- ===================================================================
-- Adding new column
ALTER TABLE sales_data
ADD COLUMN order_date_new DATE;

-- Adding ship_date_new column
ALTER TABLE sales_data
ADD COLUMN ship_date_new DATE;

-- Updating order_date_new column
UPDATE sales_data
SET order_date_new = STR_TO_DATE(TRIM(order_date), '%m/%d/%Y');

-- Updating ship_date_new column
UPDATE sales_data
SET ship_date_new = STR_TO_DATE(TRIM(ship_date), '%m/%d/%Y');

-- Checking updation of order_date_new
SELECT order_date_new FROM sales_data;

-- Checking updation of ship_date_new
SELECT ship_date_new FROM sales_data;

-- Drop old column
ALTER TABLE sales_data
DROP COLUMN order_date;

ALTER TABLE sales_data
DROP COLUMN ship_date;

-- Change name of new column 
ALTER TABLE sales_data
CHANGE COLUMN order_date_new order_date DATE;

ALTER TABLE sales_data
CHANGE COLUMN ship_date_new ship_date DATE;
