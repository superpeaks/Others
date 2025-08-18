MySQL offers two powerful features for automating tasks and enforcing data integrity: **Triggers** and **Events**. While both automate actions within the database, they operate based on different conditions. Let's explore them in detail.

-----

## MySQL Triggers

A **trigger** is a special type of stored procedure that automatically executes (or "fires") in response to a specific data manipulation language (DML) event (INSERT, UPDATE, or DELETE) on a particular table. They are primarily used to enforce business rules, maintain data integrity, and automate tasks like auditing or logging.

### How Triggers Work

  * Triggers are tied to a specific table.
  * They activate automatically when an `INSERT`, `UPDATE`, or `DELETE` operation occurs on that table.
  * MySQL only supports **row-level triggers**, meaning the trigger body executes once for each row affected by the DML statement. It does *not* support statement-level triggers, which would fire only once per statement regardless of the number of rows affected.

### Syntax for Creating a Trigger

The general syntax for creating a trigger is:

```sql
CREATE [DEFINER = { user | CURRENT_USER }] TRIGGER trigger_name
trigger_time trigger_event
ON table_name
FOR EACH ROW
trigger_body;
```

### Key Words and Concepts in Triggers

1.  **`CREATE TRIGGER`**: The statement used to define a new trigger.
2.  **`trigger_name`**: A unique name for your trigger within the database.
3.  **`DEFINER = { user | CURRENT_USER }`**: (Optional) Specifies the MySQL account to be used when checking access privileges at trigger execution time. If omitted, the `CURRENT_USER` (the user who created the trigger) is the definer.
4.  **`trigger_time`**: Specifies *when* the trigger should fire relative to the DML event.
      * **`BEFORE`**: The trigger executes *before* the DML operation (INSERT, UPDATE, or DELETE) is performed on the table. This is useful for validating or modifying data before it's written to the table.
      * **`AFTER`**: The trigger executes *after* the DML operation is completed on the table. This is useful for logging changes, updating related tables, or performing actions based on the final state of the data.
5.  **`trigger_event`**: Specifies the type of DML operation that will activate the trigger.
      * **`INSERT`**: The trigger fires when new rows are inserted into the `table_name` (e.g., via `INSERT`, `LOAD DATA`, `REPLACE` statements).
      * **`UPDATE`**: The trigger fires when existing rows in the `table_name` are modified (e.g., via `UPDATE` statements).
      * **`DELETE`**: The trigger fires when rows are deleted from the `table_name` (e.g., via `DELETE` statements). Note that `DROP TABLE` and `TRUNCATE TABLE` statements do not activate `DELETE` triggers.
6.  **`ON table_name`**: Specifies the table to which the trigger is associated. Triggers cannot be associated with `TEMPORARY` tables or views.
7.  **`FOR EACH ROW`**: This clause is mandatory in MySQL. It indicates that the trigger body will be executed once for *each row* affected by the triggering DML statement.
8.  **`trigger_body`**: The SQL statements that will be executed when the trigger activates. This can be a single SQL statement or a compound statement enclosed within `BEGIN` and `END;`.
      * **`OLD.column_name`**: Within the `trigger_body`, this keyword refers to the value of a column *before* the DML operation.
          * Available in `BEFORE UPDATE`, `AFTER UPDATE`, `BEFORE DELETE`, and `AFTER DELETE` triggers.
          * Not available in `INSERT` triggers, as there is no "old" row.
      * **`NEW.column_name`**: Within the `trigger_body`, this keyword refers to the value of a column *after* the DML operation.
          * Available in `BEFORE INSERT`, `AFTER INSERT`, `BEFORE UPDATE`, and `AFTER UPDATE` triggers.
          * Not available in `DELETE` triggers, as there is no "new" row.
      * **`SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Your error message'`**: Used within a `BEFORE` trigger to raise an error and prevent the DML operation from completing. The SQLSTATE '45000' is a generic SQLSTATE for an unhandled user-defined exception.

### Types of Triggers (based on `trigger_time` and `trigger_event`)

Combining `BEFORE`/`AFTER` with `INSERT`/`UPDATE`/`DELETE`, we get six types of triggers:

  * **`BEFORE INSERT`**: Executes before a new row is inserted. Useful for validating data, setting default values, or manipulating data before it's stored.
      * Example: Ensuring a `price` is not negative; if it is, set it to 0.
  * **`AFTER INSERT`**: Executes after a new row is inserted. Useful for logging the insertion, updating summary tables, or triggering actions in other tables based on the new data.
      * Example: Decreasing inventory stock after an order is placed.
  * **`BEFORE UPDATE`**: Executes before an existing row is updated. Useful for validating changes, auditing old values, or preventing certain updates.
      * Example: Preventing a salary from being set below a minimum.
  * **`AFTER UPDATE`**: Executes after an existing row is updated. Useful for logging changes, updating related data, or recalculating derived values.
      * Example: Recording changes to an employee's salary in an audit table.
  * **`BEFORE DELETE`**: Executes before a row is deleted. Useful for preventing deletions based on certain conditions or for archiving data before it's removed.
      * Example: Preventing deletion of "critical" records.
  * **`AFTER DELETE`**: Executes after a row is deleted. Useful for cleaning up related data in other tables or for logging the deletion.
      * Example: Deleting related records from an audit table after a user is deleted.

### Managing Triggers

  * **`SHOW TRIGGERS;`**: Lists all triggers in the current database.
  * **`DROP TRIGGER [IF EXISTS] trigger_name;`**: Deletes a trigger. If you drop a table, all associated triggers are automatically dropped.

### Advantages of Triggers

  * **Data Integrity**: Enforce complex business rules and data consistency at the database level.
  * **Automation**: Automate tasks that would otherwise require manual intervention or application-level code.
  * **Auditing and Logging**: Provide a mechanism for tracking changes to data.
  * **Reduced Client-Side Code**: Centralize logic within the database, simplifying application code.

### Limitations of Triggers

  * **Debugging**: Can be difficult to troubleshoot as they execute automatically in the background.
  * **Overhead**: Can add overhead to DML operations, potentially impacting performance if not designed carefully.
  * **Limited Scope**: Cannot be used for DDL (Data Definition Language) operations (like `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`).
  * **No Result Sets**: Triggers cannot return a result set.
  * **No Transactions Control**: Triggers execute within the transaction of the DML statement that fired them. They cannot explicitly commit or roll back the transaction independently.

-----

## MySQL Events (Event Scheduler)

A **MySQL Event** (often called a scheduled event or "temporal trigger") is a task that executes automatically at a specified time or on a recurring schedule. Unlike triggers, which react to data changes, events react to the passage of time. They are similar to cron jobs in Linux or Task Scheduler in Windows, but they operate directly within the MySQL server.

### How Events Work

  * Events are managed by the **MySQL Event Scheduler**, a background thread that continuously monitors defined events and executes them when their scheduled time arrives.
  * The Event Scheduler must be enabled for events to run. You can check its status with `SHOW PROCESSLIST;` (look for a `Daemon` process with `User` as `event_scheduler`) or `SELECT @@event_scheduler;`.
  * To enable it: `SET GLOBAL event_scheduler = ON;` (or `SET GLOBAL event_scheduler = 1;`).
  * To disable it: `SET GLOBAL event_scheduler = OFF;` (or `SET GLOBAL event_scheduler = 0;`).

### Syntax for Creating an Event

The general syntax for creating an event is:

```sql
CREATE [DEFINER = { user | CURRENT_USER }] EVENT [IF NOT EXISTS] event_name
ON SCHEDULE schedule
[ON COMPLETION [NOT] PRESERVE]
[ENABLE | DISABLE | DISABLE ON {REPLICA | SLAVE}]
[COMMENT 'string']
DO event_body;
```

### Key Words and Concepts in Events

1.  **`CREATE EVENT`**: The statement used to define a new scheduled event.
2.  **`event_name`**: A unique name for your event within the database schema. Event names are not case-sensitive.
3.  **`DEFINER = { user | CURRENT_USER }`**: (Optional) Specifies the MySQL account whose privileges will be used when the event executes. This is important for security and access control.
4.  **`ON SCHEDULE schedule`**: This crucial clause defines when and how often the event will run.
      * **One-time Events**:
          * `AT timestamp [+ INTERVAL interval]`: Executes once at a specific future timestamp.
              * `timestamp`: A `DATETIME` or `TIMESTAMP` value in the future.
              * `INTERVAL interval`: (Optional) Adds an interval to the timestamp (e.g., `AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR`).
      * **Recurring Events**:
          * `EVERY quantity {YEAR | QUARTER | MONTH | WEEK | DAY | HOUR | MINUTE | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE | DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}`: Executes repeatedly at the specified interval.
          * `[STARTS timestamp [+ INTERVAL interval] ...]`: (Optional) Specifies when the recurring event should begin. If omitted, it starts immediately.
          * `[ENDS timestamp [+ INTERVAL interval] ...]`: (Optional) Specifies when the recurring event should stop executing. If omitted, it runs indefinitely.
5.  **`ON COMPLETION [NOT] PRESERVE`**: (Optional)
      * `ON COMPLETION PRESERVE`: The event remains in the database even after its last scheduled execution.
      * `ON COMPLETION NOT PRESERVE`: (Default for one-time events) The event is automatically dropped after its last execution.
6.  **`ENABLE | DISABLE | DISABLE ON {REPLICA | SLAVE}`**:
      * `ENABLE`: The event is active and will run according to its schedule (default).
      * `DISABLE`: The event is created but will not run. It can be re-enabled later.
      * `DISABLE ON {REPLICA | SLAVE}`: Disables the event on replica/slave servers.
7.  **`COMMENT 'string'`**: (Optional) A comment for the event.
8.  **`DO event_body`**: The SQL statements that the event will execute. This can be a single statement or a compound statement enclosed within `BEGIN` and `END;`.

### Types of Events

Based on their scheduling:

  * **One-Time Events**: Execute only once at a specified future time.
  * **Recurring Events**: Execute repeatedly at defined intervals (e.g., daily, weekly, monthly).

### Use Cases for Events

  * **Data Purging/Cleanup**: Automatically delete old log records, temporary data, or archived information.
  * **Data Aggregation/Reporting**: Generate daily, weekly, or monthly summary reports or aggregate data.
  * **Backup Automation**: Initiate database backups at off-peak hours (though external tools are often preferred for robust backups).
  * **Data Synchronization**: Update or synchronize data between tables or systems at regular intervals.
  * **Scheduled Tasks**: Any routine task that needs to run automatically based on time.

### Managing Events

  * **`SHOW EVENTS;`**: Lists all events in the current database.
  * **`ALTER EVENT event_name ON SCHEDULE new_schedule;`**: Modifies the schedule or other properties of an existing event.
  * **`DROP EVENT [IF EXISTS] event_name;`**: Deletes an event.

### Advantages of Events

  * **Automation**: Automate recurring database tasks directly within MySQL.
  * **Platform Independent**: Do not rely on operating system-level schedulers (like cron).
  * **Integration with MySQL**: Fully managed using SQL statements.

### Limitations of Events

  * **No Result Sets**: Events cannot return data directly to a client application.
  * **Case Insensitivity**: Event names are not case-sensitive.
  * **No Execution Order Enforcement**: If multiple events are scheduled for the same time, their execution order is not guaranteed.
  * **Cannot Create/Alter/Drop Other Stored Programs/Triggers/Events**: An event cannot create, alter, or drop other events, stored procedures, or triggers.
  * **Definer-Based Privileges**: An event runs with the privileges of its definer, which needs to be considered for security.

-----

### Comparison: Triggers vs. Events

