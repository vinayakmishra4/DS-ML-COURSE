-- Create the database

CREATE DATABASE employees;


use employees;

-- Create the table

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- alter the table

-- Add a new column for department

ALTER TABLE employees ADD department VARCHAR(50);

-- drop the hire_date column

ALTER TABLE employees DROP COLUMN hire_date;

-- Rename the job_title column to position for mysql 

ALTER TABLE employees RENAME COLUMN job_title TO position;

-- Rename 

rename table employess to staff;

-- Drop COMMENT

drop table staff;