# 📊 Data Modeling in Power BI

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-Data%20Modeling-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI">
  <img src="https://img.shields.io/badge/Data-Modeling-blue?style=for-the-badge" alt="Data Modeling">
  <img src="https://img.shields.io/badge/Level-Beginner%20%7C%20Intermediate-success?style=for-the-badge" alt="Level">
</p>

<p align="center">
  <b>Learn how to connect tables, create relationships, and build accurate Power BI reports.</b>
</p>

---

## 📌 Overview

**Data Modeling** is one of the most important concepts in **Power BI**.

In real-world projects, data is usually distributed across multiple tables. For example, product information may be stored in one table while sales transactions are stored in another.

Power BI uses **relationships** between these tables to understand how they are connected and how filters should flow between them.

A properly designed data model allows you to:

- 🔗 Connect multiple tables
- 📊 Build accurate visualizations
- 🔍 Analyze data across different dimensions
- 📈 Calculate meaningful business metrics
- ⚡ Build scalable and efficient reports
- 🎯 Answer important business questions

---

## 🎯 Learning Objectives

After completing this topic, you will be able to:

- Understand the fundamentals of data modeling
- Identify primary and foreign keys
- Identify common columns between tables
- Create relationships between tables in Power BI
- Understand how relationships affect visualizations
- Validate relationships using the Model View
- Understand the importance of a structured data model
- Analyze business data across multiple related tables

---

## 🧩 What is Data Modeling?

**Data modeling** is the process of defining how different tables are connected and how data flows between them.

For example, imagine we have two tables:

### 🛍️ Product Table

| Product ID | Product Name | Brand | Category |
|---|---|---|---|
| P001 | White Chocolate Bar | Nestlé | Chocolate |
| P002 | Dark Chocolate Bar | Cadbury | Chocolate |
| P003 | Milk Chocolate Bar | Hershey's | Chocolate |

### 💰 Sales Table

| Sale ID | Product ID | Quantity | Revenue |
|---|---|---:|---:|
| S001 | P001 | 20 | 5000 |
| S002 | P002 | 15 | 3750 |
| S003 | P003 | 25 | 6250 |

Both tables contain:

```text
Product ID
```

This common column allows us to establish a relationship.

---

# 🔗 Understanding Table Relationships

The relationship between our tables can be represented as:

```text
┌──────────────────────────┐
│      PRODUCT TABLE       │
├──────────────────────────┤
│ 🔑 Product ID            │
│    Product Name          │
│    Brand                 │
│    Category              │
└────────────┬─────────────┘
             │
             │ Product ID
             │
             ▼
┌──────────────────────────┐
│       SALES TABLE        │
├──────────────────────────┤
│ 🔑 Sale ID               │
│ 🔗 Product ID            │
│    Quantity              │
│    Revenue               │
└──────────────────────────┘
```

Here:

- 🔑 `Product ID` in the Product table acts as the **unique identifier**
- 🔗 `Product ID` in the Sales table connects sales transactions to products
- Revenue from the Sales table can now be analyzed by product, brand, category, etc.

---

# ⚙️ Power BI Environment Setup

Before creating relationships, it is useful to configure Power BI correctly.

## 1️⃣ Regional Settings

Open Power BI settings and verify that the regional format is set to:

> 🇺🇸 **English (United States)**

This helps maintain consistency in:

- Date formats
- Number formats
- Currency formats
- Data interpretation

---

## 2️⃣ Data Load Settings

Navigate to the **Data Load** settings.

For manual data modeling, disable automatic relationship creation:

- ❌ Import relationships from data sources
- ❌ Autodetect new relationships after data is loaded

This gives you greater control over the data model.

---

## 3️⃣ Enable On-Object Interaction

Under **Preview Features**, enable:

> ✅ **On-object interaction**

This provides a more modern and interactive experience while working with Power BI visuals.

> **Note:** Power BI's interface and feature locations can change between versions.

---

# 📊 Practical Business Problem

Let's answer a simple business question:

> ### 🏆 Which product generates the maximum revenue?

We have:

**Product information → Product Table**

**Revenue information → Sales Table**