| Feature         | Triggers                                   | Events (Event Scheduler)                       |
| :-------------- | :----------------------------------------- | :--------------------------------------------- |
| **Activation** | DML operations (INSERT, UPDATE, DELETE)    | Time-based schedule                            |
| **Purpose** | Data integrity, business rules, auditing   | Scheduled tasks, data maintenance, reporting   |
| **Scope** | Tied to a specific table                   | Global to the database, independent of tables  |
| **Execution** | Synchronous with the DML statement         | Asynchronous, run by a background thread       |
| **`OLD`/`NEW`** | Yes, to access row data before/after change | No                                             |
| **Granularity** | Row-level (for each affected row)          | Time-based (once per scheduled interval)       |
| **Enabling** | Always active once created                 | Requires the Event Scheduler to be `ON`        |

In summary, triggers are for reacting to **what data is doing**, while events are for reacting to **when the clock ticks**. Both are powerful tools for automating and managing your MySQL database.



Let's explore the capabilities of MySQL Triggers and Events with practical examples.

## MySQL Trigger Examples

Here are 10 examples demonstrating various uses of triggers, covering data validation, auditing, data consistency, and more.

**Scenario:** We'll use a `products` table and an `order_items` table.

```sql
-- Sample Tables for Trigger Examples
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE IF NOT EXISTS product_audit_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    old_price DECIMAL(10, 2),
    new_price DECIMAL(10, 2),
    old_stock INT,
    new_stock INT,
    change_type VARCHAR(50),
    changed_by VARCHAR(100),
    change_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS product_price_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    old_price DECIMAL(10, 2),
    new_price DECIMAL(10, 2),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some initial data
INSERT INTO products (product_name, price, stock_quantity) VALUES
('Laptop', 1200.00, 50),
('Mouse', 25.00, 200),
('Keyboard', 75.00, 150);
```

-----

### Trigger Examples:

**1. `BEFORE INSERT` - Data Validation (Preventing Negative Price)**
This trigger ensures that the `price` of a product is never inserted as a negative value. If it is, it sets the price to 0 and issues a warning.

```sql
DELIMITER //

CREATE TRIGGER trg_before_insert_product_price
BEFORE INSERT ON products
FOR EACH ROW
BEGIN
    IF NEW.price < 0 THEN
        SET NEW.price = 0;
        -- Optional: You could also SIGNAL an error to prevent insertion
        -- SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product price cannot be negative.';
    END IF;
END //

DELIMITER ;

-- Test:
INSERT INTO products (product_name, price, stock_quantity) VALUES ('Headphones', -50.00, 100);
-- Check the inserted value:
SELECT * FROM products WHERE product_name = 'Headphones'; -- Price will be 0.00
```

**2. `BEFORE UPDATE` - Data Validation (Preventing Stock Reduction Below Zero)**
This trigger prevents the `stock_quantity` from going below zero during an update.

```sql
DELIMITER //

CREATE TRIGGER trg_before_update_product_stock
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
    IF NEW.stock_quantity < 0 THEN
        SET NEW.stock_quantity = OLD.stock_quantity; -- Revert to old stock
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock quantity cannot be negative.';
    END IF;
END //

DELIMITER ;

-- Test:
UPDATE products SET stock_quantity = -10 WHERE product_name = 'Mouse';
-- This will cause an error and the update will be rolled back.
-- SELECT * FROM products WHERE product_name = 'Mouse'; -- Stock remains 200.
```

**3. `AFTER INSERT` - Update Related Table (Update Product Stock after Order Item Insertion)**
When a new item is added to an order, this trigger automatically reduces the `stock_quantity` of the corresponding product.

```sql
DELIMITER //

CREATE TRIGGER trg_after_insert_order_item
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    UPDATE products
    SET stock_quantity = stock_quantity - NEW.quantity
    WHERE product_id = NEW.product_id;
END //

DELIMITER ;

-- Test:
-- Get a product_id
SELECT product_id, stock_quantity FROM products WHERE product_name = 'Laptop'; -- product_id: 1, stock: 50
-- Simulate an order item being added
INSERT INTO order_items (order_id, product_id, quantity, item_price) VALUES (101, 1, 5, 1200.00);
-- Check product stock:
SELECT product_id, stock_quantity FROM products WHERE product_id = 1; -- Stock should be 45
```

**4. `AFTER UPDATE` - Auditing/Logging Changes (Product Price/Stock History)**
This trigger logs changes to product price and stock into an audit table, capturing `OLD` and `NEW` values.

```sql
DELIMITER //

CREATE TRIGGER trg_after_update_product_audit
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    IF OLD.price <> NEW.price OR OLD.stock_quantity <> NEW.stock_quantity THEN
        INSERT INTO product_audit_log (
            product_id, old_price, new_price, old_stock, new_stock, change_type, changed_by
        ) VALUES (
            NEW.product_id, OLD.price, NEW.price, OLD.stock_quantity, NEW.stock_quantity,
            'UPDATE', CURRENT_USER()
        );
    END IF;
END //

DELIMITER ;

-- Test:
UPDATE products SET price = 1250.00, stock_quantity = 40 WHERE product_name = 'Laptop';
-- Check audit log:
SELECT * FROM product_audit_log ORDER BY log_id DESC LIMIT 1;
```

**5. `BEFORE UPDATE` - Enforcing Business Rule (Prevent Price Decrease if Stock is High)**
This example shows how a trigger can prevent a specific action based on multiple conditions.

```sql
DELIMITER //

CREATE TRIGGER trg_before_update_prevent_price_drop
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
    -- If price is decreasing AND stock is very high, prevent the update
    IF NEW.price < OLD.price AND OLD.stock_quantity > 100 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot decrease price when stock is high (over 100 units).';
    END IF;
END //

DELIMITER ;

-- Test:
-- This should fail:
UPDATE products SET price = 20.00 WHERE product_name = 'Keyboard'; -- Stock is 150
-- This should succeed (stock is not high):
UPDATE products SET price = 1150.00 WHERE product_name = 'Laptop'; -- Stock is 40
```

**6. `AFTER DELETE` - Cleanup Related Data (Remove Order Items after Product Deletion - *Use with Caution\!*)**
While generally discouraged due to potential data loss (cascading deletes via FK constraints are safer), this demonstrates `AFTER DELETE` for cleanup.

```sql
-- Add an index for performance on product_id in order_items if not already present
-- ALTER TABLE order_items ADD INDEX (product_id);

DELIMITER //

CREATE TRIGGER trg_after_delete_product_cleanup_orders
AFTER DELETE ON products
FOR EACH ROW
BEGIN
    -- Delete associated order items
    DELETE FROM order_items WHERE product_id = OLD.product_id;
    -- Log the deletion
    INSERT INTO product_audit_log (
        product_id, change_type, changed_by, change_timestamp
    ) VALUES (
        OLD.product_id, 'DELETED', CURRENT_USER(), CURRENT_TIMESTAMP()
    );
END //

DELIMITER ;

-- Test:
-- Insert an order item for a product that will be deleted
INSERT INTO order_items (order_id, product_id, quantity, item_price) VALUES (102, 2, 2, 25.00); -- For Mouse
SELECT * FROM order_items WHERE product_id = 2; -- Verify item exists

DELETE FROM products WHERE product_name = 'Mouse';
-- Check if order items are gone:
SELECT * FROM order_items WHERE product_id = 2; -- Should be empty
SELECT * FROM product_audit_log ORDER BY log_id DESC LIMIT 1;
```

**7. `BEFORE INSERT` - Auto-incrementing a Custom ID (Non-Primary Key)**
If you have a special sequential ID that isn't the primary key, a trigger can manage it.

```sql
CREATE TABLE IF NOT EXISTS support_tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    ticket_number VARCHAR(20) UNIQUE, -- Custom formatted ID
    subject VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'Open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER trg_before_insert_support_ticket
BEFORE INSERT ON support_tickets
FOR EACH ROW
BEGIN
    DECLARE next_seq INT;
    SELECT COALESCE(MAX(SUBSTRING(ticket_number, 5)), 0) + 1 INTO next_seq
    FROM support_tickets
    WHERE ticket_number LIKE 'TK-%'; -- Assuming a prefix "TK-"

    SET NEW.ticket_number = CONCAT('TK-', LPAD(next_seq, 6, '0'));
END //

DELIMITER ;

-- Test:
INSERT INTO support_tickets (subject) VALUES ('My printer is not working.');
INSERT INTO support_tickets (subject) VALUES ('Software bug report.');
SELECT * FROM support_tickets;
```

**8. `BEFORE UPDATE` - Preventing Specific Column Changes**
You can prevent users from changing certain columns after initial insertion.

```sql
CREATE TABLE IF NOT EXISTS immutable_records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    creation_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_field VARCHAR(255) NOT NULL,
    status VARCHAR(50)
);

DELIMITER //

CREATE TRIGGER trg_before_update_prevent_creation_date_change
BEFORE UPDATE ON immutable_records
FOR EACH ROW
BEGIN
    IF NEW.creation_date <> OLD.creation_date THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The creation_date column cannot be changed.';
    END IF;
END //

DELIMITER ;

-- Test:
INSERT INTO immutable_records (data_field, status) VALUES ('Initial Data', 'Active');
SELECT * FROM immutable_records;

-- This will succeed:
UPDATE immutable_records SET status = 'Archived' WHERE record_id = 1;

-- This will fail:
-- UPDATE immutable_records SET creation_date = '2023-01-01 10:00:00' WHERE record_id = 1;
```

**9. `BEFORE INSERT` - Calculating Derived Column Value**
Calculate a column's value based on other columns before insertion.

```sql
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) DEFAULT 0.00 -- This will be calculated by trigger
);

-- Note: In a real scenario, total_amount might be calculated via AFTER INSERT/UPDATE on order_items
-- This example just shows a simple calculation within the same table.

DELIMITER //

CREATE TRIGGER trg_before_insert_order_total
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    -- For simplicity, let's just set a default non-zero amount for demonstration
    -- In a real scenario, you might derive this from a temporary or related table.
    SET NEW.total_amount = 100.00; -- Just a placeholder for demonstration
    -- More realistically, if `item_price` and `quantity` were direct columns in `orders`:
    -- SET NEW.total_amount = NEW.item_price * NEW.quantity;
END //

DELIMITER ;

-- Test:
INSERT INTO orders (customer_id, order_date) VALUES (1, '2025-07-19');
SELECT * FROM orders; -- total_amount will be 100.00
```

**10. `AFTER UPDATE` - Maintaining Redundant Data (Denormalization for Performance)**
Sometimes, for performance reasons (e.g., dashboarding), you might want to maintain a calculated/summary column in a parent table.

````
```sql
CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    total_employees INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_name) VALUES ('Sales'), ('Marketing'), ('Engineering');
INSERT INTO employees (emp_name, dept_id) VALUES ('Alice', 1), ('Bob', 1), ('Charlie', 2);

DELIMITER //

CREATE TRIGGER trg_after_insert_employee
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    UPDATE departments
    SET total_employees = total_employees + 1
    WHERE dept_id = NEW.dept_id;
END //

CREATE TRIGGER trg_after_delete_employee
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    UPDATE departments
    SET total_employees = total_employees - 1
    WHERE dept_id = OLD.dept_id;
END //

CREATE TRIGGER trg_after_update_employee_dept
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    IF OLD.dept_id <> NEW.dept_id THEN
        -- Decrement old department count
        UPDATE departments
        SET total_employees = total_employees - 1
        WHERE dept_id = OLD.dept_id;

        -- Increment new department count
        UPDATE departments
        SET total_employees = total_employees + 1
        WHERE dept_id = NEW.dept_id;
    END IF;
END //

DELIMITER ;

-- Initialize counts (if departments already had employees before triggers)
-- This would be done once manually or via an event/procedure
UPDATE departments d
SET total_employees = (SELECT COUNT(*) FROM employees e WHERE e.dept_id = d.dept_id);

-- Test:
SELECT * FROM departments; -- Sales: 2, Marketing: 1, Engineering: 0

INSERT INTO employees (emp_name, dept_id) VALUES ('David', 1); -- Add to Sales
SELECT * FROM departments; -- Sales: 3

DELETE FROM employees WHERE emp_name = 'Charlie'; -- Delete from Marketing
SELECT * FROM departments; -- Marketing: 0

UPDATE employees SET dept_id = 3 WHERE emp_name = 'David'; -- Move David from Sales to Engineering
SELECT * FROM departments; -- Sales: 2, Engineering: 1
```
````

