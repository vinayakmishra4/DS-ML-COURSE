-- Employee Table
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

-- 1. Department-wise Average Salary
SELECT EmpID, EmpName, Department, Salary,
       AVG(Salary) OVER(PARTITION BY Department) AS AvgSalary
FROM Employee;

-- 2. Department-wise Total Salary
SELECT EmpID, EmpName, Department, Salary,
       SUM(Salary) OVER(PARTITION BY Department) AS TotalDeptSalary
FROM Employee;

-- 3. Company Total Salary
SELECT EmpID, EmpName, Department, Salary,
       SUM(Salary) OVER() AS CompanyTotalSalary
FROM Employee;

-- 4. Department-wise Highest Salary
SELECT EmpID, EmpName, Department, Salary,
       MAX(Salary) OVER(PARTITION BY Department) AS HighestSalary
FROM Employee;

-- 5. Department-wise Lowest Salary
SELECT EmpID, EmpName, Department, Salary,
       MIN(Salary) OVER(PARTITION BY Department) AS LowestSalary
FROM Employee;

-- 6. Number of Employees in Each Department
SELECT EmpID, EmpName, Department, Salary,
       COUNT(*) OVER(PARTITION BY Department) AS TotalEmployees
FROM Employee;

-- 7. Running Total of Salaries
SELECT EmpID, EmpName, Salary,
       SUM(Salary) OVER(ORDER BY Salary) AS RunningTotal
FROM Employee;

-- 8. Running Average Salary
SELECT EmpID, EmpName, Salary,
       AVG(Salary) OVER(ORDER BY Salary) AS RunningAverage
FROM Employee;

-- 9. Salary Difference from Department Average
SELECT EmpID, EmpName, Department, Salary,
       AVG(Salary) OVER(PARTITION BY Department) AS DepartmentAverage,
       Salary - AVG(Salary) OVER(PARTITION BY Department) AS SalaryDifference
FROM Employee;

-- 10. Salary Percentage of Company Total
SELECT EmpID, EmpName, Salary,
       Salary * 100.0 / SUM(Salary) OVER() AS SalaryPercentage
FROM Employee;