Since these values exist in different tables, we need to establish a relationship before we can correctly analyze revenue by product.

---

# 📈 Step 1 — Create a Visualization

Create a:

### **Stacked Column Chart**

Add the following fields:

| Visual Element | Field |
|---|---|
| 🏷️ X-Axis | Product Name / Brand |
| 💰 Y-Axis | Revenue |

### ❌ Before Creating the Relationship

You may notice that every product appears to have the same revenue.

This is a warning sign that Power BI does not have the required relationship between the tables.

```text
Product A  █████████████
Product B  █████████████
Product C  █████████████
Product D  █████████████
```

The visualization is therefore not providing the expected product-level revenue analysis.

---

# 🔗 Step 2 — Create the Relationship

Open:

> **Model View → Tables**

Locate:

- `Product`
- `Sales`

Find the common field:

```text
Product ID
```

Then connect:

```text
Product[Product ID]
        ↓
Sales[Product ID]
```

Power BI will create a relationship between the two tables.

---

# 🧠 Step 3 — Understand the Relationship

Once the relationship is established, Power BI can understand that:

```text
Product ID → Product Information
Product ID → Sales Transactions
```

When you select a particular product, Power BI can now filter the corresponding sales records.

This allows the revenue calculation to respond correctly to the selected product.

---

# 📈 Step 4 — Validate the Result

Return to your report.

The visualization should now show different revenue values for different products.

### ✅ After Creating the Relationship

```text
Product A  ███████████
Product B  ███████
Product C  ███████████████
Product D  █████
```

Now we can compare products and identify the product generating the highest revenue.

For example:

> 🏆 **Nestlé White Chocolate Bar** may appear as the top-revenue product in the dataset.

The exact result depends on the data contained in the practice file.

---

# ⭐ Why Relationships Matter

Relationships are essential because they define how tables communicate with each other.

Without appropriate relationships:

```text
Product Table       Sales Table
     ❌                  ❌
      \                /
       \              /
        No Connection
```

With a relationship:

```text
Product Table
      │
      │ Product ID
      ▼
Sales Table
      │
      ▼
Correct Analysis
```

A correct data model ensures that filters and calculations behave as expected.

---

# 🏗️ Data Modeling Workflow

A typical Power BI data modeling workflow looks like this:

```text
             ┌─────────────────┐
             │   Import Data   │
             └────────┬────────┘
                      ↓
             ┌─────────────────┐
             │  Clean Data     │
             └────────┬────────┘
                      ↓
             ┌─────────────────┐
             │ Identify Keys   │
             └────────┬────────┘
                      ↓
             ┌─────────────────┐
             │ Create          │
             │ Relationships   │
             └────────┬────────┘
                      ↓
             ┌─────────────────┐
             │ Create Measures │
             └────────┬────────┘
                      ↓
             ┌─────────────────┐
             │ Build Visuals   │
             └────────┬────────┘
                      ↓
             ┌─────────────────┐
             │ Analyze Insights│
             └─────────────────┘
```

---

# 🔑 Important Data Modeling Concepts

## 1. Primary Key

A **Primary Key** uniquely identifies a row in a table.

Example:

```text
Product ID
```

in the Product table.

---

## 2. Foreign Key

A **Foreign Key** references a key from another table.

Example:

```text
Product ID
```

in the Sales table.

---

## 3. Cardinality

Cardinality defines how records in one table relate to records in another table.

Common types include:

- **One-to-One (1:1)**
- **One-to-Many (1:*)**
- **Many-to-One (*:1)**
- **Many-to-Many (*:*)**

For a typical Product → Sales model:

```text
Product
   1
   │
   │
   *
 Sales
```

One product can have many sales transactions.

---

## 4. Cross Filter Direction

Cross-filter direction determines how filters move between related tables.

Common options include:

- **Single**
- **Both**

For dimensional models, a single-direction relationship is often preferred when it appropriately represents the business logic and avoids ambiguous filter paths.

---

# 🌟 Star Schema

For larger Power BI projects, a **Star Schema** is a commonly recommended modeling approach.

