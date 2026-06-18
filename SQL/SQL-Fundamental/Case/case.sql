-- this singple query uses a CASE statement to categorize employees based on their department. If the department is 'IT', it labels them as 'IT Team'; otherwise, it labels them as 'Other'. The result will display the employee's name along with their corresponding department group.


SELECT 
    name,
    CASE department
        WHEN 'IT' THEN 'IT Team'
        ELSE 'Other'
    END AS department_group
FROM employees;

-- the multiple CASE statements can be used to categorize employees based on their salary. If the salary is greater than 100000, it labels them as 'High Salary'; if the salary is between 50000 and 100000, it labels them as 'Medium Salary'; otherwise, it labels them as 'Low Salary'. The result will display the employee's name along with their corresponding salary group.

SELECT 
    name,
    CASE 
        WHEN salary > 100000 THEN 'High Salary'
        WHEN salary BETWEEN 50000 AND 100000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_group
FROM employees;


