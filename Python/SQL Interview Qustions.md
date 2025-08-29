# 100+ Essential SQL Interview Questions for Job Preparation

This comprehensive compilation features over 100 SQL interview questions sourced from real interviews at top companies, designed to help you prepare effectively for your next SQL interview. The questions are organized by difficulty level and cover all essential SQL concepts from basic syntax to advanced optimization techniques.

## Basic SQL Interview Questions (1-35)

### Database Fundamentals
1. What is SQL and what does it stand for?[1][2]
2. What is a database?[3]
3. What is the difference between SQL and NoSQL databases?[4][5]
4. What is the difference between DBMS and RDBMS?[2][6]
5. What are the main types of SQL commands?[7][3]
6. What are DDL and DML commands? Give examples of each.[6]
7. What is a table and a field in SQL?[4]
8. What are the different SQL data types you know?[8]

### Keys and Constraints
9. What is a primary key?[7][3]
10. What is a foreign key?[3][7]
11. What is a unique key and how is it different from a primary key?[5]
12. What are SQL constraints? Give examples of different constraint types.[1][4]
13. What is the difference between a primary key and a unique key?[3]
14. What are database relationships? Explain different types.[1]

### Basic SQL Operations
15. Describe the SELECT statement and its basic syntax.[4]
16. What is the WHERE clause and how do you use it?[9][5]
17. What is the difference between DELETE, DROP, and TRUNCATE?[6][7]
18. What is the difference between DELETE and TRUNCATE commands?[5]
19. How do you insert data into a table?[10]
20. How do you update data in a table?[5]
21. What are NULL values in SQL? How do you handle them?[11][12]
22. Are NULL values equal to zero or blank spaces?[11]
23. What is pattern matching in SQL?[10]
24. How do you create an empty table with the same structure as another table?[10]

### Basic Query Operations
25. What are aggregate functions in SQL? Give 5 examples.[1]
26. What is the GROUP BY clause?[6]
27. What is the ORDER BY clause?[6]
28. What is the difference between GROUP BY and ORDER BY?[6]
29. What is the difference between WHERE and HAVING clauses?[7][4]
30. What is the UNION operator?[7]
31. What is the difference between UNION and UNION ALL?[12][7]
32. What are scalar functions? Give examples.[13]
33. What are character manipulation functions?[13]
34. What is a query in SQL?[10]
35. How do you find unique values from a field?[10]

## Intermediate SQL Interview Questions (36-70)

### Joins and Relationships
36. What is a JOIN in SQL? Explain different types of joins.[4][1][7]
37. What is the difference between INNER JOIN and LEFT JOIN?[14]
38. Explain INNER JOIN with an example.[8]
39. What is a RIGHT JOIN?[7]
40. What is a FULL OUTER JOIN?[12]
41. What is a CROSS JOIN?[7]
42. When would you use different types of joins?[4]

### Subqueries and Advanced Queries
43. What is a subquery in SQL? Give an example.[1][7]
44. What are correlated subqueries?[5]
45. What is the difference between a correlated subquery and a nested subquery?[12]
46. What is the difference between IN and EXISTS?[5]
47. How do you find duplicates in a table?[14][7]
48. Write a query to find the second highest salary from an employee table.[1][7]
49. How do you find the Nth highest salary without using TOP or LIMIT?[1]

### Views and Indexes
50. What is a view in SQL? What are the benefits of using views?[1]
51. What are SQL indexes and why are they important?[1]
52. What is the difference between clustered and non-clustered indexes?[6][1]
53. Explain different types of indexes.[11]
54. How do database indexes impact INSERT/UPDATE and SELECT queries?[1]

### Normalization and Database Design
55. What is normalization in database design? What are its advantages?[4][1]
56. What are the different normal forms?[7]
57. What is denormalization? When would you use it?[5]
58. What is the difference between normalization and denormalization?[5]

### Functions and Procedures
59. What are the types of functions in SQL?[13]
60. What is a stored procedure?[7]
61. How do you create a stored procedure in SQL?[5]
62. What are triggers in SQL? When would you use them?[12]
63. What are the different types of triggers?[12]

### Data Types and Constraints
64. What are the different constraint types in SQL?[3]
65. How do you add constraints to existing tables?[1]
66. What is referential integrity?[3]
67. What are check constraints?[13]
68. What is a composite key?[3]

### Transaction Management
69. What is a transaction in SQL?[5][7]
70. What are ACID properties in SQL?[13][7][5]

## Advanced SQL Interview Questions (71-100+)

### Advanced Query Techniques
71. What are Common Table Expressions (CTEs)? When would you use them?[13][7][1]
72. What are window functions in SQL?[12][7]
73. What are recursive queries and how do they work?[15]
74. What is the MERGE statement in SQL?[12]
75. What are analytical functions?[13]
76. Explain the RANK(), DENSE_RANK(), and ROW_NUMBER() functions.[7]
77. What is the PARTITION BY clause?[7]

### Performance and Optimization
78. How can you optimize slow SQL query performance?[1]
79. What are query execution plans?[8]
80. How do you analyze query performance?[8]
81. What are database cursors? When would you use them?[1]
82. How can you improve the performance of resource-intensive database queries?[1]
83. What is query optimization?[13]
84. What are query hints?[8]

### Advanced Database Concepts
85. What are materialized views and their benefits?[12]
86. What is database partitioning? When should it be used?[12][1]
87. What is database replication? Explain different types.[1]
88. What are temporal tables and how are they used for historical data tracking?[12]
89. What are different isolation levels in SQL transactions?[1]
90. What is a deadlock in SQL and how do you prevent it?[5]

### Security and Best Practices
91. What is SQL injection? How can you prevent SQL injection attacks?[12][1]
92. What are security best practices in SQL server management?[8]
93. How do you handle error handling in SQL?[5]
94. What are prepared statements?[12]

### Big Data and Integration
95. How can you handle Big Data challenges with SQL Server?[1]
96. How can you connect SQL Server with other data platforms like Hadoop and Spark?[1]
97. When should you use NoSQL databases over traditional RDBMS?[1]

### Specific Query Challenges
98. Write a query to find the top 5 customers with the highest total order amounts.[12]
99. Write a query to find the average salary for each department, excluding employees above a threshold.[12]
100. Write a query to find the difference in days between order date and ship date.[12]
101. Write a query to retrieve employees who earn more than the average salary.[3]
102. Write a query to fetch duplicate values from a column.[3]
103. How do you copy the structure of an existing table without copying data?[1]
104. Write a query to find managers for each employee, even if no manager is assigned.[12]

## Scenario-Based and Problem-Solving Questions (105-115)

105. How would you handle corrupt data in a critical production table?[8]
106. How would you approach optimizing a slow-running query in a high-traffic database?[8]
107. Describe your approach to diagnosing performance issues in complex SQL systems.[8]
108. How would you design a high-availability solution for SQL Server?[8]
109. Explain how you would implement a disaster recovery plan.[8]
110. How do you handle concurrency issues in database applications?[8]
111. What steps would you take to troubleshoot a database connection issue?[8]
112. How would you migrate data from one database system to another?[8]
113. Describe your approach to database capacity planning.[8]
114. How would you handle database backup and recovery strategies?[8]
115. What considerations are important when designing database schemas for scalability?[8]

## Conclusion

This comprehensive list of 115+ SQL interview questions covers all essential topics from basic database concepts to advanced optimization techniques. The questions are sourced from real interviews at major technology companies and are designed to test both theoretical knowledge and practical problem-solving abilities. Regular practice with these questions, combined with hands-on experience writing SQL queries, will significantly improve your interview performance and help you demonstrate your SQL expertise to potential employers.

