USE sql_invoicing;

DELETE FROM invoices
WHERE client_id = (
					SELECT client_id 
                    FROM clients
                    WHERE name = 'Something'
				);