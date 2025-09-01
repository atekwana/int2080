-- kasey atekwana
-- int2080
-- 31/08/25
-- Florida data base displaying 10 counties and 10 notable attractions
-- select database
USE florida;

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS miami_dade_county;

-- create table in florida db
CREATE TABLE
    miami_dade_county (
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

-- inserting researched data about Miami-Dade County
INSERT INTO
    miami_dade_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
    -- the 10 attractions
VALUES
    (
        'South Beach',
        'Beach',
        'Miami Beach',
        'Miami-Dade County',
        '1915-01-01'
    ),
    (
        'Art Deco Historic District',
        'Historic District',
        'Miami Beach',
        'Miami-Dade County',
        '1979-05-14'
    ),
    (
        'Vizcaya Museum and Gardens',
        'Museum',
        'Miami',
        'Miami-Dade County',
        '1916-12-25'
    ),
    (
        'Everglades National Park',
        'National Park',
        'Homestead',
        'Miami-Dade County',
        '1947-05-30'
    ),
    (
        'Wynwood Walls',
        'Art District',
        'Miami',
        'Miami-Dade County',
        '2009-01-01'
    ),
    (
        'Bayside Marketplace',
        'Shopping Center',
        'Miami',
        'Miami-Dade County',
        '1987-01-01'
    ),
    (
        'Zoo Miami',
        'Zoo',
        'Miami',
        'Miami-Dade County',
        '1948-01-01'
    ),
    (
        'Little Havana',
        'Cultural District',
        'Miami',
        'Miami-Dade County',
        '1960-01-01'
    ),
    (
        'Jungle Island',
        'Theme Park',
        'Miami',
        'Miami-Dade County',
        '1936-01-01'
    ),
    (
        'Coral Castle',
        'Historic Site',
        'Homestead',
        'Miami-Dade County',
        '1923-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS palm_beach_county;

-- create table in florida db
-- CREATE TABLE
CREATE TABLE
    palm_beach_county (
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

-- inserting researched data about Palm Beach County
INSERT INTO
    palm_beach_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Lion Country Safari',
        'Safari Park',
        'Loxahatchee',
        'Palm Beach County',
        '1967-01-01'
    ),
    (
        'Worth Avenue',
        'Shopping District',
        'Palm Beach',
        'Palm Beach County',
        '1918-01-01'
    ),
    (
        'The Breakers',
        'Historic Hotel',
        'Palm Beach',
        'Palm Beach County',
        '1896-01-01'
    ),
    (
        'Norton Museum of Art',
        'Museum',
        'West Palm Beach',
        'Palm Beach County',
        '1941-01-01'
    ),
    (
        'Flagler Museum',
        'Museum',
        'Palm Beach',
        'Palm Beach County',
        '1902-01-01'
    ),
    (
        'Rapids Water Park',
        'Water Park',
        'Riviera Beach',
        'Palm Beach County',
        '1979-01-01'
    ),
    (
        'Palm Beach Zoo',
        'Zoo',
        'West Palm Beach',
        'Palm Beach County',
        '1969-01-01'
    ),
    (
        'CityPlace',
        'Shopping Center',
        'West Palm Beach',
        'Palm Beach County',
        '2000-01-01'
    ),
    (
        'Morikami Museum and Japanese Gardens',
        'Museum',
        'Delray Beach',
        'Palm Beach County',
        '1977-01-01'
    ),
    (
        'Boca Raton Resort',
        'Resort',
        'Boca Raton',
        'Palm Beach County',
        '1926-02-06'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS brevard_county;

-- create table in florida db
-- CREATE TABLE
CREATE TABLE
    brevard_county (
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

-- inserting researched data about Brevard County
INSERT INTO
    brevard_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Kennedy Space Center',
        'Space Center',
        'Cape Canaveral',
        'Brevard County',
        '1962-07-01'
    ),
    (
        'Cocoa Beach',
        'Beach',
        'Cocoa Beach',
        'Brevard County',
        '1925-01-01'
    ),
    (
        'Merritt Island National Wildlife Refuge',
        'Wildlife Refuge',
        'Titusville',
        'Brevard County',
        '1963-01-01'
    ),
    (
        'Ron Jon Surf Shop',
        'Retail Store',
        'Cocoa Beach',
        'Brevard County',
        '1963-01-01'
    ),
    (
        'Canaveral National Seashore',
        'National Seashore',
        'New Smyrna Beach',
        'Brevard County',
        '1975-01-25'
    ),
    (
        'Brevard Zoo',
        'Zoo',
        'Melbourne',
        'Brevard County',
        '1994-01-01'
    ),
    (
        'Sebastian Inlet State Park',
        'State Park',
        'Sebastian',
        'Brevard County',
        '1971-01-01'
    ),
    (
        'Valiant Air Command Warbird Museum',
        'Museum',
        'Titusville',
        'Brevard County',
        '1977-01-01'
    ),
    (
        'Melbourne Beach Pier',
        'Pier',
        'Melbourne Beach',
        'Brevard County',
        '1970-01-01'
    ),
    (
        'Enchanted Forest Sanctuary',
        'Nature Preserve',
        'Titusville',
        'Brevard County',
        '1980-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS osceola_county;

-- create table in florida db
CREATE TABLE
    osceola_county (
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

-- inserting researched data about Osceola County
INSERT INTO
    osceola_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Old Town Kissimmee',
        'Entertainment District',
        'Kissimmee',
        'Osceola County',
        '1986-01-01'
    ),
    (
        'Gatorland',
        'Theme Park',
        'Orlando',
        'Osceola County',
        '1949-01-01'
    ),
    (
        'Bok Tower Gardens',
        'Botanical Garden',
        'Lake Wales',
        'Osceola County',
        '1929-02-01'
    ),
    (
        'Fun Spot America',
        'Amusement Park',
        'Kissimmee',
        'Osceola County',
        '2007-01-01'
    ),
    (
        'Celebration',
        'Planned Community',
        'Celebration',
        'Osceola County',
        '1994-01-01'
    ),
    (
        'Wild Florida Airboats',
        'Airboat Tours',
        'Kenansville',
        'Osceola County',
        '2010-01-01'
    ),
    (
        'Green Meadows Petting Farm',
        'Petting Zoo',
        'Kissimmee',
        'Osceola County',
        '1980-01-01'
    ),
    (
        'Osceola County Stadium',
        'Stadium',
        'Kissimmee',
        'Osceola County',
        '1985-01-01'
    ),
    (
        'Lake Tohopekaliga',
        'Lake',
        'Kissimmee',
        'Osceola County',
        '1800-01-01'
    ),
    (
        'Shingle Creek Regional Park',
        'Park',
        'Kissimmee',
        'Osceola County',
        '2005-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS pinellas_county;

-- create table in florida db
CREATE TABLE
    pinellas_county (
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

-- inserting researched data about Pinellas County
INSERT INTO
    pinellas_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Clearwater Beach',
        'Beach',
        'Clearwater',
        'Pinellas County',
        '1915-01-01'
    ),
    (
        'Clearwater Marine Aquarium',
        'Aquarium',
        'Clearwater',
        'Pinellas County',
        '1972-01-01'
    ),
    (
        'Busch Gardens Tampa Bay',
        'Theme Park',
        'Tampa',
        'Pinellas County',
        '1959-03-31'
    ),
    (
        'The Dali Museum',
        'Museum',
        'St. Petersburg',
        'Pinellas County',
        '1982-01-01'
    ),
    (
        'Tropicana Field',
        'Stadium',
        'St. Petersburg',
        'Pinellas County',
        '1990-03-03'
    ),
    (
        'Sunken Gardens',
        'Botanical Garden',
        'St. Petersburg',
        'Pinellas County',
        '1903-01-01'
    ),
    (
        'Indian Rocks Beach',
        'Beach',
        'Indian Rocks Beach',
        'Pinellas County',
        '1950-01-01'
    ),
    (
        'Fort De Soto Park',
        'State Park',
        'St. Petersburg',
        'Pinellas County',
        '1963-01-01'
    ),
    (
        'Sand Key Park',
        'Beach Park',
        'Clearwater',
        'Pinellas County',
        '1970-01-01'
    ),
    (
        'Pier 60 Park',
        'Park',
        'Clearwater',
        'Pinellas County',
        '1980-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS orange_county;

-- create table in florida db
CREATE TABLE
    orange_county (
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

-- inserting researched data about Orange County
INSERT INTO
    orange_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Walt Disney World Resort',
        'Theme Park Resort',
        'Orlando',
        'Orange County',
        '1971-10-01'
    ),
    (
        'Universal Studios Florida',
        'Theme Park',
        'Orlando',
        'Orange County',
        '1990-06-07'
    ),
    (
        'SeaWorld Orlando',
        'Marine Park',
        'Orlando',
        'Orange County',
        '1973-12-15'
    ),
    (
        'ICON Park',
        'Entertainment Complex',
        'Orlando',
        'Orange County',
        '2015-01-01'
    ),
    (
        'Orlando Science Center',
        'Science Museum',
        'Orlando',
        'Orange County',
        '1997-01-01'
    ),
    (
        'Lake Eola Park',
        'Park',
        'Orlando',
        'Orange County',
        '1883-01-01'
    ),
    (
        'Harry P. Leu Gardens',
        'Botanical Garden',
        'Orlando',
        'Orange County',
        '1961-01-01'
    ),
    (
        'Orlando Museum of Art',
        'Museum',
        'Orlando',
        'Orange County',
        '1924-01-01'
    ),
    (
        'Amway Center',
        'Arena',
        'Orlando',
        'Orange County',
        '2010-10-01'
    ),
    (
        'Winter Park Scenic Boat Tour',
        'Tour Attraction',
        'Winter Park',
        'Orange County',
        '1938-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS hillsborough_county;

-- create table in florida db
CREATE TABLE
    hillsborough_county (
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

-- inserting researched data about Hillsborough County
INSERT INTO
    hillsborough_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Tampa Riverwalk',
        'Waterfront District',
        'Tampa',
        'Hillsborough County',
        '2001-01-01'
    ),
    (
        'Ybor City',
        'Historic District',
        'Tampa',
        'Hillsborough County',
        '1885-01-01'
    ),
    (
        'Raymond James Stadium',
        'Stadium',
        'Tampa',
        'Hillsborough County',
        '1998-09-20'
    ),
    (
        'Tampa Museum of Art',
        'Museum',
        'Tampa',
        'Hillsborough County',
        '1979-01-01'
    ),
    (
        'Lowry Park Zoo',
        'Zoo',
        'Tampa',
        'Hillsborough County',
        '1957-01-01'
    ),
    (
        'Florida Aquarium',
        'Aquarium',
        'Tampa',
        'Hillsborough County',
        '1995-03-23'
    ),
    (
        'Bayshore Boulevard',
        'Scenic Drive',
        'Tampa',
        'Hillsborough County',
        '1922-01-01'
    ),
    (
        'Adventure Island',
        'Water Park',
        'Tampa',
        'Hillsborough County',
        '1980-01-01'
    ),
    (
        'University of South Florida',
        'University',
        'Tampa',
        'Hillsborough County',
        '1956-01-01'
    ),
    (
        'Tampa Theatre',
        'Historic Theater',
        'Tampa',
        'Hillsborough County',
        '1926-10-15'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS lee_county;

-- create table in florida db
CREATE TABLE
    lee_county (
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

-- inserting researched data about Lee County
INSERT INTO
    lee_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Sanibel Island',
        'Island',
        'Sanibel',
        'Lee County',
        '1974-11-05'
    ),
    (
        'Edison and Ford Winter Estates',
        'Historic Site',
        'Fort Myers',
        'Lee County',
        '1885-01-01'
    ),
    (
        'Fort Myers Beach',
        'Beach',
        'Fort Myers Beach',
        'Lee County',
        '1952-01-01'
    ),
    (
        'Imaginarium Science Center',
        'Science Museum',
        'Fort Myers',
        'Lee County',
        '1995-01-01'
    ),
    (
        'Six Mile Cypress Slough Preserve',
        'Nature Preserve',
        'Fort Myers',
        'Lee County',
        '1988-01-01'
    ),
    (
        'Captiva Island',
        'Island',
        'Captiva',
        'Lee County',
        '1950-01-01'
    ),
    (
        'Barbara B. Mann Performing Arts Hall',
        'Theater',
        'Fort Myers',
        'Lee County',
        '2000-01-01'
    ),
    (
        'J.N. Ding Darling National Wildlife Refuge',
        'Wildlife Refuge',
        'Sanibel',
        'Lee County',
        '1945-01-01'
    ),
    (
        'Fort Myers River District',
        'Entertainment District',
        'Fort Myers',
        'Lee County',
        '2000-01-01'
    ),
    (
        'Lovers Key State Park',
        'State Park',
        'Fort Myers Beach',
        'Lee County',
        '1996-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS duval_county;

-- create table in florida db
CREATE TABLE
    duval_county (
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

-- inserting researched data about Duval County
INSERT INTO
    duval_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Jacksonville Beach',
        'Beach',
        'Jacksonville Beach',
        'Duval County',
        '1907-05-22'
    ),
    (
        'Jacksonville Zoo and Gardens',
        'Zoo',
        'Jacksonville',
        'Duval County',
        '1914-01-01'
    ),
    (
        'Cummer Museum of Art and Gardens',
        'Museum',
        'Jacksonville',
        'Duval County',
        '1961-01-01'
    ),
    (
        'TIAA Bank Field',
        'Stadium',
        'Jacksonville',
        'Duval County',
        '1995-08-18'
    ),
    (
        'Adventure Landing',
        'Amusement Park',
        'Jacksonville Beach',
        'Duval County',
        '1995-01-01'
    ),
    (
        'Kathryn Abbey Hanna Park',
        'Park',
        'Mayport',
        'Duval County',
        '1977-01-01'
    ),
    (
        'Big Talbot Island State Park',
        'State Park',
        'Fernandina Beach',
        'Duval County',
        '1971-01-01'
    ),
    (
        'Riverside Arts Market',
        'Market',
        'Jacksonville',
        'Duval County',
        '2005-01-01'
    ),
    (
        'Museum of Science and History',
        'Museum',
        'Jacksonville',
        'Duval County',
        '1969-01-01'
    ),
    (
        'Kingsley Plantation',
        'Historic Site',
        'Jacksonville',
        'Duval County',
        '1798-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS broward_county;

-- create table in florida db
CREATE TABLE
    broward_county (
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

-- inserting researched data about Broward County
INSERT INTO
    broward_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Fort Lauderdale Beach',
        'Beach',
        'Fort Lauderdale',
        'Broward County',
        '1926-01-01'
    ),
    (
        'Las Olas Boulevard',
        'Shopping District',
        'Fort Lauderdale',
        'Broward County',
        '1917-01-01'
    ),
    (
        'Flamingo Gardens',
        'Botanical Garden',
        'Davie',
        'Broward County',
        '1927-01-01'
    ),
    (
        'Bonnet House Museum and Gardens',
        'Museum',
        'Fort Lauderdale',
        'Broward County',
        '1920-01-01'
    ),
    (
        'Sawgrass Mills',
        'Shopping Mall',
        'Sunrise',
        'Broward County',
        '1990-10-03'
    ),
    (
        'Hugh Taylor Birch State Park',
        'State Park',
        'Fort Lauderdale',
        'Broward County',
        '1949-01-01'
    ),
    (
        'Butterfly World',
        'Attraction',
        'Coconut Creek',
        'Broward County',
        '1988-01-01'
    ),
    (
        'Fort Lauderdale Museum of Art',
        'Museum',
        'Fort Lauderdale',
        'Broward County',
        '1958-01-01'
    ),
    (
        'Riverwalk Fort Lauderdale',
        'Waterfront Park',
        'Fort Lauderdale',
        'Broward County',
        '1998-01-01'
    ),
    (
        'Seminole Hard Rock Hotel and Casino',
        'Casino',
        'Hollywood',
        'Broward County',
        '2004-05-11'
    );

-- display table contents for Miami-Dade County
SELECT
    *
FROM
    miami_dade_county
ORDER BY
    place_id;

-- display table contents for Palm Beach County
SELECT
    *
FROM
    palm_beach_county
ORDER BY
    place_id;

-- display table contents for Brevard County
SELECT
    *
FROM
    brevard_county
ORDER BY
    place_id;

-- display table contents for Osceola County
SELECT
    *
FROM
    osceola_county
ORDER BY
    place_id;

-- display table contents for Pinellas County
SELECT
    *
FROM
    pinellas_county
ORDER BY
    place_id;

-- display table contents for Orange County
SELECT
    *
FROM
    orange_county
ORDER BY
    place_id;

-- display table contents for Hillsborough County
SELECT
    *
FROM
    hillsborough_county
ORDER BY
    place_id;

-- display table contents for Lee County
SELECT
    *
FROM
    lee_county
ORDER BY
    place_id;

-- display table contents for Duval County
SELECT
    *
FROM
    duval_county
ORDER BY
    place_id;

-- display table contents for Broward County
SELECT
    *
FROM
    broward_county
ORDER BY
    place_id;