[1](https://www.ccslearningacademy.com/top-sql-interview-questions-answers/)
[2](https://myinterviewpractice.com/industries-details/information-technology/sql-developer-interview-preparation/)
[3](https://www.geeksforgeeks.org/sql/sql-interview-questions/)
[4](https://www.simplilearn.com/top-sql-interview-questions-and-answers-article)
[5](https://www.youtube.com/watch?v=yPasq39n8fY)
[6](https://www.youtube.com/watch?v=oX5Y26O5dBE)
[7](https://www.linkedin.com/pulse/top-100-sql-interview-questions-answers-2025-paras-grover-hzqmf)
[8](https://codesignal.com/blog/interview-prep/28-sql-interview-questions-and-answers-from-beginner-to-senior-level/)
[9](https://roadmap.sh/questions/sql)
[10](https://www.interviewbit.com/sql-interview-questions/)
[11](https://www.geeksforgeeks.org/interview-experiences/advanced-sql-interview-questions/)
[12](https://upesonline.ac.in/blog/advanced-sql-interview-questions)
[13](https://www.projectpro.io/article/sql-interview-questions-and-answers/1133)
[14](https://roadmap.sh/questions/sql-queries)
[15](https://datalemur.com/blog/advanced-sql-interview-questions)
[16](https://www.youtube.com/watch?v=nIbsOKG36qk)
[17](https://zerotomastery.io/blog/sql-interview-questions/)
[18](https://www.geeksforgeeks.org/sql/sql-query-interview-questions/)
[19](https://datalemur.com/questions)


# Complete Guide: 115+ SQL Interview Questions with Detailed Answers

This comprehensive guide provides detailed answers to over 115 SQL interview questions, organized by difficulty level and topic area. The questions and answers are designed specifically for interview preparation, covering everything from fundamental database concepts to advanced optimization techniques that are commonly tested in technical interviews at major technology companies.


### Database Fundamentals (Questions 1-8)

**1. What is SQL and what does it stand for?**

SQL stands for Structured Query Language, a standardized programming language specifically designed for managing and manipulating relational databases. It serves as the primary interface between users and relational database management systems (RDBMS), enabling operations such as data retrieval, insertion, modification, and deletion. SQL is declarative, meaning you specify what you want rather than how to get it, making it accessible to both technical and non-technical users. The language includes commands for database schema definition, data manipulation, access control, and transaction management. SQL has become the industry standard, supported by virtually all major database systems including MySQL, PostgreSQL, Oracle, SQL Server, and SQLite.[1]

**2. What is a database?**

A database is a structured collection of data that is organized, stored, and managed electronically to facilitate efficient access, retrieval, and manipulation. Modern databases typically organize information into tables consisting of rows (records) and columns (fields), allowing for systematic data storage and retrieval. Databases serve as the foundation for applications ranging from simple personal projects to complex enterprise systems. They provide mechanisms for data integrity, security, concurrent access, and backup recovery. Database systems include both the data itself and the Database Management System (DBMS) software that controls access and operations.[2]

**3. What is the difference between SQL and NoSQL databases?**

SQL databases are relational databases that use structured schemas with predefined tables, rows, and columns, while NoSQL databases are non-relational and can store unstructured or semi-structured data. SQL databases enforce ACID properties (Atomicity, Consistency, Isolation, Durability) and use SQL for data manipulation. They excel in scenarios requiring complex relationships and transactions. NoSQL databases prioritize scalability and flexibility, supporting document, key-value, column-family, or graph data models. SQL databases are ideal for applications requiring strict data consistency and complex queries, while NoSQL databases suit applications needing rapid scaling and handling diverse data types.[3]

**4. What is the difference between DBMS and RDBMS?**

A DBMS (Database Management System) is software that provides an interface for users to store, retrieve, and manage data in databases, but doesn't necessarily enforce relationships between data entities. An RDBMS (Relational Database Management System) is a specialized type of DBMS that organizes data into tables with relationships defined through keys. RDBMS systems enforce referential integrity, support SQL, and maintain ACID properties. While a DBMS might store data in files or simple structures, an RDBMS specifically implements the relational model with normalized tables, foreign key constraints, and complex query capabilities.[2]

**5. What are the main types of SQL commands?**

SQL commands are categorized into four primary types based on their functionality:[1][2]

- **DDL (Data Definition Language)**: Commands that define database structure and schema, including CREATE (create objects), ALTER (modify objects), DROP (delete objects), and TRUNCATE (remove all data)
- **DML (Data Manipulation Language)**: Commands for manipulating data within tables, including SELECT (retrieve data), INSERT (add data), UPDATE (modify data), and DELETE (remove data)
- **DCL (Data Control Language)**: Commands for managing user permissions and access control, including GRANT (give permissions) and REVOKE (remove permissions)
- **TCL (Transaction Control Language)**: Commands for managing database transactions, including COMMIT (save changes), ROLLBACK (undo changes), and SAVEPOINT (create transaction checkpoints)

**6. What are DDL and DML commands? Give examples of each.**

DDL (Data Definition Language) commands manage database structure and schema:[1]
```sql
-- Create a table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Modify table structure
ALTER TABLE employees ADD COLUMN department VARCHAR(30);

-- Remove table
DROP TABLE employees;
```

DML (Data Manipulation Language) commands handle data within tables:
```sql
-- Insert data
INSERT INTO employees (id, name, salary) VALUES (1, 'John Doe', 50000);

-- Retrieve data
SELECT * FROM employees WHERE salary > 40000;

-- Update data
UPDATE employees SET salary = 55000 WHERE id = 1;

-- Delete data
DELETE FROM employees WHERE id = 1;
```

**7. What is a table and a field in SQL?**

A table is a structured collection of related data organized in rows and columns within a database. Tables represent entities (such as customers, orders, or products) and serve as the primary storage unit in relational databases. Each table has a unique name and contains records (rows) that represent individual instances of the entity.[1]

A field (also called a column or attribute) is a vertical component of a table that represents a specific characteristic or property of the entity. Fields have defined data types, constraints, and properties. For example, in an "employees" table, fields might include employee_id, first_name, last_name, hire_date, and salary. Fields enforce data consistency through type checking and constraints.[1]

**8. What are the different SQL data types you know?**

SQL supports various data types categorized by the kind of data they store:[2]

**Numeric Types:**
- INT/INTEGER: Whole numbers
- DECIMAL/NUMERIC: Fixed-point numbers with specified precision
- FLOAT/REAL: Floating-point numbers
- DOUBLE: Double-precision floating-point numbers

**Character/String Types:**
- CHAR: Fixed-length character strings
- VARCHAR: Variable-length character strings
- TEXT: Large text data

**Date and Time Types:**
- DATE: Date values (YYYY-MM-DD)
- TIME: Time values (HH:MM:SS)
- DATETIME/TIMESTAMP: Combined date and time

**Boolean and Binary:**
- BOOLEAN: True/false values
- BLOB: Binary large objects
- VARBINARY: Variable-length binary data

### Keys and Constraints (Questions 9-14)

**9. What is a primary key?**

A primary key is a column or combination of columns that uniquely identifies each row in a table. Primary keys enforce entity integrity by ensuring no duplicate records exist. Key characteristics include: uniqueness (no two rows can have the same primary key value), non-null constraint (primary key values cannot be NULL), immutability (values should not change once assigned), and automatic indexing (most databases automatically create an index on primary keys for performance). Each table can have only one primary key, which serves as the default reference point for foreign keys in other tables.[4][1]

**10. What is a foreign key?**

A foreign key is a column or set of columns that creates a link between data in two tables by referencing the primary key of another table. Foreign keys enforce referential integrity, ensuring that relationships between tables remain consistent. They prevent actions that would destroy links between tables and ensure that foreign key values either match a valid primary key in the referenced table or are NULL. Foreign keys enable the creation of normalized database designs and support complex queries through JOIN operations.[4][1]

**11. What is a unique key and how is it different from a primary key?**

A unique key ensures that all values in a column or combination of columns are distinct, similar to a primary key, but with key differences:[1]

**Similarities:**
- Both enforce uniqueness
- Both automatically create indexes
- Both can be referenced by foreign keys

**Differences:**
- Primary key cannot contain NULL values; unique keys can accept one NULL value (in most databases)
- A table can have only one primary key but multiple unique keys
- Primary keys are typically used for row identification; unique keys enforce business rules
- Primary keys are often used in replication and clustering scenarios

**12. What are SQL constraints? Give examples of different constraint types.**

SQL constraints are rules enforced on data columns to maintain data accuracy and integrity. They prevent invalid data from being entered into the database:[2][1]

**NOT NULL**: Ensures a column cannot have NULL values
```sql
CREATE TABLE users (id INT NOT NULL, email VARCHAR(100) NOT NULL);
```

**UNIQUE**: Ensures all values in a column are different
```sql
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);
```

**PRIMARY KEY**: Combination of NOT NULL and UNIQUE
```sql
CREATE TABLE products (id INT PRIMARY KEY, name VARCHAR(100));
```

**FOREIGN KEY**: Links tables and maintains referential integrity
```sql
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customers(id);
```

**CHECK**: Validates data based on specified conditions
```sql
ALTER TABLE employees ADD CONSTRAINT salary_check CHECK (salary > 0);
```

**DEFAULT**: Provides default values when none are specified
```sql
ALTER TABLE users ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP;
```

**13. What is the difference between a primary key and a unique key?**

The fundamental differences between primary and unique keys affect database design and functionality:[1]

**Primary Key:**
- Only one per table
- Cannot contain NULL values
- Automatically creates a clustered index (in most databases)
- Used for row identification and table relationships
- Required for database replication in many systems

**Unique Key:**
- Multiple unique keys allowed per table
- Can contain one NULL value (database-dependent)
- Creates a non-clustered index
- Enforces business rules rather than entity identification
- Optional for most database operations

**14. What are database relationships? Explain different types.**

Database relationships define how tables are connected and interact with each other:[4]

**One-to-One (1:1)**: Each record in Table A corresponds to exactly one record in Table B. Example: A person and their passport - each person has one passport, and each passport belongs to one person.

**One-to-Many (1:N)**: One record in Table A can relate to multiple records in Table B, but each record in Table B relates to only one record in Table A. Example: A customer can have multiple orders, but each order belongs to one customer.

**Many-to-Many (M:N)**: Multiple records in Table A can relate to multiple records in Table B. This requires a junction table. Example: Students and courses - students can enroll in multiple courses, and courses can have multiple students.

### Basic SQL Operations (Questions 15-24)

**15. Describe the SELECT statement and its basic syntax.**

The SELECT statement is the foundation of data retrieval in SQL, used to query and extract data from database tables. Its basic syntax follows this structure:[5]

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition
GROUP BY column
HAVING condition
ORDER BY column [ASC|DESC]
LIMIT number;
```

**Key components:**
- **SELECT clause**: Specifies which columns to retrieve (use * for all columns)
- **FROM clause**: Identifies the source table(s)
- **WHERE clause**: Filters rows based on conditions
- **GROUP BY**: Groups rows for aggregate functions
- **HAVING**: Filters groups (used with GROUP BY)
- **ORDER BY**: Sorts results
- **LIMIT**: Restricts the number of returned rows

**16. What is the WHERE clause and how do you use it?**

The WHERE clause filters records based on specified conditions, allowing you to retrieve only rows that meet certain criteria. It supports various operators and can combine multiple conditions:[5]

**Comparison Operators:**
```sql
SELECT * FROM employees WHERE salary > 50000;
SELECT * FROM employees WHERE department = 'Sales';
```

**Logical Operators:**
```sql
SELECT * FROM employees WHERE salary > 40000 AND department = 'IT';
SELECT * FROM employees WHERE department = 'Sales' OR department = 'Marketing';
```

**Pattern Matching:**
```sql
SELECT * FROM employees WHERE first_name LIKE 'J%';  -- Names starting with J
```

**Range and List Operations:**
```sql
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;
SELECT * FROM employees WHERE department IN ('Sales', 'IT', 'HR');
```

**17. What is the difference between DELETE, DROP, and TRUNCATE?**

These commands serve different purposes for removing data or database objects:[2][1]

**DELETE:**
- Removes specific rows based on WHERE conditions
- Maintains table structure
- Logged operation (can be rolled back)
- Triggers fire for each deleted row
- Can be used with WHERE clause
```sql
DELETE FROM employees WHERE department = 'Sales';
```

**TRUNCATE:**
- Removes all rows from a table quickly
- Maintains table structure
- Minimal logging (faster than DELETE)
- Cannot be used with WHERE clause
- Resets identity columns
```sql
TRUNCATE TABLE employees;
```

**DROP:**
- Completely removes table structure and data
- Cannot be undone easily
- Removes indexes, triggers, constraints
- Frees up storage space completely
```sql
DROP TABLE employees;
```

**18. What is the difference between DELETE and TRUNCATE commands?**

DELETE and TRUNCATE both remove data but differ significantly in implementation and capabilities:[1]

**DELETE Command:**
- Row-by-row operation with full transaction logging
- Supports WHERE clause for conditional deletion
- Can be rolled back within a transaction
- Triggers are executed for each row
- Slower for large datasets
- Does not reset AUTO_INCREMENT values
- Can cause fragmentation

**TRUNCATE Command:**
- Deallocates data pages (much faster)
- Removes all rows (no WHERE clause support)
- Minimal logging (cannot be rolled back in some databases)
- No triggers fired
- Resets AUTO_INCREMENT to initial value
- Does not cause fragmentation
- Requires ALTER permission rather than DELETE permission

**19. How do you insert data into a table?**

Data insertion uses the INSERT INTO statement with several syntax variations:[1]

**Basic INSERT:**
```sql
INSERT INTO employees (id, first_name, last_name, salary)
VALUES (1, 'John', 'Doe', 50000);
```

**Multiple Row INSERT:**
```sql
INSERT INTO employees (id, first_name, last_name, salary)
VALUES 
    (2, 'Jane', 'Smith', 55000),
    (3, 'Bob', 'Johnson', 48000),
    (4, 'Alice', 'Brown', 52000);
```

**INSERT with SELECT (copying data):**
```sql
INSERT INTO employees_backup 
SELECT * FROM employees WHERE department = 'Sales';
```

**INSERT with DEFAULT values:**
```sql
INSERT INTO employees (first_name, last_name) 
VALUES ('Mike', 'Wilson');  -- Other columns get default values
```

**20. How do you update data in a table?**

The UPDATE statement modifies existing records in a table:[1]

**Basic UPDATE:**
```sql
UPDATE employees 
SET salary = 55000 
WHERE id = 1;
```

**Multiple Column UPDATE:**
```sql
UPDATE employees 
SET salary = 60000, department = 'Senior Sales'
WHERE id = 1;
```

**Conditional UPDATE with calculations:**
```sql
UPDATE employees 
SET salary = salary * 1.1  -- 10% increase
WHERE performance_rating = 'Excellent';
```

**UPDATE with JOIN:**
```sql
UPDATE e 
SET e.manager_name = m.first_name + ' ' + m.last_name
FROM employees e
JOIN managers m ON e.manager_id = m.id;
```

**21. What are NULL values in SQL? How do you handle them?**

NULL represents missing, unknown, or inapplicable data - not zero or empty string. NULL values require special handling:[2]

**Checking for NULL:**
```sql
SELECT * FROM employees WHERE middle_name IS NULL;
SELECT * FROM employees WHERE middle_name IS NOT NULL;
```

**Handling NULLs with functions:**
```sql
-- COALESCE returns first non-NULL value
SELECT first_name, COALESCE(middle_name, 'N/A') as middle_name
FROM employees;

-- ISNULL (SQL Server) or IFNULL (MySQL)
SELECT first_name, ISNULL(middle_name, 'Unknown') as middle_name
FROM employees;
```

**NULLs in calculations:**
```sql
-- Any arithmetic with NULL results in NULL
SELECT salary + bonus FROM employees;  -- NULL if bonus is NULL

-- Use COALESCE to handle
SELECT salary + COALESCE(bonus, 0) FROM employees;
```

**22. Are NULL values equal to zero or blank spaces?**

No, NULL values are conceptually different from zero or empty strings:[2]

- **NULL**: Represents unknown, missing, or inapplicable data
- **Zero (0)**: A specific numeric value
- **Empty string ('')**: A string with no characters

**Comparison behavior:**
```sql
-- These all return different results
SELECT * FROM table WHERE value = 0;        -- Finds zeros
SELECT * FROM table WHERE value = '';       -- Finds empty strings
SELECT * FROM table WHERE value IS NULL;    -- Finds NULLs

-- NULL comparisons always return UNKNOWN
SELECT NULL = NULL;    -- Returns UNKNOWN (not TRUE)
SELECT NULL = 0;       -- Returns UNKNOWN (not FALSE)
```

**23. What is pattern matching in SQL?**

Pattern matching uses the LIKE operator with wildcard characters to search for specific patterns in text data:[1]

**Wildcard Characters:**
- **%**: Matches zero or more characters
- **_**: Matches exactly one character
- **[]**: Matches any single character within brackets (some databases)
- ****: Matches any character NOT within brackets (some databases)

**Examples:**
```sql
-- Names starting with 'A'
SELECT * FROM employees WHERE first_name LIKE 'A%';

-- Names ending with 'son'
SELECT * FROM employees WHERE last_name LIKE '%son';

-- Names with 'ar' anywhere
SELECT * FROM employees WHERE first_name LIKE '%ar%';

-- Four-character names starting with 'J'
SELECT * FROM employees WHERE first_name LIKE 'J___';

-- Email addresses from gmail
SELECT * FROM customers WHERE email LIKE '%@gmail.com';
```

**24. How do you create an empty table with the same structure as another table?**

Several methods exist to create an empty table with identical structure:[2]

**Method 1 - CREATE TABLE AS SELECT with impossible condition:**
```sql
CREATE TABLE employees_copy 
AS SELECT * FROM employees WHERE 1=0;
```

**Method 2 - CREATE TABLE with explicit structure:**
```sql
CREATE TABLE employees_copy (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10,2)
);
```

**Method 3 - SELECT INTO (SQL Server):**
```sql
SELECT * INTO employees_copy 
FROM employees WHERE 1=0;
```

**Method 4 - Using LIMIT 0 (MySQL, PostgreSQL):**
```sql
CREATE TABLE employees_copy 
AS SELECT * FROM employees LIMIT 0;
```

### Basic Query Operations (Questions 25-35)

**25. What are aggregate functions in SQL? Give 5 examples.**

Aggregate functions perform calculations on a set of values and return a single result. They're essential for data analysis and reporting:[6][1]

**Common Aggregate Functions:**

1. **COUNT()**: Returns number of rows
```sql
SELECT COUNT(*) FROM employees;  -- Total employees
SELECT COUNT(DISTINCT department) FROM employees;  -- Unique departments
```

2. **SUM()**: Returns total of numeric values
```sql
SELECT SUM(salary) FROM employees;  -- Total payroll
```

3. **AVG()**: Returns average of numeric values
```sql
SELECT AVG(salary) FROM employees;  -- Average salary
```

4. **MIN()**: Returns minimum value
```sql
SELECT MIN(hire_date) FROM employees;  -- Earliest hire date
```

5. **MAX()**: Returns maximum value
```sql
SELECT MAX(salary) FROM employees;  -- Highest salary
```

**Additional Functions:**
- **STDDEV()**: Standard deviation
- **VARIANCE()**: Statistical variance
- **GROUP_CONCAT()**: Concatenates grouped values (MySQL)

**26. What is the GROUP BY clause?**

GROUP BY organizes rows into groups based on column values, typically used with aggregate functions:[6][1]

**Basic Usage:**
```sql
SELECT department, COUNT(*) as employee_count
FROM employees 
GROUP BY department;
```

**Multiple Column Grouping:**
```sql
SELECT department, job_title, AVG(salary) as avg_salary
FROM employees 
GROUP BY department, job_title;
```

**With WHERE clause (filtering before grouping):**
```sql
SELECT department, COUNT(*) as employee_count
FROM employees 
WHERE salary > 40000
GROUP BY department;
```

**Rules:**
- Every column in SELECT must be in GROUP BY or be an aggregate function
- GROUP BY comes after WHERE but before ORDER BY
- NULL values are grouped together

**27. What is the ORDER BY clause?**

ORDER BY sorts query results in ascending (default) or descending order:[1]

**Basic Sorting:**
```sql
SELECT * FROM employees ORDER BY salary;          -- Ascending (default)
SELECT * FROM employees ORDER BY salary DESC;     -- Descending
```

**Multiple Column Sorting:**
```sql
SELECT * FROM employees 
ORDER BY department ASC, salary DESC;  -- Department A-Z, then salary high-low
```

**Sorting by Expression:**
```sql
SELECT first_name, last_name, salary
FROM employees 
ORDER BY (salary * 12) DESC;  -- Annual salary
```

**Sorting with NULL handling:**
```sql
SELECT * FROM employees 
ORDER BY bonus NULLS LAST;  -- NULLs appear at end
```

**28. What is the difference between GROUP BY and ORDER BY?**

GROUP BY and ORDER BY serve different purposes in query processing:[1]

**GROUP BY:**
- **Purpose**: Combines rows into groups for aggregation
- **Changes result structure**: Reduces rows through grouping
- **Used with**: Aggregate functions (COUNT, SUM, AVG, etc.)
- **Processing order**: Executed before ORDER BY
- **Example**: Counting employees per department

**ORDER BY:**
- **Purpose**: Sorts existing rows in result set
- **Preserves result structure**: Same number of rows
- **Used for**: Presentation and ranking
- **Processing order**: Last step in query execution
- **Example**: Listing employees by salary

**Combined Usage:**
```sql
SELECT department, COUNT(*) as emp_count
FROM employees 
GROUP BY department      -- Group first
ORDER BY emp_count DESC; -- Then sort groups
```

**29. What is the difference between WHERE and HAVING clauses?**

WHERE and HAVING both filter data but at different stages of query processing:[6][1]

**WHERE Clause:**
- Filters individual rows before grouping
- Cannot use aggregate functions
- Applied to raw table data
- More efficient (reduces data processed)

```sql
SELECT department, COUNT(*) 
FROM employees 
WHERE salary > 50000  -- Filter rows first
GROUP BY department;
```

**HAVING Clause:**
- Filters groups after GROUP BY
- Can use aggregate functions
- Applied to grouped results
- Less efficient for large datasets

```sql
SELECT department, COUNT(*) as emp_count
FROM employees 
GROUP BY department
HAVING COUNT(*) > 5;  -- Filter groups with >5 employees
```

**Combined Usage:**
```sql
SELECT department, AVG(salary) as avg_salary
FROM employees 
WHERE hire_date > '2020-01-01'  -- First filter rows
GROUP BY department 
HAVING AVG(salary) > 60000;     -- Then filter groups
```

**30. What is the UNION operator?**

UNION combines results from multiple SELECT statements into a single result set, removing duplicates:[5][1]

**Basic UNION:**
```sql
SELECT first_name, last_name FROM employees
UNION
SELECT first_name, last_name FROM contractors;
```

**Requirements:**
- Same number of columns in all SELECT statements
- Corresponding columns must have compatible data types
- Column names come from first SELECT statement

**UNION with ORDER BY:**
```sql
(SELECT name, 'Employee' as type FROM employees)
UNION
(SELECT name, 'Contractor' as type FROM contractors)
ORDER BY name;
```

**31. What is the difference between UNION and UNION ALL?**

The key difference lies in duplicate handling:[7][1]

**UNION:**
- Removes duplicate rows
- Slower due to duplicate elimination process
- Uses additional memory for sorting and comparison
- Default behavior

```sql
SELECT city FROM customers
UNION
SELECT city FROM suppliers;  -- Unique cities only
```

**UNION ALL:**
- Includes all rows, including duplicates
- Faster execution (no duplicate checking)
- Less memory usage
- Preserves all original data

```sql
SELECT city FROM customers
UNION ALL
SELECT city FROM suppliers;  -- All cities, including duplicates
```

**Performance Comparison:**
- Use UNION when duplicates must be eliminated
- Use UNION ALL when duplicates are acceptable or desired (better performance)

**32. What are scalar functions? Give examples.**

Scalar functions operate on a single value and return a single value, as opposed to aggregate functions that work on sets:[1]

**String Functions:**
```sql
-- UPPER/LOWER: Change case
SELECT UPPER(first_name), LOWER(last_name) FROM employees;

-- LEN/LENGTH: String length
SELECT first_name, LEN(first_name) as name_length FROM employees;

-- SUBSTRING: Extract part of string
SELECT SUBSTRING(first_name, 1, 3) FROM employees;  -- First 3 characters
```

**Numeric Functions:**
```sql
-- ROUND: Round numbers
SELECT salary, ROUND(salary/12, 2) as monthly_salary FROM employees;

-- ABS: Absolute value
SELECT ABS(-50) as result;  -- Returns 50

-- CEILING/FLOOR: Round up/down
SELECT CEILING(4.3), FLOOR(4.7);  -- Returns 5, 4
```

**Date Functions:**
```sql
-- GETDATE/NOW: Current date/time
SELECT GETDATE() as current_time;

-- DATEPART: Extract date parts
SELECT DATEPART(year, hire_date) as hire_year FROM employees;

-- DATEDIFF: Date difference
SELECT DATEDIFF(day, hire_date, GETDATE()) as days_employed FROM employees;
```

**33. What are character manipulation functions?**

Character manipulation functions specifically handle string operations:[1]

**String Modification:**
```sql
-- CONCAT: Join strings
SELECT CONCAT(first_name, ' ', last_name) as full_name FROM employees;

-- REPLACE: Replace text
SELECT REPLACE(phone_number, '-', '.') FROM employees;

-- LTRIM/RTRIM: Remove spaces
SELECT LTRIM(RTRIM(name)) as cleaned_name FROM employees;
```

**String Analysis:**
```sql
-- CHARINDEX/INSTR: Find position of substring
SELECT CHARINDEX('@', email) as at_position FROM employees;

-- LEFT/RIGHT: Extract from ends
SELECT LEFT(first_name, 1) as initial FROM employees;

-- REVERSE: Reverse string
SELECT REVERSE(last_name) FROM employees;
```

**Pattern Matching:**
```sql
-- PATINDEX: Pattern position with wildcards
SELECT PATINDEX('%@gmail.%', email) FROM employees;
```

**34. What is a query in SQL?**

A query is a request for data or action from a database, typically used to retrieve, insert, update, or delete information. Queries are written in SQL and can range from simple data retrieval to complex operations involving multiple tables and conditions.[1]

**Types of Queries:**
- **Select Queries**: Retrieve data (most common)
- **Action Queries**: Modify data (INSERT, UPDATE, DELETE)
- **DDL Queries**: Modify structure (CREATE, ALTER, DROP)

**Query Components:**
- **Clauses**: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY
- **Operators**: Comparison (=, <, >), logical (AND, OR), pattern matching (LIKE)
- **Functions**: Aggregate (COUNT, SUM) and scalar (UPPER, LENGTH)
- **Expressions**: Calculations and concatenations

**35. How do you find unique values from a field?**

Use the DISTINCT keyword to eliminate duplicate values:[1]

**Basic DISTINCT:**
```sql
SELECT DISTINCT department FROM employees;
```

**DISTINCT with multiple columns:**
```sql
SELECT DISTINCT department, job_title FROM employees;
-- Returns unique combinations of department and job_title
```

**DISTINCT with COUNT:**
```sql
SELECT COUNT(DISTINCT department) as unique_departments FROM employees;
```

**Alternative using GROUP BY:**
```sql
SELECT department 
FROM employees 
GROUP BY department;
```

**With additional filtering:**
```sql
SELECT DISTINCT department 
FROM employees 
WHERE salary > 50000
ORDER BY department;
```

## Intermediate SQL Interview Questions (36-70) - Detailed Answers

### Joins and Relationships (Questions 36-42)

**36. What is a JOIN in SQL? Explain different types of joins.**

A JOIN clause combines rows from two or more tables based on a related column between them. JOINs enable retrieval of meaningful data by linking records with matching values, making it possible to work with normalized database designs.[8][5][1]

**Types of JOINs:**

**INNER JOIN**: Returns only matching records from both tables
```sql
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.id;
```

**LEFT JOIN (LEFT OUTER JOIN)**: Returns all records from left table and matching records from right table
```sql
SELECT e.name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.id;
```

**RIGHT JOIN (RIGHT OUTER JOIN)**: Returns all records from right table and matching records from left table
```sql
SELECT e.name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.id;
```

**FULL OUTER JOIN**: Returns all records from both tables
```sql
SELECT e.name, d.department_name
FROM employees e
FULL OUTER JOIN departments d ON e.dept_id = d.id;
```

**CROSS JOIN**: Returns Cartesian product of both tables
```sql
SELECT e.name, d.department_name
FROM employees e
CROSS JOIN departments d;
```

**SELF JOIN**: Joins a table with itself
```sql
SELECT e1.name as employee, e2.name as manager
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id = e2.id;
```

**37. What is the difference between INNER JOIN and LEFT JOIN?**

INNER JOIN and LEFT JOIN differ in how they handle non-matching records:[8][5]

**INNER JOIN:**
- Returns only rows with matching values in both tables
- Excludes unmatched rows from either table
- Result set is typically smaller
- Used when you need only related data

```sql
-- Only employees WITH departments
SELECT e.name, d.name as department
FROM employees e
INNER JOIN departments d ON e.dept_id = d.id;
```

**LEFT JOIN:**
- Returns all rows from the left table
- Includes non-matching rows from left table with NULL values for right table columns
- Result set includes all left table records
- Used when you need all records from the primary table

```sql
-- ALL employees, whether they have departments or not
SELECT e.name, d.name as department
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.id;
```

**When to use each:**
- INNER JOIN: Finding employees who have assigned departments
- LEFT JOIN: Finding all employees, including those without departments

**38. Explain INNER JOIN with an example.**

INNER JOIN returns only the rows that have matching values in both tables being joined. It's the most restrictive type of join.[8][1]

**Sample Tables:**
```sql
-- Employees table
id | name     | dept_id
1  | Alice    | 10
2  | Bob      | 20
3  | Charlie  | NULL
4  | David    | 10

-- Departments table
id | name        
10 | Sales       
20 | Marketing   
30 | IT          
```

**INNER JOIN Query:**
```sql
SELECT e.name as employee_name, d.name as department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.id;
```

**Result:**
```
employee_name | department_name
Alice         | Sales
Bob           | Marketing  
David         | Sales
```

**Key Points:**
- Charlie is excluded (NULL dept_id doesn't match any department)
- IT department is excluded (no employees assigned)
- Only matching relationships are shown
- Most commonly used JOIN type

**39. What is a RIGHT JOIN?**

RIGHT JOIN (or RIGHT OUTER JOIN) returns all records from the right table and matching records from the left table:[8][1]

**Using same sample tables:**
```sql
SELECT e.name as employee_name, d.name as department_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.id;
```

**Result:**
```
employee_name | department_name
Alice         | Sales
David         | Sales
Bob           | Marketing
NULL          | IT
```

**Characteristics:**
- All departments are shown (right table)
- IT department appears with NULL employee (no one assigned)
- Charlie is excluded (has NULL dept_id)
- Less commonly used than LEFT JOIN
- Can always be rewritten as LEFT JOIN by switching table order

**40. What is a FULL OUTER JOIN?**

FULL OUTER JOIN returns all records from both tables, showing NULL where there are no matches:[7][1]

```sql
SELECT e.name as employee_name, d.name as department_name
FROM employees e
FULL OUTER JOIN departments d ON e.dept_id = d.id;
```

**Result:**
```
employee_name | department_name
Alice         | Sales
David         | Sales
Bob           | Marketing
Charlie       | NULL
NULL          | IT
```

**Characteristics:**
- Shows all employees (even without departments)
- Shows all departments (even without employees)
- Most inclusive JOIN type
- Useful for finding orphaned records in either table
- Not supported by all databases (MySQL lacks native support)

**41. What is a CROSS JOIN?**

CROSS JOIN produces the Cartesian product of two tables, combining every row from the first table with every row from the second table:[8][1]

```sql
SELECT e.name as employee, d.name as department
FROM employees e
CROSS JOIN departments d;
```

**Result (partial):**
```
employee | department
Alice    | Sales
Alice    | Marketing
Alice    | IT
Bob      | Sales
Bob      | Marketing
Bob      | IT
...
```

**Characteristics:**
- No JOIN condition required
- Result set size = (rows in table1) × (rows in table2)
- Can create very large result sets
- Useful for generating combinations
- Often unintentional when JOIN condition is omitted

**Use Cases:**
- Creating test data combinations
- Generating report templates
- Mathematical combinations

**42. When would you use different types of joins?**

Choose JOIN types based on your data requirements:[5][8]

**INNER JOIN - When you need only matching data:**
- Employee-department relationships (only employees with departments)
- Order-customer data (only orders with valid customers)
- Product-category listings (only products with categories)

**LEFT JOIN - When you need all records from the primary table:**
- All customers and their orders (including customers with no orders)
- All employees and their managers (including employees without managers)
- All products and their reviews (including products with no reviews)

**RIGHT JOIN - When you need all records from the secondary table:**
- Less common, usually replaced with LEFT JOIN
- All departments and their employees (including empty departments)

**FULL OUTER JOIN - When you need complete data from both tables:**
- Data reconciliation between systems
- Finding orphaned records
- Complete audit trails

**CROSS JOIN - When you need all combinations:**
- Size/color combinations for products
- Scheduling all employees to all shifts
- Creating test scenarios

### Subqueries and Advanced Queries (Questions 43-49)

**43. What is a subquery in SQL? Give an example.**

A subquery (or nested query) is a query embedded within another SQL statement. Subqueries can appear in SELECT, FROM, WHERE, and HAVING clauses, providing dynamic and flexible data retrieval capabilities.[9][10][6]

**Types and Examples:**

**Scalar Subquery (returns single value):**
```sql
-- Find employees earning more than average salary
SELECT name, salary
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);
```

**List Subquery (returns multiple values):**
```sql
-- Find employees in departments located in New York
SELECT name, department_id
FROM employees 
WHERE department_id IN (
    SELECT id FROM departments WHERE location = 'New York'
);
```

**Table Subquery (in FROM clause):**
```sql
-- Find average salary by department for high-paying departments
SELECT dept_name, avg_salary
FROM (
    SELECT d.name as dept_name, AVG(e.salary) as avg_salary
    FROM employees e
    JOIN departments d ON e.dept_id = d.id
    GROUP BY d.name
) dept_averages
WHERE avg_salary > 60000;
```

**44. What are correlated subqueries?**

Correlated subqueries reference columns from the outer query, creating a dependency between inner and outer queries. They execute once for each row processed by the outer query, making them potentially slower but more flexible.[10][9]

**Example - Employees earning above department average:**
```sql
SELECT e.name, e.salary, e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary) 
    FROM employees e2 
    WHERE e2.department_id = e.department_id  -- Correlation with outer query
);
```

**Characteristics:**
- Inner query references outer query columns
- Cannot be executed independently
- Executed repeatedly (once per outer row)
- More flexible but potentially slower
- Useful for row-by-row comparisons

**Performance Consideration:**
```sql
-- Often can be rewritten as JOIN for better performance
SELECT e1.name, e1.salary, e1.department_id
FROM employees e1
JOIN (
    SELECT department_id, AVG(salary) as avg_sal
    FROM employees 
    GROUP BY department_id
) e2 ON e1.department_id = e2.department_id
WHERE e1.salary > e2.avg_sal;
```

**45. What is the difference between a correlated subquery and a nested subquery?**

The key difference lies in their independence and execution pattern:[9][10]

**Nested (Non-correlated) Subquery:**
- Independent of outer query
- Executes once before outer query
- Can be run separately
- Generally faster
- Results cached and reused

```sql
-- Non-correlated: finds all high-salary employees
SELECT name FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);
-- Inner query executes once, returns single average value
```

**Correlated Subquery:**
- Dependent on outer query values
- Executes once per outer query row
- Cannot run independently
- Generally slower
- Results not cached

```sql
-- Correlated: finds employees above their department average
SELECT name FROM employees e1
WHERE salary > (
    SELECT AVG(salary) FROM employees e2 
    WHERE e2.dept_id = e1.dept_id  -- References outer query
);
-- Inner query executes once per employee
```

**Performance Implications:**
- Nested subqueries: O(1) inner query execution
- Correlated subqueries: O(n) inner query executions
- Consider JOINs or window functions as alternatives for correlated subqueries

**46. What is the difference between IN and EXISTS?**

IN and EXISTS serve similar purposes but with different performance and behavior characteristics:[10]

**IN Operator:**
- Compares values with a list
- Returns TRUE if value matches any in the list
- Can use with subqueries or literal lists
- May have issues with NULL values

```sql
-- Find employees in specific departments
SELECT name FROM employees 
WHERE dept_id IN (1, 2, 3);

-- With subquery
SELECT name FROM employees 
WHERE dept_id IN (SELECT id FROM departments WHERE location = 'NYC');
```

**EXISTS Operator:**
- Tests for existence of rows
- Returns TRUE if subquery returns any rows
- Always used with subqueries
- Better performance with large datasets
- Handles NULLs more predictably

```sql
-- Find employees who have departments
SELECT name FROM employees e
WHERE EXISTS (SELECT 1 FROM departments d WHERE d.id = e.dept_id);

-- Find customers with orders
SELECT customer_name FROM customers c
WHERE EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.id);
```

**Performance Comparison:**
- **IN**: Good for small, static lists; can be slower with large subqueries
- **EXISTS**: Generally faster for large datasets; stops at first match
- **EXISTS**: Better for correlated subqueries

**NULL Handling:**
```sql
-- IN can return unexpected results with NULLs
SELECT * FROM table1 WHERE column1 IN (SELECT column2 FROM table2);
-- If any column2 is NULL, might return no rows even with matches

-- EXISTS handles NULLs more predictably
SELECT * FROM table1 t1 WHERE EXISTS (SELECT 1 FROM table2 t2 WHERE t2.column2 = t1.column1);
```

**47. How do you find duplicates in a table?**

Finding duplicate records is a common interview question with several approaches:[6]

**Method 1 - Using GROUP BY and HAVING:**
```sql
-- Find duplicate email addresses
SELECT email, COUNT(*) as duplicate_count
FROM users 
GROUP BY email 
HAVING COUNT(*) > 1;

-- Find all columns for duplicate emails
SELECT u1.*
FROM users u1
WHERE u1.email IN (
    SELECT email FROM users 
    GROUP BY email 
    HAVING COUNT(*) > 1
);
```

**Method 2 - Using Window Functions:**
```sql
-- Find duplicates with row numbers
SELECT *
FROM (
    SELECT *, 
           ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) as row_num
    FROM users
) ranked
WHERE row_num > 1;
```

**Method 3 - Self Join:**
```sql
-- Find duplicate records
SELECT DISTINCT u1.*
FROM users u1
JOIN users u2 ON u1.email = u2.email AND u1.id <> u2.id;
```

**Method 4 - Finding duplicates across multiple columns:**
```sql
-- Find duplicates based on first_name, last_name, and email
SELECT first_name, last_name, email, COUNT(*) as count
FROM users 
GROUP BY first_name, last_name, email 
HAVING COUNT(*) > 1;
```

**48. Write a query to find the second highest salary from an employee table.**

This classic interview question has multiple solutions:[11][6]

**Method 1 - Using OFFSET/LIMIT:**
```sql
-- PostgreSQL, MySQL (8.0+)
SELECT salary 
FROM employees 
ORDER BY salary DESC 
OFFSET 1 LIMIT 1;

-- SQL Server
SELECT salary 
FROM employees 
ORDER BY salary DESC 
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY;
```

**Method 2 - Using Subquery:**
```sql
SELECT MAX(salary) as second_highest
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);
```

**Method 3 - Using ROW_NUMBER():**
```sql
SELECT salary
FROM (
    SELECT salary, 
           ROW_NUMBER() OVER (ORDER BY salary DESC) as rank
    FROM employees
) ranked
WHERE rank = 2;
```

**Method 4 - Using DENSE_RANK() (handles ties better):**
```sql
SELECT DISTINCT salary
FROM (
    SELECT salary, 
           DENSE_RANK() OVER (ORDER BY salary DESC) as rank
    FROM employees
) ranked
WHERE rank = 2;
```

**Method 5 - Using DISTINCT with LIMIT:**
```sql
-- MySQL
SELECT DISTINCT salary 
FROM employees 
ORDER BY salary DESC 
LIMIT 1, 1;  -- Skip 1, take 1
```

**49. How do you find the Nth highest salary without using TOP or LIMIT?**

Finding the Nth highest salary without LIMIT/TOP requires creative approaches:[6]

**Method 1 - Using Correlated Subquery:**
```sql
-- Find 3rd highest salary
SELECT DISTINCT salary
FROM employees e1
WHERE 3 = (
    SELECT COUNT(DISTINCT salary)
    FROM employees e2
    WHERE e2.salary >= e1.salary
);
```

**Method 2 - Using DENSE_RANK():**
```sql
SELECT salary
FROM (
    SELECT salary, 
           DENSE_RANK() OVER (ORDER BY salary DESC) as rank
    FROM employees
) ranked
WHERE rank = 3;  -- Change 3 to N for Nth highest
```

**Method 3 - Using ROW_NUMBER() with DISTINCT:**
```sql
SELECT salary
FROM (
    SELECT DISTINCT salary, 
           ROW_NUMBER() OVER (ORDER BY salary DESC) as row_num
    FROM employees
) ranked_salaries
WHERE row_num = 3;
```

**Method 4 - Using Multiple Subqueries:**
```sql
-- 3rd highest (can be parameterized)
SELECT MIN(salary) as third_highest
FROM (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC
) top_three
WHERE salary IN (
    SELECT DISTINCT TOP 3 salary  -- Or use other methods if TOP not allowed
    FROM employees
    ORDER BY salary DESC
);
```

**Method 5 - Using Self Join:**
```sql
SELECT DISTINCT e1.salary
FROM employees e1
WHERE (
    SELECT COUNT(DISTINCT e2.salary)
    FROM employees e2
    WHERE e2.salary > e1.salary
) = 2;  -- For 3rd highest (N-1)
```


[1](https://www.scholarhat.com/tutorial/sqlserver/joins-sql-joins-interview-questions)
[2](https://www.geeksforgeeks.org/interview-experiences/advanced-sql-interview-questions/)
[3](https://interviewkickstart.com/blogs/interview-questions/advanced-sql-interview-questions)
[4](https://www.interviewbit.com/sql-joins-interview-questions/)
[5](https://www.dataquest.io/blog/sql-joins-interview-questions-and-answers/)
[6](https://www.stratascratch.com/blog/top-30-sql-query-interview-questions/)
[7](https://upesonline.ac.in/blog/advanced-sql-interview-questions)
[8](https://www.stratascratch.com/blog/sql-join-interview-questions/)
[9](https://www.geeksforgeeks.org/sql/sql-subquery/)
[10](https://interviewprep.org/subquery-sql-interview-questions/)
[11](https://datalemur.com/blog/advanced-sql-interview-questions)
[12](https://sqlpad.io/tutorial/mastering-sql-subqueries-for-job-interviews/)


### Views and Indexes (Questions 50-55)

**50. What is a view in SQL? What are the benefits of using views?**[1]

A view is a virtual table based on the result set of an SQL statement. It contains rows and columns from one or more tables and is stored as a named database object. Views don't physically store data but present data from underlying tables in a specific format.

**Creating a View:**
```sql
CREATE VIEW employee_summary AS
SELECT e.name, e.salary, d.department_name
FROM employees e
JOIN departments d ON e.dept_id = d.id
WHERE e.status = 'Active';
```

**Benefits of Views:**[1]
- **Security**: Implement row-level and column-level security by restricting data access
- **Simplification**: Hide complex joins and present simplified interface to users
- **Data Abstraction**: Present consistent interface even if underlying table structure changes
- **Reusability**: Encapsulate complex queries for multiple applications
- **Aggregation**: Present pre-calculated summaries and aggregated data

**Advanced View Features:**
- **Updatable Views**: Views based on single tables can often be updated
- **Indexed Views**: Materialized views that physically store data for performance
- **Nested Views**: Views can be created based on other views

**51. What are SQL indexes and why are they important?**[2][3]

Indexes are database objects that improve the speed of data retrieval operations on a table. They work like book indexes, providing quick access paths to data without scanning entire tables.

**Types of Indexes:**[3][2]
- **Clustered Index**: Physically reorders table data; one per table
- **Non-Clustered Index**: Separate structure pointing to data rows; multiple per table
- **Unique Index**: Ensures uniqueness while providing fast access
- **Composite Index**: Index on multiple columns
- **Filtered Index**: Index on subset of rows based on WHERE condition
- **Covering Index**: Includes all columns needed for a query

**Index Creation Examples:**
```sql
-- Basic index
CREATE INDEX idx_employee_name ON employees(last_name);

-- Composite index
CREATE INDEX idx_emp_dept_salary ON employees(department_id, salary);

-- Filtered index
CREATE INDEX idx_active_employees ON employees(hire_date) 
WHERE status = 'Active';

-- Covering index
CREATE INDEX idx_covering_emp 
ON employees(department_id) 
INCLUDE (name, salary, hire_date);
```

**Why Indexes are Important:**[2]
- **Performance**: Dramatically reduce query execution time
- **Concurrency**: Reduce locking time, improving concurrent access
- **Sorting**: Speed up ORDER BY operations
- **Joins**: Accelerate JOIN operations
- **Uniqueness**: Enforce unique constraints efficiently

**52. What is the difference between clustered and non-clustered indexes?**[2]

The fundamental difference lies in how they store and organize data:

**Clustered Index:**[2]
- **Physical Storage**: Determines actual storage order of data rows
- **Table Limit**: Only one clustered index per table
- **Data Access**: Direct access to data (index IS the data)
- **Performance**: Faster for range queries and sequential access
- **Storage**: No separate storage structure needed
- **Primary Key**: Often automatically created on primary key

```sql
-- Create clustered index (SQL Server)
CREATE CLUSTERED INDEX idx_employee_id ON employees(employee_id);
```

**Non-Clustered Index:**[2]
- **Logical Structure**: Separate structure pointing to data rows
- **Table Limit**: Multiple non-clustered indexes per table
- **Data Access**: Two-step process (index lookup, then data access)
- **Performance**: Faster for exact match queries
- **Storage**: Requires additional storage space
- **Flexibility**: Can include additional columns for covering queries

```sql
-- Create non-clustered index
CREATE NONCLUSTERED INDEX idx_employee_name ON employees(last_name, first_name);
```

**Performance Comparison:**
- **Clustered**: Better for range scans, sequential access, grouping
- **Non-Clustered**: Better for exact lookups, covering queries, multiple access patterns

**53. Explain different types of indexes.**[3]

Modern databases support various index types, each optimized for specific use cases:

**1. B-Tree Indexes (Most Common):**
```sql
CREATE INDEX idx_standard ON employees(last_name);
```
- **Use Case**: General purpose, equality and range queries
- **Structure**: Balanced tree structure
- **Performance**: O(log n) access time

**2. Hash Indexes:**
```sql
CREATE INDEX idx_hash ON employees(employee_id) USING HASH;
```
- **Use Case**: Exact match queries only
- **Performance**: O(1) access time for equality
- **Limitation**: No range queries or sorting

**3. Bitmap Indexes:**
```sql
-- Oracle syntax
CREATE BITMAP INDEX idx_gender ON employees(gender);
```
- **Use Case**: Low cardinality columns (few distinct values)
- **Benefits**: Excellent for data warehousing, AND/OR operations
- **Drawbacks**: Poor performance for OLTP systems

**4. Partial/Filtered Indexes:**[3]
```sql
CREATE INDEX idx_pending_orders ON orders(order_date) 
WHERE status = 'Pending';
```
- **Use Case**: Index only subset of rows
- **Benefits**: Smaller index size, faster maintenance
- **Application**: Status-based queries, date ranges

**5. Expression/Function-Based Indexes:**
```sql
CREATE INDEX idx_upper_name ON employees(UPPER(last_name));
```
- **Use Case**: Queries involving functions or expressions
- **Benefits**: Avoid function evaluation at query time

**6. Full-Text Indexes:**
```sql
CREATE FULLTEXT INDEX ON documents(content);
```
- **Use Case**: Text search, document retrieval
- **Features**: Stemming, ranking, phrase searching

**54. How do database indexes impact INSERT/UPDATE and SELECT queries?**[2]

Indexes create a classic trade-off between read and write performance:

**Impact on SELECT Queries (Positive):**[2]
```sql
-- Without index: Full table scan
SELECT * FROM employees WHERE last_name = 'Smith';
-- Execution: Scan 1,000,000 rows

-- With index: Index seek
-- Execution: Index lookup + few row accesses
```

**Performance Benefits:**
- **Seek vs Scan**: Index seeks are exponentially faster than table scans
- **Reduced I/O**: Read fewer data pages from disk
- **Covering Queries**: Retrieve data entirely from index
- **Join Optimization**: Faster join operations

**Impact on INSERT Operations (Negative):**
```sql
-- Each INSERT must:
-- 1. Insert data into table
-- 2. Update all relevant indexes
INSERT INTO employees (name, department_id, salary) 
VALUES ('John Doe', 5, 50000);
-- Updates: Table + Name Index + Department Index + Salary Index
```

**Write Performance Costs:**
- **Index Maintenance**: Each index requires updates
- **B-Tree Rebalancing**: May trigger tree restructuring
- **Lock Contention**: More locks needed for index updates
- **Storage Overhead**: Additional disk space required

**Impact on UPDATE Operations (Mixed):**
```sql
-- UPDATE affecting indexed columns
UPDATE employees 
SET salary = 55000,     -- Affects salary index
    department_id = 6   -- Affects department index
WHERE employee_id = 123;
```

**Update Considerations:**
- **Column Changes**: Only indexes on changed columns are affected
- **Key Changes**: Updates to indexed columns require index maintenance
- **Covering Indexes**: May eliminate need to access base table

**Best Practices for Index Management:**
- **Selective Indexing**: Index frequently queried columns
- **Monitor Usage**: Remove unused indexes
- **Composite Strategy**: Use composite indexes for multi-column queries
- **Maintenance Windows**: Perform index rebuilds during low-usage periods

### Normalization and Database Design (Questions 55-58)

**55. What is normalization in database design? What are its advantages?**[4][5][6]

Normalization is the systematic process of organizing database tables and relationships to minimize data redundancy and eliminate undesirable characteristics like insertion, update, and deletion anomalies.[6]

**Normalization Process:**
```sql
-- Unnormalized table (problematic)
CREATE TABLE student_courses (
    student_id INT,
    student_name VARCHAR(50),
    student_email VARCHAR(100),
    course1 VARCHAR(50),
    course2 VARCHAR(50),
    course3 VARCHAR(50),
    instructor1 VARCHAR(50),
    instructor2 VARCHAR(50),
    instructor3 VARCHAR(50)
);

-- After normalization:
-- Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Courses table  
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    instructor VARCHAR(50)
);

-- Enrollment table (junction table)
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
```

**Advantages of Normalization:**[5][4]
- **Eliminates Data Redundancy**: Each piece of information stored only once
- **Prevents Update Anomalies**: Update data in one place only
- **Saves Storage Space**: Reduces database size significantly
- **Improves Data Integrity**: Enforces referential integrity through foreign keys
- **Easier Maintenance**: Changes to structure affect fewer places
- **Better Query Performance**: Well-structured queries run faster[5]
- **Scalability**: Normalized designs scale better with growth

**Data Anomaly Examples:**
```sql
-- Without normalization - problems:
-- Insert Anomaly: Can't add course without student
-- Update Anomaly: Must update instructor name in multiple places
-- Delete Anomaly: Deleting last student removes course information
```

**56. What are the different normal forms?**[5]

Normal forms are progressive rules that ensure proper database design:

**First Normal Form (1NF):**[5]
- **Rule**: Each column contains atomic (indivisible) values
- **Eliminate**: Repeating groups and arrays

```sql
-- Violates 1NF
CREATE TABLE bad_example (
    student_id INT,
    courses VARCHAR(200) -- "Math,Science,History"
);

-- Follows 1NF
CREATE TABLE good_example (
    student_id INT,
    course VARCHAR(50)
);
```

**Second Normal Form (2NF):**[5]
- **Prerequisites**: Must be in 1NF
- **Rule**: No partial dependencies (non-key columns depend on entire primary key)

```sql
-- Violates 2NF (partial dependency)
CREATE TABLE bad_enrollment (
    student_id INT,
    course_id INT,
    student_name VARCHAR(50),  -- Depends only on student_id
    grade CHAR(1),
    PRIMARY KEY (student_id, course_id)
);

-- Follows 2NF
CREATE TABLE students (student_id INT PRIMARY KEY, name VARCHAR(50));
CREATE TABLE enrollments (
    student_id INT, 
    course_id INT, 
    grade CHAR(1),
    PRIMARY KEY (student_id, course_id)
);
```

**Third Normal Form (3NF):**[5]
- **Prerequisites**: Must be in 2NF
- **Rule**: No transitive dependencies (non-key columns depend only on primary key)

```sql
-- Violates 3NF (transitive dependency)
CREATE TABLE bad_employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    dept_name VARCHAR(50),  -- Depends on dept_id, not emp_id
    salary DECIMAL(10,2)
);

-- Follows 3NF
CREATE TABLE departments (dept_id INT PRIMARY KEY, name VARCHAR(50));
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
```

**Boyce-Codd Normal Form (BCNF):**[5]
- **Prerequisites**: Must be in 3NF
- **Rule**: Every determinant must be a candidate key
- **Use Case**: Handles special cases where 3NF isn't sufficient

**Fourth Normal Form (4NF) and Fifth Normal Form (5NF):**[5]
- **4NF**: Eliminates multi-valued dependencies
- **5NF**: Eliminates join dependencies
- **Usage**: Rarely needed in practical applications

**57. What is denormalization? When would you use it?**[6][5]

Denormalization is the process of intentionally introducing redundancy into a normalized database design to improve read performance, often at the cost of write performance and storage space.[6]

**When to Use Denormalization:**[5]
- **Read-Heavy Applications**: Systems with significantly more reads than writes
- **Reporting Systems**: Data warehouses and OLAP systems
- **Performance Critical**: When query performance is paramount
- **Complex Joins**: When frequent queries involve expensive multi-table joins

**Denormalization Techniques:**

**1. Redundant Columns:**
```sql
-- Normalized design
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- Denormalized design (add customer_name to orders)
CREATE TABLE orders_denormalized (
    order_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(100),  -- Denormalized
    order_date DATE
);
```

**2. Pre-calculated Aggregates:**
```sql
-- Add summary columns to avoid calculations
CREATE TABLE customer_summary (
    customer_id INT PRIMARY KEY,
    total_orders INT,
    total_spent DECIMAL(12,2),
    avg_order_value DECIMAL(10,2),
    last_order_date DATE
);
```

**3. Flattened Hierarchies:**
```sql
-- Store full category path instead of hierarchical structure
CREATE TABLE products_flat (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category_path VARCHAR(200)  -- "Electronics > Computers > Laptops"
);
```

**Trade-offs of Denormalization:**
- **Benefits**: Faster queries, reduced joins, simpler queries
- **Costs**: Data redundancy, update complexity, storage overhead, potential inconsistencies

**58. What is the difference between normalization and denormalization?**

| Aspect | Normalization | Denormalization |
|--------|---------------|-----------------|
| **Purpose** | Eliminate redundancy[6] | Improve performance[5] |
| **Data Redundancy** | Minimized | Intentionally introduced |
| **Storage** | Less storage space | More storage space |
| **Query Performance** | May require joins | Faster, fewer joins |
| **Write Performance** | Faster writes | Slower writes |
| **Data Consistency** | Higher consistency | Risk of inconsistency |
| **Maintenance** | Easier to maintain | More complex maintenance |
| **Use Cases** | OLTP systems | OLAP/reporting systems |
| **Anomalies** | Prevents anomalies | May reintroduce anomalies |

### Functions and Procedures (Questions 59-65)

**59. What are the types of functions in SQL?**

SQL functions are categorized into several types based on their behavior and return values:

**1. Scalar Functions (Single-Value Functions):**
```sql
-- String functions
SELECT UPPER(first_name), LENGTH(last_name), SUBSTRING(email, 1, 5)
FROM employees;

-- Numeric functions
SELECT ABS(salary_change), ROUND(salary/12, 2), CEILING(bonus_percentage)
FROM employees;

-- Date functions
SELECT GETDATE(), DATEPART(year, hire_date), DATEDIFF(day, hire_date, GETDATE())
FROM employees;
```

**2. Aggregate Functions (Multi-Row Functions):**
```sql
-- Basic aggregates
SELECT COUNT(*), SUM(salary), AVG(salary), MIN(hire_date), MAX(salary)
FROM employees;

-- Advanced aggregates
SELECT STDDEV(salary), VARIANCE(salary), GROUP_CONCAT(name)
FROM employees
GROUP BY department_id;
```

**3. Table-Valued Functions:**
```sql
-- Inline table-valued function
CREATE FUNCTION GetEmployeesByDept(@dept_id INT)
RETURNS TABLE
AS
RETURN (
    SELECT name, salary, hire_date
    FROM employees 
    WHERE department_id = @dept_id
);

-- Usage
SELECT * FROM GetEmployeesByDept(5);
```

**4. Window Functions:**
```sql
-- Ranking functions
SELECT name, salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) as row_num,
       RANK() OVER (ORDER BY salary DESC) as rank_num,
       DENSE_RANK() OVER (ORDER BY salary DESC) as dense_rank
FROM employees;

-- Analytical functions
SELECT name, salary,
       LAG(salary) OVER (ORDER BY hire_date) as prev_salary,
       LEAD(salary) OVER (ORDER BY hire_date) as next_salary
FROM employees;
```

**5. System Functions:**
```sql
-- Information functions
SELECT USER(), DATABASE(), VERSION(), CONNECTION_ID();

-- Control flow functions
SELECT name, 
       CASE 
           WHEN salary > 80000 THEN 'High'
           WHEN salary > 50000 THEN 'Medium'
           ELSE 'Low'
       END as salary_band
FROM employees;
```

**60. What is a stored procedure?**[7][8]

A stored procedure is a precompiled collection of SQL statements and procedural logic stored in the database server that can be executed as a single unit. Stored procedures encapsulate business logic and provide a consistent interface for complex operations.[8]

**Basic Stored Procedure:**[7]
```sql
-- Create stored procedure
CREATE PROCEDURE GetEmployeeInfo(@emp_id INT)
AS
BEGIN
    SELECT e.name, e.salary, d.department_name
    FROM employees e
    JOIN departments d ON e.department_id = d.id
    WHERE e.employee_id = @emp_id;
END

-- Execute stored procedure
EXEC GetEmployeeInfo 123;
```

**Advanced Stored Procedure with Parameters:**[8]
```sql
CREATE PROCEDURE UpdateEmployeeSalary(
    @emp_id INT,
    @new_salary DECIMAL(10,2),
    @result_message VARCHAR(100) OUTPUT
)
AS
BEGIN
    DECLARE @old_salary DECIMAL(10,2);
    
    -- Get current salary
    SELECT @old_salary = salary FROM employees WHERE employee_id = @emp_id;
    
    -- Validate input
    IF @old_salary IS NULL
    BEGIN
        SET @result_message = 'Employee not found';
        RETURN -1;
    END
    
    -- Update salary
    UPDATE employees 
    SET salary = @new_salary, 
        last_modified = GETDATE()
    WHERE employee_id = @emp_id;
    
    SET @result_message = 'Salary updated from ' + CAST(@old_salary AS VARCHAR) + 
                         ' to ' + CAST(@new_salary AS VARCHAR);
    RETURN 0;
END
```

**Benefits of Stored Procedures:**[8]
- **Performance**: Precompiled and cached execution plans
- **Security**: Centralized access control, prevents SQL injection[9]
- **Reusability**: Single definition used by multiple applications
- **Maintainability**: Business logic centralized in database
- **Network Traffic**: Reduced data transfer between client and server
- **Transaction Control**: Built-in transaction management

**61. How do you create a stored procedure in SQL?**[7]

The syntax varies by database system, but follows similar patterns:

**SQL Server:**
```sql
CREATE PROCEDURE uspGetDepartmentEmployees
    @DeptID INT,
    @MinSalary DECIMAL(10,2) = 0
AS
BEGIN
    SET NOCOUNT ON;  -- Reduce network traffic
    
    BEGIN TRY
        SELECT 
            e.employee_id,
            e.first_name + ' ' + e.last_name AS full_name,
            e.salary,
            e.hire_date
        FROM employees e
        WHERE e.department_id = @DeptID 
          AND e.salary >= @MinSalary
        ORDER BY e.salary DESC;
    END TRY
    BEGIN CATCH
        PRINT 'Error occurred: ' + ERROR_MESSAGE();
    END CATCH
END
```

**MySQL:**
```sql
DELIMITER //
CREATE PROCEDURE GetDepartmentStats(IN dept_id INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_count INT;
    DECLARE avg_sal DECIMAL(10,2);
    
    -- Get department statistics
    SELECT COUNT(*), AVG(salary)
    INTO emp_count, avg_sal
    FROM employees
    WHERE department_id = dept_id;
    
    -- Return results
    SELECT emp_count AS employee_count, avg_sal AS average_salary;
END //
DELIMITER ;
```

**PostgreSQL:**
```sql
CREATE OR REPLACE FUNCTION get_employee_hierarchy(mgr_id INT)
RETURNS TABLE(employee_id INT, name VARCHAR, level INT)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    WITH RECURSIVE employee_tree AS (
        SELECT e.employee_id, e.name, 1 as level
        FROM employees e
        WHERE e.manager_id = mgr_id
        
        UNION ALL
        
        SELECT e.employee_id, e.name, et.level + 1
        FROM employees e
        JOIN employee_tree et ON e.manager_id = et.employee_id
    )
    SELECT * FROM employee_tree ORDER BY level, name;
END $$;
```

**62. What are triggers in SQL? When would you use them?**[10]

Triggers are special stored procedures that automatically execute (fire) in response to specific events in a database table or view. Unlike stored procedures, triggers cannot be called directly - they respond to database events.[10]

**Types of Triggers:**[10]

**1. DML Triggers (Data Manipulation Language):**
```sql
-- AFTER INSERT trigger
CREATE TRIGGER trg_employee_audit
ON employees
AFTER INSERT
AS
BEGIN
    INSERT INTO audit_log (table_name, action, user_name, timestamp, record_id)
    SELECT 'employees', 'INSERT', SYSTEM_USER, GETDATE(), inserted.employee_id
    FROM inserted;
END

-- BEFORE UPDATE trigger (MySQL)
CREATE TRIGGER trg_salary_validation
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary < OLD.salary * 0.8 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Salary reduction cannot exceed 20%';
    END IF;
END
```

**2. DDL Triggers (Data Definition Language):**
```sql
-- SQL Server DDL trigger
CREATE TRIGGER trg_prevent_table_drop
ON DATABASE
FOR DROP_TABLE
AS
BEGIN
    PRINT 'Table drops are not allowed in this database';
    ROLLBACK TRANSACTION;
END
```

**3. INSTEAD OF Triggers:**
```sql
-- For views that cannot be directly updated
CREATE TRIGGER trg_view_update
ON vw_employee_summary
INSTEAD OF UPDATE
AS
BEGIN
    UPDATE employees 
    SET salary = inserted.salary
    FROM employees e
    JOIN inserted i ON e.employee_id = i.employee_id;
    
    UPDATE departments
    SET budget = inserted.department_budget
    FROM departments d
    JOIN inserted i ON d.department_id = i.department_id;
END
```

**When to Use Triggers:**[10]
- **Auditing**: Track changes to sensitive data
- **Business Rules**: Enforce complex business logic
- **Data Validation**: Complex validation beyond simple constraints
- **Automatic Calculations**: Update derived values automatically
- **Referential Integrity**: Maintain data consistency across related tables
- **Logging**: Record database activity for compliance

**Best Practices and Considerations:**
- **Performance Impact**: Triggers add overhead to DML operations
- **Debugging**: Can make troubleshooting more complex
- **Cascading Effects**: One trigger can fire others
- **Error Handling**: Include proper exception handling
- **Documentation**: Document trigger logic thoroughly

**63. What are the different types of triggers?**[10]

Triggers are classified by timing and event type:

**By Timing:**

**1. BEFORE Triggers:**
```sql
-- Fire before the triggering event
CREATE TRIGGER trg_validate_employee
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
BEGIN
    -- Validate data before it's committed
    IF NEW.hire_date > CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Hire date cannot be in future';
    END IF;
END
```

**2. AFTER Triggers:**
```sql
-- Fire after the triggering event
CREATE TRIGGER trg_update_department_count
AFTER INSERT ON employees
AS
BEGIN
    UPDATE departments 
    SET employee_count = (
        SELECT COUNT(*) 
        FROM employees 
        WHERE department_id = departments.department_id
    )
    WHERE department_id IN (SELECT department_id FROM inserted);
END
```

**3. INSTEAD OF Triggers:**
```sql
-- Replace the triggering event (primarily for views)
CREATE TRIGGER trg_complex_view_insert
ON vw_employee_details
INSTEAD OF INSERT
AS
BEGIN
    -- Custom logic to insert into multiple underlying tables
    INSERT INTO employees (name, department_id)
    SELECT name, department_id FROM inserted;
    
    INSERT INTO employee_details (employee_id, address, phone)
    SELECT SCOPE_IDENTITY(), address, phone FROM inserted;
END
```

**By Event Type:**

**DML Triggers:**
- **INSERT Triggers**: Fire when new rows are added
- **UPDATE Triggers**: Fire when existing rows are modified
- **DELETE Triggers**: Fire when rows are removed

**DDL Triggers:**
- **CREATE Triggers**: Fire when objects are created
- **ALTER Triggers**: Fire when objects are modified
- **DROP Triggers**: Fire when objects are deleted

**Logon Triggers:**
```sql
-- SQL Server example
CREATE TRIGGER trg_logon_audit
ON ALL SERVER
FOR LOGON
AS
BEGIN
    INSERT INTO login_audit (login_name, login_time, host_name)
    VALUES (ORIGINAL_LOGIN(), GETDATE(), HOST_NAME());
END
```

### Data Types and Constraints (Questions 64-68)

**64. What are the different constraint types in SQL?**

SQL constraints are rules enforced on table columns to maintain data integrity and consistency:

**1. NOT NULL Constraint:**
```sql
CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);
```

**2. UNIQUE Constraint:**
```sql
-- Single column unique
ALTER TABLE employees ADD CONSTRAINT uk_employee_email UNIQUE (email);

-- Multi-column unique
ALTER TABLE employees ADD CONSTRAINT uk_employee_ssn_dob UNIQUE (ssn, date_of_birth);
```

**3. PRIMARY KEY Constraint:**
```sql
-- Single column primary key
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Composite primary key
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id)
);
```

**4. FOREIGN KEY Constraint:**
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
```

**5. CHECK Constraint:**
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    salary DECIMAL(10,2) CHECK (salary > 0),
    age INT CHECK (age >= 18 AND age <= 65),
    status VARCHAR(20) CHECK (status IN ('Active', 'Inactive', 'Terminated'))
);

-- Complex check constraint
ALTER TABLE orders ADD CONSTRAINT chk_order_dates 
CHECK (ship_date >= order_date OR ship_date IS NULL);
```

**6. DEFAULT Constraint:**
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    hire_date DATE DEFAULT GETDATE(),
    status VARCHAR(20) DEFAULT 'Active',
    salary DECIMAL(10,2) DEFAULT 40000.00
);
```

**65. How do you add constraints to existing tables?**

Constraints can be added to existing tables using ALTER TABLE statements:

**Adding NOT NULL:**
```sql
-- Must ensure no NULL values exist first
UPDATE employees SET phone = 'Unknown' WHERE phone IS NULL;
ALTER TABLE employees ALTER COLUMN phone VARCHAR(20) NOT NULL;
```

**Adding PRIMARY KEY:**
```sql
-- Ensure no duplicates exist
ALTER TABLE employees ADD CONSTRAINT pk_employee_id PRIMARY KEY (employee_id);
```

**Adding FOREIGN KEY:**
```sql
ALTER TABLE employees 
ADD CONSTRAINT fk_employee_department 
FOREIGN KEY (department_id) REFERENCES departments(department_id);
```

**Adding CHECK Constraints:**
```sql
ALTER TABLE employees 
ADD CONSTRAINT chk_salary_positive CHECK (salary > 0);

ALTER TABLE employees 
ADD CONSTRAINT chk_age_range CHECK (age BETWEEN 18 AND 65);
```

**Adding UNIQUE Constraints:**
```sql
ALTER TABLE employees 
ADD CONSTRAINT uk_employee_ssn UNIQUE (social_security_number);
```

**Constraint Management:**
```sql
-- Disable constraint (SQL Server)
ALTER TABLE employees NOCHECK CONSTRAINT chk_salary_positive;

-- Enable constraint
ALTER TABLE employees CHECK CONSTRAINT chk_salary_positive;

-- Drop constraint
ALTER TABLE employees DROP CONSTRAINT chk_salary_positive;

-- View constraints
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'employees';
```

**66. What is referential integrity?**

Referential integrity is a database concept that ensures relationships between tables remain consistent. It guarantees that foreign key values in one table correspond to valid primary key values in the referenced table.

**Referential Integrity Rules:**
- **Insert Rule**: Cannot insert a row with foreign key value that doesn't exist in parent table
- **Update Rule**: Cannot update foreign key to non-existent parent key
- **Delete Rule**: Cannot delete parent row while child rows reference it (unless specified actions)

**Referential Actions:**

**1. ON DELETE Actions:**
```sql
-- CASCADE: Delete child rows when parent is deleted
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

-- SET NULL: Set foreign key to NULL when parent is deleted
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id) ON DELETE SET NULL
);

-- RESTRICT/NO ACTION: Prevent parent deletion if children exist
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id) ON DELETE RESTRICT
);

-- SET DEFAULT: Set foreign key to default value
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    category_id INT DEFAULT 1,
    FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE SET DEFAULT
);
```

**2. ON UPDATE Actions:**
```sql
-- CASCADE: Update foreign keys when parent key changes
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON UPDATE CASCADE
);
```

**Benefits of Referential Integrity:**
- **Data Consistency**: Prevents orphaned records
- **Relationship Maintenance**: Ensures valid relationships
- **Data Quality**: Improves overall data reliability
- **Business Logic**: Enforces business rules at database level

**67. What are check constraints?**

Check constraints define conditions that column values must satisfy. They enforce domain integrity by limiting the range of values that can be stored in columns.

**Basic Check Constraints:**
```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    discount_percent INT CHECK (discount_percent BETWEEN 0 AND 100),
    category VARCHAR(50) CHECK (category IN ('Electronics', 'Clothing', 'Books', 'Home'))
);
```

**Complex Check Constraints:**
```sql
-- Multiple column check
CREATE TABLE events (
    event_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    CHECK (end_date >= start_date)
);

-- Conditional check
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_type VARCHAR(20),
    hourly_rate DECIMAL(8,2),
    annual_salary DECIMAL(10,2),
    CHECK (
        (employee_type = 'Hourly' AND hourly_rate IS NOT NULL AND annual_salary IS NULL) OR
        (employee_type = 'Salaried' AND annual_salary IS NOT NULL AND hourly_rate IS NULL)
    )
);

-- Pattern matching check
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    email VARCHAR(100) CHECK (email LIKE '%_@_%'),
    phone VARCHAR(15) CHECK (phone LIKE '+%-%-%' OR phone LIKE '(%') 
);
```

**Advanced Check Constraint Examples:**
```sql
-- Range checks with business logic
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE CHECK (order_date <= GETDATE()),
    ship_date DATE,
    total_amount DECIMAL(12,2) CHECK (total_amount >= 0),
    CHECK (ship_date IS NULL OR ship_date >= order_date)
);

-- Cross-column validation
CREATE TABLE loan_applications (
    application_id INT PRIMARY KEY,
    loan_amount DECIMAL(12,2),
    annual_income DECIMAL(12,2),
    debt_to_income_ratio AS (loan_amount * 12 / annual_income),
    CHECK (loan_amount <= annual_income * 5), -- Max 5x annual income
    CHECK (debt_to_income_ratio <= 0.43) -- Max 43% debt-to-income
);
```

**Check Constraint Management:**
```sql
-- Add check constraint to existing table
ALTER TABLE products 
ADD CONSTRAINT chk_product_weight CHECK (weight > 0 AND weight < 1000);

-- Disable check constraint (SQL Server)
ALTER TABLE products NOCHECK CONSTRAINT chk_product_weight;

-- Drop check constraint
ALTER TABLE products DROP CONSTRAINT chk_product_weight;

-- View check constraints
SELECT 
    cc.CONSTRAINT_NAME,
    cc.CHECK_CLAUSE,
    cc.TABLE_NAME
FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS cc
WHERE cc.TABLE_NAME = 'products';
```

**68. What is a composite key?**

A composite key (also called compound key) consists of two or more columns that together uniquely identify each row in a table. No single column in the composite key can uniquely identify rows by itself.

**Composite Primary Key:**
```sql
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    PRIMARY KEY (order_id, product_id)  -- Composite primary key
);

-- Alternative syntax
CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    semester VARCHAR(20),
    grade CHAR(2),
    CONSTRAINT pk_student_courses PRIMARY KEY (student_id, course_id, semester)
);
```

**Composite Foreign Key:**
```sql
-- Parent table with composite key
CREATE TABLE course_sections (
    course_id INT,
    section_id INT,
    instructor_id INT,
    room_number VARCHAR(10),
    PRIMARY KEY (course_id, section_id)
);

-- Child table referencing composite key
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    section_id INT,
    enrollment_date DATE,
    FOREIGN KEY (course_id, section_id) REFERENCES course_sections(course_id, section_id)
);
```

**Composite Unique Key:**
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    ssn VARCHAR(11),
    email VARCHAR(100),
    department_id INT,
    employee_number VARCHAR(20),
    -- Composite unique constraint
    UNIQUE (department_id, employee_number)  -- Unique within department
);
```

**When to Use Composite Keys:**
- **Many-to-Many Relationships**: Junction tables often use composite keys
- **Natural Keys**: When multiple columns naturally identify a record
- **Temporal Data**: Time-based data with entity + time period keys
- **Hierarchical Data**: Parent-child relationships within same table

**Composite Key Considerations:**
```sql
-- Indexing strategy for composite keys
CREATE INDEX idx_order_items_product ON order_items (product_id, order_id);
CREATE INDEX idx_order_items_order ON order_items (order_id);

-- Query patterns with composite keys
-- Efficient: Uses full key
SELECT * FROM order_items WHERE order_id = 123 AND product_id = 456;

-- Less efficient: Uses only part of key
SELECT * FROM order_items WHERE product_id = 456;

-- Most efficient: Matches index order
SELECT * FROM order_items WHERE order_id = 123;
```

### Transaction Management (Questions 69-70)

**69. What is a transaction in SQL?**[11][12]

A transaction is a logical unit of work that consists of one or more SQL statements executed as a single unit. Transactions ensure data consistency and integrity by following the "all-or-nothing" principle - either all operations succeed, or none are applied to the database.[11]

**Transaction Characteristics:**
```sql
-- Basic transaction structure
BEGIN TRANSACTION;
    UPDATE accounts SET balance = balance - 1000 WHERE account_id = 'A123';
    UPDATE accounts SET balance = balance + 1000 WHERE account_id = 'B456';
    
    -- Check for errors or conditions
    IF @@ERROR <> 0 OR (SELECT balance FROM accounts WHERE account_id = 'A123') < 0
    BEGIN
        ROLLBACK TRANSACTION;  -- Undo all changes
        PRINT 'Transaction failed - insufficient funds';
    END
    ELSE
    BEGIN
        COMMIT TRANSACTION;    -- Make changes permanent
        PRINT 'Transfer successful';
    END
```

**Transaction Control Statements:**

**1. BEGIN TRANSACTION:**
```sql
-- SQL Server
BEGIN TRANSACTION transfer_money;

-- MySQL
START TRANSACTION;

-- PostgreSQL
BEGIN;
```

**2. COMMIT:**
```sql
-- Make all changes permanent
COMMIT TRANSACTION;
-- or simply
COMMIT;
```

**3. ROLLBACK:**
```sql
-- Undo all changes in current transaction
ROLLBACK TRANSACTION;
-- or simply
ROLLBACK;
```

**4. SAVEPOINT:**
```sql
-- Create checkpoint within transaction
BEGIN TRANSACTION;
    INSERT INTO orders (customer_id, total) VALUES (123, 500.00);
    SAVEPOINT order_created;
    
    INSERT INTO order_items (order_id, product_id, quantity) VALUES (LAST_INSERT_ID(), 1, 2);
    SAVEPOINT items_added;
    
    -- If error occurs, can rollback to savepoint
    IF @@ERROR <> 0
        ROLLBACK TO SAVEPOINT order_created;
    ELSE
        COMMIT;
```

**Transaction Examples:**

**Banking Transfer:**
```sql
BEGIN TRANSACTION bank_transfer;
    DECLARE @source_balance DECIMAL(12,2);
    DECLARE @transfer_amount DECIMAL(12,2) = 1500.00;
    
    -- Check source account balance
    SELECT @source_balance = balance 
    FROM accounts 
    WHERE account_id = 'SOURCE123';
    
    IF @source_balance >= @transfer_amount
    BEGIN
        -- Debit source account
        UPDATE accounts 
        SET balance = balance - @transfer_amount,
            last_transaction_date = GETDATE()
        WHERE account_id = 'SOURCE123';
        
        -- Credit destination account
        UPDATE accounts 
        SET balance = balance + @transfer_amount,
            last_transaction_date = GETDATE()
        WHERE account_id = 'DEST456';
        
        -- Log transaction
        INSERT INTO transaction_log (from_account, to_account, amount, transaction_date)
        VALUES ('SOURCE123', 'DEST456', @transfer_amount, GETDATE());
        
        COMMIT TRANSACTION;
        PRINT 'Transfer completed successfully';
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION;
        PRINT 'Insufficient funds';
    END
```

**70. What are ACID properties in SQL?**[12][13][11]

ACID properties are fundamental characteristics that ensure database transactions are processed reliably and maintain data integrity.[12]

**A - Atomicity:**[11][12]
Ensures that a transaction is treated as a single, indivisible unit - either all operations succeed or none are applied.

```sql
-- Example: All-or-nothing order processing
BEGIN TRANSACTION order_processing;
    -- Reduce inventory
    UPDATE products SET stock_quantity = stock_quantity - 5 WHERE product_id = 101;
    
    -- Create order
    INSERT INTO orders (customer_id, total_amount) VALUES (123, 299.99);
    
    -- Add order items  
    INSERT INTO order_items (order_id, product_id, quantity) 
    VALUES (SCOPE_IDENTITY(), 101, 5);
    
    -- If ANY operation fails, ALL are rolled back
    IF @@ERROR <> 0
        ROLLBACK TRANSACTION;
    ELSE
        COMMIT TRANSACTION;
```

**C - Consistency:**[12][11]
Ensures the database remains in a valid state before and after transactions, maintaining all defined rules, constraints, and relationships.

```sql
-- Example: Maintaining account balance consistency
CREATE TRIGGER trg_account_consistency
ON accounts
AFTER UPDATE
AS
BEGIN
    -- Ensure no negative balances (business rule)
    IF EXISTS (SELECT 1 FROM inserted WHERE balance < 0)
    BEGIN
        ROLLBACK TRANSACTION;
        RAISERROR('Account balance cannot be negative', 16, 1);
    END
    
    -- Ensure total bank balance remains constant in transfers
    DECLARE @total_change DECIMAL(12,2);
    SELECT @total_change = SUM(i.balance - d.balance)
    FROM inserted i
    JOIN deleted d ON i.account_id = d.account_id;
    
    IF ABS(@total_change) > 0.01  -- Allow for rounding
    BEGIN
        ROLLBACK TRANSACTION;
        RAISERROR('Transaction violates balance consistency', 16, 1);
    END
END
```

**I - Isolation:**[12]
Ensures that concurrent transactions don't interfere with each other, maintaining data integrity in multi-user environments.

**Isolation Levels:**[14]

```sql
-- READ UNCOMMITTED (lowest isolation)
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;
    SELECT * FROM accounts WHERE account_id = '123';  -- May read dirty data
COMMIT;

-- READ COMMITTED (default in most systems)
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;
    SELECT * FROM accounts WHERE account_id = '123';  -- Only committed data
COMMIT;

-- REPEATABLE READ
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;
    SELECT balance FROM accounts WHERE account_id = '123';
    -- Balance won't change during transaction
    SELECT balance FROM accounts WHERE account_id = '123';  -- Same result
COMMIT;

-- SERIALIZABLE (highest isolation)
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;
    SELECT * FROM accounts WHERE balance > 1000;  -- Prevents phantom reads
COMMIT;
```

**D - Durability:**[11][12]
Ensures that once a transaction is committed, its changes are permanent and survive system failures.

```sql
-- Example: Ensuring durability through proper transaction management
BEGIN TRANSACTION critical_update;
    UPDATE customer_profiles 
    SET credit_limit = credit_limit * 1.1 
    WHERE credit_score > 750;
    
    -- Force write to disk (system-specific)
    CHECKPOINT;  -- SQL Server
    -- or FLUSH TABLES; -- MySQL
    
    COMMIT TRANSACTION;  -- Changes are now durable
    
    -- Even if system crashes after COMMIT, changes persist
```

**ACID Implementation Examples:**

**Complete ACID Transaction:**
```sql
CREATE PROCEDURE ProcessOrder(@customer_id INT, @product_id INT, @quantity INT)
AS
BEGIN
    BEGIN TRANSACTION order_transaction;
    
    BEGIN TRY
        -- ATOMICITY: All operations succeed or fail together
        DECLARE @available_stock INT, @product_price DECIMAL(10,2);
        
        -- Check inventory (with locking for ISOLATION)
        SELECT @available_stock = stock_quantity, @product_price = price
        FROM products WITH (UPDLOCK)
        WHERE product_id = @product_id;
        
        -- CONSISTENCY: Enforce business rules
        IF @available_stock < @quantity
            THROW 50001, 'Insufficient stock', 1;
        
        -- Update inventory
        UPDATE products 
        SET stock_quantity = stock_quantity - @quantity
        WHERE product_id = @product_id;
        
        -- Create order
        INSERT INTO orders (customer_id, order_date, total_amount)
        VALUES (@customer_id, GETDATE(), @quantity * @product_price);
        
        -- DURABILITY: Commit makes changes permanent
        COMMIT TRANSACTION;
        
        PRINT 'Order processed successfully';
        
    END TRY
    BEGIN CATCH
        -- ATOMICITY: Rollback on any error
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
```

**Concurrency Control Example:**
```sql
-- Demonstrating ISOLATION through locking
-- Transaction 1: Transfer money
BEGIN TRANSACTION;
    SELECT balance FROM accounts WITH (UPDLOCK) WHERE account_id = '123';
    -- Lock prevents other transactions from modifying this account
    UPDATE accounts SET balance = balance - 500 WHERE account_id = '123';
    UPDATE accounts SET balance = balance + 500 WHERE account_id = '456';
COMMIT;

-- Transaction 2: Will wait for Transaction 1 to complete
BEGIN TRANSACTION;
    SELECT balance FROM accounts WHERE account_id = '123';  -- Waits for lock release
COMMIT;
```



[1](https://sites.google.com/site/interviewsharing/data-model/sql-server-interview-questions-answers-part-2)
[2](https://dotnettutorials.net/lesson/sql-server-indexes-interview-questions-answers/)
[3](https://reliasoftware.com/blog/types-of-indexes-in-sql)
[4](https://www.indeed.com/career-advice/interviewing/normalization-interview-question)
[5](https://www.simplilearn.com/tutorials/sql-tutorial/what-is-normalization-in-sql)
[6](https://www.geeksforgeeks.org/commonly-asked-dbms-interview-questions/)
[7](https://www.youtube.com/watch?v=VZ_3HFshOYE)
[8](https://in.indeed.com/career-advice/interviewing/stored-procedure-interview-questions)
[9](https://upesonline.ac.in/blog/advanced-sql-interview-questions)
[10](https://dotnettutorials.net/lesson/sql-server-triggers-interview-questions-answers/)
[11](https://www.c-sharpcorner.com/article/acid-properties-in-sql-server3/)
[12](https://www.geeksforgeeks.org/dbms/acid-properties-in-dbms/)
[13](https://interviewprep.org/acid-interview-questions/)
[14](https://www.simplilearn.com/top-sql-interview-questions-and-answers-article)
[15](https://interviewbaba.com/sql-performance-tuning-interview-questions/)
[16](https://www.stratascratch.com/blog/sql-window-functions-interview-questions/)
[17](https://codesignal.com/blog/interview-prep/28-sql-interview-questions-and-answers-from-beginner-to-senior-level/)
[18](https://techbeamers.com/sql-performance-interview-questions-answers/)
[19](https://datalemur.com/blog/sql-window-functions-interview-questions)
[20](https://www.interviewbit.com/dbms-interview-questions/)
[21](https://www.dbvis.com/thetable/top-sql-performance-tuning-interview-questions-and-answers/)
[22](https://www.linkedin.com/posts/aditya-chandak-24692825_sql-performance-tuning-interview-questions-activity-7295990605426364416-7I4w)
[23](https://www.remotely.works/blog/top-advanced-sql-interview-questions-and-answers)



## Advanced Query Techniques (Questions 71-77)

### 71. What are Common Table Expressions (CTEs)? When would you use them?

A Common Table Expression (CTE) is a named temporary result set that exists within the scope of a single SQL statement. CTEs are defined using the WITH clause and can be referenced within the same query, making complex queries more readable and maintainable.[1]

**Basic CTE Syntax:**
```sql
WITH cte_name (column1, column2, ...) AS (
    -- CTE query definition
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition
)
-- Main query using the CTE
SELECT * FROM cte_name WHERE condition;
```

**Simple CTE Example:**[1]
```sql
-- Find employees with above-average salaries
WITH avg_salary AS (
    SELECT AVG(salary) as average_salary
    FROM employees
)
SELECT e.name, e.salary, a.average_salary
FROM employees e
CROSS JOIN avg_salary a
WHERE e.salary > a.average_salary;
```

**Multiple CTEs:**[1]
```sql
WITH 
department_stats AS (
    SELECT department_id, 
           COUNT(*) as employee_count,
           AVG(salary) as avg_salary
    FROM employees
    GROUP BY department_id
),
high_performing_depts AS (
    SELECT department_id
    FROM department_stats
    WHERE employee_count > 10 AND avg_salary > 60000
)
SELECT e.name, e.salary, d.name as department
FROM employees e
JOIN departments d ON e.department_id = d.id
WHERE e.department_id IN (SELECT department_id FROM high_performing_depts);
```

**Recursive CTEs:**[1]
```sql
-- Find employee hierarchy (manager-subordinate relationships)
WITH employee_hierarchy AS (
    -- Anchor: Find top-level managers
    SELECT employee_id, name, manager_id, 1 as level
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    -- Recursive: Find subordinates
    SELECT e.employee_id, e.name, e.manager_id, eh.level + 1
    FROM employees e
    JOIN employee_hierarchy eh ON e.manager_id = eh.employee_id
)
SELECT * FROM employee_hierarchy ORDER BY level, name;
```

**When to Use CTEs:**[1]
- **Complex Subqueries**: Replace complex nested subqueries with more readable code
- **Recursive Operations**: Handle hierarchical data (organizational charts, category trees)
- **Code Reusability**: Use the same result set multiple times within a query
- **Query Readability**: Break down complex logic into manageable pieces
- **Temporary Calculations**: Store intermediate results for complex calculations

### 72. What are window functions in SQL?[2][1]

Window functions perform calculations across a set of table rows related to the current row, without collapsing the rows into a single result (unlike aggregate functions with GROUP BY). They provide powerful analytical capabilities while preserving individual row data.[2][1]

**Basic Window Function Syntax:**[2]
```sql
function_name([arguments]) OVER (
    [PARTITION BY column1, column2, ...]
    [ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...]
    [ROWS/RANGE BETWEEN start_boundary AND end_boundary]
)
```

**Types of Window Functions:**[2][1]

**1. Ranking Functions:**
```sql
SELECT 
    name, 
    salary,
    department_id,
    -- Assign unique sequential numbers
    ROW_NUMBER() OVER (ORDER BY salary DESC) as row_num,
    
    -- Rank with gaps for ties
    RANK() OVER (ORDER BY salary DESC) as rank_with_gaps,
    
    -- Dense rank without gaps
    DENSE_RANK() OVER (ORDER BY salary DESC) as dense_rank,
    
    -- Percentile rank (0 to 1)
    PERCENT_RANK() OVER (ORDER BY salary DESC) as percentile
FROM employees;
```

**2. Aggregate Window Functions:**[1]
```sql
SELECT 
    name, 
    salary, 
    department_id,
    -- Running totals
    SUM(salary) OVER (ORDER BY hire_date) as running_total,
    
    -- Department averages (without grouping)
    AVG(salary) OVER (PARTITION BY department_id) as dept_avg,
    
    -- Moving average over last 3 employees
    AVG(salary) OVER (ORDER BY hire_date ROWS 2 PRECEDING) as moving_avg
FROM employees;
```

**3. Value/Offset Functions:**[2]
```sql
SELECT 
    name, 
    salary, 
    hire_date,
    -- Previous employee's salary
    LAG(salary, 1, 0) OVER (ORDER BY hire_date) as prev_salary,
    
    -- Next employee's salary
    LEAD(salary, 1, 0) OVER (ORDER BY hire_date) as next_salary,
    
    -- First salary in partition
    FIRST_VALUE(salary) OVER (PARTITION BY department_id ORDER BY hire_date) as first_dept_salary,
    
    -- Last salary in partition
    LAST_VALUE(salary) OVER (PARTITION BY department_id ORDER BY hire_date 
                            ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as last_dept_salary
FROM employees;
```

**Advanced Window Function Examples:**[1]

**Running Calculations:**
```sql
-- Running totals and percentages
SELECT 
    order_date,
    daily_sales,
    SUM(daily_sales) OVER (ORDER BY order_date) as running_total,
    daily_sales * 100.0 / SUM(daily_sales) OVER () as percentage_of_total,
    AVG(daily_sales) OVER (ORDER BY order_date ROWS 6 PRECEDING) as seven_day_avg
FROM daily_sales_summary
ORDER BY order_date;
```

**Comparative Analysis:**
```sql
-- Compare each employee to department statistics
SELECT 
    name,
    salary,
    department_id,
    salary - AVG(salary) OVER (PARTITION BY department_id) as salary_vs_dept_avg,
    (salary - MIN(salary) OVER (PARTITION BY department_id)) * 100.0 / 
    (MAX(salary) OVER (PARTITION BY department_id) - MIN(salary) OVER (PARTITION BY department_id)) as salary_percentile_in_dept
FROM employees;
```

### 73. What are recursive queries and how do they work?

Recursive queries use Common Table Expressions (CTEs) to repeatedly execute a query until a termination condition is met. They're essential for processing hierarchical or tree-structured data.[1]

**Recursive CTE Structure:**
```sql
WITH RECURSIVE cte_name AS (
    -- Base case (anchor member)
    SELECT initial_columns
    FROM table_name
    WHERE base_condition
    
    UNION ALL
    
    -- Recursive case (recursive member)
    SELECT modified_columns
    FROM table_name t
    JOIN cte_name c ON join_condition
    WHERE recursive_condition
)
SELECT * FROM cte_name;
```

**Organizational Hierarchy Example:**
```sql
-- Find all employees under a specific manager
WITH RECURSIVE employee_tree AS (
    -- Base case: Find the specific manager
    SELECT employee_id, name, manager_id, title, 0 as level
    FROM employees
    WHERE employee_id = 100  -- CEO or specific manager
    
    UNION ALL
    
    -- Recursive case: Find direct reports
    SELECT e.employee_id, e.name, e.manager_id, e.title, et.level + 1
    FROM employees e
    JOIN employee_tree et ON e.manager_id = et.employee_id
    WHERE et.level < 10  -- Prevent infinite recursion
)
SELECT 
    REPEAT('  ', level) || name as indented_name,
    title,
    level
FROM employee_tree
ORDER BY level, name;
```

**Category Hierarchy Example:**
```sql
-- Navigate product category tree
WITH RECURSIVE category_path AS (
    -- Base case: Find root categories
    SELECT category_id, name, parent_id, name as path, 0 as depth
    FROM categories
    WHERE parent_id IS NULL
    
    UNION ALL
    
    -- Recursive case: Build paths for subcategories
    SELECT c.category_id, c.name, c.parent_id, 
           cp.path || ' > ' || c.name as path,
           cp.depth + 1
    FROM categories c
    JOIN category_path cp ON c.parent_id = cp.category_id
    WHERE cp.depth < 5  -- Limit depth
)
SELECT category_id, name, path, depth
FROM category_path
ORDER BY path;
```

**Bill of Materials Example:**[1]
```sql
-- Calculate total quantities needed for manufacturing
WITH RECURSIVE bom_explosion AS (
    -- Base case: Final product
    SELECT product_id, component_id, quantity_needed, 1 as level
    FROM bill_of_materials
    WHERE product_id = 'LAPTOP-001'
    
    UNION ALL
    
    -- Recursive case: Components of components
    SELECT bom.product_id, bom.component_id, 
           be.quantity_needed * bom.quantity_needed as quantity_needed,
           be.level + 1
    FROM bill_of_materials bom
    JOIN bom_explosion be ON bom.product_id = be.component_id
    WHERE be.level < 10
)
SELECT 
    component_id,
    SUM(quantity_needed) as total_quantity_needed
FROM bom_explosion
GROUP BY component_id
ORDER BY total_quantity_needed DESC;
```

### 74. What is the MERGE statement in SQL?

The MERGE statement combines INSERT, UPDATE, and DELETE operations into a single statement, allowing you to synchronize data between two tables based on matching conditions.[3]

**Basic MERGE Syntax:**
```sql
MERGE target_table AS target
USING source_table AS source
ON merge_condition
WHEN MATCHED THEN
    UPDATE SET column1 = source.column1, column2 = source.column2
WHEN NOT MATCHED BY TARGET THEN
    INSERT (column1, column2, ...) VALUES (source.column1, source.column2, ...)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE;
```

**Employee Data Synchronization Example:**
```sql
-- Synchronize employee data from staging table
MERGE employees AS target
USING employees_staging AS source
ON target.employee_id = source.employee_id

WHEN MATCHED AND source.last_modified > target.last_modified THEN
    UPDATE SET 
        name = source.name,
        salary = source.salary,
        department_id = source.department_id,
        last_modified = source.last_modified

WHEN NOT MATCHED BY TARGET THEN
    INSERT (employee_id, name, salary, department_id, hire_date, last_modified)
    VALUES (source.employee_id, source.name, source.salary, 
            source.department_id, source.hire_date, source.last_modified)

WHEN NOT MATCHED BY SOURCE THEN
    UPDATE SET status = 'INACTIVE', last_modified = GETDATE();
```

**Inventory Management Example:**
```sql
-- Update inventory based on sales transactions
MERGE inventory AS target
USING (
    SELECT product_id, SUM(quantity_sold) as total_sold
    FROM sales_transactions
    WHERE transaction_date = CAST(GETDATE() AS DATE)
    GROUP BY product_id
) AS source
ON target.product_id = source.product_id

WHEN MATCHED THEN
    UPDATE SET 
        current_stock = current_stock - source.total_sold,
        last_updated = GETDATE()

WHEN NOT MATCHED BY TARGET THEN
    INSERT (product_id, current_stock, last_updated)
    VALUES (source.product_id, -source.total_sold, GETDATE());
```

**Benefits of MERGE:**
- **Atomic Operations**: All changes happen in single transaction
- **Performance**: More efficient than separate INSERT/UPDATE/DELETE statements
- **Data Synchronization**: Ideal for ETL operations and data warehousing
- **Reduced Complexity**: Single statement handles multiple scenarios

### 75. What are analytical functions?[1]

Analytical functions are a subset of window functions specifically designed for complex analytical calculations. They perform statistical and mathematical operations across data sets without requiring GROUP BY clauses.[1]

**Statistical Functions:**
```sql
SELECT 
    department_id,
    name,
    salary,
    -- Standard deviation within department
    STDDEV(salary) OVER (PARTITION BY department_id) as dept_salary_stddev,
    
    -- Variance within department
    VAR_POP(salary) OVER (PARTITION BY department_id) as dept_salary_variance,
    
    -- Correlation coefficient
    CORR(salary, years_experience) OVER (PARTITION BY department_id) as salary_experience_corr
FROM employees;
```

**Distribution Functions:**
```sql
SELECT 
    name,
    salary,
    -- Percentile rankings
    PERCENT_RANK() OVER (ORDER BY salary) as percentile_rank,
    
    -- Cumulative distribution
    CUME_DIST() OVER (ORDER BY salary) as cumulative_distribution,
    
    -- Quartiles
    NTILE(4) OVER (ORDER BY salary) as quartile,
    
    -- Specific percentiles
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary) OVER () as median_salary,
    PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY salary) OVER () as p75_salary
FROM employees;
```

### 76. Explain the RANK(), DENSE_RANK(), and ROW_NUMBER() functions.[2][1]

These ranking functions assign sequential numbers to rows based on specified criteria, each with different handling of tied values.[2][1]

**Key Differences:**[2]
- **ROW_NUMBER()**: Always assigns unique sequential numbers (1, 2, 3, 4, 5...)
- **RANK()**: Assigns same rank to tied values, with gaps in sequence (1, 2, 2, 4, 5...)
- **DENSE_RANK()**: Assigns same rank to tied values, no gaps (1, 2, 2, 3, 4...)

**Comparative Example:**
```sql
SELECT 
    name,
    salary,
    department_id,
    -- ROW_NUMBER: Always unique, arbitrary ordering for ties
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) as row_num,
    
    -- RANK: Same rank for ties, gaps in numbering
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as rank_gaps,
    
    -- DENSE_RANK: Same rank for ties, no gaps
    DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as dense_rank
FROM employees
WHERE department_id IN (1, 2)
ORDER BY department_id, salary DESC;

-- Sample output:
-- name     salary  dept_id  row_num  rank_gaps  dense_rank
-- Alice    80000   1        1        1          1
-- Bob      75000   1        2        2          2
-- Charlie  75000   1        3        2          2  -- Same salary as Bob
-- David    70000   1        4        4          3  -- Note the gap in rank_gaps
```

**Practical Applications:**[2]

**Top N per Group:**
```sql
-- Find top 3 earners per department
SELECT name, department_id, salary
FROM (
    SELECT name, department_id, salary,
           DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as rn
    FROM employees
) ranked
WHERE rn <= 3;
```

**Pagination with ROW_NUMBER:**
```sql
-- Implement pagination (page 2, 10 records per page)
SELECT name, salary, hire_date
FROM (
    SELECT name, salary, hire_date,
           ROW_NUMBER() OVER (ORDER BY hire_date DESC) as rn
    FROM employees
) paginated
WHERE rn BETWEEN 11 AND 20;
```

### 77. What is the PARTITION BY clause?[2][1]

PARTITION BY divides the result set into partitions (groups) and applies the window function separately to each partition. It's similar to GROUP BY but doesn't collapse rows.[2][1]

**Syntax and Behavior:**[2]
```sql
function_name() OVER (
    PARTITION BY column1, column2, ...  -- Divides data into groups
    ORDER BY column3, column4, ...      -- Orders within each partition
)
```

**Department-wise Analysis:**
```sql
SELECT 
    name,
    department_id,
    salary,
    hire_date,
    
    -- Calculations within each department
    AVG(salary) OVER (PARTITION BY department_id) as dept_avg_salary,
    COUNT(*) OVER (PARTITION BY department_id) as dept_employee_count,
    
    -- Ranking within department
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as dept_salary_rank,
    
    -- Running totals within department (ordered by hire date)
    SUM(salary) OVER (PARTITION BY department_id ORDER BY hire_date) as dept_running_payroll
FROM employees
ORDER BY department_id, hire_date;
```

**Multiple Partition Levels:**
```sql
-- Analysis by department and job level
SELECT 
    name,
    department_id,
    job_level,
    salary,
    
    -- Department-level statistics
    AVG(salary) OVER (PARTITION BY department_id) as dept_avg,
    
    -- Department + Job level statistics
    AVG(salary) OVER (PARTITION BY department_id, job_level) as dept_level_avg,
    
    -- Compare to peers at same level
    salary - AVG(salary) OVER (PARTITION BY department_id, job_level) as diff_from_peer_avg
FROM employees
ORDER BY department_id, job_level, salary DESC;
```

**Without PARTITION BY (Global Calculations):**
```sql
SELECT 
    name,
    salary,
    department_id,
    
    -- Global statistics (across all employees)
    AVG(salary) OVER () as company_avg_salary,
    salary * 100.0 / SUM(salary) OVER () as percentage_of_total_payroll,
    
    -- Global ranking
    RANK() OVER (ORDER BY salary DESC) as company_salary_rank
FROM employees;
```

## Performance and Optimization (Questions 78-84)

### 78. How can you optimize slow SQL query performance?[4][5][6]

Query optimization involves systematic analysis and improvement of SQL statements to reduce execution time and resource consumption. Here's a comprehensive approach:[5][6]

**Step 1: Analyze Query Execution Plan**[4][5]
```sql
-- SQL Server
SET STATISTICS IO ON;
SET STATISTICS TIME ON;
EXPLAIN (ANALYZE, BUFFERS) your_query;

-- PostgreSQL
EXPLAIN (ANALYZE, BUFFERS, VERBOSE) your_query;

-- MySQL
EXPLAIN FORMAT=JSON your_query;
```

**Step 2: Identify Performance Bottlenecks**[6][5]

**Table Scans vs Index Seeks:**
```sql
-- Bad: Full table scan
SELECT * FROM employees WHERE UPPER(name) = 'JOHN DOE';

-- Good: Use functional index or restructure
CREATE INDEX idx_employees_name_upper ON employees((UPPER(name)));
-- or
SELECT * FROM employees WHERE name = 'John Doe';  -- Case-insensitive collation
```

**Inefficient JOIN Operations:**[5]
```sql
-- Bad: Cartesian product risk
SELECT * FROM orders o, customers c WHERE o.customer_id = c.id;

-- Good: Explicit JOIN with proper indexes
SELECT * FROM orders o 
INNER JOIN customers c ON o.customer_id = c.id;
-- Ensure indexes exist on join columns
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
```

**Step 3: Index Optimization**[6][5]

**Create Appropriate Indexes:**
```sql
-- Covering index for frequently accessed columns
CREATE INDEX idx_orders_covering 
ON orders(customer_id, order_date) 
INCLUDE (total_amount, status);

-- Filtered index for common WHERE conditions
CREATE INDEX idx_active_orders 
ON orders(order_date, customer_id) 
WHERE status = 'Active';
```

**Step 4: Query Rewriting Techniques**[6]

**Eliminate Subqueries When Possible:**
```sql
-- Slow: Correlated subquery
SELECT * FROM employees e1
WHERE salary > (SELECT AVG(salary) FROM employees e2 WHERE e2.department_id = e1.department_id);

-- Fast: Window function
SELECT * FROM (
    SELECT *, AVG(salary) OVER (PARTITION BY department_id) as dept_avg
    FROM employees
) e WHERE salary > dept_avg;
```

**Use Appropriate Joins:**
```sql
-- Slow: IN with subquery
SELECT * FROM orders WHERE customer_id IN (SELECT id FROM customers WHERE city = 'New York');

-- Fast: EXISTS (stops at first match)
SELECT * FROM orders o 
WHERE EXISTS (SELECT 1 FROM customers c WHERE c.id = o.customer_id AND c.city = 'New York');
```

**Step 5: Data and Schema Optimization**[6]

**Partitioning Large Tables:**
```sql
-- Partition by date range
CREATE TABLE sales_2024 PARTITION OF sales 
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Partition by hash for even distribution
CREATE TABLE customers_part_0 PARTITION OF customers 
FOR VALUES WITH (modulus 4, remainder 0);
```

**Step 6: System-Level Optimizations**[5]

**Database Configuration:**
```sql
-- SQL Server
-- Update statistics regularly
UPDATE STATISTICS employees WITH FULLSCAN;

-- PostgreSQL
-- Analyze tables for better query planning
ANALYZE employees;

-- Adjust work_mem for sorting operations
SET work_mem = '256MB';
```

### 79. What are query execution plans?[4]

Query execution plans show how the database engine executes SQL statements, revealing the steps, algorithms, and resource costs involved in query processing.[4]

**Types of Execution Plans:**[4]

**Estimated vs Actual Plans:**
```sql
-- SQL Server: Get estimated plan
SET SHOWPLAN_ALL ON;
SELECT * FROM employees WHERE department_id = 5;
SET SHOWPLAN_ALL OFF;

-- Get actual execution plan
SET STATISTICS PROFILE ON;
SELECT * FROM employees WHERE department_id = 5;
SET STATISTICS PROFILE OFF;
```

**Reading Execution Plans:**[4]

**Key Components to Analyze:**
- **Scan vs Seek Operations**: Index seeks are generally better than table scans
- **Join Algorithms**: Nested loop, hash join, or merge join
- **Cost Estimates**: Relative costs of different operations
- **Row Estimates vs Actual**: Large discrepancies indicate statistics problems

**Common Plan Operators:**[4]
```sql
-- Table Scan (expensive for large tables)
SELECT * FROM employees WHERE salary > 50000;  -- No index on salary

-- Index Seek (efficient)
SELECT * FROM employees WHERE employee_id = 123;  -- Primary key lookup

-- Key Lookup (additional cost)
SELECT name, salary FROM employees WHERE employee_id = 123;  -- Index + key lookup
```

**Plan Analysis Example:**
```sql
-- Analyze complex query plan
EXPLAIN (ANALYZE, BUFFERS, VERBOSE) 
SELECT 
    c.name,
    COUNT(o.order_id) as order_count,
    SUM(o.total_amount) as total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.registration_date >= '2024-01-01'
GROUP BY c.customer_id, c.name
HAVING COUNT(o.order_id) > 5
ORDER BY total_spent DESC;
```

**Interpreting Results:**[4]
- **Seq Scan**: Sequential scan (table scan)
- **Index Scan**: Scanning through entire index
- **Index Seek**: Direct index lookup
- **Hash Join**: Join using hash table
- **Nested Loop**: Row-by-row join iteration
- **Sort**: Explicit sorting operation

### 80. How do you analyze query performance?[7][8]

Performance analysis involves systematic measurement and evaluation of query execution characteristics.[8][7]

**Performance Metrics to Monitor:**[8]

**Execution Time and Resource Usage:**
```sql
-- SQL Server performance monitoring
SET STATISTICS TIME ON;
SET STATISTICS IO ON;

SELECT COUNT(*) FROM large_table WHERE condition;

-- Results show:
-- SQL Server parse and compile time
-- SQL Server Execution Times: CPU time, elapsed time
-- Logical reads, physical reads, read-ahead reads
```

**Query Profiling Tools:**[7]

**SQL Server Profiler and Extended Events:**
```sql
-- Create extended event session for slow queries
CREATE EVENT SESSION [SlowQueries] ON SERVER 
ADD EVENT sqlserver.sql_statement_completed(
    SET collect_statement=(1)
    WHERE ([duration]>(5000000))  -- 5 seconds
)
ADD TARGET package0.ring_buffer;

ALTER EVENT SESSION [SlowQueries] ON SERVER STATE = START;
```

**PostgreSQL pg_stat_statements:**
```sql
-- Enable query statistics extension
CREATE EXTENSION pg_stat_statements;

-- Analyze slow queries
SELECT 
    query,
    calls,
    total_time,
    mean_time,
    stddev_time,
    rows
FROM pg_stat_statements 
WHERE mean_time > 1000  -- Queries taking more than 1 second
ORDER BY mean_time DESC
LIMIT 10;
```

**Performance Analysis Process:**[7]

**1. Baseline Measurement:**
```sql
-- Capture baseline performance
SELECT 
    table_name,
    row_count,
    avg_row_length,
    data_length,
    index_length
FROM information_schema.tables 
WHERE table_schema = 'your_database';
```

**2. Identify Bottlenecks:**[7]
```sql
-- Find resource-intensive queries
SELECT TOP 10
    qs.total_elapsed_time / qs.execution_count as avg_elapsed_time,
    qs.total_logical_reads / qs.execution_count as avg_logical_reads,
    qs.execution_count,
    SUBSTRING(qt.text, (qs.statement_start_offset/2)+1,
        ((CASE qs.statement_end_offset WHEN -1 THEN DATALENGTH(qt.text)
        ELSE qs.statement_end_offset END - qs.statement_start_offset)/2)+1) as query_text
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
ORDER BY avg_elapsed_time DESC;
```

**3. Wait Statistics Analysis:**
```sql
-- SQL Server wait statistics
SELECT 
    wait_type,
    waiting_tasks_count,
    wait_time_ms,
    max_wait_time_ms,
    signal_wait_time_ms,
    wait_time_ms - signal_wait_time_ms as resource_wait_time_ms
FROM sys.dm_os_wait_stats
WHERE wait_type NOT IN ('CLR_SEMAPHORE', 'LAZYWRITER_SLEEP', 'RESOURCE_QUEUE')
ORDER BY wait_time_ms DESC;
```

### 81. What are database cursors? When would you use them?

Database cursors are database objects that allow row-by-row processing of query result sets, providing precise control over data retrieval and manipulation.[8]

**Cursor Types:**

**Forward-Only Cursors (Default):**
```sql
DECLARE cursor_name CURSOR FOR
    SELECT column1, column2 FROM table_name WHERE condition;

OPEN cursor_name;
FETCH NEXT FROM cursor_name INTO @var1, @var2;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Process each row
    PRINT @var1 + ' - ' + @var2;
    FETCH NEXT FROM cursor_name INTO @var1, @var2;
END

CLOSE cursor_name;
DEALLOCATE cursor_name;
```

**Scrollable Cursors:**
```sql
DECLARE scroll_cursor CURSOR SCROLL FOR
    SELECT employee_id, name, salary FROM employees;

OPEN scroll_cursor;

-- Various fetch options
FETCH FIRST FROM scroll_cursor INTO @id, @name, @salary;
FETCH LAST FROM scroll_cursor INTO @id, @name, @salary;
FETCH ABSOLUTE 5 FROM scroll_cursor INTO @id, @name, @salary;  -- 5th row
FETCH RELATIVE -2 FROM scroll_cursor INTO @id, @name, @salary; -- 2 rows back

CLOSE scroll_cursor;
DEALLOCATE scroll_cursor;
```

**When to Use Cursors:**

**Complex Row-by-Row Processing:**
```sql
-- Example: Complex salary calculation requiring business logic
DECLARE salary_update_cursor CURSOR FOR
    SELECT employee_id, current_salary, performance_rating, years_service
    FROM employees
    WHERE status = 'Active';

DECLARE @emp_id INT, @current_sal DECIMAL(10,2), @rating INT, @years INT;
DECLARE @new_salary DECIMAL(10,2), @bonus DECIMAL(10,2);

OPEN salary_update_cursor;
FETCH NEXT FROM salary_update_cursor INTO @emp_id, @current_sal, @rating, @years;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Complex calculation logic
    IF @rating >= 4 AND @years > 5
        SET @bonus = @current_sal * 0.15;
    ELSE IF @rating >= 3
        SET @bonus = @current_sal * 0.08;
    ELSE
        SET @bonus = 0;
    
    SET @new_salary = @current_sal + @bonus;
    
    -- Update with complex audit logging
    UPDATE employees SET salary = @new_salary WHERE employee_id = @emp_id;
    INSERT INTO salary_history (employee_id, old_salary, new_salary, change_date, reason)
    VALUES (@emp_id, @current_sal, @new_salary, GETDATE(), 'Annual Review');
    
    FETCH NEXT FROM salary_update_cursor INTO @emp_id, @current_sal, @rating, @years;
END

CLOSE salary_update_cursor;
DEALLOCATE salary_update_cursor;
```

**Drawbacks of Cursors:**
- **Performance**: Significantly slower than set-based operations
- **Resource Usage**: Higher memory and CPU consumption
- **Concurrency**: Can cause blocking and deadlocks
- **Complexity**: More code to write and maintain

**Alternatives to Cursors:**
```sql
-- Instead of cursor for bulk updates
UPDATE employees 
SET salary = CASE 
    WHEN performance_rating >= 4 AND years_service > 5 THEN salary * 1.15
    WHEN performance_rating >= 3 THEN salary * 1.08
    ELSE salary
END
WHERE status = 'Active';
```

### 82. How can you improve the performance of resource-intensive database queries?[9][8]

Optimizing resource-intensive queries requires a multi-faceted approach addressing query structure, indexing, and system configuration.[9][8]

**Query Structure Optimization:**[8]

**Reduce Data Volume:**
```sql
-- Bad: Processing unnecessary data
SELECT * FROM orders o 
JOIN customers c ON o.customer_id = c.customer_id 
WHERE o.order_date >= '2024-01-01';

-- Good: Select only needed columns and filter early
SELECT o.order_id, o.total_amount, c.name 
FROM orders o 
JOIN customers c ON o.customer_id = c.customer_id 
WHERE o.order_date >= '2024-01-01'
  AND o.status = 'Completed';  -- Additional filtering
```

**Optimize JOIN Operations:**[9]
```sql
-- Bad: Multiple large table joins without proper indexes
SELECT * FROM orders o 
JOIN customers c ON o.customer_id = c.customer_id 
JOIN products p ON o.product_id = p.product_id 
JOIN categories cat ON p.category_id = cat.category_id;

-- Good: Ensure proper indexes and consider denormalization
-- Create composite indexes for join columns
CREATE INDEX idx_orders_customer_product ON orders(customer_id, product_id);
CREATE INDEX idx_products_category ON products(category_id);
```

**Advanced Indexing Strategies:**[9]

**Covering Indexes:**
```sql
-- Create index that covers entire query
CREATE NONCLUSTERED INDEX idx_orders_covering 
ON orders (customer_id, order_date) 
INCLUDE (order_id, total_amount, status);

-- Query can be satisfied entirely from index
SELECT order_id, total_amount, status 
FROM orders 
WHERE customer_id = 123 AND order_date >= '2024-01-01';
```

**Partitioned Views and Tables:**
```sql
-- Horizontal partitioning for large tables
CREATE TABLE orders_2024_q1 (
    CHECK (order_date >= '2024-01-01' AND order_date < '2024-04-01')
) INHERITS (orders);

CREATE TABLE orders_2024_q2 (
    CHECK (order_date >= '2024-04-01' AND order_date < '2024-07-01')
) INHERITS (orders);

-- Constraint exclusion automatically routes queries to correct partition
SELECT * FROM orders WHERE order_date = '2024-02-15';  -- Only searches q1 partition
```

**Query Caching and Materialized Views:**[9]
```sql
-- Create materialized view for expensive aggregations
CREATE MATERIALIZED VIEW monthly_sales_summary AS
SELECT 
    DATE_TRUNC('month', order_date) as month,
    customer_id,
    SUM(total_amount) as monthly_total,
    COUNT(*) as order_count
FROM orders 
GROUP BY DATE_TRUNC('month', order_date), customer_id;

-- Refresh periodically instead of calculating each time
REFRESH MATERIALIZED VIEW monthly_sales_summary;
```

**Parallel Processing:**[9]
```sql
-- SQL Server: Force parallel execution for large operations
SELECT /*+ MAXDOP(4) */ customer_id, SUM(total_amount)
FROM orders 
WHERE order_date >= '2024-01-01'
GROUP BY customer_id
OPTION (MAXDOP 4);
```

### 83. What is query optimization?[6][8]

Query optimization is the process of finding the most efficient execution plan for SQL queries, minimizing resource usage and execution time.[8][6]

**Optimization Process:**[6]

**1. Query Parsing and Validation:**
- Syntax checking and semantic validation
- Object existence verification
- Permission checking

**2. Query Rewriting:**[6]
```sql
-- Optimizer may rewrite queries for better performance
-- Original query
SELECT * FROM employees e 
WHERE e.department_id IN (
    SELECT d.department_id FROM departments d WHERE d.location = 'NYC'
);

-- May be rewritten as:
SELECT e.* FROM employees e 
JOIN departments d ON e.department_id = d.department_id 
WHERE d.location = 'NYC';
```

**3. Plan Generation and Cost Estimation:**[6]
```sql
-- Optimizer evaluates multiple execution strategies
-- Option 1: Index seek + key lookup
-- Option 2: Index scan
-- Option 3: Table scan with filter
-- Chooses based on estimated costs
```

**Cost-Based Optimization Factors:**[8]
- **Cardinality Estimation**: Predicted number of rows
- **Index Selectivity**: Effectiveness of indexes
- **Join Order**: Sequence of table joins
- **Physical Operations**: Scan vs seek, hash vs nested loop joins

**Optimizer Hints (Use Carefully):**
```sql
-- SQL Server hints
SELECT /*+ INDEX(employees, idx_dept_salary) */ 
       name, salary 
FROM employees 
WHERE department_id = 5 AND salary > 50000;

-- Force specific join type
SELECT /*+ USE_NL(e d) */ e.name, d.dept_name
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id;
```

### 84. What are query hints?

Query hints are directives that force the query optimizer to use specific execution strategies, overriding its cost-based decisions.[8]

**Types of Query Hints:**

**Join Hints:**
```sql
-- SQL Server join hints
SELECT e.name, d.name
FROM employees e 
INNER HASH JOIN departments d ON e.dept_id = d.dept_id;  -- Force hash join

SELECT e.name, d.name
FROM employees e 
INNER LOOP JOIN departments d ON e.dept_id = d.dept_id;  -- Force nested loop

SELECT e.name, d.name
FROM employees e 
INNER MERGE JOIN departments d ON e.dept_id = d.dept_id; -- Force merge join
```

**Index Hints:**
```sql
-- Force specific index usage
SELECT name, salary 
FROM employees WITH (INDEX(idx_dept_salary))
WHERE department_id = 5;

-- Avoid specific index
SELECT name, salary 
FROM employees WITH (INDEX(0))  -- Force table scan
WHERE department_id = 5;
```

**Locking Hints:**
```sql
-- Read with no locks (dirty reads allowed)
SELECT * FROM employees WITH (NOLOCK) WHERE dept_id = 5;

-- Exclusive lock until transaction ends
SELECT * FROM employees WITH (HOLDLOCK) WHERE dept_id = 5;

-- Update lock (prevents deadlocks in some scenarios)
SELECT * FROM employees WITH (UPDLOCK) WHERE dept_id = 5;
```

**Parallelism Hints:**
```sql
-- Control degree of parallelism
SELECT customer_id, SUM(total_amount)
FROM orders 
GROUP BY customer_id
OPTION (MAXDOP 1);  -- Force single-threaded execution

-- Force parallel execution
SELECT customer_id, SUM(total_amount)
FROM orders 
GROUP BY customer_id
OPTION (MAXDOP 0);  -- Use all available processors
```

**When to Use Hints (Cautiously):**
- **Temporary Performance Issues**: When optimizer chooses poor plans
- **Known Data Patterns**: When you have better knowledge than optimizer
- **Specific Requirements**: When consistent execution plan is needed
- **Testing and Troubleshooting**: To isolate performance issues

**Risks of Using Hints:**
- **Plan Staleness**: Fixed plans may become inefficient as data changes
- **Maintenance Overhead**: Need to review and update hints regularly
- **Reduced Flexibility**: Prevents optimizer from adapting to changes
- **Potential Performance Degradation**: Wrong hints can make performance worse

## Security and Best Practices (Questions 85-90)

### 85. What are materialized views and their benefits?[3]

Materialized views are database objects that store the results of queries physically on disk, unlike regular views which are virtual. They contain actual data that's refreshed periodically, providing significant performance benefits for complex analytical queries.[3]

**Creating Materialized Views:**[3]
```sql
-- PostgreSQL materialized view
CREATE MATERIALIZED VIEW sales_summary AS
SELECT 
    DATE_TRUNC('month', order_date) as month,
    product_category,
    SUM(quantity * unit_price) as total_revenue,
    COUNT(DISTINCT customer_id) as unique_customers,
    AVG(quantity * unit_price) as avg_order_value
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE order_date >= '2024-01-01'
GROUP BY DATE_TRUNC('month', order_date), product_category;

-- Oracle materialized view with automatic refresh
CREATE MATERIALIZED VIEW sales_summary
REFRESH FAST ON COMMIT
AS
SELECT 
    TRUNC(order_date, 'MM') as month,
    product_category,
    SUM(quantity * unit_price) as total_revenue,
    COUNT(DISTINCT customer_id) as unique_customers
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY TRUNC(order_date, 'MM'), product_category;
```

**Refresh Strategies:**[3]
```sql
-- Manual refresh (PostgreSQL)
REFRESH MATERIALIZED VIEW sales_summary;

-- Concurrent refresh (allows reads during refresh)
REFRESH MATERIALIZED VIEW CONCURRENTLY sales_summary;

-- Scheduled refresh (Oracle)
BEGIN
    DBMS_MVIEW.REFRESH('sales_summary', 'C');  -- Complete refresh
END;
```

**Benefits of Materialized Views:**[3]
- **Performance**: Pre-computed results eliminate expensive JOIN and aggregation operations
- **Reduced Load**: Offloads processing from operational systems to batch processes
- **Consistency**: Provides point-in-time snapshots of data
- **Availability**: Data remains available even if source tables are temporarily unavailable

**Use Cases:**
```sql
-- Data warehouse reporting
CREATE MATERIALIZED VIEW quarterly_sales_report AS
SELECT 
    EXTRACT(YEAR FROM order_date) as year,
    EXTRACT(QUARTER FROM order_date) as quarter,
    region,
    SUM(total_amount) as revenue,
    COUNT(*) as order_count
FROM orders o 
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(QUARTER FROM order_date), region;

-- Dashboard metrics
CREATE MATERIALIZED VIEW dashboard_metrics AS
SELECT 
    COUNT(*) as total_orders,
    SUM(total_amount) as total_revenue,
    AVG(total_amount) as avg_order_value,
    COUNT(DISTINCT customer_id) as unique_customers
FROM orders 
WHERE order_date >= CURRENT_DATE - INTERVAL '30 days';
```

### 86. What is database partitioning? When should it be used?[10][11]

Database partitioning divides large tables into smaller, more manageable segments while maintaining logical unity. It's a crucial technique for handling large-scale data and improving query performance.[11][10]

**Types of Partitioning:**[11]

**Horizontal Partitioning (Sharding):**[11]
```sql
-- Range partitioning by date
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    customer_id INT,
    total_amount DECIMAL(10,2)
) PARTITION BY RANGE (order_date);

-- Create individual partitions
CREATE TABLE sales_2024_q1 PARTITION OF sales 
FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');

CREATE TABLE sales_2024_q2 PARTITION OF sales 
FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');

-- Hash partitioning for even distribution
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
) PARTITION BY HASH (customer_id);

