-- String Functions- built-in functions that will help use strings and work with strings

SELECT LENGTH ('Waterfall')  -- gives length of string
;

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
; 

SELECT UPPER('sky'); 
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- Trim- used to remove unwanted spaces or specific character from a string 
SELECT TRIM('       sky        ') AS TRIMMED;
SELECT LTRIM('       sky        ')AS TRIMMED; 
SELECT RTRIM('       sky        ')AS TRIMMED;

-- SUBSTRING
SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics
;

-- Replace - replace specific characters with diffent character
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics
;

-- Locate
SELECT LOCATE('x', 'Alexander');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics
;

-- CONCATENATION
SELECT first_name,last_name,
CONCAT(first_name,' ', last_name) AS full_name
FROM employee_demographics
;

