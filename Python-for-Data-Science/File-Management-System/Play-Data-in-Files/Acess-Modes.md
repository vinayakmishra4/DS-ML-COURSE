# 📂 **Python File Access Modes — Quick Guide**

Access modes define what you can do with a file *after* opening it, and where the cursor (file handle) starts for reading or writing.

---

### 1. **Read Only (`'r'`)**

🔹 **Purpose:** Read from file only
🔹 **Cursor Position:** Start of file
🔹 **Behavior:**

* File **must exist**, else raises `IOError`
* Default mode if none specified

---

### 2. **Read and Write (`'r+'`)**

🔹 **Purpose:** Read *and* write
🔹 **Cursor Position:** Start of file
🔹 **Behavior:**

* File **must exist**, else raises `IOError`

---

### 3. **Write Only (`'w'`)**

🔹 **Purpose:** Write only
🔹 **Cursor Position:** Start of file
🔹 **Behavior:**

* **Overwrites** existing file (truncates to zero length)
* **Creates** file if it doesn’t exist

---

### 4. **Write and Read (`'w+'`)**

🔹 **Purpose:** Write *and* read
🔹 **Cursor Position:** Start of file
🔹 **Behavior:**

* **Overwrites** existing file
* **Creates** file if it doesn’t exist

---

### 5. **Append Only (`'a'`)**

🔹 **Purpose:** Write only (append)
🔹 **Cursor Position:** End of file
🔹 **Behavior:**

* **Creates** file if it doesn’t exist
* Writes **always added** to end (preserves existing content)

---

### 6. **Append and Read (`'a+'`)**

🔹 **Purpose:** Append *and* read
🔹 **Cursor Position:** End of file
🔹 **Behavior:**

* **Creates** file if it doesn’t exist
* Writes added at the end; reading possible anywhere

---

**Summary Table:**

| Mode   | Read? | Write? | Overwrite? | Create if Missing? | Cursor Position |
| ------ | ----- | ------ | ---------- | ------------------ | --------------- |
| `'r'`  | ✔️    | ❌      | ❌          | ❌                  | Start           |
| `'r+'` | ✔️    | ✔️     | ❌          | ❌                  | Start           |
| `'w'`  | ❌     | ✔️     | ✔️         | ✔️                 | Start           |
| `'w+'` | ✔️    | ✔️     | ✔️         | ✔️                 | Start           |
| `'a'`  | ❌     | ✔️     | ❌          | ✔️                 | End             |
| `'a+'` | ✔️    | ✔️     | ❌          | ✔️                 | End             |