-----

## MySQL Event Examples

Here are 5 examples demonstrating different scheduling patterns and use cases for MySQL events.

**Scenario:** We'll use a simple `log_data` table and extend the `product_audit_log` from above.

```sql
-- Sample Table for Event Examples
CREATE TABLE IF NOT EXISTS log_data (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    log_message VARCHAR(255) NOT NULL,
    log_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Ensure the event scheduler is ON
-- SET GLOBAL event_scheduler = ON;
-- Or add event_scheduler=ON to my.cnf/my.ini under [mysqld]
```

-----

### Event Examples:

**1. One-Time Event - Execute a Task at a Specific Future Time**
This event will insert a message into `log_data` exactly one minute from now.

```sql
DELIMITER //

CREATE EVENT event_one_time_message
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 MINUTE
ON COMPLETION NOT PRESERVE -- Event will be dropped after execution
DO
    INSERT INTO log_data (log_message) VALUES ('One-time event executed.'); //

DELIMITER ;

-- Verify it's scheduled:
SELECT * FROM mysql.event WHERE db = 'your_database_name'; -- Replace 'your_database_name'
-- Wait 1 minute and then check:
-- SELECT * FROM log_data ORDER BY log_id DESC LIMIT 1;
-- SELECT * FROM mysql.event WHERE db = 'your_database_name'; -- Event should be gone
```

**2. Recurring Event - Daily Cleanup/Archiving**
This event runs every day at 2:00 AM (assuming server local time) to delete log entries older than 30 days.

```sql
DELIMITER //

CREATE EVENT event_daily_log_cleanup
ON SCHEDULE EVERY 1 DAY
STARTS '2025-07-20 02:00:00' -- Start tomorrow at 2 AM
DO
    DELETE FROM log_data WHERE log_timestamp < NOW() - INTERVAL 30 DAY; //

DELIMITER ;

-- Check scheduled events:
SHOW EVENTS;
```

**3. Recurring Event - Weekly Summary Update**
This event runs every Sunday at 03:00 AM to update a summary table (hypothetical `daily_sales_summary`).

```sql
CREATE TABLE IF NOT EXISTS daily_sales_summary (
    summary_date DATE PRIMARY KEY,
    total_sales DECIMAL(10,2),
    total_orders INT
);

DELIMITER //

CREATE EVENT event_weekly_sales_summary
ON SCHEDULE EVERY 1 WEEK
STARTS (DATE_ADD(CURDATE(), INTERVAL (7 - WEEKDAY(CURDATE()) + 6) % 7 DAY) + INTERVAL 3 HOUR) -- Next Sunday 03:00:00
ENDS '2026-07-19 03:00:00' -- Stop after a year
COMMENT 'Calculates weekly sales summary'
DO
    BEGIN
        -- Placeholder for complex logic, e.g., aggregating data from 'order_items'
        INSERT INTO daily_sales_summary (summary_date, total_sales, total_orders)
        VALUES (CURDATE(), (SELECT SUM(item_price * quantity) FROM order_items WHERE order_id > 0), (SELECT COUNT(DISTINCT order_id) FROM order_items WHERE order_id > 0))
        ON DUPLICATE KEY UPDATE
            total_sales = VALUES(total_sales), total_orders = VALUES(total_orders);

        -- More realistic scenario would involve summarizing data from the past week:
        -- INSERT INTO daily_sales_summary (summary_date, total_sales, total_orders)
        -- SELECT CURDATE(), SUM(oi.item_price * oi.quantity), COUNT(DISTINCT oi.order_id)
        -- FROM order_items oi
        -- JOIN orders o ON oi.order_id = o.order_id
        -- WHERE o.order_date BETWEEN CURDATE() - INTERVAL 7 DAY AND CURDATE() - INTERVAL 1 DAY
        -- ON DUPLICATE KEY UPDATE
        --    total_sales = VALUES(total_sales), total_orders = VALUES(total_orders);
    END; //

DELIMITER ;

-- Check scheduled events:
SHOW EVENTS;
```

**4. Recurring Event - Hourly System Health Check/Metrics Collection**
This event could log system health metrics or perform a quick check every hour.

```sql
CREATE TABLE IF NOT EXISTS system_health_metrics (
    metric_id INT PRIMARY KEY AUTO_INCREMENT,
    metric_name VARCHAR(100),
    metric_value VARCHAR(255),
    capture_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE EVENT event_hourly_health_check
ON SCHEDULE EVERY 1 HOUR
STARTS CURRENT_TIMESTAMP + INTERVAL 5 MINUTE -- Start 5 minutes from now
DO
    BEGIN
        -- Example: Log current connection count
        INSERT INTO system_health_metrics (metric_name, metric_value)
        VALUES ('Current Connections', (SELECT CONVERT(COUNT(*), CHAR) FROM information_schema.processlist));

        -- Add more checks as needed
        -- INSERT INTO system_health_metrics (metric_name, metric_value)
        -- VALUES ('Buffer Pool Usage', '...');
    END; //

DELIMITER ;

-- Check scheduled events:
SHOW EVENTS;
```

**5. One-Time Event - Delayed Action with `DEFINER`**
This event demonstrates using `DEFINER` to ensure the event runs with specific privileges, even if the creator no longer has them. It's set to disable a product after a certain date.

```sql
-- Create a dummy user for definer demonstration (replace with your setup)
-- CREATE USER 'event_user'@'localhost' IDENTIFIED BY 'password';
-- GRANT UPDATE ON your_database_name.products TO 'event_user'@'localhost';

DELIMITER //

CREATE EVENT event_disable_product_promo
DEFINER CURRENT_USER -- For demonstration, using current user. In production, 'event_user'@'localhost'
ON SCHEDULE AT '2025-08-01 00:00:00' -- Specific future date
ON COMPLETION NOT PRESERVE
DO
    BEGIN
        UPDATE products
        SET stock_quantity = 0 -- Effectively 'disabling' by setting stock to 0
        WHERE product_id = 3; -- Assuming 'Keyboard' is product_id 3
        INSERT INTO log_data (log_message) VALUES ('Product ID 3 disabled due to promo end.');
    END; //

DELIMITER ;

-- Check scheduled events:
SHOW EVENTS;
```

These examples cover a good range of capabilities for both Triggers and Events, illustrating how they can be used to automate, validate, and maintain your MySQL database effectively. Remember to consider the performance implications of triggers and ensure the Event Scheduler is enabled for events to run.



You've learned about Triggers (reacting to data changes) and Events (reacting to time). Now, let's dive into **Stored Procedures**, which are fundamental to building robust and efficient MySQL applications.

-----

## MySQL Stored Procedures

A **stored procedure** is a set of SQL statements that have been compiled and stored on the database server. Once compiled, it can be executed by client applications with a single call. Stored procedures are a cornerstone of database programming, offering significant advantages in terms of performance, security, and maintainability.

### How Stored Procedures Work

  * **Compilation:** When you create a stored procedure, MySQL compiles its SQL statements once and stores the execution plan. This avoids repeated parsing and compilation for every execution.
  * **Execution:** When a client application "calls" the stored procedure, the pre-compiled code is executed directly on the server.
  * **Modularity:** They encapsulate business logic, allowing complex operations to be executed as a single unit.
  * **Parameters:** Stored procedures can accept input parameters and return output parameters, enabling flexible data manipulation and interaction with calling applications.

### Syntax for Creating a Stored Procedure

The general syntax for creating a stored procedure is:

```sql
DELIMITER //

CREATE PROCEDURE procedure_name ([parameter_list])
[characteristic ...]
BEGIN
    -- SQL statements (procedure body)
END //

DELIMITER ;
```

### Key Words and Concepts in Stored Procedures

1.  **`DELIMITER //` (and `DELIMITER ;`)**: This is crucial when creating stored procedures (and triggers/functions). By default, MySQL uses `;` as a statement terminator. Inside a stored procedure's `BEGIN...END` block, you'll have multiple SQL statements, each terminated by `;`. If you don't change the delimiter, MySQL would treat the first `;` within your procedure body as the end of the `CREATE PROCEDURE` statement, leading to syntax errors. Changing the delimiter to `//` (or any other character/string) tells MySQL to treat `//` as the terminator for the entire `CREATE PROCEDURE` statement. After the procedure is created, you revert the delimiter back to `;`.

2.  **`CREATE PROCEDURE procedure_name`**: The statement used to define a new stored procedure.

      * **`procedure_name`**: A unique name for your stored procedure within the database. It should follow MySQL's naming conventions.

3.  **`([parameter_list])`**: (Optional) Defines the parameters that the procedure accepts. Each parameter has a mode, name, and data type.

      * **Mode**: Specifies how the parameter is used:
          * **`IN`**: (Default) The parameter is an input value. The calling program must pass a value to the procedure, and the procedure can use this value. Changes made to `IN` parameters inside the procedure are *not* visible to the caller after the procedure returns.
          * **`OUT`**: The parameter is an output value. The procedure can assign a value to this parameter, and the calling program can retrieve this value after the procedure completes. The initial value of an `OUT` parameter is `NULL` inside the procedure.
          * **`INOUT`**: The parameter is both an input and an output value. The calling program passes an initial value, the procedure can modify it, and the calling program can see the modified value after the procedure completes.
      * **`parameter_name`**: The name of the parameter.
      * **`data_type`**: The SQL data type of the parameter (e.g., `INT`, `VARCHAR(255)`, `DECIMAL(10,2)`).

4.  **`[characteristic ...]`**: (Optional) Attributes that describe the behavior of the procedure. Common characteristics include:

      * **`COMMENT 'string'`**: A descriptive comment for the procedure.
      * **`DETERMINISTIC`**: (Rarely used, often implicitly `NOT DETERMINISTIC`) Indicates that the procedure always produces the same result for the same input parameters. MySQL's optimizer might use this hint, but it's often more complex to guarantee.
      * **`NOT DETERMINISTIC`**: (Default) The procedure may produce different results for the same input parameters (e.g., if it uses `NOW()` or reads from tables that change).
      * **`CONTAINS SQL`**: (Default) Indicates the procedure contains SQL statements but does not read or write data.
      * **`NO SQL`**: Indicates the procedure contains no SQL statements.
      * **`READS SQL DATA`**: Indicates the procedure reads data from tables (e.g., `SELECT` statements) but does not modify data.
      * **`MODIFIES SQL DATA`**: Indicates the procedure modifies data in tables (e.g., `INSERT`, `UPDATE`, `DELETE` statements). This is the most common characteristic for procedures that perform DML.
      * **`SQL SECURITY { DEFINER | INVOKER }`**: Specifies the security context for the procedure's execution.
          * **`DEFINER`**: (Default) The procedure executes with the privileges of the user who *created* or last *altered* the procedure. This is common for administrative tasks or when the calling user should not have direct access to underlying tables.
          * **`INVOKER`**: The procedure executes with the privileges of the user who *calls* the procedure. This is useful when you want to enforce the caller's permissions.

5.  **`BEGIN ... END`**: Encloses the body of the stored procedure, which contains one or more SQL statements.

