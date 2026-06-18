-- Data reterival 

use test;

-- retervial of table

select *from employees;

-- Selecting Specific Columns

SELECT firstname, department
FROM employees;

-- Using Aliases

SELECT concat(firstname,' ',lastname) AS employee_name, department AS dept
FROM employees;

-- Filtering Data with WHERE Clause

SELECT * FROM employees
WHERE age > 30;

-- Filtering Data with IN and NOT IN Command

SELECT * FROM employees 
WHERE department IN ('Sales', 'Marketing');

SELECT * FROM employees 
WHERE department NOT IN ('Sales', 'Marketing');

--  Using Multiple Conditions with AND and OR

SELECT * FROM employees
WHERE age > 25 AND department = 'IT';

SELECT * FROM employees
WHERE age > 30 OR department = 'HR';

