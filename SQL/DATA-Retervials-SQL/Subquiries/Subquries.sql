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

-- 3. Correlated Subquery

SELECT e1.name
FROM Employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees e2
    WHERE e2.department_id = e1.department_id
);

-- 4.Scalar Subquery



