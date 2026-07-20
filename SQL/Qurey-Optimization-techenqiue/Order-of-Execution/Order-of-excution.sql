use gfg

/*===========================================================
  Topic: Analyzing Query Execution Plans
  Dataset: messy_indian_dataset
===========================================================*/

-- =========================================================
-- Query 1: Simple SELECT Statement
-- =========================================================
SELECT
    name,
    city
FROM messy_indian_dataset;


-- =========================================================
-- Query 2: SELECT with WHERE Clause
-- =========================================================
SELECT
    name,
    city,
    purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > 1000;


-- =========================================================
-- Query 3: SELECT with WHERE and ORDER BY Clauses
-- =========================================================
SELECT
    name,
    city,
    purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > 1000
ORDER BY purchase_amount DESC;


-- =========================================================
-- Query 4: SELECT with GROUP BY Clause
-- =========================================================
SELECT
    city,
    AVG(purchase_amount) AS avg_purchase
FROM messy_indian_dataset
GROUP BY city;


-- =========================================================
-- Query 5: SELECT with GROUP BY and HAVING Clauses
-- =========================================================
SELECT
    city,
    AVG(purchase_amount) AS avg_purchase
FROM messy_indian_dataset
GROUP BY city
HAVING AVG(purchase_amount) > 1000;


-- =========================================================
-- Query 6: SELECT with JOIN
-- Note: Requires a 'states' table with columns:
--       state, region
-- =========================================================
SELECT
    m.name,
    m.city,
    s.region
FROM messy_indian_dataset AS m
JOIN states AS s
    ON m.state = s.state;


-- =========================================================
-- Query 7: Nested SELECT (Subquery)
-- =========================================================
SELECT
    name,
    city,
    purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount >
(
    SELECT AVG(purchase_amount)
    FROM messy_indian_dataset
);