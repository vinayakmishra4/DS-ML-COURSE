# 🗄️ SQL (Structured Query Language)

> **SQL** is the standard language used to interact with relational databases.
> Store, retrieve, manipulate, and manage data efficiently.

---

<div align="center">

### 📚 Learn Once • Query Anywhere • Power Every Database

</div>

---

## 📑 Table of Contents

* [What is SQL?](#-what-is-sql)
* [Popular Database Systems](#-popular-database-systems)
* [SQL Command Categories](#-sql-command-categories)
* [SQL Syntax Basics](#-sql-syntax-basics)
* [DDL — Data Definition Language](#-1-ddl--data-definition-language)
* [DML — Data Manipulation Language](#-2-dml--data-manipulation-language)
* [DQL — Data Query Language](#-3-dql--data-query-language)
* [DCL — Data Control Language](#-4-dcl--data-control-language)
* [TCL — Transaction Control Language](#-5-tcl--transaction-control-language)

---

# 🚀 What is SQL?

**SQL (Structured Query Language)** is the industry-standard language used to communicate with **Relational Database Management Systems (RDBMS)**.

Using SQL, you can:

✅ Create databases and tables
✅ Insert, update, and delete records
✅ Retrieve data efficiently
✅ Control user permissions
✅ Manage transactions and maintain data integrity

---

### 🏛️ History

SQL was developed at **IBM** in the early 1970s by **Donald Chamberlin** and **Raymond Boyce**.

📌 Became an **ANSI Standard in 1986**
📌 Became an **ISO Standard in 1987**

> 💡 **SQL is Declarative**
>
> You specify **what** data you need, and the database engine determines **how** to retrieve it.

---

# 💾 Popular Database Systems

| Database                | Type        | Common Use Cases                 |
| ----------------------- | ----------- | -------------------------------- |
| 🐬 MySQL                | Open Source | Web Applications                 |
| 🐘 PostgreSQL           | Open Source | Enterprise & Advanced Systems    |
| 📱 SQLite               | Embedded    | Mobile & Lightweight Apps        |
| 🏢 Microsoft SQL Server | Commercial  | Enterprise Windows Environments  |
| 🔴 Oracle Database      | Commercial  | Large-Scale Enterprise Solutions |

---

# 🧩 SQL Command Categories

SQL commands are grouped into five major categories:

```text
SQL Commands
│
├── DDL → Data Definition Language
├── DML → Data Manipulation Language
├── DQL → Data Query Language
├── DCL → Data Control Language
└── TCL → Transaction Control Language
```

| Category | Purpose                   |
| -------- | ------------------------- |
| 🏗️ DDL  | Define database structure |
| ✏️ DML   | Modify stored data        |
| 🔍 DQL   | Retrieve data             |
| 🔐 DCL   | Manage permissions        |
| 🔄 TCL   | Manage transactions       |

---

# 📝 SQL Syntax Basics

### Basic Query Structure

```sql
SELECT column1, column2
FROM table_name
WHERE condition
ORDER BY column1 ASC;
```

---

## 📌 Important Rules

| Rule          | Description                         |
| ------------- | ----------------------------------- |
| 🔤 Keywords   | SQL keywords are not case-sensitive |
| 📣 Convention | Use UPPERCASE for readability       |
| 🔚 Semicolon  | End statements with `;`             |
| 📝 Strings    | Use single quotes `'value'`         |
| 🔢 Numbers    | No quotes required                  |
| 💬 Comments   | `--` or `/* */`                     |
| ⚠️ Wildcard   | Avoid `SELECT *` in production      |

---

## Example Query

```sql
-- Employees earning more than 50,000

SELECT name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;
```

---

# 🏗️ 1. DDL — Data Definition Language

DDL commands define and modify database structures.

### Commands

| Command    | Purpose            |
| ---------- | ------------------ |
| `CREATE`   | Create objects     |
| `ALTER`    | Modify structure   |
| `DROP`     | Remove objects     |
| `TRUNCATE` | Remove all records |
| `RENAME`   | Rename objects     |

---

### Example

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    dept_id INT
);

ALTER TABLE employees
ADD COLUMN email VARCHAR(150);

DROP TABLE employees;
```

---

# ✏️ 2. DML — Data Manipulation Language

DML commands manage data inside tables.

### Commands

| Command  | Purpose                        |
| -------- | ------------------------------ |
| `INSERT` | Add records                    |
| `UPDATE` | Modify records                 |
| `DELETE` | Remove records                 |
| `MERGE`  | Insert or update conditionally |

---

### Example

```sql
INSERT INTO employees (id, name, salary)
VALUES (1, 'Alice', 75000);

UPDATE employees
SET salary = 80000
WHERE id = 1;

DELETE FROM employees
WHERE id = 1;
```

---

# 🔍 3. DQL — Data Query Language

DQL focuses on retrieving information from databases.

### Command

| Command  | Purpose       |
| -------- | ------------- |
| `SELECT` | Retrieve data |

---

### Examples

```sql
SELECT * FROM employees;
```

```sql
SELECT name, salary
FROM employees
WHERE salary > 50000;
```

```sql
SELECT name, salary
FROM employees
ORDER BY salary DESC;
```

```sql
SELECT DISTINCT dept_id
FROM employees;
```

---

# 🔐 4. DCL — Data Control Language

DCL manages access control and permissions.

### Commands

| Command  | Purpose            |
| -------- | ------------------ |
| `GRANT`  | Give permissions   |
| `REVOKE` | Remove permissions |

---

### Example

```sql
GRANT SELECT, INSERT
ON employees
TO 'user1'@'localhost';

REVOKE INSERT
ON employees
FROM 'user1'@'localhost';
```

---

# 🔄 5. TCL — Transaction Control Language

TCL ensures data consistency and integrity.

### Commands

| Command     | Purpose                     |
| ----------- | --------------------------- |
| `COMMIT`    | Save changes                |
| `ROLLBACK`  | Undo changes                |
| `SAVEPOINT` | Create rollback checkpoints |

---

### Example

```sql
BEGIN;

UPDATE accounts
SET balance = balance - 500
WHERE id = 1;

SAVEPOINT after_debit;

UPDATE accounts
SET balance = balance + 500
WHERE id = 2;

ROLLBACK TO after_debit;

COMMIT;
```

---

# 🎯 Quick Summary

| Category | Full Form                    | Purpose           |
| -------- | ---------------------------- | ----------------- |
| 🏗️ DDL  | Data Definition Language     | Structure         |
| ✏️ DML   | Data Manipulation Language   | Data Modification |
| 🔍 DQL   | Data Query Language          | Data Retrieval    |
| 🔐 DCL   | Data Control Language        | Permissions       |
| 🔄 TCL   | Transaction Control Language | Transactions      |

---

## 💡 Best Practices

✔ Use meaningful table and column names
✔ Always include a `WHERE` clause when updating/deleting records
✔ Avoid `SELECT *` in production systems
✔ Use indexes wisely for performance
✔ Use transactions for critical operations
✔ Follow consistent naming conventions

---

> 🎉 **Congratulations!** You now understand the foundations of SQL and the five major categories of SQL commands. Master these concepts before moving on to **Joins, Constraints, Functions, Indexes, Views, Stored Procedures, and Database Design.**
