-- create user local host
CREATE USER  'Customer_rep'@'localhost'
IDENTIFIED BY 'admin123';

-- ready only permission on student_data
GRANT SELECT, SHOW, DESCRIBE, EXPLAIN
ON student_data.*
TO 'Customer_rep'@'localhost';

-- create user on any host
CREATE USER  'Department_head'@'%'
IDENTIFIED BY 'admin123';

-- ready only permission on student_data
GRANT SELECT, SHOW, DESCRIBE, EXPLAIN
ON student_data.*
TO 'Department_head'@'%';

-- create user on any host
CREATE USER  'DBA'@'%'
IDENTIFIED BY 'admin123';

-- grant all privileges on student_data
GRANT ALL PRIVILEGES
ON student_data.*
TO 'DBA'@'%';

-- create user on local host
CREATE USER  'DBA'@'localhost'
IDENTIFIED BY 'admin123';

-- grant all privileges on student_data with option to grant to other users
GRANT ALL PRIVILEGES
ON student_data.*
TO 'DBA'@'localhost'
WITH GRANT OPTION;

-- display all the running processes on your MySQL server
SELECT * FROM INFORMATION_SCHEMA.PROCESSLIST;