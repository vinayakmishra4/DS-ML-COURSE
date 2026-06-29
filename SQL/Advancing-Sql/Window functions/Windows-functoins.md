# 🪟 Window Functions in SQL

<p align="center">
  <b>Perform calculations across related rows without collapsing your result set.</b>
</p>

<p align="center">

![SQL](https://img.shields.io/badge/SQL-Window%20Functions-blue)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Intermediate-success)
![Category](https://img.shields.io/badge/Category-Advanced%20SQL-orange)
![Documentation](https://img.shields.io/badge/Documentation-Complete-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blueviolet)

</p>

---

## 📖 Table of Contents

- [📚 Overview](#-overview)
- [🎯 Why Use Window Functions?](#-why-use-window-functions)
- [✅ Prerequisites](#-prerequisites)
- [⚙️ How Window Functions Work](#️-how-window-functions-work)
- [📝 Generic Syntax](#-generic-syntax)
- [🧩 Types of Window Functions](#-types-of-window-functions)
  - [Aggregate Window Functions](#1️⃣-aggregate-window-functions)
  - [Ranking Window Functions](#2️⃣-ranking-window-functions)
- [📊 Function Comparison](#-function-comparison)
- [⚠️ Common Issues](#-common-issues)
- [💡 Best Practices](#-best-practices)
- [🚀 Practice SQL](#-practice-sql)
- [🎯 Key Takeaways](#-key-takeaways)

---

# 📚 Overview

**SQL Window Functions** are advanced analytical functions that perform calculations across a group of related rows while **preserving every row** in the result set.

Unlike traditional aggregate functions, which return a single row for each group, window functions calculate values over a defined **window of rows** and return a result for **every individual row**.

They are widely used in analytics, reporting, dashboards, financial systems, and business intelligence applications.

---

# 🎯 Why Use Window Functions?

Window functions make it possible to perform complex analytical calculations without modifying the number of rows returned.

### Common Applications

- 📊 Running totals
- 📈 Moving averages
- 🏆 Ranking records
- 🔢 Row numbering
- 📉 Percentage ranking
- 📋 Department-wise calculations
- 📅 Time-series analysis
- 📊 Comparative reporting

---

# ✅ Prerequisites

Before learning Window Functions, you should be familiar with:

- SQL fundamentals
- Tables and columns
- Aggregate functions
- Sorting data using `ORDER BY`
- SQL query structure

---

# ⚙️ How Window Functions Work

Every window function operates using the **`OVER`** clause.

The `OVER` clause defines the set of rows used during calculation.

## PARTITION BY

- Divides data into logical groups.
- Each partition is processed independently.
- If omitted, the entire result set becomes one partition.

## ORDER BY

- Specifies the order of rows inside each partition.
- Required for ranking and cumulative calculations.
- Determines the sequence in which calculations occur.

> 💡 **Tip:** `PARTITION BY` groups the data, while `ORDER BY` controls the calculation order.

---

# 📝 Generic Syntax

The following syntax demonstrates the general structure of a SQL Window Function.

```text
SELECT column_list,
       window_function(target_column)
       OVER (
           [PARTITION BY partition_column]
           [ORDER BY ordering_column]
       ) AS result_column
FROM table_name;
```

### Syntax Components

| Component | Description |
|-----------|-------------|
| `window_function` | Aggregate or ranking window function |
| `column_list` | Columns displayed in the output |
| `target_column` | Column used by the function |
| `PARTITION BY` | Divides rows into groups |
| `ORDER BY` | Defines row ordering |
| `result_column` | Alias of calculated value |
| `table_name` | Source table |

---

# 🧩 Types of Window Functions

SQL Window Functions are mainly divided into two categories.

---

## 1️⃣ Aggregate Window Functions

Aggregate window functions calculate summary values while keeping every row visible.

### Common Aggregate Functions

| Function | Purpose |
|----------|----------|
| `SUM()` | Calculates totals |
| `AVG()` | Calculates averages |
| `COUNT()` | Counts rows |
| `MAX()` | Returns maximum value |
| `MIN()` | Returns minimum value |

### Characteristics

- ✔ Preserve all rows
- ✔ Calculate values across partitions
- ✔ Support cumulative calculations
- ✔ Useful for analytical reporting

---

## 2️⃣ Ranking Window Functions

Ranking functions assign positions to rows inside each partition.

### Available Functions

| Function | Purpose |
|----------|----------|
| `ROW_NUMBER()` | Assigns unique row numbers |
| `RANK()` | Assigns rankings with gaps |
| `DENSE_RANK()` | Assigns rankings without gaps |
| `PERCENT_RANK()` | Calculates relative ranking |

---

### 🏅 RANK()

Assigns the same rank to duplicate values.

**Characteristics**

- Duplicate values receive identical ranks.
- Gaps appear after duplicate rankings.
- Useful when ranking competition results.

---

### 🥇 DENSE_RANK()

Assigns continuous rankings.

**Characteristics**

- Duplicate values share the same rank.
- No ranking numbers are skipped.
- Ideal for compact ranking systems.

---

### 🔢 ROW_NUMBER()

Assigns a unique sequential number to every row.

**Characteristics**

- Every row receives a different number.
- Duplicate values do not affect numbering.
- Frequently used for pagination and duplicate removal.

---

### 📊 PERCENT_RANK()

Measures the relative ranking of each row.

### Formula

```text
(RANK - 1) / (Total Rows in Partition - 1)
```

**Characteristics**

- Returns values between **0** and **1**
- Represents relative standing
- Useful for percentile analysis

---

# 📊 Function Comparison

| Function | Duplicate Values | Gaps | Typical Output |
|-----------|-----------------|------|----------------|
| `SUM()` | N/A | N/A | Total |
| `AVG()` | N/A | N/A | Average |
| `COUNT()` | N/A | N/A | Count |
| `ROW_NUMBER()` | ❌ | ❌ | Unique Number |
| `RANK()` | ✅ | ✅ | Rank |
| `DENSE_RANK()` | ✅ | ❌ | Rank |
| `PERCENT_RANK()` | ✅ | Depends | Percentage |

---

# ⚠️ Common Issues

## Missing `PARTITION BY`

Without `PARTITION BY`, the entire dataset is treated as a single window.

---

## Incorrect `ORDER BY`

Incorrect ordering may produce unexpected rankings or cumulative calculations.

---

## Performance Issues

Window functions often require sorting, making them slower on very large datasets.

### Optimization Tips

- Use indexes whenever appropriate.
- Filter unnecessary rows before calculations.
- Retrieve only required columns.
- Minimize partition sizes when possible.

---

## Choosing the Wrong Ranking Function

| Requirement | Recommended Function |
|-------------|----------------------|
| Unique numbering | `ROW_NUMBER()` |
| Ranking with gaps | `RANK()` |
| Continuous ranking | `DENSE_RANK()` |
| Relative position | `PERCENT_RANK()` |

---

# 💡 Best Practices

- ✔ Define partitions carefully.
- ✔ Always specify ordering when needed.
- ✔ Use descriptive aliases.
- ✔ Choose the correct ranking function.
- ✔ Optimize analytical queries.
- ✔ Test performance on large datasets.
- ✔ Keep queries readable and maintainable.

---

# 🚀 Practice SQL

After understanding the concepts, explore the complete SQL implementation and practice queries from the repository.

<p align="center">

### 📂 <a href="https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Window%20functions/Windows-function.sql" target="_blank">Window Functions SQL Script</a>

</p>

> 💡 **What's Included?**
>
> - Aggregate Window Functions (`SUM()`, `AVG()`, `COUNT()`, `MIN()`, `MAX()`)
> - Ranking Window Functions (`ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `PERCENT_RANK()`)
> - `PARTITION BY` and `ORDER BY` usage
> - Practical SQL queries for hands-on learning
> - Well-commented examples for better understanding

<div align="center">

⭐ **If you find this documentation helpful, consider giving the repository a star!**

</div>

---

# 🎯 Key Takeaways

- Window functions perform calculations across related rows.
- They preserve every row in the result set.
- The `OVER` clause defines the calculation window.
- `PARTITION BY` divides data into logical groups.
- `ORDER BY` determines calculation order.
- Aggregate and ranking functions are the two primary categories.
- Choosing the correct window function is essential for accurate analytical results.

---

<div align="center">

## ⭐ Master SQL Window Functions and unlock powerful analytical querying capabilities.

**Happy Learning! 🚀**

</div>
