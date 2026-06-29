# 🏆 SQL RANK() Function

<p align="center">

![SQL](https://img.shields.io/badge/SQL-Window%20Function-blue?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner-success?style=for-the-badge)
![Topic](https://img.shields.io/badge/Topic-Advanced%20SQL-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

</p>

<p align="center">
<b>The <code>RANK()</code> window function assigns rankings to rows based on a specified ordering while giving the same rank to tied values and skipping subsequent ranks.</b>
</p>

---

# 📑 Table of Contents

* [📖 Overview](#-overview)
* [🎯 Why Use RANK()](#-why-use-rank)
* [⚙️ Prerequisites](#️-prerequisites)
* [📝 Syntax](#-syntax)
* [🧩 Syntax Components](#-syntax-components)
* [⚡ How RANK() Works](#-how-rank-works)
* [📂 PARTITION BY](#-partition-by)
* [📊 ORDER BY](#-order-by)
* [🏅 Ranking Rules](#-ranking-rules)
* [🤝 Tie Handling](#-tie-handling)
* [📈 Common Use Cases](#-common-use-cases)
* [⚖️ RANK() vs DENSE_RANK() vs ROW_NUMBER()](#️-rank-vs-dense_rank-vs-row_number)
* [❗ Common Issues](#-common-issues)
* [💡 Best Practices](#-best-practices)
* [🎯 Conclusion](#-conclusion)

---

# 📖 Overview

The **`RANK()`** function is one of SQL's most widely used **window functions**. It assigns a numerical rank to every row in a result set according to a specified sorting order.

Unlike aggregate functions, `RANK()` preserves every row while calculating a ranking value for each one.

Its defining characteristic is its handling of duplicate values:

* Rows with identical ordering values receive the same rank.
* The following rank is skipped.
* Rankings can be calculated across the entire result set or separately within partitions.

---

# 🎯 Why Use RANK()

The `RANK()` function is useful whenever you need to determine the relative position of records.

Typical applications include:

* 🏆 Leaderboards
* 💰 Employee salary rankings
* 🎓 Student performance reports
* 📈 Sales analysis
* 🛒 Product popularity rankings
* 🌍 Regional comparisons
* 🏢 Department-wise analytics
* 📊 Business Intelligence dashboards

---

# ⚙️ Prerequisites

Before learning `RANK()`, you should be familiar with:

* Basic SQL syntax
* SELECT statements
* ORDER BY clause
* SQL tables and columns
* Window Functions

---

# 📝 Syntax

```sql
RANK() OVER (
    [PARTITION BY partition_expression [, ...]]
    ORDER BY sort_expression [ASC | DESC]
)
```

> **Note:** The syntax above represents the general structure only. It is not a runnable SQL statement.

---

# 🧩 Syntax Components

| Component                     | Description                                          |
| ----------------------------- | ---------------------------------------------------- |
| **RANK()**                    | Assigns a ranking value to each row.                 |
| **OVER**                      | Defines the window over which ranking is calculated. |
| **PARTITION BY** *(Optional)* | Divides rows into independent groups before ranking. |
| **ORDER BY**                  | Specifies the sorting order used for ranking.        |
| **ASC**                       | Ranks rows in ascending order.                       |
| **DESC**                      | Ranks rows in descending order.                      |

---

# ⚡ How RANK() Works

The ranking process follows these steps:

1. SQL sorts the rows according to the `ORDER BY` clause.
2. Every row receives a ranking position.
3. Equal ordering values receive identical ranks.
4. Rank numbers are skipped after ties.
5. When `PARTITION BY` is used, ranking restarts for every partition.

---

# 📂 PARTITION BY

The optional `PARTITION BY` clause divides a result set into smaller logical groups before ranking begins.

Each partition is processed independently.

### Characteristics

* Ranking restarts from the first position.
* Partitions are isolated from one another.
* Rankings within one partition do not affect another.

### Common Partition Categories

* Departments
* Classes
* Regions
* Product Categories
* Teams
* Branches

---

# 📊 ORDER BY

The `ORDER BY` clause defines how rows are sorted before ranking.

## Features

* Required when using `RANK()`
* Supports ascending (`ASC`) ordering
* Supports descending (`DESC`) ordering
* Can include multiple ordering expressions

Without an ordering clause, SQL cannot determine ranking positions.

---

# 🏅 Ranking Rules

The `RANK()` function follows these rules:

| Rule                             | Description |
| -------------------------------- | ----------- |
| Equal values share the same rank | ✅           |
| Rank values may contain gaps     | ✅           |
| Every row receives a rank        | ✅           |
| Original rows remain unchanged   | ✅           |
| Ranking depends on sorting order | ✅           |

---

# 🤝 Tie Handling

One of the most important behaviors of `RANK()` is its treatment of tied values.

When two or more rows have identical ordering values:

* All tied rows receive the same rank.
* The following rank value is skipped.
* Ranking continues after the skipped position.

This behavior distinguishes `RANK()` from other SQL ranking functions.

---

# 📈 Common Use Cases

| Use Case              | Purpose                          |
| --------------------- | -------------------------------- |
| Employee Rankings     | Compare salaries                 |
| Student Rankings      | Compare marks                    |
| Sales Reports         | Rank sales performance           |
| Product Analysis      | Identify top-performing products |
| Sports                | Tournament standings             |
| Finance               | Revenue comparison               |
| HR Analytics          | Performance evaluation           |
| Business Intelligence | Departmental analysis            |

---

# ⚖️ RANK() vs DENSE_RANK() vs ROW_NUMBER()

| Feature                  | RANK() | DENSE_RANK() | ROW_NUMBER() |
| ------------------------ | :----: | :----------: | :----------: |
| Assigns ranking          |    ✅   |       ✅      |       ✅      |
| Same rank for ties       |    ✅   |       ✅      |       ❌      |
| Skips rank after ties    |    ✅   |       ❌      |       ❌      |
| Generates unique numbers |    ❌   |       ❌      |       ✅      |
| Ranking gaps             |    ✅   |       ❌      |       ❌      |

### Summary

* **RANK()** skips rank values after ties.
* **DENSE_RANK()** does not skip ranks.
* **ROW_NUMBER()** assigns a unique number to every row regardless of duplicate values.

---

# ❗ Common Issues

## Missing ORDER BY

Ranking requires a defined ordering sequence.

---

## Unexpected Rank Gaps

Rank gaps occur whenever multiple rows share the same ordering value.

This is expected behavior.

---

## Incorrect PARTITION BY

An unintended partition expression can restart rankings unexpectedly.

---

## Non-Deterministic Ordering

When multiple rows have identical ordering values without additional ordering expressions, the ranking order may vary.

---

# 💡 Best Practices

✔ Always specify an appropriate `ORDER BY`.

✔ Use `PARTITION BY` only when separate rankings are required.

✔ Understand the difference between `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()`.

✔ Choose ordering expressions that reflect your business requirement.

✔ Add additional ordering expressions when deterministic results are important.

✔ Use `RANK()` when skipped rankings accurately represent tied positions.

---

# 🎯 Conclusion

The SQL **`RANK()`** function is a powerful analytical window function used to determine the relative position of rows within a result set. It assigns identical ranks to equal values while intentionally skipping subsequent rank numbers after ties.

When combined with **`PARTITION BY`** and **`ORDER BY`**, it becomes an essential tool for leaderboards, reporting, business intelligence, and performance analysis.

Understanding the differences between `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()` helps you choose the most appropriate ranking function for any SQL scenario.

---

<div align="center">

### ⭐ Happy Learning!

If this guide helped you understand the SQL **RANK()** function, consider exploring other SQL Window Functions to strengthen your SQL skills.

**Made with ❤️ for SQL Learners**

</div>

<!--
SQL Source Code:
https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Ranking/Ranking.sql
-->
