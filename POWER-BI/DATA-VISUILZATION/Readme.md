# 📊 Data Visualization with Power BI

> **Turn raw data into clear, meaningful, and actionable insights.**

Data visualization is a key part of data analysis. It allows data to be presented in a clear, meaningful, and easy-to-understand way. This guide covers practical techniques for creating, customizing, formatting, and improving visualizations in **Power BI**, with a focus on axes, legends, relationships, formatting options, and pie charts.

[![Power BI](https://img.shields.io/badge/Power%20BI-Data%20Visualization-F2C811?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![GitHub](https://img.shields.io/badge/GitHub-Practice%20File-181717?logo=github)](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-VISUILZATION/Data-visuizaltion.pbix)
[![Format](https://img.shields.io/badge/Format-Markdown-000000?logo=markdown)](https://www.markdownguide.org/)


## Table of Contents

- [Getting Started with Visualizations](#getting-started-with-visualizations)
- [Using Legends and Categories](#using-legends-and-categories)
- [Connecting Tables for Accurate Visuals](#connecting-tables-for-accurate-visuals)
- [Customizing Visuals for Clarity](#customizing-visuals-for-clarity)
- [Format Options](#format-options)
- [Customizing Titles](#customizing-titles)
- [Adjusting Axes](#adjusting-axes)
- [Working with Legends](#working-with-legends)
- [Exploring Data Labels](#exploring-data-labels)
- [Pie Charts](#pie-charts)
- [When to Use and Avoid Pie Charts](#when-to-use-and-avoid-pie-charts)
- [Creating a Pie Chart in Power BI](#creating-a-pie-chart-in-power-bi)
- [Formatting a Pie Chart](#formatting-a-pie-chart)
- [Best Practices](#best-practices)
- [Conclusion](#conclusion)

## 🗺️ Learning Roadmap

```text
Data Modeling
     │
     ▼
Choose the Right Visual
     │
     ├── Axes & Aggregations
     ├── Legends & Categories
     ├── Small Multiples
     └── Pie Charts
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
Build Clear Data Stories
```


## Getting Started with Visualizations

After transforming and modeling your data, the next step is to create visualizations. Power BI provides a variety of visualization types, including bar charts, pie charts, line charts, and more.

### 1. Accessing Visualization Tools

To start building a visual:

1. Open the **Add and Build Your Visual** tab.
2. If the tab is not visible, click the **Data** button to make it appear.
3. Choose the visualization type that best represents your data, such as:
   - Bar charts
   - Stacked column charts
   - Pie charts
   - Line graphs

### 2. Setting Up the X and Y Axes

For a basic visualization such as a stacked column chart, assign fields to the X and Y axes.

For example:

- **X-axis:** Product Name
- **Y-axis:** Sum of Revenue

Power BI generally applies the **Sum** aggregation to numerical fields by default. Depending on your analysis, you can change the aggregation to:

- Average
- Maximum
- Minimum
- Count
- Other available aggregation functions

Choosing the appropriate aggregation ensures that the visual represents the intended analysis.

## Using Legends and Categories

Legends help categorize and subcategorize data, adding additional context to a visualization.

### 1. Adding a Legend

For example, if you want to break down revenue by promotion level:

- Add **Promo Bin** to the **Legend** field.
- Revenue can then be visually divided according to promotion categories.

Different colors or sections within the chart can show how much revenue is associated with each promotion level.

### 2. Working with Small Multiples

**Small multiples** divide a visualization into several smaller charts based on a category.

For example, to compare sales across different cities:

1. Add **City** to the **Small multiples** field.
2. Power BI creates a separate chart for each city within the same visual.

Small multiples can make comparisons easier, but they should be used carefully. Too many categories can make the visual crowded and harder to interpret.

## Connecting Tables for Accurate Visuals

Sometimes a visual does not display data as expected because the fields being used come from tables that are not connected.

### 1. Identifying the Problem

If a field from another table cannot be used to categorize or filter your visual correctly, check whether a relationship exists between the relevant tables.

For example, if you want to use **City** from a Store table while analyzing sales data, the two tables need an appropriate relationship.

### 2. Creating Relationships

To establish a relationship:

1. Open the **Data Model** view.
2. Locate the tables that need to be connected.
3. Identify the common field, such as **Store ID**.
4. Drag **Store ID** from one table to the corresponding **Store ID** in the other table.
5. Verify that the relationship has been established correctly.

Once the tables are related, fields from both tables can be used together in your visualizations.

## Customizing Visuals for Clarity

Customization helps make visuals easier to read and better aligned with the goals of your analysis.

### 1. Editing Titles and Labels

Power BI allows titles and labels to be edited directly or through the formatting options.

For example, a title such as:

> Sum of Revenue by Product

can be simplified to:

> Revenue by Product

You can also double-click certain visual elements, such as an axis title, to edit them directly when on-object interaction is enabled.

### 2. Using On-Object Interaction

**On-object interaction** makes it easier to make quick changes directly on a visual.

Depending on the visual and configuration, you can interact with elements such as:

- Titles
- Axis labels
- Data points
- Other visual components

This can speed up the formatting and editing process.

# Format Options

Formatting plays an important role in making visualizations attractive, readable, and informative. Power BI provides a wide range of formatting controls for titles, axes, legends, data labels, and other visual elements.

## Accessing the Format Options

### 1. Opening the Format Pane

To access formatting options:

1. Select the visual.
2. Locate the **Format** option, represented by the paint roller icon.
3. Open the format pane.
4. Use the available settings to customize the selected visual.

If the format pane is not visible, make sure the visual is selected and the formatting option is enabled.

### 2. Using the Zoom Slider

The **zoom slider** can be useful when working with large datasets or when you need to focus on specific areas of a visual.

It allows you to zoom in or out to make individual data points easier to inspect.

## Customizing Titles

Titles communicate what a visual represents and should be clear and descriptive.

### Editing the Title Text

A default title might look like:

> Sum of Revenue by Product

A more concise title would be:

> Revenue by Product

To change the title, open the title settings in the format pane and edit the displayed text.

### Formatting the Title

You can customize properties such as:

- Font
- Font size
- Text color
- Alignment
- Emphasis or bold formatting

A well-formatted title should be noticeable without distracting from the data.

## Adjusting Axes

Axes provide information about categories, values, and measurement scales.

### X-Axis Customization

The X-axis can be customized by:

- Editing its title
- Changing the text appearance
- Adjusting the font size
- Changing the color
- Hiding the axis when it is unnecessary

For example, if the X-axis represents **Product**, you can decide whether displaying the axis title adds useful context.

### Y-Axis Customization

Similarly, the Y-axis can be adjusted to:

- Change its title
- Modify font size
- Change the color
- Clarify units of measurement
- Improve readability of the scale

Clear axis labels help users understand exactly what the values represent.

## Working with Legends

Legends help users interpret categories and segments within a visual.

### 1. Positioning the Legend

Depending on the visual, the legend can be positioned at different locations, such as:

- Top
- Bottom
- Left
- Right

Choose a position that supports readability and does not unnecessarily cover or crowd the visual.

### 2. Customizing Legend Appearance

Legend formatting can include:

- Font size
- Text color
- Alignment
- Position

The goal is to keep the legend visible and useful without allowing it to dominate the visualization.

## Exploring Data Labels

Data labels display exact values directly on a visual.

### 1. Enabling Data Labels

To enable data labels:

1. Select the visual.
2. Open the **Format** pane.
3. Locate **Data labels**.
4. Toggle the option on.

Data labels are especially useful for charts where the exact value is important, such as bar charts and pie charts.

If labels do not appear as expected, verify that the correct fields have been assigned to the visual.

Avoid excessive labels when a visual contains many data points, as this can make the chart difficult to read.

# Pie Charts

Pie charts are useful for showing how individual categories contribute to a whole. They are particularly effective when the number of categories is small and the goal is to communicate proportions or percentages.

## When to Use and Avoid Pie Charts

### When to Use Pie Charts

Pie charts work well when:

- The data represents parts of a meaningful whole.
- There are only a few categories.
- The main goal is to show proportions or percentages.
- The differences between categories can be understood easily.

For example, a pie chart can show the market share of a small number of companies.

### When to Avoid Pie Charts

Avoid pie charts when:

- There are many categories.
- The chart contains more than a few segments.
- Exact comparisons between categories are important.
- You need to compare multiple pie charts side by side.
- The resulting chart becomes crowded or difficult to interpret.

For example, displaying revenue for ten different cities in a pie chart can result in many small slices that are difficult to distinguish.

In these cases, a bar or column chart may provide a clearer comparison.

## Creating a Pie Chart in Power BI

### 1. Selecting the Pie Chart Visual

To create a pie chart:

1. Select the **Pie chart** visual from the visualization pane.
2. Add the appropriate category field to **Legend**.
3. Add the numerical measure to **Values**.

For example, to visualize revenue by city:

- **Legend:** City
- **Values:** Revenue

Power BI will create a segment for each category.

### 2. Interpreting the Pie Chart

Each segment represents a category's contribution to the total.

For example:

- Each city represents a segment.
- The size of each segment represents its revenue contribution.
- Larger segments represent larger proportions of total revenue.

If too many categories are included, the chart may become cluttered. This reinforces the importance of using pie charts only when the number of categories is manageable.

## Formatting a Pie Chart

Once the pie chart has been created, formatting can improve its clarity and appearance.

### 1. Changing the Title

Replace a technical default title such as:

> Sum of Revenue by City

with a simpler and more meaningful title:

> Revenue by City

A descriptive title immediately tells the audience what the visual represents.

### 2. Managing the Legend

If the legend makes the visual too busy, consider turning it off when the information can be communicated another way.

Otherwise, position and format the legend so that it remains easy to read.

### 3. Enabling Data Labels

Data labels can display values or percentages directly on the pie chart.

They are useful when viewers need precise information about each segment rather than only a visual estimate.

### 4. Customizing Appearance

The format pane can be used to customize:

- Segment colors
- Font sizes
- Data label settings
- Display units
- Other visual properties

For example, if values are large, adjusting the display units can make them easier to understand.


## 🧪 Power BI Practice File

Ready to practice? Use the accompanying Power BI `.pbix` file to explore the concepts covered in this guide, including visual creation, formatting, legends, axes, data labels, and pie charts.

### 📂 Practice File

| Resource | Description |
|---|---|
| 📊 **Data Visualization Practice** | Hands-on Power BI report for practicing data visualization concepts |
| 📁 **File type** | `.pbix` |
| 🗂️ **Location** | `POWER-BI/DATA-VISUILZATION/Data-visuizaltion.pbix` |

### 🚀 Open the Practice File

**[➡️ Open Data-visuizaltion.pbix on GitHub](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-VISUILZATION/Data-visuizaltion.pbix)**

> **Note:** You can download the `.pbix` file from GitHub and open it with **Power BI Desktop**.

### 🎯 Practice Checklist

Use the practice file to reinforce the topics in this README:

- [ ] Create and configure basic visualizations
- [ ] Set up X-axis and Y-axis fields
- [ ] Change aggregation functions such as Sum and Average
- [ ] Add and customize legends
- [ ] Experiment with small multiples
- [ ] Explore relationships between tables
- [ ] Customize titles and axis labels
- [ ] Use the Format pane
- [ ] Enable and format data labels
- [ ] Create and format pie charts
- [ ] Compare different visualization types
- [ ] Apply formatting that improves clarity and readability

### 💡 Learning Tip

Don't just open the completed report—**recreate the visuals yourself**. Try changing fields, formatting options, titles, legends, and chart types to see how each change affects the final visualization.

## Best Practices

When creating Power BI visualizations, keep the following practices in mind:

1. **Choose the right visual for the data.** Use charts that match the type of comparison or relationship you want to communicate.
2. **Keep titles descriptive.** Replace technical default titles with concise, meaningful titles.
3. **Use axes carefully.** Make sure users can understand the categories, units, and scale.
4. **Use legends when they add context.** Avoid unnecessary legends that create clutter.
5. **Use small multiples selectively.** They can simplify comparisons, but too many categories can make a visual complex.
6. **Check table relationships.** Ensure the required tables are properly connected when combining fields from different tables.
7. **Use data labels thoughtfully.** Labels provide precision but can reduce readability when too many are displayed.
8. **Prefer clarity over decoration.** Formatting should improve communication rather than distract from the data.
9. **Use pie charts selectively.** They are best for simple part-to-whole comparisons with a small number of categories.
10. **Review the final visual.** Make sure the visualization communicates the intended message quickly and accurately.

## Conclusion

Data visualization is a powerful part of Power BI that transforms raw data into meaningful visual stories. By correctly configuring axes, legends, small multiples, relationships, titles, and data labels, you can create visuals that are both informative and engaging.

Formatting options provide additional control over the appearance and readability of your visualizations. Pie charts can be particularly effective for showing simple proportions, but they should be used selectively to avoid clutter and difficult comparisons.

By combining appropriate visual types with thoughtful formatting and clear design choices, you can create Power BI dashboards and reports that communicate insights effectively and support better decision-making.
