# ⚡ Power BI — M Language & Custom Columns

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-M%20Language-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI">
  <img src="https://img.shields.io/badge/Power%20Query-Data%20Transformation-217346?style=for-the-badge" alt="Power Query">
  <img src="https://img.shields.io/badge/M%20Language-Advanced%20Transformations-blue?style=for-the-badge" alt="M Language">
  <img src="https://img.shields.io/badge/Learning-Hands--On-success?style=for-the-badge" alt="Learning">
</p>

<p align="center">
  <b>🚀 Transform • Clean • Prepare • Analyze</b>
</p>

---

## 📌 Overview

**M Language** is the formula and query language used by **Power Query** in Power BI.

It allows users to clean, reshape, combine, and transform data before it reaches the Power BI data model.

**Custom Columns** and **M Language** are useful for creating new fields and applying advanced transformations during the data preparation stage.

### 🎯 What You Can Do

* ➕ Create new calculated fields
* 🔢 Perform calculations using existing columns
* 🧠 Apply conditional logic
* 🔤 Transform and combine text
* 📅 Work with dates and times
* 🧹 Clean and structure datasets
* 🔄 Transform tables and columns
* 📊 Prepare analysis-ready datasets
* ⚙️ Automate repetitive transformations

---

# 🧩 What is M Language?

M Language is a **functional programming language** designed for data transformation in Power Query.

Power Query uses M Language to describe the different transformation steps applied to a dataset.

It helps users prepare raw data before it is loaded into the Power BI data model.

### 🔄 Data Transformation Flow

**Raw Data → Power Query → M Language → Data Transformation → Data Model → Power BI Report**

---

# 🛠️ Why Learn M Language?

| Feature                | Purpose                         |
| ---------------------- | ------------------------------- |
| 🔢 Calculations        | Create calculated values        |
| 🧠 Conditional Logic   | Apply business rules            |
| 🔤 Text Transformation | Clean and modify text           |
| 📅 Date Transformation | Work with dates and time        |
| 🧹 Data Cleaning       | Remove or correct unwanted data |
| 🔄 Data Transformation | Reshape datasets                |
| ⚙️ Automation          | Create repeatable processes     |
| 📊 Data Preparation    | Build analysis-ready datasets   |

---

# 🧱 Custom Columns in Power BI

**Custom Columns** allow users to create new fields based on existing columns and transformation logic.

They are created inside **Power Query Editor** and become part of the data transformation process.

### 💡 Common Uses

* Calculate totals
* Calculate revenue
* Calculate profit
* Calculate area or volume
* Combine text values
* Create categories
* Apply conditional rules
* Format values
* Extract information
* Create business-specific fields

---

# 🚀 Steps to Add a Custom Column

### 1️⃣ Open Power Query Editor

Open **Power BI Desktop** and select **Transform Data** from the Home tab.

This opens the Power Query Editor.

---

### 2️⃣ Select the Table

From the **Queries** pane, select the table where you want to create the new column.

You can use a suitable dataset containing numerical, text, or date fields for practice.

---

### 3️⃣ Open the Add Column Tab

Go to the **Add Column** tab in the Power Query Editor.

Select **Custom Column** to open the Custom Column dialog box.

---

### 4️⃣ Enter the Column Name

Enter a meaningful name for the new column.

A clear column name makes the dataset easier to understand and maintain.

---

### 5️⃣ Define the Transformation

Use the Custom Column dialog box to define the required transformation.

The transformation can use existing columns, calculations, conditional logic, text operations, date operations, and other Power Query functions.

---

### 6️⃣ Apply the Column

Select **OK** to create the Custom Column.

Power Query applies the transformation to the rows in the selected table.

---

# 🧠 M Language in Power Query

M Language provides the foundation for many Power Query transformations.

It is particularly useful when standard Power Query interface options are not sufficient for a specific transformation.

### M Language Can Be Used For

* Data cleansing
* Column transformations
* Conditional calculations
* Text manipulation
* Date manipulation
* Number transformations
* Table transformations
* Combining datasets
* Filtering data
* Reshaping data
* Creating reusable transformation logic

---

# 🔍 Characteristics of M Language

## 1. 🧩 Functional Programming

M is a functional programming language.

Transformations are primarily performed through functions that process data and return results.

---

## 2. 🔄 Sequential Transformation Steps

Power Query records transformations as sequential steps.

Each transformation normally builds upon the previous step.

This makes the data preparation process easier to understand, review, and troubleshoot.

---

## 3. 🔠 Case-Sensitive Language

M Language is **case-sensitive**.

Function names, identifiers, and other elements must use the correct capitalization.

