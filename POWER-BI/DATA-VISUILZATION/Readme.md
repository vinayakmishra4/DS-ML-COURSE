<div align="center">

# 📊 Power BI — Data Visualization

### 🚀 Turn Raw Data into Powerful Visual Stories

[![Power BI](https://img.shields.io/badge/Power%20BI-Data%20Visualization-F2C811?style=for-the-badge\&logo=powerbi\&logoColor=black)](https://powerbi.microsoft.com/)
[![Documentation](https://img.shields.io/badge/Documentation-Markdown-blue?style=for-the-badge)]
[![Learning](https://img.shields.io/badge/Focus-Hands--On%20Learning-success?style=for-the-badge)]

**Learn • Visualize • Analyze • Discover**

</div>

---

## 🌟 About This Guide

This guide focuses on practical **Power BI Data Visualization** techniques for transforming raw data into **clear, interactive, and meaningful insights**.

### 📌 Topics Covered

`📊 Charts` • `🌳 Tree Maps` • `🌍 Maps` • `🥧 Pie Charts` • `🔍 Slicers` • `🎨 Formatting` • `🔗 Relationships`

---

## 📚 Contents

| #  | Topic                         |
| -- | ----------------------------- |
| 01 | 🚀 Getting Started            |
| 02 | 🏷️ Legends & Small Multiples |
| 03 | 🔗 Table Relationships        |
| 04 | 🎨 Formatting                 |
| 05 | 📈 Line Charts                |
| 06 | 🌳 Tree Map                   |
| 07 | 🌍 Filled Map                 |
| 08 | 🥧 Pie Charts                 |
| 09 | 🏷️ Data Labels               |
| 10 | 🔍 Slicers                    |

---

## 🗺️ Learning Roadmap

```text
              📦 Data
                │
                ▼
        🔗 Data Modeling
                │
                ▼
       🎯 Choose the Visual
                │
      ┌─────────┼─────────┐
      ▼         ▼         ▼
    📈 Line   🌳 Tree   🌍 Map
    Chart      Map
      │         │         │
      └─────────┼─────────┘
                ▼
        🎨 Format & Design
                │
                ▼
        🔍 Interactive Filters
                │
                ▼
        🚀 Data Storytelling
```

---

## 🚀 01. Getting Started

Power BI provides multiple visuals for different analytical needs.

| Element         | Purpose              |
| --------------- | -------------------- |
| 📌 **X-Axis**   | Categories or time   |
| 📊 **Y-Axis**   | Numerical values     |
| 🏷️ **Legend**  | Categories or series |
| 🔢 **Values**   | Measures             |
| 💬 **Tooltips** | Additional details   |

### 🔢 Common Aggregations

**Sum** • **Average** • **Maximum** • **Minimum** • **Count**

> 💡 Always select an aggregation that matches the question you want to answer.

---

## 🏷️ 02. Legends & Small Multiples

### 🏷️ Legends

Legends divide data into meaningful categories.

**Example:** Add `Promo Bin` to **Legend** to compare revenue across promotion categories.

### 🔲 Small Multiples

Small multiples divide one visual into multiple smaller charts.

* Add **City** to *Small multiples*.
* Each city gets its own chart.
* Makes category comparisons easier.
* Avoid too many categories to prevent clutter.

---

## 🔗 03. Table Relationships

Relationships connect tables so that fields from different tables can work together correctly.

### 🛠️ Create a Relationship

```text
Data Model
    ↓
Select Tables
    ↓
Find Common Field
    ↓
Connect Fields
    ↓
Verify Relationship
```

**Example:** `Store ID` can connect store information with sales information.

> 🔗 **Good data modeling → Accurate visuals**

---

## 🎨 04. Formatting

Great visuals are not only accurate — they are also easy to understand.

### ✨ Formatting Options

`📝 Titles` • `📊 Axes` • `🏷️ Legends` • `🔢 Data Labels`
`🎨 Colors` • `📐 Gridlines` • `🔲 Borders`

### 📝 Example

❌ `Sum of Revenue by Product`

✅ **Revenue by Product**

> 💡 Keep titles short, descriptive, and meaningful.

---

## 📈 05. Line Charts

A **Line Chart** connects data points to show trends over time.

| Component  | Example    |
| ---------- | ---------- |
| **X-Axis** | Year       |
| **Y-Axis** | Applicants |
| **Legend** | Course     |

### 🎯 Best Used For

* 📈 Trend analysis
* 🔄 Comparing multiple series
* 📅 Time-based analysis
* 🔍 Finding increases and decreases

### 🛠️ Build a Line Chart

1. Select **Line Chart**.
2. Add `Year` → **X-Axis**.
3. Add numerical data → **Y-Axis**.
4. Add additional series → **Legend**.
5. Customize using **Format**.

> ⬆️ Rising Line = Increase    ⬇️ Falling Line = Decrease

---

## 🌳 06. Tree Map

A **Tree Map** represents hierarchical data using nested rectangles.

The **size of each rectangle represents the value**.

### ✨ Why Use Tree Maps?

* 📊 Compare category sizes
* 🌳 Display hierarchy
* 🔎 Identify major contributors
* 📦 Display many categories compactly

| Field           | Purpose              |
| --------------- | -------------------- |
| **Category**    | Main category        |
| **Subcategory** | Nested category      |
| **Revenue**     | Rectangle size       |
| **Color**       | Category distinction |

### 🛠️ Create a Tree Map

`Tree Map → Category → Group → Revenue → Values`

Optionally add **Subcategory** for hierarchy.

> 💡 Perfect for understanding how categories contribute to a whole.

---

## 🌍 07. Filled Map

A **Filled Map** displays geographic regions using different colors based on data values.

### 🗺️ Useful For

* 🌎 Comparing regions
* 🎨 Showing geographic differences
* 🔍 Finding regional patterns
* 💬 Displaying extra information

### 🛠️ Build a Filled Map

| Field                 | Role     |
| --------------------- | -------- |
| **State**             | Location |
| **Cost Type**         | Legend   |
| **Cost**              | Value    |
| **City / Store Size** | Tooltip  |

> 💡 Filled Maps are best for **areas and regions**. Latitude and Longitude are better for point-based maps.

---

## 🥧 08. Pie Charts

Pie charts show how categories contribute to a **whole**.

### ✅ Use When

* Few categories exist
* Proportions are important
* Part-to-whole relationships matter

### ❌ Avoid When

* There are many categories
* Segments are very small
* Exact comparisons are required

> 💡 Use a **bar or column chart** when precise comparisons are more important.

### 🛠️ Build

`Pie Chart → Category → Legend → Measure → Values`

---

## 🏷️ 09. Data Labels

Data labels display exact values directly on visuals.

### ⚙️ Enable

**Visual → Format → Data Labels → On**

### 💡 Best Practices

✔ Use labels when exact values matter.
✔ Keep the visual clean.
✔ Avoid excessive labels.

---

## 🔍 10. Slicers

Slicers make Power BI reports **interactive** by allowing users to filter data dynamically.

### 🛠️ Create a Slicer

```text
Select Slicer
      ↓
Add Field
      ↓
Select Value(s)
      ↓
Visuals Update Automatically 🚀
```

### 📅 Date Slicers

Power BI supports:

`📅 Date Range` • `🔽 Dropdown` • `⏱️ Relative Dates`

Examples:

* Last 30 Days
* Last 6 Months
* Last 2 Years

### 🎯 Best Practices

✔ Use clear titles
✔ Use dropdowns for long lists
✔ Enable multi-select when required
✔ Avoid too many slicers
✔ Keep formatting consistent

---

## 🏆 Visualization Cheat Sheet

| Visual              | Best For                 |
| ------------------- | ------------------------ |
| 📈 **Line Chart**   | Trends over time         |
| 🌳 **Tree Map**     | Hierarchical comparisons |
| 🌍 **Filled Map**   | Geographic regions       |
| 🥧 **Pie Chart**    | Part-to-whole            |
| 🔍 **Slicer**       | Interactive filtering    |
| 🏷️ **Data Labels** | Exact values             |

---

## 🎯 Conclusion

Power BI transforms **raw data → visual insights → better understanding**.

Mastering:

`📊 Axes` • `🏷️ Legends` • `🔗 Relationships` • `📈 Charts`
`🌳 Tree Maps` • `🌍 Maps` • `🥧 Pie Charts` • `🔍 Slicers`

helps you create **clean, interactive, and professional dashboards**.

<div align="center">

### 🚀 Build. Visualize. Analyze. Discover.

**⭐ Keep Learning • Keep Building • Keep Visualizing ⭐**

</div>
