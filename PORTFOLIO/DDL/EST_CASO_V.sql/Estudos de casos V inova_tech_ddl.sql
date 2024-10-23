-- Create schema
CREATE SCHEMA inova_tech;
USE inova_tech;

-- Create tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    birth_date DATE,
    address VARCHAR(255),
    loyalty_status ENUM('bronze', 'silver', 'gold')
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category ENUM('computer', 'cellphone', 'accessory', 'software'),
    price DECIMAL(10, 2),
    stock_quantity INT,
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE sale_items (
    sale_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    PRIMARY KEY (sale_id, product_id),
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    sale_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    payment_method VARCHAR(50),
    status ENUM('paid', 'pending'),
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id)
);

-- Example ALTER statements
ALTER TABLE customers ADD COLUMN phone VARCHAR(20);
ALTER TABLE suppliers ADD COLUMN address VARCHAR(255);
ALTER TABLE products ADD COLUMN description TEXT;
ALTER TABLE sales ADD COLUMN status ENUM('completed', 'cancelled', 'returned');
ALTER TABLE sale_items ADD COLUMN discount DECIMAL(5, 2);
ALTER TABLE payments ADD COLUMN transaction_id VARCHAR(100);

-- Drop schema
DROP SCHEMA inova_tech;