6.  **`-- SQL statements (procedure body)`**: The actual logic of your procedure. This can include:

      * `SELECT`, `INSERT`, `UPDATE`, `DELETE` statements.
      * Control flow statements:
          * **`IF ... THEN ... [ELSEIF ... THEN ...] [ELSE ...] END IF;`**: Conditional execution.
          * **`CASE ... WHEN ... THEN ... [ELSE ...] END CASE;`**: Multiple choice conditional execution.
          * **`LOOP ... END LOOP;`**: Unconditional loop.
          * **`WHILE ... DO ... END WHILE;`**: Loop that continues as long as a condition is true.
          * **`REPEAT ... UNTIL ... END REPEAT;`**: Loop that executes at least once and continues until a condition is true.
          * **`LEAVE label;`**: Exits a labeled loop or `BEGIN...END` block.
          * **`ITERATE label;`**: Skips the rest of the current loop iteration and continues with the next.
      * Variable declaration and assignment:
          * **`DECLARE variable_name data_type [DEFAULT default_value];`**: Declares a local variable.
          * **`SET variable_name = expression;`**: Assigns a value to a variable.
          * **`SELECT column_name INTO variable_name FROM table_name WHERE condition;`**: Selects a value from a query into a variable.
      * Error handling:
          * **`DECLARE { CONTINUE | EXIT } HANDLER FOR { SQLEXCEPTION | SQLWARNING | NOT FOUND | mysql_error_code } statement;`**: Defines a handler for specific conditions (errors, warnings, no data found). `CONTINUE` means execution continues after the handler. `EXIT` means execution stops and returns to the caller.
          * **`SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Your error message';`**: Raises a user-defined error, similar to in triggers.
      * Calling other stored procedures or functions.

### Calling a Stored Procedure

To execute a stored procedure, you use the `CALL` statement:

```sql
CALL procedure_name([argument_list]);
```

  * **`argument_list`**: Values or variables to pass for the parameters. For `OUT` or `INOUT` parameters, you must pass a user-defined variable (`@variable_name`).

### Managing Stored Procedures

  * **`SHOW PROCEDURE STATUS [LIKE 'pattern'];`**: Lists information about stored procedures.
  * **`SHOW CREATE PROCEDURE procedure_name;`**: Shows the `CREATE PROCEDURE` statement for a specific procedure.
  * **`ALTER PROCEDURE procedure_name [characteristic ...];`**: Modifies the characteristics of an existing procedure (but *not* its parameters or body). To change the body, you must `DROP` and `CREATE` again.
  * **`DROP PROCEDURE [IF EXISTS] procedure_name;`**: Deletes a stored procedure.

### Advantages of Stored Procedures

1.  **Performance Improvement**:

      * **Reduced Network Traffic**: Instead of sending multiple SQL statements over the network, you send a single `CALL` statement.
      * **Pre-Compilation**: The procedure is parsed and optimized once when it's created, reducing overhead on subsequent executions.
      * **Caching**: MySQL might cache execution plans, further speeding up repeated calls.

2.  **Enhanced Security**:

      * **Abstraction**: Users can be granted permission to execute a procedure without having direct access to the underlying tables. This prevents unauthorized direct data manipulation.
      * **`DEFINER` Security**: Procedures can run with the privileges of their definer, allowing a less privileged user to perform actions that normally require higher privileges, but only through the controlled logic of the procedure.

3.  **Code Reusability and Modularity**:

      * Common business logic can be centralized in procedures and reused across different applications or parts of the database.
      * Makes applications easier to maintain, as changes to business rules are applied in one place (the procedure) rather than across multiple application codebases.

4.  **Data Integrity**:

      * Enforce complex business rules and data consistency more effectively than simple constraints, especially when the logic involves multiple tables or complex calculations.

5.  **Simplified Application Development**:

      * Developers can call complex database operations with a simple procedure call, abstracting away the underlying SQL complexity.

### Limitations of Stored Procedures

  * **Debugging Challenges**: Debugging stored procedures can be more challenging than debugging application code, especially in MySQL (which historically has limited built-in debugging tools compared to some other RDBMS).
  * **Version Control**: Managing changes to stored procedures in a version control system (like Git) can be less straightforward than managing application code files.
  * **Resource Consumption**: Poorly optimized procedures can consume significant server resources.
  * **Portability**: Stored procedure syntax and features can vary between different database systems, making migration more complex.
  * **Limited Functionality**: While powerful, they don't have the full capabilities of a general-purpose programming language. For very complex logic, an application layer might still be necessary.

-----

### Example Scenario for Stored Procedures

Let's use the `products` and `order_items` tables from the trigger examples, and add a `customers` table.

```sql
-- Sample Tables for Stored Procedure Examples
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) DEFAULT 0.00,
    order_status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- (Using products and order_items from previous trigger examples)

-- Insert some sample data
INSERT INTO customers (first_name, last_name, email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com');

INSERT INTO products (product_name, price, stock_quantity) VALUES
('Monitor', 300.00, 30),
('Webcam', 50.00, 100);
```

-----

### Stored Procedure Examples:

**1. Simple Procedure - Get All Products**
This procedure simply retrieves all records from the `products` table.

```sql
DELIMITER //

CREATE PROCEDURE GetAllProducts()
BEGIN
    SELECT product_id, product_name, price, stock_quantity FROM products;
END //

DELIMITER ;

-- Call the procedure:
CALL GetAllProducts();
```

**2. Procedure with `IN` Parameter - Get Product by ID**
This procedure takes a product ID as input and returns details for that specific product.

```sql
DELIMITER //

CREATE PROCEDURE GetProductById(IN p_product_id INT)
BEGIN
    SELECT product_id, product_name, price, stock_quantity
    FROM products
    WHERE product_id = p_product_id;
END //

DELIMITER ;

-- Call the procedure:
CALL GetProductById(1); -- Assuming product_id 1 exists
CALL GetProductById(100); -- For a non-existent ID
```

**3. Procedure with `OUT` Parameter - Get Total Stock Value**
This procedure calculates the total monetary value of all products in stock and returns it via an `OUT` parameter.

```sql
DELIMITER //

CREATE PROCEDURE GetTotalStockValue(OUT p_total_value DECIMAL(15, 2))
BEGIN
    SELECT SUM(price * stock_quantity) INTO p_total_value
    FROM products;
END //

DELIMITER ;

-- Call the procedure and retrieve the output:
SET @stock_value = 0; -- Declare a user-defined variable
CALL GetTotalStockValue(@stock_value);
SELECT @stock_value AS TotalStockValue;
```

**4. Procedure with `INOUT` Parameter - Increment Product Stock**
This procedure takes a product ID and an amount to increment/decrement the stock. It returns the new stock quantity.

```sql
DELIMITER //

CREATE PROCEDURE UpdateProductStock(
    IN p_product_id INT,
    INOUT p_quantity_change INT -- Positive for increase, negative for decrease
)
BEGIN
    UPDATE products
    SET stock_quantity = stock_quantity + p_quantity_change
    WHERE product_id = p_product_id;

    -- Set the INOUT parameter to the new stock quantity
    SELECT stock_quantity INTO p_quantity_change
    FROM products
    WHERE product_id = p_product_id;
END //

DELIMITER ;

-- Test:
SELECT product_id, product_name, stock_quantity FROM products WHERE product_id = 1; -- Stock: 45

SET @change_amount = 5; -- Increase stock by 5
CALL UpdateProductStock(1, @change_amount);
SELECT @change_amount AS NewStockQuantity; -- Should be 50

SET @change_amount = -10; -- Decrease stock by 10
CALL UpdateProductStock(1, @change_amount);
SELECT @change_amount AS NewStockQuantity; -- Should be 40
SELECT product_id, product_name, stock_quantity FROM products WHERE product_id = 1; -- Verify
```

**5. Procedure with Control Flow (`IF` statement) - Create New Order**
This procedure creates a new order, but only if the customer exists. It also calculates the total amount if `order_items` are passed (simplified).

```sql
DELIMITER //

CREATE PROCEDURE CreateNewOrder(
    IN p_customer_id INT,
    IN p_order_date DATE,
    OUT p_order_id INT,
    OUT p_total_amount DECIMAL(10, 2)
)
BEGIN
    DECLARE v_customer_exists INT DEFAULT 0;

    SELECT COUNT(*) INTO v_customer_exists
    FROM customers
    WHERE customer_id = p_customer_id;

    IF v_customer_exists > 0 THEN
        INSERT INTO orders (customer_id, order_date)
        VALUES (p_customer_id, p_order_date);

        SET p_order_id = LAST_INSERT_ID(); -- Get the ID of the newly inserted order

        -- In a real scenario, you'd insert order items and calculate total_amount based on them
        -- For this example, we'll just set a dummy total
        SET p_total_amount = 0.00; -- Initialize

        -- If you had order items to process right away, you'd do it here:
        -- Example (simplified):
        -- INSERT INTO order_items (order_id, product_id, quantity, item_price) VALUES (p_order_id, 1, 2, 1200.00);
        -- UPDATE orders SET total_amount = (SELECT SUM(quantity * item_price) FROM order_items WHERE order_id = p_order_id) WHERE order_id = p_order_id;
        -- SELECT total_amount INTO p_total_amount FROM orders WHERE order_id = p_order_id;

        -- Let's just set a dummy total for this example
        UPDATE orders SET total_amount = 500.00 WHERE order_id = p_order_id;
        SET p_total_amount = 500.00;

    ELSE
        SET p_order_id = NULL; -- Indicate failure
        SET p_total_amount = NULL;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Customer does not exist.';
    END IF;
END //

DELIMITER ;

-- Test:
SET @new_order_id = 0;
SET @order_total = 0.0;
CALL CreateNewOrder(1, '2025-07-19', @new_order_id, @order_total);
SELECT @new_order_id AS NewOrderID, @order_total AS OrderTotal;
SELECT * FROM orders WHERE order_id = @new_order_id;

-- Test with non-existent customer (will error)
-- CALL CreateNewOrder(999, '2025-07-20', @new_order_id, @order_total);
```

**6. Procedure with `LOOP` and `LEAVE` - Bulk Insert (Simplified)**
This procedure demonstrates a loop for inserting multiple records. (Note: For large inserts, `LOAD DATA INFILE` or a single `INSERT` with multiple `VALUES` is often more efficient.)

```sql
DELIMITER //

CREATE PROCEDURE InsertMultipleProducts(IN p_num_products INT, IN p_base_name VARCHAR(100))
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE product_name_var VARCHAR(150);
    DECLARE random_price DECIMAL(10, 2);
    DECLARE random_stock INT;

    WHILE i <= p_num_products DO
        SET product_name_var = CONCAT(p_base_name, ' ', i);
        SET random_price = ROUND(RAND() * 1000 + 10, 2); -- Price between 10 and 1010
        SET random_stock = FLOOR(RAND() * 200 + 10);   -- Stock between 10 and 210

        INSERT INTO products (product_name, price, stock_quantity)
        VALUES (product_name_var, random_price, random_stock);

        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- Call the procedure:
CALL InsertMultipleProducts(3, 'Test Product');
SELECT * FROM products WHERE product_name LIKE 'Test Product %';
```

**7. Procedure with Cursor - Process Product Data (Simplified Audit)**
This example shows how to use a cursor to iterate through results and perform an action for each row.
*A note on cursors:* While powerful, cursors can be inefficient for large datasets. Set-based operations (`UPDATE ... WHERE`, `INSERT ... SELECT`) are generally preferred for performance. Cursors are best for row-by-row processing where set-based logic is impossible or overly complex.

