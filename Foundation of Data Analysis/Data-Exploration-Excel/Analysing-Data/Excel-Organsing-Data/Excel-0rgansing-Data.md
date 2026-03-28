# 📊 Excel Organising Data

## 📌 Overview

This project focuses on organizing and managing data efficiently using Microsoft Excel. It demonstrates modern Excel techniques using **dynamic array functions** like **SORT** and **UNIQUE** to clean, structure, and analyze data automatically.

---

## 🎯 Objectives

* Organize raw data into structured formats
* Remove duplicates efficiently
* Sort data dynamically without altering the original dataset
* Prepare clean datasets for analysis and reporting

---

## 🛠️ Tools Used

* Microsoft Excel (365 / 2021+)
* Dynamic Array Functions

---

# 🔄 Excel SORT Function

The **SORT function** arranges data in ascending or descending order while keeping the original dataset unchanged.

---

## ✨ Key Benefits

* Original data remains unchanged
* Automatic updates when data changes
* Works with other functions like `FILTER` and `UNIQUE`

---

## 🧾 Syntax

```excel
=SORT(array, [sort_index], [sort_order], [by_col])
```

---

## 📈 Examples

### 🔼 Ascending Order

```excel
=SORT(A2:B8, 2, 1)
```

### 🔽 Descending Order

```excel
=SORT(A2:B8, 2, -1)
```

---

## ⚙️ Advanced Sorting

### Sort by Row

```excel
=SORT(A2:B8, 2, 1, TRUE)
```

### Multi-Level Sorting

```excel
=SORT(A2:C10, {1,2}, {1,-1})
```

---

## 🔍 Sort with Filter

```excel
=SORT(FILTER(A2:C10, C2:C10="Sales"), 2, -1)
```

✔ Filters Sales data and sorts it by column 2 (descending)

---

## ⚠️ Common Errors

| Error     | Cause                     | Solution         |
| --------- | ------------------------- | ---------------- |
| `#NAME?`  | Unsupported Excel version | Use Excel 365+   |
| `#SPILL!` | Blocked cells             | Clear space      |
| `#VALUE!` | Invalid arguments         | Check inputs     |
| `#REF!`   | Closed workbook           | Open source file |

---

# 🔹 Excel UNIQUE Function

The **UNIQUE function** extracts distinct values by removing duplicates automatically.

---

## ✨ Key Features

* Returns only unique values
* Dynamic output (auto-expands)
* Updates automatically
* Works across rows and columns

---

## 🧾 Syntax

```excel
=UNIQUE(array, [by_col], [exactly_once])
```

---

## 🧪 Example

```excel
=UNIQUE(A1:A3)
```

### Input:

Apple
Banana
Apple

### Output:

Apple
Banana

---

## ⚙️ Advanced Usage

### Unique from Multiple Columns

```excel
=UNIQUE(A1:B3)
```

### Sort Unique Values

```excel
=SORT(UNIQUE(A1:A10))
```

---

## 🔗 Combining SORT + UNIQUE

One of the most powerful Excel techniques is combining both functions:

```excel
=SORT(UNIQUE(A1:A10))
```

### ✅ Benefits:

* Removes duplicates
* Sorts results automatically
* Creates clean, dynamic datasets

---

## 📊 Real-World Applications

* Cleaning customer or product lists
* Creating reports without duplicates
* Building dashboards with dynamic data
* Generating sorted dropdown lists

---

## ⚠️ UNIQUE Function Issues

| Issue        | Cause             | Solution      |
| ------------ | ----------------- | ------------- |
| `#SPILL!`    | No space          | Clear cells   |
| Missing data | Range too small   | Expand range  |
| Not working  | Old Excel version | Upgrade Excel |

---

## 💡 Key Learnings

* Dynamic array functions improve efficiency
* Data cleaning becomes automatic
* Excel formulas can replace manual work
* Combining functions increases power

---

## 📎 Conclusion

Using **SORT** and **UNIQUE** together transforms raw data into structured, clean, and analysis-ready datasets. These functions save time, reduce errors, and make Excel workflows smarter and more efficient.

---