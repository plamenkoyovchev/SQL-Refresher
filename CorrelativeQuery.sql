USE sql_invoicing;

-- This is also known as Correlative query, because the subquery interacts with the outer query

-- get invoices which are larger than the client's average invoice amount

SELECT *
FROM invoices i
WHERE invoice_total > (
	SELECT 
		AVG(invoice_total)
	FROM invoices
    WHERE client_id = i.client_id
)