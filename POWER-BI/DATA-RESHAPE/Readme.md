Absolutely — here’s a **shorter, attractive GitHub-ready README** with the PBIX link hidden behind a button-style link. It’s roughly 100–150 lines.

# 🔄 Pivoting & Unpivoting in Power BI

> **Learn how to reshape data using Power Query's Pivot and Unpivot transformations.**

![Power BI](https://img.shields.io/badge/Power%20BI-Data%20Transformation-yellow?style=for-the-badge\&logo=powerbi)
![Power Query](https://img.shields.io/badge/Power%20Query-ETL-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

---

## 📌 Overview

**Pivoting** and **Unpivoting** are important data transformation techniques in **Power BI Power Query**.

They help reshape datasets into structures that are easier to:

* 📊 Analyze
* 🔍 Filter
* 📈 Visualize
* 🧮 Aggregate
* 🧩 Model

### 🔄 Basic Concept

| Transformation | Converts       |
| -------------- | -------------- |
| **Pivot**      | Rows → Columns |
| **Unpivot**    | Columns → Rows |

---

## 🔀 Pivoting in Power BI

**Pivoting** converts unique values from a column into separate columns.

### Example

**Before Pivot:**

| Store ID | Cost Type    | Cost Amount |
| -------- | ------------ | ----------: |
| S001     | Construction |       50000 |
| S001     | Maintenance  |       12000 |
| S001     | Utilities    |        8000 |
| S002     | Construction |       65000 |
| S002     | Maintenance  |       15000 |

**After Pivot:**

| Store ID | Construction | Maintenance | Utilities |
| -------- | -----------: | ----------: | --------: |
| S001     |        50000 |       12000 |      8000 |
| S002     |        65000 |       15000 |      9000 |

### 💡 When to Use Pivot

* Side-by-side category comparisons
* Summary reports
* Matrix-style structures
* Creating wider reporting tables

---

## 🔃 Unpivoting in Power BI

**Unpivoting** converts multiple columns into rows.

### Example

**Before Unpivot:**

| Store ID | Construction | Maintenance | Utilities |
| -------- | -----------: | ----------: | --------: |
| S001     |        50000 |       12000 |      8000 |
| S002     |        65000 |       15000 |      9000 |

**After Unpivot:**

| Store ID | Cost Type    | Cost Amount |
| -------- | ------------ | ----------: |
| S001     | Construction |       50000 |
| S001     | Maintenance  |       12000 |
| S001     | Utilities    |        8000 |
| S002     | Construction |       65000 |
| S002     | Maintenance  |       15000 |
| S002     | Utilities    |        9000 |

### 💡 When to Use Unpivot

* Wide datasets
* Data modeling
* Charts and slicers
* Consistent calculations
* DAX-based analysis

---

## 🛠️ How to Perform These Transformations

Both operations are available in **Power Query Editor**.

### Open Power Query

```text
Power BI Desktop
      ↓
Home
      ↓
Transform Data
      ↓
Power Query Editor
```

### 🔀 Pivot

```text
Select Column
      ↓
Transform
      ↓
Pivot Column
      ↓
Select Values Column
      ↓
Choose Aggregation
```

Common aggregations:

* `Sum`
* `Average`
* `Count`
* `Minimum`
* `Maximum`

### 🔃 Unpivot

```text
Select Columns
      ↓
Transform
      ↓
Unpivot Columns
```

Power Query creates two columns:

* **Attribute** → Category
* **Value** → Actual value

---

## 🏪 Practical Scenario

Consider a **Store Cost Analysis** dataset.

### Pivot

Use:

```text
Pivot Column → Cost Type
Values Column → Cost Amount
Aggregation → Sum
```

This creates separate columns for:

```text
Construction | Maintenance | Utilities
```

### Unpivot

Select:

```text
Construction
Maintenance
Utilities
```

Then choose:

```text
Transform → Unpivot Columns
```

This creates:

```text
Cost Type | Cost Amount
```

---

## ⚡ Pivot vs Unpivot

| Feature     | 🔀 Pivot         | 🔃 Unpivot             |
| ----------- | ---------------- | ---------------------- |
| Direction   | Rows → Columns   | Columns → Rows         |
| Structure   | Wider            | Longer                 |
| Best for    | Comparisons      | Analysis               |
| Categories  | Separate columns | Single category column |
| Power Query | Pivot Column     | Unpivot Columns        |

---

## 🎯 Key Benefits

### 📊 Better Analysis

Creates a structure that is easier to aggregate and analyze.

### 📈 Better Visualization

Works effectively with charts, tables, matrices, and slicers.

### 🧮 Better Calculations

Makes it easier to apply consistent calculations and DAX measures.

### 🧹 Cleaner Data

Helps transform messy or poorly structured datasets into an analytics-friendly format.

---

## 📂 Project File

The Power BI `.pbix` file used for this topic is available in the repository:

👉 **[📥 Open Reshaping.pbix](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-RESHAPE/Resphaping.pbix)**

---

## 🧠 Key Takeaway

> **Pivot when you need rows to become columns.**
> **Unpivot when you need columns to become rows.**

Understanding these two transformations is essential for creating **clean, flexible, and analysis-ready datasets in Power BI**.

---

### ⭐ Happy Learning | Power BI + Power Query
