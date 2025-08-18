
---

## 🏗️ Step 1: Create Tables

These four tables simulate a company environment where departments oversee projects, employees work in departments, and tasks are assigned to both employees and projects:

```sql
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE tasks (
    task_id INT PRIMARY KEY,
    task_name VARCHAR(100),
    emp_id INT,
    project_id INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);
```

---

## 🔢 Step 2: Insert Sample Data (20+ Records)

```sql
INSERT INTO departments VALUES
(1, 'Engineering'), (2, 'Marketing'), (3, 'HR'), (4, 'Sales');

INSERT INTO employees VALUES
(101, 'Alice', 1), (102, 'Bob', 1), (103, 'Charlie', 2), (104, 'Dana', 3),
(105, 'Eva', 4), (106, 'Frank', 2), (107, 'Grace', 1), (108, 'Hector', 3),
(109, 'Ivy', 4), (110, 'Jack', 2), (111, 'Kara', 1), (112, 'Leo', 3);

INSERT INTO projects VALUES
(201, 'Website Redesign', 1), (202, 'Ad Campaign', 2), (203, 'Recruitment Drive', 3),
(204, 'Sales Funnel', 4), (205, 'Product Launch', 1), (206, 'Social Boost', 2),
(207, 'Team Building', 3), (208, 'Client Outreach', 4);

INSERT INTO tasks VALUES
(301, 'Design Mockups', 101, 201), (302, 'Frontend Dev', 102, 201),
(303, 'Marketing Strategy', 103, 202), (304, 'Interview Scheduling', 104, 203),
(305, 'Lead Generation', 105, 204), (306, 'Ad Copywriting', 106, 202),
(307, 'UI Update', 107, 205), (308, 'Team Presentation', 108, 207),
(309, 'Market Analysis', 109, 204), (310, 'Pitch Deck', 110, 202),
(311, 'Backend Dev', 111, 205), (312, 'Resume Screening', 112, 203),
(313, 'Client Calling', 105, 208), (314, 'Social Strategy', 106, 206),
(315, 'Bug Fixing', 107, 201), (316, 'Meeting Prep', 104, 207),
(317, 'Demo Creation', 111, 205), (318, 'Job Post Draft', 112, 203),
(319, 'Content Writing', 103, 206), (320, 'Campaign Audit', 110, 206),
(321, 'Sales Presentation', 109, 208), (322, 'Data Cleanup', 108, 207);
```

---

## 🧠 Step 3: 50+ Practice Questions

Here’s a comprehensive set to sharpen your skills:

### 🔗 Basic Joins
1. List all employees with their department names.
2. Show every project and its associated department.
3. List all tasks with employee names.
4. Get employee names and projects they’re working on through tasks.
5. Display departments with their total employees.
6. Find tasks assigned to employees in the ‘Marketing’ department.

### ⚙️ INNER JOIN Focus
7. List employees assigned to tasks.
8. Show projects with at least one task.
9. Get task names and project names.
10. Display tasks with employee and department names.
11. Show employee details for each task.

### ↩️ LEFT JOIN Practice
12. List all employees and their tasks (even if none).
13. List all projects and assigned tasks (even if none).
14. Show all departments and any projects they have.
15. Get all employees and the departments, including those without a department.
16. List employees who haven’t been assigned tasks.

### 👉 RIGHT JOIN Practice
17. Show all tasks and the employees (include tasks without employees).
18. List all projects and employees through tasks (even if project has no employee).
19. Display all departments and employees (include departments without employees).

### 🌐 FULL OUTER JOIN Concepts (simulated)
20. List all tasks and employees—include unmatched records.
21. List all projects and departments—include unmatched records.

### 🔄 Cross Joins & Cartesian Products
22. List every employee with every project combination.
23. Combine each department with each employee regardless of connection.

### 🧮 Aggregation with Joins
24. Count tasks per employee.
25. Count projects per department.
26. Find departments with more than 2 employees.
27. Get employees working on more than 1 task.
28. Find projects with more than 3 tasks.

### 🔍 Advanced Filtering
29. List employees assigned to 'Ad Campaign'.
30. Get tasks containing ‘Dev’ in task_name.
31. Show employees whose name starts with ‘A’.
32. Display departments starting with ‘M’.
33. Find tasks performed by employees from ‘Sales’.

### 🎯 Subqueries + Joins
34. Get employees with max task count.
35. Find departments with least number of projects.
36. Show employees assigned to projects from 'Engineering'.
37. Get employees who’ve worked on 'Social Boost'.

### 🧩 Self Joins & Nested Joins
38. List departments and compare total tasks per project.
39. For each employee, show others in the same department.
40. Display employees whose names match someone else’s first letter.

### 🧪 Real-World Challenges
41. Build a leaderboard of employees by task count.
42. Find which project has most contributors.
43. Identify employees not in Engineering but still assigned tasks.
44. List pairs of employees who’ve worked on the same project.
45. Get total tasks per department via joins.

### 🧯 Miscellaneous
46. Assign default departments if missing.
47. Show latest task per employee (if timestamps exist).
48. Replace null values in LEFT JOINs.
49. Count all active employees (assigned tasks).
50. Generate a report with all department, employee, project, task info combined.

---
