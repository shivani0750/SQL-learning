-- Unions - allow you to combine rows of data together from Separate tables 


SELECT first_name, last_name
FROM employee_demographics
UNION -- by default its UNION DISTINCT for unique values and UNION ALL for all results without removing duplicates```
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'Old Man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male' 
UNION 
SELECT first_name, last_name, 'Old Lady' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly paid employee' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;