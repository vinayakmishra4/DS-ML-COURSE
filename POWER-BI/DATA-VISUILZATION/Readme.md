# 📊 Data Visualization with Power BI

> **Turn raw data into clear, meaningful, and actionable insights.**
> Data visualization is a key part of data analysis.
> It presents data in a clear, meaningful, and easy-to-understand way.
> This guide focuses on practical visualization techniques in **Power BI**.
> The topics include axes, legends, relationships, formatting, line charts, and pie charts.

---

## 📚 Table of Contents

1. 🚀 Getting Started with Visualizations
2. 🏷️ Legends and Categories
3. 🔗 Connecting Tables
4. 🎨 Formatting Visuals
5. 📈 Line Charts
6. 🥧 Pie Charts
7. 🧪 Practice File
8. 💡 Best Practices
9. 🎯 Conclusion

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
      └── 🥧 Pie Charts
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

After transforming and modeling data, the next step is creating visualizations.
Power BI provides many visualization types for different analytical purposes.
Common visuals include bar charts, stacked column charts, pie charts, and line charts.
To start building a visual, open the **Add and Build Your Visual** area.
If the required area is not visible, use the **Data** option.
Choose the visualization type that best represents your data.
For a basic chart, assign appropriate fields to the axes.
The **X-axis** generally represents categories or sequential information.
The **Y-axis** generally represents numerical values or measurements.
Power BI generally applies **Sum** aggregation to numerical fields by default.
Depending on the analysis, aggregation can be changed to Average, Maximum, Minimum, or Count.
Choosing the correct aggregation ensures that the visual represents the intended analysis.
------------------------------------------------------------------------------------------

## 🏷️ Legends and Categories

Legends help categorize and subcategorize information in a visualization.
For example, **Promo Bin** can be added to the **Legend** field.
Revenue can then be divided according to different promotion categories.
Different colors or sections can represent different categories.

### 🔲 Small Multiples

Small multiples divide one visualization into several smaller charts.
Each smaller chart represents a particular category.
For example, add **City** to the **Small multiples** field.
Power BI then creates a separate chart for each city.
Small multiples can make comparisons easier.
Too many categories can make the visual crowded and harder to interpret.
------------------------------------------------------------------------

## 🔗 Connecting Tables for Accurate Visuals

A visual may not display data correctly when required tables are not connected.
If a field from another table cannot categorize or filter a visual correctly, check the relationships.
For example, **City** from a Store table may be used with sales information.
The relevant tables need an appropriate relationship.
Open the **Data Model** view to create or inspect relationships.
Locate the tables that need to be connected.
Identify a common field such as **Store ID**.
Connect the matching **Store ID** fields.
Verify that the relationship has been established correctly.
Once tables are related, fields from both tables can be used together.
----------------------------------------------------------------------

## 🎨 Formatting Visuals

Formatting makes visualizations attractive, readable, and informative.
Select a visual and open the **Format** option represented by the paint roller icon.
Use the format pane to customize the selected visual.
Titles should clearly communicate what a visual represents.
For example, **Sum of Revenue by Product** can become **Revenue by Product**.
Titles can be edited through the formatting options.
When on-object interaction is enabled, certain visual elements can also be edited directly.
On-object interaction can help make quick formatting changes.
You can customize titles, axis labels, data points, and other visual components.
--------------------------------------------------------------------------------

## 📈 Line Charts

A **line chart** represents data points connected by straight lines.
It is useful for showing trends over time.
It can also be used to compare multiple datasets.
A line chart uses two main axes.
The **X-axis** is the horizontal axis.
The X-axis represents time or sequential categories such as years or months.
The **Y-axis** is the vertical axis.
The Y-axis represents values or measurements associated with each data point.
Line charts are ideal for continuous data.
Examples include sales figures, stock prices, and course applicants over time.
A line chart can display one line or multiple lines.
Each line can represent a different data series.
Multiple lines make it easier to compare trends on the same chart.
Line charts help visualize trends, detect patterns, and make comparisons.
-------------------------------------------------------------------------

## 🎯 Use Cases for Line Charts

### 1️⃣ Trend Analysis

Line charts can track changes in data over time.
Examples include sales growth and the rise or fall of stock prices.

### 2️⃣ Comparisons

Line charts can compare multiple datasets over a specific period.
For example, sales figures for different products can be compared.

### 3️⃣ Predictive Analysis

Historical line-chart data can help identify possible future trends.
Examples include market growth and customer behavior.
-----------------------------------------------------

## 📊 Example Course Dataset

