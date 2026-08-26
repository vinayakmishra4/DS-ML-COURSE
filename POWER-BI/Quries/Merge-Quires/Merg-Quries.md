# 🔗 Merge Queries in Power BI

> **Merge Queries combines related tables horizontally by matching one or more columns.**
>
> Think of it as **SQL `JOIN` inside Power Query**.

---

## 📌 Table of Contents

* [What is Merge Queries?](#-what-is-merge-queries)
* [Quick Example](#-quick-example)
* [Before You Merge](#-before-you-merge)
* [How to Merge Queries](#-how-to-merge-queries)
* [Join Types](#-join-types)
* [Fuzzy Matching](#-fuzzy-matching)
* [Multiple-Column Matching](#-multiple-column-matching)
* [Common Problems](#-common-problems)
* [Merge vs Relationships](#-merge-vs-relationships)
* [Merge vs Append](#-merge-vs-append)
* [Best Practices](#-best-practices)
* [Quick Reference](#-quick-reference)
* [📁 Power BI File](#-power-bi-file)

---

# 🧩 What is Merge Queries?

**Merge Queries** is a feature in Power BI's **Power Query Editor** that allows you to combine two tables using matching values in one or more columns.

It works **horizontally**:

```text
Table A
   │
   │  Match using Key
   ▼
Table B
   │
   ▼
New columns added to Table A
```

### 🔑 Key Characteristics

| Property           | Merge Query          |
| ------------------ | -------------------- |
| 📐 Direction       | Horizontal           |
| ➕ Adds             | Columns              |
| 🔑 Matching        | One or more columns  |
| 🗃️ SQL equivalent | `JOIN`               |
| 🎯 Main purpose    | Enrich existing data |
| ⭐ Default join     | Left Outer           |

---

# 📊 Quick Example

### 🛒 Sales

| Order ID | Product ID | Sales |
| -------- | ---------- | ----: |
| 1001     | P101       |   500 |
| 1002     | P102       |   700 |
| 1003     | P103       |   400 |

### 📦 Products

| Product ID | Product Name | Category    |
| ---------- | ------------ | ----------- |
| P101       | Laptop       | Electronics |
| P102       | Mouse        | Accessories |
| P103       | Keyboard     | Accessories |

Both tables contain **Product ID**, so it can be used as the matching key.

### After Merge + Expand

| Order ID | Product ID | Sales | Product Name | Category    |
| -------- | ---------- | ----: | ------------ | ----------- |
| 1001     | P101       |   500 | Laptop       | Electronics |
| 1002     | P102       |   700 | Mouse        | Accessories |
| 1003     | P103       |   400 | Keyboard     | Accessories |

🎯 **Result:** The Sales table is enriched with product information.

---

# 🛠️ Before You Merge

## 1️⃣ Check Matching Columns

Make sure both tables contain columns representing the same information.

```text
Sales[Product ID]
       ↕
Products[Product ID]
```

## 2️⃣ Check Data Types

The matching columns should have compatible data types.

```text
Sales[Product ID]    → Text
Products[Product ID] → Text
```

For dates, make sure both columns use the appropriate **Date** or **Date/Time** type.

## 3️⃣ Clean the Data

Check for:

* Extra spaces
* Different capitalization
* Null values
* Different formats
* Duplicate keys
* Spelling inconsistencies

---

# 🚀 How to Merge Queries

### Step 1 — Open Power Query Editor

In Power BI Desktop:

**Home → Transform data**

### Step 2 — Select the Primary Query

Select the table you want to enrich from the Queries pane.

Example:

```text
🛒 Sales
```

### Step 3 — Open Merge Queries

Go to:

**Home → Combine → Merge Queries**

Choose:

* **Merge Queries** — modifies the current query.
* **Merge Queries as New** — creates a separate query.

### Step 4 — Select the Second Query

In the Merge dialog:

1. Select the primary table.
2. Select the secondary table.
3. Select the matching column in both tables.

```text
Sales[Product ID]
       │
       │ MATCH
       ▼
Products[Product ID]
```

### Step 5 — Choose Join Type

The default join type is:

> ⭐ **Left Outer Join**

### Step 6 — Click OK

Power Query creates a new column containing the matching records.

### Step 7 — Expand the Column

Click the **Expand** button and select the columns you want.

For example:

```text
☑ Product Name
☑ Category
```

Click **OK**.

🎉 The selected columns are now added to the table.

---

# 🔀 Join Types

| Join Type          | What It Returns                     |
| ------------------ | ----------------------------------- |
| 🟢 **Left Outer**  | All left rows + matching right rows |
| 🔵 **Right Outer** | All right rows + matching left rows |
| 🟣 **Full Outer**  | All rows from both tables           |
| 🟠 **Inner**       | Only matching rows                  |
| 🔴 **Left Anti**   | Left rows with no match             |
| 🟡 **Right Anti**  | Right rows with no match            |

### 🧠 Memory Trick

> **Outer → Keep unmatched records**

> **Inner → Keep only matches**

> **Anti → Find what's missing**

---

# ✨ Fuzzy Matching

Fuzzy matching can match text values that are similar but not exactly identical.

Example:

```text
Microsoft Corporation
Microsoft Corp.
```

### Useful for

* Spelling variations
* Abbreviations
* Minor text differences
* Inconsistent naming
* Human-entered data

### ⚠️ Important

Fuzzy matching can create incorrect matches.

Whenever possible:

> **Clean and standardize the data first, then use exact matching.**

---

# 🔢 Multiple-Column Matching

A merge can use multiple columns when one column isn't enough to uniquely identify a record.

Example:

```text
Customer ID
     +
Order Date
```

The combination becomes the matching key.

💡 **Important:** Select the matching columns in the same order in both tables.

---

# 🚨 Common Problems

### ❌ Data Type Mismatch

**Problem:**

```text
Sales → Product ID = Text
Products → Product ID = Number
```

**Fix:** Convert both columns to compatible data types.

---

### ❌ Extra Spaces

```text
P101
P101␠
```

**Fix:** Use **Transform → Format → Trim**.

---

### ❌ Null Values

Missing keys may result in unmatched rows.

**Fix:** Review and handle null values before merging.

---

### ❌ Duplicate Keys

If the secondary table contains multiple records for the same key, expanding the merged table can create multiple rows.

**Fix:** If a unique lookup is expected, ensure the secondary table contains unique keys.

---

# 🔗 Merge vs Relationships

| Merge Query                  | Relationship                    |
| ---------------------------- | ------------------------------- |
| Happens in Power Query       | Happens in the data model       |
| Combines table data          | Connects separate tables        |
| Adds columns after expansion | Does not physically add columns |
| Used for data transformation | Used for model/filter behavior  |

### Use Merge when:

> You need columns from one query inside another query.

### Use a Relationship when:

> You want separate tables to work together in the Power BI data model.

---

# ⚔️ Merge vs Append

|                | 🔗 Merge      | 📚 Append                |
| -------------- | ------------- | ------------------------ |
| Direction      | ➡️ Horizontal | ⬇️ Vertical              |
| Adds           | Columns       | Rows                     |
| Matching key   | Required      | Not required             |
| SQL equivalent | `JOIN`        | `UNION ALL`              |
| Purpose        | Enrich data   | Combine similar datasets |

### Easy Memory Trick

> 🧩 **MERGE → More columns**

> 📚 **APPEND → Additional rows**

---

# ✅ Best Practices

### Before merging

* [ ] Verify matching columns.
* [ ] Check data types.
* [ ] Remove unnecessary spaces.
* [ ] Check for null values.
* [ ] Check for duplicate keys.
* [ ] Standardize text values.

### During merging

* [ ] Select the correct join type.
* [ ] Use multiple keys when necessary.
* [ ] Use fuzzy matching only when appropriate.
* [ ] Expand only the columns you need.

### After merging

* [ ] Check the row count.
* [ ] Look for unexpected duplicates.
* [ ] Check for unexpected `null` values.
* [ ] Validate a few records manually.

---

# 🧭 Quick Reference

```text
                 MERGE QUERIES
                       │
                       ▼
              Match columns / keys
                       │
                       ▼
                Select Join Type
                       │
          ┌────────────┼────────────┐
          ▼            ▼            ▼
       Left         Inner        Full
       Outer        Join         Outer
          │            │            │
          └────────────┼────────────┘
                       ▼
                Click "OK"
                       │
                       ▼
                Expand Column
                       │
                       ▼
                🎉 Combined Data
```

---

# 📁 Power BI File

Want to practice the Merge Queries example directly in Power BI?

👉 **[Open the Merge Queries Power BI File](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/Quries/Merge-Quires/Merge.pbix)**

The repository contains the `Merge.pbix` file under the **Power BI → Quries → Merge-Quires** folder.

---

# 🏁 Final Takeaway

## **Merge Queries = JOIN + Add Columns**

Use **Merge Queries** when you have related tables and want to bring information from one table into another based on matching values.

```text
🔗 MERGE
   ↓
Match Keys
   ↓
Choose Join
   ↓
Merge Tables
   ↓
Expand Columns
   ↓
🎉 Enriched Data
```

> **If your goal is to enrich an existing table, think MERGE.**

> **If your goal is to stack datasets and add rows, think APPEND.**
