-- GET all orders with id = 2 and sort by the total price in DESC order

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2 
ORDER BY total_price DESC