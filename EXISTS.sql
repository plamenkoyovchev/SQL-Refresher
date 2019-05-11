USE sql_store;

-- find the products that have never been ordered
-- EXISTS is faster than IN!!!
SELECT * 
FROM products p
WHERE NOT EXISTS(
	SELECT 
		product_id
	FROM order_items
	WHERE product_id = p.product_id
);


-- slow performance with IN since it return list of results from the inner query instead of true or false
SELECT *
FROM products
WHERE product_id NOT IN (
	SELECT product_id
    FROM order_items
);