# 📂 Python File Management & Text Processing

This module is a part of the **DS-ML Course** and introduces file handling in Python—from opening and reading files to performing basic text processing and word frequency analysis.

---

## 📌 Table of Contents

* [🔗 Source Files](#-source-files)
* [📁 File Access Modes](#-file-access-modes)
* [📖 Reading Data from Files](#-reading-data-from-files)
* [🧠 Text Processing in Python](#-text-processing-in-python)
* [💡 Key Takeaways](#-key-takeaways)
* [🚀 Real-World Use Cases](#-real-world-use-cases)

---

## 🔗 Source Files

1. 📄 **Access Modes Explanation**
   [Acess-Modes.md](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Acess-Modes.md)

2. 📘 **Reading File Content**
   [Read-Data.ipynb](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Read-Data.ipynb)

3. 📘 **Text Processing Notebook**
   [Text-processing.ipynb](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Text-processing.ipynb)

---

## 📁 File Access Modes

| Mode    | Description                                                                |
| ------- | -------------------------------------------------------------------------- |
| `'r'`   | Read-only mode. File must exist.                                           |
| `'w'`   | Write-only mode. Overwrites file if it exists or creates a new one.        |
| `'a'`   | Append-only mode. Creates a new file if it doesn’t exist.                  |
| `'r+'`  | Read and write mode. File must exist.                                      |
| `'w+'`  | Write and read mode. Overwrites existing file or creates a new one.        |
| `'a+'`  | Append and read mode. Reads and appends at the end; creates if not exists. |
| `'rb'`  | Read-only in binary mode. File must exist.                                 |
| `'wb'`  | Write-only in binary mode. Creates or overwrites file.                     |
| `'ab'`  | Append-only in binary mode. Creates file if it doesn't exist.              |
| `'rb+'` | Read and write in binary mode. File must exist.                            |
| `'wb+'` | Write and read in binary mode. Creates or overwrites file.                 |
| `'ab+'` | Append and read in binary mode. Creates file if it doesn’t exist.          |

📌 From: [Access-Modes](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Acess-Modes.md)

---

## 📖 Reading Data from Files

Python offers multiple methods to read text files—such as `.read()`, `.readline()`, and loop iteration—making it easy to handle both small and large datasets efficiently.

| Method          | Description                                             |
| --------------- | ------------------------------------------------------- |
| `read()`        | Reads the entire file content as a single string.       |
| `readline()`    | Reads the file one line at a time.                      |
| `readlines()`   | Returns a list containing each line as a string.        |
| `for line in f` | Iterates over each line in the file (memory-efficient). |

📌 From: [Read-Data](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Read-Data.ipynb)

---

## 🧠 Text Processing in Python

Text processing is the foundational step in analyzing textual data. It typically involves reading text from a file, cleaning it, and extracting useful patterns or metrics like word frequencies.

### Basic Example

```python
# Step 1: Read text from a file
with open("file.txt", "r") as f:
    text = f.read().lower()  # Normalize case

# Step 2: Split into words
words = text.split()

# Step 3: Count word frequencies
freq = {}
for word in words:
    freq[word] = freq.get(word, 0) + 1

# Step 4: Sort by frequency
sorted_freq = sorted(freq.items(), key=lambda x: x[1], reverse=True)

# Step 5: Print results
for word, count in sorted_freq:
    print(f"{word}: {count}")
```

📌 From: [Text-processing](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Text-processing.ipynb)

---

## 💡 Key Takeaways

* Use the correct file mode (`'r'`, `'w'`, `'a'`, etc.) based on the task.
* Always prefer using `with open(...)` to ensure files are closed properly.
* Use `.read()`, `.readline()`, or iterate line-by-line depending on the file size.
* Normalize text (e.g., lowercase) for consistent processing.
* Use dictionaries to efficiently count word frequencies.

---

## 🚀 Real-World Use Cases

* 📊 Analyze server or application logs to detect anomalies.
* 📚 Summarize documents or articles based on word frequency.
* 🔍 Build simple search features for local text files.
* 🧠 Perform text preprocessing for machine learning models.
* 📝 Automate daily reporting from structured text files.

---

Let me know if you want me to help with anything else!

# 📂 Python File Management & Text Processing

Welcome to the **Python File Management & Text Processing** module, part of the **DS-ML Course**. This module introduces essential file handling techniques and text processing strategies in Python — from reading files to analyzing word frequency.

---

## 📌 Table of Contents

- [🔗 Source Files](#-source-files)
- [📁 File Access Modes](#-file-access-modes)
- [📖 Reading Data from Files](#-reading-data-from-files)
- [🧠 Text Processing in Python](#-text-processing-in-python)
- [💡 Key Takeaways](#-key-takeaways)
- [🚀 Real-World Use Cases](#-real-world-use-cases)

---

## 🔗 Source Files

Here are the supporting files and notebooks:

1. 📄 [**Access Modes Explanation**](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Acess-Modes.md)
2. 📘 [**Reading File Content**](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Read-Data.ipynb)
3. 📘 [**Text Processing Notebook**](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Text-processing.ipynb)

---

## 📁 File Access Modes

| Mode    | Description                                                                |
| ------- | -------------------------------------------------------------------------- |
| `'r'`   | Read-only mode. File must exist.                                           |
| `'w'`   | Write-only mode. Overwrites if exists, or creates a new file.              |
| `'a'`   | Append-only mode. Creates new file if not present.                         |
| `'r+'`  | Read and write mode. File must exist.                                      |
| `'w+'`  | Write and read mode. Overwrites or creates new file.                       |
| `'a+'`  | Append and read mode. Creates if not present.                              |
| `'rb'`  | Read-only in binary mode. File must exist.                                 |
| `'wb'`  | Write-only in binary mode. Creates or overwrites file.                     |
| `'ab'`  | Append-only in binary mode. Creates if file doesn’t exist.                 |
| `'rb+'` | Read and write in binary mode. File must exist.                            |
| `'wb+'` | Write and read in binary mode. Overwrites or creates new file.             |
| `'ab+'` | Append and read in binary mode. Creates if not present.                    |

📌 Source: [Access-Modes.md](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Acess-Modes.md)

---

## 📖 Reading Data from Files

Python offers various methods to read data efficiently from text files:

| Method          | Description                                                |
| --------------- | ---------------------------------------------------------- |
| `.read()`       | Reads the entire file content as a single string.          |
| `.readline()`   | Reads one line at a time (useful for line-by-line parsing).|
| `.readlines()`  | Reads all lines into a list.                               |
| `for line in f` | Iterates line-by-line (most memory-efficient).             |

📌 Source: [Read-Data.ipynb](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Read-Data.ipynb)

---

## 🧠 Text Processing in Python

Text processing is crucial for analyzing and cleaning textual data.

### 🔤 Basic Example

```python
# Step 1: Read text from a file
with open("file.txt", "r") as f:
    text = f.read().lower()  # Normalize case

# Step 2: Tokenize
words = text.split()

# Step 3: Count frequencies
freq = {}
for word in words:
    freq[word] = freq.get(word, 0) + 1

# Step 4: Sort by frequency
sorted_freq = sorted(freq.items(), key=lambda x: x[1], reverse=True)

# Step 5: Display
for word, count in sorted_freq:
    print(f"{word}: {count}")
```

📌 Source: [Text-processing.ipynb](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/Python-for-Data-Science/File-Management-System/Play-Data-in-Files/Text-processing.ipynb)

---

## 💡 Key Takeaways

- Choose the right file mode for your task (`'r'`, `'w'`, `'a'`, etc.).
- Use `with open(...)` to automatically manage file closure.
- Optimize reading based on file size: `.read()` vs `.readline()` vs iteration.
- Normalize and tokenize text before analysis.
- Use dictionaries for efficient frequency counting.

---

## 🚀 Real-World Use Cases

- 📊 Analyzing log files for anomalies
- 📚 Summarizing documents using word frequency
- 🔍 Implementing search features in text-based systems
- 🧠 Preprocessing textual data for ML models
- 📝 Generating automated reports from raw text files
