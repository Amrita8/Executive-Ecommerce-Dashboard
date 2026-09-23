-- KPI 5: Order Fulfillment SLA Rate
SELECT 
    DATE_TRUNC('week', o.created_at) AS order_week,
    ROUND(
        COUNT(CASE WHEN (s.shipped_at::date - o.created_at::date) <= 2 THEN 1 END) * 100.0 / 
        NULLIF(COUNT(o.order_id), 0), 
        2
    ) AS fulfillment_sla_pct
FROM ecom.orders o
JOIN ecom.shipments s ON o.order_id = s.order_id
GROUP BY 1
ORDER BY 1 DESC;