```sql
DELIMITER //

CREATE PROCEDURE AuditProductPrices()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE p_id INT;
    DECLARE p_name VARCHAR(100);
    DECLARE p_price DECIMAL(10, 2);

    -- Declare the cursor
    DECLARE product_cursor CURSOR FOR
        SELECT product_id, product_name, price FROM products;

    -- Declare continue handler for NOT FOUND (when cursor reaches end)
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN product_cursor;

    read_loop: LOOP
        FETCH product_cursor INTO p_id, p_name, p_price;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Example: Log a message for each product
        INSERT INTO log_data (log_message)
        VALUES (CONCAT('Auditing product: ID=', p_id, ', Name=', p_name, ', Price=', p_price));

        -- In a real scenario, you might do more complex logic here, e.g.,
        -- IF p_price < 50 THEN
        --     UPDATE products SET price = 50 WHERE product_id = p_id;
        -- END IF;

    END LOOP;

    CLOSE product_cursor;
END //

DELIMITER ;

-- Call the procedure:
CALL AuditProductPrices();
SELECT * FROM log_data ORDER BY log_id DESC LIMIT 5; -- Check the new log entries
```

**8. Procedure with Error Handling (`HANDLER`) - Safe Update**
This procedure attempts to update a product, and if an error occurs (e.g., duplicate key, or the trigger we made earlier prevents it), it can handle it gracefully.

```sql
DELIMITER //

CREATE PROCEDURE SafeUpdateProductName(
    IN p_product_id INT,
    IN p_new_name VARCHAR(100),
    OUT p_success BOOLEAN
)
BEGIN
    -- Declare an EXIT handler for any SQL exception
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- An error occurred, set success to FALSE
        SET p_success = FALSE;
        -- Log the error (optional)
        INSERT INTO log_data (log_message) VALUES (CONCAT('ERROR: Failed to update product ID ', p_product_id));
        -- Optionally re-raise the error for the caller
        -- RESIGNAL;
    END;

    -- Default to success
    SET p_success = TRUE;

    UPDATE products
    SET product_name = p_new_name
    WHERE product_id = p_product_id;

    -- If the update above caused an error (e.g., if a unique constraint exists on product_name
    -- and p_new_name already exists), the handler will catch it and set p_success to FALSE.
    -- If it succeeds, p_success remains TRUE.
END //

DELIMITER ;

-- Test successful update:
SET @update_success = FALSE;
CALL SafeUpdateProductName(1, 'Laptop Pro Max', @update_success);
SELECT @update_success AS UpdateStatus; -- Should be 1 (TRUE)
SELECT product_name FROM products WHERE product_id = 1;

-- Test update that might fail (e.g., if product_name was unique and 'Mouse' already exists)
-- If you have a UNIQUE constraint on product_name, this might fail:
-- ALTER TABLE products ADD UNIQUE (product_name);
-- SET @update_success = FALSE;
-- CALL SafeUpdateProductName(1, 'Mouse', @update_success);
-- SELECT @update_success AS UpdateStatus; -- Should be 0 (FALSE)
-- SELECT * FROM log_data ORDER BY log_id DESC LIMIT 1;
```

**9. Procedure for Complex Business Logic - Process Order and Update Stock**
This procedure simulates placing an order, decrementing stock, and updating the order's `total_amount`.

```sql
DELIMITER //

CREATE PROCEDURE PlaceOrder(
    IN p_customer_id INT,
    IN p_product_id INT,
    IN p_quantity INT,
    OUT p_order_id INT,
    OUT p_status VARCHAR(255)
)
BEGIN
    DECLARE v_price DECIMAL(10, 2);
    DECLARE v_current_stock INT;
    DECLARE v_total_item_price DECIMAL(10, 2);

    -- Initialize outputs
    SET p_order_id = NULL;
    SET p_status = 'Failed: Unknown error';

    -- Start a transaction
    START TRANSACTION;

    -- Check if product exists and get its price and stock
    SELECT price, stock_quantity INTO v_price, v_current_stock
    FROM products
    WHERE product_id = p_product_id
    FOR UPDATE; -- Lock the row to prevent race conditions during stock check

    -- Check if product exists
    IF v_price IS NULL THEN
        SET p_status = 'Failed: Product not found.';
        ROLLBACK;
    ELSEIF v_current_stock < p_quantity THEN
        SET p_status = 'Failed: Insufficient stock.';
        ROLLBACK;
    ELSE
        -- Calculate total item price
        SET v_total_item_price = v_price * p_quantity;

        -- Create the order (simplistic, real orders usually have multiple items)
        INSERT INTO orders (customer_id, order_date, total_amount, order_status)
        VALUES (p_customer_id, CURDATE(), v_total_item_price, 'Completed');

        SET p_order_id = LAST_INSERT_ID();

        -- Insert order item
        INSERT INTO order_items (order_id, product_id, quantity, item_price)
        VALUES (p_order_id, p_product_id, p_quantity, v_price);

        -- Update product stock (the AFTER INSERT trigger on order_items would do this if present)
        UPDATE products
        SET stock_quantity = stock_quantity - p_quantity
        WHERE product_id = p_product_id;

        SET p_status = 'Success: Order placed.';
        COMMIT; -- Commit the transaction
    END IF;
END //

DELIMITER ;

-- Test a successful order:
SELECT product_id, product_name, stock_quantity FROM products WHERE product_name = 'Monitor'; -- ID: 4, Stock: 30
SET @order_id_out = NULL;
SET @order_status_out = '';
CALL PlaceOrder(1, 4, 2, @order_id_out, @order_status_out); -- Customer 1, Monitor, 2 units
SELECT @order_id_out AS NewOrderID, @order_status_out AS OrderStatus;
SELECT * FROM orders WHERE order_id = @order_id_out;
SELECT product_id, product_name, stock_quantity FROM products WHERE product_name = 'Monitor'; -- Stock should be 28

-- Test insufficient stock:
SET @order_id_out = NULL;
SET @order_status_out = '';
CALL PlaceOrder(2, 4, 50, @order_id_out, @order_status_out); -- Customer 2, Monitor, 50 units
SELECT @order_id_out AS NewOrderID, @order_status_out AS OrderStatus; -- Status should be 'Insufficient stock.'
SELECT product_id, product_name, stock_quantity FROM products WHERE product_name = 'Monitor'; -- Stock should still be 28
```

**10. Procedure with Dynamic SQL (Use with Caution\!)**
Dynamic SQL means constructing an SQL statement as a string and then executing it. This offers flexibility but introduces security risks (SQL Injection) if input is not properly validated.

````
```sql
DELIMITER //

CREATE PROCEDURE GetDynamicData(
    IN p_table_name VARCHAR(100),
    IN p_where_clause VARCHAR(255)
)
BEGIN
    SET @sql_query = CONCAT('SELECT * FROM ', p_table_name);

    IF p_where_clause IS NOT NULL AND LENGTH(p_where_clause) > 0 THEN
        SET @sql_query = CONCAT(@sql_query, ' WHERE ', p_where_clause);
    END IF;

    PREPARE stmt FROM @sql_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;

-- Test:
CALL GetDynamicData('products', 'stock_quantity > 20');
CALL GetDynamicData('customers', 'registration_date >= "2025-01-01"');
-- DO NOT pass unvalidated user input directly to p_where_clause!
```
````

These examples should give you a comprehensive understanding of the capabilities and common patterns used with MySQL Stored Procedures. They are powerful tools for managing and interacting with your database efficiently and securely.






You've mastered Triggers (event-driven code) and Stored Procedures (callable units of work). Now, let's complete the trilogy of MySQL's programmatic objects with **Functions**.

-----

## MySQL Functions

In MySQL, a **function** is a type of stored program that performs a computation and returns a single value. Unlike stored procedures, which can perform a wide range of operations (including DML) and return multiple results (via `SELECT` statements or `OUT` parameters), functions are primarily designed for calculations and data manipulation that yield a single scalar result.

MySQL has two main types of functions:

1.  **Built-in Functions**: These are pre-defined functions provided by MySQL (e.g., `NOW()`, `SUM()`, `CONCAT()`, `LENGTH()`, `UPPER()`, `DATE_FORMAT()`, etc.). You've likely used many of these already.

2.  **User-Defined Functions (UDFs)**: These are functions you create yourself using SQL code to encapsulate custom logic that isn't covered by built-in functions.

### How Functions Work

  * **Execution within Expressions**: Functions are typically called within SQL expressions, such as `SELECT` lists, `WHERE` clauses, `HAVING` clauses, or even within other stored procedures and triggers.
  * **Returns a Single Value**: A function *must* return a single scalar value. This is its defining characteristic.
  * **Determinism**: Functions can be declared as `DETERMINISTIC` or `NOT DETERMINISTIC`, indicating whether they always produce the same output for the same input. This hint helps the optimizer.

### Syntax for Creating a User-Defined Function

The general syntax for creating a UDF is:

```sql
DELIMITER //

CREATE FUNCTION function_name ([parameter_list])
RETURNS data_type
[characteristic ...]
BEGIN
    -- Function body (SQL statements)
    -- Must include a RETURN statement
END //

DELIMITER ;
```

### Key Words and Concepts in Functions

1.  **`DELIMITER //` (and `DELIMITER ;`)**: Just like with stored procedures and triggers, you need to change the delimiter to allow the `BEGIN...END` block to contain multiple SQL statements terminated by `;`.

2.  **`CREATE FUNCTION function_name`**: The statement to define a new user-defined function.

      * **`function_name`**: A unique name for your function within the database.

3.  **`([parameter_list])`**: (Optional) Defines the input parameters for the function.

      * Parameters for functions are *always* `IN` parameters implicitly. You don't specify `IN`.
      * **`parameter_name data_type`**: Each parameter needs a name and a SQL data type.

4.  **`RETURNS data_type`**: This is a mandatory and crucial part of a function definition. It specifies the data type of the single value that the function will return (e.g., `INT`, `VARCHAR(255)`, `DECIMAL(10,2)`, `DATE`, `BOOLEAN`).

5.  **`[characteristic ...]`**: (Optional) Attributes that describe the behavior of the function, similar to stored procedures:

      * **`COMMENT 'string'`**: A descriptive comment.
      * **`DETERMINISTIC`**: The function always produces the same result for the same input parameters. This is important for optimization; if a function is deterministic, MySQL can cache its results or optimize calls.
      * **`NOT DETERMINISTIC`**: (Default) The function might produce different results for the same input parameters (e.g., if it uses `NOW()`, `RAND()`, or reads from tables).
      * **`CONTAINS SQL`**: (Default if no other SQL characteristic is given) The function contains SQL statements but does not read or write data.
      * **`NO SQL`**: The function contains no SQL statements (e.g., just mathematical calculations on inputs).
      * **`READS SQL DATA`**: The function reads data from tables (e.g., `SELECT` statements). This is common for UDFs that query data.
      * **`MODIFIES SQL DATA`**: The function modifies data in tables (e.g., `INSERT`, `UPDATE`, `DELETE` statements). **This characteristic is allowed in MySQL, but it's generally considered bad practice for functions to modify data.** Functions are meant to be side-effect free. If you need to modify data, a stored procedure is usually the more appropriate choice.
      * **`SQL SECURITY { DEFINER | INVOKER }`**: Specifies the security context, identical to stored procedures.
          * **`DEFINER`**: (Default) Executes with the privileges of the user who created it.
          * **`INVOKER`**: Executes with the privileges of the user who calls it.

6.  **`BEGIN ... END`**: Encloses the body of the function, containing one or more SQL statements.

7.  **`RETURN expression;`**: This is a mandatory statement within the function body. It specifies the value that the function will return. The `expression` must evaluate to a value compatible with the `RETURNS data_type` declared.

### Calling a User-Defined Function

You call a function within a SQL statement, just like built-in functions:

