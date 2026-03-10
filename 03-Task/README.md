# 💻 SQL Developer Internship – Task 3: Basic SELECT Queries

## 👩‍🎓 Student: Kalamadugu Akanksha  
## 🏫 College: Malla Reddy Engineering College for Women  
## 📅 Task: Task 3 - SELECT Queries (Filtering & Projection)

---

## 🎯 Objective:
To practice and demonstrate the use of basic `SELECT` queries in SQL to extract data from a table using:
- SELECT *, specific columns
- WHERE, AND, OR, LIKE, BETWEEN
- IN, =
- ORDER BY (ASC, DESC)
- LIMIT, DISTINCT
- Column aliasing using AS

---

## 🛠 Tools Used:
- MySQL Workbench (you can also use DB Browser for SQLite)

---

## 🗂️ Table Schema Used:

```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT DEFAULT 18,
    Email VARCHAR(100) UNIQUE,
    Course VARCHAR(100),
    Grade VARCHAR(2)
);
