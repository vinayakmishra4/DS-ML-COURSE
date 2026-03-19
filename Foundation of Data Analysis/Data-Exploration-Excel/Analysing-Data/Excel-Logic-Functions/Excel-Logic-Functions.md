# 📊 Excel Logic Functions – Complete Guide

This document provides a comprehensive overview of **Excel IF functions**, including handling multiple conditions, returning dynamic results, and working with text-based logic.

---

## 🧠 What is the IF Function?

The **IF function** allows you to make logical comparisons between a value and an expected result.

### 📌 Syntax:

```excel
=IF(logical_test, value_if_true, value_if_false)
```

* **logical_test** → Condition to evaluate
* **value_if_true** → Result if condition is TRUE
* **value_if_false** → Result if condition is FALSE

---

## 📌 1. Handling Multiple Conditions (Nested IF)

When you need to evaluate **more than one condition**, you can use **nested IF functions**.

### 🎯 Example: Student Division Classification

Classify marks in cell **B2** into divisions:

| Marks Range | Result       |
| ----------- | ------------ |
| ≥ 60        | 1st Division |
| 30–59       | 2nd Division |
| 10–29       | 3rd Division |
| < 10        | Fail         |

---

### 🧮 Formula:

```excel
=IF(B2>=60,"1st Division",IF(B2>=30,"2nd Division",IF(B2>=10,"3rd Division","Fail")))
```

---

### 🔍 How It Works:

* Excel checks conditions **from left to right**
* As soon as one condition is TRUE, it stops evaluating further
* Remaining conditions are ignored

---

### ⚠️ Important Notes:

* Always arrange conditions **from highest to lowest**
* Too many nested IFs can make formulas hard to read
* Excel allows up to **64 nested IFs** (but avoid excessive nesting)

---

## 📌 2. IF Function Returning Dynamic Results (Discount Logic)

Instead of returning static values, IF can return **different outputs or calculations** based on conditions.

---

### 🎯 Scenario: Discount Calculation

Apply discount based on purchase amount in **B2**:

| Amount (₹) | Discount     |
| ---------- | ------------ |
| ≥ 500      | 20% Discount |
| 200–499    | 10% Discount |
| < 200      | No Discount  |

---

### 🧮 Final Formula:

```excel
=IF(B2>=500,"20% Discount",IF(B2>=200,"10% Discount","No Discount"))
```

---

### 💡 Advanced Version (Returning Calculated Value):

Instead of text, return actual discounted price:

```excel
=IF(B2>=500,B2*0.8,IF(B2>=200,B2*0.9,B2))
```

---

### 🔍 Explanation:

* **B2 * 0.8** → Applies 20% discount
* **B2 * 0.9** → Applies 10% discount
* Otherwise → No discount

---

## 📌 3. IF Function with Text Conditions

To check if a cell contains specific text, combine IF with **SEARCH** and **ISNUMBER**.

---

### 🎯 Example: Check Approval Status

Check if cell **A2** contains the word `"approved"`.

---

### 🧮 Formula:

```excel
=IF(ISNUMBER(SEARCH("approved",A2)),"Yes","No")
```

---

### 🔍 Detailed Breakdown:

#### 🔹 `SEARCH("approved", A2)`

* Searches for text inside a cell
* Case-insensitive
* Returns position (number) if found
* Returns error if not found

---

#### 🔹 `ISNUMBER(...)`

* Converts result into TRUE/FALSE
* TRUE → Text found
* FALSE → Text not found

---

#### 🔹 Final IF Logic:

* TRUE → `"Yes"`
* FALSE → `"No"`

---

### 💡 Bonus Tip:

For **case-sensitive search**, use:

```excel
=IF(ISNUMBER(FIND("approved",A2)),"Yes","No")
```

---

## 📌 4. How to Apply Formulas in Excel

1. Open Excel and enter your data
2. Select the cell where you want the result
3. Type the formula
4. Press **Enter**
5. Use the **fill handle (drag down)** to apply to multiple rows

---

## ⚡ Best Practices

✔ Keep formulas simple and readable
✔ Use helper columns if logic becomes complex
✔ Consider using:

* `IFS` (for cleaner multiple conditions)
* `VLOOKUP` / `XLOOKUP` (for large datasets)

---

## 🚀 Alternative: Using IFS Function (Modern Excel)

Instead of nested IF:

```excel
=IFS(
 B2>=60,"1st Division",
 B2>=30,"2nd Division",
 B2>=10,"3rd Division",
 TRUE,"Fail"
)
```

---

## 📊 Real-World Use Cases

* Student grading systems
* Salary and bonus calculations
* Discount and billing systems
* Attendance tracking
* Data validation

---

## ✅ Summary

* **IF** is essential for decision-making in Excel
* Use **nested IF** for multiple conditions
* Use **SEARCH + ISNUMBER** for text detection
* Use **IFS** for cleaner modern formulas

---

## 📎 Conclusion

Mastering IF functions allows you to build powerful, dynamic spreadsheets that can automate decision-making and reduce manual work.

---