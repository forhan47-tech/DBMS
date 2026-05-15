-- Create a table with constraints
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    age NUMBER CHECK (age > 0),
    email VARCHAR2(100) UNIQUE
);

-- Check table structure
DESCRIBE students;

-- List all tables in the current schema
SELECT table_name FROM user_tables;

-- List all objects in the current schema
SELECT object_name, object_type FROM user_objects;

-- List all constraints on the current schema
SELECT constraint_name, constraint_type FROM user_constraints WHERE table_name = 'STUDENTS';
