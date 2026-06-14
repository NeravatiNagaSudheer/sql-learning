-- Create Database

CREATE DATABASE sql_learning;

-- Connect to database before executing below statements

-- Create Users Table

CREATE TABLE users (
    id BIGINT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255)
);

-- Insert Sample Data

INSERT INTO users (id, name, email)
VALUES
(1, 'Sudheer', 'sudheer@gmail.com');

INSERT INTO users (id, name, email)
VALUES
(2, 'Rahul', 'rahul@gmail.com');

-- Retrieve Data

SELECT * FROM users;

-- Retrieve Specific Columns

SELECT id, name
FROM users;

-- Create Products Table

CREATE TABLE products (
    id BIGINT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

-- Insert Product Data

INSERT INTO products (id, name, price)
VALUES
(101, 'Laptop', 55000.00);

INSERT INTO products (id, name, price)
VALUES
(102, 'Mouse', 999.00);

-- Retrieve Products

SELECT * FROM products;
