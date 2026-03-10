# 📊 Excel Cell References Guide

![Excel](https://img.shields.io/badge/Excel-Microsoft-green?logo=microsoft-excel\&style=for-the-badge) ![Formulas](https://img.shields.io/badge/Formulas-%3D-blue?style=for-the-badge) ![Tips](https://img.shields.io/badge/Tips-💡-yellow?style=for-the-badge)

Understanding **cell references** is the backbone of writing accurate Excel formulas. Whether copying formulas across rows or locking a value, knowing **relative**, **absolute**, and **mixed references** saves time and prevents errors.

---

## 📌 What is a Cell Reference?

A **cell reference** identifies a cell or range by **column letter + row number** (e.g., `A1`). Excel uses these to fetch data for calculations.

**Types of references:**

* 🏠 Same worksheet (local reference)
* 📂 Other worksheets (external reference)
* 🌐 Other workbooks (remote reference)

---

## 📝 Types of Cell References

| Type         | Description         | Example        | Use Case                             |
| ------------ | ------------------- | -------------- | ------------------------------------ |
| **Relative** | Adjusts when copied | `A1`, `B2`     | Same calculation across rows/columns |
| **Absolute** | Locked with `$`     | `$A$1`, `$C$2` | Fixed constants like tax or %        |
| **Mixed**    | Partial lock        | `$A1`, `A$1`   | Lock only row or column              |

---

## 1️⃣ Relative Reference

Relative references **change automatically** when formulas are copied.

**Example:** Add marks in columns **A + B → C**

**Steps:**

1. **Enter Data:** Fill marks in columns A & B.
2. **Formula:** In `C2`, type:

```excel
=A2+B2
```

3. **Drag Fill Handle** from `C2` down.

> 🔹 Excel updates automatically: `A3+B3`, `A4+B4`, etc.

---

## 2️⃣ Absolute Reference

Absolute references **lock a cell** using `$`.

**Example:** Multiply total marks in **A + B** with **fixed percentage in C2 → D**

**Steps:**

1. Fill marks in A & B, percentage in `C2`.
2. Formula in `D2`:

```excel
=(A2+B2)*$C$2
```

3. Drag Fill Handle down.

> 🔹 `$C$2` stays constant, A & B adjust.
> 💡 Press **F4** to toggle reference types.

---

## 3️⃣ Mixed Reference

* **Column locked, row changes:** `$A1`
* **Row locked, column changes:** `A$1`

Use when **only row or column should remain fixed**.

---

## 🗂️ References Across Worksheets

1. Note the worksheet name of the source cell.
2. In the target sheet, type:

```excel
=Sheet1!A1
```

3. Press **Enter**.

> 🔹 Replace `Sheet1` with your actual sheet name.

---

## 🔍 Relative vs Absolute

| Aspect         | Relative                | Absolute                |
| -------------- | ----------------------- | ----------------------- |
| **Definition** | Changes with formula    | Stays fixed             |
| **Symbol**     | No `$`                  | `$` before column & row |
| **Example**    | `A1` → `B1` when copied | `$A$1` → stays `$A$1`   |
| **Usage**      | Dynamic calculations    | Fixed constants         |
| **Formula**    | `=A1+B1`                | `=$A$1+$B$1`            |

---

## 💡 Quick Tips

* ✅ Use **relative** for formulas that adjust dynamically.
* ✅ Use **absolute** for constants (tax, %, fixed values).
* ✅ Use **mixed** for partial locking (row or column).
* ✅ **F4** toggles reference types quickly.

---

## 📚 Learn More

![Excel Tips](https://img.shields.io/badge/Excel-Tutorial-blue?style=for-the-badge)

* [Relative, Absolute & Mixed References in Excel](#)

---