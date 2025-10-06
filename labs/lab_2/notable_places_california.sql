-- kasey atekwana
-- int2080
-- 31/08/25
-- California data base displaying 10 counties and 10 notable attractions
-- select data base
USE california;

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS los_angeles_county;

-- create table in california db
CREATE TABLE
    los_angeles_county (
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

-- inserting researched data about Los Angeles County
INSERT INTO
    los_angeles_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Universal Studios Hollywood',
        'Theme Park',
        'Universal City',
        'Los Angeles County',
        '1964-07-15'
    ),
    (
        'Griffith Observatory',
        'Observatory',
        'Los Angeles',
        'Los Angeles County',
        '1935-05-14'
    ),
    (
        'Hollywood Walk of Fame',
        'Historic Landmark',
        'Hollywood',
        'Los Angeles County',
        '1960-02-08'
    ),
    (
        'Getty Center',
        'Museum',
        'Los Angeles',
        'Los Angeles County',
        '1997-12-16'
    ),
    (
        'Santa Monica Pier',
        'Historic Landmark',
        'Santa Monica',
        'Los Angeles County',
        '1909-09-09'
    ),
    (
        'Los Angeles County Museum of Art',
        'Museum',
        'Los Angeles',
        'Los Angeles County',
        '1965-04-12'
    ),
    (
        'Rodeo Drive',
        'Shopping District',
        'Beverly Hills',
        'Los Angeles County',
        '1961-01-01'
    ),
    (
        'Hollywood Sign',
        'Historic Landmark',
        'Hollywood Hills',
        'Los Angeles County',
        '1923-07-13'
    ),
    (
        'Dodger Stadium',
        'Sports Stadium',
        'Los Angeles',
        'Los Angeles County',
        '1962-04-10'
    ),
    (
        'Natural History Museum of Los Angeles County',
        'Museum',
        'Los Angeles',
        'Los Angeles County',
        '1913-03-01'
    );

-- if table already exists drop
-- if table does not exists create table
-- if table already exists drop
DROP TABLE IF EXISTS orange_county;

