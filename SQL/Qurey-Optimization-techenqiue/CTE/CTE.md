# 📘 SQL Common Table Expression (CTE): Complete Guide

<div align="center">

![SQL](https://img.shields.io/badge/SQL-CTE-blue?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Intermediate-success?style=for-the-badge)
![Topic](https://img.shields.io/badge/Documentation-Guide-orange?style=for-the-badge)

**Write cleaner, modular, and more maintainable SQL queries with Common Table Expressions (CTEs).**

</div>

---

## 📑 Table of Contents

- 📖 Overview
- 🎯 Why CTE?
- ✨ Features
- 🛠️ Prerequisites
- 📝 Syntax
- ⚙️ Working
- 🔄 Types
- 📊 CTE vs Subquery
- ✅ Advantages
- ⚠️ Limitations
- 💡 Best Practices
- 🌍 Use Cases
- 📚 Quick Revision
- 🔗 SQL Script

---

## 📖 Overview

A **Common Table Expression (CTE)** is a temporary named result set created using the **WITH** clause. It exists only for the execution of a single SQL statement and helps organize complex logic into readable sections.

## 🎯 Why Use CTE?

- Improve readability
- Reduce repeated subqueries
- Break large queries into logical steps
- Simplify maintenance
- Support recursive queries

## ✨ Features

| Feature | Description |
|---------|-------------|
| Temporary | Exists only during query execution |
| Readable | Makes SQL easier to understand |
| Reusable | Can be referenced multiple times |
| Recursive | Supports hierarchical queries |

## 🛠️ Prerequisites

- Basic SQL
- SELECT, WHERE, JOIN
- GROUP BY and ORDER BY

## 📝 Syntax

```sql
WITH CTE_Name AS (
    SELECT ...
)
SELECT ...
FROM CTE_Name;
```

## ⚙️ Working

```text
Base Table
    │
    ▼
 Apply Filters
    │
    ▼
 Create CTE
    │
    ▼
 Main Query
    │
    ▼
 Final Result
```

## 🔄 Types

### Non-Recursive CTE
Used for simplifying standard queries.

### Recursive CTE
Used for hierarchical data like employee-manager or category trees.

## 📊 CTE vs Subquery

| Feature | CTE | Subquery |
|:--|:--:|:--:|
| Readability | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| Reusability | ✅ | ❌ |
| Recursive Support | ✅ | ❌ |
| Maintenance | Easy | Moderate |

## ✅ Advantages

- Cleaner SQL
- Better organization
- Easy debugging
- Modular design
- Easier collaboration

## ⚠️ Limitations

- Temporary scope
- Not permanently stored
- Performance varies by database engine

## 💡 Best Practices

- Use meaningful CTE names.
- Keep each CTE focused.
- Avoid excessive nesting.
- Filter early for better performance.

## 🌍 Real-World Use Cases

- Sales dashboards
- Customer segmentation
- Financial reports
- Data cleaning
- Hierarchical reporting
- Business intelligence

## 📚 Quick Revision

> **CTE = Common Table Expression**

- Created with **WITH**
- Temporary result set
- Improves readability
- Supports recursion
- Ideal for complex SQL

---

## 🔗 SQL Script

### 📂 Complete SQL File

➡️ **[View the Complete CTE SQL Script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Qurey-Optimization-techenqiue/CTE/CTE.sql)**

---

<div align="center">

### ⭐ Support the Project

If this documentation helped you, consider **starring the repository**.

**Made with ❤️ by Vinayak Mishra**

🚀 Happy Learning!

</div>
