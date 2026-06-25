-- SQL JOINS ON TWO TABLES

-- TABLE 1: Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- TABLE 2: Departments
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    EmployeeID INT NOT NULL UNIQUE,
    CONSTRAINT FK_Departments_Employees
        FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID)
);

-- INNER JOIN
-- Display employee names and salary along with their department names
SELECT Employees.EmployeeName AS Name,
       Departments.DepartmentName AS Department,
       Employees.Salary AS Salary
FROM Employees
INNER JOIN Departments
ON Employees.EmployeeID = Departments.EmployeeID;

-- LEFT JOIN
-- Display all employees and their department names (if assigned)
SELECT Employees.EmployeeName AS Name,
       Departments.DepartmentName AS Department,
       Employees.Salary AS Salary
FROM Employees
LEFT JOIN Departments
ON Employees.EmployeeID = Departments.EmployeeID;

-- RIGHT JOIN
-- Display all departments and their corresponding employee names
SELECT Employees.EmployeeName AS Name,
       Departments.DepartmentName AS Department,
       Employees.Salary AS Salary
FROM Employees
RIGHT JOIN Departments
ON Employees.EmployeeID = Departments.EmployeeID;
