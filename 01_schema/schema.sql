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


--- Vehicle Table ---
CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    reg_num VARCHAR(30) NOT NULL,
    mileage DECIMAL(10,2) NOT NULL,
    daily_mileage DECIMAL(10,2) NOT NULL,
    vehicle_model VARCHAR(50) NOT NULL,
    grade VARCHAR(50) NOT NULL,
    suffix VARCHAR(50) NOT NULL,
    interior_color VARCHAR(50) NOT NULL,
    exterior_color VARCHAR(50) NOT NULL,
    vehicle_brand VARCHAR(50) NOT NULL,
    fuel_type VARCHAR(50) NOT NULL,
    transmission VARCHAR(50) NOT NULL,
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL,
    is_active BOOLEAN
);

--- Model Master Table ---
CREATE TABLE models_master (
    model_id INT PRIMARY KEY,
    vehicle_model VARCHAR(50) NOT NULL,
    vehicle_brand VARCHAR(50) NOT NULL,
    grade VARCHAR(50) NOT NULL,
    suffix VARCHAR(50) NOT NULL,
    fuel_type VARCHAR(20) NOT NULL,
    transmission VARCHAR(20) NOT NULL,
    interior_color VARCHAR(50) NOT NULL,
    exterior_color VARCHAR(50) NOT NULL,
    base_price DECIMAL(12,2) NOT NULL,
    launch_date DATE NOT NULL,
    is_active BOOLEAN
);


