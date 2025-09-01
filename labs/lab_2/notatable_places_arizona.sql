-- kasey atekwana
-- int2080
-- 31/08/25
-- Arizona data base displaying 10 counties and 10 notable attractions
-- select database
USE arizona;

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS coconino_county;

-- create table in arizona db
CREATE TABLE
    coconino_county (
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
    coconino_county (
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
        N 'Coconino County',
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
DROP TABLE IF EXISTS mohave_county;

-- create table in arizona db
-- CREATE TABLE
CREATE TABLE
    mohave_county (
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
    mohave_county (
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
DROP TABLE IF EXISTS maricopa_county;

-- create table in arizona db
-- CREATE TABLE
CREATE TABLE
    maricopa_county (
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
    maricopa_county (
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
DROP TABLE IF EXISTS apache_county;

-- create table in arizona db
CREATE TABLE
    apache_county (
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
    apache_county (
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
DROP TABLE IF EXISTS santa_cruz_county;

-- create table in arizona db
CREATE TABLE
    santa_cruz_county (
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
    santa_cruz_county (
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

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS pima_county;

-- create table in arizona db
CREATE TABLE
    pima_county (
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

-- inserting researched data about Pima County
INSERT INTO
    pima_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Arizona-Sonora Desert Museum',
        'Museum & Botanical Garden',
        'Tucson',
        'Pima County',
        '1952-01-01'
    ),
    (
        'Saguaro National Park',
        'National Park',
        'Tucson',
        'Pima County',
        '1994-10-14'
    ),
    (
        'Mission San Xavier del Bac',
        'Historic Site',
        'Tucson',
        'Pima County',
        '1797-01-01'
    ),
    (
        'Tucson Botanical Gardens',
        'Botanical Garden',
        'Tucson',
        'Pima County',
        '1968-01-01'
    ),
    (
        'Old Tucson Studios',
        'Historic Site / Studio',
        'Tucson',
        'Pima County',
        '1939-01-01'
    ),
    (
        'Pima Air & Space Museum',
        'Museum',
        'Tucson',
        'Pima County',
        '1976-01-01'
    ),
    (
        'Reid Park Zoo',
        'Zoo',
        'Tucson',
        'Pima County',
        '1965-01-01'
    ),
    (
        'DeGrazia Gallery in the Sun',
        'Art Gallery',
        'Tucson',
        'Pima County',
        '1950-01-01'
    ),
    (
        'Tucson Mountain Park',
        'Park',
        'Tucson',
        'Pima County',
        '1929-01-01'
    ),
    (
        'Catalina State Park',
        'State Park',
        'Tucson',
        'Pima County',
        '1974-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS pinal_county;

-- create table in arizona db
CREATE TABLE
    pinal_county (
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

-- inserting researched data about Pinal County
INSERT INTO
    pinal_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Casa Grande Ruins National Monument',
        'National Monument',
        'Coolidge',
        'Pinal County',
        '1892-08-03'
    ),
    (
        'San Tan Mountain Regional Park',
        'Regional Park',
        'Queen Creek',
        'Pinal County',
        '1986-01-01'
    ),
    (
        'Picacho Peak State Park',
        'State Park',
        'Picacho',
        'Pinal County',
        '1965-01-01'
    ),
    (
        'Old Florence Townsite',
        'Historic Site',
        'Florence',
        'Pinal County',
        '1870-01-01'
    ),
    (
        'Copper Sky Recreation Complex',
        'Recreation Area',
        'Apache Junction',
        'Pinal County',
        '2004-01-01'
    ),
    (
        'Gila River Indian Community Cultural Center',
        'Cultural Center',
        'Sacaton',
        'Pinal County',
        '1990-01-01'
    ),
    (
        'Ak-Chin Him-Dak EcoMuseum',
        'Museum',
        'Maricopa',
        'Pinal County',
        '2005-01-01'
    ),
    (
        'Boyce Thompson Arboretum',
        'Botanical Garden',
        'Superior',
        'Pinal County',
        '1924-01-01'
    ),
    (
        'Queen Creek Olive Mill',
        'Agricultural Site',
        'Queen Creek',
        'Pinal County',
        '2010-01-01'
    ),
    (
        'Superstition Mountains',
        'Mountain Range',
        'Apache Junction',
        'Pinal County',
        '1800-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS yavapai_county;

-- create table in arizona db
CREATE TABLE
    yavapai_county (
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

-- inserting researched data about Yavapai County
INSERT INTO
    yavapai_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Sedona Red Rock State Park',
        'State Park',
        'Sedona',
        'Yavapai County',
        '1991-01-01'
    ),
    (
        'Montezuma Castle National Monument',
        'National Monument',
        'Camp Verde',
        'Yavapai County',
        '1906-01-08'
    ),
    (
        'Prescott Courthouse Plaza',
        'Historic Site',
        'Prescott',
        'Yavapai County',
        '1877-01-01'
    ),
    (
        'Sharlot Hall Museum',
        'Museum',
        'Prescott',
        'Yavapai County',
        '1928-01-01'
    ),
    (
        'Goldwater Lake',
        'Lake / Recreation Area',
        'Prescott',
        'Yavapai County',
        '1930-01-01'
    ),
    (
        'Jerome State Historic Park',
        'Historic Site',
        'Jerome',
        'Yavapai County',
        '1957-01-01'
    ),
    (
        'Verde Canyon Railroad',
        'Tourist Attraction / Railroad',
        'Clarkdale',
        'Yavapai County',
        '1990-01-01'
    ),
    (
        'Cinder Hills OHV Area',
        'Off-Highway Vehicle Area',
        'Chino Valley',
        'Yavapai County',
        '1980-01-01'
    ),
    (
        'Dead Horse Ranch State Park',
        'State Park',
        'Cottonwood',
        'Yavapai County',
        '1973-01-01'
    ),
    (
        'Jerome State Historic Park Museum',
        'Museum',
        'Jerome',
        'Yavapai County',
        '1957-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS yuma_county;

-- #
-- create table in arizona db
CREATE TABLE
    yuma_county (
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

-- inserting researched data about Yuma County
INSERT INTO
    yuma_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Yuma Territorial Prison State Historic Park',
        'Historic Site',
        'Yuma',
        'Yuma County',
        '1876-01-01'
    ),
    (
        'Imperial National Wildlife Refuge',
        'Wildlife Refuge',
        'Yuma',
        'Yuma County',
        '1941-01-01'
    ),
    (
        'Gateway Park',
        'Park',
        'Yuma',
        'Yuma County',
        '1960-01-01'
    ),
    (
        'Colorado River State Historic Park',
        'Historic Site',
        'Yuma',
        'Yuma County',
        '1980-01-01'
    ),
    (
        'Mittry Lake Recreation Area',
        'Recreation Area',
        'Yuma',
        'Yuma County',
        '1966-01-01'
    ),
    (
        'Yuma Quartermaster Depot State Historic Park',
        'Historic Site',
        'Yuma',
        'Yuma County',
        '1864-01-01'
    ),
    (
        'Foothills Golf Club',
        'Golf Course',
        'Yuma',
        'Yuma County',
        '1993-01-01'
    ),
    (
        'West Wetlands Park',
        'Park',
        'Yuma',
        'Yuma County',
        '1997-01-01'
    ),
    (
        'Castle Dome Mines Museum',
        'Museum',
        'Yuma',
        'Yuma County',
        '1980-01-01'
    ),
    (
        'Gila Mountains',
        'Mountain Range',
        'Yuma',
        'Yuma County',
        '1800-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS navajo_county;

-- create table in arizona db
CREATE TABLE
    navajo_county (
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

VALUES
    (
        'Wupatki National Monument',
        'National Monument',
        'Flagstaff',
        'Navajo County',
        '1924-12-09'
    ),
    (
        'Sunset Crater Volcano National Monument',
        'National Monument',
        'Flagstaff',
        'Navajo County',
        '1930-05-26'
    ),
    (
        'Meteor Crater',
        'Impact Site',
        'Winslow',
        'Navajo County',
        '1903-02-01'
    ),
    (
        'Coconino National Forest',
        'National Forest',
        'Flagstaff',
        'Navajo County',
        '1898-07-01'
    ),
    (
        'Grand Falls',
        'Waterfall',
        'Leupp',
        'Navajo County',
        '1900-01-01'
    ),
    (
        'Lakeside Park',
        'Park',
        'Holbrook',
        'Navajo County',
        '1950-01-01'
    ),
    (
        'Painted Desert',
        'Desert Landscape',
        'Holbrook',
        'Navajo County',
        '1900-01-01'
    ),
    (
        'Navajo Nation Museum',
        'Museum',
        'Window Rock',
        'Navajo County',
        '1961-01-01'
    ),
    (
        'Chinde Mesa Trail',
        'Hiking Trail',
        'Holbrook',
        'Navajo County',
        '1990-01-01'
    ),
    (
        'Canyon Diablo',
        'Canyon',
        'Winslow',
        'Navajo County',
        '1800-01-01'
    );

-- inserting researched data about Navajo County
INSERT INTO
    navajo_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Show Low Lake',
        'Lake',
        'Show Low',
        'Navajo County',
        '1950-01-01'
    ),
    (
        'Casa Malpais Archaeological Park',
        'Archaeological Site',
        'Springerville',
        'Navajo County',
        '1200-01-01'
    ),
    (
        'Apache-Sitgreaves National Forest',
        'National Forest',
        'Pinetop-Lakeside',
        'Navajo County',
        '1908-01-01'
    ),
    (
        'Fool Hollow Lake Recreation Area',
        'Recreation Area',
        'Show Low',
        'Navajo County',
        '1965-01-01'
    ),
    (
        'White Mountain Nature Center',
        'Nature Center',
        'Pinetop-Lakeside',
        'Navajo County',
        '1980-01-01'
    ),
    (
        'Little House Museum',
        'Museum',
        'Pinetop-Lakeside',
        'Navajo County',
        '1970-01-01'
    ),
    (
        'Lyman Lake State Park',
        'State Park',
        'St. Johns',
        'Navajo County',
        '1961-01-01'
    ),
    (
        'Rainbow Forest Museum',
        'Museum',
        'Holbrook',
        'Navajo County',
        '1963-01-01'
    ),
    (
        'Navajo County Historical Museum',
        'Museum',
        'Holbrook',
        'Navajo County',
        '1976-01-01'
    ),
    (
        'Big Lake Recreation Area',
        'Recreation Area',
        'Greer',
        'Navajo County',
        '1920-01-01'
    );

-- display table contents for Coconino County
SELECT
    *
FROM
    coconino_county
ORDER BY
    place_id;

-- display table contents for Mohave County
SELECT
    *
FROM
    mohave_county
ORDER BY
    place_id;

-- display table contents for Maricopa County
SELECT
    *
FROM
    maricopa_county
ORDER BY
    place_id;

-- display table contents for Apache County
SELECT
    *
FROM
    apache_county
ORDER BY
    place_id;

-- display table contents for Santa Cruz County
SELECT
    *
FROM
    santa_cruz_county
ORDER BY
    place_id;

-- display table contents for Pima County
SELECT
    *
FROM
    pima_county
ORDER BY
    place_id;

-- display table contents for Pinal County
SELECT
    *
FROM
    pinal_county
ORDER BY
    place_id;

-- display table contents for Yavapai County
SELECT
    *
FROM
    yavapai_county
ORDER BY
    place_id;

-- display table contents for Yuma County
SELECT
    *
FROM
    yuma_county
ORDER BY
    place_id;

-- display table contents for Navajo County
SELECT
    *
FROM
    navajo_county
ORDER BY
    place_id;