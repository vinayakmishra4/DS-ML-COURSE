# 📊 Data Transformation

A practical Power BI guide to cleaning, extracting, splitting, and transforming raw data using Power Query.

---

## 📌 Overview

Data transformation is a crucial step in preparing raw data for analysis. Using Power BI Power Query, raw datasets can be cleaned, structured, and converted into an analysis-ready format.

This project demonstrates practical data transformation techniques including:

- 🧹 Removing unnecessary and duplicate rows
- 🔢 Changing data types
- 🧾 Cleaning numerical data
- ✂️ Extracting values from text
- 🔀 Splitting columns using delimiters
- 🏷️ Renaming columns
- 📁 Working with multiple CSV datasets

---

## 🚀 Power BI Project

The complete Power BI `.pbix` file used for this transformation exercise is available below.

📥 **Open / Download Power BI File**

**File:** `Extraction.pbix`

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Power BI Desktop | Data analysis and visualization |
| Power Query | Data cleaning and transformation |
| CSV | Source data format |
| PBIX | Power BI project file |

---

## 🔄 Transformation Workflow

```text
Raw Dataset
     │
     ▼
Import CSV into Power BI
     │
     ▼
Power Query Editor
     │
     ├── Remove Unnecessary Rows
     ├── Remove Duplicates
     ├── Change Data Types
     ├── Clean Sales Data
     ├── Extract Text
     ├── Split Columns
     └── Rename Columns
     │
     ▼
Clean & Structured Dataset
     │
     ▼
Ready for Analysis & Visualization
```

---

## 1️⃣ Preparing and Cleaning the Dataset

The transformation process begins by loading the sales CSV dataset into Power BI.

The objective is to clean and structure the data so it can be reliably used for analysis.

### Removing Unnecessary Rows

Unwanted records such as:

- Extra header rows
- Blank rows
- Duplicate records
- Irrelevant records

are removed from the dataset.

This ensures that only meaningful data remains.

### Changing Data Types

Each column should have an appropriate data type.

| Column | Data Type |
|---|---|
| Date | Date |
| Revenue | Decimal Number / Currency |
| Sales | Whole Number / Decimal Number |
| Store ID | Text / Whole Number |

Correct data types are essential for accurate calculations and visualizations.

---

## 2️⃣ Transforming Sales Data

The `Sales` column may contain unwanted spaces or non-numeric characters.

For example:

```text
" 1200 "
"2,500"
"3500"
```

### Transformation Steps

1. Select the `Sales` column.
2. Remove unnecessary spaces.
3. Replace unwanted characters where required.
4. Convert the column to a numeric data type.
5. Verify the transformed values.

The cleaned column can then be used for:

- Sum
- Average
- Minimum
- Maximum

---

## 3️⃣ Importing the Store Dataset

A second CSV dataset containing store information is imported into Power BI.

Typical fields include:

- Store ID
- Store Size
- State
- City
- Geographic information

### Steps

1. Open Power Query Editor.
2. Select **New Source**.
3. Choose **Text/CSV**.
4. Select the store dataset.
5. Load the dataset.
6. Verify the column headers.

---

## 4️⃣ Extracting Data from Text

The `Store_Size` column may contain values such as:

```text
19 meter square
28 meter square
35 meter square
```

For analysis, only the numerical portion is required.

### Using Extract

1. Select the `Store_Size` column.
2. Select **Extract**.
3. Choose **Text Before Delimiter**.
4. Use a space as the delimiter.
5. Apply the transformation.

### Result

| Original Value | Extracted Value |
|---|---:|
| 19 meter square | 19 |
| 28 meter square | 28 |
| 35 meter square | 35 |

The extracted values can then be converted to **Whole Number**.

---

## 5️⃣ Understanding Delimiters

A delimiter is a character used to separate different pieces of information within a value.

| Delimiter | Example |
|---|---|
| `-` | `CA-California-Los Angeles` |
| `,` | `CA,California,Los Angeles` |
| Space | `19 meter square` |
| `;` | `CA;California;Los Angeles` |

In the state and city dataset, the hyphen (`-`) is used as the delimiter.

For example:

```text
CA-California-Los Angeles
```

contains:

- **State Abbreviation:** CA
- **State:** California
- **City:** Los Angeles

---

## 6️⃣ Extract vs Split Column

Power Query provides both **Extract** and **Split Column** features.

| Feature | Extract | Split Column |
|---|---|---|
| Purpose | Extract a specific part | Separate multiple pieces of data |
| Output | Selected text | Multiple columns |
| Best for | Simple extraction | Structured data separation |
| Uses delimiter | ✅ | ✅ |
| Handles multiple fields | Limited | ✅ |

> 💡 **Recommendation:** Use **Extract** when you only need one specific part of the original value. Use **Split Column by Delimiter** when you need to preserve multiple pieces of information.

---

## 7️⃣ Splitting Data into Multiple Columns

Suppose the dataset contains:

```text
CA-California-Los Angeles
NY-New York-New York City
TX-Texas-Houston
```

The column can be split using the hyphen (`-`).

### Steps

1. Select the combined data column.
2. Select **Split Column**.
3. Choose **By Delimiter**.
4. Select the hyphen (`-`).
5. Apply the transformation.

### Output

| State Abbreviation | State | City |
|---|---|---|
| CA | California | Los Angeles |
| NY | New York | New York City |
| TX | Texas | Houston |

---

## 8️⃣ Renaming Columns

After splitting the data, Power Query may create generic column names.

For example:

```text
Column1
Column2
Column3
```

Rename them using meaningful names:

```text
State Abbreviation
State
City
```

Meaningful names make the dataset easier to understand and maintain.

---

## ⚠️ Common Issues

### Incorrect Data Type

**Problem:** Calculations produce unexpected results.

**Solution:** Check and change the column's data type.

### Extra Spaces

**Problem:** Values contain unwanted spaces.

**Solution:** Use Power Query's **Trim** and **Clean** options.

### Incorrect Split

**Problem:** Data is split incorrectly.

**Solution:** Verify the delimiter and check whether the data follows a consistent structure.

### Missing Information

**Problem:** The Extract function removes required information.

**Solution:** Use **Split Column by Delimiter** when multiple parts of the original value need to be preserved.

---

## 📂 Project Structure

```text
DATA-TRANSFORMATION/
│
├── Extrtaction/
│   └── Extraction.pbix
│
└── README.md
```

---

## 🎯 Key Takeaways

By completing this project, you will understand how to:

- Clean raw datasets using Power Query
- Remove unnecessary records
- Handle duplicate values
- Change column data types
- Clean numerical data
- Extract values from text
- Understand and use delimiters
- Split a column into multiple columns
- Rename transformed columns
- Prepare datasets for Power BI analysis

---

## 🔗 Practice file

📊 **[View the Power BI Transformation Project →](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-TRANSFORMATION/Extrtaction/Extraction.pbix)**

---

## 🏁 Conclusion

Data transformation provides the foundation for reliable data analysis.

By using Power Query, raw and inconsistent data can be converted into a clean, structured, and analysis-ready dataset. These transformation techniques are essential for building accurate Power BI reports, dashboards, visualizations, and business insights.

**Clean Data → Transform Data → Analyze Data → Generate Insights 🚀**
