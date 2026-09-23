-- KPI 2: Order Volume & Average Order Value (AOV)
SELECT 
    DATE_TRUNC('month', created_at) AS order_month,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(total) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM ecom.orders
WHERE status = 'paid'
GROUP BY 1
ORDER BY 1 DESC;