# Handling Null Values in a DataFrame

> ⭐ **Data Cleaning is a crucial step in Data Analysis!**  
> Handling missing values properly ensures accurate insights, better model performance, and a clean dataset to work with.

While making a DataFrame from a CSV file, many blank columns are imported as null values into the DataFrame, which later creates problems while operating on that DataFrame. Pandas `isnull()` and `notnull()` methods are used to check and manage NULL values in a DataFrame.

---

## 🔍 1. Identifying Null Values

When working with datasets, it’s common to encounter rows with missing values (null values). Null values can appear in various forms, such as missing ratings, blank cells, or incomplete entries.

### 📥 Loading the Dataset

To start, we first load a dataset and check for missing values. In this case, we’ll be working with a Google Play Store dataset.

```python
import pandas as pd
data = pd.read_csv("googleplaystore.csv")
```

Once the dataset is loaded, you can use the `isnull()` method to check for missing values. This method returns a Boolean DataFrame where **True** represents a null value, and **False** represents a non-null value.

### 🧪 Checking for Null Values

**Syntax:**  
`Pandas.isnull("DataFrame Name")` or `DataFrame.isnull()`

**Parameters:**  
Object to check null values for

**Return Type:**  
A DataFrame of Boolean values which are True for NaN values

If we add the `sum()` function after `isnull()`, it will give us the total number of data points that are null in each column.

### 📌 Example

```python
print(data.isnull().sum())
```

**Example Output:**

```
App                  0
Category             0
Rating            1474
Reviews              0
Size                 0
Installs             0
Type                 1
Price                0
Content Rating       1
Genres               0
Last Updated         0
Current Ver          8
Android Ver          3
dtype: int64
```

So we can see that columns like *App*, *Category*, *Rating*, etc., have different counts of null values. The number displayed after each column name represents the total number of null values that column contains.

---

## 🛠️ 2. Handling Null Values

We can delete all the rows that contain null values using the `dropna()` function.

### 📌 Example

```python
df = data.dropna()
print(df.isnull().sum())
```

**Output:**

```
App               0
Category          0
Rating            0
Reviews           0
Size              0
Installs          0
Type              0
Price             0
Content Rating    0
Genres            0
Last Updated      0
Current Ver       0
Android Ver       0
dtype: int64
```

Now no more null values are present in any of the columns.

---

## 📉 Impact of Removing Null Values

Removing rows with missing values can significantly reduce the size of your dataset. For example, after removing rows with null values, the total number of rows might decrease.

### Example Impact

- **Before:** 10,841 rows  
- **After:** 9,360 rows

This means we’ve lost around **15%** of the data. While this approach ensures clean data, it may not always be practical—especially if a large portion of the dataset contains null values. In such cases, *filling* the missing values may be a better option (covered in a later article).

> 💡 **Tip:** Instead of removing rows, you can also fill null values using methods like  
> `fillna()`, forward-fill, backward-fill, or statistical strategies (mean/median/mode).

---