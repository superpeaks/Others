-- =====================================================
-- PostgreSQL Complete Schema with Tables, Triggers, and Functions
-- Converted from MySQL Sales Order Database
-- =====================================================

-- =====================================================
-- TABLES SECTION
-- =====================================================

CREATE TABLE customers (
    customer_id   SERIAL PRIMARY KEY,
    first_name    TEXT        NOT NULL,
    last_name     TEXT        NOT NULL,
    gender        TEXT,
    age           INTEGER,
    email         TEXT        UNIQUE,
    ph_num        TEXT        UNIQUE,
    address       TEXT,
    city          TEXT,
    state         TEXT,
    postal_code   TEXT,
    country       TEXT,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_on      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE category (
    category_id   SERIAL PRIMARY KEY,
    category_name TEXT        NOT NULL,
    description   TEXT,
    updated_on    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
    product_id    SERIAL PRIMARY KEY,
    product_name  TEXT        NOT NULL,
    description   TEXT,
    category_id   INTEGER     NOT NULL REFERENCES category(category_id),
    updated_on    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE inventory (
    inventory_id  SERIAL PRIMARY KEY,
    product_id    INTEGER     NOT NULL REFERENCES products(product_id),
    quantity      INTEGER     NOT NULL,
    last_updated  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE price_history (
    price_history_id SERIAL PRIMARY KEY,
    product_id       INTEGER     NOT NULL REFERENCES products(product_id),
    price            NUMERIC(10,2) NOT NULL,
    effective_date   DATE,
    fiscal_year      INTEGER,
    last_updated     TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE employees (
    employee_id     SERIAL PRIMARY KEY,
    first_name      TEXT     NOT NULL,
    last_name       TEXT     NOT NULL,
    age             INTEGER,
    phone_number    TEXT,
    email           TEXT,
    hire_date       DATE     DEFAULT CURRENT_DATE,
    role            TEXT,
    termination_date DATE,
    manager_id      INTEGER     REFERENCES employees(employee_id),
    is_working      BOOLEAN     DEFAULT TRUE,
    updated_on      TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
    order_id       SERIAL PRIMARY KEY,
    customer_id    INTEGER     NOT NULL REFERENCES customers(customer_id),
    total_quantity INTEGER,
    total_amount   NUMERIC(12,2),
    order_date     TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orderitems (
    orderitem_id   SERIAL PRIMARY KEY,
    order_id       INTEGER     NOT NULL REFERENCES orders(order_id),
    product_id     INTEGER     NOT NULL REFERENCES products(product_id),
    customer_id    INTEGER     NOT NULL REFERENCES customers(customer_id),
    seller_id      INTEGER     NOT NULL REFERENCES employees(employee_id),
    quantity       INTEGER,
    total_amount   NUMERIC(12,2)
);

CREATE TABLE shipping (
    shipping_id        SERIAL PRIMARY KEY,
    order_id           INTEGER     NOT NULL REFERENCES orders(order_id),
    shipping_date      TIMESTAMP,
    shipping_status    TEXT        DEFAULT 'pending',
    delivery_date      TIMESTAMP,
    shipping_addresss  TEXT,
    city               TEXT,
    state              TEXT,
    postalcode         TEXT,
    country            TEXT
);

CREATE TABLE audit (
    audit_id    SERIAL PRIMARY KEY,
    table_name  TEXT        NOT NULL,
    new_value   JSONB,
    old_value   JSONB,
    action      TEXT,
    user_id     TEXT,
    time        TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cart (
    cart_id     SERIAL PRIMARY KEY,
    customer_id INTEGER     NOT NULL REFERENCES customers(customer_id),
    product_id  INTEGER     NOT NULL REFERENCES products(product_id),
    seller_id   INTEGER     NOT NULL REFERENCES employees(employee_id),
    quantity    INTEGER     DEFAULT 1,
    total_amount NUMERIC(12,2),
    done        BOOLEAN     DEFAULT FALSE,
    added_on    TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);

-- =====================================================
-- TRIGGER FUNCTIONS SECTION
-- =====================================================

-- Customer Triggers
CREATE OR REPLACE FUNCTION audit_customer_insert() RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_on := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,new_value,action,user_id)
    VALUES (
        'customers',
        jsonb_build_object(
            'ID', NEW.customer_id,
            'name', CONCAT(NEW.first_name, ' ', NEW.last_name),
            'gender', NEW.gender,
            'ph_num', NEW.ph_num,
            'address', NEW.address,
            'city', NEW.city,
            'postal_code', NEW.postal_code,
            'country', NEW.country
        ),
        'insert',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_customer_update() RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_on := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,old_value,new_value,action,user_id)
    VALUES (
        'customers',
        jsonb_build_object(
            'ID', OLD.customer_id,
            'name', CONCAT(OLD.first_name, ' ', OLD.last_name),
            'gender', OLD.gender,
            'ph_num', OLD.ph_num,
            'address', OLD.address,
            'city', OLD.city,
            'postal_code', OLD.postal_code,
            'country', OLD.country
        ),
        jsonb_build_object(
            'ID', NEW.customer_id,
            'name', CONCAT(NEW.first_name, ' ', NEW.last_name),
            'gender', NEW.gender,
            'ph_num', NEW.ph_num,
            'address', NEW.address,
            'city', NEW.city,
            'postal_code', NEW.postal_code,
            'country', NEW.country
        ),
        'update',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_customer_delete() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit(table_name,old_value,action,user_id)
    VALUES (
        'customers',
        jsonb_build_object(
            'ID', OLD.customer_id,
            'name', CONCAT(OLD.first_name, ' ', OLD.last_name),
            'gender', OLD.gender,
            'ph_num', OLD.ph_num,
            'address', OLD.address,
            'city', OLD.city,
            'postal_code', OLD.postal_code,
            'country', OLD.country
        ),
        'delete',
        CURRENT_USER
    );
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Category Triggers
CREATE OR REPLACE FUNCTION audit_category_insert() RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_on := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,new_value,action,user_id)
    VALUES (
        'category',
        jsonb_build_object(
            'id', NEW.category_id,
            'name', NEW.category_name,
            'desc', NEW.description
        ),
        'insert',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_category_update() RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_on := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,old_value,new_value,action,user_id)
    VALUES (
        'category',
        jsonb_build_object(
            'id', OLD.category_id,
            'name', OLD.category_name,
            'desc', OLD.description
        ),
        jsonb_build_object(
            'id', NEW.category_id,
            'name', NEW.category_name,
            'desc', NEW.description
        ),
        'update',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_category_delete() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit(table_name,old_value,action,user_id)
    VALUES (
        'category',
        jsonb_build_object(
            'id', OLD.category_id,
            'name', OLD.category_name,
            'desc', OLD.description
        ),
        'delete',
        CURRENT_USER
    );
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Products Triggers
CREATE OR REPLACE FUNCTION audit_product_insert() RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_on := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,new_value,action,user_id)
    VALUES (
        'products',
        jsonb_build_object(
            'id', NEW.product_id,
            'name', NEW.product_name,
            'description', NEW.description,
            'category_id', NEW.category_id
        ),
        'insert',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_product_update() RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_on := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,old_value,new_value,action,user_id)
    VALUES (
        'products',
        jsonb_build_object(
            'id', OLD.product_id,
            'name', OLD.product_name,
            'description', OLD.description,
            'category_id', OLD.category_id
        ),
        jsonb_build_object(
            'id', NEW.product_id,
            'name', NEW.product_name,
            'description', NEW.description,
            'category_id', NEW.category_id
        ),
        'update',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_product_delete() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit(table_name,old_value,action,user_id)
    VALUES (
        'products',
        jsonb_build_object(
            'id', OLD.product_id,
            'name', OLD.product_name,
            'description', OLD.description,
            'category_id', OLD.category_id
        ),
        'delete',
        CURRENT_USER
    );
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Inventory Triggers
CREATE OR REPLACE FUNCTION audit_inventory_insert() RETURNS TRIGGER AS $$
BEGIN
    NEW.last_updated := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,new_value,action,user_id)
    VALUES (
        'inventory',
        jsonb_build_object(
            'product_id', NEW.product_id,
            'quantity', NEW.quantity
        ),
        'insert',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_inventory_update() RETURNS TRIGGER AS $$
BEGIN
    NEW.last_updated := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,old_value,new_value,action,user_id)
    VALUES (
        'inventory',
        jsonb_build_object(
            'product_id', OLD.product_id,
            'quantity', OLD.quantity
        ),
        jsonb_build_object(
            'product_id', NEW.product_id,
            'quantity', NEW.quantity
        ),
        'update',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_inventory_delete() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit(table_name,old_value,action,user_id)
    VALUES (
        'inventory',
        jsonb_build_object(
            'product_id', OLD.product_id,
            'quantity', OLD.quantity
        ),
        'delete',
        CURRENT_USER
    );
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Price History Triggers
CREATE OR REPLACE FUNCTION audit_price_insert() RETURNS TRIGGER AS $$
BEGIN
    NEW.last_updated := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,new_value,action,user_id)
    VALUES (
        'price_history',
        jsonb_build_object(
            'product', NEW.product_id,
            'price', NEW.price,
            'effective_date', NEW.effective_date
        ),
        'insert',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_price_update() RETURNS TRIGGER AS $$
BEGIN
    NEW.last_updated := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,old_value,new_value,action,user_id)
    VALUES (
        'price_history',
        jsonb_build_object(
            'product', OLD.product_id,
            'price', OLD.price,
            'effective_date', OLD.effective_date
        ),
        jsonb_build_object(
            'product', NEW.product_id,
            'price', NEW.price,
            'effective_date', NEW.effective_date
        ),
        'update',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_price_delete() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit(table_name,old_value,action,user_id)
    VALUES (
        'price_history',
        jsonb_build_object(
            'product', OLD.product_id,
            'price', OLD.price,
            'effective_date', OLD.effective_date
        ),
        'delete',
        CURRENT_USER
    );
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Employee Triggers
CREATE OR REPLACE FUNCTION audit_employee_insert() RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_on := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,new_value,action,user_id)
    VALUES (
        'employees',
        jsonb_build_object(
            'id', NEW.employee_id,
            'name', CONCAT(NEW.first_name, ' ', NEW.last_name),
            'age', NEW.age,
            'phone_number', NEW.phone_number,
            'email', NEW.email,
            'role', NEW.role,
            'termination_date', NEW.termination_date,
            'manager_id', NEW.manager_id,
            'is_working', NEW.is_working
        ),
        'insert',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_employee_update() RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_on := CURRENT_TIMESTAMP;
    INSERT INTO audit(table_name,old_value,new_value,action,user_id)
    VALUES (
        'employees',
        jsonb_build_object(
            'id', OLD.employee_id,
            'name', CONCAT(OLD.first_name, ' ', OLD.last_name),
            'age', OLD.age,
            'phone_number', OLD.phone_number,
            'email', OLD.email,
            'role', OLD.role,
            'termination_date', OLD.termination_date,
            'manager_id', OLD.manager_id,
            'is_working', OLD.is_working
        ),
        jsonb_build_object(
            'id', NEW.employee_id,
            'name', CONCAT(NEW.first_name, ' ', NEW.last_name),
            'age', NEW.age,
            'phone_number', NEW.phone_number,
            'email', NEW.email,
            'role', NEW.role,
            'termination_date', NEW.termination_date,
            'manager_id', NEW.manager_id,
            'is_working', NEW.is_working
        ),
        'update',
        CURRENT_USER
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION audit_employee_delete() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit(table_name,old_value,action,user_id)
    VALUES (
        'employees',
        jsonb_build_object(
            'id', OLD.employee_id,
            'name', CONCAT(OLD.first_name, ' ', OLD.last_name),
            'age', OLD.age,
            'phone_number', OLD.phone_number,
            'email', OLD.email,
            'role', OLD.role,
            'termination_date', OLD.termination_date,
            'manager_id', OLD.manager_id,
            'is_working', OLD.is_working
        ),
        'delete',
        CURRENT_USER
    );
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- =====================================================
-- TRIGGERS SECTION
-- =====================================================

-- Customer Triggers
CREATE TRIGGER insert_customer_table
BEFORE INSERT ON customers
FOR EACH ROW EXECUTE FUNCTION audit_customer_insert();

CREATE TRIGGER update_customer_table
BEFORE UPDATE ON customers
FOR EACH ROW EXECUTE FUNCTION audit_customer_update();

CREATE TRIGGER delete_customer_table
BEFORE DELETE ON customers
FOR EACH ROW EXECUTE FUNCTION audit_customer_delete();

-- Category Triggers
CREATE TRIGGER insert_on_category_table
BEFORE INSERT ON category
FOR EACH ROW EXECUTE FUNCTION audit_category_insert();

CREATE TRIGGER update_date_on_category_table
BEFORE UPDATE ON category
FOR EACH ROW EXECUTE FUNCTION audit_category_update();

CREATE TRIGGER delete_on_category_table
BEFORE DELETE ON category
FOR EACH ROW EXECUTE FUNCTION audit_category_delete();

-- Products Triggers
CREATE TRIGGER insert_on_product_table
BEFORE INSERT ON products
FOR EACH ROW EXECUTE FUNCTION audit_product_insert();

CREATE TRIGGER update_on_product_table
BEFORE UPDATE ON products
FOR EACH ROW EXECUTE FUNCTION audit_product_update();

CREATE TRIGGER delete_on_product_table
BEFORE DELETE ON products
FOR EACH ROW EXECUTE FUNCTION audit_product_delete();

-- Inventory Triggers
CREATE TRIGGER insert_on_inventory_table
BEFORE INSERT ON inventory
FOR EACH ROW EXECUTE FUNCTION audit_inventory_insert();

CREATE TRIGGER update_date_on_inventory_table
BEFORE UPDATE ON inventory
FOR EACH ROW EXECUTE FUNCTION audit_inventory_update();

CREATE TRIGGER delete_on_inventory_table
BEFORE DELETE ON inventory
FOR EACH ROW EXECUTE FUNCTION audit_inventory_delete();

-- Price History Triggers
CREATE TRIGGER insert_on_price_table
BEFORE INSERT ON price_history
FOR EACH ROW EXECUTE FUNCTION audit_price_insert();

CREATE TRIGGER price_update_on_price_table
BEFORE UPDATE ON price_history
FOR EACH ROW EXECUTE FUNCTION audit_price_update();

CREATE TRIGGER delete_on_price_table
BEFORE DELETE ON price_history
FOR EACH ROW EXECUTE FUNCTION audit_price_delete();

-- Employee Triggers
CREATE TRIGGER insert_employee_table
BEFORE INSERT ON employees
FOR EACH ROW EXECUTE FUNCTION audit_employee_insert();

CREATE TRIGGER update_on_employee_table
BEFORE UPDATE ON employees
FOR EACH ROW EXECUTE FUNCTION audit_employee_update();

CREATE TRIGGER delete_employee_table
BEFORE DELETE ON employees
FOR EACH ROW EXECUTE FUNCTION audit_employee_delete();


-- =====================================================
-- INDEXES FOR PERFORMANCE (Optional)
-- =====================================================

CREATE INDEX idx_customers_email ON customers(email);
CREATE INDEX idx_customers_phone ON customers(ph_num);
CREATE INDEX idx_products_category ON products(category_id);
CREATE INDEX idx_inventory_product ON inventory(product_id);
CREATE INDEX idx_price_history_product ON price_history(product_id);
CREATE INDEX idx_price_history_date ON price_history(effective_date);
CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_orderitems_order ON orderitems(order_id);
CREATE INDEX idx_orderitems_product ON orderitems(product_id);
CREATE INDEX idx_shipping_order ON shipping(order_id);
CREATE INDEX idx_cart_customer ON cart(customer_id);
CREATE INDEX idx_cart_product ON cart(product_id);
CREATE INDEX idx_employees_manager ON employees(manager_id);

-- =====================================================
-- STORED PROCEDURES SECTION (MySQL-style with CALL)
-- =====================================================

-- 1. Employee Management Procedures
CREATE OR REPLACE PROCEDURE update_manager_employees(
    IN e_id INT,
    IN m_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees SET manager_id = m_id WHERE employee_id = e_id;
    COMMIT;
END;
$$;

CREATE OR REPLACE PROCEDURE update_termination_employees(
    IN e_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees
    SET termination_date = CURRENT_DATE,
        is_working = FALSE
    WHERE employee_id = e_id;
    COMMIT;
END;
$$;

-- 2. Customer Registration Procedure
CREATE OR REPLACE PROCEDURE insert_date_in_customers(
    IN p_fname TEXT, 
    IN p_lname TEXT,
    IN p_gen TEXT,
    IN p_age INT,
    IN p_email TEXT,
    IN p_phone TEXT,
    IN p_addr TEXT,
    IN p_city TEXT,
    IN p_state TEXT,
    IN p_post TEXT,
    IN p_country TEXT
)
LANGUAGE plpgsql
AS $$
DECLARE
    p_mail BOOLEAN := FALSE;
    p_ph BOOLEAN := FALSE;
BEGIN
    -- Check if email exists
    SELECT EXISTS(SELECT 1 FROM customers WHERE email = p_email) INTO p_mail;
    
    -- Check if phone number exists
    SELECT EXISTS(SELECT 1 FROM customers WHERE ph_num = p_phone) INTO p_ph;

    -- Validate unique constraints
    IF p_mail AND p_ph THEN
        RAISE EXCEPTION 'This Email and Phone number already Registered. Please Use Different Email and Phone number.';
    ELSIF p_mail THEN
        RAISE EXCEPTION 'This Email-ID already Registered. Please Use Different Email-ID.';
    ELSIF p_ph THEN
        RAISE EXCEPTION 'This phone number already Registered. Please Use Different Phone number.';
    END IF;

    -- Validate age
    IF p_age <= 0 THEN
        p_age := NULL;
    END IF;

    -- Default gender
    IF p_gen IS NULL THEN
        p_gen := 'prefer not to say';
    END IF;

    -- Insert customer
    INSERT INTO customers (first_name,last_name,gender,age,email,ph_num,
    address,city,state,postal_code,country,registration_date)
    VALUES (p_fname,p_lname,p_gen,p_age,p_email,p_phone,p_addr,p_city,p_state,p_post,p_country,CURRENT_TIMESTAMP);
    
    COMMIT;
END;
$$;

-- 3. Category Insert Procedure
CREATE OR REPLACE PROCEDURE insert_values_category(
    IN name TEXT, 
    IN des TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO category(category_name, description, updated_on)
    VALUES (name, des, CURRENT_TIMESTAMP);
    COMMIT;
END;
$$;

-- 4. Product Insert Procedure
CREATE OR REPLACE PROCEDURE insert_values_products(
    IN name TEXT,
    IN des TEXT,
    IN cat INT
)
LANGUAGE plpgsql
AS $$
BEGIN 
    INSERT INTO products(product_name, description, category_id, updated_on)
    VALUES (name, des, cat, CURRENT_TIMESTAMP);
    COMMIT;
END;
$$;

-- 5. Inventory Insert Procedure
CREATE OR REPLACE PROCEDURE insert_values_inventory(
    IN pid INT,
    IN qty INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO inventory(product_id, quantity, last_updated)
    VALUES (pid, qty, CURRENT_TIMESTAMP);
    COMMIT;
END;
$$;

-- 6. Price Insert Procedure
CREATE OR REPLACE PROCEDURE insert_values_price(
    IN pid INT,
    IN price NUMERIC,
    IN start_at DATE
)
LANGUAGE plpgsql
AS $$
DECLARE
    yr INT := EXTRACT(YEAR FROM CURRENT_DATE);
BEGIN
    INSERT INTO price_history(product_id, price, fiscal_year, effective_date, last_updated)
    VALUES (pid, price, yr, start_at, CURRENT_TIMESTAMP);
    COMMIT;
END;
$$;

-- 7. Complex Cart and Order Processing Procedure
CREATE OR REPLACE PROCEDURE insert_values_cart(
    IN pid INT,
    IN cid INT,
    IN sid INT,
    IN qty INT,
    IN done_flag INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    price_value NUMERIC;
    oid INT;
    tqty INT;
    tamt NUMERIC;
    piqty INT;
    pcqty INT := 0;
    
    c_pid INT;
    c_qty INT;
    done_flag_bool BOOLEAN DEFAULT FALSE;
    cart_cursor CURSOR FOR 
        SELECT product_id, SUM(quantity) 
        FROM cart 
        WHERE customer_id = cid AND done = TRUE
        GROUP BY product_id 
        ORDER BY product_id;
BEGIN
    -- Convert done_flag to boolean
    done_flag_bool := (done_flag = 1);
    
    -- Fetch the price of the product
    SELECT COALESCE(price, 0) INTO price_value 
    FROM price_history
    WHERE product_id = pid 
    AND effective_date <= CURRENT_DATE
    ORDER BY effective_date DESC 
    LIMIT 1;

    -- Fetch the available quantity in inventory
    SELECT COALESCE(quantity, 0) INTO piqty 
    FROM inventory 
    WHERE product_id = pid;

    -- Check for existing cart entry
    SELECT quantity INTO pcqty 
    FROM cart 
    WHERE product_id = pid AND customer_id = cid AND seller_id = sid
    LIMIT 1;
    
    IF pcqty IS NULL THEN
        pcqty := 0;
    END IF;

    qty := qty + pcqty;

    -- Check if there is enough inventory and price is valid
    IF piqty >= qty AND price_value > 0 AND piqty > 0 THEN
        IF pcqty > 0 THEN
            -- Update existing cart item
            UPDATE cart 
            SET quantity = qty,
                total_amount = qty * price_value
            WHERE product_id = pid 
            AND customer_id = cid 
            AND seller_id = sid;
        ELSE        
            -- Insert new cart item
            INSERT INTO cart(product_id, customer_id, seller_id, quantity, total_amount, done)
            VALUES (pid, cid, sid, qty, qty * price_value, done_flag_bool);
        END IF;
    ELSE 
        ROLLBACK;
        RAISE EXCEPTION 'Quantity cannot be less than inventory value or invalid price';
    END IF;

    -- Process order if cart is marked as done
    IF EXISTS (SELECT 1 FROM cart WHERE customer_id = cid AND done = TRUE) THEN
        -- Update inventory based on cart items
        FOR cart_record IN cart_cursor LOOP
            UPDATE inventory 
            SET quantity = quantity - cart_record.quantity,
                last_updated = CURRENT_TIMESTAMP
            WHERE product_id = cart_record.product_id;
        END LOOP;

        -- Insert the order record
        INSERT INTO orders(customer_id, total_quantity, total_amount)
        SELECT customer_id, SUM(quantity), SUM(total_amount) 
        FROM cart 
        WHERE customer_id = cid AND done = TRUE
        GROUP BY customer_id;

        -- Get the new order ID
        SELECT order_id INTO oid 
        FROM orders 
        WHERE customer_id = cid 
        ORDER BY order_date DESC 
        LIMIT 1;

        -- Insert order items
        INSERT INTO orderitems(order_id, product_id, customer_id, seller_id, quantity, total_amount)
        SELECT oid, product_id, customer_id, seller_id, quantity, total_amount 
        FROM cart 
        WHERE customer_id = cid AND done = TRUE;

        -- Clear the processed cart items
        DELETE FROM cart WHERE customer_id = cid AND done = TRUE;
        
        COMMIT;
    ELSE
        COMMIT;
    END IF;
END;
$$;

-- 8. Employee Insert Procedure
CREATE OR REPLACE PROCEDURE insert_values_employees(
    IN fname TEXT,
    IN lname TEXT,
    IN age INT,
    IN ph TEXT,
    IN email TEXT,
    IN role TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees(first_name, last_name, age, phone_number, email, role, updated_on)
    VALUES (fname, lname, age, ph, email, role, CURRENT_TIMESTAMP);
    COMMIT;
END;
$$;

-- 9. Copy Shipping Address Procedure
CREATE OR REPLACE PROCEDURE copy_shipping_address(
    IN cid INT,
    IN oid INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO shipping(order_id, shipping_addresss, city, state, postalcode, country) 
    SELECT oid, address, city, state, postal_code, country 
    FROM customers 
    WHERE customer_id = cid;
    COMMIT;
END;
$$;

-- 10. Custom Shipping Address Procedure
CREATE OR REPLACE PROCEDURE shipping_address(
    IN oid INT,
    IN address TEXT,
    IN p_city TEXT,
    IN p_state TEXT,
    IN p_postal TEXT,
    IN p_country TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO shipping(order_id, shipping_addresss, city, state, postalcode, country)
    VALUES (oid, address, p_city, p_state, p_postal, p_country);
    COMMIT;
END;
$$;

