
use sql_invoicing;

-- get invoices which total is larger than all invoices of client_id = 3

SELECT *
FROM invoices
WHERE invoice_total > ALL (
	SELECT invoice_total
    FROM invoices 
    WHERE client_id = 3
);