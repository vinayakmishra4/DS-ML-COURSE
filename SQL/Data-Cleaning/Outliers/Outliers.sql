use gfg;

-- Handling outliers with help of Z-score

SELECT *, 
       ABS(purchase_amount - AVG(purchase_amount) OVER()) / STDDEV(purchase_amount) OVER() AS 'z_score'
FROM messy_indian_dataset;

-- Remove the outliers from z score

SELECT * FROM
(
    SELECT *, 
           ABS(purchase_amount - AVG(purchase_amount) OVER()) / STDDEV(purchase_amount) OVER() AS 'z_score'
    FROM messy_indian_dataset
) AS sub_table 
WHERE sub_table.z_score < 3
;
