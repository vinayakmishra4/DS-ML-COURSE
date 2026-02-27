# 📊 Exploring Data in Microsoft Excel

![Excel](https://img.shields.io/badge/Microsoft-Excel-217346?logo=microsoft-excel\&style=for-the-badge)
![Beginner Friendly](https://img.shields.io/badge/Level-Beginner%20Friendly-blue?style=for-the-badge)

This repository is a **comprehensive guide** for exploring and analyzing data using **Microsoft Excel**.
Learn everything from **basic navigation** to **advanced formulas**, **data cleaning**, and **dynamic analysis**.

> 🚀 Perfect for beginners and aspiring data analysts!

---

## 🔹 Table of Contents

1. [Introduction to Excel](#-introduction-to-excel)
2. [Data Types](#-data-types)
3. [Excel Beyond Limits](#-excel-beyond-limits)
4. [Looking for Exact Matches](#-looking-for-exact-matches)
5. [Mastering the Basics of Sheet Navigation](#-mastering-the-basics-of-sheet-navigation)
6. [Nesting Functions](#-nesting-functions)
7. [Sorting the Data](#-sorting-the-data)
8. [TRIM Function and Its Usage](#-trim-function-and-its-usage)
9. [Type Conversion](#-type-conversion)
10. [Working on Rows and Columns](#-working-on-rows-and-columns)

---

## 🖥️ Introduction to Excel

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Intro-to-excel/Intro-to-excel.md)

Get started with **Excel basics**:

* 🗂 Workbook & Worksheets – Organize multiple sheets in one file
* 🔢 Cells, Rows, and Columns – Building blocks for data
* 🎛 Ribbon & Tabs – Quick access to tools
* ✏️ Basic operations – Entering, editing, and formatting

> Excel is the **foundation** of all data exploration workflows.

---

## 🧮 Data Types

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Data-Types/Data-types.md)

Excel recognizes several data types:

| Type           | Description                     |
| -------------- | ------------------------------- |
| **Text**       | Words, alphanumeric codes       |
| **Numbers**    | Numeric values for calculations |
| **Dates/Time** | Temporal data                   |
| **Logical**    | TRUE / FALSE values             |

> Choosing the **right type** ensures accurate analysis.

---

## ⚡ Excel Beyond Limits

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Excel-Beyond-Limits/Excel-Beyond-Limits.md)

Boost productivity with:

* ✨ Auto-fill & Flash Fill
* 🔗 Absolute & Relative references
* 📌 Named ranges
* ⏩ Quick navigation techniques

> Handle **large datasets efficiently**.

---

## 🔍 Looking for Exact Matches

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Looking-for-exact-matches/Looking-for-exact-matches.md)

Find **specific values** with:

* `VLOOKUP`, `HLOOKUP`, `INDEX + MATCH`
* Conditional formatting to highlight matches
* `COUNTIF` / `COUNTIFS` for duplicates

> Perfect for **data cleaning & validation**.

---

## 🧭 Mastering the Basics of Sheet Navigation

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Mastering-the-Basics-of-Sheet-Navigation/Mastering-the-Basics-of-Sheet-Navigation.md)

Navigate Excel **efficiently**:

* 🔑 Arrow keys, Tab, Enter
* 🏃 Ctrl + Arrow for edges
* 🔄 Shift + Arrow for selection
* 🎨 Formatting basics
* 📊 Insert charts quickly

> Efficient navigation = **faster analysis**.

---

## 🔗 Nesting Functions

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Nesting-Functions/Nesting-Functions.md)

Combine functions to **simplify formulas**:

```excel
=SUM(SORT(A2:A9))
```

* Inner function executes first (`SORT`)
* Outer function executes second (`SUM`)

> Nesting reduces helper columns and saves time.

---

## 🔃 Sorting the Data

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Sorting-the-Data/Sorting-the-Data.md)

Organize data:

* Ascending / Descending by text, number, or date
* Dynamic `SORT` function:

```excel
=SORT(A1:A8, 1, -1)
```

> Always include all columns to **keep rows intact**.

---

## ✂️ TRIM Function and Its Usage

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/TRIM-Function-and-Its-Usage/TRIM-Function-and-Its-Usage.md)

Clean extra spaces:

```excel
=TRIM(A2)
```

* Removes leading, trailing, and extra spaces
* Combine with `CLEAN` or `SUBSTITUTE` for advanced cleaning

> Essential for **accurate lookups**.

---

## 🔄 Type Conversion

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Type-Conversion/Type-Conversion.md)

Transform data:

* Numbers → Text:

```excel
=TEXT(A1, "0000")
```

* Text → Numbers:

```excel
=VALUE(A1)
```

* Control decimals:

```excel
=ROUND(VALUE(A1), 2)
```

> Ensures **data consistency & calculation accuracy**.

---

## 📏 Working on Rows and Columns

[📖 More Information](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data-Exploration-Excel/Exploring-Data/Working-on-Rows-and-Columns/Working-on-Rows-and-Columns.md)

Key functions:

* `ROW()` → Row number
* `ROWS(range)` → Count rows
* `COLUMN()` → Column number
* `COLUMNS(range)` → Count columns

Dynamic formulas:

```excel
=ROW()-ROW($A$2)+1
=COLUMN()-COLUMN($B$1)+1
```

> Build **dynamic reports & dashboards**.

---

## 🚀 Next Steps

* Pivot tables
* Conditional formatting
* Charts and dashboards
* Advanced formulas & automation

> Mastering these skills will make you a **pro Excel data analyst**.

---

## 📖 References

* [Microsoft Excel Documentation](https://support.microsoft.com/excel)
* [DS-ML-COURSE GitHub Repository](https://github.com/vinayakmishra4/DS-ML-COURSE)

---