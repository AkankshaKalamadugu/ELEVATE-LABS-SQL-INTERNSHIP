# 💼 SQL Developer Internship - Task 6: Subqueries and Nested Queries

## 📌 Objective
To practice using subqueries in `SELECT`, `WHERE`, and `FROM` clauses to write nested queries and advanced SQL logic.

## 🛠 Tools Used
- MySQL Workbench

## 🧱 Tables Used
### Customers
| Column        | Type         |
|---------------|--------------|
| CustomerID    | INT (Primary Key) |
| CustomerName  | VARCHAR(100) |
| Country       | VARCHAR(50)  |

### Orders
| Column        | Type         |
|---------------|--------------|
| OrderID       | INT (Primary Key) |
| CustomerID    | INT (Foreign Key) |
| Product       | VARCHAR(100) |
| Amount        | DECIMAL(10,2) |
| OrderDate     | DATE         |

## 📥 Sample Data
```sql
-- Customers
INSERT INTO Customers VALUES
(1, 'Akanksha', 'India'),
(2, 'Ritika', 'USA'),
(3, 'Meghana', 'India'),
(4, 'Sarah', 'UK'),
(5, 'Ayesha', 'Canada');

-- Orders
INSERT INTO Orders VALUES
(101, 1, 'Laptop', 750.00, '2024-06-01'),
(102, 2, 'Tablet', 400.00, '2024-06-02'),
(103, 1, 'Mouse', 50.00, '2024-06-03'),
(104, 3, 'Keyboard', 100.00, '2024-06-04'),
(105, 4, 'Monitor', 250.00, '2024-06-05');

## SQL Queries Performed
1.Subquery in SELECT Clause
2. Subquery in WHERE with IN
3. Correlated Subquery
4. Subquery using EXISTS
5. Subquery in FROM (Derived Table)
