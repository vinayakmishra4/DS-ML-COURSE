use gfg;

-- Alter the table to add a new column

-- Add a new column to the table to store the extracted day, month, and year values from the purchase_date column

ALTER TABLE messy_indian_dataset
Add COLUMN day int,
add COLUMN month int,
add COLUMN year int;

-- add a new column to the table to store the extracted day of the week values from the purchase_date column

ALTER TABLE messy_indian_dataset
    ADD COLUMN day_of_week VARCHAR(10);


alter table messy_indian_dataset

-- Adding a Column for Month Name 

ALTER TABLE messy_indian_dataset
    ADD COLUMN month_name VARCHAR(10);

-- Update the new columns with the extracted values


-- update the day, month, and year columns with the extracted values from the date column

UPDATE messy_indian_dataset
SET day = DAY(purchase_date),
    month = MONTH(purchase_date),
    year = YEAR(purchase_date);

SELECT * FROM messy_indian_dataset;

-- update the day_of_week column with the extracted values from the date column

UPDATE messy_indian_dataset
    SET day_of_week = DAYNAME(purchase_date);
    
SELECT * FROM messy_indian_dataset;

-- update the month_name column with the extracted values from the date column 

UPDATE messy_indian_dataset
    SET month_name = MONTHNAME(purchase_date);

select * from messy_indian_dataset;