-- Create hash partitions
CREATE TABLE customers_part_0 PARTITION OF customers 
FOR VALUES WITH (modulus 4, remainder 0);
CREATE TABLE customers_part_1 PARTITION OF customers 
FOR VALUES WITH (modulus 4, remainder 1);
```

**List Partitioning by Category:**
```sql
-- Partition by region
CREATE TABLE orders_by_region (
    order_id INT,
    customer_id INT,
    region VARCHAR(20),
    total_amount DECIMAL(10,2)
) PARTITION BY LIST (region);

CREATE TABLE orders_north PARTITION OF orders_by_region 
FOR VALUES IN ('North', 'Northeast', 'Northwest');

CREATE TABLE orders_south PARTITION OF orders_by_region 
FOR VALUES IN ('South', 'Southeast', 'Southwest');
```

**Vertical Partitioning:**
```sql
-- Split frequently and infrequently accessed columns
CREATE TABLE employees_core (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2)
);

CREATE TABLE employees_extended (
    employee_id INT PRIMARY KEY,
    biography TEXT,
    photo BLOB,
    personal_notes TEXT,
    FOREIGN KEY (employee_id) REFERENCES employees_core(employee_id)
);
```

**When to Use Partitioning:**[10][11]

**Large Table Management:**
- Tables with millions or billions of rows
- Historical data that's queried by time periods
- Tables with distinct access patterns

**Performance Optimization:**[10]
```sql
-- Partition elimination in action
-- Query only searches relevant partition
SELECT * FROM sales 
WHERE order_date BETWEEN '2024-02-01' AND '2024-02-28';
-- Only scans sales_2024_q1 partition
```

**Benefits of Partitioning:**[10]
- **Query Performance**: Partition elimination reduces data scanned
- **Maintenance Operations**: Faster backups, index rebuilds on individual partitions
- **Parallel Processing**: Operations can run on multiple partitions simultaneously
- **Storage Management**: Archive old partitions, different storage tiers

**Partitioning Best Practices:**[11]
```sql
-- Create indexes on each partition
CREATE INDEX idx_sales_2024_q1_customer ON sales_2024_q1(customer_id);
CREATE INDEX idx_sales_2024_q1_amount ON sales_2024_q1(total_amount);

