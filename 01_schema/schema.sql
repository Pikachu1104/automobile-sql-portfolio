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
    is_active char(1)
);


--- Vehicle Table ---
CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    model_id INT NOT NULL,
    vin VARCHAR2(50) NOT NULL,
    reg_num VARCHAR2(30) NOT NULL,
    mileage NUMBER(10,2) NOT NULL,
    daily_mileage NUMBER(10,2) NOT NULL,
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL,
    is_active CHAR(1),
    CONSTRAINT fk_vehicles_model
        FOREIGN KEY (model_id)
        REFERENCES models_master(model_id)
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
    is_active char(1)
);

--- Dealer Master Table ---
CREATE TABLE dealer_master (
    dealer_id INT PRIMARY KEY,
    dealer_name VARCHAR(100) NOT NULL,
    city VARCHAR(30) NOT NULL,
    is_active CHAR(1),
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
);


--- Branch Master Table ---
CREATE TABLE branch_master (
    branch_id INT PRIMARY KEY,
    dealer_id INT NOT NULL,
    branch_name VARCHAR(100) NOT NULL,
    branch_address VARCHAR(300) NOT NULL,
    city VARCHAR(50) NOT NULL,
    branch_type VARCHAR(10) NOT NULL,
    is_active CHAR(1),
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL,
    CONSTRAINT fk_branch_dealer
        FOREIGN KEY (dealer_id)
        REFERENCES dealer_master(dealer_id)
);
