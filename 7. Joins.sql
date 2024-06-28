USE parks_and_recreation;

-- JOINS

-- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together
-- there are several joins we will look at today, inner joins, outer joins, and self joins

-- here are the first 2 tables - let's see what columns and data in the rows we have in common that we can join on

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- Inner Join

-- inner joins return rows that are the same in both columns
-- since we have the same columns we need to specify which table they're coming from

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

SELECT dem.employee_id,age,occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

-- OUTER JOINS

-- for outer joins we have a left and a right join

-- Left Join

-- a left join will take everything from the left table even if there is no match in the join, but will only return matches from the right table
-- the exact opposite is true for a right join

SELECT *
FROM employee_demographics as dem
LEFT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;


-- Right Join

SELECT *
FROM employee_demographics as dem 
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;


-- Self Join

-- a self join is where you tie a table to itself

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name As last_name_santa,
emp2.employee_id AS emp_id,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id;


-- Joining Multiple Tables

SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;

-- now notice when we did that, since it's an inner join it got rid of andy because he wasn't a part of any department

-- if we do a left join we would still include him because we are taking everything from the left table which is the salary table in this instance

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;