-- Constraint exclusion for better performance
ALTER TABLE sales_2024_q1 ADD CONSTRAINT check_q1_date 
CHECK (order_date >= '2024-01-01' AND order_date < '2024-04-01');
```

### 87. What is database replication? Explain different types.

Database replication creates and maintains identical copies of databases across multiple locations, providing high availability, disaster recovery, and load distribution.[10]

**Master-Slave Replication:**
```sql
-- MySQL Master configuration
-- my.cnf on master server
[mysqld]
log-bin = mysql-bin
server-id = 1
binlog-format = ROW

-- Create replication user
CREATE USER 'repl_user'@'%' IDENTIFIED BY 'password';
GRANT REPLICATION SLAVE ON *.* TO 'repl_user'@'%';

-- MySQL Slave configuration
-- my.cnf on slave server
[mysqld]
server-id = 2
relay-log = mysql-relay-log
read-only = 1

-- Start replication on slave
CHANGE MASTER TO
    MASTER_HOST = '192.168.1.100',
    MASTER_USER = 'repl_user',
    MASTER_PASSWORD = 'password',
    MASTER_LOG_FILE = 'mysql-bin.000001',
    MASTER_LOG_POS = 154;

START SLAVE;
```

**Master-Master Replication:**
```sql
-- PostgreSQL streaming replication setup
-- postgresql.conf on both servers
wal_level = replica
max_wal_senders = 3
max_replication_slots = 3
hot_standby = on

