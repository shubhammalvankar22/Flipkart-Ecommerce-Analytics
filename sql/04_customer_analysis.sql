-- Customer value

WITH customer_metrics AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS orders,
        SUM(quantity) AS units,
        SUM(realized_revenue) AS revenue,
        MAX(order_date) AS last_purchase,
        MIN(order_date) AS first_purchase
    FROM orders
    GROUP BY customer_id
)
SELECT
    customer_id,
    orders,
    units,
    ROUND(revenue::numeric,2) AS revenue,
    first_purchase,
    last_purchase,
    ROUND((revenue / NULLIF(orders,0))::numeric,2) AS aov
FROM customer_metrics
ORDER BY revenue DESC;

-- Repeat-purchase customers
SELECT
    COUNT(*) FILTER (WHERE order_count > 1) AS repeat_customers,
    COUNT(*) AS total_customers,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE order_count > 1) / COUNT(*), 2
    ) AS repeat_customer_pct
FROM (
    SELECT customer_id, COUNT(DISTINCT order_id) AS order_count
    FROM orders
    GROUP BY customer_id
) x;
