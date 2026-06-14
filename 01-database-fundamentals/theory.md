# Database Fundamentals

## What is Data?

Data is a collection of raw facts and information.

Examples:

- User names
- Email addresses
- Product prices
- Order details

Example:

Name: Sudheer
Email: sudheer@gmail.com

These individual pieces of information are called data.

---

## What is a Database?

A database is an organized collection of data that can be stored, managed, and retrieved efficiently.

Instead of storing information in files, databases provide structured storage mechanisms.

Examples:

- Banking Systems
- E-Commerce Applications
- Hospital Management Systems
- Social Media Platforms

---

## Why Do We Need Databases?

Imagine storing users inside a text file.

users.txt

Sudheer
Rahul
Krishna

Problems:

- Difficult to search
- Difficult to update
- Data duplication
- No relationships
- Poor security
- Slow performance

Databases solve these problems.

Benefits:

- Fast data retrieval
- Data consistency
- Security
- Scalability
- Data relationships

---

## What is an RDBMS?

RDBMS stands for Relational Database Management System.

An RDBMS stores data in the form of tables and allows relationships between tables.

Popular RDBMS:

- PostgreSQL
- MySQL
- Oracle
- SQL Server

---

## What is a Table?

A table is a collection of related data organized into rows and columns.

Example:

Users Table

| id | name    | email              |
|----|----------|--------------------|
| 1  | Sudheer | sudheer@gmail.com  |
| 2  | Rahul   | rahul@gmail.com    |

The table stores information about users.

---

## What is a Row?

A row represents a single record in a table.

Example:

| id | name    | email             |
|----|----------|-------------------|
| 1  | Sudheer | sudheer@gmail.com |

This complete record is one row.

---

## What is a Column?

A column represents a specific attribute of data.

Example:

| id | name | email |
|----|------|--------|

Columns:

- id
- name
- email

Each column stores a specific type of information.

---

## What is a Primary Key?

A Primary Key is a column that uniquely identifies each row in a table.

Characteristics:

- Unique
- Cannot be NULL
- Identifies records uniquely

Example:

| id | name |
|----|------|
| 1  | Sudheer |
| 2  | Rahul |

Here:

id is the Primary Key.

Why?

Because every user has a unique id.

---

## Real World Example

Consider an E-Commerce Application.

Tables:

Users

| user_id | name |
|----------|------|
| 1 | Sudheer |

Products

| product_id | product_name |
|------------|-------------|
| 101 | Laptop |

Orders

| order_id | user_id |
|-----------|---------|
| 1001 | 1 |

Primary Keys:

- user_id
- product_id
- order_id

These keys uniquely identify records.

---

## Summary

Today we learned:

- What is Data
- What is a Database
- Why Databases are needed
- What is an RDBMS
- What is a Table
- What is a Row
- What is a Column
- What is a Primary Key

