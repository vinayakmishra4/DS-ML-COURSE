# 📊 Power BI Queries

> 🔄 Power Query • Data Transformation • Data Combination • Data Preparation
> Welcome to the **Power BI Queries** section.
> This README covers important Power Query concepts for Power BI.
> Power Query helps import, clean, transform, combine, and prepare data.

---

## 📚 Topics Covered

* 🔽 Append Queries
* 🆕 Append Queries as New
* 📊 Combining Multiple Queries
* ⚠️ Different Columns and `null` Values
* 🔤 Column Name Matching
* 🧹 Duplicate Records
* 🆚 Append vs Merge
* 🗄️ Append vs SQL `UNION ALL`
* ✅ Best Practices

---

# 🔽 Append Queries

## 🧠 What is Append Queries?

**Append Queries** combines two or more tables **vertically**.

> ### 🔽 Append = Add Rows

It is useful when similar datasets are stored separately.

### Common Examples

* 📅 Different years
* 🗓️ Different months
* 🌍 Different regions
* 🏢 Different branches

## 🔥 How Append Works

```text
TABLE A
Row 1
Row 2
Row 3
   │
   │ APPEND
   ▼
COMBINED TABLE
Row 1
Row 2
Row 3
Row 4
Row 5
```

---

# 🎯 Why Use Append Queries?

Append Queries is mainly used for **data consolidation**.
Example:

```text
📁 Sales Data
├── 📄 Sales_2019
├── 📄 Sales_2020
├── 📄 Sales_2021
└── 📄 Sales_2022
```

These datasets can be combined into one **All Sales** table.
This creates a single dataset for reporting and analysis.
---------------------------------------------------------

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

| Order ID                                                     | Product | Sales |
| ------------------------------------------------------------ | ------- | ----: |
| Rows from the second table are placed below the first table. |         |       |

# 🧩 How Does Append Work?

Append Queries aligns data primarily using **column names**.

```text
Table A: Product | Sales | Region
Table B: Product | Sales | Region
                ↓
             APPEND
                ↓
Combined: Product | Sales | Region
```

> ⚠️ Append does not require a common key column.

# 🛠️ How to Append Queries

In Power BI Desktop:
`Home → Transform Data`

### 2️⃣ Select a Query

Select the required query from the **Queries pane**.

### 3️⃣ Open Append

Go to:
`Home → Combine → Append Queries`

### 4️⃣ Select the Queries

Power Query supports two or more tables.

### 5️⃣ Click OK

## Power Query creates the combined result.

# 🆕 Append Queries as New

Power Query provides two options.

## 🔹 Append Queries

Adds rows to an existing query.

## 🔹 Append Queries as New

Creates a completely new query.

> ⭐ Use **Append Queries as New** when you want to preserve originals.

# 📚 Append Multiple Queries

Power Query can combine multiple datasets.

```text
Sales 2019 ──┐
Sales 2020 ──┤
Sales 2021 ──┤──→ Combined Sales
Sales 2022 ──┘
```

This is useful for historical datasets.

# ⚠️ Different Columns

Tables do not need exactly the same columns.
If a column is missing from a source, Power Query uses `null`.

| Product |  Sales | Region |
| ------- | -----: | ------ |
| Laptop  | 50,000 | null   |
| Monitor | 12,000 | North  |

# 🔤 Column Names Matter

Power Query uses **column names** to align data.

### Correct

```text
Table A: Product | Sales | Region
Table B: Product | Sales | Region
```

### Different

```text
Table A: Product | Sales
Table B: Product Name | Sales Amount
```

> 💡 Standardize column names before appending.

# 🧹 Duplicate Records

Append Queries does **not automatically remove duplicates**.

```text
Table A: Order ID = 1001
Table B: Order ID = 1001
```

After Append:

```text
Order ID
1001
1001
```

`Home → Remove Rows → Remove Duplicates`

# 📅 Common Use Cases

| Scenario          | Example                     |
| ----------------- | --------------------------- |
| 📅 Year-wise Data | Sales 2022 + Sales 2023     |
| 🗓️ Monthly Data  | January + February + March  |
| 🌍 Regional Data  | North + South + East + West |
| 🏢 Branch Data    | Delhi + Mumbai + Bangalore  |
| 📁 Multiple Files | CSV 1 + CSV 2 + CSV 3       |
| 🛒 Transactions   | Online + Store Transactions |

# 🆚 Append vs Merge

| Feature      | 🔽 Append            | 🔗 Merge             |
| ------------ | -------------------- | -------------------- |
| Operation    | Vertical             | Horizontal           |
| Adds         | Rows                 | Columns              |
| Common Key   | ❌ Not Required       | ✅ Usually Required   |
| Main Purpose | Combine Similar Data | Enrich Existing Data |
| SQL Concept  | `UNION ALL`          | `JOIN`               |

```text
🔽 APPEND → ROWS
🔗 MERGE  → COLUMNS
```

# 🗄️ Append and SQL UNION ALL

Append Queries is conceptually similar to SQL `UNION ALL`.

```sql
SELECT *
FROM Sales2019
UNION ALL
SELECT *
FROM Sales2020;
```

# ✅ Best Practices

* ✅ Keep column names consistent.
* ✅ Check data types before appending.
* ✅ Standardize source table structures.
* ✅ Remove unnecessary columns.
* ✅ Validate the resulting row count.
* ✅ Check for duplicate records.
* ✅ Check for unexpected `null` values.
* ✅ Use meaningful query names.
* ✅ Use **Append Queries as New** when originals should remain unchanged.

# 📌 Key Takeaways

> ## 🔽 APPEND = ADD ROWS

| Concept             | Meaning                    |
| ------------------- | -------------------------- |
| 📊 Append           | Combines tables vertically |
| ➕ Main Effect       | Adds rows                  |
| 🔑 Common Key       | Not required               |
| 🏷️ Matching        | Based on column names      |
| ❌ Duplicate Removal | Not automatic              |
| 🆕 Append as New    | Creates a separate query   |
| 🧩 Missing Columns  | Produce `null` values      |
| 🗃️ SQL Equivalent  | Similar to `UNION ALL`     |

# 📂 Repository Structure

```text
POWER-BI
└── Queries
    ├── README.md
    └── Append-Queries
        ├── Append-Queries.md
        └── Append-Queries.pbix
```

# 🎓 Final Summary

Power Query is an important part of Power BI for preparing and transforming data.
**Append Queries** helps consolidate multiple datasets into a single table.

```text
MULTIPLE TABLES
      │
      ▼
    APPEND
      │
      ▼
COMBINED TABLE
      │
      ▼
 DATA ANALYSIS
      │
      ▼
POWER BI REPORT
```

## ⭐ Remember

> ### 🔽 APPEND → ADD ROWS → VERTICAL COMBINATION

## Append Queries is useful for combining periods, regions, branches, files, and transactions.

### 📊 Power BI • Power Query • Data Transformation • Data Analysis

⭐ Learn Power BI through practical Power Query examples.
⭐ Keep source structures consistent before using Append Queries.
⭐ Use Append Queries as New when you need to preserve source queries.
⭐ Check duplicates and `null` values after combining datasets.