---

## 4. 📚 Built-in Functions

M provides a large collection of functions for different types of transformations.

These include functions for:

* Text
* Numbers
* Dates
* Times
* Lists
* Records
* Tables
* Logical operations

---

# 🧹 Data Cleaning with M Language

M Language can be used to prepare raw datasets for analysis.

Common data-cleaning activities include:

* Removing unnecessary columns
* Removing duplicate records
* Replacing incorrect values
* Handling missing values
* Changing data types
* Splitting columns
* Combining columns
* Standardizing text
* Filtering unwanted records

---

# 🔤 Text Transformations

Text transformation is an important part of data preparation.

M Language can help with:

* Changing text capitalization
* Combining text fields
* Extracting characters
* Removing unwanted spaces
* Replacing text values
* Splitting text
* Cleaning inconsistent text data

These transformations help maintain consistency across datasets.

---

# 📅 Date Transformations

M Language provides tools for working with date and time information.

Date transformations can be used to:

* Extract years
* Extract months
* Extract days
* Format dates
* Calculate date differences
* Create date-based categories
* Standardize date formats

Proper date preparation is important for accurate time-based reporting.

---

# 🧠 Conditional Logic

M Language supports conditional transformations.

Conditional logic allows users to create categories and apply business rules based on existing data.

### Examples of Use

* Classifying sales performance
* Creating customer segments
* Identifying high-value products
* Categorizing employees
* Creating status fields
* Assigning business classifications

---

# 📊 Data Preparation Workflow

### 🔹 Step 1 — Import Data

Bring the required dataset into Power BI.

### 🔹 Step 2 — Open Power Query

Open Power Query Editor through **Transform Data**.

### 🔹 Step 3 — Inspect Data

Review columns, data types, missing values, and inconsistencies.

### 🔹 Step 4 — Clean Data

Apply the required cleaning transformations.

### 🔹 Step 5 — Create Custom Columns

Create new fields based on existing data.

### 🔹 Step 6 — Apply M Transformations

Use M Language when more advanced transformations are required.

### 🔹 Step 7 — Validate Results

Check whether the transformed data produces the expected results.

### 🔹 Step 8 — Close & Apply

Load the prepared dataset into the Power BI data model.

---

# ⚖️ M Language vs DAX

| M Language                     | DAX                                      |
| ------------------------------ | ---------------------------------------- |
| Used in Power Query            | Used in the Power BI data model          |
| Focuses on data transformation | Focuses on data analysis                 |
| Runs during data preparation   | Runs during model/report analysis        |
| Cleans and reshapes data       | Creates analytical calculations          |
| Used for ETL operations        | Used for measures and model calculations |
| Prepares data before loading   | Works with data after loading            |

### 💡 Simple Rule

**M Language → Transform the Data**

**DAX → Analyze the Data**

---

# ✅ Best Practices

### 📝 Use Meaningful Names

Give Custom Columns and transformation steps clear names.

### 🧹 Clean Data Early

Perform necessary cleaning and transformation before building complex reports.

### 🔢 Use Correct Data Types

Ensure every column has the appropriate data type.

### 🧩 Keep Transformations Organized

Use logical and understandable transformation steps.

### 🔍 Validate Your Results

Always review the transformed data before loading it into the model.

### ⚡ Use M When Needed

Use M Language when the required transformation cannot be easily achieved through the standard Power Query interface.

---

# 🎓 Learning Checklist

* [x] Understand Power Query
* [x] Understand M Language
* [x] Understand Custom Columns
* [x] Create calculated fields
* [x] Apply conditional logic
* [x] Transform text data
* [x] Transform date data
* [x] Clean datasets
* [x] Understand query steps
* [x] Use Power Query functions
* [x] Prepare analysis-ready data
* [x] Understand M vs DAX

---

# 🎯 Key Takeaway

**M Language is an important part of Power Query and Power BI data preparation.**

It provides a flexible way to clean, transform, reshape, and prepare data before it reaches the Power BI data model.

Understanding **Custom Columns** and **M Language** helps users handle more complex transformation requirements and create cleaner datasets for reporting and analysis.

---

## ⭐ Topics Covered

`Power BI` • `Power Query` • `M Language` • `Custom Columns` • `Data Cleaning` • `Data Transformation` • `Conditional Logic` • `Text Transformation` • `Date Transformation` • `ETL` • `Data Preparation`

---

<p align="center">
  <b>⚡ Power BI + Power Query + M Language</b>
</p>

<p align="center">
  🚀 Transform Better • 📊 Analyze Better • 🎯 Build Better Reports
</p>
