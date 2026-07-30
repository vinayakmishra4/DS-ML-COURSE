```markdown
# 📥 Data Loading in Power BI

> **Master the process of loading, cleaning, and transforming data using Power Query in Power BI.** Learn how to prepare raw datasets by editing rows and columns before creating reports and dashboards.

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-Data%20Loading-F2C811?style=for-the-badge&logo=powerbi&logoColor=black"/>
  <img src="https://img.shields.io/badge/Level-Beginner-success?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Topic-Power%20Query-blue?style=for-the-badge"/>
</p>

---

# 📚 Table of Contents

- 📖 Introduction
- 🎯 Learning Objectives
- 📥 Loading Data into Power BI
- 🧹 Editing Rows
- 📝 Editing Columns
- 🔄 Managing Applied Steps
- ⚡ Best Practices
- 💼 Real-World Applications
- 🚀 Practice File
- 📌 Key Takeaways

---

# 📖 Introduction

Before creating reports in **Power BI**, data must be clean, structured, and ready for analysis.

**Power Query Editor** is the built-in ETL (Extract, Transform, Load) tool that allows you to:

- 📥 Import data from multiple sources
- 🧹 Clean messy datasets
- 🔄 Transform rows and columns
- 📊 Prepare data for visualization
- ⚡ Improve report accuracy

Most real-world datasets contain unnecessary rows, blank values, duplicate records, and irrelevant columns. Learning how to edit them is one of the first and most important Power BI skills.

---

# 🎯 Learning Objectives

After completing this lesson, you will be able to:

- ✅ Load data into Power BI
- ✅ Open Power Query Editor
- ✅ Remove unnecessary rows
- ✅ Promote the first row as headers
- ✅ Remove blank rows
- ✅ Remove duplicate values
- ✅ Remove unnecessary columns
- ✅ Manage Applied Steps efficiently

---

# 📥 Loading Data into Power BI

The first step is importing your dataset.

### Steps

1. Open **Power BI Desktop**
2. Click **Home**
3. Select **Get Data**
4. Choose your data source
5. Click **Load** or **Transform Data**

> 💡 Selecting **Transform Data** opens the **Power Query Editor**, where data cleaning begins.

---

# 🧹 Editing Rows

Rows often contain unwanted information that should be removed before analysis.

## 🔹 Remove Top Rows

Extra titles, notes, or blank rows are common in Excel files.

### Steps

1. Select **Home**
2. Click **Remove Rows**
3. Choose **Remove Top Rows**
4. Enter the number of rows
5. Click **OK**

### Benefits

- Removes unwanted titles
- Eliminates notes
- Makes data analysis-ready

---

## 🔹 Use First Row as Headers

Sometimes column names exist inside the first row instead of actual headers.

### Steps

- Select **Use First Row as Headers**

Power Query converts the first row into proper column names.

### Benefits

- Better readability
- Correct field names
- Easier report creation

---

## 🔹 Remove Blank Rows

Blank records increase file size and can create incorrect results.

### Steps

Home → Remove Rows → Remove Blank Rows

### Benefits

- Cleaner dataset
- Better performance
- Accurate analysis

---

## 🔹 Remove Duplicate Rows

Duplicate records often appear after combining datasets.

### Steps

1. Select the required column
2. Click **Remove Duplicates**

### Benefits

- Removes repeated values
- Keeps unique records
- Improves report accuracy

---

# 📝 Editing Columns

Column management is equally important.

---

## 🔹 Handling Key Columns

Columns like:

- Customer ID
- Product ID
- Order ID
- Employee ID

should never contain

- Blank values
- Duplicate values

These fields uniquely identify each record.

---

## 🔹 Remove Unnecessary Columns

Datasets often contain columns that are not required.

Examples:

- Comments
- Notes
- Empty Columns
- Temporary Fields

### Steps

1. Select the unwanted column
2. Click **Remove Columns**

### Benefits

- Smaller model size
- Faster refresh
- Better performance

---

# 🔄 Managing Applied Steps

Every transformation is automatically recorded in the **Applied Steps** pane.

You can:

- ❌ Delete a step using the **X**
- ⚙️ Modify a step using the **Gear Icon**
- 🔄 Reorder transformations if needed

> 💡 Power Query never edits the original source file. Every transformation is recorded as a reusable step.

---

# ⚡ Best Practices

- ✅ Remove unnecessary rows before editing columns.
- ✅ Use meaningful column headers.
- ✅ Remove duplicate values from key fields.
- ✅ Delete unused columns.
- ✅ Check Applied Steps after every transformation.
- ✅ Keep your dataset clean before loading it into the Data Model.

---

# 💼 Real-World Applications

These techniques are widely used in:

- 📊 Business Intelligence
- 💰 Finance Reporting
- 🏥 Healthcare Analytics
- 🛒 Retail Sales Analysis
- 📦 Supply Chain Management
- 📈 Marketing Dashboards
- 🏦 Banking Analytics

---

# 🚀 Practice File

Practice all transformations using the Power BI file available below.

### 📂 Power BI Project

**👉 [Download the Data Loading Power BI File](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-HANDLING/Data-Loading/Data-loading.pbix)**

---

# 📌 Key Takeaways

| Feature | Purpose |
|----------|----------|
| Get Data | Import data from different sources |
| Remove Top Rows | Delete unwanted rows |
| Use First Row as Headers | Create proper column names |
| Remove Blank Rows | Remove empty records |
| Remove Duplicates | Keep unique values |
| Remove Columns | Delete irrelevant fields |
| Applied Steps | Track every transformation |

---

# 🎯 Conclusion

Data loading and cleaning form the foundation of every successful Power BI project. By mastering row and column editing in **Power Query**, you can transform raw, messy datasets into structured, analysis-ready data that supports accurate dashboards and meaningful business insights.

---

<div align="center">

### ⭐ If you found this guide helpful, consider giving the repository a Star!

**Happy Learning! 🚀📊**

</div>
```
