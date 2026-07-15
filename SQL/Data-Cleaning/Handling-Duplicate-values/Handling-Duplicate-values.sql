use gfg;

-- Handling Missing Values

-- Finding the unqiue values using ID Colummn

select distinct id
from messy_indian_dataset;

-- finding the unqiue values using name column

select distinct name
from messy_indian_dataset;

-- Find the unqiue values using the Rank colummns

SELECT id, name, age, gender, email, phone_number, city, state, purchase_amount, purchase_date 
FROM (
    SELECT *, ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) AS 'rank' 
    FROM messy_indian_dataset
) AS subtable
WHERE subtable.rank = 1;