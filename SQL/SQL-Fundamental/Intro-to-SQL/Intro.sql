-- Create a databases

CREATE DATABASE test;

-- use databses

USE test;

-- create the table in the databases

CREATE TABLE Employees (
    EmployeeID int PRIMARY KEY,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Department varchar(100),
    Age int
);

-- schema has create of the table

-- insert data in table

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Age)
VALUES 
    (1, 'John', 'Doe', 'IT', 35),
    (2, 'Jane', 'Smith', 'Human Resources', 28),
    (3, 'Robert', 'Johnson', 'Finance', 42),
    (4, 'Emily', 'Davis', 'Marketing', 31),
    (5, 'Michael', 'Brown', 'IT', 45),
    (6, 'Sarah', 'Miller', 'Sales', 26),
    (7, 'David', 'Wilson', 'Operations', 39),
    (8, 'Laura', 'Moore', 'Finance', 33),
    (9, 'James', 'Taylor', 'Sales', 29),
    (10, 'Emma', 'Anderson', 'Human Resources', 41);