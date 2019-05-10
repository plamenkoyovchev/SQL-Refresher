-- HAVING is used to filter data after rows grouping(GROUP BY) is applied
-- Columns by which filter with HAVING must be present in the SELECT clause!
-- AS a rule when using Aggregate functions with GROUP BY we must group by all fields in the SELECT clause

-- GET the customers
	-- located in Verginia
    -- who have spent more than 100$

USE sql_store;

SELECT 
	c.customer_id,
	c.first_name,
    c.last_name,
    SUM(oi.unit_price * quantity) AS total_spent_money
FROM customers c
JOIN orders o 
	USING(customer_id)
JOIN order_items oi
	USING(order_id)
WHERE c.state = 'VA'
GROUP BY c.customer_id ,c.first_name, c.last_name
HAVING total_spent_money > 100