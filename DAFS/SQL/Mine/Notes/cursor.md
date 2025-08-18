A **cursor** in MySQL is an essential concept for handling data row-by-row in stored procedures. Here’s a breakdown of what we’ll cover:

1. **What is a Cursor?**

   * A cursor is a database object that allows you to retrieve and manipulate data row by row.
   * Typically used in stored procedures to loop over a result set and perform actions on each row.

2. **When Should You Use a Cursor?**

   * Cursors are useful when you need to perform operations like updating data for each row individually or when logic that cannot be expressed with a single SQL query needs to be applied to each row of a result set.

---

### Example of Using a Cursor in MySQL

#### Basic Steps for Using a Cursor:

1. **Declare a Cursor**: Define which query the cursor will fetch.
2. **Open the Cursor**: Execute the query and retrieve the result set.
3. **Fetch the Data**: Move through the rows of the result set.
4. **Close the Cursor**: Once done, close the cursor to release resources.

---

Here’s a sample stored procedure that demonstrates how to use a cursor in MySQL:

```sql
DELIMITER $$

CREATE PROCEDURE process_data()
BEGIN
    -- Declare variables
    DECLARE done INT DEFAULT 0;
    DECLARE cur_id INT;
    DECLARE cur_value VARCHAR(255);
    
    -- Declare the cursor
    DECLARE my_cursor CURSOR FOR
        SELECT id, value FROM my_table;

    -- Declare the CONTINUE HANDLER for when no more rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open the cursor
    OPEN my_cursor;

    -- Start the loop
    read_loop: LOOP
        -- Fetch data into variables
        FETCH my_cursor INTO cur_id, cur_value;

        -- Exit the loop if no more data is found
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Do something with the fetched data (for example, print it)
        -- In real scenarios, you might update or insert data based on these values
        SELECT CONCAT('ID: ', cur_id, ', Value: ', cur_value);

    END LOOP;

    -- Close the cursor
    CLOSE my_cursor;
END$$

DELIMITER ;
```

---

### Explanation of the Code:

1. **Declare Variables**:

   * `done` is used to check when all rows have been processed.
   * `cur_id` and `cur_value` are the variables that will hold the fetched data from each row.

2. **Declare Cursor**:

   * The `my_cursor` cursor fetches `id` and `value` from the `my_table` table.

3. **Declare Handler**:

   * The handler is used to set the `done` variable to `1` when there are no more rows to fetch.

4. **Fetch Loop**:

   * The `FETCH` statement retrieves a row from the result set and stores the values in `cur_id` and `cur_value`.
   * If there are no more rows, the loop exits.
   * The `SELECT` statement is just a placeholder for what you want to do with the fetched data (like processing or modifying it).

5. **Close the Cursor**:

   * After the loop is finished, the cursor is closed.

---

Some **specific use cases** where cursors are typically used in MySQL and how you can **manage cursors** effectively.

We'll cover scenarios like:

1. **Using Cursors with UPDATE statements**
2. **Using Cursors with INSERT statements**
3. **Using Cursors for Complex Logic or Aggregation**
4. **Handling Cursors Efficiently (Performance Considerations)**

### 1. **Using Cursors with UPDATE Statements**

Let's say you have a table `employees` and you want to **apply a 10% salary increase** to each employee, but you want to calculate it one-by-one using a cursor.

#### Example:

```sql
DELIMITER $$

CREATE PROCEDURE update_salaries()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE emp_id INT;
    DECLARE emp_salary DECIMAL(10, 2);
    
    -- Declare cursor to select employee id and salary
    DECLARE emp_cursor CURSOR FOR
        SELECT id, salary FROM employees WHERE salary < 50000;
    
    -- Handler to set done flag when no rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open cursor
    OPEN emp_cursor;

    -- Start loop
    read_loop: LOOP
        -- Fetch employee data
        FETCH emp_cursor INTO emp_id, emp_salary;

        -- Exit the loop when done
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Update the employee's salary (apply 10% increase)
        UPDATE employees
        SET salary = emp_salary * 1.10
        WHERE id = emp_id;

    END LOOP;

    -- Close cursor
    CLOSE emp_cursor;
END$$

DELIMITER ;
```

#### Explanation:

