use gfg;

-- Handling outliers with help of Z-score

SELECT *, 
       ABS(purchase_amount - AVG(purchase_amount) OVER()) / STDDEV(purchase_amount) OVER() AS 'z_score'
FROM messy_indian_dataset;
