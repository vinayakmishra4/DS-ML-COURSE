<div align="center">

# 🧹 Data Cleaning in SQL

**Practice-based documentation covering the core techniques for turning messy, real-world data into clean, analysis-ready datasets — using SQL.**

![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)
![Type](https://img.shields.io/badge/Type-Self--Paced%20Practice-orange?style=for-the-badge)
![Modules](https://img.shields.io/badge/Modules-5-blueviolet?style=for-the-badge)

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Data%20Cleaning-blue?style=flat-square)

</div>

---

### 📑 Contents

[Overview](#-overview) • [Course Info](#-course-info) • [Topics Covered](#-topics-covered) • [Applied Practice](#-applied-practice) • [Skills Gained](#-skills-gained) • [Certificate](#-certificate) • [References](#-references) • [Next Steps](#-next-steps)

---

## 📖 Overview

**Data Cleaning in SQL** is a hands-on learning module covering the core techniques for turning messy, real-world data into clean, analysis-ready datasets — handling missing values, removing duplicates, detecting outliers, and working with date fields, entirely in SQL. Each concept is documented alongside a working practice script, and the module closes with two applied cleaning projects on real datasets.

This module sits inside the same broader personal learning repository, **[DS-ML-COURSE](https://github.com/vinayakmishra4/DS-ML-COURSE)**, that also documents the **[Advancing SQL](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/SQL/Advancing-Sql)** module — together tracking an ongoing data science and machine learning journey.

---

## 📋 Course Info

| Detail | Description |
|---|---|
| 🏫 **Platform / Provider** | Self-paced, independent practice |
| ⏱️ **Duration** | ~2 weeks (7 Jul – 20 Jul 2026) |
| ✅ **Completion Status** | Completed — 20 Jul 2026 |
| 📄 **Format** | Topic-wise guides, each paired with a runnable practice script, plus 2 applied cleaning projects |

---

## 🧩 Topics Covered

<details open>
<summary><b>🧹 Introduction to Data Cleaning</b></summary>

What data cleaning is and why it matters, the most common data quality issues (missing values, duplicates, wrong data types, inconsistent formats, outliers, typos), the six-step cleaning workflow, and best practices for keeping datasets reliable.

🔗 [Read the guide](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Data-Cleaning/Introduction/Introduction.md)

</details>

<details>
<summary><b>🕳️ Handling Missing Values</b></summary>

`NULL` vs. zero vs. blank, why values go missing (MCAR / MAR / MNAR), and strategies for dealing with them — leave as-is, remove records or columns, replace with a constant, replace with a statistical value (mean / median / mode), apply business rules, or predict with ML.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Data-Cleaning/Handling-Missing-Values/Handling-Missing-Values.sql)

</details>

<details>
<summary><b>🗂️ Handling Duplicate Values</b></summary>

Finding unique records by ID, by name, and by multiple columns together; keeping one record per duplicate group; and the core toolkit — `DISTINCT`, `GROUP BY`, `COUNT()`, `ROW_NUMBER()`, `PARTITION BY`.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Data-Cleaning/Handling-Duplicate-values/Handling-Duplicate-values.sql)

</details>

<details>
<summary><b>📊 Handling Outliers</b></summary>

What outliers are and why they distort analysis, common detection methods, and a deep dive into the **Z-score method** for flagging unusual values — plus when to remove, replace, or deliberately retain them.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Data-Cleaning/Outliers/Outliers.sql)

</details>

<details>
<summary><b>📅 Handling Dates</b></summary>

Core SQL date functions (`DAY`, `MONTH`, `YEAR`, `DAYNAME`, `MONTHNAME`, `CURDATE`, `NOW`, `DATEDIFF`, `DATE_ADD`, `DATE_SUB`), extracting date components for reporting, and best practices for storing and comparing dates.

🔗 [Practice script](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Data-Cleaning/Handling-Date/Handling-Date.sql)

</details>

---

## 🔧 Applied Practice

Two end-to-end projects that put every technique above to work on real, messy data:

- 🇮🇳 **Full cleaning pipeline** on a messy sample dataset — remove duplicates, fill missing city/state/gender/salary values, standardize names/emails/phone numbers/dates, and fix inconsistent category labels. → [Data-Cleaning.sql](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Data-Cleaning/Data-Cleaning.sql)
- 🍽️ **Restaurant dataset cleanup** — extract restaurant IDs from a raw link field, clean and standardize restaurant names, and remove invalid city/cuisine entries. → [Resturant_clenaning.sql](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Data-Cleaning/Resturant_clenaning.sql)

---

## 🎯 Skills Gained

- 🔍 **Data Quality Diagnosis** — spotting missing values, duplicates, outliers & inconsistent formats before cleaning
- 🕳️ **NULL Handling** — choosing the right strategy: removal, constants, statistical fill, or business rules
- 🗂️ **Duplicate Detection** — using `DISTINCT`, `GROUP BY`, and window functions to find and resolve duplicates
- 📊 **Outlier Detection** — applying the Z-score method to flag and treat unusual values
- 📅 **Date Handling** — extracting components and calculating with SQL date functions for time-based reporting
- 🧼 **Text Standardization** — fixing casing, spacing, and format inconsistencies across fields
- 🏗️ **Workflow Design** — building a repeatable, end-to-end data cleaning pipeline
- 🍽️ **Applied Cleaning** — taking a real, messy dataset from raw to analysis-ready

---

## 🎓 Certificate

This module follows a self-paced, practice-first path rather than a certified course track — so the proof is in the practice. Every topic here is backed by complete documentation and a working script in the repository, standing in as a practical demonstration of applied SQL skill.

---

## 🔗 References

- 📁 **Module folder:** [Data-Cleaning](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/SQL/Data-Cleaning)
- 📦 **Parent repository:** [DS-ML-COURSE](https://github.com/vinayakmishra4/DS-ML-COURSE)
- 🔗 **Related module:** [Advancing SQL](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/SQL/Advancing-Sql)

---

## 🚀 Next Steps

Data cleaning is now a repeatable, applied workflow rather than a one-off task. A few natural directions from here:

- 🐼 Fold these cleaning steps into a standard pre-processing pipeline ahead of Python/Pandas EDA work
- 🛡️ Explore data validation at the source — constraints, checks, and typed columns to prevent bad data from entering in the first place
- 🔄 Look into automating quality checks for datasets that get refreshed regularly, rather than cleaning by hand each time

---

<div align="center">

⭐ **Part of the [DS-ML-COURSE](https://github.com/vinayakmishra4/DS-ML-COURSE) repository**
*Documenting an ongoing data science & machine learning journey.*

**Happy Learning! 🚀**

</div>