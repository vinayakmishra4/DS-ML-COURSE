-- ============================================
-- DATA CLEANING USING SQL
-- Dataset: Messay Indian Dataset
-- ============================================

-- View Original Dataset
SELECT * FROM messay_indian_dataset;

-- ============================================
-- STEP 1: REMOVE DUPLICATES
-- ============================================

DROP TABLE IF EXISTS messay_indian_dataset_cleaned;

CREATE TABLE messay_indian_dataset_cleaned AS
SELECT DISTINCT *
FROM messay_indian_dataset;

-- Verify duplicates removed
SELECT COUNT(*) AS Total_Rows
FROM messay_indian_dataset_cleaned;

-- ============================================
-- STEP 2: HANDLE MISSING VALUES
-- ============================================

-- Replace blank values with NULL

UPDATE messay_indian_dataset_cleaned
SET
    name = NULLIF(TRIM(name), ''),
    gender = NULLIF(TRIM(gender), ''),
    city = NULLIF(TRIM(city), ''),
    state = NULLIF(TRIM(state), ''),
    email = NULLIF(TRIM(email), ''),
    phone = NULLIF(TRIM(phone), '');

-- Fill missing city

UPDATE messay_indian_dataset_cleaned
SET city = 'Unknown'
WHERE city IS NULL;

-- Fill missing state

UPDATE messay_indian_dataset_cleaned
SET state = 'Unknown'
WHERE state IS NULL;

-- Fill missing gender

UPDATE messay_indian_dataset_cleaned
SET gender = 'Other'
WHERE gender IS NULL;

-- Fill missing salary with average salary

UPDATE messay_indian_dataset_cleaned
SET salary = (
    SELECT ROUND(AVG(salary),2)
    FROM messay_indian_dataset_cleaned
)
WHERE salary IS NULL;

-- ============================================
-- STEP 3: STANDARDIZE DATA FORMATS
-- ============================================

-- Remove leading/trailing spaces

UPDATE messay_indian_dataset_cleaned
SET
    name = TRIM(name),
    city = TRIM(city),
    state = TRIM(state),
    email = TRIM(email);

-- Convert names to Proper Case (MySQL example)

UPDATE messay_indian_dataset_cleaned
SET name = CONCAT(
        UPPER(LEFT(name,1)),
        LOWER(SUBSTRING(name,2))
    );

-- Convert email to lowercase

UPDATE messay_indian_dataset_cleaned
SET email = LOWER(email);

-- Standardize phone numbers
-- Remove spaces, dashes and brackets

UPDATE messay_indian_dataset_cleaned
SET phone = REPLACE(phone,' ','');

UPDATE messay_indian_dataset_cleaned
SET phone = REPLACE(phone,'-','');

UPDATE messay_indian_dataset_cleaned
SET phone = REPLACE(phone,'(','');

UPDATE messay_indian_dataset_cleaned
SET phone = REPLACE(phone,')','');

-- Standardize date format
-- (If joining_date is VARCHAR)

UPDATE messay_indian_dataset_cleaned
SET joining_date = STR_TO_DATE(joining_date,'%d-%m-%Y')
WHERE joining_date IS NOT NULL;

-- ============================================
-- STEP 4: CORRECT DATA CONSISTENCY ISSUES
-- ============================================

-- Standardize Gender

UPDATE messay_indian_dataset_cleaned
SET gender = 'Male'
WHERE LOWER(gender) IN ('m','male');

UPDATE messay_indian_dataset_cleaned
SET gender = 'Female'
WHERE LOWER(gender) IN ('f','female');

UPDATE messay_indian_dataset_cleaned
SET gender = 'Other'
WHERE LOWER(gender) IN ('other','o');

-- Standardize State Names

UPDATE messay_indian_dataset_cleaned
SET state = 'Maharashtra'
WHERE LOWER(state) IN ('maharastra','mh','maha');

UPDATE messay_indian_dataset_cleaned
SET state = 'Karnataka'
WHERE LOWER(state) IN ('karnatak','ka');

UPDATE messay_indian_dataset_cleaned
SET state = 'Delhi'
WHERE LOWER(state) IN ('new delhi','delhi ncr');

UPDATE messay_indian_dataset_cleaned
SET state = 'Tamil Nadu'
WHERE LOWER(state) IN ('tamilnadu','tn');

-- Standardize City Names

UPDATE messay_indian_dataset_cleaned
SET city = 'Mumbai'
WHERE LOWER(city) IN ('bombay','mumbai city');

UPDATE messay_indian_dataset_cleaned
SET city = 'Bengaluru'
WHERE LOWER(city) IN ('bangalore','bengaluru city');

UPDATE messay_indian_dataset_cleaned
SET city = 'Chennai'
WHERE LOWER(city) IN ('madras');

UPDATE messay_indian_dataset_cleaned
SET city = 'Kolkata'
WHERE LOWER(city) IN ('calcutta');

-- Remove duplicate spaces from names

UPDATE messay_indian_dataset_cleaned
SET name = REPLACE(name,'  ',' ');

-- ============================================
-- CHECK CLEANED DATA
-- ============================================

SELECT *
FROM messay_indian_dataset_cleaned;

-- Count Missing Values

SELECT
SUM(name IS NULL) AS Missing_Name,
SUM(gender IS NULL) AS Missing_Gender,
SUM(city IS NULL) AS Missing_City,
SUM(state IS NULL) AS Missing_State,
SUM(email IS NULL) AS Missing_Email,
SUM(phone IS NULL) AS Missing_Phone,
SUM(salary IS NULL) AS Missing_Salary
FROM messay_indian_dataset_cleaned;

-- Total Records

SELECT COUNT(*) AS Total_Cleaned_Records
FROM messay_indian_dataset_cleaned;