-- create table for Orange County
CREATE TABLE
    orange_county (
        place_id INT AUTO_INCREMENT PRIMARY KEY, -- place_id: unique auto-increment ID (primary key)
        place_name VARCHAR(100) NOT NULL, -- place_name: required name of the place
        place_type VARCHAR(50) NOT NULL, -- place_type: required category/type of place
        city VARCHAR(75), -- city: optional city info
        county VARCHAR(75), -- county: optional county info
        established_date DATE, -- established_date: optional founding date
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
        'Disneyland Resort',
        'Theme Park',
        'Anaheim',
        'Orange County',
        '1955-07-17'
    ),
    (
        'Knott Berry Farm',
        'Theme Park',
        'Buena Park',
        'Orange County',
        '1940-01-01'
    ),
    (
        'Huntington Beach Pier',
        'Historic Landmark',
        'Huntington Beach',
        'Orange County',
        '1904-01-01'
    ),
    (
        'South Coast Plaza',
        'Shopping Mall',
        'Costa Mesa',
        'Orange County',
        '1967-03-15'
    ),
    (
        'Mission San Juan Capistrano',
        'Historic Landmark',
        'San Juan Capistrano',
        'Orange County',
        '1776-11-01'
    ),
    (
        'Irvine Spectrum Center',
        'Shopping District',
        'Irvine',
        'Orange County',
        '1995-01-01'
    ),
    (
        'Balboa Fun Zone',
        'Amusement Area',
        'Newport Beach',
        'Orange County',
        '1936-01-01'
    ),
    (
        'Crystal Cove State Park',
        'State Park',
        'Laguna Beach',
        'Orange County',
        '1979-01-01'
    ),
    (
        'Orange County Museum of Art',
        'Museum',
        'Santa Ana',
        'Orange County',
        '1962-01-01'
    ),
    (
        'Dana Point Harbor',
        'Harbors',
        'Dana Point',
        'Orange County',
        '1971-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS san_francisco_county;

-- create table in california db
CREATE TABLE
    san_francisco_county (
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

-- inserting researched data about San Francisco County
INSERT INTO
    san_francisco_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Golden Gate Bridge',
        'Bridge',
        'San Francisco',
        'San Francisco County',
        '1937-05-27'
    ),
    (
        'Alcatraz Island',
        'Historic Site',
        'San Francisco',
        'San Francisco County',
        '1934-08-11'
    ),
    (
        'Fisherman Wharf',
        'Tourist District',
        'San Francisco',
        'San Francisco County',
        '1880-01-01'
    ),
    (
        'Pier 39',
        'Shopping',
        'San Francisco',
        'San Francisco County',
        '1978-06-01'
    ),
    (
        'Union Square',
        'Public Plaza',
        'San Francisco',
        'San Francisco County',
        '1850-01-01'
    ),
    (
        'Chinatown San Francisco',
        'Historic District',
        'San San Francisco',
        'San Francisco County',
        '1848-01-01'
    ),
    (
        'Coit Tower',
        'Historic Landmark',
        'San Francisco',
        'San Francisco County',
        '1933-10-08'
    ),
    (
        'San Francisco Museum of Modern Art',
        'Museum',
        'San Francisco',
        'San Francisco County',
        '1935-05-01'
    ),
    (
        'Lombard Street',
        'Historic Landmark',
        'San Francisco',
        'San Francisco County',
        '1922-01-01'
    ),
    (
        'Palace of Fine Arts',
        'Historic Landmark',
        'San Francisco',
        'San Francisco County',
        '1915-12-15'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS napa_county;

-- create table in california db
CREATE TABLE
    napa_county (
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

-- inserting researched data about Napa County
INSERT INTO
    napa_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Napa Valley Wine Region',
        'Wine Region',
        'Napa',
        'Napa County',
        '1800-01-01'
    ),
    (
        'Castello di Amorosa',
        'Winery',
        'Calistoga',
        'Napa County',
        '2007-01-01'
    ),
    (
        'Napa Valley Wine Train',
        'Tourist Attraction',
        'Napa',
        'Napa County',
        '1989-01-01'
    ),
    (
        'Robert Mondavi Winery',
        'Winery',
        'Oakville',
        'Napa County',
        '1966-01-01'
    ),
    (
        'Sterling Vineyards',
        'Winery',
        'Calistoga',
        'Napa County',
        '1964-01-01'
    ),
    (
        'V. Sattui Winery',
        'Winery',
        'St. Helena',
        'Napa County',
        '1976-01-01'
    ),
    (
        'Opus One Winery',
        'Winery',
        'Oakville',
        'Napa County',
        '1978-01-01'
    ),
    (
        'Beringer Vineyards',
        'Winery',
        'St. Helena',
        'Napa County',
        '1876-01-01'
    ),
    (
        'Domaine Carneros',
        'Winery',
        'Napa',
        'Napa County',
        '1987-01-01'
    ),
    (
        'Napa Valley Opera House',
        'Historic Theater',
        'Napa',
        'Napa County',
        '1879-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS santa_clara_county;

-- create table in california db
CREATE TABLE
    santa_clara_county (
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

-- inserting researched data about Santa Clara County
INSERT INTO
    santa_clara_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Silicon Valley',
        'Technology Region',
        'San Jose',
        'Santa Clara County',
        '1950-01-01'
    ),
    (
        'Apple Park Visitor Center',
        'Museum',
        'Cupertino',
        'Santa Clara County',
        '2017-11-17'
    ),
    (
        'Intel Museum',
        'Museum',
        'Santa Clara',
        'Santa Clara County',
        '1992-01-01'
    ),
    (
        'California’s Great America',
        'Theme Park',
        'Santa Clara',
        'Santa Clara County',
        '1976-03-20'
    ),
    (
        'Winchester Mystery House',
        'Historic Mansion',
        'San Jose',
        'Santa Clara County',
        '1884-01-01'
    ),
    (
        'The Tech Interactive',
        'Science & Technology Museum',
        'San Jose',
        'Santa Clara County',
        '1990-01-01'
    ),
    (
        'Levi’s Stadium',
        'Sports Stadium',
        'Santa Clara',
        'Santa Clara County',
        '2014-07-17'
    ),
    (
        'Rosicrucian Egyptian Museum',
        'Museum',
        'San Jose',
        'Santa Clara County',
        '1927-01-01'
    ),
    (
        'SAP Center',
        'Sports Arena',
        'San Jose',
        'Santa Clara County',
        '1993-09-07'
    ),
    (
        'Happy Hollow Park & Zoo',
        'Zoo',
        'San Jose',
        'Santa Clara County',
        '1961-01-01'
    );

-- display table contents for Los Angeles County
SELECT
    *
FROM
    los_angeles_county
ORDER BY
    place_id;

-- display table contents for Orange County
SELECT
    *
FROM
    orange_county
ORDER BY
    place_id;

-- display table contents for San Francisco County
SELECT
    *
FROM
    san_francisco_county
ORDER BY
    place_id;

-- display table contents for Napa County
SELECT
    *
FROM
    napa_county
ORDER BY
    place_id;

-- display table contents for Santa Clara County
SELECT
    *
FROM
    santa_clara_county
ORDER BY
    place_id;


