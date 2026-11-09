-- PostgreSQL data-quality checks

SELECT COUNT(*) AS rows, COUNT(DISTINCT order_id) AS distinct_orders FROM orders;

SELECT
    COUNT(*) FILTER (WHERE order_date IS NULL) AS null_order_dates,
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customers,
    COUNT(*) FILTER (WHERE product_id IS NULL) AS null_products,
    COUNT(*) FILTER (WHERE quantity <= 0) AS invalid_quantity,
    COUNT(*) FILTER (WHERE unit_price < 0) AS invalid_price,
    COUNT(*) FILTER (WHERE discount_pct < 0 OR discount_pct > 100) AS invalid_discount
FROM orders;

SELECT order_id, COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT
    COUNT(*) AS order_rows,
    COUNT(DISTINCT customer_id) AS customers,
    COUNT(DISTINCT product_id) AS products,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM orders;