-- pg_hba.conf - allow replication connections
host replication repl_user 192.168.1.0/24 md5

-- Create replication user
CREATE USER repl_user REPLICATION LOGIN PASSWORD 'password';

-- Initialize standby server
pg_basebackup -h 192.168.1.100 -D /var/lib/postgresql/data -U repl_user -P -W
```

**Types of Replication:**

**1. Synchronous Replication:**
```sql
-- PostgreSQL synchronous replication
-- postgresql.conf
synchronous_standby_names = 'standby1,standby2'
synchronous_commit = on

-- Ensures data is written to standby before commit
-- Higher consistency, potential latency impact
```

**2. Asynchronous Replication:**
```sql
-- MySQL asynchronous replication (default)
-- Commits don't wait for slave acknowledgment
-- Better performance, potential data loss risk
SHOW SLAVE STATUS\G
-- Monitor slave lag: Seconds_Behind_Master
```

**3. Multi-Master Replication:**
```sql
-- MySQL Group Replication
-- Add to my.cnf on all nodes
plugin-load-add = group_replication.so
group_replication_group_name = "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa"
group_replication_start_on_boot = off
group_replication_local_address = "192.168.1.100:33061"
group_replication_group_seeds = "192.168.1.100:33061,192.168.1.101:33061"

-- Start group replication
START GROUP_REPLICATION;
```

**Replication Use Cases:**
- **High Availability**: Automatic failover to standby servers
- **Load Distribution**: Read queries distributed across replicas
- **Disaster Recovery**: Geographic distribution of data
- **Backup Operations**: Backups from replica without impacting primary

### 88. What are temporal tables and how are they used for historical data tracking?

Temporal tables automatically track the history of data changes, maintaining both current and historical versions of records. They're ideal for audit trails, compliance, and historical analysis.[10]

**System-Versioned Temporal Tables (SQL Server):**
```sql
-- Create temporal table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name NVARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    
    -- System-versioned columns (automatically managed)
    valid_from DATETIME2 GENERATED ALWAYS AS ROW START,
    valid_to DATETIME2 GENERATED ALWAYS AS ROW END,
    PERIOD FOR SYSTEM_TIME (valid_from, valid_to)
) WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.employees_history));
```

**Application-Time Temporal Tables:**
```sql
-- User-defined validity periods
CREATE TABLE product_prices (
    product_id INT,
    price DECIMAL(10,2),
    currency CHAR(3),
    
    -- Application-defined temporal columns
    effective_date DATE,
    end_date DATE,
    
    PERIOD FOR application_time (effective_date, end_date)
) WITH (SYSTEM_VERSIONING = ON);
```

**Querying Temporal Data:**
```sql
-- Current data (default behavior)
SELECT * FROM employees WHERE department_id = 5;

