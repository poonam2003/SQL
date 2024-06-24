-- Group By

# When you use the GROUP BY clause in Mysql query, it groups together rows that have same values in the specified column or columns.
# GROUP BY is allow us to group rows that have same data and run aggregate functions on them.  

SELECT *
FROM employee_demographics;

-- when you use group by you have to have the same columns you're grouping on in the group by statement

SELECT DISTINCT gender
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM employee_salary;

SELECT occupation
FROM employee_salary
GROUP BY occupation;

-- notice there is only one office manager row
-- when we group by 2 columns we now have a row for both occupation and salary because salary is different

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

-- now the most useful reason we use group by is so we can perform out aggregate functions on them

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY Clause

#The ORDER BY keyword is used to sort the result-set in ascending or descending order.

#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

SELECT *
FROM employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT * 
FROM employee_demographics
ORDER BY gender, age DESC;

# now we don't actually have to spell out the column names. We can actually just use their column position

SELECT *
FROM employee_demographics
ORDER BY 5, 4;

# But we prefer column names
