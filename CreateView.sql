-- Create a view 'clients_balance' to see the balance for each client
-- AS a rule always use group by when using aggregate functions(SUM,MAX,MIN etc.) 
USE sql_invoicing;

CREATE VIEW clients_balance AS
SELECT 
	i.client_id,
	c.name,
    SUM(i.invoice_total - i.payment_total) AS balance
FROM invoices i
JOIN clients c USING(client_id)
GROUP BY i.client_id, c.name;

SELECT * FROM clients_balance