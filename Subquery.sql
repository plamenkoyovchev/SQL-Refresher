USE sql_hr;

-- Find employees whose earn is more than the average

SELECT 
first_name,
last_name,
job_title,
salary
FROM employees 
WHERE salary > (
				SELECT 
				AVG(salary)
				FROM employees)