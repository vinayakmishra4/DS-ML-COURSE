# 📊 Excel VLOOKUP Function Guide

VLOOKUP (Vertical Lookup) is one of Excel’s **most powerful functions**. It allows you to search for a value in the **first column** of a table and return related information from another column in the same row.

Mastering VLOOKUP helps you:
✅ Work faster with large datasets
✅ Link data across sheets
✅ Connect data between workbooks

---

## 🔹 What is VLOOKUP?

VLOOKUP searches **vertically down the first column** of a table and returns a value from another column in the same row.

**Common Use Cases:**

* Find prices by product ID
* Fetch employee details by ID
* Link data between sheets or workbooks

**Syntax:**

```excel
VLOOKUP(lookup_value, table_array, col_index_num, [range_lookup])
```

| Parameter        | Description                                                     |
| ---------------- | --------------------------------------------------------------- |
| `lookup_value`   | The value you want to find (ID, name, code, etc.)               |
| `table_array`    | The range containing your data                                  |
| `col_index_num`  | Column number to return data from                               |
| `[range_lookup]` | Optional. `TRUE` for approximate match, `FALSE` for exact match |

> ⚠️ **Tip:** Omitting `[range_lookup]` defaults to `TRUE`.

---

## 🔹 Example Table

| Product ID | Product Name | Price |
| ---------- | ------------ | ----- |
| 001        | Apple        | $1    |
| 002        | Banana       | $0.5  |
| 003        | Orange       | $0.8  |

---

## 🔹 Step-by-Step: Using VLOOKUP

### 1️⃣ Prepare Your Data

* The **lookup column** must be the **first column** in your table.
* Incorrect layout → `#N/A` or wrong results.

---

### 2️⃣ Enter the Formula

Select the cell for the result (e.g., `D2`) and type:

```excel
=VLOOKUP(
```

---

### 3️⃣ Define Lookup Value

* Use a **cell reference** (`A2`) or a **value in quotes** (`"001"`):

```excel
=VLOOKUP(A2,
```

---

### 4️⃣ Specify Table Array

Highlight the range (e.g., `A1:C4`) and add a comma:

```excel
=VLOOKUP(A2, A1:C4,
```

---

### 5️⃣ Column Index Number

Specify which column to return data from. For prices in column 3:

```excel
=VLOOKUP(A2, A1:C4, 3,
```

> Column A = 1, Column B = 2, Column C = 3.

---

### 6️⃣ Range Lookup Type

* `FALSE` → Exact match
* `TRUE` → Approximate match

```excel
=VLOOKUP(A2, A1:C4, 3, FALSE)
```

> ⚠️ Exact match prevents incorrect or approximate results.

---

### 7️⃣ Execute

* Press **Enter** → Result shows the corresponding value.
* Example: Product ID `001` → Price `$1`.

---

## 🔹 VLOOKUP Across Sheets

**Goal:** Pull employee emails from **Sheet2** into **Sheet1**.

**Formula in Sheet1 (`C2`):**

```excel
=VLOOKUP(A2, Sheet2!A:B, 2, FALSE)
```

**Explanation:**

* `A2` → Employee ID
* `Sheet2!A:B` → Lookup range
* `2` → Email column
* `FALSE` → Exact match

**Copy Formula:** Drag fill handle down for all rows.

---

## 🔹 VLOOKUP Across Workbooks

**Goal:** Pull employee names from `Employee Sales.xlsx` into `Sales Data.xlsx`.

**Formula in `Sales Data.xlsx` (`C2`):**

```excel
=VLOOKUP(A2, '[Employee Sales.xlsx]Sheet1'!$A$1:$B$3, 2, FALSE)
```

**Explanation:**

* `A2` → Transaction ID
* `'[Employee Sales.xlsx]Sheet1'!$A$1:$B$3` → Lookup range
* `2` → Employee Name
* `FALSE` → Exact match

**Copy Formula:** Drag down to fill all rows.

---

## 🔹 Tips for VLOOKUP

* Lookup column **must be first**.
* Use `FALSE` for **exact matches**.
* Use **absolute references** (`$`) when linking across workbooks.
* Consider **XLOOKUP** for dynamic lookups in newer Excel versions.

---

## 🔹 Summary

VLOOKUP helps you:
✅ Search large datasets quickly
✅ Link data across sheets/workbooks
✅ Maintain accurate and efficient workflows

> With practice, VLOOKUP can save you **hours of manual work** in Excel.

---

## 📸 Example Visuals

> You can replace these placeholders with screenshots of your Excel sheets.

```
![VLOOKUP Example](images/vlookup_example.png)
![VLOOKUP Across Sheets](images/vlookup_sheets.png)
![VLOOKUP Across Workbooks](images/vlookup_workbooks.png)
```

---
