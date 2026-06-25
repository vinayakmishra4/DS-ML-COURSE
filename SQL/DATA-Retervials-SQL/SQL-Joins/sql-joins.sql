-- SQL JOINS ON TWO TABLES

-- TABLE 1:-

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY, -- Primary Key
    EmployeeName VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- TABLE 2:-

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    EmployeeID INT NOT NULL UNIQUE,
    CONSTRAINT FK_Departments_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


-- INNER JION 

-- Display employee names and salary along with their department names

select Employees.EmployeeName as Name,Departments.DepartmentName as department,Employees.Salary as Salary
from Employees
INNER JOIN Departments ON Employees.EmployeeID=Departments.EmployeeID;



