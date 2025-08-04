# 🧠 How to Install Jupyter Notebook on macOS

Run data science projects or Python notebooks locally with ease using this step-by-step macOS installation guide.

---

## ✅ Method 1: Install Jupyter Notebook via `pip` (Recommended)

### 🐍 Step 1: Install Python 3

Download and install the latest version of **Python 3**:
👉 [https://www.python.org/downloads/](https://www.python.org/downloads/)

---

### 🔍 Step 2: Verify Python & pip

Open your **Terminal** and run:

```bash
python3 --version
pip3 --version
```

> ✅ You should see the installed versions of Python 3 and pip3.

---

### ⬆️ Step 3: Upgrade pip

Make sure pip is up to date to avoid issues:

```bash
pip3 install --upgrade pip
```

---

### 📦 Step 4: Install Jupyter Notebook

Now install Jupyter using pip:

```bash
pip3 install jupyter
```

That’s it! You’ve installed Jupyter via pip.

---

## ⚙️ Method 2: Install Jupyter from Source (`setup.py`)

> 🔧 Advanced users only. Requires **Xcode Command Line Tools**.
> To install them, run:

```bash
xcode-select --install
```

---

### 📁 Step 1: Download Source Package

Download the latest Jupyter Notebook source:
👉 [https://pypi.org/project/jupyter/](https://pypi.org/project/jupyter/)

---

### 📦 Step 2: Extract the Package

Navigate to the downloaded `.tar.gz` file and extract it:

```bash
tar -xzvf jupyter.tar.gz
```

---

### 🚀 Step 3: Install from Source

Move into the folder and install:

```bash
cd jupyter-1.0.0
python3 setup.py install
```

---

## ✅ Launch & Verify Installation

Start Jupyter Notebook in Terminal:

```bash
jupyter notebook
```

If your browser opens with the Jupyter interface, you're all set! 🎉
If not, check for errors or try reinstalling.

---

## 💡 Tips & Extras

* 📁 **Use a virtual environment** for each project to avoid version conflicts.
* 🧪 **Try JupyterLab**, the next-gen interface for Jupyter:

```bash
pip3 install jupyterlab
```

Launch it using:

```bash
jupyter lab
```

---

## 📚 Useful Resources

* 🔗 [Official Jupyter Website](https://jupyter.org/)
* 🔗 [Download Python](https://www.python.org/downloads/)
* 🔗 [JupyterLab vs Notebook](https://jupyterlab.readthedocs.io/)