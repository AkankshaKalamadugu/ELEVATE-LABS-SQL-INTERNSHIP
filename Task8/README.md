# 💻 SQL Developer Internship - Task 8: Stored Procedures and Functions

## 👩‍💻 Submitted by: KALAMADUGU Akanksha
**B.Tech 3rd Year - AIML Department**  
Malla Reddy Engineering College for Women

---

## 📌 Objective
The goal of this task is to understand and implement reusable SQL blocks using **Stored Procedures** and **Functions** in MySQL Workbench.

---

## 🧰 Tools Used
- MySQL Workbench 8.0+
- SQL Script (.sql)
- GitHub for submission

---

## 📁 Files Included
- `task8_stored_routines.sql.rtf` – Full SQL code including table creation, procedure, function, and calls
- `README.md` – This file (task explanation and answers)

---

## 🗂️ Task Overview

### ✔️ 1. Table: `employees`
Created an `employees` table with sample data to demonstrate the logic.

### ✔️ 2. Stored Procedure: `IncreaseSalaryByDept`
Increases salary by a given percentage for a specified department.

#### ✅ Syntax:
```sql
CALL IncreaseSalaryByDept('AI/ML', 10);
