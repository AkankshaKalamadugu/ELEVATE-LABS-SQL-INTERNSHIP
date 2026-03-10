# 💰 Personal Finance Tracker (SQL Project)

## 📌 Objective
Build a simple and efficient SQL-based personal finance tracker to manage income, expenses, and budget analytics.

## 🧰 Tools Used
- MySQL (compatible with SQLite)
- SQL queries, views, and data export tools
- MySQL Workbench / Terminal

## 🗂️ Database Schema

- **Users**: Stores user info
- **Categories**: Predefined list of expense types
- **Income**: Tracks income entries for each user
- **Expenses**: Records expenses with category and date

### 📋 Tables

| Table        | Description                  |
|--------------|------------------------------|
| `Users`      | User ID, Name, Email         |
| `Categories` | Category ID, Category Name   |
| `Income`     | Income ID, User ID, Amount, Source, Date |
| `Expenses`   | Expense ID, User ID, Amount, Category ID, Description, Date |

## 💾 Features & Queries

### ✅ Schema Creation
- Define tables with primary and foreign keys
- Use `AUTO_INCREMENT` and appropriate data types

### ✅ Dummy Data Insertion
- Insert sample users, income, categories, and expenses

### ✅ Monthly Expense Summary
SELECT user_id, DATE_FORMAT(date, '%Y-%m') AS month, SUM(amount) AS total_expenses
FROM Expenses
GROUP BY user_id, month;

###
📤 Export Reports
Run monthly summary queries in MySQL Workbench or CLI and export as .csv for sharing/reporting.

📈 Future Enhancements
Web or mobile interface for input

Integration with budgeting APIs

Charts for visual representation

👩‍💻 Author
Kalamadugu Akanksha
B.Tech – Artificial Intelligence & Machine Learning
Malla Reddy Engineering College for Women
Skills: Python, Java, SQL, DBMS, Machine Learning