```sql
SELECT function_name(argument1, argument2);

UPDATE table_name SET column = function_name(other_column);

SELECT * FROM table_name WHERE column_name = function_name(some_value);
```

### Managing Functions

  * **`SHOW FUNCTION STATUS [LIKE 'pattern'];`**: Lists information about stored functions.
  * **`SHOW CREATE FUNCTION function_name;`**: Shows the `CREATE FUNCTION` statement for a specific function.
  * **`ALTER FUNCTION function_name [characteristic ...];`**: Modifies the characteristics of an existing function (but *not* its parameters or body). To change the body, you must `DROP` and `CREATE` again.
  * **`DROP FUNCTION [IF EXISTS] function_name;`**: Deletes a function.

### Advantages of User-Defined Functions

1.  **Code Reusability**: Encapsulate complex or frequently used calculations.
2.  **Modularity**: Break down complex queries into smaller, manageable units.
3.  **Readability**: Make SQL queries easier to understand by abstracting complex logic into a function call.
4.  **Performance (for Deterministic functions)**: If a function is declared `DETERMINISTIC`, MySQL can optimize calls by caching results or evaluating them only once if the inputs are constant within a query.
5.  **Data Consistency**: Ensure that complex calculations are performed consistently across different queries and applications.

### Limitations of User-Defined Functions

  * **Single Return Value**: Cannot return multiple values or result sets.
  * **No `OUT`/`INOUT` Parameters**: All parameters are implicitly `IN`.
  * **Limited DML**: While `MODIFIES SQL DATA` is technically allowed, it's generally bad practice for functions to perform `INSERT`, `UPDATE`, or `DELETE` operations. This can lead to unexpected side effects when functions are used in queries. They should ideally be side-effect free.
  * **No Transactions**: Functions cannot explicitly manage transactions (`COMMIT`, `ROLLBACK`). They execute within the transaction context of the statement that calls them.
  * **Error Handling**: Similar to stored procedures, debugging can be challenging.
  * **Performance (for Non-Deterministic or Data-Modifying functions)**: Functions that are `NOT DETERMINISTIC` or `READS SQL DATA`/`MODIFIES SQL DATA` can potentially slow down queries, especially if called for every row in a large result set.

-----

### Example Scenario for Functions

We'll use simple examples and the `products` table from previous lessons.

```sql
-- Sample Table for Function Examples
-- (Using the 'products' table defined in trigger/procedure sections)
-- If you need to re-create:
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0
);
-- Ensure some data exists:
INSERT INTO products (product_name, price, stock_quantity) VALUES
('Laptop', 1200.00, 50),
('Mouse', 25.00, 200),
('Keyboard', 75.00, 150),
('Monitor', 300.00, 30),
('Webcam', 50.00, 100)
ON DUPLICATE KEY UPDATE product_name=product_name; -- Avoid re-inserting if already exists
```

-----

### User-Defined Function Examples:

**1. Simple Calculation - Calculate Discounted Price**
This function takes a price and a discount percentage and returns the discounted price.

```sql
DELIMITER //

CREATE FUNCTION CalculateDiscountedPrice(
    p_price DECIMAL(10, 2),
    p_discount_percentage DECIMAL(5, 2)
)
RETURNS DECIMAL(10, 2)
DETERMINISTIC -- Function always returns the same result for the same inputs
COMMENT 'Calculates the price after applying a discount percentage.'
BEGIN
    RETURN p_price * (1 - p_discount_percentage / 100);
END //

DELIMITER ;

-- Test:
SELECT CalculateDiscountedPrice(100.00, 10) AS DiscountedPrice; -- Should be 90.00
SELECT product_name, price, CalculateDiscountedPrice(price, 5) AS PriceAfter5PercentDiscount
FROM products;
```

**2. String Manipulation - Format Product Name for Display**
This function takes a product name and returns a capitalized version with a prefix.

```sql
DELIMITER //

CREATE FUNCTION FormatProductName(
    p_name VARCHAR(100)
)
RETURNS VARCHAR(120)
DETERMINISTIC
COMMENT 'Formats a product name by capitalizing and adding a prefix.'
BEGIN
    RETURN CONCAT('PROD_', UPPER(p_name));
END //

DELIMITER ;

-- Test:
SELECT FormatProductName('laptop') AS FormattedName; -- Should be 'PROD_LAPTOP'
SELECT product_name, FormatProductName(product_name) AS DisplayName
FROM products;
```

**3. Data Validation - Check if Email is Valid Format (Basic)**
This function performs a very basic check for an "@" symbol and a dot in an email address. (Note: Real email validation is much more complex).

```sql
DELIMITER //

CREATE FUNCTION IsValidEmail(
    p_email VARCHAR(100)
)
RETURNS BOOLEAN
DETERMINISTIC
COMMENT 'Performs a basic check for a valid email format.'
BEGIN
    IF p_email LIKE '%_@__%.__%' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END //

DELIMITER ;

-- Test:
SELECT IsValidEmail('test@example.com') AS ValidEmail1; -- 1 (TRUE)
SELECT IsValidEmail('invalid-email') AS ValidEmail2;   -- 0 (FALSE)
SELECT IsValidEmail('user@domain.co.uk') AS ValidEmail3; -- 1 (TRUE)

-- Using it in a WHERE clause (assuming a 'customers' table with an 'email' column)
-- SELECT first_name, email FROM customers WHERE IsValidEmail(email) = 0;
```

**4. Aggregation/Lookup - Get Product Stock by ID**
This function queries the `products` table to get the current stock quantity for a given product ID.

```sql
DELIMITER //

CREATE FUNCTION GetProductStock(
    p_product_id INT
)
RETURNS INT
READS SQL DATA -- Indicates the function reads data from tables
COMMENT 'Retrieves the current stock quantity for a given product ID.'
BEGIN
    DECLARE v_stock INT;
    SELECT stock_quantity INTO v_stock
    FROM products
    WHERE product_id = p_product_id;

    RETURN COALESCE(v_stock, 0); -- Return 0 if product_id not found
END //

DELIMITER ;

-- Test:
SELECT GetProductStock(1) AS LaptopStock; -- Should be 40 (or current stock for ID 1)
SELECT product_name, GetProductStock(product_id) AS CurrentStock
FROM products;
SELECT GetProductStock(999) AS NonExistentProductStock; -- Should be 0
```

**5. Conditional Logic - Get Product Availability Status**
This function returns a string indicating if a product is 'In Stock', 'Low Stock', or 'Out of Stock' based on its quantity.

```sql
DELIMITER //

CREATE FUNCTION GetProductAvailability(
    p_product_id INT
)
RETURNS VARCHAR(50)
READS SQL DATA
COMMENT 'Returns the availability status of a product.'
BEGIN
    DECLARE v_stock INT;
    DECLARE v_status VARCHAR(50);

    SELECT stock_quantity INTO v_stock
    FROM products
    WHERE product_id = p_product_id;

    IF v_stock IS NULL THEN
        SET v_status = 'Product Not Found';
    ELSEIF v_stock = 0 THEN
        SET v_status = 'Out of Stock';
    ELSEIF v_stock <= 10 THEN
        SET v_status = 'Low Stock';
    ELSE
        SET v_status = 'In Stock';
    END IF;

    RETURN v_status;
END //

DELIMITER ;

-- Test:
SELECT GetProductAvailability(1) AS LaptopAvailability;
SELECT GetProductAvailability(2) AS MouseAvailability;
UPDATE products SET stock_quantity = 5 WHERE product_id = 1; -- Make Laptop Low Stock
SELECT GetProductAvailability(1) AS LaptopAvailabilityAfterUpdate;
UPDATE products SET stock_quantity = 0 WHERE product_id = 2; -- Make Mouse Out of Stock
SELECT GetProductAvailability(2) AS MouseAvailabilityAfterUpdate;
SELECT product_name, stock_quantity, GetProductAvailability(product_id) AS AvailabilityStatus
FROM products;
```

**6. Date/Time Calculation - Calculate Age from Birthdate**
This function calculates a person's age given their birth date.

```sql
DELIMITER //

CREATE FUNCTION CalculateAge(
    p_birthdate DATE
)
RETURNS INT
DETERMINISTIC
COMMENT 'Calculates age from a given birthdate.'
BEGIN
    RETURN TIMESTAMPDIFF(YEAR, p_birthdate, CURDATE());
END //

DELIMITER ;

-- Test:
SELECT CalculateAge('1990-07-19') AS Age1; -- 35
SELECT CalculateAge('2000-01-01') AS Age2; -- 25
SELECT CalculateAge('2020-12-31') AS Age3; -- 4

-- Example with a hypothetical 'users' table
-- SELECT user_name, birth_date, CalculateAge(birth_date) AS UserAge FROM users;
```

**7. Financial Calculation - Calculate Monthly Payment (Simplified PMT)**
A very simplified PMT (Payment per Month) calculation for a loan. This ignores complex interest compounding details.

```sql
DELIMITER //

CREATE FUNCTION CalculateMonthlyPayment(
    p_principal DECIMAL(15, 2),
    p_annual_rate DECIMAL(5, 4), -- e.g., 0.05 for 5%
    p_loan_term_years INT
)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
COMMENT 'Calculates a simplified estimated monthly loan payment.'
BEGIN
    DECLARE v_monthly_rate DECIMAL(10, 6);
    DECLARE v_num_payments INT;
    DECLARE v_monthly_payment DECIMAL(10, 2);

    IF p_annual_rate <= 0 OR p_loan_term_years <= 0 THEN
        RETURN p_principal / (p_loan_term_years * 12); -- Simple division if no interest
    END IF;

    SET v_monthly_rate = p_annual_rate / 12;
    SET v_num_payments = p_loan_term_years * 12;

    -- PMT formula: P * (r * (1 + r)^n) / ((1 + r)^n - 1)
    SET v_monthly_payment = p_principal * (v_monthly_rate * POW(1 + v_monthly_rate, v_num_payments)) / (POW(1 + v_monthly_rate, v_num_payments) - 1);

    RETURN v_monthly_payment;
END //

DELIMITER ;

-- Test:
-- Loan: $10,000, 5% annual rate, 5 years
SELECT CalculateMonthlyPayment(10000.00, 0.05, 5) AS MonthlyPayment; -- Approx 188.71
-- Loan: $200,000, 3.5% annual rate, 30 years
SELECT CalculateMonthlyPayment(200000.00, 0.035, 30) AS MonthlyPaymentMortgage; -- Approx 898.09
```

**8. Custom Aggregation (if not built-in, illustrative)**
While MySQL has `AVG()`, if you needed a custom average (e.g., ignoring outliers), you might use a function within a stored procedure or just call it directly. This example is simple, showing how a function could be used to perform some form of "average".

```sql
DELIMITER //

CREATE FUNCTION CalculateWeightedAverage(
    p_val1 DECIMAL(10, 2),
    p_weight1 DECIMAL(5, 2),
    p_val2 DECIMAL(10, 2),
    p_weight2 DECIMAL(5, 2)
)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
COMMENT 'Calculates a weighted average of two values.'
BEGIN
    RETURN (p_val1 * p_weight1 + p_val2 * p_weight2) / (p_weight1 + p_weight2);
END //

DELIMITER ;

-- Test:
SELECT CalculateWeightedAverage(100, 0.7, 50, 0.3) AS WeightedAvg; -- (70 + 15) / 1 = 85
```

These examples showcase the primary purpose of functions: to perform calculations and return a single, useful value, often simplifying complex expressions within your SQL queries. Remember to choose the right tool for the job: functions for calculations, procedures for complex multi-statement operations, and triggers for automated responses to DML.




You've explored Triggers, Stored Procedures, and Functions individually. Now, let's put it all together and highlight their key differences and similarities in detail.

