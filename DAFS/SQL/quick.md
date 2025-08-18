---

## **SQL Interview Quick Revision – 120 Questions in Short**

---

### **1. Basics**

* **SQL**: Structured Query Language, used to manage relational DBs.
* **Types**:

  * **DDL** → `CREATE`, `ALTER`, `DROP`, `TRUNCATE`
  * **DML** → `INSERT`, `UPDATE`, `DELETE`
  * **DCL** → `GRANT`, `REVOKE`
  * **TCL** → `COMMIT`, `ROLLBACK`, `SAVEPOINT`
* **Keys**: Primary (unique + not null), Foreign (refers to another table), Unique (unique but allows NULL), Composite (multiple columns), Candidate (can be PK), Surrogate (auto-generated).
* **Constraints**: `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT`, `PRIMARY KEY`, `FOREIGN KEY`.
* **NULL vs 0**: NULL = unknown, 0 = numeric zero.

---

### **2. Queries & Clauses**

* **WHERE** → Filters before grouping; **HAVING** → Filters after grouping.
* **GROUP BY** → Aggregate by columns; **ORDER BY** → Sort results.
* **LIMIT / OFFSET** → Row selection.
* **DISTINCT** → Unique values.
* **BETWEEN, LIKE, IN** → Range, pattern, list matching.
* **CASE** → Conditional logic.
* **COALESCE / IFNULL** → Replace NULL.
* **EXISTS / IN** → Subquery checks.
* **ANY / ALL** → Compare with set.
* **Subqueries**: Nested SELECT; **Correlated subquery** refers to outer query.

---

### **3. Joins**

* **INNER JOIN** → Matching rows only.
* **LEFT JOIN** → All from left, match from right.
* **RIGHT JOIN** → All from right, match from left.
* **FULL OUTER JOIN** → All rows from both.
* **CROSS JOIN** → Cartesian product.
* **SELF JOIN** → Join table with itself.

---

### **4. Functions**

* **Aggregate**: `SUM`, `AVG`, `MAX`, `MIN`, `COUNT`.
* **Scalar**: `UPPER`, `LOWER`, `LENGTH`, `ROUND`.
* **Date**: `NOW`, `DATE_FORMAT`, `YEAR`, `MONTH`, `DAY`, `DATEDIFF`.
* **String**: `CONCAT`.
* **NULL Functions**: `COALESCE`, `IFNULL`, `NULLIF`.

---

### **5. Indexing & Performance**

* **Index**: Speeds reads, slows writes.
* **Clustered**: Physical order; **Non-clustered**: Separate structure.
* **Composite Index** → Multiple columns.
* **EXPLAIN** → Check query plan.
* Avoid `SELECT *` for performance.

---

### **6. Transactions**

* **Transaction** → Unit of work.
* **ACID**: Atomicity, Consistency, Isolation, Durability.
* **COMMIT** → Save changes; **ROLLBACK** → Undo; **SAVEPOINT** → Partial rollback.
* **Autocommit** → Automatic commit mode.

---

### **7. Constraints & Keys**

* **Primary Key** → Unique & not null.
* **Foreign Key** → Ensures referential integrity.
* **CASCADE / SET NULL / NO ACTION** → Behavior on parent change.

---

### **8. Views**

* **View** → Virtual table from query.
* **Materialized View** → Stores data physically.
* Views can have joins, filters, aggregations.

---

### **9. Advanced**

* **Normalization**: 1NF, 2NF, 3NF, BCNF.
* **Denormalization**: Add redundancy for speed.
* **Stored Procedure** → Precompiled SQL code.
* **Function** → Returns a value, used in queries.
* **Trigger** → Auto executes on events (`BEFORE`/`AFTER`).
* **CTE** → Temporary named result; supports recursion.
* **Window Functions**: `RANK`, `DENSE_RANK`, `ROW_NUMBER`, `LEAD`, `LAG`.
* **PARTITION BY** → Group inside window function.
* **Pivot / Unpivot** → Row-column transformations.
* **OLTP vs OLAP**: Transactional vs Analytical systems.

---

✅ **Tip for Interviews**:

1. Always explain with **examples**.
2. Show **SQL syntax** when possible.
3. Mention **performance considerations** (indexes, query optimization).
4. Relate concepts to **real-world scenarios** (bank transactions, e-commerce orders).

---