* **Cursor Definition**: The cursor selects `id` and `salary` from the `employees` table where the salary is less than 50,000.
* **Logic**: Each employee’s salary is increased by 10% using an `UPDATE` query within the loop.

---

### 2. **Using Cursors with INSERT Statements**

Next, let's look at using a cursor for **inserting data into another table**. Imagine you have a `products` table and a `sales` table, and you need to insert records into `sales` for each product sold.

#### Example:

```sql
DELIMITER $$

CREATE PROCEDURE record_sales()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE product_id INT;
    DECLARE quantity_sold INT;
    DECLARE sale_price DECIMAL(10, 2);
    
    -- Declare cursor to select product details
    DECLARE product_cursor CURSOR FOR
        SELECT id, quantity_sold, price FROM products WHERE is_available = 1;
    
    -- Handler to set done flag when no rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open cursor
    OPEN product_cursor;

    -- Start loop
    read_loop: LOOP
        -- Fetch product data
        FETCH product_cursor INTO product_id, quantity_sold, sale_price;

        -- Exit the loop when done
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Insert record into sales table
        INSERT INTO sales (product_id, quantity, total_price, sale_date)
        VALUES (product_id, quantity_sold, quantity_sold * sale_price, NOW());

    END LOOP;

    -- Close cursor
    CLOSE product_cursor;
END$$

DELIMITER ;
```

#### Explanation:

* **Cursor Definition**: This cursor selects `id`, `quantity_sold`, and `price` from `products` where the product is still available (`is_available = 1`).
* **Logic**: For each product, a record is inserted into the `sales` table with the total price calculated as `quantity_sold * sale_price`.

---

### 3. **Using Cursors for Complex Logic or Aggregation**

Sometimes you need to perform more complex operations or aggregation on the data. For example, let's say you want to **compute the total sales for each employee** and store the result in a `sales_summary` table.

#### Example:

```sql
DELIMITER $$

CREATE PROCEDURE compute_employee_sales_summary()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE emp_id INT;
    DECLARE total_sales DECIMAL(10, 2);
    
    -- Declare cursor to select employee id
    DECLARE emp_cursor CURSOR FOR
        SELECT DISTINCT employee_id FROM sales;
    
    -- Handler to set done flag when no rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open cursor
    OPEN emp_cursor;

    -- Start loop
    read_loop: LOOP
        -- Fetch employee id
        FETCH emp_cursor INTO emp_id;

        -- Exit the loop when done
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Calculate total sales for the employee
        SELECT SUM(total_price) INTO total_sales
        FROM sales
        WHERE employee_id = emp_id;

        -- Insert total sales into sales_summary table
        INSERT INTO sales_summary (employee_id, total_sales, calculated_at)
        VALUES (emp_id, total_sales, NOW());

    END LOOP;

    -- Close cursor
    CLOSE emp_cursor;
END$$

DELIMITER ;
```

#### Explanation:

* **Cursor Definition**: This cursor selects all distinct `employee_id`s from the `sales` table.
* **Logic**: For each employee, it calculates their total sales using a `SUM` query and inserts the result into the `sales_summary` table.

---

### 4. **Handling Cursors Efficiently (Performance Considerations)**

While cursors are powerful, they should be used carefully because they can negatively impact performance, especially on large datasets. Here are some tips to optimize cursor usage:

1. **Avoid Using Cursors for Large Datasets**:

   * Cursors process rows one by one, so they can be slow for large result sets. If possible, try to use set-based SQL queries to achieve the same result.

2. **Consider Using Temporary Tables**:

   * Sometimes, it's more efficient to perform calculations or transformations in a temporary table rather than using a cursor to process rows one by one.

3. **Limit the Data**:

   * If you must use a cursor, try to limit the number of rows it processes by adding appropriate filters to the query or by processing in batches.

4. **Use the `FETCH` Statement Efficiently**:

   * Minimize the number of `FETCH` operations inside the loop by grouping operations where possible.

---

The next steps and dive deeper into **managing cursors** effectively. We'll touch on performance optimization, troubleshooting, and enhancing your understanding of how to use cursors in production-level applications.

---

### **Step 1: Performance Considerations and Best Practices**

Using cursors in MySQL can sometimes be inefficient, especially for large datasets. Here are some tips to **optimize cursor performance** and reduce overhead:

#### **1. Minimize Cursor Usage**

