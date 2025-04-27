-- CTEs stands for common table expression. It is a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement
-- it helps make complex queries more readable and modular.

WITH CTE_example(GENDER, AVG_SAL , MAX_SAL, MIN_SAL, COUNT_SAL) AS 
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM CTE_example
;

-- cte different from subquery
SELECT AVG(avg_sal)
FROM (SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender
) eg_subquery
;

-- multiple ctes within one

WITH CTE_example AS 
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
where birth_date > '1985-01-01'
),
CTE_Example2 AS (
SELECT employee_id, salary
FROM employee_salary 
WHERE salary > 50000
)
SELECT *
FROM CTE_example
JOIN CTE_Example2
   ON CTE_example.employee_id = CTE_Example2.employee_id
;