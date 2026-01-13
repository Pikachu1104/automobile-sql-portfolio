--- Customer Table ---
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_type VARCHAR(50),
    customer_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(300) NOT NULL,
    city VARCHAR(100) NOT NULL,
    pincode VARCHAR(10) NOT NULL,
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL,
    is_active BOOLEAN
);

