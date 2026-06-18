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

ALTER TABLE employees ADD COLUMN department VARCHAR(50);
