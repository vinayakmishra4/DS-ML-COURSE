# 📊 Append Queries in Power BI

<p align="center">
  <b>🔽 Combine Tables Vertically • Add Rows • Consolidate Data</b>
</p>

<p align="center">
  <a href="https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/Quries/Append-Quires/Append-Quries.pbix">
    📥 Download / Open PBIX File
  </a>
</p>

---

## 🧠 What is Append Queries?

**Append Queries** is a Power Query feature in Power BI used to **combine two or more tables vertically** by adding the rows of one table below the rows of another table.

The fundamental concept is:

> 🔽 **Append = Add Rows**

It is useful when multiple datasets contain similar information but are stored separately, such as:

* 📅 Different years
* 🗓️ Different months
* 🌍 Different regions
* 🏢 Different branches
* 📁 Different files
* 🛒 Different transaction sources

---

## 🔥 Append Queries at a Glance

```text
       TABLE A
   ┌───────────────┐
   │ Row 1         │
   │ Row 2         │
   │ Row 3         │
   └───────┬───────┘
           │
           │  APPEND
           ▼
   ┌───────────────┐
   │ Row 4         │
   │ Row 5         │
   │ Row 6         │
   └───────────────┘

           ↓

      COMBINED TABLE
   ┌───────────────┐
   │ Row 1         │
   │ Row 2         │
   │ Row 3         │
   │ Row 4         │
   │ Row 5         │
   │ Row 6         │
   └───────────────┘
```

---

# 🎯 Why Use Append Queries?

Append Queries is primarily used for **data consolidation**.

For example, a company may maintain separate sales datasets:

```text
📁 Sales Data
│
├── 📄 Sales_2019
├── 📄 Sales_2020
├── 📄 Sales_2021
└── 📄 Sales_2022
```

Instead of analyzing each table independently, they can be appended into:

```text
📊 All Sales
```

This creates a single dataset that can be used for reporting and analysis.

---

# 📋 Example

### 🟦 Sales 2019

| Order ID | Product |  Sales |
| -------- | ------- | -----: |
| 101      | Laptop  | 50,000 |
| 102      | Mouse   |  1,500 |

### 🟩 Sales 2020

| Order ID | Product  |  Sales |
| -------- | -------- | -----: |
| 103      | Keyboard |  2,500 |
| 104      | Monitor  | 12,000 |

### 🔽 After Append

| Order ID | Product  |  Sales |
| -------- | -------- | -----: |
| 101      | Laptop   | 50,000 |
| 102      | Mouse    |  1,500 |
| 103      | Keyboard |  2,500 |
| 104      | Monitor  | 12,000 |

The rows from the second table are placed below the rows from the first table.

---

# 🧩 How Does Append Work?

Append Queries combines tables based primarily on **column names**.

For example:

```text
Table A
┌─────────┬───────┬────────┐
│ Product │ Sales │ Region │
└─────────┴───────┴────────┘

Table B
┌─────────┬───────┬────────┐
│ Product │ Sales │ Region │
└─────────┴───────┴────────┘

             ↓ APPEND

Combined Table
┌─────────┬───────┬────────┐
│ Product │ Sales │ Region │
├─────────┼───────┼────────┤
│ ...     │ ...   │ ...    │
│ ...     │ ...   │ ...    │
└─────────┴───────┴────────┘
```

> ⚠️ Append does **not** require a common key column.

This is one of the major differences between Append and Merge.

---

# 🛠️ How to Append Queries

### 1️⃣ Open Power Query Editor

In Power BI Desktop:

**Home → Transform Data**

This opens the Power Query Editor.

### 2️⃣ Select a Query

Select the query you want to work with from the Queries pane.

### 3️⃣ Open Append

Go to:

**Home → Combine → Append Queries**

### 4️⃣ Select the Queries

Choose the tables that should be combined.

Power Query supports:

* **Two tables**
* **Three or more tables**

### 5️⃣ Click OK

Power Query creates the appended result.

---

# 🆕 Append Queries as New

Power Query provides two options:

### 🔹 Append Queries

Adds the rows to the existing query.

```text
Sales 2019
    +
Sales 2020
    ↓
Sales 2019
```

### 🔹 Append Queries as New

Creates a new query containing the combined data.

```text
Sales 2019 ─────┐
                ├──→ 📊 Combined Sales
Sales 2020 ─────┘
```

The original queries remain available separately.

> ⭐ **Append Queries as New** is useful when you want to preserve the original queries.

---

# 📚 Two or More Queries

Append can combine multiple datasets.

```text
Sales 2019 ──┐
Sales 2020 ──┤
Sales 2021 ──┤──→ 📊 Combined Sales
Sales 2022 ──┤
Sales 2023 ──┘
```

This is especially useful for historical datasets.

---

# ⚠️ Different Columns

The tables do not have to contain exactly the same columns.

If a column exists in one table but not another, Power Query includes the column in the resulting table and uses **null** where the source table does not have a value.

### Example

**Table A**

| Product |  Sales |
| ------- | -----: |
| Laptop  | 50,000 |

**Table B**

| Product |  Sales | Region |
| ------- | -----: | ------ |
| Monitor | 12,000 | North  |

### Result

