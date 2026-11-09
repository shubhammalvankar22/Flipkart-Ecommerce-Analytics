-- Revenue decomposition
-- Revenue = Orders x AOV

WITH monthly AS (
    SELECT
        DATE_TRUNC('month', order_date)::date AS month,
        COUNT(DISTINCT order_id)::numeric AS orders,
        SUM(realized_revenue)::numeric AS revenue
    FROM orders
    GROUP BY 1
),
metrics AS (
    SELECT
        month,
        orders,
        revenue,
        revenue / NULLIF(orders,0) AS aov,
        LAG(orders) OVER (ORDER BY month) AS prev_orders,
        LAG(revenue) OVER (ORDER BY month) AS prev_revenue,
        LAG(revenue / NULLIF(orders,0)) OVER (ORDER BY month) AS prev_aov
    FROM monthly
)
SELECT
    month,
    ROUND(revenue,2) AS revenue,
    orders,
    ROUND(aov,2) AS aov,
    ROUND((orders - prev_orders) * prev_aov,2) AS volume_effect,
    ROUND((aov - prev_aov) * orders,2) AS aov_effect,
    ROUND(revenue - prev_revenue,2) AS actual_revenue_change
FROM metrics
WHERE prev_revenue IS NOT NULL
ORDER BY month;
