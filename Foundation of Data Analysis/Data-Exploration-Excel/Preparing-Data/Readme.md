# 📊 Preparing Data in Excel

![Excel](https://img.shields.io/badge/Tool-Microsoft%20Excel-green)
![Data Analysis](https://img.shields.io/badge/Focus-Data%20Preparation-blue)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Intermediate-orange)
![Course](https://img.shields.io/badge/Course-DS%20%26%20ML-lightgrey)

Preparing data is a **critical step in the data analysis process**. Raw datasets often contain inconsistencies, missing values, extra spaces, or mixed formats that must be cleaned before analysis.

**Microsoft Excel** provides powerful tools to help analysts:

* Clean datasets
* Transform text and numbers
* Extract useful information
* Combine datasets
* Prepare data for analysis and visualization

---

# 📚 Table of Contents

* [Cell References](#-1-cell-references)
* [Date Functions](#-2-date-functions)
* [SUM Functions](#-3-sum-functions)
* [Extract Text Functions](#-4-extract-text-functions)
* [Mastering Text Functions](#-5-mastering-text-functions)
* [VLOOKUP Function](#-6-vlookup-function)

---

# 📌 1. Cell References

Cell references allow formulas to **refer to values stored in other cells**, making calculations dynamic and reusable.

### Types of Cell References

| Type               | Description                       |
| ------------------ | --------------------------------- |
| Relative Reference | Changes automatically when copied |
| Absolute Reference | Fixed reference using `$`         |
| Mixed Reference    | Locks either row or column        |

### Example

```excel
=A1+B1
```

When copied:

```excel
=A2+B2
```

📖 **Detailed Notes:**
[View Cell References Guide](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Preparing-Data/Cell-Refernces)

---

# 📅 2. Date Functions

Date functions help manage **date and time values**, which are essential in data analysis.

### Common Date Functions

| Function | Purpose                       |
| -------- | ----------------------------- |
| DATE     | Create a date                 |
| TODAY    | Returns current date          |
| NOW      | Returns current date and time |
| DAY      | Extract day                   |
| MONTH    | Extract month                 |
| YEAR     | Extract year                  |

### Example

```excel
=TODAY()
```

📖 **Detailed Notes:**
[Explore Date Functions](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Preparing-Data/Date-Functions)

---

# ➕ 3. SUM Functions

SUM functions help calculate **totals and conditional sums**.

### Common SUM Functions

| Function | Purpose                              |
| -------- | ------------------------------------ |
| SUM      | Adds numbers                         |
| SUMIF    | Adds values with one condition       |
| SUMIFS   | Adds values with multiple conditions |

### Example

```excel
=SUM(A1:A5)
```

Conditional example:

```excel
=SUMIF(A2:A10,"Apple",B2:B10)
```

📖 **Detailed Notes:**
[Learn SUM Functions](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Preparing-Data/Excel-Sum-Functions)

---

# ✂️ 4. Extract Text Functions

These functions help **extract specific parts of text strings**.

### Common Functions

| Function      | Purpose                |
| ------------- | ---------------------- |
| LEFT          | Extract from beginning |
| RIGHT         | Extract from end       |
| MID           | Extract from middle    |
| LEN           | Count characters       |
| FIND / SEARCH | Locate position        |

### Example

```excel
=LEFT(A1,4)
```

📖 **Detailed Notes:**
[Learn Text Extraction Functions](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Preparing-Data/Extract-Text-Functions)

---

# 🔤 5. Mastering Text Functions

Text functions help **clean and standardize textual data**.

### Important Functions

| Function   | Purpose                   |
| ---------- | ------------------------- |
| UPPER      | Convert text to uppercase |
| LOWER      | Convert text to lowercase |
| PROPER     | Capitalize words          |
| TRIM       | Remove extra spaces       |
| CONCAT     | Combine text              |
| SUBSTITUTE | Replace text              |

### Example

```excel
=PROPER(TRIM(A2))
```

📖 **Detailed Notes:**
[Master Excel Text Functions](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Preparing-Data/Mastering-Text-Functions)

---

# 🔍 6. VLOOKUP Function

The **VLOOKUP function** searches for a value in a table and returns a corresponding value from another column.

### Syntax

```excel
=VLOOKUP(lookup_value, table_array, col_index_num, FALSE)
```

### Example

```excel
=VLOOKUP(102,A2:C5,3,FALSE)
```

📖 **Detailed Notes:**
[Learn VLOOKUP Function](https://github.com/vinayakmishra4/DS-ML-COURSE/tree/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Preparing-Data/VLOOKUP-Functions)

---

# 🚀 Why Data Preparation is Important

Data preparation helps:

✔ Clean messy datasets
✔ Standardize formats
✔ Extract useful insights
✔ Improve data quality
✔ Prepare data for **analysis and visualization**

---

# 📂 Full Course Repository

Explore the complete course here:

📚 [DS & ML Course Repository](https://github.com/vinayakmishra4/DS-ML-COURSE)

---