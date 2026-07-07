<div align="center">

# 💾 SQL Transactions

### Master SQL Transactions with ACID Properties, Transaction Control Commands, Savepoints, and Real-World Examples

<p align="center">
  <img src="https://img.shields.io/badge/SQL-Transactions-336791?style=for-the-badge&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/Database-ACID-success?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Level-Beginner%20Friendly-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge" />
</p>

<p>
Learn how SQL transactions work, understand ACID properties, explore transaction control commands, and practice with real-world examples.
</p>

</div>

---

## 📖 Table of Contents

- 📌 Overview
- 🎯 Why Transactions?
- 🔐 ACID Properties
- 🔄 Transaction Lifecycle
- ⚙️ Transaction Control Commands
- 📂 Types of Transactions
- 🌍 Real-World Applications
- 💡 Best Practices
- 📁 Practice SQL File
- 📚 Learning Outcomes

---

# 📌 Overview

An **SQL Transaction** is a sequence of SQL operations executed as **one logical unit of work**.

A transaction guarantees that:

- Every operation succeeds together.
- If one operation fails, every change is undone.
- The database always remains in a valid and consistent state.

---

# 🎯 Why Use SQL Transactions?

Transactions are essential because they help:

✅ Maintain Data Consistency

✅ Prevent Partial Updates

✅ Recover from Errors

✅ Protect Data Integrity

✅ Support Concurrent Users

✅ Ensure Reliable Database Operations

---

# 🔐 ACID Properties

| Property | Meaning |
|-----------|----------|
| ⚛️ **Atomicity** | All operations succeed or none are executed. |
| ✔️ **Consistency** | Keeps the database in a valid state. |
| 🔒 **Isolation** | Multiple transactions do not interfere with each other. |
| 💾 **Durability** | Committed data remains permanent. |

---

# 🔄 Transaction Lifecycle

```text
          Start
            │
            ▼
   BEGIN TRANSACTION
            │
            ▼
 Execute SQL Statements
            │
            ▼
     Any Error Occurred?
       ┌─────────────┐
       │             │
      Yes           No
       │             │
       ▼             ▼
  ROLLBACK       COMMIT
       │             │
       ▼             ▼
 Database Restored  Changes Saved
```

---

# ⚙️ Transaction Control Commands

| Command | Description |
|----------|-------------|
| ▶️ BEGIN TRANSACTION | Starts a new transaction |
| ✅ COMMIT | Permanently saves all changes |
| ↩️ ROLLBACK | Cancels all changes |
| 📍 SAVEPOINT | Creates a checkpoint |
| 🔄 ROLLBACK TO SAVEPOINT | Restores a checkpoint |
| 🗑️ RELEASE SAVEPOINT | Removes a savepoint |

---

# 📂 Types of SQL Transactions

| Type | Description |
|------|-------------|
| 📖 Read Transaction | Retrieves data without modifying it |
| ✍️ Write Transaction | Inserts, updates, or deletes records |
| 🌐 Distributed Transaction | Runs across multiple databases |
| ⚡ Implicit Transaction | Started automatically |
| 🎛️ Explicit Transaction | Controlled manually by the developer |

---

# 🌍 Real-World Applications

🏦 Banking Systems

🛒 E-Commerce Platforms

🎟️ Ticket Booking Systems

🏥 Hospital Management

📦 Inventory Management

💳 Online Payment Systems

📚 Student Management Systems

---

# 💡 Best Practices

- ✔️ Keep transactions short.
- ✔️ Commit as soon as work is complete.
- ✔️ Roll back when errors occur.
- ✔️ Use savepoints in long transactions.
- ✔️ Monitor locks to prevent deadlocks.
- ✔️ Batch large operations for better performance.
- ✔️ Always follow ACID principles.

---

# 📁 Practice SQL File

You can practice all transaction commands using the SQL script available in this repository.

## 🔗 SQL Script

**👉 [Transaction.sql](https://github.com/vinayakmishra4/DS-ML-COURSE/blob/main/SQL/Advancing-Sql/Transcation/Transction.sql)**

The script includes:

- ✅ BEGIN TRANSACTION
- ✅ COMMIT
- ✅ ROLLBACK
- ✅ SAVEPOINT
- ✅ ROLLBACK TO SAVEPOINT
- ✅ RELEASE SAVEPOINT
- ✅ Banking Transaction Example

---

# 📚 Learning Outcomes

After reading this guide, you will be able to:

- Understand SQL Transactions.
- Explain ACID Properties.
- Differentiate transaction control commands.
- Handle transaction failures.
- Use savepoints effectively.
- Build reliable database applications.

---

# 🎯 Quick Revision

| Concept | Summary |
|----------|----------|
| Transaction | A logical unit of work |
| ACID | Reliability principles |
| COMMIT | Save changes |
| ROLLBACK | Undo changes |
| SAVEPOINT | Create checkpoint |
| RELEASE SAVEPOINT | Remove checkpoint |

---

# 🤝 Contributing

Contributions are welcome!

If you have improvements, corrections, or additional examples:

1. Fork the repository.
2. Create a new branch.
3. Commit your changes.
4. Open a Pull Request.

---

# ⭐ Support

If this guide helped you, consider giving the repository a ⭐.

It motivates the creation of more high-quality SQL and Data Science learning resources.

---

<div align="center">

## 🚀 Happy Learning!

**Made with ❤️ by Vinayak Mishra**

⭐ **Don't forget to Star the Repository!**

</div>