# 💻 SQL Developer Internship - Task 2: Data Insertion and Handling Nulls

## ✅ Objective

This task focuses on using DML (Data Manipulation Language) operations to:
- Insert full and partial data into a table
- Handle `NULL` values and `DEFAULT` values
- Perform updates and deletions with `WHERE` clauses
- Use `INSERT INTO ... SELECT ...`
- Understand constraints like `NOT NULL`, `UNIQUE`, `DEFAULT`, and `ON DELETE CASCADE`

---

## 🛠 Tools Used

- MySQL (You can also use DB Fiddle or SQLiteStudio)
- GitHub for submission

---

## 📚 Table Schema

```sql
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INTEGER DEFAULT 18,
    Email VARCHAR(100) UNIQUE,
    Course VARCHAR(50),
    Grade VARCHAR(2)
);

## Screenshots

![insert](https://github.com/user-attachments/assets/20270159-ff10-41c6-b210-e92b3e0ffd89)
![update](https://github.com/user-attachments/assets/19a4ae30-7f50-4331-9533-ec7e38787a26)
![delete](https://github.com/user-attachments/assets/895f25c8-0160-4987-9a31-f3c2cebb780d)

