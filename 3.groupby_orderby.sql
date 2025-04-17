-- Group by
-- used with aggregate functions (like COUNT(),SUM(),AVG(), etc)
-- to group rows that have the same values in specified columns into summary rows.

SELECT *
FROM employee_demographics; 

-- Every column in the SELECT that is not an aggregate function must be in GROUP BY.
SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
-- Sort the result in either ascending or descending order


SELECT *
FROM employee_demographics
ORDER BY gender, age DESC  -- if we write age first then the gender column, the gender is not going to be used at all b/c all the age value are unique  
;

-- using column positions, not a good practice 
SELECT *
FROM employee_demographics
ORDER BY 4, 3
;

-- if you want to filter on aggregated function columns use having clause.
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%' -- filtered row level
GROUP BY occupation
HAVING AVG(salary) > 75000 -- filtered aggregate function level
-- this having is going to work for aggregated functions after the group by actually runs
;
