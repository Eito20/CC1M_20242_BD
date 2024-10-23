-- Create schema
CREATE SCHEMA supply_chain;
USE supply_chain;

-- Create tables
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    country VARCHAR(50),
    contact_person VARCHAR(100),
    phone VARCHAR(20),
    supply_history TEXT
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    specifications TEXT,
    unit_of_measure VARCHAR(20),
    unit_price DECIMAL(10, 2),
    current_stock INT,
    warehouse_location VARCHAR(50),
    reorder_point INT
);

CREATE TABLE purchase_orders (
    order_id INT PRIMARY KEY,
    supplier_id INT,
    order_date DATE,
    expected_delivery_date DATE,
    status ENUM('processing', 'sent', 'received', 'cancelled'),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES purchase_orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    storage_capacity INT
);

-- Example ALTER statements
ALTER TABLE suppliers ADD COLUMN email VARCHAR(100);
ALTER TABLE products MODIFY COLUMN unit_price DECIMAL(12, 2);
ALTER TABLE purchase_orders ADD COLUMN total_amount DECIMAL(12, 2);
ALTER TABLE order_items ADD COLUMN unit_price DECIMAL(10, 2);
ALTER TABLE branches ADD COLUMN manager_name VARCHAR(100);

-- Drop schema
DROP SCHEMA supply_chain;