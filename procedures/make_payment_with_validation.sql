
USE sql_invoicing;
DROP PROCEDURE IF EXISTS make_payment;

USE sql_invoicing;

DELIMITER $$

CREATE PROCEDURE make_payment
(
	invoice_id INT,
    payment_amount DECIMAL (9, 2),
    payment_date DATE
)

BEGIN
    IF payment_amount <= 0 THEN
		SIGNAL SQLSTATE '22003'  -- https://www.ibm.com/support/knowledgecenter/en/SSEPEK_10.0.0/codes/src/tpc/db2z_sqlstatevalues.html
			SET MESSAGE_TEXT = 'Invalid payment amount';
    END IF;
    
	UPDATE invoices i
    SET 
		i.payment_amount = payment_amount,
        i.payment_date = payment_date
	WHERE i.invoice_id = invoice_id;
END$$

DELIMITER ;