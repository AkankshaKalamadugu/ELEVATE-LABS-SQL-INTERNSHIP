{\rtf1\ansi\ansicpg1252\cocoartf2758
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28600\viewh18000\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf2 \CocoaLigature0 CREATE DATABASE ARK;\
Query OK, 1 row affected (0.03 sec)\
\
USE ARK;\
Database changed\
mysql> CREATE TABLE Students (\
    ->     StudentID INT PRIMARY KEY,\
    ->     Name VARCHAR(100) NOT NULL,\
    ->     Age INT DEFAULT 18,\
    ->     Email VARCHAR(100) UNIQUE,\
    ->     Course VARCHAR(100),\
    ->     Grade VARCHAR(2)\
    -> );\
Query OK, 0 rows affected (0.03 sec)\
\
mysql> INSERT INTO Students (StudentID, Name, Age, Email, Course, Grade)\
    -> VALUES \
    -> (1, 'Akanksha', 20, 'akanksha@example.com', 'AI & ML', 'A'),\
    -> (2, 'Ravi', 18, 'ravi@example.com', 'CSE', 'B'),\
    -> (3, 'Priya', 19, 'priya@example.com', 'IT', 'A'),\
    -> (4, 'Anil', 21, 'anil@example.com', 'ECE', 'C'),\
    -> (5, 'Meena', 22, 'meena@example.com', 'AI & ML', 'B'),\
    -> (6, 'Kiran', 20, 'kiran@example.com', 'CSE', 'A'),\
    -> (7, 'Swathi', 23, 'swathi@example.com', 'IT', 'A');\
Query OK, 7 rows affected (0.01 sec)\
Records: 7  Duplicates: 0  Warnings: 0\
\
mysql> -- 1. Select all columns from the Students table\
mysql> SELECT * FROM Students;\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         2 | Ravi     |   18 | ravi@example.com     | CSE     | B     |\
|         3 | Priya    |   19 | priya@example.com    | IT      | A     |\
|         4 | Anil     |   21 | anil@example.com     | ECE     | C     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
|         6 | Kiran    |   20 | kiran@example.com    | CSE     | A     |\
|         7 | Swathi   |   23 | swathi@example.com   | IT      | A     |\
+-----------+----------+------+----------------------+---------+-------+\
7 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 2. Select only Name and Age of students\
mysql> SELECT Name, Age FROM Students;\
+----------+------+\
| Name     | Age  |\
+----------+------+\
| Akanksha |   20 |\
| Ravi     |   18 |\
| Priya    |   19 |\
| Anil     |   21 |\
| Meena    |   22 |\
| Kiran    |   20 |\
| Swathi   |   23 |\
+----------+------+\
7 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 3. Select students whose Age is greater than 18\
mysql> SELECT * FROM Students\
    -> WHERE Age > 18;\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         3 | Priya    |   19 | priya@example.com    | IT      | A     |\
|         4 | Anil     |   21 | anil@example.com     | ECE     | C     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
|         6 | Kiran    |   20 | kiran@example.com    | CSE     | A     |\
|         7 | Swathi   |   23 | swathi@example.com   | IT      | A     |\
+-----------+----------+------+----------------------+---------+-------+\
6 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 4. Select students who are older than 18 AND have Grade 'A'\
mysql> SELECT * FROM Students\
    -> WHERE Age > 18 AND Grade = 'A';\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         3 | Priya    |   19 | priya@example.com    | IT      | A     |\
|         6 | Kiran    |   20 | kiran@example.com    | CSE     | A     |\
|         7 | Swathi   |   23 | swathi@example.com   | IT      | A     |\
+-----------+----------+------+----------------------+---------+-------+\
4 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 5. Select students with Grade 'A' OR Grade 'B'\
mysql> SELECT * FROM Students\
    -> WHERE Grade = 'A' OR Grade = 'B';\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         2 | Ravi     |   18 | ravi@example.com     | CSE     | B     |\
|         3 | Priya    |   19 | priya@example.com    | IT      | A     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
|         6 | Kiran    |   20 | kiran@example.com    | CSE     | A     |\
|         7 | Swathi   |   23 | swathi@example.com   | IT      | A     |\
+-----------+----------+------+----------------------+---------+-------+\
6 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 6. Find students whose names contain 'sha'\
mysql> SELECT * FROM Students\
    -> WHERE Name LIKE '%sha%';\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
+-----------+----------+------+----------------------+---------+-------+\
1 row in set (0.00 sec)\
\
mysql> \
mysql> -- 7. Get students whose age is between 18 and 22\
mysql> SELECT * FROM Students\
    -> WHERE Age BETWEEN 18 AND 22;\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         2 | Ravi     |   18 | ravi@example.com     | CSE     | B     |\
|         3 | Priya    |   19 | priya@example.com    | IT      | A     |\
|         4 | Anil     |   21 | anil@example.com     | ECE     | C     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
|         6 | Kiran    |   20 | kiran@example.com    | CSE     | A     |\
+-----------+----------+------+----------------------+---------+-------+\
6 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 8. Get students whose Course is either 'AI & ML' or 'CSE'\
mysql> SELECT * FROM Students\
    -> WHERE Course IN ('AI & ML', 'CSE');\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         2 | Ravi     |   18 | ravi@example.com     | CSE     | B     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
|         6 | Kiran    |   20 | kiran@example.com    | CSE     | A     |\
+-----------+----------+------+----------------------+---------+-------+\
4 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 9. Same as above but using '='\
mysql> SELECT * FROM Students\
    -> WHERE Course = 'AI & ML';\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
+-----------+----------+------+----------------------+---------+-------+\
2 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 10. Sort the students by Age in descending order\
mysql> SELECT * FROM Students\
    -> ORDER BY Age DESC;\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         7 | Swathi   |   23 | swathi@example.com   | IT      | A     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
|         4 | Anil     |   21 | anil@example.com     | ECE     | C     |\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         6 | Kiran    |   20 | kiran@example.com    | CSE     | A     |\
|         3 | Priya    |   19 | priya@example.com    | IT      | A     |\
|         2 | Ravi     |   18 | ravi@example.com     | CSE     | B     |\
+-----------+----------+------+----------------------+---------+-------+\
7 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 11. Use aliasing to rename columns in output\
mysql> SELECT Name AS StudentName, Age AS StudentAge FROM Students;\
+-------------+------------+\
| StudentName | StudentAge |\
+-------------+------------+\
| Akanksha    |         20 |\
| Ravi        |         18 |\
| Priya       |         19 |\
| Anil        |         21 |\
| Meena       |         22 |\
| Kiran       |         20 |\
| Swathi      |         23 |\
+-------------+------------+\
7 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 12. Show all distinct grades present in the table\
mysql> SELECT DISTINCT Grade FROM Students;\
+-------+\
| Grade |\
+-------+\
| A     |\
| B     |\
| C     |\
+-------+\
3 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 13. Limit the result to just 5 rows\
mysql> SELECT * FROM Students\
    -> LIMIT 5;\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         2 | Ravi     |   18 | ravi@example.com     | CSE     | B     |\
|         3 | Priya    |   19 | priya@example.com    | IT      | A     |\
|         4 | Anil     |   21 | anil@example.com     | ECE     | C     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
+-----------+----------+------+----------------------+---------+-------+\
5 rows in set (0.00 sec)\
\
mysql> \
mysql> -- 14. Sort by Name in ascending order (default)\
mysql> SELECT * FROM Students\
    -> ORDER BY Name;\
+-----------+----------+------+----------------------+---------+-------+\
| StudentID | Name     | Age  | Email                | Course  | Grade |\
+-----------+----------+------+----------------------+---------+-------+\
|         1 | Akanksha |   20 | akanksha@example.com | AI & ML | A     |\
|         4 | Anil     |   21 | anil@example.com     | ECE     | C     |\
|         6 | Kiran    |   20 | kiran@example.com    | CSE     | A     |\
|         5 | Meena    |   22 | meena@example.com    | AI & ML | B     |\
|         3 | Priya    |   19 | priya@example.com    | IT      | A     |\
|         2 | Ravi     |   18 | ravi@example.com     | CSE     | B     |\
|         7 | Swathi   |   23 | swathi@example.com   | IT      | A     |\
+-----------+----------+------+----------------------+---------+-------+\
7 rows in set (0.00 sec)\
\
mysql> \
}