Instead of using a cursor to iterate over rows, **try to use set-based operations** when possible. SQL is optimized for set operations, so you should always ask yourself, “Can I achieve this without a cursor?”

For example, let’s say you need to update the salaries of employees:

```sql
UPDATE employees
SET salary = salary * 1.10
WHERE salary < 50000;
```

This is much more efficient than using a cursor to iterate over each employee row.

#### **2. Batch Processing with Cursors**

If you **must use a cursor**, try to limit the number of rows you process at a time. You can process in batches instead of fetching the entire dataset.

For example, you could **process 100 rows at a time** by fetching only a subset of records:

```sql
DECLARE done INT DEFAULT 0;
DECLARE batch_size INT DEFAULT 100;
DECLARE start_row INT DEFAULT 0;
DECLARE end_row INT DEFAULT 100;

DECLARE emp_cursor CURSOR FOR
    SELECT id, salary FROM employees
    LIMIT start_row, batch_size;

-- Process the rows in chunks
```

Using the `LIMIT` clause in your cursor query allows you to process smaller chunks of data, preventing your system from running into performance issues when dealing with large tables.

#### **3. Avoid Locks**

Be careful of **locking** tables unnecessarily while using cursors, especially with `UPDATE` or `DELETE` queries. You can use **transaction isolation levels** to control locking behavior, or you can use a **temporary table** to hold intermediate results before applying them in bulk.

---

### **Step 2: Error Handling and Debugging**

Errors can occur when using cursors, so understanding **error handling** is crucial. MySQL provides **handlers** for common exceptions such as `NOT FOUND`, `SQLEXCEPTION`, or `SQLWARNING`.

#### **Example: Handling Errors in a Cursor Loop**

```sql
DELIMITER $$

CREATE PROCEDURE process_data_with_error_handling()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE emp_id INT;
    DECLARE emp_salary DECIMAL(10, 2);
    
    -- Declare cursor to select employee id and salary
    DECLARE emp_cursor CURSOR FOR
        SELECT id, salary FROM employees WHERE salary < 50000;
    
    -- Declare error handler for SQL exceptions
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        BEGIN
            -- Log the error (you can create a log table to capture this)
            INSERT INTO error_log (error_message, error_time)
            VALUES ('Error processing employee salary update', NOW());
        END;
    
    -- Declare continue handler for when no rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open cursor
    OPEN emp_cursor;

    -- Loop through the cursor
    read_loop: LOOP
        -- Fetch employee data
        FETCH emp_cursor INTO emp_id, emp_salary;

        -- Exit the loop when done
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Update the employee's salary
        UPDATE employees
        SET salary = emp_salary * 1.10
        WHERE id = emp_id;

    END LOOP;

    -- Close the cursor
    CLOSE emp_cursor;
END$$

DELIMITER ;
```

#### Explanation:

* **Error Handler**: If a `SQLEXCEPTION` occurs (such as a violation of a constraint), the handler logs the error to an `error_log` table.
* **NOT FOUND Handler**: This handles the situation when no more rows are available in the cursor.

---

### **Step 3: Temporary Tables for Intermediate Results**

In cases where complex transformations are required, you may use **temporary tables** to store intermediate results before processing them.

#### Example:

Let’s say you want to aggregate sales data by employee, but you want to perform some transformations before calculating the totals:

```sql
DELIMITER $$

CREATE PROCEDURE aggregate_sales()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE emp_id INT;
    DECLARE total_sales DECIMAL(10, 2);

    -- Create a temporary table to hold aggregated sales data
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_sales_summary (
        employee_id INT,
        total_sales DECIMAL(10, 2)
    );

    -- Declare cursor to iterate over distinct employee_ids
    DECLARE emp_cursor CURSOR FOR
        SELECT DISTINCT employee_id FROM sales;
    
    -- Declare continue handler for NOT FOUND
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open cursor
    OPEN emp_cursor;

    -- Loop through the cursor
    read_loop: LOOP
        -- Fetch employee_id
        FETCH emp_cursor INTO emp_id;

        -- Exit loop when done
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Insert aggregated data into temporary table
        INSERT INTO temp_sales_summary (employee_id, total_sales)
        SELECT employee_id, SUM(total_price)
        FROM sales
        WHERE employee_id = emp_id
        GROUP BY employee_id;

    END LOOP;

    -- Close cursor
    CLOSE emp_cursor;

    -- Insert results from temporary table into the final summary table
    INSERT INTO sales_summary (employee_id, total_sales)
    SELECT employee_id, total_sales FROM temp_sales_summary;

    -- Clean up temporary table
    DROP TEMPORARY TABLE IF EXISTS temp_sales_summary;

END$$

DELIMITER ;
```

