-- ^ beginning
-- $ end
-- | logical or 
-- [abcd] 
-- [a-h] range from a to h

SELECT * 
FROM customers
WHERE last_name REGEXP '[a-h]e';

-- EXCERCISES: GET the customers whose 
    -- names are ELKA or AMBUR
SELECT * 
FROM customers
WHERE first_name REGEXP 'elka|ambur';

	-- last names end with EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$'; 
   
	-- last names start with MY or containse SE
SELECT *
FROM customers
WHERE last_name REGEXP '^my|se';

	-- last names contain B followed by R or U
SELECT * 
FROM customers
WHERE last_name REGEXP 'b[r|u]'; -- b[ru] , br|bu









