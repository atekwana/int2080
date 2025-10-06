-- kasey atekwana
-- int2080
-- 05/10/25
-- updating student_2 database after restore

-- checking deprecated features
SELECT TABLE_SCHEMA, TABLE_NAME, ENGINE
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'students_2';

-- verify version
SELECT VERSION();

-- verify database tables
USE students_2;

-- show table(s) status
SHOW TABLE STATUS;

-- checking for errors
SHOW WARNINGS;