-- Historical point-in-time query
SELECT * FROM employees 
FOR SYSTEM_TIME AS OF '2024-01-01 10:00:00'
WHERE department_id = 5;

-- Changes between two points in time
SELECT * FROM employees 
FOR SYSTEM_TIME FROM '2024-01-01' TO '2024-02-01'
WHERE employee_id = 123;

-- All versions of a record
SELECT * FROM employees 
FOR SYSTEM_TIME ALL
WHERE employee_id = 123
ORDER BY valid_from;
```

**Manual Temporal Implementation (for databases without built-in support):**
```sql
-- Traditional approach with triggers
CREATE TABLE employees_current (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE employees_history (
    history_id SERIAL PRIMARY KEY,
    employee_id INT,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    valid_from TIMESTAMP,
    valid_to TIMESTAMP,
    operation CHAR(1) -- 'I', 'U', 'D'
);

-- Trigger to maintain history
CREATE OR REPLACE FUNCTION maintain_employee_history()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'UPDATE' THEN
        INSERT INTO employees_history 
        (employee_id, name, salary, department_id, valid_from, valid_to, operation)
        VALUES 
        (OLD.employee_id, OLD.name, OLD.salary, OLD.department_id, 
         OLD.last_modified, NEW.last_modified, 'U');
        RETURN NEW;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER employee_history_trigger
    AFTER UPDATE ON employees_current
    FOR EACH ROW EXECUTE FUNCTION maintain_employee_history();
```

### 89. What are different isolation levels in SQL transactions?[12][13]

Transaction isolation levels control how transactions interact with each other, balancing consistency and concurrency. They prevent various concurrency phenomena like dirty reads, non-repeatable reads, and phantom reads.[13][12]

**Isolation Levels (from lowest to highest):**[12][13]

**1. READ UNCOMMITTED (Level 0):**[13]
```sql
-- Allows dirty reads - can see uncommitted changes from other transactions
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;

    -- Can read data modified by other uncommitted transactions
    SELECT balance FROM accounts WHERE account_id = '123';
    -- Might see balance that could be rolled back

COMMIT;
```

**Problems Allowed:**
- Dirty reads: Reading uncommitted data
- Non-repeatable reads: Same query returns different results
- Phantom reads: New rows appear between queries

**2. READ COMMITTED (Level 1 - Most Common Default):**[12][13]
```sql
-- Only committed data is visible
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;

    -- Query 1: Returns committed data only
    SELECT balance FROM accounts WHERE account_id = '123';
    
    -- Wait... another transaction commits a change
    
    -- Query 2: May return different result (non-repeatable read)
    SELECT balance FROM accounts WHERE account_id = '123';

COMMIT;
```

**Problems Prevented:** Dirty reads
**Problems Allowed:** Non-repeatable reads, phantom reads

**3. REPEATABLE READ (Level 2):**[12]
```sql
-- Same data returned for repeated queries within transaction
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;

    -- Query 1
    SELECT balance FROM accounts WHERE balance > 1000;
    -- Returns specific set of rows
    
    -- Even if other transactions modify existing rows, 
    -- repeating this query returns same values
    
    -- Query 2 (later in same transaction)
    SELECT balance FROM accounts WHERE balance > 1000;
    -- Same values as Query 1
    
    -- However, new rows might appear (phantom reads still possible)
    SELECT COUNT(*) FROM accounts WHERE balance > 1000;
    -- Count might be different due to new insertions

COMMIT;
```

**Problems Prevented:** Dirty reads, non-repeatable reads
**Problems Allowed:** Phantom reads

**4. SERIALIZABLE (Level 3 - Highest):**[13]
```sql
-- Complete isolation - as if transactions run sequentially
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;

    -- Complete snapshot isolation
    SELECT * FROM accounts WHERE balance > 1000;
    
    -- No other transaction can:
    -- - Modify existing rows that match the condition
    -- - Insert new rows that would match the condition
    -- - Delete rows that currently match the condition
    
    -- Guaranteed consistent results throughout transaction

COMMIT;
```

**Problems Prevented:** All concurrency issues
**Trade-off:** Highest risk of deadlocks and blocking

**Practical Examples:**[13]

**Banking Transaction with Different Isolation Levels:**
```sql
-- READ COMMITTED (typical for banking)
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;
    DECLARE @balance DECIMAL(10,2);
    
    -- Check balance
    SELECT @balance = balance FROM accounts WHERE account_id = '12345';
    
    IF @balance >= 500.00
    BEGIN
        -- Deduct amount
        UPDATE accounts SET balance = balance - 500.00 
        WHERE account_id = '12345';
        
        -- Another transaction might have modified balance between
        -- SELECT and UPDATE, potentially causing overdraft
    END
COMMIT;

-- SERIALIZABLE (for critical operations)
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;
    -- Entire transaction sees consistent snapshot
    -- Prevents lost updates and ensures business rules
    
    UPDATE accounts SET balance = balance - 500.00 
    WHERE account_id = '12345' AND balance >= 500.00;
    
    IF @@ROWCOUNT = 0
        ROLLBACK TRANSACTION;  -- Insufficient funds
    ELSE
        COMMIT TRANSACTION;
```

**Choosing Isolation Levels:**[12]
- **READ UNCOMMITTED**: Only for analytical queries where consistency isn't critical
- **READ COMMITTED**: Most common for OLTP systems, good balance
- **REPEATABLE READ**: When consistent reads within transaction are essential
- **SERIALIZABLE**: Critical operations requiring complete isolation

### 90. What is a deadlock in SQL and how do you prevent it?[13]

A deadlock occurs when two or more transactions are waiting for each other to release locks, creating a circular dependency that prevents any transaction from proceeding.[13]

**Deadlock Scenario Example:**
```sql
-- Transaction A
BEGIN TRANSACTION;
    UPDATE accounts SET balance = balance - 100 WHERE account_id = 'A123';
    -- Holds lock on account A123, needs lock on B456
    UPDATE accounts SET balance = balance + 100 WHERE account_id = 'B456';
COMMIT;

-- Transaction B (running simultaneously)
BEGIN TRANSACTION;
    UPDATE accounts SET balance = balance - 50 WHERE account_id = 'B456';
    -- Holds lock on account B456, needs lock on A123
    UPDATE accounts SET balance = balance + 50 WHERE account_id = 'A123';
COMMIT;

-- Result: Deadlock! Each transaction waits for the other's lock
```

**Deadlock Detection and Resolution:**[13]
```sql
-- SQL Server deadlock information
SELECT 
    session_id,
    blocking_session_id,
    wait_type,
    wait_resource,
    wait_time
FROM sys.dm_exec_requests
WHERE blocking_session_id <> 0;

-- PostgreSQL deadlock detection
-- Check postgresql.log for deadlock details
-- or use pg_stat_activity
SELECT 
    pid,
    state,
    query,
    waiting,
    query_start
FROM pg_stat_activity 
WHERE state = 'active' AND waiting = true;
```

**Deadlock Prevention Strategies:**[13]

**1. Consistent Lock Ordering:**
```sql
-- Bad: Inconsistent ordering causes deadlocks
-- Transaction A: Lock A123, then B456
-- Transaction B: Lock B456, then A123

-- Good: Always access resources in same order
CREATE PROCEDURE transfer_funds(@from_account VARCHAR(10), @to_account VARCHAR(10), @amount DECIMAL(10,2))
AS
BEGIN
    DECLARE @first_account VARCHAR(10), @second_account VARCHAR(10);
    
    -- Always lock accounts in alphabetical order
    IF @from_account < @to_account
    BEGIN
        SET @first_account = @from_account;
        SET @second_account = @to_account;
    END
    ELSE
    BEGIN
        SET @first_account = @to_account;
        SET @second_account = @from_account;
    END
    
    BEGIN TRANSACTION;
        UPDATE accounts SET balance = balance - 
            CASE WHEN account_id = @from_account THEN @amount ELSE -@amount END
        WHERE account_id IN (@first_account, @second_account)
        ORDER BY account_id;  -- Consistent ordering
    COMMIT;
END
```

**2. Minimize Transaction Scope:**
```sql
-- Bad: Long-running transaction with multiple locks
BEGIN TRANSACTION;
    -- Complex business logic
    UPDATE orders SET status = 'Processing' WHERE order_id = 123;
    
    -- Expensive operations while holding locks
    EXEC complex_inventory_calculation;
    EXEC send_notification_email;
    
    UPDATE inventory SET quantity = quantity - 5 WHERE product_id = 456;
COMMIT;

-- Good: Minimize lock duration
-- Prepare data outside transaction
EXEC complex_inventory_calculation;

BEGIN TRANSACTION;
    UPDATE orders SET status = 'Processing' WHERE order_id = 123;
    UPDATE inventory SET quantity = quantity - 5 WHERE product_id = 456;
COMMIT;

-- Send notification after transaction
EXEC send_notification_email;
```

**3. Use Lower Isolation Levels:**
```sql
-- Reduce locking with appropriate isolation level
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;  -- Instead of SERIALIZABLE
```

**4. Timeout and Retry Logic:**
```sql
-- Implement retry logic for deadlock victims
CREATE PROCEDURE safe_transfer(@from_account VARCHAR(10), @to_account VARCHAR(10), @amount DECIMAL(10,2))
AS
BEGIN
    DECLARE @retry_count INT = 0;
    DECLARE @max_retries INT = 3;
    
    WHILE @retry_count < @max_retries
    BEGIN
        BEGIN TRY
            BEGIN TRANSACTION;
                UPDATE accounts SET balance = balance - @amount 
                WHERE account_id = @from_account;
                
                UPDATE accounts SET balance = balance + @amount 
                WHERE account_id = @to_account;
            COMMIT;
            
            BREAK;  -- Success, exit loop
            
        END TRY
        BEGIN CATCH
            IF ERROR_NUMBER() = 1205  -- Deadlock error
            BEGIN
                ROLLBACK TRANSACTION;
                SET @retry_count = @retry_count + 1;
                WAITFOR DELAY '00:00:00.100';  -- Brief delay before retry
            END
            ELSE
            BEGIN
                THROW;  -- Re-raise non-deadlock errors
            END
        END CATCH
    END
    
    IF @retry_count >= @max_retries
        THROW 50000, 'Transfer failed after multiple deadlock retries', 1;
END
```

**5. Use Optimistic Concurrency:**
```sql
-- Version-based optimistic locking
ALTER TABLE accounts ADD version_number INT DEFAULT 1;

-- Update with version check
UPDATE accounts 
SET balance = balance - @amount, 
    version_number = version_number + 1
WHERE account_id = @account_id 
  AND version_number = @expected_version;

IF @@ROWCOUNT = 0
    THROW 50001, 'Account was modified by another transaction', 1;
```

## Big Data and Integration (Questions 91-97)

### 91. What is SQL injection? How can you prevent SQL injection attacks?[14][15][16][17]

SQL injection is a security vulnerability where malicious SQL code is inserted into application queries through user input, potentially allowing attackers to access, modify, or delete database data.[15][16][14]

**How SQL Injection Works:**[14]
```sql
-- Vulnerable code example (pseudo-code)
username = request.getParameter("username");
password = request.getParameter("password");

// Dangerous: Direct string concatenation
String query = "SELECT * FROM users WHERE username = '" + username + 
               "' AND password = '" + password + "'";

// If attacker enters: username = "admin' --"
// Query becomes: SELECT * FROM users WHERE username = 'admin' --' AND password = ''
// The -- comments out the password check, potentially granting unauthorized access
```

**Common SQL Injection Attacks:**[14]

**1. Authentication Bypass:**
```sql
-- Normal query
SELECT * FROM users WHERE username = 'john' AND password = 'secret123';

-- Malicious input: username = "admin' OR '1'='1' --"
-- Resulting query
SELECT * FROM users WHERE username = 'admin' OR '1'='1' --' AND password = '';
-- Always returns results because '1'='1' is always true
```

**2. Union-based Attacks:**[14]
```sql
-- Attacker input: product_id = "1 UNION SELECT username, password FROM users --"
-- Resulting query
SELECT name, price FROM products WHERE product_id = 1 
UNION SELECT username, password FROM users --;
-- Exposes user credentials through product search
```

**3. Blind SQL Injection:**[14]
```sql
-- Time-based blind injection
-- Attacker input: user_id = "1; IF (1=1) WAITFOR DELAY '00:00:05' --"
-- If there's a 5-second delay, attacker knows the condition is true
```

**Prevention Methods:**[16][17][15]

**1. Prepared Statements/Parameterized Queries (Most Effective):**[15][16]

**Java (JDBC):**
```java
// Secure: Parameterized query
String query = "SELECT * FROM users WHERE username = ? AND password = ?";
PreparedStatement pstmt = connection.prepareStatement(query);
pstmt.setString(1, username);
pstmt.setString(2, password);
ResultSet rs = pstmt.executeQuery();
```

**C# (.NET):**
```csharp
// Secure: Parameterized query
string query = "SELECT * FROM users WHERE username = @username AND password = @password";
using (SqlCommand cmd = new SqlCommand(query, connection))
{
    cmd.Parameters.AddWithValue("@username", username);
    cmd.Parameters.AddWithValue("@password", password);
    SqlDataReader reader = cmd.ExecuteReader();
}
```

**PHP (PDO):**
```php
// Secure: Prepared statements
$stmt = $pdo->prepare("SELECT * FROM users WHERE username = ? AND password = ?");
$stmt->execute([$username, $password]);
$user = $stmt->fetch();
```

**2. Stored Procedures (When Implemented Safely):**[16][15]
```sql
-- Safe stored procedure
CREATE PROCEDURE GetUser(@Username NVARCHAR(50), @Password NVARCHAR(100))
AS
BEGIN
    SELECT user_id, username, email 
    FROM users 
    WHERE username = @Username AND password_hash = HASHBYTES('SHA2_256', @Password);
END

-- Usage
EXEC GetUser @Username = 'john', @Password = 'secret123';
```

**3. Input Validation and Sanitization:**[17]
```java
// Whitelist validation
public boolean isValidUsername(String username) {
    // Only allow alphanumeric characters and underscores
    return username.matches("^[a-zA-Z0-9_]{3,20}$");
}

// Escape special characters (less preferred than parameterized queries)
public String escapeSQL(String input) {
    return input.replace("'", "''")
                .replace("\\", "\\\\")
                .replace("%", "\\%")
                .replace("_", "\\_");
}
```

**4. Least Privilege Principle:**[16]
```sql
-- Create application-specific database user with minimal permissions
CREATE USER app_user WITH PASSWORD 'secure_password';

-- Grant only necessary permissions
GRANT SELECT, INSERT, UPDATE ON customers TO app_user;
GRANT SELECT ON products TO app_user;
GRANT EXECUTE ON PROCEDURE process_order TO app_user;

-- Don't grant unnecessary permissions
-- REVOKE CREATE, DROP, ALTER permissions
```

**5. Output Encoding:**[17]
```java
// HTML encode output to prevent XSS
public String htmlEncode(String input) {
    return input.replace("<", "&lt;")
                .replace(">", "&gt;")
                .replace("&", "&amp;")
                .replace("\"", "&quot;")
                .replace("'", "&#x27;");
}
```

**6. Web Application Firewall (WAF):**[17]
```bash
# ModSecurity rules for SQL injection detection
SecRule ARGS "@detectSQLi" \
    "id:1001,\
    phase:2,\
    msg:'SQL Injection Attack Detected',\
    deny,\
    status:403"
```

**7. Error Handling:**[15]
```java
// Don't expose database structure in error messages
try {
    // Database operations
} catch (SQLException e) {
    // Log detailed error for developers
    logger.error("Database error: " + e.getMessage(), e);
    
    // Return generic error to user
    return new ErrorResponse("An error occurred. Please try again later.");
}
```

### 92. What are security best practices in SQL server management?[16]

Comprehensive SQL Server security involves multiple layers of protection from network to database level.[16]

**Authentication and Authorization:**[16]

**1. Use Windows Authentication When Possible:**
```sql
-- Enable Windows Authentication mode
-- In SQL Server Configuration Manager:
-- SQL Server Services -> SQL Server -> Properties -> Security
-- Set Authentication Mode to "Windows Authentication mode"

-- Create Windows login
CREATE LOGIN [DOMAIN\username] FROM WINDOWS;
USE database_name;
CREATE USER [DOMAIN\username] FOR LOGIN [DOMAIN\username];
```

**2. Implement Principle of Least Privilege:**[16]
```sql
-- Create custom database roles
CREATE ROLE db_app_reader;
CREATE ROLE db_app_writer;

-- Grant minimal required permissions
GRANT SELECT ON schema.customers TO db_app_reader;
GRANT SELECT, INSERT, UPDATE ON schema.orders TO db_app_writer;

-- Add users to roles
ALTER ROLE db_app_reader ADD MEMBER app_user;

-- Avoid using db_owner, sysadmin unless absolutely necessary
```

**3. Regular Security Audits:**
```sql
-- Enable SQL Server Audit
CREATE SERVER AUDIT security_audit
TO FILE (FILEPATH = 'C:\Audits\', MAXSIZE = 100MB, MAX_FILES = 10);

CREATE SERVER AUDIT SPECIFICATION server_audit_spec
FOR SERVER AUDIT security_audit
ADD (LOGIN_GROUP),
ADD (LOGOUT_GROUP),
ADD (DATABASE_PERMISSION_CHANGE_GROUP);

ALTER SERVER AUDIT security_audit WITH (STATE = ON);
ALTER SERVER AUDIT SPECIFICATION server_audit_spec WITH (STATE = ON);
```

**Network Security:**

**4. Configure SSL/TLS Encryption:**
```sql
-- Force encryption for all connections
-- SQL Server Configuration Manager:
-- SQL Server Network Configuration -> Protocols -> Properties
-- Certificate tab -> Install certificate
-- Force Encryption = Yes

-- Verify encryption in applications
SELECT 
    session_id,
    encrypt_option,
    auth_scheme
FROM sys.dm_exec_connections
WHERE session_id = @@SPID;
```

**5. Firewall Configuration:**
```bash
# Windows Firewall rules for SQL Server
netsh advfirewall firewall add rule name="SQL Server" dir=in action=allow protocol=TCP localport=1433
netsh advfirewall firewall add rule name="SQL Browser" dir=in action=allow protocol=UDP localport=1434

# Restrict access to specific IP ranges
netsh advfirewall firewall set rule name="SQL Server" new remoteip=192.168.1.0/24
```

**Data Protection:**

**6. Transparent Data Encryption (TDE):**[16]
```sql
-- Enable TDE for data at rest encryption
USE master;
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'ComplexPassword123!';

CREATE CERTIFICATE TDE_Certificate WITH SUBJECT = 'TDE Certificate';

USE YourDatabase;
CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE TDE_Certificate;

ALTER DATABASE YourDatabase SET ENCRYPTION ON;
```

**7. Column-Level Encryption:**
```sql
-- Encrypt sensitive columns
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'MasterKeyPassword123!';

CREATE CERTIFICATE SSN_Certificate WITH SUBJECT = 'SSN Certificate';

CREATE SYMMETRIC KEY SSN_Key 
WITH ALGORITHM = AES_256 
ENCRYPTION BY CERTIFICATE SSN_Certificate;

-- Encrypt data
OPEN SYMMETRIC KEY SSN_Key DECRYPTION BY CERTIFICATE SSN_Certificate;

INSERT INTO customers (name, ssn_encrypted)
VALUES ('John Doe', EncryptByKey(Key_GUID('SSN_Key'), '123-45-6789'));

CLOSE SYMMETRIC KEY SSN_Key;
```

**Access Control:**

**8. Row-Level Security:**[16]
```sql
-- Implement row-level security
CREATE FUNCTION security.user_predicate(@user_id INT)
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN SELECT 1 AS result 
WHERE @user_id = USER_ID() OR IS_ROLEMEMBER('db_owner') = 1;

CREATE SECURITY POLICY security.customer_policy
ADD FILTER PREDICATE security.user_predicate(user_id) ON dbo.customers;
```

**9. Dynamic Data Masking:**
```sql
-- Mask sensitive data for non-privileged users
ALTER TABLE customers 
ALTER COLUMN email ADD MASKED WITH (FUNCTION = 'email()');

ALTER TABLE customers 
ALTER COLUMN ssn ADD MASKED WITH (FUNCTION = 'partial(0,"XXX-XX-",4)');

-- Grant unmask permission to specific users
GRANT UNMASK TO authorized_user;
```

### 93. How do you handle error handling in SQL?

Proper error handling in SQL ensures robust applications and provides meaningful feedback while maintaining security.[15]

**SQL Server Error Handling:**

**1. TRY-CATCH Blocks:**
```sql
BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Potentially problematic operations
    INSERT INTO orders (customer_id, total_amount) VALUES (123, 500.00);
    UPDATE inventory SET quantity = quantity - 5 WHERE product_id = 456;
    
    IF @@ROWCOUNT = 0
        THROW 50001, 'Product not found in inventory', 1;
    
    COMMIT TRANSACTION;
    
END TRY
BEGIN CATCH
    -- Rollback transaction on error
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    
    -- Log error details
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();
    DECLARE @ErrorNumber INT = ERROR_NUMBER();
    DECLARE @ErrorProcedure NVARCHAR(128) = ERROR_PROCEDURE();
    DECLARE @ErrorLine INT = ERROR_LINE();
    
    -- Log to error table
    INSERT INTO error_log (error_number, error_message, error_procedure, error_line, occurred_at)
    VALUES (@ErrorNumber, @ErrorMessage, @ErrorProcedure, @ErrorLine, GETDATE());
    
    -- Re-throw with custom message for application
    THROW 50000, 'Order processing failed. Please contact support.', 1;
END CATCH;
```

**2. Custom Error Handling Procedures:**
```sql
CREATE PROCEDURE usp_handle_error
AS
BEGIN
    DECLARE @error_info NVARCHAR(MAX);
    
    SET @error_info = 'Error ' + CAST(ERROR_NUMBER() AS NVARCHAR(10)) + 
                     ' in procedure ' + ISNULL(ERROR_PROCEDURE(), 'N/A') +
                     ' at line ' + CAST(ERROR_LINE() AS NVARCHAR(10)) +
                     ': ' + ERROR_MESSAGE();
    
    -- Log error
    INSERT INTO system_log (log_level, message, created_at)
    VALUES ('ERROR', @error_info, GETDATE());
    
    -- Return error code to application
    RETURN ERROR_NUMBER();
END;

-- Usage in other procedures
BEGIN TRY
    -- Database operations
END TRY
BEGIN CATCH
    EXEC usp_handle_error;
    THROW;
END CATCH;
```

**PostgreSQL Error Handling:**

**3. Exception Handling in PL/pgSQL:**
```sql
CREATE OR REPLACE FUNCTION transfer_funds(
    from_account_id INTEGER,
    to_account_id INTEGER,
    amount DECIMAL(10,2)
) RETURNS BOOLEAN AS $$
DECLARE
    from_balance DECIMAL(10,2);
BEGIN
    -- Start transaction
    BEGIN
        -- Check source account balance
        SELECT balance INTO STRICT from_balance 
        FROM accounts WHERE account_id = from_account_id;
        
        IF from_balance < amount THEN
            RAISE EXCEPTION 'Insufficient funds. Balance: %, Requested: %', 
                          from_balance, amount
                USING ERRCODE = 'P0001';
        END IF;
        
        -- Perform transfer
        UPDATE accounts SET balance = balance - amount 
        WHERE account_id = from_account_id;
        
        UPDATE accounts SET balance = balance + amount 
        WHERE account_id = to_account_id;
        
        -- Log successful transaction
        INSERT INTO transaction_log (from_account, to_account, amount, status)
        VALUES (from_account_id, to_account_id, amount, 'SUCCESS');
        
        RETURN TRUE;
        
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- Handle missing account
            INSERT INTO error_log (error_code, error_message, occurred_at)
            VALUES ('NO_DATA_FOUND', 'Account not found: ' || from_account_id, NOW());
            RAISE EXCEPTION 'Account % not found', from_account_id;
            
        WHEN OTHERS THEN
            -- Handle any other errors
            INSERT INTO error_log (error_code, error_message, occurred_at)
            VALUES (SQLSTATE, SQLERRM, NOW());
            RAISE;
    END;
END;
$$ LANGUAGE plpgsql;
```

**Application-Level Error Handling:**

**4. Structured Error Response:**
```java
// Java example with proper error handling
public class DatabaseOperationResult {
    private boolean success;
    private String message;
    private Object data;
    private String errorCode;
    
    // Constructors and methods...
}

public DatabaseOperationResult createUser(User user) {
    try {
        // Database operation
        String sql = "INSERT INTO users (username, email, password_hash) VALUES (?, ?, ?)";
        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setString(1, user.getUsername());
        stmt.setString(2, user.getEmail());
        stmt.setString(3, hashPassword(user.getPassword()));
        
        int rowsAffected = stmt.executeUpdate();
        
        if (rowsAffected > 0) {
            return new DatabaseOperationResult(true, "User created successfully", null, null);
        } else {
            return new DatabaseOperationResult(false, "Failed to create user", null, "CREATE_FAILED");
        }
        
    } catch (SQLIntegrityConstraintViolationException e) {
        // Handle duplicate key or constraint violations
        logger.warn("Constraint violation creating user: " + e.getMessage());
        return new DatabaseOperationResult(false, "Username or email already exists", null, "DUPLICATE_ENTRY");
        
    } catch (SQLException e) {
        // Log detailed error for debugging
        logger.error("Database error creating user", e);
        
        // Return generic error to client
        return new DatabaseOperationResult(false, "Database error occurred", null, "DB_ERROR");
    }
}
```

### 94. What are prepared statements?[15][16]

Prepared statements are precompiled SQL statements that separate SQL code from data, providing security and performance benefits.[15][16]

**How Prepared Statements Work:**

**1. Preparation Phase:**
```sql
-- SQL is parsed and compiled once
PREPARE stmt1 FROM 'SELECT * FROM users WHERE username = ? AND status = ?';
```

**2. Execution Phase:**
```sql
-- Parameters are bound and statement executed multiple times
SET @username = 'john_doe';
SET @status = 'active';
EXECUTE stmt1 USING @username, @status;

SET @username = 'jane_smith';
SET @status = 'inactive';
EXECUTE stmt1 USING @username, @status;

DEALLOCATE PREPARE stmt1;
```

**Language-Specific Examples:**

**Java (JDBC):**
```java
// Prepare statement once
String sql = "SELECT customer_id, name, email FROM customers WHERE city = ? AND status = ?";
PreparedStatement pstmt = connection.prepareStatement(sql);

// Execute multiple times with different parameters
// Execution 1
pstmt.setString(1, "New York");
pstmt.setString(2, "Active");
ResultSet rs1 = pstmt.executeQuery();

// Execution 2
pstmt.setString(1, "Los Angeles");
pstmt.setString(2, "Active");
ResultSet rs2 = pstmt.executeQuery();

// Clean up
pstmt.close();
```

**C# (.NET):**
```csharp
using (SqlCommand cmd = new SqlCommand())
{
    cmd.Connection = connection;
    cmd.CommandText = "INSERT INTO orders (customer_id, product_id, quantity, price) VALUES (@customer_id, @product_id, @quantity, @price)";
    
    // Add parameters (types are validated)
    cmd.Parameters.Add("@customer_id", SqlDbType.Int);
    cmd.Parameters.Add("@product_id", SqlDbType.Int);
    cmd.Parameters.Add("@quantity", SqlDbType.Int);
    cmd.Parameters.Add("@price", SqlDbType.Decimal);
    
    // Execute with different values
    foreach (OrderItem item in orderItems)
    {
        cmd.Parameters["@customer_id"].Value = customerId;
        cmd.Parameters["@product_id"].Value = item.ProductId;
        cmd.Parameters["@quantity"].Value = item.Quantity;
        cmd.Parameters["@price"].Value = item.Price;
        
        cmd.ExecuteNonQuery();
    }
}
```

**Python (using psycopg2 for PostgreSQL):**
```python
import psycopg2

# Prepare and execute
cursor = connection.cursor()
query = "SELECT * FROM products WHERE category = %s AND price BETWEEN %s AND %s"

# Execute with different parameters
cursor.execute(query, ('Electronics', 100, 500))
electronics = cursor.fetchall()

cursor.execute(query, ('Clothing', 20, 100))
clothing = cursor.fetchall()
```

**Benefits of Prepared Statements:**[15][16]

**Security Benefits:**
- **SQL Injection Prevention**: Parameters are treated as data, not executable code
- **Input Validation**: Database validates parameter types automatically
- **Safe Dynamic Queries**: Can safely include user input in queries

**Performance Benefits:**
- **Query Plan Caching**: Execution plan reused for multiple executions
- **Reduced Parsing Overhead**: SQL parsed and compiled once
- **Network Efficiency**: Only parameters transmitted for subsequent executions

**Advanced Prepared Statement Features:**

**Batch Processing:**
```java
// Batch multiple operations for better performance
PreparedStatement pstmt = connection.prepareStatement(
    "INSERT INTO order_items (order_id, product_id, quantity) VALUES (?, ?, ?)");

for (OrderItem item : orderItems) {
    pstmt.setInt(1, orderId);
    pstmt.setInt(2, item.getProductId());
    pstmt.setInt(3, item.getQuantity());
    pstmt.addBatch();  // Add to batch instead of executing immediately
}

int[] updateCounts = pstmt.executeBatch();  // Execute all at once
```

**Callable Statements for Stored Procedures:**
```java
// For stored procedure calls
CallableStatement cstmt = connection.prepareCall("{call process_order(?, ?, ?)}");
cstmt.setInt(1, customerId);
cstmt.setDouble(2, totalAmount);
cstmt.registerOutParameter(3, Types.INTEGER);  // OUT parameter

cstmt.execute();
int orderId = cstmt.getInt(3);  // Get OUT parameter value
```


[1](https://www.stratascratch.com/blog/sql-window-functions-interview-questions/)
[2](https://datalemur.com/blog/sql-window-functions-interview-questions)
[3](https://upesonline.ac.in/blog/advanced-sql-interview-questions)
[4](https://codesignal.com/blog/interview-prep/28-sql-interview-questions-and-answers-from-beginner-to-senior-level/)
[5](https://www.dbvis.com/thetable/top-sql-performance-tuning-interview-questions-and-answers/)
[6](https://www.geeksforgeeks.org/sql-performance-tuning/)
[7](https://www.remotely.works/blog/top-advanced-sql-interview-questions-and-answers)
[8](https://techbeamers.com/sql-performance-interview-questions-answers/)
[9](https://interviewbaba.com/sql-performance-tuning-interview-questions/)
[10](https://www.barraiser.com/interview-questions/data-warehouse-architect-interview-questions)
[11](https://sqlpad.io/tutorial/mastering-database-design-key-interview-questions/)
[12](https://www.geeksforgeeks.org/dbms/acid-properties-in-dbms/)
[13](https://interviewprep.org/acid-interview-questions/)
[14](https://in.indeed.com/career-advice/interviewing/sql-injection-interview-questions)
[15](https://www.geeksforgeeks.org/sql/sql-injection/)
[16](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
[17](https://www.vervecopilot.com/question-bank/sql-injection-prevention-techniques)
[18](https://mode.com/sql-tutorial/sql-window-functions/)
[19](https://www.geeksforgeeks.org/interview-experiences/database-interview-questions/)
[20](https://dev.to/giulianaolmos/technical-interview-questions-part-4-git-sql-vs-nosql-28l1)
[21](https://cloudfoundation.com/blog/data-warehouse-interview-questions-data-warehouse-concepts-interview-questions/)
[22](https://blog.umer-farooq.com/system-design-for-beginners-part-iii-database-scalability-with-use-cases-b9c765c8e76)
[23](https://www.geeksforgeeks.org/sql/difference-between-sql-and-nosql/)
[24](https://www.coursera.org/in/articles/data-warehouse-interview-questions)
[25](https://www.reddit.com/r/Backend/comments/1g0lojh/what_would_be_the_best_answer_in_an_interview_if/)
[26](https://www.interviewbit.com/data-warehouse-interview-questions/)
[27](https://www.finalroundai.com/blog/nosql-interview-questions)



## Big Data and Integration (Questions 95-97)

### 95. How can you handle Big Data challenges with SQL Server?[1][2]

Handling big data in SQL Server requires a combination of architectural patterns, performance optimization techniques, and integration with modern big data technologies.[2][1]

**Scaling Strategies for Big Data:**[2]

**1. Vertical Scaling (Scale-Up):**[2]
```sql
-- Optimize hardware resources
-- Increase RAM for buffer pool
EXEC sp_configure 'max server memory', 32768;  -- 32GB
RECONFIGURE;

-- Enable In-Memory OLTP for hot data
CREATE TABLE hot_transactions (
    transaction_id BIGINT IDENTITY PRIMARY KEY NONCLUSTERED,
    customer_id INT NOT NULL,
    amount DECIMAL(18,2) NOT NULL,
    transaction_date DATETIME2 NOT NULL,
    INDEX ix_date NONCLUSTERED (transaction_date)
) WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_AND_DATA);
```

**2. Horizontal Scaling (Scale-Out):**[2]
```sql
-- Implement database sharding
-- Shard by customer ID ranges
CREATE DATABASE Customer_Shard_1;  -- Customers 1-100000
CREATE DATABASE Customer_Shard_2;  -- Customers 100001-200000

-- Use partitioned views to unify access
CREATE VIEW all_customers AS
SELECT * FROM Customer_Shard_1.dbo.customers
UNION ALL
SELECT * FROM Customer_Shard_2.dbo.customers;

-- Application-level routing based on customer_id
-- Route queries to appropriate shard
```

**3. Data Partitioning for Large Tables:**[3]
```sql
-- Range partitioning by date for time-series data
CREATE PARTITION FUNCTION pf_sales_date (DATE)
AS RANGE RIGHT FOR VALUES 
('2024-01-01', '2024-02-01', '2024-03-01', '2024-04-01');

CREATE PARTITION SCHEME ps_sales_date
AS PARTITION pf_sales_date ALL TO ([PRIMARY]);

-- Create partitioned table
CREATE TABLE sales_large (
    sale_id BIGINT IDENTITY,
    sale_date DATE,
    customer_id INT,
    amount DECIMAL(18,2)
) ON ps_sales_date(sale_date);

-- Partition elimination in queries
SELECT SUM(amount) FROM sales_large 
WHERE sale_date >= '2024-02-01' AND sale_date < '2024-03-01';
-- Only scans February partition
```

**4. Columnstore Indexes for Analytics:**[1]
```sql
-- Clustered columnstore for data warehouse tables
CREATE CLUSTERED COLUMNSTORE INDEX cci_sales_fact 
ON sales_fact_large;

-- Nonclustered columnstore for operational analytics
CREATE NONCLUSTERED COLUMNSTORE INDEX ncci_orders_analytics 
ON orders (order_date, customer_id, product_id, quantity, total_amount);

-- Real-time operational analytics
SELECT 
    YEAR(order_date) as year,
    MONTH(order_date) as month,
    COUNT(*) as order_count,
    SUM(total_amount) as revenue
FROM orders
WHERE order_date >= DATEADD(month, -12, GETDATE())
GROUP BY YEAR(order_date), MONTH(order_date);
```

**5. Integration with External Big Data Systems:**
```sql
-- PolyBase for Hadoop integration
-- Create external data source
CREATE EXTERNAL DATA SOURCE hadoop_cluster
WITH (
    TYPE = HADOOP,
    LOCATION = 'hdfs://hadoop-namenode:8020',
    RESOURCE_MANAGER_LOCATION = 'hadoop-resourcemanager:8032'
);

-- Create external file format
CREATE EXTERNAL FILE FORMAT csv_format
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (FIELD_TERMINATOR = ',', STRING_DELIMITER = '"')
);

