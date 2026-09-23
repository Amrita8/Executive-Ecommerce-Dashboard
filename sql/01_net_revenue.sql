-- KPI 1: Net Revenue (Gross Sales minus Refunds)
SELECT 
    DATE_TRUNC('month', created_at) AS order_month,
    SUM(total) - SUM(discount) AS net_revenue
FROM ecom.orders
GROUP BY 1
ORDER BY 1 DESC;
