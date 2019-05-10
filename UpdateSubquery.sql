USE sql_store;

UPDATE orders
SET comments = 'GOLD CUSTOMER'
WHERE customer_id IN 
					(
						SELECT customer_id
                        FROM customers c
						WHERE c.points > 3000
					);