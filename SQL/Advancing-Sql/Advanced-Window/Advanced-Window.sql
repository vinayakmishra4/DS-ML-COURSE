-- Create Database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2)
);

-- Insert Sample Data
INSERT INTO Employees (emp_id, emp_name, department, salary) VALUES
(101, 'Alice', 'HR', 70000),
(102, 'Bob', 'IT', 90000),
(103, 'Charlie', 'IT', 90000),
(104, 'David', 'Sales', 60000),
(105, 'Emma', 'HR', 80000);

----------------------------------------------------
-- 1. ROW_NUMBER()
----------------------------------------------------
SELECT
    emp_id,
    emp_name,
    department,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_number
FROM Employees;

----------------------------------------------------
-- 2. RANK()
----------------------------------------------------
SELECT
    emp_id,
    emp_name,
    department,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS rank_number
FROM Employees;

----------------------------------------------------
-- 3. DENSE_RANK()
----------------------------------------------------
SELECT
    emp_id,
    emp_name,
    department,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM Employees;

----------------------------------------------------
-- 4. NTILE(4)
----------------------------------------------------
SELECT
    emp_id,
    emp_name,
    department,
    salary,
    NTILE(4) OVER (ORDER BY salary DESC) AS quartile
FROM Employees;

----------------------------------------------------
-- 5. PERCENT_RANK()
----------------------------------------------------
SELECT
    emp_id,
    emp_name,
    department,
    salary,
    PERCENT_RANK() OVER (ORDER BY salary DESC) AS percent_rank
FROM Employees;

----------------------------------------------------
-- 6. CUME_DIST()
----------------------------------------------------
SELECT
    emp_id,
    emp_name,
    department,
    salary,
    CUME_DIST() OVER (ORDER BY salary DESC) AS cumulative_distribution
FROM Employees;