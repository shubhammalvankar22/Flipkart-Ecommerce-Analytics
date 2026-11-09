-- E-commerce churn: no purchase in the last 90 days.
-- The threshold should be validated against actual purchase frequency in a real business.

WITH customer_last_purchase AS (
    SELECT
        customer_id,
        MAX(order_date) AS last_purchase,
        COUNT(DISTINCT order_id) AS orders,
        SUM(realized_revenue) AS revenue
    FROM orders
    GROUP BY customer_id
),
labeled AS (
    SELECT
        *,
        (SELECT MAX(order_date) FROM orders) - last_purchase AS recency_days,
        CASE
            WHEN (SELECT MAX(order_date) FROM orders) - last_purchase > 90
            THEN 1 ELSE 0
        END AS churned
    FROM customer_last_purchase
)
SELECT
    COUNT(*) AS customers,
    SUM(churned) AS churned_customers,
    ROUND(100.0 * SUM(churned) / COUNT(*),2) AS churn_rate_pct,
    ROUND(100.0 * (1 - SUM(churned)::numeric / COUNT(*)),2) AS retention_rate_pct,
    ROUND(SUM(CASE WHEN churned=1 THEN revenue ELSE 0 END)::numeric,2) AS churned_customer_revenue
FROM labeled;

-- Churn by customer value
WITH customer_last_purchase AS (
    SELECT
        customer_id,
        MAX(order_date) AS last_purchase,
        COUNT(DISTINCT order_id) AS orders,
        SUM(realized_revenue) AS revenue
    FROM orders
    GROUP BY customer_id
)
SELECT
    CASE
        WHEN revenue >= 50000 THEN 'High Value'
        WHEN revenue >= 15000 THEN 'Mid Value'
        ELSE 'Low Value'
    END AS value_band,
    COUNT(*) AS customers,
    SUM(
        CASE WHEN (SELECT MAX(order_date) FROM orders) - last_purchase > 90
             THEN 1 ELSE 0 END
    ) AS churned_customers,
    ROUND(AVG(revenue)::numeric,2) AS avg_revenue
FROM customer_last_purchase
GROUP BY 1
ORDER BY avg_revenue DESC;
