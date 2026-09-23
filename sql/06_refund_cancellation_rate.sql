-- KPI 6: Refund & Cancellation Rate
SELECT 
    DATE_TRUNC('week', created_at) AS order_week,
    COUNT(CASE WHEN status = 'Cancelled' THEN 1 END) * 100.0 / COUNT(order_id) AS cancellation_rate
FROM ecom.orders
GROUP BY 1
ORDER BY 1 DESC;