{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf2 \CocoaLigature0 mysql> CREATE DATABASE TASK7;\
Query OK, 1 row affected (0.05 sec)\
\
mysql> USE TASK7;\
Database changed\
mysql> CREATE TABLE employees (\
    ->     emp_id INTEGER PRIMARY KEY,\
    ->     emp_name TEXT,\
    ->     department TEXT,\
    ->     salary INTEGER,\
    ->     join_date DATE\
    -> );\
Query OK, 0 rows affected (0.03 sec)\
\
mysql> INSERT INTO employees VALUES\
    -> (1, 'Akanksha', 'AI/ML', 70000, '2022-06-01'),\
    -> (2, 'Ravi', 'HR', 50000, '2021-01-15'),\
    -> (3, 'Sneha', 'Finance', 60000, '2020-03-20'),\
    -> (4, 'Arjun', 'AI/ML', 80000, '2023-02-10');\
Query OK, 4 rows affected (0.02 sec)\
Records: 4  Duplicates: 0  Warnings: 0\
\
mysql> CREATE VIEW view_aiml_employees AS\
    -> SELECT emp_id, emp_name, salary\
    -> FROM employees\
    -> WHERE department = 'AI/ML';\
Query OK, 0 rows affected (0.01 sec)\
\
mysql> CREATE VIEW view_high_salary AS\
    -> SELECT emp_id, emp_name, department, salary\
    -> FROM employees\
    -> WHERE salary > 60000;\
Query OK, 0 rows affected (0.01 sec)\
\
mysql> CREATE VIEW view_employee_info AS\
    -> SELECT emp_id AS ID, emp_name AS Name, department AS Dept\
    -> FROM employees;\
Query OK, 0 rows affected (0.01 sec)\
\
mysql> SELECT * FROM view_aiml_employees;\
+--------+----------+--------+\
| emp_id | emp_name | salary |\
+--------+----------+--------+\
|      1 | Akanksha |  70000 |\
|      4 | Arjun    |  80000 |\
+--------+----------+--------+\
2 rows in set (0.00 sec)\
}