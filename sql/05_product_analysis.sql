-- Category and product performance

SELECT
    category,
    subcategory,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity) AS units,
    ROUND(SUM(realized_revenue)::numeric,2) AS revenue,
    ROUND(SUM(profit)::numeric,2) AS profit
FROM orders
GROUP BY category, subcategory
ORDER BY revenue DESC;

WITH product_sales AS (
    SELECT
        product_id,
        MAX(product_name) AS product_name,
        MAX(category) AS category,
        SUM(quantity) AS units,
        SUM(realized_revenue) AS revenue,
        RANK() OVER (PARTITION BY MAX(category) ORDER BY SUM(realized_revenue) DESC) AS category_rank
    FROM orders
    GROUP BY product_id
)
SELECT *
FROM product_sales
WHERE category_rank <= 10
ORDER BY category, category_rank;
