USE sql_store;

-- find customers who have ordered lettuce (id = 3)
-- using subquery and join both approaches

SELECT 
	customer_id,
	first_name,
	last_name 
FROM customers
WHERE customer_id IN (
	SELECT 
		o.customer_id
    FROM order_items oi
    JOIN orders o 
		USING(order_id)
    WHERE oi.product_id = 3
);

SELECT DISTINCT
	c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
JOIN orders o 
	USING(customer_id)
JOIN order_items oi
	USING(order_id)
WHERE oi.product_id = 3