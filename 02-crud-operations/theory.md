CRUD Operations in SQL
What is CRUD?
CRUD stands for the four basic operations performed on data in a database.
•	Create → Add new data
•	Read → Retrieve existing data
•	Update → Modify existing data
•	Delete → Remove existing data
Almost every application uses CRUD operations.
Examples:
•	User registration → CREATE
•	Viewing a profile → READ
•	Updating account information → UPDATE
•	Deleting an account → DELETE
________________________________________
Student Table Used in Examples
CREATE TABLE students (
    id BIGINT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255),
    course VARCHAR(100),
    age INT
);
id	name	email	course	age
1	Sudheer	sudheer@gmail.com
Java	24
2	Rahul	rahul@gmail.com
Python	22
________________________________________
CREATE Operation - INSERT
The INSERT statement is used to add new records to a table.
Syntax
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
Example
INSERT INTO students (id, name, email, course, age)
VALUES (1, 'Sudheer', 'sudheer@gmail.com', 'Java', 24);
Insert Multiple Records
INSERT INTO students (id, name, email, course, age)
VALUES
(2, 'Rahul', 'rahul@gmail.com', 'Python', 22),
(3, 'Krishna', 'krishna@gmail.com', 'SQL', 23);
Important Points
•	Column names should match the values provided.
•	Data types must be compatible.
•	Primary key values must be unique.
________________________________________
READ Operation - SELECT
The SELECT statement is used to retrieve data from a table.
Retrieve All Columns
SELECT * FROM students;
Retrieve Specific Columns
SELECT name, course
FROM students;
Output Example
name	course
Sudheer	Java
Rahul	Python
Important Points
•	SELECT * returns all columns.
•	Selecting specific columns improves readability and performance.
•	SQL keywords are case-insensitive.
________________________________________
Filtering Data with WHERE
The WHERE clause is used to retrieve specific records based on a condition.
Syntax
SELECT column_name
FROM table_name
WHERE condition;
Example
SELECT *
FROM students
WHERE age > 22;
Example
SELECT *
FROM students
WHERE course = 'Java';
Common Operators
Operator	Meaning
=	Equal to
!= or <>	Not equal to
>	Greater than
<	Less than
>=	Greater than or equal to
<=	Less than or equal to
Important Points
•	WHERE filters rows.
•	String values must be enclosed in single quotes.
•	Numeric values do not require quotes.
________________________________________
UPDATE Operation
The UPDATE statement modifies existing records.
Syntax
UPDATE table_name
SET column_name = value
WHERE condition;
Example
UPDATE students
SET course = 'Spring Boot'
WHERE id = 1;
Update Multiple Columns
UPDATE students
SET email = 'sudheer_new@gmail.com',
    age = 25
WHERE id = 1;
Important Warning
Never execute an UPDATE statement without a WHERE clause unless you intend to update all rows.
Example:
UPDATE students
SET course = 'SQL';
This updates every student's course to SQL.
________________________________________
DELETE Operation
The DELETE statement removes records from a table.
Syntax
DELETE FROM table_name
WHERE condition;
Example
DELETE FROM students
WHERE id = 3;
Important Warning
Never execute a DELETE statement without a WHERE clause unless you intend to remove all rows.
Example:
DELETE FROM students;
This deletes every record from the table.
________________________________________
CRUD Summary
Operation	SQL Command	Purpose
Create	INSERT	Add new records
Read	SELECT	Retrieve records
Update	UPDATE	Modify records
Delete	DELETE	Remove records
________________________________________
Real-World Example
Consider a social media application.
User Registration
INSERT INTO users (...);
View User Profile
SELECT * FROM users WHERE id = 1;
Update Profile Information
UPDATE users SET email = 'new@email.com' WHERE id = 1;
Delete User Account
DELETE FROM users WHERE id = 1;
Every backend application uses CRUD operations.
________________________________________
Best Practices
•	Always specify column names in INSERT statements.
•	Use WHERE with UPDATE and DELETE.
•	Prefer selecting only required columns instead of using SELECT *.
•	Test queries on sample data before running them on production databases.
________________________________________
Key Takeaways
•	CRUD operations are the foundation of SQL.
•	INSERT adds records.
•	SELECT retrieves records.
•	UPDATE modifies records.
•	DELETE removes records.
•	The WHERE clause helps target specific rows safely.

