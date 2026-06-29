# 🏆 SQL RANK() Function

<p align="center">

![SQL](https://img.shields.io/badge/SQL-Window%20Function-blue?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner-success?style=for-the-badge)
![Category](https://img.shields.io/badge/Category-Advanced%20SQL-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

</p>

<p align="center">
<b>Learn how the SQL <code>RANK()</code> window function assigns rankings to rows while handling ties by skipping subsequent rank values.</b>
</p>

---

# 📑 Table of Contents

* [📖 Overview](#-overview)
* [🎯 Why Use RANK()](#-why-use-rank)
* [⚙️ Prerequisites](#️-prerequisites)
* [📝 Syntax](#-syntax)
* [🔍 Syntax Components](#-syntax-components)
* [⚡ How RANK() Works](#-how-rank-works)
* [📂 PARTITION BY](#-partition-by)
* [📊 ORDER BY](#-order-by)
* [🏅 Ranking Behavior](#-ranking-behavior)
* [🤝 Tie Handling](#-tie-handling)
* [📈 Common Use Cases](#-common-use-cases)
* [⚖️ RANK() vs DENSE_RANK() vs ROW_NUMBER()](#️-rank-vs-dense_rank-vs-row_number)
* [❗ Common Issues](#-common-issues)
* [💡 Best Practices](#-best-practices)
* [🎯 Conclusion](#-conclusion)

---

# 📖 Overview

The **`RANK()`** function is a SQL **window function** that assigns a ranking to every row in a result set according to a specified sorting order.

Unlike aggregate functions, it **does not reduce the number of rows returned**. Instead, it calculates a ranking value while preserving every row in the result.

A key characteristic of `RANK()` is its handling of **ties**:

* Equal values receive the same rank.
* The next rank value is skipped.
* Ranking can be performed on the entire result set or independently within groups.

---

# 🎯 Why Use RANK()

The `RANK()` function is commonly used when you need to:

* 🏆 Create leaderboards
* 💰 Rank employee salaries
* 🎓 Rank students by marks
* 📈 Compare sales performance
* 🌍 Rank products by popularity
* 🏢 Generate department-wise rankings
* 📊 Produce analytical reports

---

# ⚙️ Prerequisites

Before learning `RANK()`, you should understand:

* Basic SQL
* SELECT statements
* ORDER BY clause
* Window Functions
* SQL tables and columns

---

# 📝 Syntax

```sql
RANK() OVER (
    [PARTITION BY partition_expression [, ...]]
    ORDER BY sort_expression [ASC | DESC]
)
```

---

# 🔍 Syntax Components

| Component        | Description                                                |
| ---------------- | ---------------------------------------------------------- |
| **RANK()**       | Assigns a rank to every row.                               |
| **OVER**         | Defines the window used for ranking.                       |
| **PARTITION BY** | Optional clause that divides data into independent groups. |
| **ORDER BY**     | Determines ranking order.                                  |
| **ASC**          | Ascending ranking order.                                   |
| **DESC**         | Descending ranking order.                                  |

---

# ⚡ How RANK() Works

The ranking process follows these steps:

1. Sort the result set.
2. Assign a rank to each row.
3. Equal values receive the same rank.
4. The next rank is skipped after ties.
5. Ranking restarts for every partition when `PARTITION BY` is used.

---

# 📂 PARTITION BY

`PARTITION BY` divides the result set into separate groups before ranking.

Within each partition:

* Ranking starts from the first position.
* Groups are processed independently.
* Rankings do not affect other partitions.

Typical partitioning examples include:

* Departments
* Classes
* Regions
* Categories
* Teams

---

# 📊 ORDER BY

`ORDER BY` determines how rows are ranked.

Features:

* Required with `RANK()`
* Supports ascending order (`ASC`)
* Supports descending order (`DESC`)
* Multiple ordering expressions may be specified

---

# 🏅 Ranking Behavior

The `RANK()` function follows these rules:

✅ Every row receives a rank.

✅ Equal values share the same rank.

✅ Rank values may contain gaps.

✅ Original rows remain unchanged.

---

# 🤝 Tie Handling

When multiple rows contain identical ordering values:

* They receive the same rank.
* The next rank value is skipped.
* Rank gaps are expected behavior.

---

# 📈 Common Use Cases

| Scenario              | Purpose              |
| --------------------- | -------------------- |
| Employee Rankings     | Salary comparison    |
| Student Rankings      | Marks comparison     |
| Sales Reports         | Sales performance    |
| Product Analysis      | Product popularity   |
| Sports                | Tournament standings |
| Business Intelligence | Department analysis  |
| Finance               | Revenue ranking      |

---

# ⚖️ RANK() vs DENSE_RANK() vs ROW_NUMBER()

| Feature                 | RANK() | DENSE_RANK() | ROW_NUMBER() |
| ----------------------- | :----: | :----------: | :----------: |
| Assigns Ranking         |    ✅   |       ✅      |       ✅      |
| Handles Ties            |    ✅   |       ✅      |       ❌      |
| Skips Rank After Tie    |    ✅   |       ❌      |       ❌      |
| Produces Unique Numbers |    ❌   |       ❌      |       ✅      |
| Contains Gaps           |    ✅   |       ❌      |       ❌      |

---

# ❗ Common Issues

### Missing ORDER BY

Ranking cannot be determined without specifying an ordering expression.

---

### Unexpected Rank Gaps

This occurs because `RANK()` intentionally skips rank values after ties.

---

### Incorrect PARTITION BY

Using an unintended partition expression restarts ranking unexpectedly.

---

### Non-Deterministic Ordering

Rows with identical ordering values may appear in different positions if no additional ordering criteria are specified.

---

# 💡 Best Practices

* ✅ Always use an appropriate `ORDER BY`.
* ✅ Use `PARTITION BY` only when independent rankings are required.
* ✅ Choose meaningful ordering expressions.
* ✅ Understand the difference between `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()`.
* ✅ Use additional ordering criteria when deterministic results are important.

---

# 🎯 Conclusion

The SQL **`RANK()`** window function is an essential analytical function for assigning rankings within a result set. It provides meaningful rankings while correctly handling ties by assigning identical ranks and skipping subsequent rank values. Combined with `PARTITION BY` and `ORDER BY`, it becomes a powerful tool for reporting, analytics, and business intelligence.

---

## 📂 SQL Source Code

<details>
<summary><b>Click to view the SQL implementation</b></summary>

**GitHub Repository**

https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Ranking/Ranking.sql

</details>

---

<p align="center">
⭐ If you found this documentation helpful, consider starring the repository!
</p>
