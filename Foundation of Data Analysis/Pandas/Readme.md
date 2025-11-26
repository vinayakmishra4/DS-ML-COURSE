# 🐼 Intro to Pandas — Beginner Friendly Guide to Data Analysis in Python

[![Python](https://img.shields.io/badge/Python-3.7+-blue?logo=python&logoColor=white)](https://www.python.org/)
[![Pandas](https://img.shields.io/badge/Pandas-1.5+-brightgreen?logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange?logo=jupyter&logoColor=white)](https://jupyter.org/)

---

## 🚀 Overview

Welcome to the **Intro to Pandas** notebook!  
This notebook is part of the **Foundation of Data Analysis** module in the DS-ML-COURSE. It’s designed for **beginners** who want to learn how to handle, clean, and analyze tabular data efficiently using Python.  

Pandas makes data manipulation **fast, flexible, and intuitive**. By the end of this notebook, you’ll be confident working with datasets of all sizes.  

---

## 🎯 Key Learning Outcomes

By completing this notebook, you will be able to:

- ✅ Understand `Series` and `DataFrame`  
- ✅ Load data from CSV, Excel, JSON  
- ✅ Inspect and summarize datasets  
- ✅ Index, filter, and select data  
- ✅ Handle missing or inconsistent values  
- ✅ Perform basic statistics and transformations  
- ✅ Prepare data for machine learning  

---

## 📚 Topics Covered

| Module | Description |
|--------|-------------|
| **Introduction** | What is Pandas & why it’s essential for data analysis |
| **Data Structures** | Series & DataFrame — creation & manipulation |
| **Importing/Exporting** | CSV, Excel, JSON files |
| **Data Inspection** | `.head()`, `.tail()`, `.info()`, `.describe()` |
| **Selection & Indexing** | `.loc`, `.iloc`, Boolean indexing |
| **Data Cleaning** | Missing values, type conversion, renaming columns |
| **Basic Operations** | Filtering, sorting, aggregation, simple statistics |

---

## 🌟 Why Pandas?

- Fast, flexible, and expressive data structures  
- Makes complex data operations simple  
- Integrates well with NumPy, Matplotlib, Seaborn, and Scikit-learn  
- Industry-standard for data preprocessing in data science & ML  

---

## 📂 Folder Structure

```

/Pandas
│── Introtopandas.ipynb     # Main notebook
│── README.md               # Documentation (this file)
└── sample_data/            # Optional dataset files

````

---

## 🛠 Prerequisites

Before starting, ensure you have:

- Python 3.7+  
- Installed libraries:
```bash
pip install pandas numpy jupyter
````

* Basic Python knowledge: lists, dictionaries, loops, functions

---

## ▶ How to Run

```bash
# Clone the repo
git clone https://github.com/vinayakmishra4/DS-ML-COURSE.git

# Navigate to Pandas folder
cd DS-ML-COURSE/Foundation\ of\ Data\ Analysis/Pandas/

# Launch Jupyter Notebook
jupyter notebook
```

Open **Introtopandas.ipynb** and run cells sequentially.

---

## 💡 Example Operations

```python
import pandas as pd

# Load data
df = pd.read_csv("data.csv")

# View first 5 rows
df.head()

# Filter rows where age > 30
df[df["age"] > 30]

# Select specific columns
df[["name", "salary"]]

# Drop missing values
df.dropna()
```

---

## 🔧 Useful Functions

| Category   | Functions                                      |
| ---------- | ---------------------------------------------- |
| Inspect    | `head()`, `tail()`, `info()`, `describe()`     |
| Selection  | `loc`, `iloc`, `at`, `iat`                     |
| Filtering  | Boolean indexing, `query()`                    |
| Cleaning   | `dropna()`, `fillna()`, `rename()`, `astype()` |
| Statistics | `mean()`, `sum()`, `std()`, `value_counts()`   |

---

## 📚 References

* [Pandas Documentation](https://pandas.pydata.org/docs/)
* Python Data Science Handbook — Jake VanderPlas
* [Real Python Pandas Tutorials](https://realpython.com/learning-paths/pandas-data-science/)
* Kaggle Pandas Micro-Course

---

✨ *Happy Data-Wrangling!* 🐼

---