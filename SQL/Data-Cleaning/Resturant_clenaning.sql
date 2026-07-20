use gfg;

-- CLEANING THE DATASET

select *from restaurants;

-- ==========================================
-- Step 1: Explore the Dataset and Extract Restaurant ID
-- ==========================================

SELECT *,
       SUBSTRING_INDEX(link, '-', -1) AS id
FROM restaurants;


-- ==========================================
-- Step 2: Create rest_1 with Extracted Restaurant ID
-- ==========================================

DROP TABLE IF EXISTS rest_1;

CREATE TABLE rest_1 AS
SELECT *,
       SUBSTRING_INDEX(link, '-', -1) AS new_id
FROM restaurants;

SELECT * FROM rest_1;


-- ==========================================
-- Step 3: Clean Restaurant Names
-- Convert names to lowercase and remove spaces
-- ==========================================

DROP TABLE IF EXISTS rest_2;

CREATE TABLE rest_2 AS
SELECT *,
       LOWER(TRIM(name)) AS new_name
FROM rest_1;

SELECT * FROM rest_2;


-- ==========================================
-- Step 4: Clean City and Cuisine Columns
-- ==========================================

DROP TABLE IF EXISTS rest_3;

CREATE TABLE rest_3 AS
SELECT
    new_id,
    new_name,
    LOWER(TRIM(city)) AS clean_city,
    rating,
    rating_count,
    LOWER(TRIM(cuisine)) AS clean_cuisine,
    cost
FROM rest_2;

SELECT * FROM rest_3;


-- ==========================================
-- Step 5: Remove Unwanted Cuisine Values
-- ==========================================

DROP TABLE IF EXISTS rest_4;

CREATE TABLE rest_4 AS
SELECT
    new_id,
    new_name,
    clean_city,
    rating,
    rating_count,
    clean_cuisine,
    cost
FROM rest_3
WHERE clean_cuisine NOT IN (
    'combo',
    'na',
    'discount offer from garden cafe express kankurgachi',
    'svanidhi street food vendor',
    'tex-mex',
    'special discount from (hotel swagath)',
    'free delivery ! limited stocks!'
);

SELECT * FROM rest_4;


-- ==========================================
-- Step 6: Remove Temporary Tables
-- ==========================================

DROP TABLE IF EXISTS rest_1;
DROP TABLE IF EXISTS rest_2;
DROP TABLE IF EXISTS rest_3;


-- ==========================================
-- Final Cleaned Dataset
-- ==========================================

SELECT * FROM rest_4;