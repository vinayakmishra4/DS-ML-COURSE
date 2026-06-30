# 🌟 SQL Views

> **Master SQL Views** — Learn how virtual tables simplify complex queries, improve security, and make database management more efficient.

<p align="center">

![SQL](https://img.shields.io/badge/SQL-Views-336791?style=for-the-badge\&logo=mysql\&logoColor=white)
![Database](https://img.shields.io/badge/Database-SQL-blue?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner-success?style=for-the-badge)
![Status](https://img.shields.io/badge/Topic-Complete-orange?style=for-the-badge)

</p>

---

## 📌 Table of Contents

* [📖 Introduction](#-introduction)
* [✨ Why Use SQL Views?](#-why-use-sql-views)
* [🎯 Key Features](#-key-features)
* [📋 Prerequisites](#-prerequisites)
* [🏗️ Creating Views](#️-creating-views)
* [📂 Types of Views](#-types-of-views)
* [⚙️ Managing Views](#️-managing-views)
* [🔄 Working with Views](#-working-with-views)
* [🛡️ WITH CHECK OPTION](#️-with-check-option)
* [✅ Advantages](#-advantages)
* [⚠️ Common Issues](#️-common-issues)
* [💡 Best Practices](#-best-practices)
* [📚 Reference](#-reference)
* [🎓 Conclusion](#-conclusion)

---

# 📖 Introduction

A **SQL View** is a **virtual table** created from the result of a SQL query. Unlike regular tables, views **do not store data physically**. Instead, they dynamically display data from one or more underlying tables whenever they are queried.

Views provide an abstraction layer that makes SQL queries easier to read, enhances security, and allows users to interact with only the data they need.

---

# ✨ Why Use SQL Views?

✔️ Simplify complex SQL queries

✔️ Hide sensitive columns

✔️ Improve database security

✔️ Reuse frequently used queries

✔️ Present customized datasets

✔️ Reduce duplicate SQL logic

✔️ Improve application maintainability

---

# 🎯 Key Features

| Feature          | Description                               |
| ---------------- | ----------------------------------------- |
| 📄 Virtual Table | Displays data without storing it          |
| 🔄 Dynamic       | Always reflects the latest data           |
| 🔒 Secure        | Restricts access to selected columns/rows |
| 📊 Reusable      | Eliminates repetitive queries             |
| ⚡ Lightweight    | Stores only the query definition          |

---

# 📋 Prerequisites

Before learning SQL Views, you should know:

* SQL Basics
* SELECT Statement
* WHERE Clause
* JOIN Operations
* Database Tables
* Primary & Foreign Keys

---

# 🏗️ Creating Views

Views are created using a query that defines which data should be exposed.

### Generic Syntax

```sql
CREATE VIEW <view_name> AS
SELECT <column_list>
FROM <table_name>
WHERE <condition>;
```

> **Note:** The syntax above is a **generic template** using placeholders, not executable SQL.

---

# 📂 Types of Views

## 🟢 Simple View

A view created from a **single table**.

### Features

* Easy to create
* Usually updatable
* Better performance
* Suitable for basic filtering

---

## 🔵 Complex View

A view created using **multiple tables** or advanced SQL operations.

### Features

* Multiple tables
* JOIN operations
* Aggregate functions
* May not support updates

---

# ⚙️ Managing Views

## 📋 List Available Views

Retrieve information about views from the database metadata.

### Generic Syntax

```sql
SHOW <views>;
```

---

## ✏️ Modify a View

Replace an existing view definition.

### Generic Syntax

```sql
CREATE OR REPLACE VIEW <view_name> AS
SELECT <columns>;
```

---

## 🗑️ Delete a View

Remove a view without affecting the underlying tables.

### Generic Syntax

```sql
DROP VIEW <view_name>;
```

---

# 🔄 Working with Views

Depending on the database system and the view definition, a view may allow:

* ✏️ Updating data
* ➕ Inserting records
* ❌ Deleting records

Some views automatically propagate these changes to their base tables.

---

# 🛡️ WITH CHECK OPTION

The **WITH CHECK OPTION** ensures that every inserted or updated row continues to satisfy the view's filtering condition.

### Generic Syntax

```sql
CREATE VIEW <view_name> AS
SELECT <columns>
FROM <table_name>
WHERE <condition>
WITH CHECK OPTION;
```

---

# ✅ Advantages

| Benefit               | Description                              |
| --------------------- | ---------------------------------------- |
| 🚀 Better Readability | Simplifies complex queries               |
| 🔒 Improved Security  | Hide sensitive information               |
| ♻️ Reusability        | Use the same query repeatedly            |
| 🧩 Data Abstraction   | Users don't need to know table structure |
| 🛠️ Easy Maintenance  | Modify one view instead of many queries  |
| 📊 Cleaner Reporting  | Present only relevant information        |

---

# ⚠️ Common Issues

| Issue             | Reason                           |
| ----------------- | -------------------------------- |
| View not updating | Complex view definition          |
| Missing rows      | Filter conditions exclude data   |
| Permission denied | Insufficient database privileges |
| Slow performance  | Deeply nested views              |
| Invalid object    | Base table or column modified    |

---

# 💡 Best Practices

* ✅ Keep views focused and simple.
* ✅ Use meaningful naming conventions.
* ✅ Avoid unnecessary nested views.
* ✅ Document each view's purpose.
* ✅ Prefer views over exposing raw tables.
* ✅ Use **WITH CHECK OPTION** when appropriate.
* ✅ Review performance regularly.

---

# 📚 Reference

📄 **SQL Script**

➡️ **[Views.sql](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Views/Views.sql)**

> Explore the complete SQL script used for this topic in the repository.

---

# 🎓 Conclusion

SQL Views provide a clean and secure way to work with database data. By acting as virtual tables, they simplify query writing, improve maintainability, and control data access without duplicating information.

Mastering SQL Views is an important step toward writing cleaner, more efficient, and more secure SQL applications.

---

## 📚 Topics Covered

* ✅ Introduction
* ✅ Features
* ✅ Advantages
* ✅ Simple Views
* ✅ Complex Views
* ✅ Managing Views
* ✅ Updating Views
* ✅ WITH CHECK OPTION
* ✅ Best Practices
* ✅ Common Issues

---

<div align="center">

### ⭐ If this guide helped you, consider exploring more SQL topics in this repository!

**Happy Learning! 🚀**

</div>
