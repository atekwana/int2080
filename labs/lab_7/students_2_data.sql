-- kasey atekwana
-- int2080
-- 05/10/25
-- students 2 databases on mysql 9
-- create database
CREATE DATABASE students_2;

-- show database(s)
SHOW DATABASES;

-- select database
USE students_2;

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS students_2.coconino_county;

-- create table in arizona db
CREATE TABLE
    students_2.coconino_county (
        place_id INT AUTO_INCREMENT PRIMARY KEY, -- place_id: unique auto-increment ID (primary key)
        place_name VARCHAR(100) NOT NULL, -- place_name: required name of the place
        place_type VARCHAR(50) NOT NULL, -- place_type: required category/type of place
        city VARCHAR(75), -- city: city info
        county VARCHAR(75), -- county: county info
        established_date DATE, -- established_date: founding date
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- created_at: timestamp of record creation
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- updated_at: auto-updated timestamp on changes
        -- defining indexes
        INDEX idx_place_type (place_type),
        INDEX idx_city (city),
        INDEX idx_county (county),
        INDEX idx_established_date (established_date)
    );

-- inserting researched data about Coconino County
INSERT INTO
    students_2.coconino_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
    -- the 10 attractions
VALUES
    (
        'Grand Canyon National Park (South Rim)',
        'National Park',
        'Grand Canyon Village',
        'Coconino County',
        '1919-02-26'
    ),
    (
        'Lowell Observatory',
        'Observatory',
        'Flagstaff',
        'Coconino County',
        '1894-05-28'
    ),
    (
        'Walnut Canyon National Monument',
        'National Monument',
        'Flagstaff',
        'Coconino County',
        '1915-11-30'
    ),
    (
        'Museum of Northern Arizona',
        'Museum',
        'Flagstaff',
        'Coconino County',
        '1928-01-01'
    ),
    (
        'Arizona Snowbowl',
        'Ski Resort',
        'Flagstaff',
        'Coconino County',
        '1938-12-17'
    ),
    (
        'Wupatki National Monument',
        'National Monument',
        'Flagstaff',
        'Coconino County',
        '1924-12-09'
    ),
    (
        'Meteor Crater',
        'Impact Site',
        'Winslow',
        'Coconino County',
        '1903-02-01'
    ),
    (
        'Flagstaff Arboretum',
        'Botanical Garden',
        'Flagstaff',
        'Coconino County',
        '1981-06-01'
    ),
    (
        'Riordan Mansion State Historic Park',
        'Historic Site',
        'Flagstaff',
        'Coconino County',
        '1983-08-01'
    ),
    (
        'Sunset Crater Volcano National Monument',
        'National Monument',
        'Flagstaff',
        'Coconino County',
        '1930-05-26'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS students_2.mohave_county;

-- create table in arizona db
-- CREATE TABLE
CREATE TABLE
    students_2.mohave_county (
        place_id INT AUTO_INCREMENT PRIMARY KEY, -- place_id: unique auto-increment ID (primary key)
        place_name VARCHAR(100) NOT NULL, -- place_name: required name of the place
        place_type VARCHAR(50) NOT NULL, -- place_type: required category/type of place
        city VARCHAR(75), -- city: optional city info
        county VARCHAR(75), -- county: county info
        established_date DATE, -- established_date: founding date
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- created_at: timestamp of record creation
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- updated_at: auto-updated timestamp on changes
        -- defining indexes
        INDEX idx_place_type (place_type),
        INDEX idx_city (city),
        INDEX idx_county (county),
        INDEX idx_established_date (established_date)
    );

-- inserting researched data about Mohave County
INSERT INTO
    students_2.mohave_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Lake Havasu City',
        'City Area',
        'Lake Havasu City',
        'Mohave County',
        '1963-01-01'
    ),
    (
        'London Bridge',
        'Historic Landmark',
        'Lake Havasu City',
        'Mohave County',
        '1971-01-01'
    ),
    (
        'Lake Havasu State Park',
        'State Park',
        'Lake Havasu City',
        'Mohave County',
        '1978-01-01'
    ),
    (
        'Havasu National Wildlife Refuge',
        'Wildlife Refuge',
        'Lake Havasu City',
        'Mohave County',
        '1993-01-01'
    ),
    (
        'Oatman Ghost Town',
        'Historic Site',
        'Oatman',
        'Mohave County',
        '1900-01-01'
    ),
    (
        'Hoover Dam',
        'Historic Landmark',
        'Boulder City',
        'Mohave County',
        '1935-03-01'
    ),
    (
        'Route 66 Museum',
        'Museum',
        'Kingman',
        'Mohave County',
        '1960-01-01'
    ),
    (
        'Davis Dam',
        'Dam',
        'Bullhead City',
        'Mohave County',
        '1953-01-01'
    ),
    (
        'Christmas Tree Pass',
        'Scenic Drive',
        'Near Lake Havasu City',
        'Mohave County',
        '1990-01-01'
    ),
    (
        'Monolith Garden Trail',
        'Trail',
        'Near Kingman',
        'Mohave County',
        '2000-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS students_2.maricopa_county;

-- create table in arizona db
-- CREATE TABLE
CREATE TABLE
    students_2.maricopa_county (
        place_id INT AUTO_INCREMENT PRIMARY KEY, -- place_id: unique auto-increment ID (primary key)
        place_name VARCHAR(100) NOT NULL, -- place_name: required name of the place
        place_type VARCHAR(50) NOT NULL, -- place_type: required category/type of place
        city VARCHAR(75), -- city: optional city info
        county VARCHAR(75), -- county: county info
        established_date DATE, -- established_date: founding date
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- created_at: timestamp of record creation
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- updated_at: auto-updated timestamp on changes
        -- defining indexes
        INDEX idx_place_type (place_type),
        INDEX idx_city (city),
        INDEX idx_county (county),
        INDEX idx_established_date (established_date)
    );

-- inserting researched data about Maricopa County
INSERT INTO
    students_2.maricopa_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Desert Botanical Garden',
        'Botanical Garden',
        'Phoenix',
        'Maricopa County',
        '1939-10-01'
    ),
    (
        'Camelback Mountain',
        'Mountain',
        'Phoenix',
        'Maricopa County',
        '1900-01-01'
    ),
    (
        'Piestewa Peak',
        'Mountain',
        'Phoenix',
        'Maricopa County',
        '1990-01-01'
    ),
    (
        'Scottsdale Museum of Contemporary Art',
        'Museum',
        'Scottsdale',
        'Maricopa County',
        '1999-01-01'
    ),
    (
        'Taliesin West',
        'Historic Site',
        'Scottsdale',
        'Maricopa County',
        '1937-01-01'
    ),
    (
        'Heard Museum',
        'Museum',
        'Phoenix',
        'Maricopa County',
        '1929-01-01'
    ),
    (
        'Phoenix Zoo',
        'Zoo',
        'Phoenix',
        'Maricopa County',
        '1962-01-01'
    ),
    (
        'Papago Park',
        'Park',
        'Phoenix',
        'Maricopa County',
        '1900-01-01'
    ),
    (
        'Scottsdale Waterfront',
        'Shopping District',
        'Scottsdale',
        'Maricopa County',
        '2000-01-01'
    ),
    (
        'Chase Field',
        'Stadium',
        'Phoenix',
        'Maricopa County',
        '1998-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS students_2.apache_county;

-- create table in arizona db
CREATE TABLE
    students_2.apache_county (
        place_id INT AUTO_INCREMENT PRIMARY KEY, -- place_id: unique auto-increment ID (primary key)
        place_name VARCHAR(100) NOT NULL, -- place_name: required name of the place
        place_type VARCHAR(50) NOT NULL, -- place_type: required category/type of place
        city VARCHAR(75), -- city: city info
        county VARCHAR(75), -- county: county info
        established_date DATE, -- established_date: founding date
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- created_at: timestamp of record creation
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- updated_at: auto-updated timestamp on changes
        -- defining indexes
        INDEX idx_place_type (place_type),
        INDEX idx_city (city),
        INDEX idx_county (county),
        INDEX idx_established_date (established_date)
    );

-- inserting researched data about Apache County
INSERT INTO
    students_2.apache_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Canyon de Chelly National Monument',
        'National Monument',
        'Chinle',
        'Apache County',
        '1931-04-01'
    ),
    (
        'Petrified Forest National Park',
        'National Park',
        'Holbrook',
        'Apache County',
        '1962-12-09'
    ),
    (
        'Sunrise Park Resort',
        'Ski Resort',
        'Greer',
        'Apache County',
        '1970-01-01'
    ),
    (
        'Window Rock Tribal Park & Veterans Memorial',
        'Memorial',
        'Window Rock',
        'Apache County',
        '1990-01-01'
    ),
    (
        'Four Corners Monument',
        'Historic Landmark',
        'Teec Nos Pos',
        'Apache County',
        '1912-01-01'
    ),
    (
        'Painted Desert',
        'Desert Landscape',
        'Holbrook',
        'Apache County',
        '1900-01-01'
    ),
    (
        'Navajo Nation Zoological and Botanical Park',
        'Zoo & Botanical Garden',
        'Window Rock',
        'Apache County',
        '1960-01-01'
    ),
    (
        'Blue Mesa Trail',
        'Hiking Trail',
        'Holbrook',
        'Apache County',
        '1990-01-01'
    ),
    (
        'Kachina Point',
        'Scenic Overlook',
        'Canyon de Chelly',
        'Apache County',
        '1930-01-01'
    ),
    (
        'Crystal Forest',
        'Petrified Forest',
        'Holbrook',
        'Apache County',
        '1900-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS students_2.santa_cruz_county;

-- create table in arizona db
CREATE TABLE
    students_2.santa_cruz_county (
        place_id INT AUTO_INCREMENT PRIMARY KEY, -- place_id: unique auto-increment ID (primary key)
        place_name VARCHAR(100) NOT NULL, -- place_name: required name of the place
        place_type VARCHAR(50) NOT NULL, -- place_type: required category/type of place
        city VARCHAR(75), -- city: city info
        county VARCHAR(75), -- county: county info
        established_date DATE, -- established_date: founding date
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- created_at: timestamp of record creation
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- updated_at: auto-updated timestamp on changes
        -- defining indexes
        INDEX idx_place_type (place_type),
        INDEX idx_city (city),
        INDEX idx_county (county),
        INDEX idx_established_date (established_date)
    );

-- inserting researched data about Apache County
INSERT INTO
    students_2.santa_cruz_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Patagonia Lake State Park',
        'State Park',
        'Patagonia',
        'Santa Cruz County',
        '1975-01-01'
    ),
    (
        'Tumacácori National Historical Park',
        'National Historical Park',
        'Tumacácori',
        'Santa Cruz County',
        '1990-01-01'
    ),
    (
        'Paton Center for Hummingbirds',
        'Wildlife Sanctuary',
        'Patagonia',
        'Santa Cruz County',
        '1990-01-01'
    ),
    (
        'Tubac Presidio State Historic Park',
        'State Historic Park',
        'Tubac',
        'Santa Cruz County',
        '1752-01-01'
    ),
    (
        'Madera Canyon',
        'Canyon',
        'Sahuarita',
        'Santa Cruz County',
        '1960-01-01'
    ),
    (
        'Wisdom’s Café',
        'Restaurant',
        'Tumacácori',
        'Santa Cruz County',
        '1944-01-01'
    ),
    (
        'Sonoita Vineyards',
        'Winery',
        'Elgin',
        'Santa Cruz County',
        '1980-01-01'
    ),
    (
        'Santa Cruz River',
        'River',
        NULL,
        'Santa Cruz County',
        '1800-01-01'
    ),
    (
        'Nogales-SCC Chamber of Commerce',
        'Chamber of Commerce',
        'Nogales',
        'Santa Cruz County',
        '1900-01-01'
    ),
    (
        'Elgin Winery',
        'Winery',
        'Elgin',
        'Santa Cruz County',
        '1990-01-01'
    );