| Product |  Sales | Region |
| ------- | -----: | ------ |
| Laptop  | 50,000 | null   |
| Monitor | 12,000 | North  |

### 💡 Best Practice

Before appending, try to standardize:

* Column names
* Column meanings
* Data types
* Data formats

---

# 🔤 Column Names Matter

Power Query uses **column names** when combining columns.

For example:

```text
Table A:
Product | Sales | Region

Table B:
Product | Sales | Region
```

These columns are correctly aligned.

However:

```text
Table A:
Product | Sales

Table B:
Product Name | Sales Amount
```

Power Query treats these as different columns.

Therefore, standardizing column names before appending is an important data-cleaning step.

---

# 🧹 Duplicate Records

Append Queries **does not automatically remove duplicate rows**.

For example:

```text
Table A
Order ID = 1001

Table B
Order ID = 1001
```

After append:

```text
Order ID
────────
1001
1001
```

If duplicates are unwanted, they must be handled separately using Power Query transformations such as:

**Home → Remove Rows → Remove Duplicates**

---

# 📅 Common Use Cases

| Scenario          | Example                     |
| ----------------- | --------------------------- |
| 📅 Year-wise data | Sales 2022 + Sales 2023     |
| 🗓️ Monthly data  | January + February + March  |
| 🌍 Regional data  | North + South + East + West |
| 🏢 Branch data    | Delhi + Mumbai + Bangalore  |
| 📁 Multiple files | CSV 1 + CSV 2 + CSV 3       |
| 🛒 Transactions   | Online + Store transactions |

---

# 🆚 Append vs Merge

| Feature      | 🔽 Append                | 🔗 Merge             |
| ------------ | ------------------------ | -------------------- |
| Operation    | Vertical                 | Horizontal           |
| Adds         | Rows                     | Columns              |
| Common Key   | ❌ Not required           | ✅ Usually required   |
| Main Purpose | Combine similar datasets | Enrich existing data |
| SQL Concept  | `UNION ALL`              | `JOIN`               |
| Example      | Sales 2019 + Sales 2020  | Sales + Product      |

### 🧠 Easy Way to Remember

```text
🔽 APPEND
    ↓
  ROWS

🔗 MERGE
    →
 COLUMNS
```

---

# 🗄️ Append and SQL UNION ALL

Append Queries is conceptually similar to SQL `UNION ALL`.

```sql
SELECT *
FROM Sales2019

UNION ALL

SELECT *
FROM Sales2020;
```

Both operations combine records from multiple datasets without automatically removing duplicates.

---

# ✅ Best Practices

When using Append Queries:

* ✅ Keep column names consistent.
* ✅ Check data types before appending.
* ✅ Standardize the structure of source tables.
* ✅ Remove unnecessary columns.
* ✅ Validate the resulting row count.
* ✅ Check for duplicate records.
* ✅ Check for unexpected `null` values.
* ✅ Use meaningful query names.
* ✅ Use **Append Queries as New** when original queries should remain unchanged.

---

# 📌 Key Takeaways

> ### 🔽 Append = Add Rows

| Concept             | Meaning                           |
| ------------------- | --------------------------------- |
| 📊 Append           | Combines tables vertically        |
| ➕ Main effect       | Adds rows                         |
| 🔑 Common key       | Not required                      |
| 🏷️ Column matching | Based on column names             |
| ❌ Duplicate removal | Not automatic                     |
| 🆕 Append as New    | Creates a separate combined query |
| 🧩 Missing columns  | Produce `null` values             |
| 🗃️ SQL equivalent  | Similar to `UNION ALL`            |

---

# 📥 Power BI Project

## Append Queries — `.pbix`

This repository contains the Power BI project demonstrating **Append Queries**.

### 🔗 GitHub Repository

**Project File:**

👉 [**Append-Quries.pbix**](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/Quries/Append-Quires/Append-Quries.pbix)

### 🌐 Direct URL

```text
https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/Quries/Append-Quires/Append-Quries.pbix
```

> 💡 **Note:** GitHub does not directly display the contents of `.pbix` files in the browser. Download the file and open it using **Power BI Desktop**.

---

# 📖 Official Documentation

For detailed information about Append Queries, refer to Microsoft's official documentation:

👉 [**Microsoft Learn — Append Queries**](https://learn.microsoft.com/en-us/power-query/append-queries)

---

# 🎓 Final Summary

**Append Queries** is a fundamental Power Query operation used to consolidate multiple datasets into one table.

Its purpose can be summarized as:

```text
       MULTIPLE TABLES
              │
              ▼
        ┌───────────┐
        │   APPEND  │
        └─────┬─────┘
              │
              ▼
       COMBINED TABLE
              │
              ▼
       📊 DATA ANALYSIS
              │
              ▼
       📈 POWER BI REPORT
```

### ⭐ Remember

> **APPEND → ADD ROWS → VERTICAL COMBINATION**

This makes Append Queries especially useful for building consolidated and refreshable datasets from multiple sources, periods, regions, or files.

---

<p align="center">
  <b>📊 Power BI • Power Query • Data Transformation • Append Queries</b>
</p>

<p align="center">
  ⭐ If this project helps you learn Power BI, consider starring the repository!
</p>
