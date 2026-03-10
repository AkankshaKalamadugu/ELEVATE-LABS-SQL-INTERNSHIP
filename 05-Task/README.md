# 🔗 SQL Developer Internship - Task 5: SQL Joins

## 📌 Objective
The goal of this task is to demonstrate the use of different SQL JOIN operations — INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN — by combining data from two related tables.

---

## 🛠 Tools Used
- MySQL Workbench

---

## 🗃️ Tables Used

### 🧑 Customers Table
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
 --AND SQL JOIN QUERIES
