-- State and city performance

SELECT
    state,
    city,
    COUNT(DISTINCT order_id) AS orders,
    COUNT(DISTINCT customer_id) AS customers,
    ROUND(SUM(realized_revenue)::numeric,2) AS revenue,
    ROUND(SUM(profit)::numeric,2) AS profit,
    ROUND(
        SUM(realized_revenue) / NULLIF(COUNT(DISTINCT order_id),0)
    ::numeric,2) AS aov
FROM orders
GROUP BY state, city
ORDER BY revenue DESC;

-- Revenue contribution by state
WITH state_sales AS (
    SELECT state, SUM(realized_revenue) AS revenue
    FROM orders
    GROUP BY state
)
SELECT
    state,
    ROUND(revenue::numeric,2) AS revenue,
    ROUND(100 * revenue / SUM(revenue) OVER ()::numeric,2) AS revenue_share_pct
FROM state_sales
ORDER BY revenue DESC;
