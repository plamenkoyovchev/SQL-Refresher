USE sql_invoicing;

-- MySQL specific: delimiter is changed so MySQL to understand the queries between BEGIN and END as a single statement
DELIMITER $$

CREATE PROCEDURE get_invoices_with_balance()
BEGIN
	SELECT *
    FROM invoices 
    WHERE invoice_total - payment_total > 0;
END$$

DELIMITER ;