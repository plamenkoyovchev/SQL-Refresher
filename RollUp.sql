USE sql_invoicing;

-- Only MySQL has ROLLUP

SELECT 
	pm.name,
    SUM(amount) AS total
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id 
GROUP BY pm.name WITH ROLLUP
