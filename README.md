# task3: writing Basic SELECT Queries

When we want retrieve data from various database objects using SELECT command.

--Tables Used
"emp" – Employee details
"dept" – Department details

--SELECT Queries 
"select * from table_name"

--WHERE Clause
SELECT columns FROM table WHERE column = value;
Filters rows using conditions on name and department

--- AND Clause
SELECT columns FROM table WHERE column = value AND LOWER(column) = value;
-----OR Clause
SELECT columns FROM table_name WHERE LOWER(column_name) = 'value' OR LOWER(column_name) = value;
Uses OR to include any of multiple conditions.

------BETWEEN Clause
SELECT * FROM table_name WHERE column_name BETWEEN value AND value;
Filters rows within a range for dates and salaries.

-------LIKE Clause
SELECT * FROM table_name WHERE column_name LIKE '_%';
SELECT * FROM table_name WHERE column_name LIKE '%_';
Performs pattern matching using % and _
-----ORDER BY Clause
SELECT table_columns FROM table ORDER BY column_name;
Sorts results by salary, department, name, hire date, or combination

---This SQL script covers:

Data selection using SELECT, WHERE, AND, OR, IN

Pattern matching with LIKE

Range filtering with BETWEEN

Sorting using ORDER BY

Oracle-style row limiting with ROWNUM
