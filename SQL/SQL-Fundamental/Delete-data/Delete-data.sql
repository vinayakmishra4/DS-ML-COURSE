-- Deleting Based on person_id

-- single row

DELETE FROM employees
WHERE employee_id = 1;

-- Multiple row

DELETE FROM employees
WHERE employee_id IN (2, 3, 4);

-- Deleting Based on last_name Pattern

DELETE FROM employees WHERE last_name LIKE 'S%';
DELETE FROM employees WHERE last_name LIKE '%son';
DELETE FROM employees WHERE last_name LIKE '%ar%';
DELETE FROM employees WHERE last_name LIKE '_____';
DELETE FROM employees WHERE last_name LIKE '_o%';
DELETE FROM employees WHERE last_name NOT LIKE 'M%';
DELETE FROM employees WHERE LOWER(last_name) LIKE '%smith%';
DELETE FROM employees WHERE last_name REGEXP '^A';
DELETE FROM employees WHERE last_name REGEXP 'son$';
DELETE FROM employees WHERE last_name REGEXP '[aeiou]';

