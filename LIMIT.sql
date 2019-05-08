-- GET the top 3 loyal customers 

SELECT * 
FROM customers
ORDER BY points DESC
LIMIT 3