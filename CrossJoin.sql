-- CROSS JOIN combines every record from first table with every record from the second table
-- Real world example for CROSS JOIN is if we have table with sizes (S,M,L,XL) and colors (r,g,b) 
-- so we can get all the combinations for size and colors

SELECT 
	o.order_id,
    sh.name AS shipper
FROM order_items o 
CROSS JOIN shippers sh