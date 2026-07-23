use gfg;


-- Normal Qurey

SELECT id, name, city, purchase_amount
FROM messy_indian_dataset
WHERE city = 'Mumbai' AND purchase_amount > 1000 AND gender = 'Male';

-- Using CTE

WITH MumbaiHighSpenders AS (
    SELECT id, name, city, purchase_amount
    FROM messy_indian_dataset
    WHERE city = 'Mumbai' AND purchase_amount > 1000 AND gender = 'Male'
)
SELECT id, name, city, purchase_amount
FROM MumbaiHighSpenders;