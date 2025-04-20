-- Window Function - perform calcualtions across a set of table rows that are somehow related to the current row- without grouping the result into a single row

SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender;


SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id,dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(partition by gender order by salary desc) AS row_num,
RANK() OVER(partition by gender order by salary desc) AS rank_num,
DENSE_RANK() OVER(partition by gender order by salary desc) AS dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
;








