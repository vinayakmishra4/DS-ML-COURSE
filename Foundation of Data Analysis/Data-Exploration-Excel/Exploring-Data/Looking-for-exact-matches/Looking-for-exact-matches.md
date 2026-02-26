# 🔍 Looking for Exact Matches in Excel

The **EXACT** function in Excel is your go-to tool when you need to check if two text values are perfectly identical—including **letter case**. Unlike simple comparisons, EXACT ensures that `Data` is not treated the same as `data`.

---

## 📝 What EXACT Checks

* ✅ **Text content**: Are the values the same?
* ✅ **Letter case**: Uppercase vs lowercase matters (`Data` ≠ `data`)

**What it does NOT check:**

* ❌ Cell formatting
* ❌ Font style
* ❌ Cell color
* ❌ Alignment

---

## 📊 EXACT Function Overview

**Syntax:**

```excel
=EXACT(text1, text2)
```

**Returns:**

* `TRUE` → if values are exactly the same
* `FALSE` → if values differ

---

## 🛠 Step-by-Step Guide to Using EXACT

### Step 1: Set Up Your Workbook

Assume you are comparing two columns of data:

| Column A      | Column B        | Column C     |
| ------------- | --------------- | ------------ |
| Original Data | Data to Compare | EXACT Result |

---

### Step 2: Enter Sample Data

| Column A | Column B |
| -------- | -------- |
| Data     | Data     |
| Excel    | excel    |
| Report   | Report   |
| Sales    | SALES    |
| Match    | Match    |

---

### Step 3: Apply the EXACT Function

In cell `C2`, enter:

```excel
=EXACT(A2,B2)
```

This will compare the values in `A2` and `B2`.

---

### Step 4: Drag the Formula Down

Use the **fill handle** to apply the formula to the remaining rows.

---

### Step 5: Interpret the Results

| Column A | Column B | Column C |
| -------- | -------- | -------- |
| Data     | Data     | TRUE     |
| Excel    | excel    | FALSE    |
| Report   | Report   | TRUE     |
| Sales    | SALES    | FALSE    |
| Match    | Match    | TRUE     |

---

## ⚖️ EXACT vs Normal Comparison

| Method         | Case Sensitive? |
| -------------- | --------------- |
| `EXACT(A1,B1)` | ✅ Yes           |
| `=A1=B1`       | ❌ No            |

**Example:**

```excel
=A1=B1      → TRUE (treats DATA = data)
=EXACT(A1,B1) → FALSE (treats DATA ≠ data)
```

---

## 💡 Best Practices

* Use **EXACT** when **case sensitivity matters**.
* Use simple `=A1=B1` for general matching.
* **Clean your data** before comparison.
* Avoid **leading/trailing spaces** in text.

---

## 📌 Pro Tip

Combine **TRIM** with **EXACT** to ignore accidental spaces:

```excel
=EXACT(TRIM(A2), TRIM(B2))
```

This ensures that `Data` and `Data` are treated as identical.

---