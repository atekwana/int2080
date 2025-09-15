-- kasey atekwana
-- 14/09/2025
-- lab 4
-- showing ER schema for student database by adding a table named books
-- inserting into student_data.customers
insert into
    student_data.CUSTOMERS
values
    (
        1001,
        'MORALES',
        'BONITA',
        'P.O. BOX 651',
        'EASTPOINT',
        'FL',
        '32328',
        null,
        'SE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1002,
        'THOMPSON',
        'RYAN',
        'P.O. BOX 9835',
        'SANTA MONICA',
        'CA',
        '90404',
        NULL,
        'W'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1003,
        'SMITH',
        'LEILA',
        'P.O. BOX 66',
        'TALLAHASSEE',
        'FL',
        '32306',
        NULL,
        'SE'
    );

-- DUPLICATE CUSTOMER (same name and address as 1003)
INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1025,
        'SMITH',
        'LEILA',
        'P.O. BOX 66',
        'TALLAHASSEE',
        'FL',
        '32306',
        NULL,
        'SE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1004,
        'PIERSON',
        'THOMAS',
        '69821 SOUTH AVENUE',
        'BOISE',
        'ID',
        '83707',
        NULL,
        'NW'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1005,
        'GIRARD',
        'CINDY',
        'P.O. BOX 851',
        'SEATTLE',
        'WA',
        '98115',
        NULL,
        'NW'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1006,
        'CRUZ',
        'MESHIA',
        '82 DIRT ROAD',
        'ALBANY',
        'NY',
        '12211',
        NULL,
        'NE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1007,
        'GIANA',
        'TAMMY',
        '9153 MAIN STREET',
        'AUSTIN',
        'TX',
        '78710',
        1003,
        'SW'
    );

-- DUPLICATE CUSTOMER (same name and address as 1007)
INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1026,
        'GIANA',
        'TAMMY',
        '9153 MAIN STREET',
        'AUSTIN',
        'TX',
        '78710',
        1003,
        'SW'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1008,
        'JONES',
        'KENNETH',
        'P.O. BOX 137',
        'CHEYENNE',
        'WY',
        '82003',
        NULL,
        'N'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1009,
        'PEREZ',
        'JORGE',
        'P.O. BOX 8564',
        'BURBANK',
        'CA',
        '91510',
        1003,
        'W'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1010,
        'LUCAS',
        'JAKE',
        '114 EAST SAVANNAH',
        'ATLANTA',
        'GA',
        '30314',
        NULL,
        'SE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1011,
        'MCGOVERN',
        'REESE',
        'P.O. BOX 18',
        'CHICAGO',
        'IL',
        '60606',
        NULL,
        'N'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1012,
        'MCKENZIE',
        'WILLIAM',
        'P.O. BOX 971',
        'BOSTON',
        'MA',
        '02110',
        NULL,
        'NE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1013,
        'NGUYEN',
        'NICHOLAS',
        '357 WHITE EAGLE AVE.',
        'CLERMONT',
        'FL',
        '34711',
        1006,
        'SE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1014,
        'LEE',
        'JASMINE',
        'P.O. BOX 2947',
        'CODY',
        'WY',
        '82414',
        NULL,
        'N'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1015,
        'SCHELL',
        'STEVE',
        'P.O. BOX 677',
        'MIAMI',
        'FL',
        '33111',
        NULL,
        'SE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1016,
        'DAUM',
        'MICHELL',
        '9851231 LONG ROAD',
        'BURBANK',
        'CA',
        '91508',
        1010,
        'W'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1017,
        'NELSON',
        'BECCA',
        'P.O. BOX 563',
        'KALMAZOO',
        'MI',
        '49006',
        NULL,
        'N'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1018,
        'MONTIASA',
        'GREG',
        '1008 GRAND AVENUE',
        'MACON',
        'GA',
        '31206',
        NULL,
        'SE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1019,
        'SMITH',
        'JENNIFER',
        'P.O. BOX 1151',
        'MORRISTOWN',
        'NJ',
        '07962',
        1003,
        'NE'
    );

INSERT INTO
    student_data.CUSTOMERS
VALUES
    (
        1020,
        'FALAH',
        'KENNETH',
        'P.O. BOX 335',
        'TRENTON',
        'NJ',
        '08607',
        NULL,
        'NE'
    );

