-- KPI 3: 30-Day Customer Repeat Rate (PostgreSQL Syntax)
WITH customer_orders AS (
    SELECT 
        customer_id,
        created_at,
        LAG(created_at) OVER (PARTITION BY customer_id ORDER BY created_at) AS prev_order_date
    FROM ecom.orders
)
SELECT 
    DATE_TRUNC('month', created_at) AS order_month,
    ROUND(
        COUNT(DISTINCT CASE WHEN (created_at::date - prev_order_date::date) <= 30 THEN customer_id END) * 100.0 / 
        NULLIF(COUNT(DISTINCT customer_id), 0), 
        2
    ) AS repeat_rate_30d
FROM customer_orders
GROUP BY 1
ORDER BY 1 DESC;