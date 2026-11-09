-- Core business KPIs

SELECT
    COUNT(DISTINCT order_id) AS orders,
    COUNT(DISTINCT customer_id) AS customers,
    SUM(quantity) AS units_sold,
    ROUND(SUM(realized_revenue)::numeric, 2) AS realized_revenue,
    ROUND(SUM(profit)::numeric, 2) AS profit,
    ROUND((SUM(realized_revenue) / NULLIF(COUNT(DISTINCT order_id),0))::numeric, 2) AS aov,
    ROUND((SUM(realized_revenue) / NULLIF(COUNT(DISTINCT customer_id),0))::numeric, 2) AS revenue_per_customer
FROM orders;

SELECT
    order_status,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(net_revenue)::numeric,2) AS revenue
FROM orders
GROUP BY order_status
ORDER BY revenue DESC;
