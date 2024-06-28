-- LIMIT and Aliasing

-- Limit is just going to specify how many rows you want in the output

SELECT *
FROM employee_demographics
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

-- now there is an additional paramater in limit which we can access using a comma that specifies the starting place
-- this now says start at position 2 and take 1 row after that

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- Aliasing

-- aliasing is just a way to change the name of the column (for the most part)
-- it can also be used in joins, but we will look at that in the intermediate series

-- we can use the keyword AS to specify we are using an Alias

SELECT gender, AVG(Age) AS avg_age
FROM employee_demographics
GROUP BY gender;

-- although we don't actually need it, but it's more explicit which I usually like

SELECT gender, AVG(Age) avg_age
FROM employee_demographics
GROUP BY gender;