-- display table contents for Coconino County
SELECT
    *
FROM
    students_2.coconino_county
ORDER BY
    place_id;

-- display table contents for Mohave County
SELECT
    *
FROM
    students_2.mohave_county
ORDER BY
    place_id;

-- display table contents for Maricopa County
SELECT
    *
FROM
    students_2.maricopa_county
ORDER BY
    place_id;

-- display table contents for Apache County
SELECT
    *
FROM
    students_2.apache_county
ORDER BY
    place_id;

-- display table contents for Santa Cruz County
SELECT
    *
FROM
    students_2.santa_cruz_county
ORDER BY
    place_id;

-- display table contents for Los Angeles County
SELECT
    *
FROM
    students_2.los_angeles_county
ORDER BY
    place_id;

-- display table contents for Orange County
SELECT
    *
FROM
    students_2.orange_county
ORDER BY
    place_id;

-- display table contents for San Francisco County
SELECT
    *
FROM
    students_2.san_francisco_county
ORDER BY
    place_id;

-- display table contents for Napa County
SELECT
    *
FROM
    students_2.napa_county
ORDER BY
    place_id;

-- display table contents for Santa Clara County
SELECT
    *
FROM
    students_2.santa_clara_county
ORDER BY
    place_id;

-- show table structure for Coconino County
DESCRIBE students_2.coconino_county;

-- show table structure for Mohave County
DESCRIBE students_2.mohave_county;

-- show table structure for Maricopa County
DESCRIBE students_2.maricopa_county;

-- show table structure for Apache County
DESCRIBE students_2.apache_county;

-- show table structure for Santa Cruz County
DESCRIBE students_2.santa_cruz_county;

-- show table structure for Los Angeles County
DESCRIBE students_2.los_angeles_county;

-- show table structure for Orange County
DESCRIBE students_2.orange_county;

-- show table structure for San Francisco County
DESCRIBE students_2.san_francisco_county;

-- show table structure for Napa County
DESCRIBE students_2.napa_county;

-- show table structure for Santa Clara County
DESCRIBE students_2.santa_clara_county;

-- showing updated tables from students database backup
SHOW TABLES;