-- ==========================================
-- SQL Script: Views Example
-- ==========================================

-- Create Database
CREATE DATABASE CompanyDB;
GO

USE CompanyDB;
GO

-- ==========================================
-- Create Employees Table
-- ==========================================
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);
GO

-- ==========================================
-- Insert Sample Data
-- ==========================================
INSERT INTO Employees (Name, Department, Salary)
VALUES
('John', 'HR', 50000),
('Alice', 'IT', 70000),
('Bob', 'Finance', 60000),
('David', 'IT', 75000),
('Emma', 'HR', 55000);
GO

-- ==========================================
-- Create View
-- ==========================================
CREATE VIEW EmployeeView
AS
SELECT
    EmployeeID,
    Name,
    Department
FROM Employees;
GO

-- ==========================================
-- View Data
-- ==========================================
SELECT * FROM EmployeeView;
GO

-- ==========================================
-- Create Another View
-- Employees with Salary > 60000
-- ==========================================
CREATE VIEW HighSalaryEmployees
AS
SELECT
    EmployeeID,
    Name,
    Department,
    Salary
FROM Employees
WHERE Salary > 60000;
GO

-- View High Salary Employees
SELECT * FROM HighSalaryEmployees;
GO

-- ==========================================
-- Create Department Summary View
-- ==========================================
CREATE VIEW DepartmentSummary
AS
SELECT
    Department,
    COUNT(*) AS TotalEmployees,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;
GO

-- View Department Summary
SELECT * FROM DepartmentSummary;
GO

-- ==========================================
-- List All Views
-- ==========================================
SELECT name
FROM sys.views;
GO

-- ==========================================
-- Drop a View (Example)
-- ==========================================
-- DROP VIEW HighSalaryEmployees;
-- GO