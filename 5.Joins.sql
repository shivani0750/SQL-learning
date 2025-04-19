-- Joins - allows you to combine two tables or more together if they have a common column 
SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

-- INNER JOIN - Return rows that are same in both columns from both tables
-- by default join represents an inner join

SELECT *
FROM employee_demographics AS dem   -- aliasing
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation  -- if columns are similar im both tables we have to denote that using table name or alias
FROM employee_demographics AS dem   -- aliasing
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
;

-- OUTER JOIN 
-- 1.LEFT OUTER JOIN- take everything from the left table even if there is no match in the join & then will only return the matches from right table 
-- opposite for RIGHT OUTER JOIN 


SELECT * 
FROM employee_demographics AS dem  
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT * 
FROM employee_demographics AS dem  
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- SELF JOIN - it is a join where a table is tied to itself
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp

FROM employee_salary emp1
JOIN employee_salary emp2
    ON emp1.employee_id +1 = emp2.employee_id
;

-- joining multiple tables together
SELECT *  
FROM employee_demographics AS dem   
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd 
  ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments;