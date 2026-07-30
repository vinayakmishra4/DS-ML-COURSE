# 🔄 Replacing Values in Power BI

> **Replace incorrect, inconsistent, or unwanted values in your dataset to create clean, standardized, and analysis-ready data using Power Query.**

<p align="center">

![Power BI](https://img.shields.io/badge/Power%20BI-Data%20Transformation-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Power Query](https://img.shields.io/badge/Power%20Query-Data%20Cleaning-00B294?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner-blue?style=for-the-badge)
![License](https://img.shields.io/badge/Documentation-Guide-success?style=for-the-badge)

</p>

---

## 📖 Table of Contents

- [Introduction](#-introduction)
- [Why Replace Values?](#-why-replace-values)
- [Prerequisites](#-prerequisites)
- [Replacing Text Values](#-replacing-text-values)
- [Tracking Changes with Applied Steps](#-tracking-changes-with-applied-steps)
- [Fixing Mixed Data Types](#-fixing-mixed-data-types)
- [Verifying the Results](#-verifying-the-results)
- [Best Practices](#-best-practices)
- [Common Mistakes](#-common-mistakes)
- [Use Cases](#-use-cases)
- [Advantages](#-advantages)
- [Practice File](#-practice-file)
- [Summary](#-summary)
- [Related Topics](#-related-topics)

---

# 📘 Introduction

**Replacing Values** is one of the most commonly used data transformation features in **Power Query Editor**. It enables you to search for specific values within a column and replace them with new values, making your data cleaner, more consistent, and ready for analysis.

It is widely used to correct spelling mistakes, standardize text, remove unwanted characters, and convert inconsistent values into a format suitable for reporting and visualization.

> 💡 **Note:** Every replacement is recorded in the **Applied Steps** pane, making the transformation repeatable whenever the dataset is refreshed.

---

# 🎯 Why Replace Values?

Raw datasets often contain inconsistent or incorrect values that reduce data quality and affect analysis.

Replacing values helps to:

- ✅ Correct spelling mistakes
- ✅ Standardize inconsistent entries
- ✅ Remove unwanted text
- ✅ Improve data quality
- ✅ Prepare columns for calculations
- ✅ Create consistent datasets
- ✅ Build reliable Power BI reports

---

# 🛠️ Prerequisites

Before using **Replace Values**, ensure you have the following:

| Requirement | Description |
|-------------|-------------|
| 💻 Power BI Desktop | Installed |
| 📂 Dataset | Imported into Power BI |
| 🔄 Power Query Editor | Open using **Transform Data** |

---

# 📝 Replacing Text Values

Replacing text values allows you to substitute one text value with another throughout a selected column.

## Example

Suppose the **promo_bin_1** column contains the following values:

| Original Value |
|----------------|
| verylow |
| low |
| medium |
| high |

Replace:

```text
verylow
```

with

```text
very low
```

to improve readability and consistency.

---

## Steps

### **Step 1 — Open Power Query**

```text
Home
   └── Transform Data
```

---

### **Step 2 — Select the Column**

Choose the **promo_bin_1** column.

---

### **Step 3 — Open Replace Values**

```text
Transform
      └── Replace Values
```

---

### **Step 4 — Enter Replacement**

| Option | Value |
|---------|-------|
| Value to Find | verylow |
| Replace With | very low |

---

### **Step 5 — Apply**

Click **OK**.

Power Query automatically updates every matching value.

---

## Result

| Before | After |
|---------|-------|
| verylow | very low |
| low | low |
| medium | medium |
| high | high |

---

# 📋 Tracking Changes with Applied Steps

Every transformation performed in Power Query is automatically stored in the **Applied Steps** pane.

This allows you to review, edit, or remove any transformation whenever needed.

### Features

| Feature | Description |
|----------|-------------|
| 📝 History | Records every transformation |
| ⚙️ Edit | Modify existing steps |
| ❌ Delete | Undo a transformation |
| 🔄 Refresh | Automatically reapplies every step |

> 📌 **Important:** The original source data is never modified.

---

# 🔢 Fixing Mixed Data Types

Sometimes a column contains both numbers and text, preventing Power BI from recognizing it as numeric.

## Example

| Sales |
|--------|
| 120 |
| 450 |
| 0 sales |
| 875 |
| 920 |

The value **0 sales** causes the column to become **Text**.

---

## Steps

### Step 1

Select the **Sales** column.

---

### Step 2

Choose:

```text
Transform
      └── Replace Values
```

Replace:

| Find | Replace With |
|------|--------------|
| sales | *(Blank)* |

Now

```text
0 sales
```

becomes

```text
0
```

---

### Step 3

Change the data type to:

```text
Whole Number
```

---

## Result

| Before | After |
|---------|-------|
| 120 | 120 |
| 450 | 450 |
| 0 sales | 0 |
| 875 | 875 |
| 920 | 920 |

---

# 📊 Verifying the Results

After cleaning the column:

✔ The column becomes numeric.

✔ Mathematical calculations become available.

✔ Power BI enables aggregation functions such as:

- Sum
- Average
- Minimum
- Maximum
- Count

The cleaned column can now be used in:

- 📊 Charts
- 📈 Reports
- 📋 Tables
- 📉 Dashboards
- 🎯 KPI Cards

---

# ⭐ Best Practices

- Replace incorrect values before modeling data.
- Verify replacement values before applying.
- Review the **Applied Steps** pane regularly.
- Convert the column to the appropriate data type.
- Refresh the dataset after completing transformations.
- Validate the output before publishing reports.

---

# ⚠️ Common Mistakes

| Mistake | Solution |
|----------|----------|
| Replacing the wrong value | Verify the selected column |
| Wrong replacement text | Preview before applying |
| Ignoring data types | Convert the column after replacement |
| Skipping Applied Steps | Review all recorded transformations |

---

# 💼 Use Cases

Replacing Values is commonly used for:

- Customer data cleaning
- Product category standardization
- Sales data preparation
- Removing unwanted text
- Correcting spelling mistakes
- Business Intelligence reporting
- Financial reporting
- Inventory management

---

# 🌟 Advantages

| Advantage | Description |
|------------|-------------|
| 🚀 Easy to Use | Simple graphical interface |
| 📊 Better Data Quality | Removes inconsistent values |
| 🔄 Repeatable | Automatically applied during refresh |
| 📈 Accurate Analysis | Enables reliable calculations |
| 💼 Professional Reports | Produces clean dashboards |

---

# 📂 Practice File

Practice all the concepts covered in this documentation using the Power BI sample project.

<div align="center">

## 📥 Download the Practice File

### **🚀 [Replacing Values (.pbix)](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-HANDLING/Data-Replacing/Data-Replacing.pbix)**

*Hands-on practice is the best way to master Power Query transformations.*

</div>

---

# 📑 Summary

The **Replace Values** feature in **Power Query** is an essential data transformation tool that helps clean, standardize, and prepare data for analysis. By replacing incorrect or inconsistent values and recording every transformation in the **Applied Steps** pane, Power BI provides a reliable and repeatable workflow for building accurate reports and dashboards.

---

# 📚 Related Topics

- 📥 Import Data
- 🔄 Changing Data Types
- ✏️ Editing Rows and Columns
- 🧹 Handling Missing Values
- ❌ Removing Duplicates
- ✂️ Split Columns
- 🔗 Merge Columns
- ⚙️ Conditional Columns
- 📊 Power Query Transformations
- 📈 Data Cleaning in Power BI

---

<div align="center">

### ⭐ If this documentation helped you, consider exploring the other **Power BI Data Handling** guides in this repository.

**Happy Learning! 🚀**

</div>