-----

## MySQL Stored Programs: Triggers, Stored Procedures, and Functions

MySQL offers three powerful types of stored programs that allow you to encapsulate SQL logic within the database server: **Triggers**, **Stored Procedures**, and **Functions**. While all three involve writing and storing code, they serve distinct purposes, are invoked differently, and have unique capabilities and limitations.

### Detailed Comparison Table

| Feature             | **Stored Procedure** | **Function (User-Defined)** | **Trigger** |
| :------------------ | :---------------------------------------------------- | :---------------------------------------------------- | :---------------------------------------------------------- |
| **Primary Purpose** | - Perform a sequence of operations.\<br\>- Encapsulate complex business logic.\<br\>- Manage transactions.\<br\>- Data manipulation (DML). | - Perform a calculation.\<br\>- Return a single scalar value.\<br\>- Used within SQL expressions. | - Automate actions in response to DML events.\<br\>- Enforce data integrity.\<br\>- Audit changes. |
| **Invocation** | Explicitly called using `CALL procedure_name();`      | Called as part of a SQL expression (e.g., `SELECT MyFunction()`). | Automatically fired by DML events (`INSERT`, `UPDATE`, `DELETE`) on a specific table. |
| **Return Value** | - Can return multiple result sets via `SELECT` statements.\<br\>- Can return multiple values via `OUT` or `INOUT` parameters. | Must return a single scalar value (e.g., INT, VARCHAR, DECIMAL). | No direct return value. Actions are internal to the database. |
| **Parameters** | Supports `IN`, `OUT`, `INOUT` parameters.             | Supports only `IN` parameters (implicitly).           | Has special `OLD` and `NEW` row variables for accessing data before/after change. No explicit parameters. |
| **DML Operations (`INSERT`/`UPDATE`/`DELETE`)** | Yes, commonly used for DML.                           | **Discouraged\!** While technically possible with `MODIFIES SQL DATA`, it's bad practice for functions to have side effects. | Yes, their core purpose is to react to and often perform DML. |
| **DDL Operations (`CREATE`/`ALTER`/`DROP`)** | Yes, can execute DDL (e.g., `CREATE TABLE`).           | No.                                                   | No.                                                         |
| **Transaction Control (`COMMIT`/`ROLLBACK`)** | Yes, can explicitly manage transactions.              | No. Executes within the transaction of the calling statement. | No. Executes within the transaction of the triggering DML statement. |
| **Usage Context** | - Application logic.\<br\>- Batch processing.\<br\>- Data migration.\<br\>- Complex reports. | - Calculated columns.\<br\>- `WHERE`, `HAVING` clauses.\<br\>- `SELECT` lists.\<br\>- `ORDER BY` clauses.\<br\>- Expressions in other stored programs. | - Data validation.\<br\>- Auditing.\<br\>- Maintaining summary/redundant data.\<br\>- Complex constraints. |
| **Performance** | - Good, due to pre-compilation.\<br\>- Reduces network traffic. | - Good, especially if `DETERMINISTIC` (caching).\<br\>- Can be slow if `READS SQL DATA` or `NOT DETERMINISTIC` and called per row. | - Can impact DML performance if complex.\<br\>- Executed for every affected row. |
| **Debugging** | Can be challenging, often relying on `SELECT` statements or logging. | Can be challenging.                                   | Can be challenging, as they execute implicitly.             |
| **`OLD`/`NEW` context variables** | No.                                                   | No.                                                   | Yes, fundamental for accessing row data during DML events. |
| **Error Handling** | Supports `DECLARE HANDLER` and `SIGNAL`.              | Supports `DECLARE HANDLER` and `SIGNAL`.              | Supports `SIGNAL` to raise errors and `DECLARE HANDLER`.   |
| **Security Context**| `DEFINER` or `INVOKER`.                               | `DEFINER` or `INVOKER`.                               | `DEFINER` (privileges of the creator).                     |

### Detailed Paragraph Explanation

**Stored Procedures: The Workhorse of Database Logic**
A stored procedure is the most versatile of the three. Think of it as a mini-program or a macro residing within the database. Its primary role is to encapsulate a sequence of SQL statements, potentially involving multiple steps, conditional logic (`IF`, `CASE`), loops (`WHILE`, `LOOP`), and variable declarations. Procedures are explicitly *called* by an application or another SQL statement using the `CALL` command. They can accept input parameters (`IN`), provide output parameters (`OUT`, `INOUT`), and even return entire result sets (like a `SELECT` query). This flexibility makes them ideal for complex business logic, transactional operations (where you need to `COMMIT` or `ROLLBACK` multiple steps as a single unit), data migration tasks, and batch processing. A key advantage is their ability to reduce network traffic and improve performance by executing multiple SQL statements on the server side in one go, avoiding repeated parsing and compilation. They are also excellent for security, as you can grant users execute privileges on a procedure without giving them direct access to the underlying tables.

