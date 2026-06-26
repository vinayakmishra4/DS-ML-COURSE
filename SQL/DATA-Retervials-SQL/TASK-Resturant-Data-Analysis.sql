-- ============================================================
-- SWIGGY RESTAURANT DATA ANALYSIS
-- ============================================================

-- Create the database for swiggy
IF DB_ID('swiggy') IS NULL
    CREATE DATABASE swiggy;
GO

USE swiggy;
GO

-- Import the CSV file into the database (do this via SSMS Import Wizard
-- or BULK INSERT before running the queries below)

SELECT * FROM restaurants;


-- 1. Which restaurant of Abohar is visited by the least number of people?
SELECT TOP 1
    restaurant_name,
    city,
    votes
FROM restaurants
WHERE city = 'Abohar'
ORDER BY votes ASC;


-- 2. Which restaurant has generated maximum revenue all over India?
SELECT TOP 1
    restaurant_name,
    city,
    revenue
FROM restaurants
ORDER BY revenue DESC;


-- 3. How many restaurants have a rating more than the average rating?
SELECT
    COUNT(*) AS restaurants_above_avg_rating
FROM restaurants
WHERE rating > (SELECT AVG(rating) FROM restaurants);


-- 4. Which restaurant of Delhi has generated the most revenue?
SELECT TOP 1
    restaurant_name,
    city,
    revenue
FROM restaurants
WHERE city = 'Delhi'
ORDER BY revenue DESC;


-- 5. Which restaurant chain has the maximum number of restaurants?
SELECT TOP 1
    restaurant_chain,
    COUNT(*) AS num_outlets
FROM restaurants
GROUP BY restaurant_chain
ORDER BY num_outlets DESC;


-- 6. Which restaurant chain has generated the maximum revenue?
SELECT TOP 1
    restaurant_chain,
    SUM(revenue) AS total_revenue
FROM restaurants
GROUP BY restaurant_chain
ORDER BY total_revenue DESC;


-- 7. Which city has the maximum number of restaurants?
SELECT TOP 1
    city,
    COUNT(*) AS num_restaurants
FROM restaurants
GROUP BY city
ORDER BY num_restaurants DESC;


-- 8. Which city has generated the maximum revenue all over India?
SELECT TOP 1
    city,
    SUM(revenue) AS total_revenue
FROM restaurants
GROUP BY city
ORDER BY total_revenue DESC;


-- 9. List the 10 least expensive cuisines
--    (interpreted as: average cost-for-two/price per cuisine, lowest first)
-- NOTE: this assumes a 'cost' or 'average_cost' column exists.
-- If your table uses a different name (e.g. price_for_two), swap it in below.
SELECT TOP 10
    cuisine,
    AVG(average_cost) AS avg_cost
FROM restaurants
GROUP BY cuisine
ORDER BY avg_cost ASC;


-- 10. List the 10 most expensive cuisines
SELECT TOP 10
    cuisine,
    AVG(average_cost) AS avg_cost
FROM restaurants
GROUP BY cuisine
ORDER BY avg_cost DESC;


-- 11. Which city has Biryani as its most popular cuisine?
--     "Most popular" interpreted as the city with the highest count of
--     Biryani-serving restaurants (alternatively, highest votes for Biryani).
SELECT TOP 1
    city,
    COUNT(*) AS biryani_restaurant_count
FROM restaurants
WHERE cuisine LIKE '%Biryani%'
GROUP BY city
ORDER BY biryani_restaurant_count DESC;

-- Alternative version, if "popular" should mean highest total votes:
-- SELECT TOP 1
--     city,
--     SUM(votes) AS total_biryani_votes
-- FROM restaurants
-- WHERE cuisine LIKE '%Biryani%'
-- GROUP BY city
-- ORDER BY total_biryani_votes DESC;


-- 12. Top 10 unique restaurants (by name, appearing only once in the
--     dataset i.e. not a chain) ranked by maximum revenue generated
SELECT TOP 10
    restaurant_name,
    city,
    revenue
FROM restaurants
WHERE restaurant_name IN (
    SELECT restaurant_name
    FROM restaurants
    GROUP BY restaurant_name
    HAVING COUNT(*) = 1          -- name appears exactly once in the whole dataset
)
ORDER BY revenue DESC;