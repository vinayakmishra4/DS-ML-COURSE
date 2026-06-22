-- Update Based on Primary Key

UPDATE employees
SET salary = 65000.00
WHERE employee_id = 5;

-- Update Based on Last Name

UPDATE employees
SET job_title = 'Senior Project Manager'
WHERE last_name = 'Smith';

-- Update all the salary above 90000

UPDATE employees
SET salary = 90000
WHERE salary > 90000;

-- Update Multiple Values in One Go

UPDATE employees
SET
    first_name = 'Jonathan',
    last_name = 'Doe',
    email = 'jonathan.doe@example.com',
    job_title = 'Senior Software Engineer',
    salary = 85000.00
WHERE employee_id = 1;
