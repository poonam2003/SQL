-- WHERE Clause

# The where clause is used to filter records(rows of data). 
# It's going to extract only those records that fulfill specified a condition.  

# So basically if we say "Where name is = 'Alex' - only rows were the name = 'Alex' will return
# So this is only effecting the rows, not the columns

-- Comparison Operators(=, != or <>, <, <=, >, >=)

SELECT * 
FROM employee_demographics
WHERE first_name = "Tom";

SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_salary
WHERE salary < 50000;

SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE gender = "Female";

SELECT * 
FROM employee_demographics
WHERE gender != "Female";

SELECT *
FROM employee_demographics
WHERE gender <> "Female";

SELECT *
FROM employee_demographics
WHERE birth_date > "1985-01-01";

-- Logical Operators(And, Or, Not) 

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

SELECT *
FROM employee_demographics
WHERE (first_name = "Leslie" AND age = 44) OR age > 55;

-- Like Statement
# Two special characters
# % (that means anything) or _(single thing)

SELECT *
FROM employee_demographics
WHERE first_name = "Jerry";

SELECT *
FROM employee_demographics
WHERE first_name LIKE "Jer%";

SELECT *
FROM employee_demographics
WHERE first_name LIKE "%er%";

SELECT *
FROM employee_demographics
WHERE first_name LIKE "%a%";

SELECT *
FROM employee_demographics
WHERE first_name LIKE "a%";

SELECT *
FROM employee_demographics
WHERE first_name LIKE "%a";

SELECT *
FROM employee_demographics
WHERE first_name LIKE "a__";

SELECT *
FROM employee_demographics
WHERE first_name LIKE "a____";

SELECT *
FROM employee_demographics
WHERE first_name LIKE "a___%";

SELECT *
FROM employee_demographics
WHERE birth_date LIKE "1989%";

