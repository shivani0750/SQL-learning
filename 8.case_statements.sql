-- Case Statements - allow to add logic in SELECT statement, kind of if else statement in other programming language

SELECT first_name,
last_name, age,
CASE
    WHEN age<= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS age_bracket
FROM employee_demographics;

-- Pay increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus 

SELECT first_name, last_name, salary,
CASE
WHEN salary < 50000 THEN salary + (salary * 0.05)
WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE
 WHEN dept_id = 6 THEN salary * 0.10
END AS bonus
FROM employee_salary;

SELECT 
FROM employee_demographics;