# 📘 QUERY OPTIMIZATION

<div align="center">

![SQL](https://img.shields.io/badge/SQL-Query%20Optimization-blue?style=for-the-badge&logo=mysql)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Intermediate-success?style=for-the-badge)
![Database](https://img.shields.io/badge/Database-MySQL-orange?style=for-the-badge&logo=mysql)
![Guides](https://img.shields.io/badge/Guides-5-red?style=for-the-badge)

**A hands-on SQL reference for writing faster, leaner, more scalable queries — covering execution order, core optimization techniques, indexing, CTEs, and table partitioning.**

</div>

---

## 📑 Table of Contents

- Overview
- Prerequisites
- Repository Structure
- Topics Covered
- How to Use This Repository
- Common Pitfalls Across These Techniques
- Conclusion & Next Steps
- Author

---

## 📖 Overview

This folder is a practice-first reference on **SQL Query Optimization** — the set of techniques that make a query return the same result faster, using less CPU, memory, and disk I/O.

It's organized as **five focused guides**, each pairing a written explanation (`.md`) with a runnable script (`.sql`), tested against a shared sample table, `messy_indian_dataset`, so every concept is backed by real SQL rather than just theory.

Two queries can return an identical result set and still differ by orders of magnitude in execution time. Understanding *how* the database engine actually processes a query — not just how you happened to type it — is what separates a query that works from one that scales.

---

## 🛠️ Prerequisites

- Comfort with basic SQL: `SELECT`, `WHERE`, `JOIN`, `GROUP BY`, `ORDER BY`
- A MySQL instance (Workbench, DBeaver, or the `mysql` CLI) — the scripts use MySQL-specific syntax: `EXPLAIN`, `CREATE FULLTEXT INDEX`, `MATCH() AGAINST()`, generated columns, and `PARTITION BY HASH / RANGE / LIST`
- The shared sample table referenced throughout, **`messy_indian_dataset`** (in the `gfg` schema) — columns referenced across the scripts include `id`, `name`, `city`, `gender`, `email`, `state`, `purchase_amount`, and `purchase_date`. Recreate a similar table, or point the scripts at your own data.

---

## 🗂️ Repository Structure

```text
Qurey-Optimization-techenqiue/
├── README.md                       👈 you are here
├── Order-of-Execution/
│   ├── Order-of-excution.md
│   └── Order-of-excution.sql
├── Optimization-Qurey/
│   ├── Optimization-Qurey.md
│   └── Optimizaltion-Qurey.sql
├── Indexing/
│   ├── Indexing.md
│   └── Indexing.sql
├── CTE/
│   ├── CTE.md
│   └── CTE.sql
└── Partition-Table/
    ├── Partition-Table.md
    └── Partition-Table.sql
```

---

## 📚 Topics Covered

> 💡 **Suggested reading order:** 1 → 2 → 3 → 4 → 5 — start with how SQL actually thinks, then the general toolbox, then each specific technique in turn. Click a topic to expand it.

<details>
<summary><strong>1. Order of Execution</strong></summary>
<br>

The real evaluation order — `FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT` — versus the order you type a query in.

📄 [Guide](./Order-of-Execution/Order-of-excution.md) &nbsp;·&nbsp; 💻 [Script](./Order-of-Execution/Order-of-excution.sql)

</details>

<details>
<summary><strong>2. Query Optimization Techniques</strong></summary>
<br>

The general toolbox: column pruning, correct `JOIN` choice, appropriate data types, reading execution plans, caching, and temporary tables.

📄 [Guide](./Optimization-Qurey/Optimization-Qurey.md) &nbsp;·&nbsp; 💻 [Script](./Optimization-Qurey/Optimizaltion-Qurey.sql)

</details>

<details>
<summary><strong>3. Indexing</strong></summary>
<br>

Primary, simple, composite, unique, full-text, clustered, and non-clustered indexes — and when each one is worth the write-side cost.

📄 [Guide](./Indexing/Indexing.md) &nbsp;·&nbsp; 💻 [Script](./Indexing/Indexing.sql)

</details>

<details>
<summary><strong>4. CTE (Common Table Expressions)</strong></summary>
<br>

Using `WITH` to turn nested, repeated subqueries into readable, reusable — even recursive — steps.

📄 [Guide](./CTE/CTE.md) &nbsp;·&nbsp; 💻 [Script](./CTE/CTE.sql)

</details>

<details>
<summary><strong>5. Table Partitioning</strong></summary>
<br>

Splitting huge tables into range, list, hash, key, or composite partitions so the engine only scans what it needs to (partition pruning).

📄 [Guide](./Partition-Table/Partition-Table.md) &nbsp;·&nbsp; 💻 [Script](./Partition-Table/Partition-Table.sql)

</details>

---

## ▶️ How to Use This Repository

1. Clone or download this folder.
2. Open the `.sql` file for whichever topic you're studying, in MySQL Workbench, DBeaver, or the `mysql` CLI.
3. Point it at your own schema — swap out `messy_indian_dataset` for a table of your own, or recreate one with similar columns to follow along exactly.
4. Read the matching `.md` guide alongside the script; each one explains the *why* before the *how*, with diagrams, comparison tables, and real-world use cases.
5. Run `EXPLAIN` (or `EXPLAIN ANALYZE`) on your own queries before and after applying a technique — seeing the plan change on your own data teaches more than reading about it does.

---

## 🚨 Common Pitfalls Across These Techniques

Recurring themes pulled from the "Common Mistakes" sections of all five guides:

| Pitfall | Why It Hurts | Fix |
|---|---|---|
| `SELECT *` out of habit | Pulls unused columns; wastes I/O, memory, and network | List only the columns you actually need |
| Indexing every column | Slows every `INSERT` / `UPDATE` / `DELETE`; wastes storage | Index only columns you frequently filter or join on |
| Assuming SQL runs top-to-bottom | Leads to confusing `WHERE`-vs-`HAVING` bugs | Learn the logical order: `FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT` |
| Partitioning small tables | Adds administrative overhead for no real benefit | Reserve partitioning for genuinely large tables |
| Ignoring the execution plan | Bottlenecks stay invisible until they hit production | Run `EXPLAIN` before and after any change |
| Over-nesting CTEs or subqueries | Hurts readability without helping performance | Keep each CTE focused; flatten once it stops adding clarity |

---

## 🎯 Conclusion & Next Steps

- Query optimization is rarely one silver-bullet trick — it's execution-order literacy, the right indexes, clean queries, and a data layout (partitioning) that matches your scale, all working together.
- Work through the five guides in order, run every script yourself against real data, and compare `EXPLAIN` output before and after each change.
- Natural next topics once these feel comfortable: engine-specific execution plan analysis (MySQL `EXPLAIN ANALYZE`, PostgreSQL `EXPLAIN (ANALYZE, BUFFERS)`), materialized views, connection pooling, and read replicas or sharding for scale beyond a single partitioned table.

---

<div align="center">

## 👨‍💻 Author

### **Vinayak Mishra**

**Repository:** **DS-ML-COURSE**

⭐ If this reference helped you, consider giving the repository a **Star**.

**Made with ❤️ for Learning • Practice • Interview Preparation**

</div>