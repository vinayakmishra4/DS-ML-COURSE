-- SQL Aggregate functions

-- 1.Count functions 

-- count all rows 

select COUNT(*) from employees;

-- count the all things in specified  columns

 SELECT COUNT(Department) from employees;

-- count the all the unqiue thing in  specified  columns

select COUNT(DISTINCT Department) from employees;

-- 2. SUM

-- Total sum of all salary of employees

select SUM(salary) as total_salary from employees;

-- Total unqiue salary of employees

select SUM(salary) as unqiue_salary from employees;

-- 3. Average of Salary and employees 

select AVG(salary) as avg_salary, AVG(EmpID) as avg_employee from employees;

-- 4 Minimum of salary

SELECT MIN(salary) as minimun_salary from employees;

-- 5 Maximum of Salary 

SELECT MAX(salary) as maximum_salary from employees;





