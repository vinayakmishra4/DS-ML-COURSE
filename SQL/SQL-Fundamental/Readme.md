# 🗄️ SQL Fundamentals for Data Science

Welcome to the **SQL Fundamentals** module of the DS-ML Course!

Data is the lifeblood of Machine Learning and Data Science, and relational databases are where the vast majority of the world's structured data lives. Before training models or generating visualizations, a data professional must be able to effectively extract, clean, and manipulate data at its source. This repository is designed to take you from a complete beginner to writing efficient, optimized queries.

---

## 🎯 Course Objectives

By completing this module, you will be able to:

* Design and define database schemas using Data Definition Language (DDL).
* Maintain and manipulate database records using Data Manipulation Language (DML).
* Write complex queries to filter, sort, and retrieve exact datasets needed for analysis.
* Apply conditional logic (`CASE` statements) to clean and categorize raw data directly within the database.
* Understand the architectural theory behind databases to design scalable solutions.

---

## 👤 Who is this for?

* **Aspiring Data Scientists & Analysts:** Build the foundational skills required to query massive datasets before loading them into analytical tools.
* **Backend Developers:** Learn how applications communicate with databases to store and retrieve user data.
* **Self-Taught Learners:** Anyone looking for a structured, strictly organized, and easy-to-follow guide to SQL.

---

## 📚 Curriculum & Learning Path

Please progress through the modules in the order listed below. Each module contains a dedicated markdown guide with syntax, real-world examples, and best practices.

### 🏛️ Section 1: Database Theory & Architecture

*Understanding the environment before writing the code.*

| Module | Description | Link |
| --- | --- | --- |
| **1. Intro to Database Systems** | What is a database, components, types of databases (SQL vs. NoSQL), and ACID properties. | [View Module](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/SQL-Fundamental/Intro-to-Databases-system/Intro-to-databases.md) |
| **2. Keys in DBMS** | Primary, Foreign, Candidate, Alternate, Super, and Composite Keys, plus Cardinality (1:1, 1:N, M:N). | [View Module](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/SQL-Fundamental/Keys/keys.md) |

### 💻 Section 2: Building the Structure

*Learning the language and defining the architecture of your tables.*

| Module | Description | Link |
| --- | --- | --- |
| **3. Introduction to SQL** | SQL syntax basics and core command categories (DDL, DML, DQL, DCL, TCL). | [View Module](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/SQL-Fundamental/Intro-to-SQL/Intro-to-sql.md) |
| **4. DDL Commands** | Data Definition Language: Creating, altering, dropping, renaming, and truncating database objects. | [View Module](https://www.google.com/search?q=https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/SQL-Fundamental/DDL-Commands/DDL-comands.md) |

### ✏️ Section 3: Data Manipulation (CRUD)

*Adding, modifying, and removing the actual records.*

| Module | Description | Link |
| --- | --- | --- |
| **5. Insert Data** | Methods for inserting single rows, multiple rows, partial data, and using default values. | [View Module](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/SQL/SQL-Fundamental/Insert-data) |
| **6. Update Data** | Safely modifying existing records using specific conditions to maintain data integrity. | [View Module](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/SQL-Fundamental/Update-data/Update-data.md) |
| **7. Delete Data** | Removing outdated or incorrect records efficiently and the importance of data verification. | [View Module](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/SQL/SQL-Fundamental/Delete-data) |

### 🔍 Section 4: Data Retrieval & Advanced Logic

*Querying data to extract meaningful business insights.*

| Module | Description | Link |
| --- | --- | --- |
| **8. Data Retrieval** | Writing powerful `SELECT` queries using `WHERE`, `IN`, `LIKE`, `ORDER BY`, and `LIMIT`. | [View Module](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/SQL-Fundamental/Data-Reterival/data-retervial.md) |
| **9. CASE Statement** | Applying IF-ELSE conditional logic directly inside your queries to categorize and transform data. | [View Module](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/SQL-Fundamental/Case/Case.md) |

---

## 🛠️ Prerequisites & Setup

To practice the concepts in this repository, you will need a relational database management system.

**Recommended Local Setup:**

1. Download and install **MySQL Server**.
2. Download and install **MySQL Workbench** (or any preferred IDE like DBeaver or DataGrip).
3. Clone this repository to access the exact markdown notes and future `.sql` script files.

```bash
git clone https://github.com/vinayakmishra4/DS-ML-COURSE.git

```

---

## 🚀 Next Steps in the Journey

Mastering these SQL fundamentals is the perfect stepping stone before moving into advanced data pipelines. Once you are comfortable with these queries, the next natural progression is connecting your database to Python environments, performing exploratory data analysis with libraries like Pandas, and visualizing the results with Matplotlib and Seaborn.