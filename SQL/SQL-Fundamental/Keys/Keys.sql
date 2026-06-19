

-- =============================================
-- SQL KEYS EXAMPLES
-- Each section demonstrates a different key type
-- =============================================

-- =====================================================
-- 1. PRIMARY KEY
-- A Primary Key uniquely identifies each row.
-- =====================================================
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY, -- Primary Key
    EmployeeName VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- =====================================================
-- 2. CANDIDATE KEY
-- Candidate Keys are columns that can uniquely identify a row.
-- CustomerID, Email, and MobileNo are all candidate keys.
-- CustomerID is chosen as the Primary Key.
-- =====================================================
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY, -- Candidate Key selected as Primary Key
    Email VARCHAR(100) UNIQUE,  -- Candidate Key
    MobileNo VARCHAR(15) UNIQUE, -- Candidate Key
    CustomerName VARCHAR(50)
);

-- =====================================================
-- 3. ALTERNATE KEY
-- Candidate Keys not chosen as the Primary Key.
-- PassportNo and Email are Alternate Keys.
-- =====================================================
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    PassportNo VARCHAR(20) UNIQUE, -- Alternate Key
    Email VARCHAR(100) UNIQUE,     -- Alternate Key
    PassengerName VARCHAR(50)
);

-- =====================================================
-- 4. SUPER KEY
-- Super Key is a concept, not a SQL constraint.
-- Examples:
-- (BookID)
-- (ISBN)
-- (BookID, Title)
-- (BookID, ISBN)
-- =====================================================
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    ISBN VARCHAR(20) UNIQUE,
    Title VARCHAR(100)
);

-- =====================================================
-- 5. UNIQUE KEY
-- Unique Key prevents duplicate values.
-- =====================================================
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE, -- Unique Key
    Email VARCHAR(100),
    Password VARCHAR(50)
);

-- =====================================================
-- 6. FOREIGN KEY
-- Foreign Key creates a relationship between tables.
-- =====================================================
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,

    CONSTRAINT FK_Employee_Department
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);

-- =====================================================
-- 7. COMPOSITE KEY
-- Composite Key uses multiple columns together
-- as a Primary Key.
-- =====================================================
CREATE TABLE StudentCourses (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,

    PRIMARY KEY (StudentID, CourseID) -- Composite Key
);

-- =====================================================
-- 8. NATURAL KEY
-- Natural Key is a real-world meaningful identifier.
-- VehicleNumber naturally identifies a vehicle.
-- =====================================================
CREATE TABLE Vehicles (
    VehicleNumber VARCHAR(15) PRIMARY KEY, -- Natural Key
    OwnerName VARCHAR(50),
    Model VARCHAR(50)
);

-- =====================================================
-- 9. SURROGATE KEY
-- Surrogate Key is an artificial key generated
-- by the database.
-- Example shown using MySQL AUTO_INCREMENT.
-- =====================================================
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY, -- Surrogate Key
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);