**Functions: The Calculators of the Database**
In contrast to procedures, a function's sole purpose is to perform a calculation and *return a single, scalar value*. Functions are designed to be used within SQL expressions – similar to how you'd use built-in functions like `SUM()` or `CONCAT()`. This means you can call a UDF in a `SELECT` list, a `WHERE` clause, an `ORDER BY` clause, or anywhere an expression is valid. Functions accept only `IN` parameters (implicitly, you don't declare them as `IN`), and they *must* include a `RETURN` statement. While technically possible in MySQL for functions to modify data (`INSERT`, `UPDATE`, `DELETE`), it's considered very bad practice (a "side effect") and can lead to unexpected behavior and make your database logic harder to reason about. Functions should ideally be side-effect free and `DETERMINISTIC` (always return the same result for the same input) to allow for potential query optimization and caching. They are perfect for common calculations, data transformations, or simple lookups that return one value.

**Triggers: The Database's Reactive Sentinels**
Triggers are unique because they are *event-driven*. They are not explicitly called; instead, they *automatically fire* (execute) when a specific Data Manipulation Language (DML) event (`INSERT`, `UPDATE`, or `DELETE`) occurs on a designated table. Triggers are typically used for enforcing complex data integrity rules that standard constraints (like `FOREIGN KEY` or `CHECK`) cannot handle, auditing data changes, or maintaining derived/redundant data (like updating a `total_orders` column in a parent table after an `order_item` is inserted). Triggers operate at the row level in MySQL, meaning their logic executes for each row affected by the DML statement. They have special `OLD` and `NEW` variables that allow them to inspect the data before and after the change. Like functions, triggers execute within the transaction of the DML statement that fired them and cannot control their own transactions (`COMMIT`/`ROLLBACK`).

### When to Use Which?

  * **Use a Stored Procedure when:**

      * You need to perform a sequence of DML operations (`INSERT`, `UPDATE`, `DELETE`).
      * You need to return multiple values or a result set.
      * You need to explicitly manage transactions (`START TRANSACTION`, `COMMIT`, `ROLLBACK`).
      * You want to abstract complex business logic into a single callable unit.
      * You want to grant users execution privileges without direct table access.

  * **Use a Function when:**

      * You need to perform a calculation and return a single, scalar value.
      * You want to use the logic within SQL expressions (`SELECT`, `WHERE`, `HAVING`, etc.).
      * The operation is side-effect free (does not modify data).
      * You want to simplify complex expressions in your queries.

  * **Use a Trigger when:**

      * You need to automatically react to `INSERT`, `UPDATE`, or `DELETE` events on a table.
      * You need to enforce complex validation rules *before* data is changed.
      * You need to perform actions *after* data has been changed (e.g., logging, updating related tables).
      * You need to maintain data consistency across related tables without explicit application code for every DML operation.

Understanding these distinctions is crucial for designing efficient, maintainable, and secure MySQL database applications.



-----

## MySQL Cursors

A **cursor** is a database object that enables you to traverse over the rows of a result set one row at a time. Normally, when you execute a `SELECT` statement, MySQL returns the entire result set to the client. However, there are scenarios where you need to process each row individually, perform specific operations on it, and then move to the next. This is where cursors come into play.

Cursors are primarily used within **Stored Procedures** and **Functions** (though less common in functions due to their single-return-value nature and limitations on DML). They bridge the gap between set-based SQL operations and row-by-row procedural logic.

### How Cursors Work

Think of a cursor as a pointer or a bookmark that points to a specific row in a query's result set. You can:

1.  **Declare** a cursor, associating it with a `SELECT` statement.
2.  **Open** the cursor, which executes the `SELECT` statement and populates the result set.
3.  **Fetch** rows one by one from the result set into local variables.
4.  **Process** the data for the current row.
5.  **Loop** through the result set, fetching and processing each row until no more rows are available.
6.  **Close** the cursor, releasing its resources.

### Lifecycle of a Cursor

The use of a cursor typically involves four main steps:

1.  **Declaration**: Define the cursor and associate it with a `SELECT` statement.
2.  **Opening**: Execute the `SELECT` statement and load the rows into the cursor.
3.  **Fetching**: Retrieve one row at a time from the cursor into variables.
4.  **Closing**: Release the resources held by the cursor.

### Syntax and Key Words in Cursors

Cursors are always declared and used within a `BEGIN ... END` block of a stored procedure or function.

1.  **`DECLARE cursor_name CURSOR FOR select_statement;`**:

      * **`DECLARE`**: Keyword to define a local variable or a cursor.
      * **`cursor_name`**: A unique name for your cursor within the stored program.
      * **`CURSOR FOR`**: Specifies that you are declaring a cursor and links it to a `SELECT` statement.
      * **`select_statement`**: The `SELECT` query whose result set the cursor will iterate over. This `SELECT` statement cannot have an `INTO` clause.

2.  **`DECLARE { CONTINUE | EXIT } HANDLER FOR NOT FOUND statement;`**:

      * This is a crucial part of cursor handling. When the `FETCH` statement tries to retrieve a row and there are no more rows left in the result set, a `NOT FOUND` condition (SQLSTATE '02000') occurs.
      * **`CONTINUE`**: The handler will execute its `statement` (e.g., setting a flag variable to `TRUE`), and then the execution of the stored program will *continue* at the next statement after the `FETCH`. This is typically used to exit a loop.
      * **`EXIT`**: The handler will execute its `statement`, and then the execution of the stored program will *terminate* immediately (return to the caller).
      * **`NOT FOUND`**: The specific condition that triggers this handler (i.e., when `FETCH` fails to find a row).
      * **`statement`**: The SQL statement(s) to execute when `NOT FOUND` occurs (e.g., `SET done_flag = TRUE;`).

3.  **`OPEN cursor_name;`**:

      * Executes the `select_statement` associated with the `cursor_name` and populates the cursor with the result set. The cursor is now ready for fetching.

4.  **`FETCH cursor_name INTO variable1, variable2, ...;`**:

      * Retrieves the *next* row from the cursor's result set.
      * The values of the columns in the fetched row are assigned, in order, to the declared local `variable1`, `variable2`, etc. The number and data types of variables must match the columns in the `SELECT` statement.

5.  **`CLOSE cursor_name;`**:

      * Releases the resources (memory, locks) held by the cursor. It's vital to close cursors once you're done with them.

6.  **Loop Constructs**: Cursors are almost always used within a loop to process multiple rows.

      * **`LOOP ... END LOOP;`**: An unconditional loop. You typically use `LEAVE` with a `NOT FOUND` handler to exit this loop.
      * **`WHILE condition DO ... END WHILE;`**: A conditional loop. Less common with cursors, as the `NOT FOUND` handler is often simpler.
      * **`REPEAT ... UNTIL condition END REPEAT;`**: A loop that executes at least once and continues until a condition is true. Can be used for cursors.

### Advantages of Cursors

  * **Row-by-Row Processing**: Enables operations that require processing individual rows sequentially (e.g., complex calculations, conditional updates).
  * **Complex Logic**: Allows for more intricate logic than standard set-based operations, especially when data from one row's processing affects the next.
  * **Debugging**: Can sometimes make debugging easier for specific scenarios, as you can conceptually follow the processing of each row.

### Limitations and Disadvantages of Cursors

  * **Performance Overhead**: This is the biggest drawback. Cursors are inherently slower and more resource-intensive than set-based SQL operations. For large datasets, they can significantly degrade performance.
  * **Resource Consumption**: They consume server memory and can hold locks for longer durations.
  * **Scalability Issues**: Not suitable for highly concurrent or large-scale data processing.
  * **Complexity**: The code for using cursors can be more verbose and harder to read than equivalent set-based solutions.
  * **Alternative Preference**: In SQL, generally, **set-based operations are preferred over cursors** whenever possible. MySQL is highly optimized for set-based operations. Only resort to cursors when a set-based solution is genuinely impossible or excessively complex.

-----

### Example Scenario for Cursors

Let's use our existing `products` table and a new `product_log` table for auditing purposes.

```sql
-- Sample Tables for Cursor Examples
-- (Using the 'products' table from previous examples)

CREATE TABLE IF NOT EXISTS product_stock_alerts (
    alert_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    current_stock INT NOT NULL,
    alert_message VARCHAR(255) NOT NULL,
    alert_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS product_price_changes (
    change_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    old_price DECIMAL(10, 2),
    new_price DECIMAL(10, 2),
    change_date DATE
);

-- Ensure some data exists:
INSERT INTO products (product_name, price, stock_quantity) VALUES
('Laptop', 1200.00, 50),
('Mouse', 25.00, 200),
('Keyboard', 75.00, 150),
('Monitor', 300.00, 30),
('Webcam', 50.00, 100),
('USB Drive', 10.00, 5),    -- Low stock for alert example
('Printer', 250.00, 0)      -- Out of stock for alert example
ON DUPLICATE KEY UPDATE product_name=product_name;
```

-----

### Cursor Examples (within Stored Procedures):

**1. Basic Cursor - Iterate and Log Product Stock (READS SQL DATA)**
This procedure iterates through all products and logs their current stock status.

```sql
DELIMITER //

CREATE PROCEDURE LogProductStockStatus()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE p_id INT;
    DECLARE p_name VARCHAR(100);
    DECLARE p_stock INT;

    -- Declare the cursor
    DECLARE cur_products CURSOR FOR
        SELECT product_id, product_name, stock_quantity FROM products;

    -- Declare handler for `NOT FOUND`
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur_products;

    product_loop: LOOP
        FETCH cur_products INTO p_id, p_name, p_stock;

        IF done THEN
            LEAVE product_loop; -- Exit the loop when no more rows
        END IF;

        -- Process each row: Insert a log message
        INSERT INTO product_stock_alerts (product_id, product_name, current_stock, alert_message)
        VALUES (p_id, p_name, p_stock, CONCAT('Current stock for ', p_name, ': ', p_stock));

    END LOOP product_loop;

    CLOSE cur_products;
END //

DELIMITER ;

-- Call the procedure:
CALL LogProductStockStatus();
SELECT * FROM product_stock_alerts ORDER BY alert_id DESC LIMIT 5;
```

**2. Cursor for Conditional Updates - Apply Discount to Low-Stock Products (MODIFIES SQL DATA)**
This procedure iterates through products and applies a 10% discount to products with stock less than or equal to 10.

```sql
DELIMITER //

CREATE PROCEDURE ApplyDiscountToLowStock()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE p_id INT;
    DECLARE p_name VARCHAR(100);
    DECLARE p_price DECIMAL(10, 2);
    DECLARE p_stock INT;
    DECLARE v_new_price DECIMAL(10, 2);

    -- Declare cursor for products with low stock
    DECLARE cur_low_stock_products CURSOR FOR
        SELECT product_id, product_name, price, stock_quantity
        FROM products
        WHERE stock_quantity <= 10 AND stock_quantity > 0; -- Only apply to actually existing low stock

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    START TRANSACTION; -- Start transaction for updates

    OPEN cur_low_stock_products;

    low_stock_loop: LOOP
        FETCH cur_low_stock_products INTO p_id, p_name, p_price, p_stock;

        IF done THEN
            LEAVE low_stock_loop;
        END IF;

        SET v_new_price = p_price * 0.90; -- 10% discount

        -- Update the product price
        UPDATE products
        SET price = v_new_price
        WHERE product_id = p_id;

        -- Log the price change
        INSERT INTO product_price_changes (product_id, old_price, new_price, change_date)
        VALUES (p_id, p_price, v_new_price, CURDATE());

        INSERT INTO product_stock_alerts (product_id, product_name, current_stock, alert_message)
        VALUES (p_id, p_name, p_stock, CONCAT('Applied 10% discount. New price: ', v_new_price));

    END LOOP low_stock_loop;

    CLOSE cur_low_stock_products;
    COMMIT; -- Commit the transaction

END //

DELIMITER ;

-- Test:
SELECT product_name, price, stock_quantity FROM products WHERE product_name IN ('USB Drive', 'Webcam'); -- USB Drive stock: 5, price: 10
CALL ApplyDiscountToLowStock();
SELECT product_name, price, stock_quantity FROM products WHERE product_name IN ('USB Drive', 'Webcam'); -- USB Drive price should be 9.00
SELECT * FROM product_price_changes ORDER BY change_id DESC LIMIT 5;
SELECT * FROM product_stock_alerts ORDER BY alert_id DESC LIMIT 5;
```

**3. Cursor for Generating Alerts - Out of Stock Products (READS SQL DATA)**
This procedure identifies products that are completely out of stock and logs an alert for them.

```sql
DELIMITER //

CREATE PROCEDURE GenerateOutOfStockAlerts()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE p_id INT;
    DECLARE p_name VARCHAR(100);

    DECLARE cur_out_of_stock CURSOR FOR
        SELECT product_id, product_name
        FROM products
        WHERE stock_quantity = 0;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur_out_of_stock;

    out_of_stock_loop: LOOP
        FETCH cur_out_of_stock INTO p_id, p_name;

        IF done THEN
            LEAVE out_of_stock_loop;
        END IF;

        -- Check if alert already exists for today
        IF NOT EXISTS (SELECT 1 FROM product_stock_alerts WHERE product_id = p_id AND alert_message LIKE '%Out of Stock%' AND DATE(alert_timestamp) = CURDATE()) THEN
            INSERT INTO product_stock_alerts (product_id, product_name, current_stock, alert_message)
            VALUES (p_id, p_name, 0, 'Product is Out of Stock!');
        END IF;

    END LOOP out_of_stock_loop;

    CLOSE cur_out_of_stock;
END //

DELIMITER ;

-- Test:
SELECT product_name, stock_quantity FROM products WHERE product_name = 'Printer'; -- Printer stock: 0
CALL GenerateOutOfStockAlerts();
SELECT * FROM product_stock_alerts WHERE alert_message LIKE '%Out of Stock%' ORDER BY alert_id DESC LIMIT 5;
```

**4. Cursor for Data Migration/Archiving (MODIFIES SQL DATA)**
This example demonstrates moving old data from an active table to an archive table.
(Note: For very large data sets, `INSERT ... SELECT` with a `DELETE` in batches is often more efficient than a cursor for migration.)

```sql
CREATE TABLE IF NOT EXISTS old_orders_archive (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    order_status VARCHAR(50),
    archived_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some old orders for testing
INSERT INTO orders (customer_id, order_date, total_amount, order_status) VALUES
(1, '2024-01-15', 150.00, 'Completed'),
(2, '2024-02-20', 250.00, 'Completed');

DELIMITER //

CREATE PROCEDURE ArchiveOldOrders(IN p_archive_before_date DATE)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE o_id INT;
    DECLARE c_id INT;
    DECLARE o_date DATE;
    DECLARE t_amount DECIMAL(10, 2);
    DECLARE o_status VARCHAR(50);

    -- Declare cursor for orders older than the specified date
    DECLARE cur_old_orders CURSOR FOR
        SELECT order_id, customer_id, order_date, total_amount, order_status
        FROM orders
        WHERE order_date < p_archive_before_date;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    START TRANSACTION;

    OPEN cur_old_orders;

    archive_loop: LOOP
        FETCH cur_old_orders INTO o_id, c_id, o_date, t_amount, o_status;

        IF done THEN
            LEAVE archive_loop;
        END IF;

        -- Insert into archive table
        INSERT INTO old_orders_archive (order_id, customer_id, order_date, total_amount, order_status)
        VALUES (o_id, c_id, o_date, t_amount, o_status);

        -- Delete from original table
        DELETE FROM orders WHERE order_id = o_id;

    END LOOP archive_loop;

    CLOSE cur_old_orders;
    COMMIT;

END //

DELIMITER ;

-- Test:
SELECT * FROM orders WHERE order_date < '2024-07-01'; -- Should show the old orders
CALL ArchiveOldOrders('2024-07-01');
SELECT * FROM orders WHERE order_date < '2024-07-01'; -- Should be empty
SELECT * FROM old_orders_archive; -- Should show the archived orders
```

**5. Cursor for Complex Data Transformation (READS SQL DATA, potentially MODIFIES SQL DATA)**
Imagine you need to process product descriptions, cleaning them up and updating them based on some complex rules that are hard to do with `REPLACE()` or `REGEXP_REPLACE()`.

```sql
CREATE TABLE IF NOT EXISTS product_details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    description TEXT,
    cleaned_description TEXT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO product_details (product_id, description) VALUES
(1, 'This is a **great** laptop. Features: Fast CPU, 16GB RAM, 512GB SSD. [SKU: LPT101]'),
(2, 'A simple mouse. Good for basic tasks. #Ergonomic #Durable.'),
(3, 'Mechanical Keyboard for gaming. RGB Lighting. [SKU: KEY005].');

DELIMITER //

CREATE PROCEDURE CleanProductDescriptions()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE pd_id INT;
    DECLARE p_desc TEXT;
    DECLARE cleaned_desc TEXT;

    DECLARE cur_descriptions CURSOR FOR
        SELECT detail_id, description FROM product_details;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur_descriptions;

    description_loop: LOOP
        FETCH cur_descriptions INTO pd_id, p_desc;

        IF done THEN
            LEAVE description_loop;
        END IF;

        -- Perform complex cleaning logic (example: remove square bracket content)
        SET cleaned_desc = p_desc;

        -- Remove content like [SKU: XXX]
        SET cleaned_desc = REGEXP_REPLACE(cleaned_desc, '\\[SKU: [^]]+\\]', '');
        -- Remove hashtags
        SET cleaned_desc = REGEXP_REPLACE(cleaned_desc, '#\\w+', '');
        -- Replace bold markdown
        SET cleaned_desc = REPLACE(cleaned_desc, '**', '');

        -- Update the cleaned_description column
        UPDATE product_details
        SET cleaned_description = TRIM(cleaned_desc)
        WHERE detail_id = pd_id;

    END LOOP description_loop;

    CLOSE cur_descriptions;
END //

DELIMITER ;

-- Test:
SELECT * FROM product_details;
CALL CleanProductDescriptions();
SELECT * FROM product_details; -- Check the cleaned_description column
```

These examples illustrate the power of cursors for row-by-row processing within MySQL stored programs. However, always remember the trade-off with performance and favor set-based operations (like `UPDATE ... WHERE`, `INSERT ... SELECT`, `DELETE ... WHERE`) whenever your logic allows, as they are almost always more efficient in a relational database. Cursors are a tool of last resort for truly procedural, row-dependent logic.
