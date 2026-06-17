# 📊 Data Retrieval with SQL

> **Learn how to retrieve, filter, sort, and manage data using SQL's powerful `SELECT` statement.**

![SQL](https://img.shields.io/badge/SQL-Data%20Retrieval-blue)
![Database](https://img.shields.io/badge/Database-MySQL-orange)
![Beginner Friendly](https://img.shields.io/badge/Level-Beginner-green)

---

## 📖 Table of Contents

* [Introduction](#-introduction)
* [Basic Data Retrieval](#-1-basic-data-retrieval)
* [Selecting Specific Columns](#-2-selecting-specific-columns)
* [Using Aliases](#-3-using-aliases)
* [Filtering Data with WHERE](#-4-filtering-data-with-where-clause)
* [Using IN and NOT IN](#-5-filtering-data-with-in-and-not-in)
* [Multiple Conditions](#-6-using-multiple-conditions-with-and-and-or)
* [Comparison Operators](#-7-using-comparison-operators)
* [Sorting Data](#-8-sorting-data-with-order-by)
* [Multiple Column Sorting](#-9-multiple-column-sorting)
* [LIMIT and OFFSET](#-10-using-limit-and-offset)
* [Saving Queries in MySQL Workbench](#-11-saving-sql-queries-in-mysql-workbench)
* [Key Takeaways](#-key-takeaways)

---

# 🚀 Introduction

Data retrieval is one of the most important tasks in SQL. The **`SELECT`** statement allows us to fetch data from database tables efficiently.

### Basic Syntax

```sql
SELECT column1, column2, ...
FROM table_name;
```

---

# 📋 Employee Table Example

We will use the following `employees` table throughout this guide:

| Employee ID | First Name | Age | Department |
| ----------- | ---------- | --- | ---------- |
| 1           | John Doe   | 28  | HR         |
| 2           | Jane Smith | 34  | Finance    |
| 3           | Jim Brown  | 25  | IT         |
| 4           | Jake White | 30  | Marketing  |
| 5           | Jill Black | 29  | IT         |

---

# 🔹 1. Basic Data Retrieval

Retrieve all records from the table.

```sql
SELECT * FROM employees;
```

### ✅ Output

Returns all columns and all rows from the table.

---

# 🔹 2. Selecting Specific Columns

Instead of retrieving everything, fetch only the required columns.

```sql
SELECT first_name, department
FROM employees;
```

### 🎯 Output

| First Name | Department |
| ---------- | ---------- |
| John Doe   | HR         |
| Jane Smith | Finance    |
| Jim Brown  | IT         |
| Jake White | Marketing  |
| Jill Black | IT         |

---

# 🔹 3. Using Aliases

Aliases provide temporary names to columns.

```sql
SELECT first_name AS employee_name,
       department AS dept
FROM employees;
```

### 💡 Benefits

* Improves readability
* Makes reports more professional
* Simplifies complex queries

---

# 🔹 4. Filtering Data with WHERE Clause

The `WHERE` clause filters rows based on conditions.

### Example

Retrieve employees older than 30:

```sql
SELECT *
FROM employees
WHERE age > 30;
```

### 🎯 Result

| Employee   | Age |
| ---------- | --- |
| Jane Smith | 34  |

---

# 🔹 5. Filtering Data with IN and NOT IN

## Using IN

Retrieve employees from Sales or Marketing.

```sql
SELECT *
FROM employees
WHERE department IN ('Sales', 'Marketing');
```

## Using NOT IN

Retrieve employees not in Sales or Marketing.

```sql
SELECT *
FROM employees
WHERE department NOT IN ('Sales', 'Marketing');
```

---

# 🔹 6. Using Multiple Conditions with AND and OR

## AND Operator

Retrieve IT employees older than 25.

```sql
SELECT *
FROM employees
WHERE age > 25
AND department = 'IT';
```

## OR Operator

Retrieve employees older than 30 or in HR.

```sql
SELECT *
FROM employees
WHERE age > 30
OR department = 'HR';
```

---

# 🔹 7. Using Comparison Operators

| Operator    | Meaning                  |
| ----------- | ------------------------ |
| >           | Greater Than             |
| <           | Less Than                |
| >=          | Greater Than or Equal To |
| <=          | Less Than or Equal To    |
| BETWEEN     | Range Search             |
| LIKE        | Pattern Matching         |
| IS NULL     | Null Values              |
| IS NOT NULL | Non-Null Values          |

---

## 📌 BETWEEN Example

Retrieve employees aged between 25 and 30.

```sql
SELECT *
FROM employees
WHERE age BETWEEN 25 AND 30;
```

---

## 📌 LIKE Example

Retrieve employees whose names start with "J".

```sql
SELECT *
FROM employees
WHERE first_name LIKE 'J%';
```

### 🔍 Pattern Matching Symbols

| Symbol | Meaning                  |
| ------ | ------------------------ |
| %      | Any number of characters |
| _      | Single character         |

---

## 📌 IS NULL Example

```sql
SELECT *
FROM employees
WHERE department IS NULL;
```

Retrieves employees without a department.

---

## 📌 IS NOT NULL Example

```sql
SELECT *
FROM employees
WHERE department IS NOT NULL;
```

Retrieves employees with assigned departments.

---

# 🔹 8. Sorting Data with ORDER BY

Sorting helps organize results.

## Ascending Order

```sql
SELECT *
FROM employees
ORDER BY age ASC;
```

## Descending Order

```sql
SELECT *
FROM employees
ORDER BY age DESC;
```

---

# 🔹 9. Multiple Column Sorting

Sort by department and then by age.

```sql
SELECT *
FROM employees
ORDER BY department ASC,
         age DESC;
```

### 🎯 Sorting Logic

1. Department sorted alphabetically
2. Within each department, age sorted from highest to lowest

---

# 🔹 10. Using LIMIT and OFFSET

## LIMIT

Retrieve the first 3 records.

```sql
SELECT *
FROM employees
LIMIT 3;
```

## LIMIT with OFFSET

Retrieve 3 records starting from the second row.

```sql
SELECT *
FROM employees
LIMIT 3 OFFSET 1;
```

---

# 🔹 11. Saving SQL Queries in MySQL Workbench

### Steps

1. Open MySQL Workbench.
2. Write your SQL query.
3. Click **File → Save Script**.
4. Choose a file location.
5. Save with `.sql` extension.
6. Reuse the script whenever needed.

---

# 📝 Quick Revision Sheet

| Clause   | Purpose                 |
| -------- | ----------------------- |
| SELECT   | Retrieve data           |
| FROM     | Specify table           |
| WHERE    | Filter rows             |
| IN       | Match multiple values   |
| NOT IN   | Exclude multiple values |
| AND      | All conditions true     |
| OR       | Any condition true      |
| LIKE     | Pattern matching        |
| BETWEEN  | Range filtering         |
| ORDER BY | Sort results            |
| LIMIT    | Restrict rows           |
| OFFSET   | Skip rows               |

---

# 🎯 Key Takeaways

✅ Use `SELECT` to retrieve data.

✅ Use `WHERE` to filter records.

✅ Use `IN` and `NOT IN` for multiple-value filtering.

✅ Use `LIKE` for pattern matching.

✅ Use `ORDER BY` to sort results.

✅ Use `LIMIT` and `OFFSET` for pagination.

✅ Save queries as `.sql` files for reuse.

---

# 🏆 Conclusion

The **SELECT statement** is the foundation of SQL data retrieval. By combining it with clauses such as **WHERE**, **ORDER BY**, **LIMIT**, and **OFFSET**, you can efficiently query, analyze, and manage data stored in relational databases.

> 💡 Master these concepts before moving on to **Joins**, **Aggregate Functions**, and **Subqueries**.
