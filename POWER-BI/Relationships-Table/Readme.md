# ⭐ Star Schema Model in Power BI

> A practical guide to building a **Star Schema data model in Power BI** using fact tables, dimension tables, relationships, DAX measures, and report visualizations.

🔗 **[Open Power BI Model](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/Relationships-Table/STAR-SCHEMA-MODEL/star-schema-model.pbix)**

---

## 📑 Table of Contents

- [📌 Overview](#-overview)
- [⭐ Star Schema](#-star-schema)
- [📊 Fact Table](#-fact-table)
- [📦 Dimension Tables](#-dimension-tables)
- [📥 Data Loading](#-data-loading)
- [🔗 Relationships](#-relationships)
- [🧮 DAX Measures](#-dax-measures)
- [📈 Building Reports](#-building-reports)
- [🔑 Keys & Aggregation](#-keys--aggregation)
- [✨ Advantages](#-advantages)
- [🏗️ Model Structure](#️-model-structure)

---

## 📌 Overview

A **Star Schema** is a data modeling approach widely used in **Power BI**, data warehousing, and business intelligence.

It consists of:

| Component | Purpose |
|---|---|
| 📊 **Fact Table** | Stores measurable business data |
| 📦 **Dimension Tables** | Provide descriptive context |
| 🔗 **Relationships** | Connect dimensions to the fact table |
| 🧮 **Measures** | Perform dynamic calculations |

This structure creates a clean and understandable model for analytical reporting.

---

## ⭐ Star Schema

A Star Schema contains a **central fact table** surrounded by multiple dimension tables.

```text
                         ┌───────────────┐
                         │   📦 Product  │
                         │   Dimension   │
                         └───────┬───────┘
                                 │
                                 │
       ┌───────────────┐         │         ┌───────────────┐
       │ 📦 Customer   │         │         │   📅 Date     │
       │   Dimension   │─────────┼─────────│   Dimension   │
       └───────────────┘         │         └───────────────┘
                                 │
                          ┌──────▼───────┐
                          │  📊 SalesFact│
                          │              │
                          │ SalesAmount  │
                          │ Quantity     │
                          │ ProductKey   │
                          │ CustomerKey  │
                          │ DateKey      │
                          └──────────────┘
```

### Key Principle

```text
Dimension Tables
       ↓
Provide Context
       ↓
   Fact Table
       ↓
Provide Measures
```

---

## 📊 Fact Table

The **Fact Table** is the center of the Star Schema.

It stores transactional data and numerical values that can be aggregated.

### Example: `SalesFact`

| Column | Description |
|---|---|
| `SalesKey` | Unique sales record |
| `ProductKey` | Foreign key to Product |
| `CustomerKey` | Foreign key to Customer |
| `DateKey` | Foreign key to Date |
| `SalesAmount` | Sales value |
| `Quantity` | Quantity sold |

### Fact Table Characteristics

- Stores measurable business events.
- Usually contains the largest number of rows.
- Contains foreign keys.
- Supports calculations and aggregations.

---

## 📦 Dimension Tables

Dimension tables contain **descriptive attributes** used to filter, group, and analyze fact data.

### Example: `Product`

| Column | Description |
|---|---|
| `ProductKey` | Unique product identifier |
| `ProductName` | Product name |
| `Category` | Product category |
| `SubCategory` | Product sub-category |
| `Price` | Product price |

Common dimensions include:

```text
📦 Product
👤 Customer
📅 Date
📍 Location
```

---

## 📥 Data Loading

### 1️⃣ Load the Fact Table

In **Power BI Desktop**:

**Home → Get Data → Text/CSV → `SalesFact.csv` → Load**

Then open **Data View** and inspect the table.

Check:

- `SalesAmount`
- `Quantity`
- `ProductKey`
- `CustomerKey`
- `DateKey`

### 2️⃣ Load Dimension Tables

Load the required dimension files:

```text
Product.csv
Customer.csv
Date.csv
Location.csv
```

Review each table in **Data View** before creating relationships.

---

## 🔗 Relationships

Switch to **Model View** and connect each dimension to the fact table.

### Product

```text
Product[ProductKey]
        │
        │ 1 : *
        ▼
SalesFact[ProductKey]
```

### Customer

```text
Customer[CustomerKey]
        │
        │ 1 : *
        ▼
SalesFact[CustomerKey]
```

### Date

```text
Date[DateKey]
        │
        │ 1 : *
        ▼
SalesFact[DateKey]
```

### Relationship Settings

| Property | Configuration |
|---|---|
| Cardinality | `One-to-Many` |
| One Side | Dimension |
| Many Side | Fact |
| Cross-filter | Single |
| Filter Flow | Dimension → Fact |

> 💡 **Best Practice:** Keep dimension tables on the **one side** and the fact table on the **many side**.

---

## 🧮 DAX Measures

Create measures in the `SalesFact` table.

### 💰 Total Sales

```DAX
Total Sales =
SUM('SalesFact'[SalesAmount])
```

### 📦 Total Quantity

```DAX
Total Quantity =
SUM('SalesFact'[Quantity])
```

### 🧾 Total Transactions

```DAX
Total Transactions =
DISTINCTCOUNT('SalesFact'[SalesKey])
```

Measures are evaluated dynamically based on filters and the current report context.

---

## 📈 Building Reports

Switch to **Report View** and combine dimension fields with measures.

### Example

```text
Product[ProductName]  →  Axis / Rows
Total Sales            →  Values
```

This allows sales to be analyzed by product.

Other common analyses:

```text
📦 Category   + Total Sales
📍 Region     + Total Sales
👤 Customer   + Total Sales
📅 Month      + Total Sales
```

### Typical Report Components

- KPI Cards
- Column Charts
- Bar Charts
- Tables
- Slicers
- Line Charts

---

## 🔑 Keys & Aggregation

### 🔐 Primary Key

A **Primary Key** uniquely identifies a row in a table.

Examples:

```text
Product[ProductKey]
Customer[CustomerKey]
Date[DateKey]
```

### 🔗 Foreign Key

A **Foreign Key** in the fact table references a dimension key.

```text
Product[ProductKey]
        ▲
        │
SalesFact[ProductKey]
```

### 📊 Aggregation

Aggregation summarizes detailed fact data.

Examples:

- Total Sales by Product
- Total Quantity by Category
- Revenue by Region
- Orders by Customer
- Sales by Month

---

## ✨ Advantages

### 🧹 Reduced Redundancy

Descriptive information is maintained in dimension tables rather than repeatedly stored in the fact table.

### 🔍 Clear Data Model

The relationship between facts and dimensions is easy to understand.

### ⚡ Efficient Analysis

Dimensions provide structured ways to filter, group, and analyze fact data.

### 🧮 Reusable Measures

DAX measures can be reused across multiple visualizations.

### 🛠️ Maintainability

Separating transactional data from descriptive attributes makes the model easier to maintain and extend.

---

## 🏗️ Model Structure

A typical Power BI Star Schema looks like this:

```text
                    ┌─────────────────┐
                    │ 📦 Product      │
                    │   Dimension     │
                    └────────┬────────┘
                             │
                             │
┌─────────────────┐          │          ┌─────────────────┐
│ 👤 Customer     │          │          │ 📅 Date         │
│   Dimension     │──────────┼──────────│   Dimension     │
└─────────────────┘          │          └─────────────────┘
                             │
                      ┌──────▼───────┐
                      │ 📊 SalesFact │
                      │              │
                      │ SalesAmount  │
                      │ Quantity     │
                      │ ProductKey   │
                      │ CustomerKey  │
                      │ DateKey      │
                      └──────▲───────┘
                             │
                      ┌──────┴───────┐
                      │ 📍 Location  │
                      │   Dimension  │
                      └──────────────┘
```

---

## 🔄 Modeling Workflow

```text
📥 Load Data
     ↓
📊 Create Fact & Dimension Tables
     ↓
🔑 Identify Primary & Foreign Keys
     ↓
🔗 Create Relationships
     ↓
🧮 Create DAX Measures
     ↓
📈 Build Visualizations
     ↓
🔍 Analyze Data
```

---

> **In summary:** A Star Schema separates **business measurements** from **descriptive attributes**, providing a structured foundation for Power BI data modeling, DAX calculations, and analytical reporting.