#### Explanation:

* A **temporary table** `temp_sales_summary` is used to store intermediate results.
* After processing, the aggregated data from the temporary table is transferred into the final `sales_summary` table.
* Temporary tables automatically get dropped at the end of the session, but you can manually drop them with `DROP TEMPORARY TABLE`.

---

### **Step 4: Testing and Real-World Applications**

Now that we've covered performance, error handling, and temporary tables, let’s think about **real-world applications** of cursors.

#### Use Cases in the Real World:

1. **Batch Data Processing**:

   * Suppose you need to process and update user data in small batches. Cursors can be used to fetch and update records in chunks.

2. **ETL (Extract, Transform, Load)**:

   * Cursors are often used in ETL processes, where you extract data, transform it, and load it into another system. For example, you might need to load data into a data warehouse row by row, while applying complex business rules.

3. **Generating Reports**:

   * You can use cursors to generate detailed, row-by-row reports, especially when the report needs to be processed incrementally, for example, generating a report for each employee or department.

4. **Data Cleanup**:

   * Cursors are often used for **data validation or cleanup** tasks, where you need to check each row of data for consistency, integrity, or formatting.

---


# Practical MySQL cursor use cases (with real-world code)

Here are five production-style cursor patterns that solve everyday problems where row-by-row logic and side-effects actually make sense.

---

## Before you start: Patterns to copy-paste

- Always define:
  - A cursor over a well-scoped SELECT
  - A CONTINUE HANDLER FOR NOT FOUND to exit cleanly
  - OPEN → FETCH loop → CLOSE
- Keep transactions small. Commit in batches if you’re moving/deleting lots of rows.
- Make sure the cursor’s SELECT uses indexed predicates.

---

## Example 1: Queue overdue invoice reminders

Purpose: Iterate unpaid, overdue invoices; enqueue tailored reminders and mark them as queued so you don’t double-send.

```sql
-- Assumes tables:
-- invoices(id PK, customer_id FK, due_date, amount, paid_at, status, reminder_queued_at)
-- customers(id PK, email)
-- notifications(id PK, customer_id, invoice_id, channel, subject, body, queued_at)

DELIMITER //

CREATE PROCEDURE sp_queue_overdue_invoice_reminders(IN p_days_overdue INT)
BEGIN
  DECLARE v_done TINYINT DEFAULT 0;
  DECLARE v_invoice_id BIGINT;
  DECLARE v_customer_id BIGINT;
  DECLARE v_due_date DATE;
  DECLARE v_amount DECIMAL(12,2);
  DECLARE v_email VARCHAR(255);

  DECLARE cur CURSOR FOR
    SELECT i.id, i.customer_id, i.due_date, i.amount, c.email
    FROM invoices i
    JOIN customers c ON c.id = i.customer_id
    WHERE i.status = 'UNPAID'
      AND i.paid_at IS NULL
      AND i.reminder_queued_at IS NULL
      AND i.due_date <= (CURRENT_DATE - INTERVAL p_days_overdue DAY)
    FOR UPDATE;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = 1;

  OPEN cur;

  read_loop: LOOP
    FETCH cur INTO v_invoice_id, v_customer_id, v_due_date, v_amount, v_email;
    IF v_done = 1 THEN
      LEAVE read_loop;
    END IF;

    INSERT INTO notifications(customer_id, invoice_id, channel, subject, body, queued_at)
    VALUES (
      v_customer_id,
      v_invoice_id,
      'EMAIL',
      CONCAT('Invoice #', v_invoice_id, ' is overdue'),
      CONCAT('Dear customer, your invoice due on ', v_due_date, ' for ₹', FORMAT(v_amount, 2), ' is overdue.'),
      NOW()
    );

    UPDATE invoices
      SET reminder_queued_at = NOW()
      WHERE id = v_invoice_id;
  END LOOP;

  CLOSE cur;
END //

DELIMITER ;
```