-- Create external table for HDFS data
CREATE EXTERNAL TABLE ext_web_logs (
    log_date DATE,
    user_id INT,
    page_url VARCHAR(500),
    response_time INT
)
WITH (
    LOCATION = '/weblogs/',
    DATA_SOURCE = hadoop_cluster,
    FILE_FORMAT = csv_format
);

-- Query combines SQL Server and Hadoop data
SELECT 
    u.username,
    COUNT(w.page_url) as page_views,
    AVG(w.response_time) as avg_response
FROM users u
JOIN ext_web_logs w ON u.user_id = w.user_id
WHERE w.log_date >= '2024-01-01'
GROUP BY u.username;
```

**Performance Optimization for Big Data:**[4]

**Memory-Optimized Tables:**
```sql
-- In-Memory OLTP for high-throughput scenarios
CREATE TABLE session_data (
    session_id UNIQUEIDENTIFIER PRIMARY KEY NONCLUSTERED,
    user_id INT NOT NULL,
    created_at DATETIME2 NOT NULL,
    last_activity DATETIME2 NOT NULL,
    session_data NVARCHAR(MAX),
    INDEX ix_user_activity NONCLUSTERED (user_id, last_activity)
) WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_AND_DATA);

-- Native compiled stored procedure for maximum performance
CREATE PROCEDURE usp_update_session_activity
    @session_id UNIQUEIDENTIFIER,
    @activity_data NVARCHAR(MAX)
WITH NATIVE_COMPILATION, SCHEMABINDING
AS
BEGIN ATOMIC WITH (TRANSACTION_ISOLATION_LEVEL = SNAPSHOT, LANGUAGE = N'English')
    UPDATE session_data 
    SET last_activity = SYSDATETIME(),
        session_data = @activity_data
    WHERE session_id = @session_id;
END;
```

### 96. How can you connect SQL Server with other data platforms like Hadoop and Spark?[5][6][1]

Modern data architectures often require integration between traditional SQL databases and big data platforms.[5][1]

**SQL Server to Hadoop Integration:**[1][5]

**1. Using PolyBase:**
```sql
-- Enable PolyBase feature
EXEC sp_configure 'polybase enabled', 1;
RECONFIGURE;

-- Create master key for encryption
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'ComplexPassword123!';

-- Create database scoped credential for Hadoop
CREATE DATABASE SCOPED CREDENTIAL hadoop_credential
WITH IDENTITY = 'hadoop_user', SECRET = 'hadoop_password';

-- Create external data source pointing to Hadoop cluster
CREATE EXTERNAL DATA SOURCE hadoop_data_lake
WITH (
    TYPE = HADOOP,
    LOCATION = 'hdfs://hadoop-cluster:8020/data',
    CREDENTIAL = hadoop_credential
);

-- Access Hadoop data from SQL Server
SELECT 
    ss.customer_id,
    ss.total_purchases,
    h.click_count,
    h.session_duration
FROM sql_server_customers ss
JOIN hadoop_web_analytics h ON ss.customer_id = h.customer_id
WHERE ss.registration_date >= '2024-01-01';
```

**2. HDFS Integration:**
```sql
-- Create external table for HDFS stored data
CREATE EXTERNAL TABLE customer_clickstream (
    customer_id INT,
    page_id INT,
    timestamp BIGINT,
    session_id VARCHAR(50)
)
WITH (
    LOCATION = '/clickstream/year=2024/',
    DATA_SOURCE = hadoop_data_lake,
    FILE_FORMAT = parquet_format
);

-- Aggregate clickstream data with SQL Server customer data
WITH customer_behavior AS (
    SELECT 
        customer_id,
        COUNT(*) as total_clicks,
        COUNT(DISTINCT session_id) as total_sessions
    FROM customer_clickstream
    WHERE timestamp >= UNIX_TIMESTAMP('2024-01-01')
    GROUP BY customer_id
)
SELECT 
    c.name,
    c.email,
    cb.total_clicks,
    cb.total_sessions,
    cb.total_clicks * 1.0 / cb.total_sessions as avg_clicks_per_session
FROM customers c
JOIN customer_behavior cb ON c.customer_id = cb.customer_id;
```

**SQL Server to Spark Integration:**[6]

**3. Spark SQL with JDBC Connection:**
```python
# Python/PySpark code to connect to SQL Server
from pyspark.sql import SparkSession

# Create Spark session
spark = SparkSession.builder \
    .appName("SQL Server Integration") \
    .config("spark.jars", "/path/to/mssql-jdbc.jar") \
    .getOrCreate()

