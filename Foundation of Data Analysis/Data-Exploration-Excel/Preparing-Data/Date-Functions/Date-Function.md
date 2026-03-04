# 📅 Excel Date Functions – Complete Guide

Managing dates and time in **Microsoft Excel** becomes simple and powerful when you use built-in date functions correctly. From calculating workdays to finding month-end dates and computing date differences, Excel provides everything needed for scheduling, payroll, financial analysis, dashboards, and reporting.

By combining functions like `TODAY()` and `EOMONTH()`, you can automate dynamic reports and complex date calculations.

---

## 📌 Table of Contents

1. [Understanding Excel Date System](#understanding-excel-date-system)
2. [List of Excel Date Functions](#list-of-excel-date-functions)
3. [Function Details & Examples](#function-details--examples)
4. [Workday & Business Date Functions](#workday--business-date-functions)
5. [Pro Tips & Best Practices](#pro-tips--best-practices)

---

# 🧠 Understanding Excel Date System

Excel stores dates as **serial numbers**.

- January 1, 1900 → Serial number `1`
- January 1, 2024 → Serial number `45292`

This system allows Excel to perform date arithmetic like:

```excel
=A1+10      → Adds 10 days
=A1-30      → Subtracts 30 days
````

---

# 📚 List of Excel Date Functions

### 🔹 Get Current Date & Time

* `TODAY()`
* `NOW()`

### 🔹 Create or Convert Dates

* `DATE()`
* `DATEVALUE()`
* `TEXT()`

### 🔹 Extract Date Components

* `DAY()`
* `MONTH()`
* `YEAR()`
* `WEEKDAY()`
* `WEEKNUM()`
* `EOMONTH()`

### 🔹 Calculate Date Differences

* `DATEDIF()`
* `EDATE()`
* `YEARFRAC()`

### 🔹 Calculate Business Days

* `WORKDAY()`
* `WORKDAY.INTL()`
* `NETWORKDAYS()`
* `NETWORKDAYS.INTL()`

---

# 📖 Function Details & Examples

---

## 1️⃣ DATE Function

Returns a date using year, month, and day.

### Syntax

```excel
DATE(year, month, day)
```

### Example

```excel
=DATE(2025, 3, 15)
```

### Dynamic Example

Return first day of current month:

```excel
=DATE(YEAR(TODAY()), MONTH(TODAY()), 1)
```

---

## 2️⃣ TODAY Function

Returns the current date.

### Syntax

```excel
TODAY()
```

### Example

```excel
=TODAY()+10
```

(Add 10 days to today)

---

## 3️⃣ NOW Function

Returns current date **and time**.

```excel
=NOW()
```

Useful for time-stamping reports.

---

## 4️⃣ DATEVALUE Function

Converts text to a date serial number.

```excel
=DATEVALUE("04-Mar-2026")
```

⚠ Works only if text matches system date format.

---

## 5️⃣ TEXT Function

Formats numbers or dates as text.

```excel
=TEXT(TODAY(),"dd-mmm-yyyy")
```

Common formats:

| Format         | Output Example |
| -------------- | -------------- |
| `"dd/mm/yyyy"` | 04/03/2026     |
| `"mmmm"`       | March          |
| `"ddd"`        | Tue            |

---

## 6️⃣ DAY Function

Returns day of month (1–31).

```excel
=DAY(TODAY())
```

---

## 7️⃣ MONTH Function

Returns month number (1–12).

```excel
=MONTH(TODAY())
```

---

## 8️⃣ YEAR Function

Returns year from date.

```excel
=YEAR(TODAY())
```

---

## 9️⃣ EOMONTH Function

Returns last day of month after adding months.

```excel
=EOMONTH(TODAY(),0)
```

(Returns last day of current month)

```excel
=EOMONTH(TODAY(),1)
```

(Returns last day of next month)

---

## 🔟 WEEKDAY Function

Returns day of week as number.

```excel
=WEEKDAY(TODAY(),2)
```

Return Types:

| Return Type | Week Starts On      |
| ----------- | ------------------- |
| 1 (default) | Sunday              |
| 2           | Monday              |
| 3           | Monday (0–6 format) |

---

## 1️⃣1️⃣ DATEDIF Function

Calculates difference between dates.

```excel
=DATEDIF(A1,B1,"d")
```

Units:

| Unit  | Meaning |
| ----- | ------- |
| `"d"` | Days    |
| `"m"` | Months  |
| `"y"` | Years   |

---

## 1️⃣2️⃣ WEEKNUM Function

Returns week number of year.

```excel
=WEEKNUM(TODAY(),21)
```

21 → ISO week (Monday start)

---

## 1️⃣3️⃣ EDATE Function

Adds or subtracts months.

```excel
=EDATE(TODAY(),6)
```

(Add 6 months)

---

## 1️⃣4️⃣ YEARFRAC Function

Returns fraction of year between dates.

```excel
=YEARFRAC(A1,B1,1)
```

Basis Options:

| Basis | Method          |
| ----- | --------------- |
| 0     | US 30/360       |
| 1     | Actual/Actual   |
| 2     | Actual/360      |
| 3     | Actual/365      |
| 4     | European 30/360 |

Used in financial calculations.

---

# 💼 Workday & Business Date Functions

---

## 1️⃣5️⃣ WORKDAY Function

Returns a future/past working day.

```excel
=WORKDAY(A1,28,HolidayList)
```

* Excludes weekends
* Excludes optional holidays

---

## 1️⃣6️⃣ WORKDAY.INTL Function

Allows custom weekends.

```excel
=WORKDAY.INTL(A1,30,2,HolidayList)
```

Weekend Number Examples:

| Number | Weekend  |
| ------ | -------- |
| 1      | Sat, Sun |
| 2      | Sun, Mon |
| 7      | Fri, Sat |

Custom String Example:

```excel
"0000011"
```

(Saturday & Sunday off)

---

## 1️⃣7️⃣ NETWORKDAYS Function

Returns working days between dates.

```excel
=NETWORKDAYS(A1,B1,HolidayList)
```

---

## 1️⃣8️⃣ NETWORKDAYS.INTL Function

Same as NETWORKDAYS but allows custom weekends.

```excel
=NETWORKDAYS.INTL(A1,B1,1,HolidayList)
```

---

# 🚀 Pro Tips & Best Practices

✔ Always store dates as real dates, not text
✔ Use `EOMONTH()` for month-end financial reports
✔ Use `YEARFRAC()` in loan & investment models
✔ Combine `WORKDAY()` with `TODAY()` for project deadlines
✔ Use ISO week numbering (`WEEKNUM(date,21)`) for international standards

---

# 🎯 Real-World Use Cases

* Payroll processing
* Project deadline tracking
* Loan amortization schedules
* Employee attendance reports
* Financial year calculations
* Automated dashboards

---

# 📌 Final Thoughts

Excel date functions are powerful tools for automation and analysis. Once mastered, they save hours of manual calculation and reduce errors in business reports.

> Master date logic, and you master time in Excel. ⏳

---

### ⭐ If this guide helped you, consider sharing it with your team!