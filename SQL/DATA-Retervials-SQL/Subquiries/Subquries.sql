-- 1. Single Row Subquries

SELECT name
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);

-- 2. Multiple Row Subquires

SELECT name
FROM Employees
WHERE department_id IN (
    SELECT department_id
    FROM Departments
    WHERE location = 'Delhi'
);