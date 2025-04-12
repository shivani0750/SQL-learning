-- WHERE Clause 
-- helps filter rows in a SELECT, UPDATE, DELETE statement based on a condition
SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;  

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

-- logical operators---> AND OR NOT
SELECT *
FROM employee_demographics
WHERE gender != 'Female' 
AND birth_date > '1985-01-01'   
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female' 
OR birth_date > '1985-01-01'   
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' 
OR NOT gender = 'Male' 
;

-- LIKE Statement ---> useful for pattern matching 
-- % (anything) and _ (specific value)
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%a%'
;


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'
;


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;