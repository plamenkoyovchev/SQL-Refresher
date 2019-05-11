
-- subquery in from, it is good for simple queries, best approach is to create view for more complex scenarios

USE sql_invoicing;
    
SELECT * 
FROM (
	SELECT 
		c.client_id, 
		name,
		(SELECT SUM(invoice_total)
		 FROM invoices
		 WHERE client_id = c.client_id) AS total_sales,
		(SELECT AVG(invoice_total)
		 FROM invoices) AS average,
		(SELECT total_sales - average) AS difference
	FROM clients c
) AS sales_summary -- we can create view with that name
WHERE total_sales IS NOT NULL