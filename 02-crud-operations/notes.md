Day 2 Notes - CRUD Operations
________________________________________
Topics Covered
•	INSERT
•	SELECT
•	WHERE
•	ORDER BY
•	LIMIT
•	UPDATE
•	DELETE
•	COUNT
________________________________________
What is CRUD?
CRUD represents the four basic operations performed on database records.
Operation	SQL Command	Purpose
Create	INSERT	Add new records
Read	SELECT	Retrieve records
Update	UPDATE	Modify existing records
Delete	DELETE	Remove existing records
________________________________________
Key Learnings
INSERT
•	Used to add new rows to a table.
•	Multiple rows can be inserted in a single query.
•	Column names should always be specified.
Example:
INSERT INTO students (id, name, email, course, age)
VALUES (1, 'Sudheer', 'sudheer@gmail.com', 'Java', 24);
________________________________________
SELECT
•	Used to retrieve data from a table.
•	SELECT * returns all columns.
•	Specific columns can be selected for better readability.
Example:
SELECT name, course
FROM students;
________________________________________
WHERE
•	Filters records based on conditions.
•	Essential for targeting specific rows.
Example:
SELECT *
FROM students
WHERE age > 23;
________________________________________
ORDER BY
•	Sorts query results.
•	ASC sorts in ascending order.
•	DESC sorts in descending order.
Example:
SELECT *
FROM students
ORDER BY age DESC;
________________________________________
LIMIT
•	Restricts the number of rows returned.
Example:
SELECT *
FROM students
LIMIT 5;
________________________________________
UPDATE
•	Modifies existing records.
•	Always use a WHERE clause.
Example:
UPDATE students
SET course = 'Spring Boot'
WHERE id = 1;
________________________________________
DELETE
•	Removes records from a table.
•	Always use a WHERE clause.
Example:
DELETE FROM students
WHERE id = 3;
________________________________________
COUNT
•	Counts the number of rows.
Example:
SELECT COUNT(*)
FROM students;
________________________________________
Important Rules
•	Always specify column names in INSERT statements.
•	Use WHERE with UPDATE and DELETE.
•	Avoid using SELECT * in production applications.
•	Verify changes using SELECT after UPDATE or DELETE.
________________________________________
Real-World Mapping
Application Action	SQL Operation
User registration	INSERT
View profile	SELECT
Update profile	UPDATE
Delete account	DELETE
________________________________________
Common Mistakes
Missing WHERE in UPDATE
UPDATE students
SET course = 'SQL';
This updates every row.
________________________________________
Missing WHERE in DELETE
DELETE FROM students;
This deletes every row.
________________________________________
Practical Work Completed
•	Created the students table.
•	Inserted sample records.
•	Retrieved data using SELECT.
•	Filtered data using WHERE.
•	Sorted records using ORDER BY.
•	Updated records using UPDATE.
•	Deleted records using DELETE.
•	Counted records using COUNT().
________________________________________
Revision Questions
1.	What is CRUD?
2.	When should WHERE be used?
3.	What does LIMIT do?
4.	Why should UPDATE include WHERE?
5.	Why should DELETE include WHERE?
6.	What is the purpose of COUNT()?
________________________________________
Key Takeaway
CRUD operations are the foundation of every database-driven application. Mastering these commands is essential before moving on to constraints, relationships, and joins.

