# 📊 Excel SUMIF Function Guide

<p align="center">

![Excel](https://img.shields.io/badge/Microsoft-Excel-217346?style=for-the-badge\&logo=microsoft-excel\&logoColor=white)
![Function](https://img.shields.io/badge/Function-SUMIF-blue?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner--Intermediate-green?style=for-the-badge)
![Use Case](https://img.shields.io/badge/Use-Data%20Analysis-orange?style=for-the-badge)

</p>

---

## 📖 Overview

The **SUMIF function in Excel** is used to **add values that meet a specific condition**.

It helps analysts quickly **calculate totals based on criteria such as:**

✔ Numbers
✔ Text values
✔ Dates

This function is extremely useful for:

* 📈 Sales analysis
* 📊 Data summarization
* 🧾 Financial reports
* 📉 Dashboard calculations

---

# 📑 Table of Contents

* [🧮 SUMIF Syntax](#-sumif-syntax)
* [📌 Parameters Explanation](#-parameters-explanation)
* [🚀 How to Use SUMIF](#-how-to-use-sumif)
* [📅 SUMIF with Dates](#-sumif-with-dates)
* [📊 Example Dataset](#-example-dataset)
* [🧾 SUMIF Examples](#-sumif-examples)
* [🔎 SUMIFS Multiple Criteria](#-sumifs-multiple-criteria)
* [⭐ Advantages](#-advantages)
* [📚 Related Functions](#-related-functions)

---

# 🧮 SUMIF Syntax

```excel
SUMIF(range, criteria, [sum_range])
```

---

# 📌 Parameters Explanation

| Parameter     | Description                                          |
| ------------- | ---------------------------------------------------- |
| **range**     | Cells that Excel will evaluate                       |
| **criteria**  | Condition that determines which cells will be summed |
| **sum_range** | Cells that contain the values to add                 |

⚠️ **Important Note**

If **sum_range is not specified**, Excel will **sum the same cells defined in the range**.

---

# 🚀 How to Use SUMIF

Follow these simple steps:

### 1️⃣ Open Microsoft Excel

Load the dataset where you want to perform calculations.

---

### 2️⃣ Select Result Cell

Choose the cell where you want to display the **SUMIF result**.

---

### 3️⃣ Enter the Formula

Start typing:

```excel
=SUMIF(
```

Then select the **range to evaluate**.

Example:

```excel
=SUMIF(B2:B11,
```

---

### 4️⃣ Define Criteria

Enter the condition.

Example:

```excel
=SUMIF(B2:B11,"Apple"
```

Or reference a cell:

```excel
=SUMIF(B2:B11,E4
```

---

### 5️⃣ Add Sum Range

Specify the cells to sum.

```excel
=SUMIF(B2:B11,"Apple",C2:C11)
```

---

### 6️⃣ Press Enter

Excel will instantly calculate the **total based on the condition**.

---

# 📅 SUMIF with Dates

SUMIF can also filter data **based on date conditions**.

Example: **Sum all values after January 1, 2023**

```excel
=SUMIF(B2:B11,">01/01/2023",C2:C11)
```

### Steps

1. Select the result cell
2. Enter `=SUMIF(`
3. Enter the **date range**
4. Define the **date criteria**
5. Add the **sum range**

---

# 📊 Example Dataset

| Coding Team       | Members | Points |
| ----------------- | ------- | ------ |
| GFG_CODERS        | 4       | 200    |
| Acex_coders       | 5       | 197    |
| Poisionous_python | 3       | 150    |
| Megatron          | 4       | 130    |
| Bro_coders        | 6       | 110    |
| Kotlin_coders     | 2       | 100    |
| Gaming_coders     | 3       | 50     |

---

# 🧾 SUMIF Examples

| Formula                            | Explanation                           | Result  |
| ---------------------------------- | ------------------------------------- | ------- |
| `=SUMIF(B2:B8,">4",C2:C8)`         | Sum points where members > 4          | **307** |
| `=SUMIF(B2:B8,4,C2:C8)`            | Sum points where members = 4          | **330** |
| `=SUMIF(A2:A8,"GFG_CODERS",C2:C8)` | Sum points for team GFG_CODERS        | **200** |
| `=SUMIF(C2:C8,">110")`             | Sum points greater than 110           | **677** |
| `=SUMIF(A2:A8,"*rs",C2:C8)`        | Sum points for names ending with "rs" | **657** |

---

# 🔎 SUMIFS Multiple Criteria

When you need **multiple conditions**, use **SUMIFS**.

### Syntax

```excel
=SUMIFS(sum_range, criteria_range1, criteria1, [criteria_range2, criteria2])
```

---

### Example

Sum **Sales where:**

* Product = *Product A*
* Category = *Electronics*

```excel
=SUMIFS(C2:C10, A2:A10, "Product A", B2:B10, "Electronics")
```

---

# ⭐ Advantages

✔ Easy conditional calculations
✔ Supports numbers, text, and dates
✔ Improves efficiency in large datasets
✔ Ideal for financial reports and dashboards

---

# 📚 Related Excel Functions

| Function    | Purpose                               |
| ----------- | ------------------------------------- |
| `SUM`       | Adds numbers                          |
| `SUMIF`     | Adds numbers with one condition       |
| `SUMIFS`    | Adds numbers with multiple conditions |
| `COUNTIF`   | Counts cells with a condition         |
| `COUNTIFS`  | Counts cells with multiple conditions |
| `AVERAGEIF` | Calculates average with criteria      |

---

# 💡 Pro Tips

### Wildcards

Use wildcards for flexible text matching.

| Symbol | Meaning                          |
| ------ | -------------------------------- |
| `*`    | Matches any number of characters |
| `?`    | Matches a single character       |

Example:

```excel
=SUMIF(A2:A8,"*coders",C2:C8)
```

This sums points for all teams **ending with "coders"**.

---

# 🎯 Summary

The **SUMIF function** is one of the most important Excel functions for **conditional data analysis**.
It helps users **filter, calculate, and analyze large datasets efficiently**.

Mastering **SUMIF and SUMIFS** will significantly improve your **Excel productivity and data analysis skills**.

---

⭐ **If you found this guide helpful, consider starring the repository!**

---