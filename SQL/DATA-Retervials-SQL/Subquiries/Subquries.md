# 📘 Subqueries

Subqueries are one of the most powerful features in SQL. They allow you to break complex problems into smaller, manageable parts by embedding one query inside another. This technique makes it easier to filter data, perform calculations, and generate advanced reports without relying on multiple separate queries.

---

## 🎯 What is a Subquery?

A **subquery** (also called an **inner query** or **nested query**) is a query placed inside another SQL query.

The result produced by the subquery is used by the outer query to perform additional operations such as filtering, comparison, aggregation, or data transformation.

### Key Characteristics

* Executes before the outer query.
* Can return a single value, a single row, or multiple rows.
* Can be used in different clauses such as:

  * `SELECT`
  * `FROM`
  * `WHERE`
  * `HAVING`

---

# 🏷️ Types of Subqueries

## 1️⃣ Single-Row Subqueries

A **single-row subquery** returns exactly one row.

### Common Use Cases

* Finding maximum or minimum values
* Comparing a value against a single result
* Retrieving records based on aggregate calculations

### Characteristics

* Returns one row.
* Commonly used with comparison operators:

  * `=`
  * `>`
  * `<`
  * `>=`
  * `<=`

---

## 2️⃣ Multi-Row Subqueries

A **multi-row subquery** returns multiple rows of data.

### Common Use Cases

* Matching records from a list of values
* Category-based filtering
* Brand-level analysis

### Characteristics

* Returns multiple rows.
* Commonly used with:

  * `IN`
  * `ANY`
  * `ALL`

---

## 3️⃣ Scalar Subqueries

A **scalar subquery** returns a single value.

### Common Use Cases

* Comparing values against averages
* Displaying calculated metrics
* Adding dynamic values to result sets

### Characteristics

* Returns only one value.
* Can be used wherever a single value is expected.

---

## 4️⃣ Correlated Subqueries

A **correlated subquery** depends on values from the outer query.

### Common Use Cases

* Category-wise comparisons
* Department-wise analysis
* Row-by-row calculations

### Characteristics

* Executes once for every row processed by the outer query.
* References columns from the outer query.

---

# 📊 Dataset Overview

Consider a **Products** dataset containing the following attributes:

| Column       | Description                |
| ------------ | -------------------------- |
| product_id   | Unique product identifier  |
| product_name | Name of the product        |
| brand_name   | Product brand              |
| category     | Product category           |
| price        | Product price              |
| discount     | Discount percentage        |
| rating       | Product rating             |
| rating_count | Number of ratings received |

---

# 🌟 Common Uses of Subqueries

### 📈 Calculate Overall Statistics

* Average rating
* Average price
* Maximum price
* Minimum price

### 🔍 Compare Records Against Aggregates

* Products priced above average
* Products rated above average
* Highest-priced products

### 🏢 Brand-Level Analysis

* Total ratings for each brand
* Average product prices by brand
* Brand performance comparisons

### 📂 Category-Level Analysis

* Products priced higher than the category average
* Best-performing products within a category
* Category-wise trend analysis

---

# 📚 Practical Subquery Scenarios

## Finding Products Above Average Performance

A subquery can calculate an overall metric such as average rating or average price, and the outer query can identify products that exceed that benchmark.

### Benefits

* Dynamic filtering
* No hardcoded values
* Automatically adapts as data changes

---

## Finding Products from Premium Brands

Subqueries can identify brands that meet specific conditions and then retrieve all products belonging to those brands.

### Benefits

* Brand segmentation
* Market analysis
* Product categorization

---

## Comparing Products Within Their Category

Correlated subqueries allow each product to be compared against the average performance of its own category.

### Benefits

* Fair comparisons
* Category-specific insights
* Advanced analytics

---

## Calculating Relative Product Value

Subqueries can help determine how a product compares to top-performing products by calculating percentages and relative measures.

### Benefits

* Benchmarking
* Performance tracking
* Business reporting

---

# ✅ Advantages of Using Subqueries

* Improves query readability.
* Simplifies complex logic.
* Enables dynamic calculations.
* Supports advanced filtering techniques.
* Reduces the need for temporary tables.
* Helps create powerful analytical reports.

---

# ⚠️ Considerations

* Deeply nested subqueries can reduce readability.
* Correlated subqueries may impact performance on large datasets.
* In some cases, joins or CTEs may provide more efficient alternatives.

---

# 🎯 Conclusion

Subqueries are an essential SQL feature that enables complex data retrieval and analysis by nesting queries within other queries. Whether you're calculating averages, comparing records, analyzing categories, or generating reports, mastering subqueries will significantly enhance your SQL skills and help you write more flexible and efficient database queries.

---

## 📂 SQL Code Reference

For complete query implementations and hands-on examples, see:

🔗 **[View Complete SQL Code](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/DATA-Retervials-SQL/Subquiries/Subquries.sql)**

---

⭐ If you found this guide useful, consider exploring the SQL code examples to reinforce the concepts with practical implementations.
