# 🔄 Changing Data Types in Power Query

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-Power%20Query-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" />
  <img src="https://img.shields.io/badge/Topic-Data%20Transformation-1E90FF?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Level-Beginner-success?style=for-the-badge" />
</p>

---

## 📖 Overview

Changing data types is one of the most important data preparation tasks in **Power Query**. Every column in your dataset should have the correct data type so Power BI can accurately interpret, process, and analyze the information.

Proper data types improve data quality, enable calculations, reduce errors, and ensure your reports and dashboards perform efficiently.

---

## 🎯 Learning Objectives

By the end of this topic, you will understand how to:

- ✔ Understand the importance of data types
- ✔ Identify incorrect data types
- ✔ Convert text into numbers and dates
- ✔ Handle mixed data types
- ✔ Apply data types to multiple columns
- ✔ Follow best practices for clean datasets

---

## 📌 Why Data Types Matter

Power BI assigns a data type to every column. The assigned type determines how the values are stored, displayed, and used during analysis.

| 📂 Data Type | 📋 Description | 💡 Common Example |
|--------------|----------------|------------------|
| 🔤 Text | Stores words and characters | Customer Name |
| 🔢 Whole Number | Stores integer values | Order ID |
| 💰 Fixed Decimal Number | Stores currency values | Revenue |
| 📈 Decimal Number | Stores decimal values | Profit Margin |
| 📅 Date | Stores calendar dates | Order Date |
| ⏰ Date/Time | Stores date and time | Delivery Timestamp |
| ✅ True/False | Stores Boolean values | Active Status |

---

# 📥 Loading Data into Power Query

Before changing data types:

1. Open **Power BI Desktop**
2. Select **Transform Data**
3. Open the **Power Query Editor**
4. Review the automatically assigned data types
5. Identify columns that require correction

> **💡 Tip:** Always verify data types immediately after importing a dataset.

---

# 🔄 Common Data Type Conversions

| Column | Recommended Data Type | Purpose |
|---------|-----------------------|----------|
| Revenue | 💰 Fixed Decimal Number | Currency calculations |
| Sales | 🔢 Whole Number | Numeric analysis |
| Quantity | 🔢 Whole Number | Counting and aggregation |
| Order Date | 📅 Date | Time-based analysis |
| Customer Name | 🔤 Text | Descriptive information |
| Order ID | 🔢 Whole Number | Unique identification |

---

# 🔢 Numeric Data Types

Numeric columns should always use an appropriate numeric format.

Examples include:

- Revenue
- Sales
- Quantity
- Profit
- Discount

Using numeric data types enables:

- ➕ Sum
- 📊 Average
- 📈 Maximum
- 📉 Minimum
- ➗ Mathematical calculations

---

# 📅 Date Data Types

Dates imported as text cannot be used effectively for analysis.

Converting them to the **Date** data type allows Power BI to:

- 📅 Filter by Year
- 📆 Group by Month
- 📊 Build Date Hierarchies
- 📈 Perform Time Intelligence
- 📌 Create Trend Analysis

---

# 🆔 Identifier Columns

Columns such as:

- Order ID
- Customer ID
- Product ID

should generally use the **Whole Number** data type.

Benefits include:

- Faster sorting
- Better filtering
- Improved storage efficiency
- Consistent formatting

---

# ⚠ Handling Mixed Data Types

Sometimes a column contains both text and numeric values.

Example:

| Sales |
|-------|
| 500 |
| 700 |
| N/A |
| 1200 |
| 0 Sales |

Since mixed values exist, Power Query usually imports the entire column as **Text**.

### Recommended Approach

- Clean invalid values
- Replace inconsistent entries
- Remove unnecessary text
- Convert the cleaned column into the required data type

---

# 🚀 Batch Data Type Conversion

Power Query allows multiple columns to be updated simultaneously.

### Benefits

- ⚡ Saves time
- 📌 Maintains consistency
- ✅ Reduces manual work
- 🚀 Improves productivity

---

# 💡 Best Practices

> Follow these recommendations for clean and reliable datasets.

- ✔ Verify data types after every import.
- ✔ Store currency as **Fixed Decimal Number**.
- ✔ Use **Whole Number** for IDs.
- ✔ Keep dates in **Date** format.
- ✔ Clean mixed data before conversion.
- ✔ Review conversion errors carefully.
- ✔ Maintain consistent data types throughout the dataset.

---

# ❌ Common Mistakes

| ❌ Issue | ✅ Recommended Solution |
|-----------|-------------------------|
| Revenue stored as Text | Convert to Fixed Decimal Number |
| Dates imported as Text | Convert to Date |
| IDs stored as Text | Convert to Whole Number |
| Mixed Text and Numbers | Clean data before conversion |
| Ignoring conversion errors | Review and fix invalid values |

---

# 🌟 Key Takeaways

- Correct data types are essential for accurate analysis.
- Numeric columns enable mathematical calculations.
- Date columns support time-based reporting.
- Identifier columns should use Whole Number where appropriate.
- Clean mixed data before changing its data type.
- Applying correct data types improves report accuracy and performance.

---

# 📂 Practice File

Practice the concepts covered in this tutorial using the Power BI project included in this repository.

<p align="center">

### 📥 **Download the Practice File**

<a href="https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-HANDLING/Changin-Data-Types/Changing-Data-Types.pbix">
  <img src="https://img.shields.io/badge/Download-PBIX%20Practice%20File-F2C811?style=for-the-badge&logo=powerbi&logoColor=black"/>
</a>

</p>

---

<div align="center">

### ⭐ If you found this documentation helpful, don't forget to **Star** the repository!

**Happy Learning and Keep Building Amazing Power BI Reports! 🚀**

</div>