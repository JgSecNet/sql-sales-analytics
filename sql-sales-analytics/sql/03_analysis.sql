SELECT COUNT(*) AS customers FROM customers;
SELECT COUNT(*) AS products FROM products;
SELECT COUNT(*) AS orders FROM orders;
SELECT COUNT(*) AS order_items FROM order_items;

-- 1) Monthly Revenue
SELECT
strftime('%Y-%m', o.order_date) AS month,
SUM(p.price * oi.quantity) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY strftime('%Y-%m', o.order_date)
ORDER BY month;

-- 2) Top Products by Revenue
SELECT
p.product_name,
SUM(oi.quantity) AS units_sold,
SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- 3) Customer Lifetime Value (CLV)
SELECT
c.full_name,
COUNT(DISTINCT o.order_id) AS total_orders,
SUM(p.price * oi.quantity) AS lifetime_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.full_name
ORDER BY lifetime_value DESC;

-- 4) Returning vs One-time Customers
WITH customer_orders AS (
SELECT
customer_id,
COUNT(DISTINCT order_id) AS order_count
FROM orders
GROUP BY customer_id
)
SELECT
CASE WHEN order_count = 1 THEN 'One-time' ELSE 'Returning' END AS customer_type,
COUNT(*) AS customers
FROM customer_orders
GROUP BY customer_type;

-- 5) Revenue by Category
SELECT
p.category,
SUM(p.price * oi.quantity) AS revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY revenue DESC;