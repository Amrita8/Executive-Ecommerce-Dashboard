-- KPI 4: Revenue Growth by Region
SELECT 
    DATE_TRUNC('month', o.created_at) AS order_month,
    a.state,
    SUM(o.total) AS regional_revenue
FROM ecom.orders o
JOIN ecom.addresses a ON o.billing_address_id = a.address_id
GROUP BY 1, 2
ORDER BY 1 DESC, 3 DESC;