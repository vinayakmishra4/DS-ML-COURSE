-- ============================================================
-- SQL Transactions Practice Script
-- Author : Vinayak Mishra
-- Description : Practice SQL Transaction Commands
-- ============================================================

-- ============================================================
-- Create Database (Optional)
-- ============================================================

CREATE DATABASE TransactionDB;

USE TransactionDB;

-- ============================================================
-- Create Table
-- ============================================================

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    AccountNumber BIGINT,
    TransactionType VARCHAR(20),
    Amount DECIMAL(10,2),
    Status VARCHAR(20),
    TransactionDate DATE
);

-- ============================================================
-- Insert Sample Data
-- ============================================================

INSERT INTO Transactions VALUES
(101,'Rahul Sharma',1001001,'Deposit',5000.00,'Completed','2026-01-01'),
(102,'Priya Singh',1001002,'Withdrawal',2500.00,'Completed','2026-01-02'),
(103,'Amit Verma',1001003,'Transfer',7000.00,'Pending','2026-01-03'),
(104,'Neha Gupta',1001004,'Deposit',8500.00,'Completed','2026-01-04'),
(105,'Rohit Kumar',1001005,'Withdrawal',3000.00,'Pending','2026-01-05'),
(106,'Sneha Patel',1001006,'Transfer',12000.00,'Completed','2026-01-06'),
(107,'Arjun Mehta',1001007,'Deposit',4000.00,'Completed','2026-01-07'),
(108,'Kiran Yadav',1001008,'Withdrawal',1500.00,'Pending','2026-01-08'),
(109,'Anjali Sharma',1001009,'Transfer',9500.00,'Completed','2026-01-09'),
(110,'Vikas Jain',1001010,'Deposit',6000.00,'Pending','2026-01-10');

-- ============================================================
-- View Table
-- ============================================================

SELECT * FROM Transactions;

-- ============================================================
-- SQL Transaction Commands
-- ============================================================

-- ------------------------------------------------------------
-- 1. BEGIN TRANSACTION
-- ------------------------------------------------------------

BEGIN TRANSACTION;

UPDATE Transactions
SET Amount = Amount + 1000
WHERE TransactionID = 101;

COMMIT;

-- ------------------------------------------------------------
-- 2. COMMIT
-- ------------------------------------------------------------

BEGIN TRANSACTION;

UPDATE Transactions
SET Status = 'Completed'
WHERE TransactionID = 103;

COMMIT;

-- ------------------------------------------------------------
-- 3. ROLLBACK
-- ------------------------------------------------------------

BEGIN TRANSACTION;

DELETE FROM Transactions
WHERE TransactionID = 110;

ROLLBACK;

-- ------------------------------------------------------------
-- 4. SAVEPOINT
-- ------------------------------------------------------------

BEGIN TRANSACTION;

SAVEPOINT SP1;

UPDATE Transactions
SET Amount = Amount + 500
WHERE TransactionID = 104;

COMMIT;

-- ------------------------------------------------------------
-- 5. ROLLBACK TO SAVEPOINT
-- ------------------------------------------------------------

BEGIN TRANSACTION;

SAVEPOINT SP1;

UPDATE Transactions
SET Amount = Amount - 1000
WHERE TransactionID = 106;

ROLLBACK TO SAVEPOINT SP1;

COMMIT;

-- ------------------------------------------------------------
-- 6. RELEASE SAVEPOINT
-- ------------------------------------------------------------

BEGIN TRANSACTION;

SAVEPOINT SP2;

UPDATE Transactions
SET Status = 'Completed'
WHERE TransactionID = 108;

RELEASE SAVEPOINT SP2;

COMMIT;

-- ------------------------------------------------------------
-- 7. Multiple Updates in One Transaction
-- ------------------------------------------------------------

BEGIN TRANSACTION;

UPDATE Transactions
SET Amount = Amount + 2000
WHERE TransactionID = 107;

UPDATE Transactions
SET Amount = Amount - 2000
WHERE TransactionID = 102;

COMMIT;

-- ------------------------------------------------------------
-- 8. Transaction with INSERT
-- ------------------------------------------------------------

BEGIN TRANSACTION;

INSERT INTO Transactions
VALUES
(111,'Riya Kapoor',1001011,'Deposit',4500.00,'Completed','2026-01-11');

COMMIT;

-- ------------------------------------------------------------
-- 9. Transaction with DELETE
-- ------------------------------------------------------------

BEGIN TRANSACTION;

DELETE FROM Transactions
WHERE TransactionID = 105;

COMMIT;

-- ------------------------------------------------------------
-- 10. Bank Transfer Example
-- ------------------------------------------------------------

BEGIN TRANSACTION;

UPDATE Transactions
SET Amount = Amount - 1500
WHERE TransactionID = 101;

UPDATE Transactions
SET Amount = Amount + 1500
WHERE TransactionID = 104;

COMMIT;

-- ============================================================
-- Verify Final Data
-- ============================================================

SELECT * FROM Transactions;

-- ============================================================
-- End of SQL Transaction Practice
-- ============================================================