-- File: create_user.sql
CREATE USER forhan IDENTIFIED BY "@forhan!_05*7d3"
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA 10M ON users;

-- File: grant_privileges.sql
GRANT CONNECT, RESOURCE TO forhan;
GRANT CREATE SESSION TO forhan;
GRANT CREATE TABLE TO forhan;

-- File: create_table.sql
CONNECT forhan/"@forhan!_05*7d3";

CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    emp_salary NUMBER
);

-- File: insert_data.sql
INSERT INTO employees VALUES (1, 'Alice', 50000);
INSERT INTO employees VALUES (2, 'Bob', 60000);
INSERT INTO employees VALUES (3, 'Charlie', 55000);

COMMIT;

-- File: select_data.sql
SELECT * FROM employees;

-- Example: Find employees earning more than 55,000
SELECT emp_name, emp_salary
FROM employees
WHERE emp_salary > 55000;

SELECT username 
FROM all_users
ORDER BY username;

-- File: drop_user.sql
DROP USER forhan CASCADE;