```text
                  ┌───────────────┐
                  │   Customer    │
                  └───────┬───────┘
                          │
                          │
┌───────────────┐    ┌────▼─────┐    ┌───────────────┐
│    Product    │────│  SALES   │────│     Date      │
└───────────────┘    └────┬─────┘    └───────────────┘
                          │
                          │
                  ┌───────▼───────┐
                  │    Store      │
                  └───────────────┘
```

Typically:

- ⭐ **Fact Table** → stores measurable business events
- ⭐ **Dimension Tables** → provide descriptive information

Example:

```text
FACT TABLE
    ↓
Sales

DIMENSIONS
    ↓
Product
Customer
Date
Store
```

Understanding relationships is an important step toward building professional Power BI data models.

---

# 🧪 Hands-On Practice

## 📂 Power BI Practice File

Practice data modeling using the provided Power BI file:

### 👉 [📥 Data Modeling Practice File](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-MODELING/Data-Modeling.pbix)

---

## 📝 Practice Tasks

After opening the Power BI file, try the following:

### Task 1
Explore all available tables.

### Task 2
Identify the common columns between the tables.

### Task 3
Create the appropriate relationship between:

```text
Product
   ↓
Product ID
   ↓
Sales
```

### Task 4
Create a column chart showing:

```text
Product Name → Revenue
```

### Task 5
Identify the product with the highest revenue.

### Task 6
Experiment with different fields such as:

- Brand
- Category
- Product Name
- Quantity
- Revenue

### Task 7
Observe how the visualizations change when filters and relationships are applied.

---

# ⚠️ Common Mistakes to Avoid

| ❌ Mistake | ✅ Better Approach |
|---|---|
| Creating unnecessary relationships | Create only meaningful relationships |
| Using incorrect key columns | Identify the correct business key |
| Ignoring duplicate values | Check uniqueness before defining keys |
| Depending completely on auto-detect | Understand and validate relationships manually |
| Creating ambiguous relationships | Keep the model simple and logical |
| Mixing unrelated tables | Define clear table responsibilities |
| Ignoring data types | Ensure relationship columns have compatible data types |

---

# 💡 Key Takeaways

> ### A good Power BI report starts with a good data model.

Remember:

- 🔗 Relationships connect tables.
- 🔑 Keys identify and connect records.
- 📊 Relationships affect how visuals calculate and filter data.
- 🏗️ Star schemas are widely used for scalable analytical models.
- 🎯 Correct relationships lead to more reliable business insights.
- 🧠 Understanding the data model is more important than simply creating visuals.

---

# 🚀 Learning Path

A recommended Power BI learning progression:

```text
01 → Power BI Introduction
        ↓
02 → Data Import
        ↓
03 → Power Query / Data Cleaning
        ↓
04 → Data Modeling ⭐
        ↓
05 → Relationships
        ↓
06 → DAX
        ↓
07 → Measures
        ↓
08 → Data Visualization
        ↓
09 → Dashboard Design
        ↓
10 → Business Intelligence
```

---

# 📚 Resources

| Resource | Link |
|---|---|
| 📊 Data Modeling Practice | [Open `.pbix` File](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-MODELING/Data-Modeling.pbix) |
| 📁 Complete Course Repository | [DS-ML-COURSE](https://github.com/vinayakmishra4/DS-ML-COURSE) |

---

# 🎓 Conclusion

**Data Modeling is the foundation of effective Power BI analysis.**

By connecting tables through appropriate relationships, Power BI can correctly understand how different pieces of information are related.

In this example, connecting the **Product** and **Sales** tables through **Product ID** allows us to analyze revenue at the product level and answer important business questions such as:

> 🏆 **Which product generates the maximum revenue?**

Once you understand data modeling and relationships, you are ready to move toward more advanced Power BI concepts such as:

- DAX
- Measures
- Calculated Columns
- Star Schema
- Time Intelligence
- Dashboard Development

---

<p align="center">
  ⭐ <b>Keep Learning • Keep Practicing • Keep Building</b> ⭐
</p>

<p align="center">
  <i>Data → Model → Analyze → Visualize → Insights</i>
</p>