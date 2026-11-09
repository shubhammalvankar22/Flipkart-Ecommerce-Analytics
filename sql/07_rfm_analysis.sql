-- PostgreSQL RFM foundation
-- Recency: days since last purchase
-- Frequency: number of distinct orders
-- Monetary: realized revenue

WITH base AS (
    SELECT
        customer_id,
        MAX(order_date) AS last_purchase,
        COUNT(DISTINCT order_id) AS frequency,
        SUM(realized_revenue) AS monetary
    FROM orders
    GROUP BY customer_id
),
rfm AS (
    SELECT
        *,
        (SELECT MAX(order_date) FROM orders) - last_purchase AS recency_days
    FROM base
)
SELECT
    customer_id,
    recency_days,
    frequency,
    ROUND(monetary::numeric,2) AS monetary,
    NTILE(5) OVER (ORDER BY recency_days DESC) AS r_score,
    NTILE(5) OVER (ORDER BY frequency) AS f_score,
    NTILE(5) OVER (ORDER BY monetary) AS m_score
FROM rfm
ORDER BY monetary DESC;
