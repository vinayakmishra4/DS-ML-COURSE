# 💾 Saving Tables in SQL

Saving tables in SQL allows structured query results to be stored for future use, reporting, and analysis. By creating **permanent** and **temporary** tables, complex queries can be simplified, data can be organized efficiently, and repeated computations can be avoided.

📂 **Source Code:** [Saving.sql](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Saving/Saving.sql)

---

## 📌 1. Create a Table for Sirsa Restaurants

Create a new table named **`sirsa_restaurants`** containing only the restaurants located in **Sirsa**.

```sql
CREATE TABLE IF NOT EXISTS sirsa_restaurants AS
SELECT *
FROM restaurants
WHERE city = 'sirsa';

SELECT * FROM sirsa_restaurants;
```

> ✅ **Purpose:** Stores only Sirsa restaurants for faster access and analysis.

---

## 📌 2. Create a Table with City Statistics

Create a table named **`city_statistics`** containing the average rating and number of restaurants in each city.

```sql
CREATE TABLE IF NOT EXISTS city_statistics AS
SELECT
    city,
    AVG(rating) AS avg_rating,
    COUNT(*) AS num_of_restaurants
FROM restaurants
GROUP BY city;

SELECT * FROM city_statistics;
```

> ✅ **Purpose:** Provides city-wise summary statistics for reporting.

---

## 📌 3. Create a Table of Expensive Restaurants

Store restaurants whose cost is greater than **500**.

```sql
CREATE TABLE IF NOT EXISTS expensive_restaurants AS
SELECT *
FROM restaurants
WHERE cost > 500;

SELECT * FROM expensive_restaurants;
```

> ✅ **Purpose:** Separates premium restaurants for targeted analysis.

---

## 📌 4. Using Aliases for Better Readability

Aliases make SQL queries shorter, cleaner, and easier to maintain.

```sql
SELECT
    rest.city,
    AVG(rest.cost) AS avg_cost
FROM restaurants AS rest
GROUP BY rest.city;
```

> 💡 **Alias Used:** `rest` → `restaurants`

---

## 📌 5. Filter Data Using a Subquery

Retrieve restaurants whose rating is **above the average rating of their city**.

```sql
SELECT rest.*
FROM restaurants AS rest
WHERE rest.rating >
(
    SELECT AVG(rating)
    FROM restaurants
    WHERE city = rest.city
);
```

> ✅ **Purpose:** Finds restaurants that perform better than the average in their respective cities.

---

## 📌 6. Create a Temporary Table

Temporary tables exist only for the current database session.

```sql
CREATE TEMPORARY TABLE temp_restaurants AS
SELECT *
FROM restaurants;

SELECT * FROM temp_restaurants;
```

> ⚡ **Note:** Temporary tables are automatically removed when the session ends.

---

## 📌 7. Aggregate Data in a Temporary Table

Store city-level statistics in a temporary table.

```sql
CREATE TEMPORARY TABLE temp_city_statistics AS
SELECT
    city,
    AVG(rating) AS avg_rating,
    COUNT(*) AS num_of_restaurants
FROM restaurants
GROUP BY city;

SELECT * FROM temp_city_statistics;
```

> ✅ **Purpose:** Perform quick statistical analysis without affecting the original database.

---

# 📖 Key Takeaways

| Concept                | Description                                                               |
| ---------------------- | ------------------------------------------------------------------------- |
| 🗂️ Permanent Table    | Stored permanently until dropped.                                         |
| ⏳ Temporary Table      | Exists only during the current session.                                   |
| 🏷️ Alias              | Improves readability by assigning short names to tables.                  |
| 🔍 Subquery            | Uses the result of one query inside another query.                        |
| 📊 Aggregate Functions | `AVG()`, `COUNT()`, `SUM()`, `MAX()`, `MIN()` summarize data efficiently. |

---

## 🎯 Summary

* Save query results into **permanent tables** using `CREATE TABLE AS`.
* Use **temporary tables** for intermediate calculations.
* Improve readability with **table aliases**.
* Filter records dynamically using **subqueries**.
* Aggregate data with functions like `AVG()` and `COUNT()` for reporting.

---

⭐ If you found this helpful, consider giving the repository a star on GitHub!
