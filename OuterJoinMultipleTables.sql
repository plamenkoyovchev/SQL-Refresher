USE sql_store;

SELECT 
	o.order_date,
    o.order_id,
    c.first_name,
    s.name AS shipper,
    os.name as status
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers s
	ON o.shipper_id = s.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id