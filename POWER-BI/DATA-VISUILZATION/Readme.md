![Power BI](https://img.shields.io/badge/Power%20BI-Data%20Visualization-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Markdown](https://img.shields.io/badge/Documentation-Markdown-blue?style=for-the-badge)
![Learning](https://img.shields.io/badge/Focus-Hands--On%20Learning-success?style=for-the-badge)

# 📊 Data Visualization with Power BI

> **Turn raw data into clear, meaningful, and actionable insights.**

Data visualization is a key part of data analysis. It presents data in a clear, meaningful, and easy-to-understand way. This guide focuses on practical visualization techniques in **Power BI**, covering axes, legends, relationships, formatting, line charts, tree maps, pie charts, and slicers.

---

## 📚 Table of Contents

1. [🚀 Getting Started with Visualizations](#-getting-started-with-visualizations)
2. [🏷️ Legends and Categories](#️-legends-and-categories)
3. [🔗 Connecting Tables for Accurate Visuals](#-connecting-tables-for-accurate-visuals)
4. [🎨 Formatting Visuals](#-formatting-visuals)
5. [📈 Line Charts](#-line-charts)
6. [🌳 Tree Map Visual](#-tree-map-visual)
7. [🥧 Pie Charts](#-pie-charts)
8. [🏷️ Working with Data Labels](#️-working-with-data-labels)
9. [🔍 Slicers](#-slicers)
10. [🧪 Practice File](#-power-bi-practice-file)
11. [🎯 Conclusion](#-conclusion)

---

## 🗺️ Learning Roadmap

```text
Data Modeling
      │
      ▼
Choose the Right Visual
      │
      ├── 📊 Axes & Aggregations
      ├── 🏷️ Legends & Categories
      ├── 🔲 Small Multiples
      ├── 📈 Line Charts
      ├── 🌳 Tree Maps
      ├── 🥧 Pie Charts
      └── 🔍 Slicers
      │
      ▼
Format & Customize
      │
      ├── Titles
      ├── Axes
      ├── Legends
      └── Data Labels
      │
      ▼
Practice with the PBIX File
      │
      ▼
Build Clear Data Stories 🚀
```

---

## 🚀 Getting Started with Visualizations

After transforming and modeling data, the next step is creating visualizations. Power BI provides many visualization types for different analytical purposes — common visuals include bar charts, stacked column charts, pie charts, and line charts.

- To start building a visual, open the **Add and Build Your Visual** area. If it isn't visible, use the **Data** option.
- Choose the visualization type that best represents your data.
- For a basic chart, assign fields to the axes:
  - The **X-axis** generally represents categories or sequential information.
  - The **Y-axis** generally represents numerical values or measurements.

Power BI applies **Sum** aggregation to numerical fields by default. Depending on the analysis, this can be changed to **Average**, **Maximum**, **Minimum**, or **Count**. Choosing the correct aggregation ensures the visual represents the intended analysis.

---

## 🏷️ Legends and Categories

Legends help categorize and subcategorize information in a visualization. For example, adding **Promo Bin** to the **Legend** field divides revenue by promotion category, with different colors or sections representing each one.

### 🔲 Small Multiples

Small multiples divide one visualization into several smaller charts, each representing a particular category.

- Add **City** to the **Small multiples** field.
- Power BI creates a separate chart for each city.
- Small multiples make comparisons easier — but too many categories can crowd the visual and make it harder to interpret.

---

## 🔗 Connecting Tables for Accurate Visuals

A visual may not display data correctly when the required tables aren't connected. If a field from another table can't categorize or filter a visual correctly, check the relationships.

For example, **City** from a Store table may be needed alongside sales information:

1. Open the **Data Model** view to create or inspect relationships.
2. Locate the tables that need to be connected.
3. Identify a common field, such as **Store ID**.
4. Connect the matching **Store ID** fields.
5. Verify that the relationship has been established correctly.

Once tables are related, fields from both tables can be used together.

---

## 🎨 Formatting Visuals

Formatting makes visualizations attractive, readable, and informative.

- Select a visual and open the **Format** option (the paint roller icon) to customize it.
- Titles should clearly communicate what a visual represents — for example, **"Sum of Revenue by Product"** can become **"Revenue by Product."**
- Titles can be edited through the formatting options.
- When on-object interaction is enabled, elements like titles, axis labels, and data points can be edited directly for quick formatting changes.

---

## 📈 Line Charts

A **line chart** represents data points connected by straight lines. It's useful for showing trends over time and for comparing multiple datasets.

- The **X-axis** (horizontal) represents time or sequential categories, such as years or months.
- The **Y-axis** (vertical) represents values or measurements associated with each data point.

Line charts are ideal for continuous data — examples include sales figures, stock prices, and course applicants over time. A chart can display one line or multiple lines, with each line representing a different data series; multiple lines make it easier to compare trends on the same chart.

### 🎯 Use Cases for Line Charts

| Use Case | Description |
|---|---|
| **1️⃣ Trend Analysis** | Track changes in data over time, e.g. sales growth or stock price movement |
| **2️⃣ Comparisons** | Compare multiple datasets over a specific period, e.g. sales figures across products |
| **3️⃣ Predictive Analysis** | Use historical data to identify possible future trends, e.g. market growth |

### 📊 Example Course Dataset

Assume course applicant data from **2017 to 2022** with four key columns:

| Column | Description |
|---|---|
| **Year** | Timeline, used on the X-axis |
| **AI/ML** | Number of AI/ML course applicants |
| **Java** | Number of Java course applicants |
| **DSA** | Number of DSA course applicants |

Each course can be displayed as a separate line, allowing year-wise comparisons between courses.

### 🛠️ Creating a Line Chart in Power BI

**Step 1 — Importing Data**
1. Open **Power BI Desktop**.
2. Click **Get Data**.
3. Choose **Excel Workbook**.
4. Select the relevant dataset file.
5. Click **Load** to import the data.

**Step 2 — Creating the Line Chart**
1. Select the **Line Chart** visual from the visualization pane and resize as needed.
2. Drag **Year** into the **X-axis** (Axis) field.
3. Drag a numerical field into the **Y-axis** (Values) field.
4. Add additional numerical fields for multiple data series.
5. Use the **Format pane** to adjust line colors, styles, axis labels, gridlines, and data labels.

### 🔍 Reading a Line Chart

Each point represents a value for a particular time period or category, and the connecting line shows how the value changes between points:

- ⬆️ An upward line indicates an increase.
- ⬇️ A downward line indicates a decrease.
- Multiple lines allow different data series to be compared, and hovering over a point displays its exact value.

> **Example:** In 2020, AI/ML had 121 applicants, DSA had 139, and Java had 75.

---

## 🌳 Tree Map Visual

A **Tree Map** in Power BI displays hierarchical data using nested rectangles. Each rectangle represents a category, and its size is proportional to a selected measure, such as revenue or sales.

### ✨ Why Use a Tree Map?

- 📊 Compare the relative size of multiple categories.
- 🌳 Display hierarchical data in a compact layout.
- 🔍 Identify categories that contribute the most to a total.
- 🎨 Use colors to distinguish categories and subcategories.

### 🛠️ Creating a Tree Map in Power BI

1. Open **Power BI Desktop** and load your dataset.
2. Select the **Tree Map** visual from the **Visualizations** pane.
3. Add a **Category** field to the **Group** field.
4. Add a numerical measure, such as **Revenue**, to the **Values** field.
5. Optionally, add a **Subcategory** field for hierarchical detail.
6. Use the **Format** pane to customize colors, titles, labels, and borders.

### 🧩 Example: Revenue by Product Category

| Field | Purpose |
|---|---|
| **Category** | Groups the main product categories |
| **Subcategory** | Displays nested categories |
| **Revenue** | Controls the size of each rectangle |
| **Color** | Helps distinguish categories |

Larger rectangles represent categories with higher revenue; smaller rectangles represent lower revenue. Hover over a rectangle to view details such as category name and exact revenue value.

### 🌲 Creating a Hierarchy

```text
Category
   │
   ├── Subcategory 1
   ├── Subcategory 2
   └── Subcategory 3
```

For example, a **Food** category may contain subcategories such as **Breakfast Cereals**, **Pasta**, and **Snacks**. Nested rectangles help show how each subcategory contributes to the overall category.

### 🎨 Tree Map Formatting Tips

- Use meaningful and descriptive titles.
- Select contrasting colors for easier category recognition.
- Enable data labels when category names and values need to be visible.
- Avoid adding too many categories — the visual can become crowded.
- Use tooltips to add detail without overloading the visual.
- Keep formatting consistent with the rest of the report.

### ✅ Benefits of Tree Maps

| Benefit | Description |
|---|---|
| **Clear Comparison** | Quickly compare category sizes |
| **Space Efficient** | Display many categories in a compact area |
| **Hierarchical View** | Show relationships between categories and subcategories |
| **Interactive Analysis** | Use tooltips and filtering for deeper exploration |

> 💡 **Learning Tip:** Try creating a Tree Map using **Category**, **Subcategory**, and **Revenue**. Experiment with colors, labels, and slicers to see how the visual changes.

---

## 🥧 Pie Charts

Pie charts show how individual categories contribute to a whole — particularly useful for proportions or percentages.

### ✅ When to Use Pie Charts

- The data represents a meaningful whole.
- There are only a few categories.
- The main goal is showing proportions.
- Differences between categories can be understood easily.

### ❌ When to Avoid Pie Charts

- There are many categories.
- The chart would contain many small segments.
- Exact comparisons are important.
- Multiple pie charts would need to be compared.

> A bar or column chart provides a clearer comparison in these situations.

### 🛠️ Creating a Pie Chart

1. Select the **Pie Chart** visual.
2. Add the category field to **Legend** (e.g. **City**).
3. Add the numerical measure to **Values** (e.g. **Revenue**).
4. Power BI creates a segment for each category, sized by its contribution to the total.

---

## 🏷️ Working with Data Labels

Data labels display exact values directly on a visual.

1. Select the visual and open the **Format** pane.
2. Locate **Data labels** and turn the option on.

Labels are useful when precise values matter — especially for bar charts and pie charts. Avoid excessive labels on visuals with many data points, as this can make the chart harder to read.

---

## 🔍 Slicers

Slicers are a powerful visual tool in Power BI that let you filter data dynamically, giving users control over what they see and making reports interactive and user-friendly. A slicer filters other visuals on the same report page — for example, a Store ID slicer can filter a sales chart to show selected stores.

### 🛠️ Setting Up a Slicer

1. Select the **Slicer** visual from the visualization pane.
2. Drag the field you want to filter into the slicer, such as **Store ID**.
3. Users can then select individual Store IDs to filter connected visuals.

### 🎨 Customizing Slicers

- Add a clear title, such as **"Slicer for Stores,"** through the **Format** pane.
- Slicers can use a vertical list or dropdown layout — dropdowns work well with many values or limited space.
- Enable multi-select when users need to select multiple values at once.
- Style options such as borders and spacing help match the report design.

### 📅 Using Slicers for Date Filtering

- Add a slicer and drag **Order Date** into it to filter by date; connected visuals update as the range changes.
- Power BI also provides **Relative Date** filtering — e.g. the last 30 days, last 6 months, or last 2 years.

### 💡 Practical Example

| Slicer | Setup |
|---|---|
| **Store ID** | Add a slicer for Store ID and enable multi-select to compare several stores |
| **Date** | Add an Order Date slicer with a dropdown or relative-date option for quick time filtering |
| **Appearance** | Use clear titles and consistent formatting so slicers are easy to understand |

### ✅ Benefits of Slicers

1. **Interactive filtering** — users can dynamically control the data shown in visuals.
2. **Focused analysis** — users can focus on specific stores, categories, or time periods.
3. **Better user experience** — slicers make reports easier to explore.
4. **Flexible date analysis** — date and relative-date slicers support time-based analysis.

### 🎯 Slicer Best Practices

- Use clear and descriptive slicer titles.
- Use dropdown layouts when long lists would take too much space.
- Enable multi-select when comparing multiple categories.
- Avoid adding too many slicers to one report page.
- Place slicers where users can find them easily.
- Keep slicer formatting consistent with the report design.

---

## 🧪 Power BI Practice File

Use the accompanying `.pbix` file to practice the concepts in this guide:

- Practice creating visualizations, configuring axes, and changing aggregations.
- Experiment with legends and small multiples.
- Explore relationships between tables.
- Create and format line charts, tree maps, and pie charts.
- Practice using titles, axis labels, legends, and data labels.

**File Type:** `.pbix`
**Location:** `POWER-BI/DATA-VISUILZATION/Data-visuizaltion.pbix`

**🚀 [Open Data Visualization Practice File](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-VISUILZATION/Data-visuizaltion.pbix)**

> 💡 **Learning Tip:** Recreate the visuals yourself instead of only opening the completed report.

---

## 🎯 Conclusion

Power BI visualization transforms raw data into meaningful visual stories. Correctly configuring axes, legends, relationships, and aggregations improves accuracy. Line charts are effective for trends, comparisons, and continuous data; tree maps reveal hierarchical, part-to-whole relationships; and pie charts are useful for simple proportional comparisons. Formatting improves readability and helps viewers understand the message quickly.

**Choose visual types based on the story your data needs to communicate — keep designs clear, meaningful, and focused on the data.**

> 📊 *Build clear visuals. Discover meaningful insights. Make better decisions.* 🚀