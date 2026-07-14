# 🗂️ Handling Duplicate Values in SQL

> **A beginner-friendly guide to identifying, analyzing, and handling duplicate records in SQL for cleaner and more reliable datasets.**

---

## 📖 Overview

Duplicate records are one of the most common data quality issues in databases. They can lead to inaccurate reports, incorrect calculations, and unreliable business insights. Before performing any data analysis or machine learning tasks, it is important to identify and handle duplicate values.

This guide explains different approaches to finding and managing duplicates using the **`messy_indian_dataset`**.

---

## 🎯 Why Handle Duplicate Values?

Duplicate data can:

* ❌ Produce incorrect analytical results.
* 📊 Distort reports and dashboards.
* 💾 Consume unnecessary storage.
* 🔄 Create inconsistencies across records.
* 📉 Reduce the overall quality of your dataset.

Removing duplicates ensures that your data remains accurate, consistent, and ready for analysis.

---

## 📌 Learning Objectives

By the end of this guide, you will understand how to:

* Identify duplicate records.
* Find unique values in a dataset.
* Keep only one record from duplicate groups.
* Detect duplicates using multiple columns.
* Apply best practices for duplicate handling.

---

# 🔍 Finding Unique Values Based on ID

Each record should ideally have a unique identifier. Checking unique IDs helps verify data integrity and detect duplicate entries.

### ✅ Purpose

* Detect duplicate IDs.
* Validate primary key uniqueness.
* Identify data entry issues.

### 📋 Sample Output

| ID |
| -- |
| 1  |
| 2  |
| 3  |
| 4  |
| 7  |
| 8  |
| 9  |
| 10 |

### 💡 Observation

Every ID appears only once after removing duplicates.

---

# 👤 Finding Unique Values Based on Name

Names are another common field used to identify repeated records.

### ✅ Purpose

* Find unique customers.
* Detect repeated names.
* Prepare clean datasets for reporting.

### 📋 Sample Output

| Name         |
| ------------ |
| Amit Kumar   |
| Ankit Tiwari |
| Priya Sharma |
| Rajesh Patel |
| Ritu Singh   |
| Swati Gupta  |

### 💡 Observation

Each customer name is displayed only once.

---

# 🏆 Keeping Only One Record from Duplicate IDs

Sometimes multiple rows represent the same entity. Instead of keeping all duplicates, only one representative record is retained.

### ✅ Benefits

* Eliminates redundant data.
* Improves consistency.
* Simplifies reporting.
* Enhances query performance.

### 💡 Result

For each duplicate ID, only one record is preserved while the remaining duplicate entries are ignored or removed.

---

# 🔄 Finding Unique Records Using Multiple Columns

Not every duplicate can be identified using a single column.

Sometimes a combination of columns such as **ID + Name** provides a more accurate definition of uniqueness.

### ✅ Advantages

* Better duplicate detection.
* Reduces false positives.
* Handles complex datasets.
* Improves data quality.

---

# 🛠️ Common SQL Techniques

| Technique        | Purpose                                           |
| ---------------- | ------------------------------------------------- |
| **DISTINCT**     | Returns unique values or rows.                    |
| **GROUP BY**     | Groups duplicate records together.                |
| **COUNT()**      | Counts duplicate occurrences.                     |
| **ROW_NUMBER()** | Assigns a unique sequence to identify duplicates. |
| **PARTITION BY** | Groups records based on one or more columns.      |

---

# 📊 Duplicate Handling Workflow

```text
Raw Dataset
      │
      ▼
Identify Duplicate Records
      │
      ▼
Choose Duplicate Criteria
(ID / Name / Multiple Columns)
      │
      ▼
Find Unique Records
      │
      ▼
Remove or Retain Required Records
      │
      ▼
Clean Dataset Ready for Analysis
```

---

# 🚨 Common Challenges

| Challenge                | Impact                              |
| ------------------------ | ----------------------------------- |
| Duplicate IDs            | Incorrect joins and aggregations    |
| Duplicate Customer Names | Confusing customer records          |
| Partial Duplicates       | Difficult to identify automatically |
| Missing Values           | Can hide duplicate records          |
| Large Datasets           | Slower duplicate detection          |

---

# 💡 Best Practices

* ✔ Always inspect duplicate records before removing them.
* ✔ Keep a backup of the original dataset.
* ✔ Use primary keys wherever possible.
* ✔ Define duplicate criteria carefully.
* ✔ Validate the cleaned dataset after processing.
* ✔ Document the cleaning process for reproducibility.

---

# 📈 Benefits of Removing Duplicates

* 📊 Improves data quality.
* ⚡ Faster query execution.
* 🎯 More accurate analysis.
* 💾 Reduces storage usage.
* 🔍 Simplifies reporting.
* 🤝 Maintains database integrity.

---

# 📝 Key Takeaways

* Duplicate values negatively affect data quality.
* Identifying duplicates is an essential data-cleaning task.
* Duplicates can be detected using one or multiple columns.
* Different SQL techniques are suitable for different duplicate scenarios.
* Clean datasets lead to better analytics and decision-making.

---

# 📚 Reference

The complete SQL implementation used in this guide is available in the GitHub repository.

🔗 **SQL Script:** [Handling Duplicate Values.sql](http://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Data-Cleaning/Handling-Duplicate-values/Handling-Duplicate-values.sql)

🔗 **GitHub Repository:** [DS-ML-COURSE](http://github.com/vinayakmishra4/DS-ML-COURSE)

---

# 🤝 Contributing

Contributions are welcome!

If you have suggestions for improving this guide or would like to add more SQL data-cleaning examples, feel free to fork the repository, make your changes, and submit a pull request.

If you found this project helpful, don't forget to ⭐ the repository!

---

# 📄 License

This project is shared for **educational and learning purposes**. You are free to use and modify the examples while giving appropriate credit to the original repository.

---

## ⭐ Happy Learning!

Clean data is the foundation of accurate analytics. Master duplicate handling, and you'll build more reliable SQL queries, cleaner datasets, and better data-driven solutions.