How to run:
```sql
CALL sp_queue_overdue_invoice_reminders(7); -- 7+ days overdue
```

---

## Example 2: Archive old orders in safe batches (commit every N rows)

Purpose: Move old, completed orders to an archive table without locking the world. Cursor lets you batch and commit predictably.

```sql
-- Assumes tables:
-- orders(id PK, customer_id, ordered_at, total, status, ...)
-- orders_archive same columns as orders

DELIMITER //

CREATE PROCEDURE sp_archive_old_orders(IN p_before DATE, IN p_batch_size INT)
BEGIN
  DECLARE v_done TINYINT DEFAULT 0;
  DECLARE v_id BIGINT;
  DECLARE v_customer_id BIGINT;
  DECLARE v_ordered_at DATETIME;
  DECLARE v_total DECIMAL(12,2);
  DECLARE v_status VARCHAR(32);
  DECLARE v_count INT DEFAULT 0;

  DECLARE cur CURSOR FOR
    SELECT id, customer_id, ordered_at, total, status
    FROM orders
    WHERE ordered_at < p_before
      AND status IN ('COMPLETED', 'CLOSED')
    ORDER BY ordered_at ASC
    FOR UPDATE;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = 1;

  START TRANSACTION;
  OPEN cur;

  read_loop: LOOP
    FETCH cur INTO v_id, v_customer_id, v_ordered_at, v_total, v_status;
    IF v_done = 1 THEN
      LEAVE read_loop;
    END IF;

    INSERT INTO orders_archive(id, customer_id, ordered_at, total, status)
    VALUES (v_id, v_customer_id, v_ordered_at, v_total, v_status);

    DELETE FROM orders WHERE id = v_id;

    SET v_count = v_count + 1;

    IF v_count % p_batch_size = 0 THEN
      COMMIT;
      START TRANSACTION;
    END IF;
  END LOOP;

  COMMIT;

  CLOSE cur;
END //

DELIMITER ;
```

How to run:
```sql
CALL sp_archive_old_orders(CURRENT_DATE - INTERVAL 365 DAY, 500);
```

---

## Example 3: Recalculate loyalty tiers with audit trail

Purpose: Per-customer business rules that need multiple queries, thresholds, and an audit log.

```sql
-- Assumes tables:
-- customers(id PK, email, loyalty_tier)
-- orders(id PK, customer_id, ordered_at, total, status)
-- loyalty_audit(id PK, customer_id, old_tier, new_tier, reason, changed_at)

DELIMITER //

CREATE PROCEDURE sp_recalculate_loyalty_tiers(IN p_lookback_days INT)
BEGIN
  DECLARE v_done TINYINT DEFAULT 0;
  DECLARE v_customer_id BIGINT;
  DECLARE v_email VARCHAR(255);
  DECLARE v_old_tier VARCHAR(16);
  DECLARE v_new_tier VARCHAR(16);
  DECLARE v_spend DECIMAL(12,2);

  DECLARE cur CURSOR FOR
    SELECT id, email, COALESCE(loyalty_tier, 'BRONZE')
    FROM customers
    FOR UPDATE;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = 1;

  OPEN cur;

  read_loop: LOOP
    FETCH cur INTO v_customer_id, v_email, v_old_tier;
    IF v_done = 1 THEN
      LEAVE read_loop;
    END IF;

    SELECT COALESCE(SUM(total), 0)
      INTO v_spend
    FROM orders
    WHERE customer_id = v_customer_id
      AND status = 'PAID'
      AND ordered_at >= NOW() - INTERVAL p_lookback_days DAY;

    SET v_new_tier = CASE
      WHEN v_spend >= 100000 THEN 'PLATINUM'   -- ₹100k+
      WHEN v_spend >= 50000  THEN 'GOLD'
      WHEN v_spend >= 20000  THEN 'SILVER'
      ELSE 'BRONZE'
    END;

    IF v_new_tier <> v_old_tier THEN
      UPDATE customers
        SET loyalty_tier = v_new_tier
        WHERE id = v_customer_id;

      INSERT INTO loyalty_audit(customer_id, old_tier, new_tier, reason, changed_at)
      VALUES (v_customer_id, v_old_tier, v_new_tier,
              CONCAT('Spend last ', p_lookback_days, ' days = ₹', FORMAT(v_spend, 2)),
              NOW());
    END IF;
  END LOOP;

  CLOSE cur;
END //

DELIMITER ;
```

