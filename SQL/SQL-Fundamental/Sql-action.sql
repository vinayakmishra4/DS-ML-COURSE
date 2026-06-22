-- SQL Practice Queries on Products Dataset

-- 1. Displaying the Dataset
SELECT * FROM products;

-- 2. Selecting Specific Columns
SELECT product_name, brand_name FROM products;

-- 3. Selecting Specific Columns in a Different Order
SELECT brand_name, product_name FROM products;

-- 4. Creating a New Column with Mathematical Functions (Discounted Amount)
SELECT product_name, brand_name, marked_price, discounted_price,
       marked_price - discounted_price AS discounted_amount
FROM products;

-- 5. Creating a New Column with Mathematical Functions (Rating Filter)
SELECT product_name, brand_name, rating, rating_count,
       rating * rating_count AS rating_filter
FROM products;

-- 6. Creating a New Column with Mathematical Functions (Discount Percentage)
SELECT product_name, brand_name, marked_price, discounted_price,
       ((marked_price - discounted_price) / marked_price) * 100 AS discounted_percent
FROM products;

-- 7. Finding Unique Values
SELECT DISTINCT(brand_name) AS unique_brands
FROM products;

-- 8. Adding a WHERE Clause
SELECT product_name, brand_name, marked_price, discounted_price
FROM products
WHERE brand_tag = 'Adidas';

-- 9. Using DISTINCT with WHERE (Unique Products Served by Adidas)
SELECT DISTINCT(product_tag), brand_name
FROM products
WHERE brand_tag = 'Adidas';

-- 10. Counting Distinct Values
SELECT COUNT(DISTINCT(product_tag))
FROM products
WHERE brand_tag = 'Adidas';

-- 11. Using Multiple Conditions with AND
SELECT product_name, brand_name, marked_price, discounted_price
FROM products
WHERE brand_tag = 'Adidas' AND discounted_price > 5000;

-- Show products with discounted_price between 5000 and 8000
SELECT product_name, brand_name, marked_price, discounted_price
FROM products
WHERE discounted_price BETWEEN 5000 AND 8000;

-- 12. Adding More Filters
SELECT product_name, brand_tag, marked_price, discounted_price
FROM products
WHERE (discounted_price BETWEEN 5000 AND 8000)
  AND brand_tag = 'Adidas'
  AND rating > 4
  AND rating_count > 10;

-- 13. Using OR Condition
SELECT product_name, product_tag, brand_tag, discounted_price
FROM products
WHERE (brand_tag = 'Adidas' OR brand_tag = 'Puma')
  AND discounted_price BETWEEN 3000 AND 5000;

-- 14. Using NOT Condition
SELECT product_name, product_tag, brand_tag, discounted_price
FROM products
WHERE NOT (brand_tag = 'Adidas' OR brand_tag = 'Puma')
  AND discounted_price BETWEEN 3000 AND 5000;

-- 15. Using IN Condition
SELECT product_name, product_tag, brand_tag, discounted_price
FROM products
WHERE brand_tag IN ('Adidas', 'Puma')
  AND discounted_price BETWEEN 3000 AND 5000;

-- 16. Using NOT IN Condition
SELECT product_name, product_tag, brand_tag, discounted_price
FROM products
WHERE brand_tag NOT IN ('Adidas', 'Puma')
  AND discounted_price BETWEEN 3000 AND 5000;