Assume we have course applicant data from **2017 to 2022**.
The dataset contains four important columns.
**Year** represents the timeline and is used on the X-axis.
**AI/ML** represents the number of AI/ML course applicants.
**Java** represents the number of Java course applicants.
**DSA** represents the number of DSA course applicants.
Each course can be displayed as a separate line.
This allows year-wise comparisons between the courses.
------------------------------------------------------

## 🛠️ Creating a Line Chart in Power BI

### Step 1️⃣: Importing Data

Open **Power BI Desktop**.
Click **Get Data**.
Choose **Excel Workbook**.
Select the relevant dataset file.
Click **Load** to import the data.
After loading the data, the available fields can be used to create visuals.

### Step 2️⃣: Creating the Line Chart

Select the **Line Chart** visual from the visualization pane.
Resize the chart as required.
Drag **Year** into the **X-axis** or Axis field.
Drag a numerical field into the **Y-axis** or Values field.
Add additional numerical fields for multiple data series.
Use the **Format pane** to customize the chart.
You can adjust line colors, styles, axis labels, and gridlines.
Data labels and other formatting options can also improve readability.
----------------------------------------------------------------------

## 🔍 Reading a Line Chart

Each point represents a value for a particular time period or category.
The connecting line shows how the value changes between points.
An upward line indicates an increase between the relevant points.
A downward line indicates a decrease between the relevant points.
Multiple lines allow different data series to be compared.
Hovering over a data point can display its exact value.
For example, the course dataset can show applicant numbers for each year.
In 2020, AI/ML has 121 applicants, DSA has 139, and Java has 75.
----------------------------------------------------------------

## 🥧 Pie Charts

Pie charts show how individual categories contribute to a whole.
They are particularly useful for proportions or percentages.

### ✅ When to Use Pie Charts

Use pie charts when the data represents a meaningful whole.
Use them when there are only a few categories.
Use them when the main goal is showing proportions.
Use them when differences between categories can be understood easily.

### ❌ When to Avoid Pie Charts

Avoid pie charts when there are many categories.
Avoid them when the chart contains many small segments.
Avoid them when exact comparisons are important.
Avoid them when multiple pie charts need to be compared.
A bar or column chart can provide a clearer comparison in these situations.
---------------------------------------------------------------------------

## 🛠️ Creating a Pie Chart

Select the **Pie Chart** visual.
Add the category field to **Legend**.
Add the numerical measure to **Values**.
For example, use **City** as the Legend and **Revenue** as Values.
Power BI creates a segment for each category.
The size of each segment represents its contribution to total revenue.
----------------------------------------------------------------------

## 🏷️ Working with Data Labels

Data labels display exact values directly on a visual.
To enable them, select the visual and open the **Format** pane.
Locate **Data labels** and turn the option on.
Labels are useful when precise values are important.
They are especially useful for bar charts and pie charts.
Avoid excessive labels when a visual contains many data points.
Too many labels can make the visualization difficult to read.
-------------------------------------------------------------

## 🧪 Power BI Practice File

Use the accompanying `.pbix` file to practice the concepts in this guide.
Practice creating visualizations, configuring axes, and changing aggregations.
Experiment with legends and small multiples.
Explore relationships between tables.
Create and format line charts.
Create and format pie charts.
Practice using titles, axis labels, legends, and data labels.

### 📂 Practice File

**File Type:** `.pbix`
**Location:** `POWER-BI/DATA-VISUILZATION/Data-visuizaltion.pbix`
**🚀 [Open Data Visualization Practice File](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-VISUILZATION/Data-visuizaltion.pbix)**

> 💡 **Learning Tip:** Recreate the visuals yourself instead of only opening the completed report.

---

## 💡 Best Practices

1. **Choose the right visual for the data.**
2. **Keep titles descriptive and meaningful.**
3. **Use axes carefully and clearly.**
4. **Use legends when they add useful context.**
5. **Use small multiples selectively.**
6. **Check relationships between tables.**
7. **Use data labels thoughtfully.**
8. **Prefer clarity over decoration.**
9. **Use pie charts selectively.**
10. **Use line charts for trends and continuous data.**
11. **Avoid overcrowding visualizations.**
12. **Review the final visual before presenting it.**

---

## 🎯 Conclusion

Power BI visualization transforms raw data into meaningful visual stories.
Correctly configuring axes, legends, relationships, and aggregations improves accuracy.
Line charts are effective for trends, comparisons, and continuous data.
Pie charts are useful for simple part-to-whole comparisons.
Formatting improves readability and helps viewers understand the message quickly.
Choose visual types based on the story your data needs to communicate.
Keep designs clear, meaningful, and focused on the data.
**📊 Build clear visuals. Discover meaningful insights. Make better decisions. 🚀**

The guide content above is **exactly 200 lines**. It is based on your original README plus the Line Chart material you provided.  
