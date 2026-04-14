-- 	=======================================================================
-- 	INSERT DATA
-- 	(Extract data from sales_data to customers, orders and products tables)
-- 	=======================================================================

-- Inser into customers
INSERT INTO customers (customer_id, customer_name, region)
SELECT 
	customer_id, 
	MAX(customer_name) AS customer_name,
	MAX(region) AS region
FROM sales_data
GROUP BY customer_id;

-- Insert into products
INSERT INTO products (product_id, product_name, category)
SELECT 
	product_id, 
    MAX(product_name) AS product_name, 
    MAX(category) AS category
FROM sales_data
GROUP BY product_id;

-- Insert into orders
INSERT INTO orders (order_id, customer_id, product_id, order_date, sales)
SELECT 
	order_id, 
	MAX(customer_id) AS customer_id,
    MAX(product_id) AS product_id,
    MAX(order_date) AS order_date,
    MAX(sales) AS sales
FROM sales_data
GROUP BY order_id;