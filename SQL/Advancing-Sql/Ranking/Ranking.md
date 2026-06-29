# 🏆 SQL `RANK()` Function

> Learn how the SQL **`RANK()`** window function assigns rankings to rows based on a specified ordering while properly handling ties.

![SQL](https://img.shields.io/badge/SQL-Window%20Function-blue)
![Level](https://img.shields.io/badge/Level-Beginner-green)
![Category](https://img.shields.io/badge/Category-Analytics-orange)

---

## 📖 Table of Contents

* [Overview](#-overview)
* [Why Use RANK()?](#-why-use-rank)
* [Prerequisites](#-prerequisites)
* [How RANK() Works](#-how-rank-works)
* [Syntax](#-syntax)
* [Syntax Breakdown](#-syntax-breakdown)
* [PARTITION BY](#-partition-by)
* [ORDER BY](#-order-by)
* [Ranking Behavior](#-ranking-behavior)
* [Comparison with Other Ranking Functions](#-comparison-with-other-ranking-functions)
* [Common Use Cases](#-common-use-cases)
* [Common Issues](#-common-issues)
* [Reference / Source Code](#-reference--source-code)
* [Conclusion](#-conclusion)

---

## 📌 Overview

The **`RANK()`** function is a SQL **window function** used to assign a rank to every row within a result set based on a specified sorting order.

Unlike standard numbering, rows with identical values receive the **same rank**, and the next rank is **skipped** to preserve ranking order.

This function is commonly used in:

* 📊 Reporting
* 📈 Data Analytics
* 🏅 Leaderboards
* 💰 Salary Rankings
* 🎓 Student Performance Analysis
* 📦 Product Rankings

---

## ✨ Why Use `RANK()`?

✔ Assign rankings without modifying data

✔ Handle duplicate values naturally

✔ Support ranking within groups

✔ Simplify analytical reporting

✔ Improve readability of reports

---

## 📋 Prerequisites

Before using `RANK()`, ensure:

* SQL database supports Window Functions
* Data contains a column suitable for ordering
* Ranking order is clearly defined
* Optional grouping column is available when using partitions

---

## ⚙️ How `RANK()` Works

`RANK()` evaluates rows based on the specified ordering.

### Key Rules

| Situation         | Result                                 |
| ----------------- | -------------------------------------- |
| Unique value      | Receives a unique rank                 |
| Duplicate values  | Receive the same rank                  |
| Tie occurs        | Next rank is skipped                   |
| PARTITION BY used | Ranking restarts within each partition |

---

## 📝 Syntax

```sql
RANK() OVER (
    [PARTITION BY partition_column]
    ORDER BY sort_column ASC | DESC
)
```

> **Note:** The syntax above is a generic template using placeholders and is not a complete SQL query.

---

## 🔍 Syntax Breakdown

| Clause         | Purpose                                         |
| -------------- | ----------------------------------------------- |
| `RANK()`       | Assigns rankings                                |
| `OVER()`       | Defines the ranking window                      |
| `PARTITION BY` | Creates independent ranking groups *(optional)* |
| `ORDER BY`     | Determines ranking order                        |
| `ASC` / `DESC` | Specifies sorting direction                     |

---

## 📂 PARTITION BY

The optional **`PARTITION BY`** clause divides the result into multiple groups.

Each group is ranked **independently**, meaning ranking starts from **1** inside every partition.

Typical examples include:

* Departments
* Classes
* Regions
* Product Categories

---

## 🔃 ORDER BY

`ORDER BY` determines how rows are ranked.

| Order  | Description                             |
| ------ | --------------------------------------- |
| `ASC`  | Lowest value receives the highest rank  |
| `DESC` | Highest value receives the highest rank |

Without `ORDER BY`, SQL cannot determine ranking.

---

## 📊 Ranking Behavior

| Scenario            | Rank Output                    |
| ------------------- | ------------------------------ |
| No duplicate values | Sequential ranking             |
| Duplicate values    | Same rank assigned             |
| Tie occurs          | Rank numbers are skipped       |
| Partition used      | Ranking restarts per partition |

---

## ⚖️ Comparison with Other Ranking Functions

| Feature                  | `RANK()`            | `DENSE_RANK()`     | `ROW_NUMBER()`       |
| ------------------------ | ------------------- | ------------------ | -------------------- |
| Handles ties             | ✅                   | ✅                  | ❌                    |
| Same rank for duplicates | ✅                   | ✅                  | ❌                    |
| Skips rank numbers       | ✅                   | ❌                  | ❌                    |
| Unique numbering         | ❌                   | ❌                  | ✅                    |
| Best suited for          | Competition ranking | Continuous ranking | Unique row numbering |

---

## 💡 Common Use Cases

* 🏆 Competition Rankings
* 💼 Employee Salary Reports
* 🎓 Student Merit Lists
* 📈 Sales Analysis
* 🛍 Product Rankings
* 📊 Business Intelligence Dashboards
* 📉 Performance Tracking

---

## ⚠️ Common Issues

| Issue                  | Solution                                        |
| ---------------------- | ----------------------------------------------- |
| Unexpected rank gaps   | This is expected behavior after ties            |
| Incorrect ranking      | Verify the `ORDER BY` clause                    |
| Ranking entire dataset | Use `PARTITION BY` when grouping is required    |
| Inconsistent ordering  | Add additional ordering criteria when necessary |

---

## 🔗 Reference / Source Code

### 📚 Official Documentation

* PostgreSQL Window Functions: https://www.postgresql.org/docs/current/functions-window.html
* Microsoft SQL Server RANK(): https://learn.microsoft.com/sql/t-sql/functions/rank-transact-sql

### 💻 Source Code

* **GitHub SQL Script:**
  [Ranking.sql](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Ranking/Ranking.sql)

---

## 🎯 Conclusion

The SQL **`RANK()`** function is an essential analytical tool for assigning rankings based on ordered data. It supports grouping through **`PARTITION BY`**, ordering through **`ORDER BY`**, and correctly handles tied values by assigning the same rank while skipping subsequent positions. Understanding its behavior and differences from **`DENSE_RANK()`** and **`ROW_NUMBER()`** helps in selecting the most appropriate ranking function for reporting and analytics.

---

⭐ **If you found this guide useful, consider starring the repository and exploring the source code for more SQL window function examples.**
