# 🪟 Window Functions in SQL
<p align="center">
  <b>Perform calculations across related rows without collapsing your result set.</b>
</p>

<p align="center">

![SQL](https://img.shields.io/badge/SQL-Window%20Functions-blue)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Intermediate-success)
![Category](https://img.shields.io/badge/Category-Database-orange)
![Documentation](https://img.shields.io/badge/Documentation-Complete-brightgreen)

</p>

---

## 📖 Table of Contents
- [📚 Overview](#-overview)
- [✅ Prerequisites](#-prerequisites)
- [⚙️ How Window Functions Work](#️-how-window-functions-work)
- [📝 Generic Syntax](#-generic-syntax)
- [🧩 Types of Window Functions](#-types-of-window-functions)
- [📋 Function Comparison](#-function-comparison)
- [⚠️ Common Issues](#-common-issues)
- [💡 Best Practices](#-best-practices)
- [🎯 Key Takeaways](#-key-takeaways)

---

# 📚 Overview
**Window Functions** are advanced SQL features that perform calculations across a group of related rows while **keeping every individual row in the result**.
Unlike traditional aggregate operations, window functions **do not combine multiple rows into one**. Instead, they calculate values over a defined *window* and return a result for every row.
### ✨ Common Use Cases
- 📊 Running totals
- 📈 Moving averages
- 🏆 Ranking records
- 🔢 Row numbering
- 📉 Percentage ranking
- 📋 Department-wise statistics

---

# ✅ Prerequisites
Before learning window functions, you should understand:
- Basic SQL syntax
- Tables and columns
- Aggregate functions
- Sorting data
- SQL query execution basics

---

# ⚙️ How Window Functions Work

Every window function uses the **`OVER`** clause.
The window is controlled by two optional clauses:
| Clause | Purpose |
|---------|---------|
| **PARTITION BY** | Divides data into logical groups |
| **ORDER BY** | Defines the order of rows within each partition |
> **💡 Note**
>
> If `PARTITION BY` is omitted, the entire result set is treated as a single window.

---

# 📝 Generic Syntax

> **Generic syntax pattern (not executable):**
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
|------------|-------------|
| `window_function` | Aggregate or ranking function |
| `column_list` | Columns displayed in the result |
| `target_column` | Column processed by the function |
| `PARTITION BY` | Creates logical groups |
| `ORDER BY` | Defines row sequence |
| `result_column` | Alias for the calculated value |
| `table_name` | Source table |

---

# 🧩 Types of Window Functions
Window functions are divided into two major categories.

---

## 1️⃣ Aggregate Window Functions
Aggregate window functions compute summary values while preserving every row.
### Common Functions
| Function | Purpose |
|----------|---------|
| `SUM()` | Calculates totals |
| `AVG()` | Calculates averages |
| `COUNT()` | Counts rows |
| `MAX()` | Returns maximum value |
| `MIN()` | Returns minimum value |
### Characteristics
- ✔ Preserves every row
- ✔ Calculates values over a window
- ✔ Supports logical grouping
- ✔ Can perform cumulative calculations

---

## 2️⃣ Ranking Window Functions
Ranking functions assign a position to rows within a partition.
| Function | Description |
|----------|-------------|
| `ROW_NUMBER()` | Assigns a unique number to every row |
| `RANK()` | Assigns ranks with gaps after ties |
| `DENSE_RANK()` | Assigns ranks without gaps |
| `PERCENT_RANK()` | Calculates relative ranking between 0 and 1 |

---

### 🏅 RANK()
**Purpose**
Assigns rankings according to the specified ordering.
**Features**
- Equal values receive the same rank.
- Gaps appear after duplicate values.
- Useful when ties should influence rankings.

---

### 🥇 DENSE_RANK()
**Purpose**
Assigns continuous rankings.
**Features**
- Equal values share the same rank.
- No gaps appear.
- Best for compact ranking sequences.

---

### 🔢 ROW_NUMBER()
**Purpose**
Assigns a unique sequential number to every row.
**Features**
- Every row gets a unique number.
- Duplicate values do not affect numbering.
- Commonly used for pagination and row identification.

---

### 📊 PERCENT_RANK()
**Purpose**
Calculates the relative position of a row.
#### Formula
```text
(RANK - 1) / (Total Rows in Partition - 1)
```
**Features**
- Values range from **0** to **1**
- Represents relative ranking
- Useful for percentile analysis

---

# 📋 Function Comparison
| Function | Duplicate Values | Gaps | Output |
|-----------|-----------------|------|--------|
| `SUM()` | N/A | N/A | Total |
| `AVG()` | N/A | N/A | Average |
| `COUNT()` | N/A | N/A | Count |
| `ROW_NUMBER()` | ❌ | ❌ | Unique Number |
| `RANK()` | ✅ | ✅ | Rank |
| `DENSE_RANK()` | ✅ | ❌ | Rank |
| `PERCENT_RANK()` | ✅ | Depends | Percentage |

---

# ⚠️ Common Issues
### Missing `PARTITION BY`
The entire dataset becomes one partition, which may produce unexpected results.

---

### Incorrect `ORDER BY`
Ranking and cumulative calculations depend entirely on the ordering of rows.

---

### Performance
Window functions may require additional sorting, making them slower on large datasets.
**Optimization Tips**
- Use indexes where appropriate.
- Filter unnecessary rows.
- Select only required columns.
- Reduce partition sizes whenever possible.

---

### Choosing the Wrong Function
| Requirement | Recommended Function |
|-------------|----------------------|
| Unique numbering | `ROW_NUMBER()` |
| Ranking with gaps | `RANK()` |
| Continuous ranking | `DENSE_RANK()` |
| Relative ranking | `PERCENT_RANK()` |

---

# 💡 Best Practices
- ✔ Define partitions carefully.
- ✔ Always verify ordering logic.
- ✔ Use meaningful aliases.
- ✔ Select the correct ranking function.
- ✔ Optimize queries on large datasets.
- ✔ Keep calculations simple and readable.

---

# 🎯 Key Takeaways
- Window functions calculate values across related rows.
- They preserve every row in the result set.
- The `OVER` clause defines the calculation window.
- `PARTITION BY` creates logical groups.
- `ORDER BY` controls row sequence.
- Aggregate and ranking functions are the two primary categories.
- Choosing the correct function improves both accuracy and readability.

---

<div align="center">

## ⭐ Master Window Functions to unlock powerful SQL analytics and reporting capabilities.
Made with ❤️ for SQL learners.

</div>