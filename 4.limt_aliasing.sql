-- Limit and aliasing 
-- Limits specify how many rows you want in your output 

SELECT * 
FROM employee_demographics
LIMIT 3
;

SELECT * 
FROM employee_demographics
ORDER BY age DESC 
LIMIT 3            # 3 oldest employee 
;

SELECT * 
FROM employee_demographics
ORDER BY age DESC 
LIMIT 2 , 1                 # start at position 2 and 1 row after that 
;


-- Aliasing - used to give temporary name to a column or table 


SELECT gender, AVG(age) AS avg_age    -- using AS is not necessary can also work with AVG(age) avg_age 
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;


