-- kasey atekwana
-- 14/09/2025
-- lab 4
-- showing ER schema for student database by adding a table named books
-- show current user
SELECT
    USER ();

-- create database based on student
CREATE DATABASE student_data;

-- choose database
USE student_data;

-- dropping student table(s)
drop table if exists student_data.books;
drop table if exists student_data.author;
drop table if exists student_data.publisher;
drop table if exists student_data.customers;

CREATE TABLE
    student_data.CUSTOMERS (
        Customer_no INT PRIMARY KEY AUTO_INCREMENT,
        LastName VARCHAR(10),
        FirstName VARCHAR(10),
        Address VARCHAR(20),
        City VARCHAR(12),
        State VARCHAR(2),
        Zip VARCHAR(5),
        Referred INT (4),
        Region CHAR(2)
    );

-- show table and relationships
DESCRIBE student_data.CUSTOMERS;

-- show table contents
SELECT
    *
FROM
    student_data.CUSTOMERS;

CREATE TABLE
    student_data.PUBLISHER (
        PubID INT PRIMARY KEY,
        Name VARCHAR(23),
        Contact VARCHAR(15),
        Phone VARCHAR(12)
    ) Engine = innodb;

-- show table and relationships
DESCRIBE student_data.PUBLISHER;

-- show table contents
SELECT
    *
FROM
    student_data.PUBLISHER;

CREATE TABLE
    student_data.AUTHOR (
        AuthorID VARCHAR(4) PRIMARY KEY,
        PubID INT,
        Lname VARCHAR(10),
        Fname VARCHAR(10),
        FOREIGN KEY (PubID) REFERENCES student_data.PUBLISHER (PubID)
    ) Engine = innodb;

-- show table and relationships
DESCRIBE student_data.AUTHOR;

-- show table contents
SELECT
    *
FROM
    student_data.AUTHOR;

CREATE TABLE
    student_data.BOOKS (
        BookID int primary key,
        Title varchar(50),
        AuthorID varchar(4),
        PubID int,
        Customer_no int,
        foreign key (AuthorID) references student_data.author (AuthorID),
        foreign key (PubID) references student_data.publisher (PubID),
        foreign key (Customer_no) references student_data.customers (Customer_no)
    ) Engine = InnoDB;

-- show table and relationships
DESCRIBE student_data.BOOKS;

-- show table contents
SELECT
    *
FROM
    student_data.BOOKS;

-- find duplicate books records
select
	Title,
	AuthorID,
	COUNT(*) as duplicate_record
from
	BOOKS
group by
	Title,
	AuthorID
having
	COUNT(*) > 1;

-- delete duplicate books records (child table)
DELETE duplicate_record
FROM
    BOOKS duplicate_record
    JOIN BOOKS keep_record ON duplicate_record.Title = keep_record.Title
    AND duplicate_record.AuthorID = keep_record.AuthorID
    AND duplicate_record.BookID > keep_record.BookID;

-- find duplicate author records
SELECT
    Lname,
    Fname,
    COUNT(*) AS duplicate_record
FROM
    AUTHOR
GROUP BY
    Lname,
    Fname
HAVING
    COUNT(*) > 1;

-- delete duplicate author records 
DELETE duplicate_record
FROM
    AUTHOR duplicate_record
    JOIN AUTHOR keep_record ON duplicate_record.Lname = keep_record.Lname
    AND duplicate_record.Fname = keep_record.Fname
    AND duplicate_record.AuthorID > keep_record.AuthorID;

-- find duplicate publisher records
SELECT
    Name,
    COUNT(*) AS duplicate_record
FROM
    PUBLISHER
GROUP BY
    Name
HAVING
    COUNT(*) > 1;

-- delete duplicate publisher records 
DELETE duplicate_record
FROM
    PUBLISHER duplicate_record
    JOIN PUBLISHER keep_record ON duplicate_record.Name = keep_record.Name
    AND duplicate_record.PubID > keep_record.PubID;

-- find duplicate customer records
SELECT
    LastName,
    FirstName,
    Address,
    COUNT(*) AS duplicate_record
FROM
    CUSTOMERS
GROUP BY
    LastName,
    FirstName,
    Address
HAVING
    COUNT(*) > 1;

-- delete duplicate customer records (parent table)
DELETE duplicate_record
FROM
    CUSTOMERS duplicate_record
    JOIN CUSTOMERS keep_record ON duplicate_record.LastName = keep_record.LastName
    AND duplicate_record.FirstName = keep_record.FirstName
    AND duplicate_record.Address = keep_record.Address
    AND duplicate_record.Customer_no > keep_record.Customer_no;