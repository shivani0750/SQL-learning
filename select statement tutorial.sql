SELECT *   #* selects everything
FROM parks_and_recreation.employee_demographics; 

SELECT first_name, last_name, birth_date,  #multiple coloums separated by comma, we can write these columns in multiple rows for easy visualization 
age, age+10										# can do calculation in select statement 
FROM parks_and_recreation.employee_demographics;
#PEMDAS - order of operations for maths in mysql

SELECT DISTINCT gender #unqique but "SELECT DISTINCT first_name,gender" gender will not be unique but the combination of both will be unique 
FROM parks_and_recreation.employee_demographics;