-- Monthly sales trend and MoM growth

WITH monthly AS (
    SELECT
        DATE_TRUNC('month', order_date)::date AS month,
        COUNT(DISTINCT order_id) AS orders,
        COUNT(DISTINCT customer_id) AS customers,
        SUM(realized_revenue) AS revenue,
        SUM(profit) AS profit
    FROM orders
    GROUP BY 1
)
SELECT
    month,
    orders,
    customers,
    ROUND(revenue::numeric,2) AS revenue,
    ROUND(profit::numeric,2) AS profit,
    ROUND(
        100 * (revenue - LAG(revenue) OVER (ORDER BY month))
        / NULLIF(LAG(revenue) OVER (ORDER BY month),0), 2
    ) AS mom_growth_pct
FROM monthly
ORDER BY month;

-- Order-status performance
SELECT
    order_status,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity) AS units,
    ROUND(SUM(net_revenue)::numeric,2) AS revenue
FROM orders
GROUP BY order_status
ORDER BY revenue DESC;
