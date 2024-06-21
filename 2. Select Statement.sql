-- Select Statement

-- The select statement is used to work with columns and specify what columns you want to work see in your output. 
-- We can also select a specific number of column based on our requirement.

# Now remember we can just select everything by saying:
SELECT *
FROM parks_and_recreation.employee_demographics;

# Let's try selecting a specific column
SELECT first_name
FROM employee_demographics;

# Now let's add some more columns, we just need to separate the columns with columns
SELECT first_name, last_name
FROM employee_demographics;

SELECT first_name, last_name, gender, age
FROM employee_demographics;

SELECT first_name,
last_name,
gender,
age
FROM employee_demographics;


# PEMDAS
-- Math in SQL does follow PEMDAS which stands for Parenthesis, Exponent, Multiplication,
-- Division, Addition, subtraction - it's the order of operation for math.


SELECT first_name,
last_name,
gender,
age + 10
FROM employee_demographics;

SELECT first_name,
last_name,
gender,
(age + 10) * 10
FROM employee_demographics;

SELECT first_name,
last_name,
gender,
(age + 10) * 10 + 10 
FROM employee_demographics;

# Distinct Statement

-- This will only return unique values in the output and won't have any duplicates. 

SELECT gender 
FROM employee_demographics;

SELECT DISTINCT gender
FROM employee_demographics;



