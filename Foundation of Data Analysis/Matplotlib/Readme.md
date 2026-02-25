# 📊 Introduction to Matplotlib

[![Python](https://img.shields.io/badge/python-3.x-blue?logo=python&logoColor=white)](https://www.python.org/)
[![Matplotlib](https://img.shields.io/badge/matplotlib-3.7.1-orange?logo=matplotlib&logoColor=white)](https://matplotlib.org/)

Welcome to a **hands-on introduction to Matplotlib**, the most widely used Python library for data visualization. This repository is based on the [`IntrotoMatplotlib.ipynb`](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Foundation%20of%20Data%20Analysis/Data%20Anaylsis%20with%20python/Matplotlib/IntrotoMatplotlib.ipynb) notebook.

Matplotlib lets you create **beautiful and customizable visualizations**, from simple line charts to complex figures. Perfect for data analysis, reporting, and presentations.

---

## 📚 Table of Contents

1. [Overview](#overview)
2. [Why Matplotlib?](#why-matplotlib)
3. [Installation](#installation)
4. [Getting Started](#getting-started)
5. [Basic Plot Examples](#basic-plot-examples)
6. [Core Concepts](#core-concepts)
7. [Notebook Contents](#notebook-contents)
8. [Suggested Learning Path](#suggested-learning-path)
9. [Resources & References](#resources--references)
10. [Contributing](#contributing)

---

## 📝 Overview

Matplotlib is a **Python 2D plotting library** that produces publication-quality figures in a variety of formats.  
It is widely used in:

- **Data science & analysis** – quickly visualize trends and distributions.
- **Machine learning** – plot training curves, feature importance, and predictions.
- **Engineering & research** – create graphs for publications and reports.

---

## 🤔 Why Matplotlib?

- Create **line plots, bar charts, scatter plots, histograms, box plots**, and more.
- **Highly customizable**: control labels, titles, colors, line styles, and layout.
- Combine multiple plots using **subplots**.
- Export plots as **PNG, PDF, SVG, etc.**
- Integrates seamlessly with **NumPy, pandas**, and other Python libraries.

---

## ⚙️ Installation

Install via pip:

```bash
pip install matplotlib
````

Or if you use Anaconda:

```bash
conda install matplotlib
```

---

## 🚀 Getting Started

1. Clone this repository:

```bash
git clone https://github.com/vinayakmishra4/DS-ML-COURSE.git
```

2. Navigate to the Matplotlib folder.
3. Launch Jupyter Notebook:

```bash
jupyter notebook
```

4. Open `IntrotoMatplotlib.ipynb` and run cells interactively.

---

## ✨ Basic Plot Examples

### 1. Line Plot

```python
import matplotlib.pyplot as plt

x = [0, 1, 2, 3, 4]
y = [0, 1, 4, 9, 16]

plt.plot(x, y, label="y = x²", color='blue', marker='o')
plt.xlabel("X axis")
plt.ylabel("Y axis")
plt.title("Simple Line Plot")
plt.legend()
plt.grid(True)
plt.show()
```

### 2. Scatter Plot

```python
plt.scatter(x, y, color='red', label="Points")
plt.xlabel("X axis")
plt.ylabel("Y axis")
plt.title("Scatter Plot Example")
plt.legend()
plt.show()
```

*(More examples in the notebook: bar charts, histograms, subplots, customization.)*

---

## 🏗 Core Concepts

* **Figure** – the overall container for plots.
* **Axes** – the area where data is plotted.
* **Axis** – x and y axes of an Axes object.
* **Plot elements** – lines, markers, bars, text, etc.
* **Pyplot interface** – quick plotting with `matplotlib.pyplot`.
* **Object-oriented API** – more control over complex plots.

---

## 📖 Notebook Contents

The notebook covers:

1. Importing Matplotlib and setting up the environment.
2. Basic plots: line, bar, scatter, histogram.
3. Customization: labels, titles, colors, markers, grid.
4. Working with **subplots** and combining multiple plots.
5. Saving plots in different formats.
6. Optional: advanced plots, 3D visualization, and styling.

---

## 🧭 Suggested Learning Path

1. Start with **basic plots**: line, scatter, bar.
2. Learn **customization**: colors, styles, legends, grids.
3. Explore **subplots** to combine plots.
4. Experiment with **advanced plots**: 3D, stack plots, box plots.
5. Apply on **real datasets** using pandas and NumPy.
6. Save and share plots for **reports or dashboards**.

---

## 🔗 Resources & References

* [Matplotlib Official Documentation](https://matplotlib.org/stable/tutorials/introductory/index.html)
* [GeeksforGeeks Matplotlib Tutorial](https://www.geeksforgeeks.org/python-introduction-matplotlib/)
* [DataCamp Matplotlib Guide](https://www.datacamp.com/tutorial/matplotlib-tutorial-python)

---

## 🤝 Contributing

You can contribute by:

* Adding **new plots** (3D, heatmaps, interactive charts).
* Including **real-world datasets** for examples.
* Improving **explanations and documentation**.
* Creating a **gallery of plots** for reference.

---

Made with ❤️ and Python 🐍

---