# Read data from SQL Server
sql_server_df = spark.read \
    .format("jdbc") \
    .option("url", "jdbc:sqlserver://sql-server:1433;databaseName=MyDB") \
    .option("dbtable", "customers") \
    .option("user", "sql_user") \
    .option("password", "sql_password") \
    .load()

# Process data in Spark
customer_analytics = sql_server_df \
    .groupBy("region") \
    .agg(
        F.count("*").alias("customer_count"),
        F.avg("annual_revenue").alias("avg_revenue"),
        F.max("last_purchase_date").alias("latest_purchase")
    )

# Write results back to SQL Server
customer_analytics.write \
    .format("jdbc") \
    .option("url", "jdbc:sqlserver://sql-server:1433;databaseName=MyDB") \
    .option("dbtable", "customer_analytics_results") \
    .option("user", "sql_user") \
    .option("password", "sql_password") \
    .mode("overwrite") \
    .save()
```

**4. Spark SQL for Complex Analytics:**[6]
```sql
-- Register SQL Server table as Spark temporary view
CREATE TEMPORARY VIEW customers
USING jdbc
OPTIONS (
  url "jdbc:sqlserver://sql-server:1433;databaseName=MyDB",
  dbtable "customers",
  user "sql_user",
  password "sql_password"
);

-- Complex analytical query in Spark SQL
WITH customer_segments AS (
    SELECT 
        customer_id,
        annual_revenue,
        CASE 
            WHEN annual_revenue > 100000 THEN 'Premium'
            WHEN annual_revenue > 50000 THEN 'Gold'
            WHEN annual_revenue > 20000 THEN 'Silver'
            ELSE 'Bronze'
        END as segment
    FROM customers
),
segment_analysis AS (
    SELECT 
        segment,
        COUNT(*) as customer_count,
        AVG(annual_revenue) as avg_revenue,
        MIN(annual_revenue) as min_revenue,
        MAX(annual_revenue) as max_revenue
    FROM customer_segments
    GROUP BY segment
)
SELECT * FROM segment_analysis ORDER BY avg_revenue DESC;
```

**5. Real-time Data Pipeline:**[5]
```python
# Structured Streaming from SQL Server to Spark
from pyspark.sql import functions as F
from pyspark.sql.types import *

# Define schema for streaming data
schema = StructType([
    StructField("transaction_id", LongType(), True),
    StructField("customer_id", IntegerType(), True),
    StructField("amount", DecimalType(10,2), True),
    StructField("transaction_time", TimestampType(), True)
])

# Read streaming data (could be from Kafka, files, etc.)
streaming_df = spark \
    .readStream \
    .format("kafka") \
    .option("kafka.bootstrap.servers", "kafka:9092") \
    .option("subscribe", "transactions") \
    .load() \
    .select(F.from_json(F.col("value").cast("string"), schema).alias("data")) \
    .select("data.*")

# Process streaming data with window functions
windowed_aggregations = streaming_df \
    .withWatermark("transaction_time", "10 minutes") \
    .groupBy(
        F.window(F.col("transaction_time"), "5 minutes"),
        F.col("customer_id")
    ) \
    .agg(
        F.sum("amount").alias("total_amount"),
        F.count("*").alias("transaction_count")
    )

# Write results back to SQL Server
query = windowed_aggregations.writeStream \
    .outputMode("update") \
    .format("console") \
    .trigger(processingTime='30 seconds') \
    .start()
```

### 97. When should you use NoSQL databases over traditional RDBMS?[7][8][9]

The choice between NoSQL and RDBMS depends on specific application requirements, data characteristics, and scalability needs.[8][9][7]

**NoSQL vs RDBMS Decision Matrix:**[7]

| Factor | Use NoSQL When | Use RDBMS When |
|--------|----------------|----------------|
| **Data Structure** | Unstructured, semi-structured, rapidly changing schema[9] | Well-defined, stable schema with relationships |
| **Scalability** | Need horizontal scaling across many servers[8] | Vertical scaling sufficient, complex joins required |
| **Consistency** | Eventual consistency acceptable[9] | Strong ACID consistency required |
| **Query Complexity** | Simple queries, key-value lookups[7] | Complex queries with joins, transactions |
| **Development Speed** | Rapid prototyping, agile development[9] | Stable requirements, well-defined data model |

**Specific NoSQL Use Cases:**[9]

**1. Document Databases (MongoDB, CouchDB):**
```javascript
// MongoDB - Flexible document structure
// User profile with varying fields
{
  "_id": ObjectId("..."),
  "username": "john_doe",
  "email": "john@example.com",
  "profile": {
    "firstName": "John",
    "lastName": "Doe",
    "preferences": {
      "theme": "dark",
      "notifications": ["email", "sms"],
      "customSettings": {
        "dashboard": ["sales", "analytics"],
        "widgets": [
          {"type": "chart", "data": "revenue"},
          {"type": "table", "data": "customers"}
        ]
      }
    }
  },
  "orders": [
    {"orderId": "ORD001", "total": 299.99, "items": [...]},
    {"orderId": "ORD002", "total": 149.50, "items": [...]}
  ]
}

// Equivalent RDBMS would require multiple normalized tables
// users, user_preferences, user_settings, orders, order_items, etc.
```

**When to use Document NoSQL:**[9]
- Content management systems
- User profiles and personalization
- Product catalogs with varying attributes
- Rapid application development

**2. Key-Value Stores (Redis, DynamoDB):**
```python
# Redis - High-performance caching and session storage
import redis

r = redis.Redis(host='localhost', port=6379, db=0)

# Session management
r.setex('session:user123', 3600, json.dumps({
    'user_id': 123,
    'username': 'john_doe',
    'role': 'admin',
    'last_activity': '2024-08-29T12:00:00Z'
}))

# Real-time counters
r.incr('page_views:homepage')
r.incr('api_calls:user123')

# Distributed cache
r.setex('expensive_query_result', 300, json.dumps(query_results))
```

**When to use Key-Value NoSQL:**[9]
- Session storage
- Caching layers
- Real-time recommendations
- Shopping carts
- Gaming leaderboards

**3. Column-Family (Cassandra, HBase):**
```sql
-- Cassandra CQL for time-series data
CREATE KEYSPACE iot_data WITH replication = {
  'class': 'SimpleStrategy',
  'replication_factor': 3
};

-- Wide column design for sensor data
CREATE TABLE sensor_readings (
    sensor_id UUID,
    reading_date DATE,
    reading_time TIMESTAMP,
    temperature DECIMAL,
    humidity DECIMAL,
    pressure DECIMAL,
    PRIMARY KEY (sensor_id, reading_date, reading_time)
) WITH CLUSTERING ORDER BY (reading_date DESC, reading_time DESC);

-- Efficient time-range queries
SELECT temperature, humidity 
FROM sensor_readings 
WHERE sensor_id = 12345678-1234-1234-1234-123456789012
  AND reading_date >= '2024-08-01'
  AND reading_date <= '2024-08-31';
```

**When to use Column-Family NoSQL:**[7]
- IoT and time-series data
- High write volume applications
- Analytics and data warehousing
- Distributed logging systems

**4. Graph Databases (Neo4j, Amazon Neptune):**
```cypher
// Neo4j Cypher for social networks and recommendations
// Create users and relationships
CREATE (john:User {name: 'John Doe', age: 30})
CREATE (jane:User {name: 'Jane Smith', age: 25})
CREATE (mike:User {name: 'Mike Johnson', age: 35})

CREATE (product1:Product {name: 'iPhone 15', category: 'Electronics'})
CREATE (product2:Product {name: 'MacBook Pro', category: 'Computers'})

// Create relationships
CREATE (john)-[:FRIENDS_WITH]->(jane)
CREATE (jane)-[:FRIENDS_WITH]->(mike)
CREATE (john)-[:PURCHASED]->(product1)
CREATE (jane)-[:PURCHASED]->(product1)
CREATE (mike)-[:PURCHASED]->(product2)

// Find friend recommendations based on mutual connections
MATCH (user:User {name: 'John Doe'})-[:FRIENDS_WITH]-(friend)-[:FRIENDS_WITH]-(suggested)
WHERE NOT (user)-[:FRIENDS_WITH]-(suggested) AND user <> suggested
RETURN suggested.name AS suggested_friend, COUNT(*) AS mutual_friends
ORDER BY mutual_friends DESC;

// Product recommendations based on friends' purchases
MATCH (user:User {name: 'John Doe'})-[:FRIENDS_WITH]-(friend)-[:PURCHASED]->(product)
WHERE NOT (user)-[:PURCHASED]->(product)
RETURN product.name AS recommended_product, COUNT(*) AS friend_purchases
ORDER BY friend_purchases DESC;
```

**When to use Graph NoSQL:**[9]
- Social networks
- Recommendation engines
- Fraud detection
- Network analysis
- Knowledge graphs

**Hybrid Approaches:**[8]

**Polyglot Persistence:**
```python
# Example architecture using multiple databases
class UserService:
    def __init__(self):
        self.postgres = PostgreSQLConnection()  # User accounts, transactions
        self.mongodb = MongoDBConnection()      # User profiles, preferences  
        self.redis = RedisConnection()          # Sessions, cache
        self.neo4j = Neo4jConnection()         # Social connections
    
    def create_user(self, user_data):
        # Store core user data in PostgreSQL
        user_id = self.postgres.create_user({
            'username': user_data['username'],
            'email': user_data['email'],
            'created_at': datetime.now()
        })
        
        # Store flexible profile data in MongoDB
        self.mongodb.users.insert_one({
            'user_id': user_id,
            'profile': user_data['profile'],
            'preferences': user_data.get('preferences', {})
        })
        
        # Create user node in graph database
        self.neo4j.create_user_node(user_id, user_data['username'])
        
        return user_id
    
    def get_user_dashboard(self, user_id):
        # Get core data from PostgreSQL
        user_core = self.postgres.get_user(user_id)
        
        # Get profile from MongoDB
        user_profile = self.mongodb.users.find_one({'user_id': user_id})
        
        # Get cached data from Redis
        cached_data = self.redis.get(f'dashboard:{user_id}')
        
        # Get social connections from Neo4j
        connections = self.neo4j.get_user_connections(user_id)
        
        return {
            'user': user_core,
            'profile': user_profile,
            'cached_metrics': cached_data,
            'social_connections': connections
        }
```

## Scenario-Based and Problem-Solving Questions (Questions 98-115)

### 98-105. Complex Scenario-Based Questions

**98. Write a query to find the top 5 customers with the highest total order amounts.**
```sql
-- Method 1: Using window function with filtering
WITH customer_totals AS (
    SELECT 
        c.customer_id,
        c.name,
        c.email,
        SUM(o.total_amount) as total_spent,
        COUNT(o.order_id) as order_count,
        ROW_NUMBER() OVER (ORDER BY SUM(o.total_amount) DESC) as rank
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    WHERE o.order_date >= DATEADD(YEAR, -1, GETDATE())  -- Last year only
      AND o.status = 'Completed'
    GROUP BY c.customer_id, c.name, c.email
)
SELECT 
    customer_id,
    name,
    email,
    total_spent,
    order_count,
    total_spent / order_count as avg_order_value
FROM customer_totals
WHERE rank <= 5;

-- Method 2: Using TOP with ORDER BY
SELECT TOP 5
    c.customer_id,
    c.name,
    SUM(o.total_amount) as total_spent,
    COUNT(o.order_id) as total_orders,
    AVG(o.total_amount) as avg_order_value,
    MAX(o.order_date) as last_order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status IN ('Completed', 'Shipped')
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;
```

**99. Write a query to find the average salary for each department, excluding employees above a threshold.**
```sql
-- Complex salary analysis with multiple conditions
WITH salary_analysis AS (
    SELECT 
        d.department_name,
        e.employee_id,
        e.name,
        e.salary,
        e.hire_date,
        -- Calculate percentile within department
        PERCENT_RANK() OVER (PARTITION BY e.department_id ORDER BY e.salary) as salary_percentile,
        -- Calculate rolling average of last 5 hires
        AVG(e.salary) OVER (
            PARTITION BY e.department_id 
            ORDER BY e.hire_date 
            ROWS 4 PRECEDING
        ) as rolling_avg_salary
    FROM employees e
    JOIN departments d ON e.department_id = d.department_id
    WHERE e.status = 'Active'
      AND e.hire_date >= DATEADD(YEAR, -5, GETDATE())  -- Last 5 years
),
filtered_employees AS (
    -- Exclude top 10% earners and outliers
    SELECT *
    FROM salary_analysis
    WHERE salary_percentile <= 0.90  -- Exclude top 10%
      AND salary BETWEEN 
          (SELECT AVG(salary) * 0.5 FROM salary_analysis sa2 WHERE sa2.department_name = salary_analysis.department_name) AND
          (SELECT AVG(salary) * 2.0 FROM salary_analysis sa3 WHERE sa3.department_name = salary_analysis.department_name)
)
SELECT 
    department_name,
    COUNT(*) as employee_count,
    AVG(salary) as avg_salary,
    MIN(salary) as min_salary,
    MAX(salary) as max_salary,
    STDDEV(salary) as salary_std_dev,
    AVG(rolling_avg_salary) as avg_rolling_salary
FROM filtered_employees
GROUP BY department_name
HAVING COUNT(*) >= 3  -- Only departments with at least 3 employees
ORDER BY avg_salary DESC;
```

**100. Write a query to find the difference in days between order date and ship date.**
```sql
-- Comprehensive shipping performance analysis
WITH shipping_analysis AS (
    SELECT 
        o.order_id,
        o.customer_id,
        c.name as customer_name,
        c.region,
        o.order_date,
        o.ship_date,
        o.required_date,
        o.total_amount,
        -- Calculate various date differences
        DATEDIFF(DAY, o.order_date, o.ship_date) as days_to_ship,
        DATEDIFF(DAY, o.order_date, o.required_date) as days_required,
        CASE 
            WHEN o.ship_date <= o.required_date THEN 'On Time'
            WHEN o.ship_date > o.required_date THEN 'Late'
            WHEN o.ship_date IS NULL THEN 'Not Shipped'
            ELSE 'Unknown'
        END as shipping_status,
        -- Business day calculation (excluding weekends)
        DATEDIFF(DAY, o.order_date, o.ship_date) - 
        (DATEDIFF(WEEK, o.order_date, o.ship_date) * 2) -
        CASE WHEN DATEPART(WEEKDAY, o.order_date) = 1 THEN 1 ELSE 0 END -
        CASE WHEN DATEPART(WEEKDAY, o.ship_date) = 7 THEN 1 ELSE 0 END as business_days_to_ship
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    WHERE o.order_date >= DATEADD(YEAR, -1, GETDATE())
),
performance_metrics AS (
    SELECT 
        region,
        shipping_status,
        COUNT(*) as order_count,
        AVG(days_to_ship) as avg_days_to_ship,
        AVG(business_days_to_ship) as avg_business_days_to_ship,
        MIN(days_to_ship) as min_days_to_ship,
        MAX(days_to_ship) as max_days_to_ship,
        PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY days_to_ship) as median_days_to_ship,
        AVG(total_amount) as avg_order_value
    FROM shipping_analysis
    WHERE days_to_ship IS NOT NULL
    GROUP BY region, shipping_status
)
SELECT 
    region,
    shipping_status,
    order_count,
    ROUND(avg_days_to_ship, 2) as avg_days_to_ship,
    ROUND(avg_business_days_to_ship, 2) as avg_business_days_to_ship,
    median_days_to_ship,
    ROUND(avg_order_value, 2) as avg_order_value,
    -- Calculate performance score
    CASE 
        WHEN avg_days_to_ship <= 2 THEN 'Excellent'
        WHEN avg_days_to_ship <= 5 THEN 'Good'
        WHEN avg_days_to_ship <= 10 THEN 'Average'
        ELSE 'Poor'
    END as performance_grade
FROM performance_metrics
ORDER BY region, shipping_status;
```

### 106-115. Advanced Problem-Solving Scenarios[10][11]

**106. How would you handle corrupt data in a critical production table?**[11][10]

**Immediate Response Protocol:**[11]
```sql
-- Step 1: Assess the scope of corruption
-- Create audit query to identify corrupt records
WITH corruption_check AS (
    SELECT 
        order_id,
        customer_id,
        order_date,
        total_amount,
        -- Identify data anomalies
        CASE 
            WHEN total_amount < 0 THEN 'Negative Amount'
            WHEN total_amount > 1000000 THEN 'Suspicious High Amount'
            WHEN customer_id IS NULL THEN 'Missing Customer'
            WHEN order_date > GETDATE() THEN 'Future Date'
            WHEN order_date < '1900-01-01' THEN 'Invalid Date'
            ELSE 'Valid'
        END as data_status
    FROM orders
    WHERE last_modified >= DATEADD(HOUR, -24, GETDATE())
)
SELECT 
    data_status,
    COUNT(*) as record_count,
    MIN(order_date) as earliest_affected,
    MAX(order_date) as latest_affected
FROM corruption_check
GROUP BY data_status;

-- Step 2: Immediate isolation
-- Create backup of current state
SELECT * INTO orders_corrupt_backup 
FROM orders 
WHERE last_modified >= DATEADD(HOUR, -24, GETDATE());

-- Step 3: Point-in-time recovery preparation
-- Identify last known good transaction log backup
SELECT 
    backup_set_id,
    database_name,
    backup_start_date,
    backup_finish_date,
    type,
    first_lsn,
    last_lsn
FROM msdb.dbo.backupset 
WHERE database_name = 'YourDatabase' 
  AND backup_start_date >= DATEADD(DAY, -7, GETDATE())
ORDER BY backup_start_date DESC;
```

**Recovery Strategy:**[10]
```sql
-- Step 4: Restore from backup to staging environment
RESTORE DATABASE YourDatabase_Recovery 
FROM DISK = 'C:\Backups\YourDatabase_Full.bak'
WITH MOVE 'YourDatabase' TO 'C:\Data\YourDatabase_Recovery.mdf',
     MOVE 'YourDatabase_Log' TO 'C:\Logs\YourDatabase_Recovery.ldf',
     NORECOVERY;

-- Apply transaction log backups up to point before corruption
RESTORE LOG YourDatabase_Recovery 
FROM DISK = 'C:\Backups\YourDatabase_Log_20240829_0800.trn'
WITH STOPAT = '2024-08-29 07:45:00', NORECOVERY;

-- Final recovery
RESTORE DATABASE YourDatabase_Recovery WITH RECOVERY;

-- Step 5: Data validation and correction
-- Validate recovered data integrity
WITH validation_results AS (
    SELECT 
        'Production' as source,
        COUNT(*) as total_records,
        COUNT(CASE WHEN total_amount > 0 THEN 1 END) as valid_amounts,
        MAX(order_date) as latest_order
    FROM orders
    WHERE order_date < '2024-08-29 07:45:00'
    
    UNION ALL
    
    SELECT 
        'Recovery' as source,
        COUNT(*) as total_records,
        COUNT(CASE WHEN total_amount > 0 THEN 1 END) as valid_amounts,
        MAX(order_date) as latest_order
    FROM YourDatabase_Recovery.dbo.orders
    WHERE order_date < '2024-08-29 07:45:00'
)
SELECT * FROM validation_results;
```

**107. How would you approach optimizing a slow-running query in a high-traffic database?**[12][13]

**Systematic Optimization Approach:**[12]
```sql
-- Step 1: Capture baseline metrics
SET STATISTICS IO ON;
SET STATISTICS TIME ON;

-- Original slow query
SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) as order_count,
    SUM(o.total_amount) as total_spent,
    AVG(o.total_amount) as avg_order_value,
    MAX(o.order_date) as last_order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id 
    AND o.order_date >= DATEADD(YEAR, -1, GETDATE())
LEFT JOIN order_items oi ON o.order_id = oi.order_id
WHERE c.status = 'Active' 
    AND c.registration_date >= DATEADD(YEAR, -2, GETDATE())
GROUP BY c.customer_id, c.name
HAVING SUM(o.total_amount) > 1000
ORDER BY total_spent DESC;

-- Step 2: Analyze execution plan
-- Look for table scans, key lookups, hash joins, sorts
SELECT 
    qs.total_elapsed_time / qs.execution_count as avg_elapsed_time,
    qs.total_logical_reads / qs.execution_count as avg_logical_reads,
    qs.execution_count,
    SUBSTRING(qt.text, (qs.statement_start_offset/2)+1,
        ((CASE qs.statement_end_offset WHEN -1 THEN DATALENGTH(qt.text)
        ELSE qs.statement_end_offset END - qs.statement_start_offset)/2)+1) as query_text
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
WHERE qt.text LIKE '%customers c LEFT JOIN orders o%'
ORDER BY avg_elapsed_time DESC;

-- Step 3: Index optimization
-- Create covering index for customer queries
CREATE NONCLUSTERED INDEX IX_Customers_Status_RegDate_Covering
ON customers (status, registration_date)
INCLUDE (customer_id, name);

-- Create optimized index for orders
CREATE NONCLUSTERED INDEX IX_Orders_Customer_Date_Amount
ON orders (customer_id, order_date)
INCLUDE (order_id, total_amount);

-- Step 4: Query rewrite for better performance
-- Rewritten optimized version
WITH active_customers AS (
    SELECT customer_id, name
    FROM customers WITH (INDEX(IX_Customers_Status_RegDate_Covering))
    WHERE status = 'Active' 
      AND registration_date >= DATEADD(YEAR, -2, GETDATE())
),
customer_order_summary AS (
    SELECT 
        o.customer_id,
        COUNT(o.order_id) as order_count,
        SUM(o.total_amount) as total_spent,
        AVG(o.total_amount) as avg_order_value,
        MAX(o.order_date) as last_order_date
    FROM orders o WITH (INDEX(IX_Orders_Customer_Date_Amount))
    WHERE o.order_date >= DATEADD(YEAR, -1, GETDATE())
      AND EXISTS (SELECT 1 FROM active_customers ac WHERE ac.customer_id = o.customer_id)
    GROUP BY o.customer_id
    HAVING SUM(o.total_amount) > 1000
)
SELECT 
    ac.customer_id,
    ac.name,
    ISNULL(cos.order_count, 0) as order_count,
    ISNULL(cos.total_spent, 0) as total_spent,
    ISNULL(cos.avg_order_value, 0) as avg_order_value,
    cos.last_order_date
FROM active_customers ac
LEFT JOIN customer_order_summary cos ON ac.customer_id = cos.customer_id
WHERE cos.total_spent > 1000 OR cos.total_spent IS NULL
ORDER BY cos.total_spent DESC;
```

**108-115. Additional Scenario-Based Solutions:**

**Database Design for High Availability:**[10]
```sql
-- Always On Availability Groups configuration
-- Primary replica configuration
ALTER AVAILABILITY GROUP [MyAG]
ADD DATABASE [CriticalDB];

-- Add secondary replica
ALTER AVAILABILITY GROUP [MyAG] 
ADD REPLICA ON 'SQL-Server-2' 
WITH (ENDPOINT_URL = 'TCP://SQL-Server-2:5022', 
      AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
      FAILOVER_MODE = AUTOMATIC,
      SECONDARY_ROLE(ALLOW_CONNECTIONS = READ_ONLY));

-- Health monitoring
SELECT 
    ag.name as availability_group,
    r.replica_server_name,
    r.availability_mode_desc,
    r.failover_mode_desc,
    rs.role_desc,
    rs.operational_state_desc,
    rs.synchronization_health_desc
FROM sys.availability_groups ag
JOIN sys.availability_replicas r ON ag.group_id = r.group_id
JOIN sys.dm_hadr_availability_replica_states rs ON r.replica_id = rs.replica_id;
```


[1](https://www.projectpro.io/article/top-50-spark-interview-questions-and-answers-for-2021/208)
[2](https://blog.algomaster.io/p/system-design-how-to-scale-a-database)
[3](https://www.geeksforgeeks.org/system-design/complete-reference-to-databases-in-designing-systems/)
[4](https://www.geeksforgeeks.org/sql-performance-tuning/)
[5](https://www.vervecopilot.com/interview-questions/top-30-most-common-hadoop-spark-interview-questions-you-should-prepare-for)
[6](https://cloudfoundation.com/blog/spark-sql-interview-questions/)
[7](https://www.geeksforgeeks.org/sql/difference-between-sql-and-nosql/)
[8](https://www.reddit.com/r/Backend/comments/1g0lojh/what_would_be_the_best_answer_in_an_interview_if/)
[9](https://www.finalroundai.com/blog/nosql-interview-questions)
[10](https://www.finalroundai.com/interview-questions/disaster-recovery-strategies-dba)
[11](https://www.janbasktraining.com/interview-questions/disaster-recovery-questions-and-answers/)
[12](https://interviewbaba.com/sql-performance-tuning-interview-questions/)
[13](https://techbeamers.com/sql-performance-interview-questions-answers/)
[14](https://www.designgurus.io/blog/scaling-sql-databases)
[15](https://www.geeksforgeeks.org/interview-experiences/database-interview-questions/)
[16](https://www.linkedin.com/posts/vivek-6a821b23a_sql-server-scenario-based-interview-question-activity-7130413661520576512-BJuX)
[17](https://www.interviews.chat/questions/backup-engineer)
[18](https://www.interviewbit.com/spark-interview-questions/)
[19](https://www.sqlshack.com/sql-interview-questions-on-database-backups-restores-and-recovery-part-i/)