
-- Revenue generating by individual customers
-- Insight: Identification of high-value customers
SELECT c.customer_name, c.region, SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name, c.region
ORDER BY total_sales DESC
LIMIT 5;

-- Identify top 10 repeat customers
-- Insight: Customers with highest number of orders identified
SELECT c.customer_id, c.customer_name, COUNT(*) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_orders DESC
LIMIT 10;

-- Total sales for each category 
-- Insight: Products contributing most to revenue
SELECT p.category, SUM(o.sales) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

-- Finding total sales in each region
-- Insight: Some regions show higher sales concentration
SELECT c.region, SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.region;

-- Finding the region has the most high value orders
-- Insight: Some regions show higher oreder concentration.
SELECT
	c.region,
    COUNT(*) AS high_value_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.sales > 500
GROUP BY c.region
ORDER BY high_value_orders DESC;

-- Top 5 products by profit
-- Insight: Certain products contribute more to total sales
SELECT product_name, SUM(sales) AS sales, SUM(profit) AS total_profit
FROM sales_data
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 5;

-- Average delivery time
-- Insight: Average delivery time is 4 days
SELECT
	ROUND(AVG(DATEDIFF(ship_date, order_date))) AS Average_Delivery_Days
FROM sales_data;