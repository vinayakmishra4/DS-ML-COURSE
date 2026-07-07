<div align="center">

# 🪟 Advancing SQL

**Practice-based documentation covering advanced, analytical SQL — window functions, ranking, transactions, and views.**

![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)
![Type](https://img.shields.io/badge/Type-Self--Paced%20Practice-orange?style=for-the-badge)
![Topics](https://img.shields.io/badge/Topics-6-blueviolet?style=for-the-badge)

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=flat-square&logo=microsoftsqlserver&logoColor=white)
![Oracle](https://img.shields.io/badge/Oracle-F80000?style=flat-square&logo=oracle&logoColor=white)

</div>

---

### 📑 Contents

[Overview](#-overview) • [Course Info](#-course-info) • [Topics Covered](#-topics-covered) • [Skills Gained](#-skills-gained) • [Certificate](#-certificate) • [References](#-references) • [Next Steps](#-next-steps)

---

## 📖 Overview

**Advancing SQL** is a hands-on learning module documenting a deep dive into advanced, analytical SQL that goes beyond basic querying. It focuses on the features most relevant to real-world data analysis, reporting, and backend engineering — window functions, ranking logic, transaction control, and views — with every topic paired with a working practice script.

This module sits inside a broader personal learning repository, **[DS-ML-COURSE](https://github.com/vinayakmishra4/DS-ML-COURSE)**, which tracks an ongoing data science and machine learning journey. It was built to sharpen practical SQL fluency for analytical reporting, database management, and technical interview preparation.

---

## 📋 Course Info

| Detail | Description |
|---|---|
| 🏫 **Platform / Provider** | Self-paced, independent practice — grounded in official database documentation |
| ⏱️ **Duration** | ~1 week (29 Jun – 7 Jul 2026) |
| ✅ **Completion Status** | Completed — 7 Jul 2026 |
| 📄 **Format** | Topic-wise guides, each paired with a runnable practice script |

---

## 🧩 Topics Covered

<details open>
<summary><b>🪟 Window Functions</b></summary>

Introduces the `OVER()` clause, `PARTITION BY`, and `ORDER BY` — plus the core aggregate (`SUM`, `AVG`, `COUNT`, `MAX`, `MIN`) and ranking (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `PERCENT_RANK`) window functions.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Window%20functions/Windows-function.sql)

</details>

<details>
<summary><b>🏆 Ranking</b></summary>

A focused look at `RANK()` — how it handles ties, why gaps appear afterward, and how it compares to `DENSE_RANK()` and `ROW_NUMBER()`.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Ranking/Ranking.sql)

</details>

<details>
<summary><b>🚀 Advanced Window Functions</b></summary>

Window frames, value functions (`LEAD`, `LAG`, `FIRST_VALUE`, `LAST_VALUE`), distribution functions (`NTILE`, `PERCENT_RANK`, `CUME_DIST`), and applied Top-N / revenue-concentration analysis.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Advanced-Window/Advanced-Window.sql)

</details>

<details>
<summary><b>💾 Saving — Tables & Subqueries</b></summary>

Persisting results with `CREATE TABLE ... AS`, session-scoped temporary tables, table aliases, and correlated subqueries.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Saving/Saving.sql)

</details>

<details>
<summary><b>🔐 Transactions</b></summary>

ACID properties, transaction control (`BEGIN`, `COMMIT`, `ROLLBACK`), and savepoint checkpoints across read, write, implicit, explicit, and distributed transaction types.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Transcation/Transction.sql)

</details>

<details>
<summary><b>🌟 Views</b></summary>

Virtual tables, simple vs. complex views, creating/replacing/dropping views, and enforcing conditions with `WITH CHECK OPTION`.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Views/Views.sql)

</details>

---

## 🎯 Skills Gained

- 📊 **Analytical Querying** — writing window-function queries for reporting & BI use cases
- 🏅 **Smart Ranking** — choosing the right ranking function for the scenario
- 📈 **Trend Analysis** — running totals, moving averages, Top-N & percentile insights
- 🔄 **Row Comparisons** — comparing values across rows for sequence & trend detection
- 🗄️ **Table Management** — working with permanent & temporary tables across workflows
- 🧹 **Clean Querying** — structuring queries well with aliases & subqueries
- 🔒 **Transaction Safety** — ACID-compliant commits, rollbacks & savepoints
- 🛡️ **View Design** — building views for abstraction, reuse & access control
- 🌐 **Cross-Database Fluency** — reasoning across MySQL, PostgreSQL & SQL Server

---

## 🎓 Certificate

This module follows a self-paced, practice-first path rather than a certified course track — so the proof is in the practice. Every topic here is backed by complete documentation and a working script in the repository, standing in as a practical demonstration of applied SQL skill.

---

## 🔗 References

- 📁 **Module folder:** [Advancing-Sql](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/SQL/Advancing-Sql)
- 📦 **Parent repository:** [DS-ML-COURSE](https://github.com/vinayakmishra4/DS-ML-COURSE)
- 📖 **Official documentation:** [MySQL](https://dev.mysql.com/doc/refman/8.0/en/window-functions.html) • [PostgreSQL](https://www.postgresql.org/docs/current/functions-window.html) • [SQL Server](https://learn.microsoft.com/sql/t-sql/functions/rank-transact-sql)

---

## 🚀 Next Steps

Advanced SQL — window functions, transactions, and views — is now a practical, applied skill rather than just theory. A few natural directions from here:

- 🐼 Pair SQL-based aggregation with Python/Pandas EDA workflows for end-to-end analysis
- ⚡ Go deeper on query performance — indexing strategy, execution plans, and optimizing window functions over large partitions
- 🏗️ Round out backend SQL skills with database design — normalization, indexing, and stored procedures

---

<div align="center">

⭐ **Part of the [DS-ML-COURSE](https://github.com/vinayakmishra4/DS-ML-COURSE) repository**
*Documenting an ongoing data science & machine learning journey.*

**Happy Learning! 🚀**

</div>