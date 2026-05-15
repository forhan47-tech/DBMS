-- Create a simple view
CREATE VIEW student_names AS
SELECT student_id, name
FROM students;

-- Create a complex view
CREATE VIEW student_grades AS
SELECT s.name, c.course_name, e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Check view definition
SELECT view_name FROM user_views;
