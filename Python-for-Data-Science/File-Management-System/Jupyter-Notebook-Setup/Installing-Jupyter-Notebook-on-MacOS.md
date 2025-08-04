# Installing Jupyter Notebook on macOS

This guide provides two methods to install Jupyter Notebook on macOS.

---

## ✅ Method 1: Using `pip` to Install Jupyter Notebook

### Step 1: Install the Latest Python 3

Download and install the latest version of Python 3 from the official website:  
👉 [https://www.python.org/downloads/](https://www.python.org/downloads/)

### Step 2: Check if `python3` and `pip3` are Installed

Open Terminal and run:

```bash
python3 --version
pip3 --version
```

### Step 3: Upgrade `pip` (Recommended)

To avoid installation issues, upgrade `pip`:

```bash
pip3 install --upgrade pip
```

### Step 4: Install Jupyter Notebook

Use `pip3` to install Jupyter:

```bash
pip3 install jupyter
```

---

## ⚙️ Method 2: Using `setup.py` to Install Jupyter Notebook

> **Note**: You must have Xcode Command Line Tools installed. Run `xcode-select --install` if unsure.

### Step 1: Download the Source Package

Download the latest Jupyter Notebook source package for Python 3 from:  
👉 [https://pypi.org/project/jupyter/](https://pypi.org/project/jupyter/)

### Step 2: Extract the Package

Use the terminal to extract the package:

```bash
tar -xzvf jupyter.tar.gz
```

### Step 3: Install from Source

Navigate into the extracted directory and install:

```bash
cd jupyter-1.0.0
python3 setup.py install
```

---

## ✅ Verifying Jupyter Notebook Installation

Start Jupyter Notebook:

```bash
jupyter notebook
```

If the Jupyter interface opens in your web browser, the installation was successful.  
If you encounter import/module errors, the installation did not complete correctly.

---

## 📌 Notes

* Use a virtual environment for project-specific installations to avoid dependency conflicts.
* JupyterLab is a more modern alternative to Jupyter Notebook and can be installed via:

```bash
pip3 install jupyterlab
```

---

## 📚 Resources

* [Official Jupyter Website](https://jupyter.org/)
* [Python Downloads](https://www.python.org/downloads/)