How to run:
```sql
CALL sp_recalculate_loyalty_tiers(365);
```

---

## Example 4: Repair orphan orders by creating placeholders

Purpose: Data hygiene where referential integrity slipped. For each orphan order, create a placeholder customer and re-link, logging the fix.

```sql
-- Assumes:
-- customers(id PK, email, status)
-- orders(id PK, customer_id, ordered_at, total, status)
-- data_fix_log(id PK, entity, entity_id, action, details, created_at)

DELIMITER //

CREATE PROCEDURE sp_fix_orphan_orders()
BEGIN
  DECLARE v_done TINYINT DEFAULT 0;
  DECLARE v_order_id BIGINT;
  DECLARE v_missing_customer_id BIGINT;

  DECLARE cur CURSOR FOR
    SELECT o.id
    FROM orders o
    LEFT JOIN customers c ON c.id = o.customer_id
    WHERE c.id IS NULL
    FOR UPDATE;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = 1;

  OPEN cur;

  read_loop: LOOP
    FETCH cur INTO v_order_id;
    IF v_done = 1 THEN
      LEAVE read_loop;
    END IF;

    INSERT INTO customers(email, status)
    VALUES (CONCAT('placeholder+', v_order_id, '@invalid.local'), 'PLACEHOLDER');

    SET v_missing_customer_id = LAST_INSERT_ID();

    UPDATE orders
      SET customer_id = v_missing_customer_id
      WHERE id = v_order_id;

    INSERT INTO data_fix_log(entity, entity_id, action, details, created_at)
    VALUES ('orders', v_order_id, 'REPAIR_ORPHAN',
            CONCAT('Attached placeholder customer_id=', v_missing_customer_id),
            NOW());
  END LOOP;

  CLOSE cur;
END //

DELIMITER ;
```

How to run:
```sql
CALL sp_fix_orphan_orders();
```

---

## Example 5: Rebuild reserved stock per product

Purpose: Keep a denormalized reserved_qty in products by walking products and computing pending allocations. Cursor lets you add per-product rules or rate-limiting.

```sql
-- Assumes:
-- products(id PK, sku, stock_on_hand, reserved_qty)
-- orders(id PK, status)
-- order_items(order_id FK, product_id FK, qty)

DELIMITER //

CREATE PROCEDURE sp_recalculate_reserved_stock()
BEGIN
  DECLARE v_done TINYINT DEFAULT 0;
  DECLARE v_product_id BIGINT;
  DECLARE v_reserved BIGINT;

  DECLARE cur CURSOR FOR
    SELECT p.id
    FROM products p
    ORDER BY p.id
    FOR UPDATE;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = 1;

  OPEN cur;

  read_loop: LOOP
    FETCH cur INTO v_product_id;
    IF v_done = 1 THEN
      LEAVE read_loop;
    END IF;

    SELECT COALESCE(SUM(oi.qty), 0)
      INTO v_reserved
    FROM order_items oi
    JOIN orders o ON o.id = oi.order_id
    WHERE oi.product_id = v_product_id
      AND o.status IN ('PENDING', 'CONFIRMED'); -- not yet fulfilled

    UPDATE products
      SET reserved_qty = v_reserved
      WHERE id = v_product_id;
  END LOOP;

  CLOSE cur;
END //

DELIMITER ;
```

How to run:
```sql
CALL sp_recalculate_reserved_stock();
```

---

## When to use cursors vs. set-based SQL

- Use cursors when:
  - You need per-row side effects: enqueueing messages, writing audit logs, calling multiple dependent queries, or complex branching.
  - You must batch commits or throttle work to avoid long locks and big transactions.
- Prefer set-based SQL when:
  - It’s a pure transformation or aggregation with no per-row side effects.

---

## Drop-in checklist

- Index the WHERE clauses used in your cursor SELECT.
- Keep your cursor result set as small and targeted as possible.
- Use FOR UPDATE cautiously; it’s great when you truly intend to modify those rows.
- Add guards (e.g., “already processed” timestamps) to make procedures idempotent.
- If processing millions of rows, parameterize ranges (by date or id) and run in slices.
