-- Create database
CREATE DATABASE IF NOT EXISTS autocare;

-- Use the database
USE autocare;

-- users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100),
    vehicle_name VARCHAR(100),
    registration_number VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(15),
    password VARCHAR(100) NOT NULL,
    role ENUM('customer', 'admin', 'mechanic') DEFAULT 'customer'
);

-- services table
CREATE TABLE IF NOT EXISTS services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    estimated_time INT
);

-- orders table
CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    service_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Pending',
    total_price DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (service_id) REFERENCES services(id) ON DELETE CASCADE
);

-- towing_requests table
CREATE TABLE IF NOT EXISTS towing_requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    request_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    location VARCHAR(255),
    vehicle_details VARCHAR(255),
    pickup_time DATETIME,
    status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- service_requests table
CREATE TABLE IF NOT EXISTS service_requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    service_id INT,
    request_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (service_id) REFERENCES services(id) ON DELETE CASCADE
);
