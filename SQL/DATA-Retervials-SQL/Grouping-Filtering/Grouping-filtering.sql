USE gfg;

-- 1. Finding the names of unique brands

SELECT DISTINCT brand_name
FROM products;

-- 2. Finding the number of unique brands

SELECT COUNT(DISTINCT brand_name) AS total_unique_brands
FROM products;

-- 3. Finding the number of products in each brand

SELECT brand_tag,
       COUNT(product_tag) AS no_products
FROM products
GROUP BY brand_tag;

-- 4. Finding the top 5 brands that have the most unique products

SELECT brand_tag,
       COUNT(DISTINCT product_tag) AS products
FROM products
GROUP BY brand_tag
ORDER BY products DESC
LIMIT 5;

-- 5. Finding the top 5 brands that sold the most products
-- Assuming rating_count represents number of sales/reviews

SELECT brand_tag,
       SUM(rating_count) AS products_sold
FROM products
GROUP BY brand_tag
ORDER BY products_sold DESC
LIMIT 5;

-- 6. Finding the top 5 most expensive brands based on average discounted price

SELECT brand_tag,
       ROUND(AVG(discounted_price), 2) AS avg_discounted_price
FROM products
GROUP BY brand_tag
ORDER BY avg_discounted_price DESC
LIMIT 5;

-- 7. Finding the top 5 least expensive brands based on average discounted price

SELECT brand_tag,
       ROUND(AVG(discounted_price), 2) AS avg_discounted_price
FROM products
GROUP BY brand_tag
ORDER BY avg_discounted_price ASC
LIMIT 5;

-- 8. Finding the top 10 best-selling product categories
-- Assuming rating_count indicates sales popularity

SELECT product_tag,
       SUM(rating_count) AS total_sales
FROM products
GROUP BY product_tag
ORDER BY total_sales DESC
LIMIT 10;

-- 9. Finding the top 10 brands giving the maximum discount
-- Assuming discount_percentage exists

SELECT brand_tag,
       AVG(discount_percentage) AS average_discount
FROM products
GROUP BY brand_tag
ORDER BY average_discount DESC
LIMIT 10;

-- If discount_percentage does not exist and only original_price
-- and discounted_price are available:

SELECT brand_tag,
       AVG(original_price - discounted_price) AS average_discount
FROM products
GROUP BY brand_tag
ORDER BY average_discount DESC
LIMIT 10;

-- 10. Finding the top 5 most expensive product categories

SELECT product_tag,
       AVG(discounted_price) AS avg_price
FROM products
GROUP BY product_tag
ORDER BY avg_price DESC
LIMIT 5;