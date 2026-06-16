
/*
=========================================
DAY 2 - CRUD OPERATIONS
Database: PostgreSQL
=========================================
*/


-- ======================================
-- CREATE TABLE
-- ======================================

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id BIGINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    course VARCHAR(100),
    age INT
);

-- Verify table creation

SELECT * FROM students;

-- ======================================
-- CREATE OPERATION (INSERT)
-- ======================================

INSERT INTO students (id, name, email, course, age)
VALUES
(1, 'Sudheer', 'sudheer@gmail.com', 'Java', 24);

INSERT INTO students (id, name, email, course, age)
VALUES
(2, 'Rahul', 'rahul@gmail.com', 'Python', 22);

INSERT INTO students (id, name, email, course, age)
VALUES
(3, 'Krishna', 'krishna@gmail.com', 'SQL', 23);

-- Insert multiple records at once

INSERT INTO students (id, name, email, course, age)
VALUES
(4, 'Anjali', 'anjali@gmail.com', 'Spring Boot', 25),
(5, 'Vikram', 'vikram@gmail.com', 'PostgreSQL', 26);

-- View all records

SELECT * FROM students;

-- ======================================
-- READ OPERATION (SELECT)
-- ======================================

-- Retrieve all columns

SELECT * FROM students;

-- Retrieve specific columns

SELECT id, name, course
FROM students;

-- Filter records using WHERE

SELECT *
FROM students
WHERE age > 23;

SELECT *
FROM students
WHERE course = 'Java';

SELECT *
FROM students
WHERE id = 2;

-- Sort records

SELECT *
FROM students
ORDER BY age ASC;

SELECT *
FROM students
ORDER BY age DESC;

-- Limit results

SELECT *
FROM students
LIMIT 3;

-- ======================================
-- UPDATE OPERATION
-- ======================================

-- Update a student's course

UPDATE students
SET course = 'Spring Boot'
WHERE id = 1;

-- Verify update

SELECT *
FROM students
WHERE id = 1;

-- Update multiple columns

UPDATE students
SET email = 'rahul_new@gmail.com',
    age = 23
WHERE id = 2;

-- Verify update

SELECT *
FROM students
WHERE id = 2;

-- ======================================
-- DELETE OPERATION
-- ======================================

-- Delete a specific student

DELETE FROM students
WHERE id = 3;

-- Verify deletion

SELECT * FROM students;

-- ======================================
-- COUNT RECORDS
-- ======================================

SELECT COUNT(*) AS total_students
FROM students;

-- ======================================
-- IMPORTANT WARNINGS
-- DO NOT EXECUTE THESE QUERIES
-- ======================================

-- Updates all rows

-- UPDATE students
-- SET course = 'SQL';

-- Deletes all rows

-- DELETE FROM students;

-- ======================================
-- FINAL RESULT
-- ======================================

SELECT *
FROM students
ORDER BY id;

