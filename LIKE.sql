
-- GET customers where address contains AVENUE or TRAIL
SELECT * 
FROM customers
WHERE address LIKE '%avenue%' OR address LIKE '%trail%';

-- GET customers where phone ends with 9
SELECT * 
FROM customers
WHERE phone LIKE '%9';

-- GET customers where last name starts with b and ends on y and has 4 letters between them
SELECT * 
FROM customers
WHERE last_name LIKE 'b____y';


