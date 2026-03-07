# Task 7: Creating Views (SQL Developer Internship)

## 📌 Objective
Understand how to use `CREATE VIEW` to simplify complex queries, abstract data, and enhance security.

## 🧪 Views Created

### 1. `view_aiml_employees`
Shows employees only from the "AI/ML" department.

### 2. `view_high_salary`
Lists employees earning more than ₹60,000.

### 3. `view_employee_info`
Displays employee info with renamed columns for abstraction (ID, Name, Dept).

---

## ✅ Usage Examples

```sql
-- Show AI/ML Employees
SELECT * FROM view_aiml_employees;

