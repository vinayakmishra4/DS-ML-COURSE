use gfg;

-- 1. Finding the names of unique brands

select DISTINCT brand_name from prodcuts;

-- 2. Finding the number of unique brands

SELECT COUNT(DISTINCT brand_name) as total_unique_brands from products;

-- 3.Finding the number of products in each brands

SELECT brand_tag,count(product_tag) as no_products from products GROUP BY brand_tag;

-- 4.Finding the top 5 brand who has the most number of products | different product in their inventory

select brand_tag,count(product_tag) as products
from products
GROUP BY brand_tag
order by products
LIMIT 5;
