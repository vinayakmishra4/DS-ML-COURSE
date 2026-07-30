````markdown
# 🔄 Changing Data Types in Power Query

## 📖 Overview

Changing data types is an essential step in data preparation using **Power Query**. Assigning the correct data type to each column ensures that Power BI can correctly interpret, process, and analyze your data. Proper data types enable accurate calculations, filtering, sorting, and visualization.

---

## 🎯 Why Data Types Are Important

Each column in a dataset is assigned a data type that defines how Power BI stores and processes its values. Incorrect data types can prevent calculations, cause errors, and limit the functionality available for data analysis.

For example:

- Numeric columns can be used in mathematical calculations.
- Date columns enable time-based analysis.
- Text columns are used for categorical information.
- Boolean values represent True or False conditions.

---

## 📥 Loading Data into Power Query

To modify data types:

1. Open **Power BI Desktop**.
2. Select **Transform Data** to open the **Power Query Editor**.
3. Review the automatically assigned data types for each column.
4. Identify columns that require data type changes.

---

## 🔢 Changing Numeric Columns

Columns containing values such as revenue, sales, quantity, or profit should use an appropriate numeric data type.

Common numeric data types include:

- Whole Number
- Decimal Number
- Fixed Decimal Number
- Percentage

Using the correct numeric type enables:

- Sum
- Average
- Minimum
- Maximum
- Mathematical calculations

---

## 📅 Changing Date Columns

Date values are sometimes imported as text. Converting them to the **Date** data type allows Power BI to perform date-related operations such as:

- Filtering by year or month
- Creating date hierarchies
- Time intelligence calculations
- Trend analysis

---

## 🆔 Changing Identifier Columns

Columns such as Order ID, Customer ID, or Product ID should generally use the **Whole Number** data type when they contain numeric identifiers.

Using the appropriate data type improves sorting, filtering, and storage efficiency.

---

## ⚠ Handling Mixed Data Types

Some columns may contain a combination of numbers and text.

Examples include:

- 250
- 500
- N/A
- 0 Sales

Power Query often imports these columns as **Text**.

Before changing the data type:

- Remove invalid text values.
- Replace inconsistent entries.
- Clean the data.
- Convert the column to the desired data type.

---

## 🚀 Converting Multiple Columns

Power Query allows multiple columns to be converted simultaneously.

Select the required columns and apply the desired data type to update all selected columns at once. This helps maintain consistency across the dataset and saves time.

---

## 💡 Best Practices

- Verify data types immediately after importing data.
- Use **Whole Number** for identifiers and counts.
- Use **Fixed Decimal Number** for currency values.
- Store dates using the **Date** data type.
- Clean mixed data before conversion.
- Check for errors after changing data types.

---

## ❌ Common Issues

| Issue | Recommendation |
|-------|----------------|
| Numbers stored as Text | Convert to an appropriate numeric data type |
| Dates stored as Text | Convert to the Date data type |
| Mixed Text and Numbers | Clean the data before conversion |
| Incorrect automatic detection | Manually assign the correct data type |
| Conversion errors | Review invalid or inconsistent values |

---

## 📚 Summary

Selecting the correct data type is a fundamental part of data preparation in Power Query. Proper data types improve data quality, enable accurate calculations, support advanced analysis, and ensure reliable report performance. Reviewing and correcting data types before building reports helps create more efficient and meaningful Power BI solutions.

---

## 📂 Practice File

Practice this topic using the Power BI file included in this repository.

**📥 Practice File:** [**Changing-Data-Types.pbix**](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/POWER-BI/DATA-HANDLING/Changin-Data-Types/Changing-Data-Types.pbix)

---
````