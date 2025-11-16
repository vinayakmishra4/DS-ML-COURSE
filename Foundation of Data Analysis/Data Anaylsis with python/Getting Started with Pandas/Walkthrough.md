Here is a clean, attractive, well-structured **Markdown version** of your article:

---

# 📊 Working With Data Using Pandas

When working with data, one of the first steps is to load, inspect, and explore the dataset to understand its structure. In this guide, we’ll walk through a dataset using **Pandas**, a powerful Python library for data analysis.

We will cover:

* How to read a dataset
* How to select columns
* How to explore the dataset
* How to access specific data points

---

## 🗂️ 1. Loading the Dataset

We’ll use **googleplaystore.csv**, which contains information about apps on the Google Play Store.

### 📥 Importing Pandas & Reading the CSV

```python
import pandas as pd

# Read the dataset from a CSV file
data = pd.read_csv("googleplaystore.csv")
```

### 📝 Syntax of `read_csv()`

```
pd.read_csv(filepath_or_buffer, sep=',', header='infer', 
            index_col=None, usecols=None, engine=None, 
            skiprows=None, nrows=None)
```

#### **Key Parameters**

* **filepath_or_buffer**: Path/URL of the file
* **sep**: Column separator (default `,`)
* **header**: Row to use as column names
* **usecols**: Select specific columns
* **nrows**: Number of rows to read
* **index_col**: Set index column
* **skiprows**: Skip given rows

### 👀 Previewing the Data

```python
data.head(10)
```

This shows the first 10 rows of the dataset.

---

## 🔍 2. Exploring the Dataset

### 🏷️ Checking Column Names

```python
print(data.columns)
```

### 📏 Checking Dataset Shape

```python
data.shape
```

Example output:

```
(10841, 13)
```

### 🧬 Checking Data Type

```python
type(data)
```

Expected output:

```
<class 'pandas.core.frame.DataFrame'>
```

---

## 📌 3. Selecting Columns

### 📄 Selecting a Single Column

```python
data['App']
```

### 🎯 First 10 App Names

```python
data['App'].head(10)
```

---

## 🎯 4. Accessing Specific Data Points

### 🔹 Extracting the First App Name

```python
print(data['App'][0])
```

### 🔹 Extracting First App’s Size

```python
print(data['Size'][0])
```

### 🔹 Extracting All Column Values for Row 1

```python
for i in data.columns:
    print(data[i][0])
```

---

## 🧠 5. Understanding Data Types

### Column Type

```python
type(data['App'])
```

Returns:

```
<class 'pandas.core.series.Series'>
```

Meaning:

* **Dataset → DataFrame**
* **Single column → Series**

---

If you'd like, I can also **shorten this**, turn it into a **cheat sheet**, or make a **PDF-style formatted version**!
