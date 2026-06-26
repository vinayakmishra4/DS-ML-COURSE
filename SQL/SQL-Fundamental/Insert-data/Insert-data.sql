use test

-- insert data into multiple rows

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Age)
VALUES
(1, 'John', 'Doe', 'HR', 28),
(2, 'Jane', 'Smith', 'Finance', 32),
(3, 'Michael', 'Johnson', 'IT', 26),
(4, 'Emily', 'Brown', 'Marketing', 30),
(5, 'David', 'Wilson', 'Sales', 35),
(6, 'Sarah', 'Taylor', 'HR', 29),
(7, 'James', 'Anderson', 'IT', 31),
(8, 'Olivia', 'Thomas', 'Finance', 27),
(9, 'Daniel', 'Jackson', 'Marketing', 33),
(10, 'Sophia', 'White', 'Sales', 25);

-- insert data single row

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Age)
VALUES (11, 'Robert', 'Miller', 'Operations', 34);

-- insertation in differnet order

INSERT INTO Employees (FirstName, LastName, Age, Department, EmployeeID)
VALUES ('Emma', 'Davis', 29, 'IT', 12); 

select *from employees;

