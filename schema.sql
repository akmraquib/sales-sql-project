-- 	=======================
-- 	CREATE TABLE
-- 	=======================

-- customer table
CREATE TABLE customers (
	customer_id VARCHAR(8) PRIMARY KEY,
    customer_name VARCHAR(100),
    region VARCHAR(50)
);

-- products table
CREATE TABLE products (
    product_id VARCHAR(15) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- orders table
CREATE TABLE orders (
    order_id VARCHAR(14) PRIMARY KEY,
    customer_id VARCHAR(8),
    product_id VARCHAR(15),
    order_date DATE,
    Sales DECIMAL(10,2)
);

-- 	==========================
--  FOREIGN KEY CONSTAINT
--	==========================

-- Add foreign keys to orders table
ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id) REFERENCES products(product_id);