SELECT * 
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id
    
-- usage of USING is simpler only if the join column names are equal, see below 

SELECT * 
FROM order_items oi
JOIN products p
	USING (product_id)