-- inserting into student_data.publisher
INSERT INTO
    student_data.PUBLISHER
VALUES
    (
        1,
        'PRINTING IS US',
        'TOMMIE SEYMOUR',
        '000-714-8321'
    );

INSERT INTO
    student_data.PUBLISHER
VALUES
    (
        2,
        'PUBLISH OUR WAY',
        'JANE TOMLIN',
        '010-410-0010'
    );

INSERT INTO
    student_data.PUBLISHER
VALUES
    (
        3,
        'AMERICAN PUBLISHING',
        'DAVID DAVIDSON',
        '800-555-1211'
    );

-- DUPLICATE PUBLISHER (same name as publisher 3)
INSERT INTO
    student_data.PUBLISHER
VALUES
    (
        6,
        'AMERICAN PUBLISHING',
        'SARAH JOHNSON',
        '800-555-9999'
    );

INSERT INTO
    student_data.PUBLISHER
values
    (
        4,
        'READING MATERIALS INC.',
        'RENEE SMITH',
        '800-555-9743'
    );

INSERT INTO
    student_data.PUBLISHER
values
    (
        5,
        'REED-N-RITE',
        'SEBASTIAN JONES',
        '800-555-8284'
    );

INSERT INTO
    student_data.PUBLISHER
values
    (7, 'REED-N-RITE', 'MICHAEL BROWN', '800-555-7777');

-- inserting into student_data.author
INSERT INTO
    student_data.AUTHOR
VALUES
    ('S100', 1, 'SMITH', 'SAM');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('J100', 2, 'JONES', 'JANICE');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('A100', 3, 'AUSTIN', 'JAMES');

-- DUPLICATE AUTHOR (same first/last name as A100)
INSERT INTO
    student_data.AUTHOR
VALUES
    ('A200', 4, 'AUSTIN', 'JAMES');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('M100', 4, 'MARTINEZ', 'SHEILA');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('K100', 5, 'KZOCHSKY', 'TAMARA');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('P100', 5, 'PORTER', 'LISA');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('A105', 4, 'ADAMS', 'JUAN');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('B100', 3, 'BAKER', 'JACK');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('P105', 2, 'PETERSON', 'TINA');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('W100', 1, 'WHITE', 'WILLIAM');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('W105', 3, 'WHITE', 'LISA');

-- DUPLICATE AUTHOR (same first/last name as W105)
INSERT INTO
    student_data.AUTHOR
VALUES
    ('W200', 2, 'WHITE', 'LISA');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('R100', 5, 'ROBINSON', 'ROBERT');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('F100', 2, 'FIELDS', 'OSCAR');

INSERT INTO
    student_data.AUTHOR
VALUES
    ('W110', 4, 'WILKINSON', 'ANTHONY');

-- inserting into student_data.books
INSERT INTO
    student_data.BOOKS
values
    (1001, 'Database Design', 'S100', 1, 1001);

INSERT INTO
    student_data.BOOKS
values
    (1002, 'Web Development', 'J100', 2, 1002);

INSERT INTO
    student_data.BOOKS
values
    (1003, 'Java Programming', 'A100', 3, 1003);

-- DUPLICATE BOOK (same title and author as 1003)
INSERT INTO
    student_data.BOOKS
values
    (1011, 'Java Programming', 'A100', 3, 1004);

INSERT INTO
    student_data.BOOKS
values
    (1004, 'Data Structures', 'M100', 4, 1004);

INSERT INTO
    student_data.BOOKS
values
    (1005, 'SQL Basics', 'K100', 5, 1005);

INSERT INTO
    student_data.BOOKS
values
    (1006, 'Python Guide', 'P100', 5, 1006);

-- DUPLICATE BOOK (same title and author as 1006)
INSERT INTO
    student_data.BOOKS
values
    (1012, 'Python Guide', 'P100', 5, 1007);

INSERT INTO
    student_data.BOOKS
values
    (1007, 'Machine Learning', 'A105', 4, 1007);

INSERT INTO
    student_data.BOOKS
values
    (1008, 'Cloud Computing', 'B100', 3, 1008);

INSERT INTO
    student_data.BOOKS
values
    (1009, 'DevOps Manual', 'P105', 2, 1009);

INSERT INTO
    student_data.BOOKS
values
    (1010, 'Network Security', 'W100', 1, 1010);