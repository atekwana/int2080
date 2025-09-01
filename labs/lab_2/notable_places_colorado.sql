-- kasey atekwana
-- int2080
-- 31/08/25
-- Colorado data base displaying 10 counties and 10 notable attractions

-- select database
USE colorado;

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS denver_county;

-- create table in colorado db
CREATE TABLE
    denver_county (
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

-- inserting researched data about Denver County
INSERT INTO
    denver_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
    -- the 10 attractions
VALUES
    (
        'Denver Art Museum',
        'Museum',
        'Denver',
        'Denver County',
        '1893-01-01'
    ),
    (
        'Denver Botanic Gardens',
        'Botanical Garden',
        'Denver',
        'Denver County',
        '1951-01-01'
    ),
    (
        'Red Rocks Park and Amphitheatre',
        'Amphitheatre',
        'Denver',
        'Denver County',
        '1936-06-15'
    ),
    (
        'Denver Zoo',
        'Zoo',
        'Denver',
        'Denver County',
        '1896-01-01'
    ),
    (
        'Union Station',
        'Historic Landmark',
        'Denver',
        'Denver County',
        '1881-01-01'
    ),
    (
        'Washington Park',
        'Park',
        'Denver',
        'Denver County',
        '1899-01-01'
    ),
    (
        'Coors Field',
        'Stadium',
        'Denver',
        'Denver County',
        '1995-04-26'
    ),
    (
        'Denver Museum of Nature & Science',
        'Museum',
        'Denver',
        'Denver County',
        '1900-01-01'
    ),
    (
        '16th Street Mall',
        'Shopping District',
        'Denver',
        'Denver County',
        '1982-01-01'
    ),
    (
        'Confluence Park',
        'Park',
        'Denver',
        'Denver County',
        '1975-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS el_paso_county;

-- create table in colorado db
-- CREATE TABLE
CREATE TABLE
    el_paso_county (
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

-- inserting researched data about El Paso County
INSERT INTO
    el_paso_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Garden of the Gods',
        'Park',
        'Colorado Springs',
        'El Paso County',
        '1909-01-01'
    ),
    (
        'Pikes Peak',
        'Mountain',
        'Colorado Springs',
        'El Paso County',
        '1806-01-01'
    ),
    (
        'Cheyenne Mountain Zoo',
        'Zoo',
        'Colorado Springs',
        'El Paso County',
        '1926-01-01'
    ),
    (
        'United States Air Force Academy',
        'Military Academy',
        'Colorado Springs',
        'El Paso County',
        '1954-04-01'
    ),
    (
        'Manitou Springs',
        'Historic Town',
        'Manitou Springs',
        'El Paso County',
        '1872-01-01'
    ),
    (
        'Seven Falls',
        'Waterfall',
        'Colorado Springs',
        'El Paso County',
        '1885-01-01'
    ),
    (
        'Olympic Training Center',
        'Training Facility',
        'Colorado Springs',
        'El Paso County',
        '1978-01-01'
    ),
    (
        'Cave of the Winds',
        'Cave System',
        'Manitou Springs',
        'El Paso County',
        '1881-01-01'
    ),
    (
        'Broadmoor Hotel',
        'Historic Hotel',
        'Colorado Springs',
        'El Paso County',
        '1918-06-29'
    ),
    (
        'North Cheyenne Cañon Park',
        'Park',
        'Colorado Springs',
        'El Paso County',
        '1885-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS summit_county;

-- create table in colorado db
-- CREATE TABLE
CREATE TABLE
    summit_county (
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

-- inserting researched data about Summit County
INSERT INTO
    summit_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Breckenridge Ski Resort',
        'Ski Resort',
        'Breckenridge',
        'Summit County',
        '1961-12-15'
    ),
    (
        'Lake Dillon',
        'Reservoir',
        'Dillon',
        'Summit County',
        '1963-01-01'
    ),
    (
        'Keystone Resort',
        'Ski Resort',
        'Keystone',
        'Summit County',
        '1970-11-01'
    ),
    (
        'Arapahoe Basin Ski Area',
        'Ski Resort',
        'Keystone',
        'Summit County',
        '1946-12-15'
    ),
    (
        'Copper Mountain Resort',
        'Ski Resort',
        'Copper Mountain',
        'Summit County',
        '1972-12-01'
    ),
    (
        'Silverthorne Outlets',
        'Shopping Center',
        'Silverthorne',
        'Summit County',
        '1990-01-01'
    ),
    (
        'Frisco Historic Park',
        'Historic Site',
        'Frisco',
        'Summit County',
        '1980-01-01'
    ),
    (
        'Blue River Trail',
        'Trail',
        'Breckenridge',
        'Summit County',
        '1985-01-01'
    ),
    (
        'Peak 8 Fun Park',
        'Recreation Area',
        'Breckenridge',
        'Summit County',
        '1995-01-01'
    ),
    (
        'Dillon Marina',
        'Marina',
        'Dillon',
        'Summit County',
        '1970-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS larimer_county;

-- create table in colorado db
CREATE TABLE
    larimer_county (
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

-- inserting researched data about Larimer County
INSERT INTO
    larimer_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Rocky Mountain National Park',
        'National Park',
        'Estes Park',
        'Larimer County',
        '1915-01-26'
    ),
    (
        'Colorado State University',
        'University',
        'Fort Collins',
        'Larimer County',
        '1870-01-01'
    ),
    (
        'Horsetooth Reservoir',
        'Reservoir',
        'Fort Collins',
        'Larimer County',
        '1949-01-01'
    ),
    (
        'Stanley Hotel',
        'Historic Hotel',
        'Estes Park',
        'Larimer County',
        '1909-07-04'
    ),
    (
        'New Belgium Brewing',
        'Brewery',
        'Fort Collins',
        'Larimer County',
        '1991-01-01'
    ),
    (
        'Cache La Poudre River',
        'River',
        'Fort Collins',
        'Larimer County',
        '1800-01-01'
    ),
    (
        'Fort Collins Museum of Discovery',
        'Museum',
        'Fort Collins',
        'Larimer County',
        '1938-01-01'
    ),
    (
        'Estes Park Aerial Tramway',
        'Tourist Attraction',
        'Estes Park',
        'Larimer County',
        '1955-01-01'
    ),
    (
        'Lory State Park',
        'State Park',
        'Bellvue',
        'Larimer County',
        '1967-01-01'
    ),
    (
        'Roosevelt National Forest',
        'National Forest',
        'Fort Collins',
        'Larimer County',
        '1932-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS pitkin_county;

-- create table in colorado db
CREATE TABLE
    pitkin_county (
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

-- inserting researched data about Pitkin County
INSERT INTO
    pitkin_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Aspen Mountain',
        'Ski Resort',
        'Aspen',
        'Pitkin County',
        '1946-01-11'
    ),
    (
        'Snowmass Ski Area',
        'Ski Resort',
        'Snowmass Village',
        'Pitkin County',
        '1967-12-20'
    ),
    (
        'Maroon Bells',
        'Mountain Peaks',
        'Aspen',
        'Pitkin County',
        '1900-01-01'
    ),
    (
        'Aspen Music Festival',
        'Cultural Venue',
        'Aspen',
        'Pitkin County',
        '1949-01-01'
    ),
    (
        'Wheeler Opera House',
        'Historic Theater',
        'Aspen',
        'Pitkin County',
        '1889-04-21'
    ),
    (
        'Independence Pass',
        'Mountain Pass',
        'Aspen',
        'Pitkin County',
        '1881-01-01'
    ),
    (
        'Buttermilk Ski Area',
        'Ski Resort',
        'Aspen',
        'Pitkin County',
        '1958-01-01'
    ),
    (
        'Aspen Highlands',
        'Ski Resort',
        'Aspen',
        'Pitkin County',
        '1958-12-18'
    ),
    (
        'Crater Lake Trail',
        'Hiking Trail',
        'Aspen',
        'Pitkin County',
        '1970-01-01'
    ),
    (
        'Aspen Art Museum',
        'Museum',
        'Aspen',
        'Pitkin County',
        '1979-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS jefferson_county;

-- create table in colorado db
CREATE TABLE
    jefferson_county (
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

-- inserting researched data about Jefferson County
INSERT INTO
    jefferson_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Colorado Mills',
        'Shopping Center',
        'Lakewood',
        'Jefferson County',
        '2002-01-01'
    ),
    (
        'Dinosaur Ridge',
        'Geological Site',
        'Morrison',
        'Jefferson County',
        '1877-01-01'
    ),
    (
        'Bear Creek Lake Park',
        'Park',
        'Lakewood',
        'Jefferson County',
        '1979-01-01'
    ),
    (
        'Lookout Mountain Nature Center',
        'Nature Center',
        'Golden',
        'Jefferson County',
        '1973-01-01'
    ),
    (
        'Buffalo Bill Museum and Grave',
        'Museum',
        'Golden',
        'Jefferson County',
        '1921-01-01'
    ),
    (
        'Coors Brewery',
        'Brewery',
        'Golden',
        'Jefferson County',
        '1873-01-01'
    ),
    (
        'Wheat Ridge Greenbelt',
        'Trail System',
        'Wheat Ridge',
        'Jefferson County',
        '1975-01-01'
    ),
    (
        'Colorado School of Mines',
        'University',
        'Golden',
        'Jefferson County',
        '1874-02-09'
    ),
    (
        'Chatfield State Park',
        'State Park',
        'Littleton',
        'Jefferson County',
        '1975-01-01'
    ),
    (
        'Rocky Mountain Lake Park',
        'Park',
        'Golden',
        'Jefferson County',
        '1960-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS boulder_county;

-- create table in colorado db
CREATE TABLE
    boulder_county (
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

-- inserting researched data about Boulder County
INSERT INTO
    boulder_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Flatirons',
        'Rock Formation',
        'Boulder',
        'Boulder County',
        '1900-01-01'
    ),
    (
        'Pearl Street Mall',
        'Shopping District',
        'Boulder',
        'Boulder County',
        '1977-01-01'
    ),
    (
        'Chautauqua Park',
        'Park',
        'Boulder',
        'Boulder County',
        '1898-01-01'
    ),
    (
        'University of Colorado Boulder',
        'University',
        'Boulder',
        'Boulder County',
        '1876-09-05'
    ),
    (
        'Boulder Creek Path',
        'Trail',
        'Boulder',
        'Boulder County',
        '1983-01-01'
    ),
    (
        'Eldorado Canyon State Park',
        'State Park',
        'Eldorado Springs',
        'Boulder County',
        '1978-01-01'
    ),
    (
        'National Center for Atmospheric Research',
        'Research Facility',
        'Boulder',
        'Boulder County',
        '1960-01-01'
    ),
    (
        'Boulder Dushanbe Teahouse',
        'Cultural Site',
        'Boulder',
        'Boulder County',
        '1998-01-01'
    ),
    (
        'Flagstaff Mountain',
        'Mountain',
        'Boulder',
        'Boulder County',
        '1900-01-01'
    ),
    (
        'Boulder Reservoir',
        'Reservoir',
        'Boulder',
        'Boulder County',
        '1955-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS eagle_county;

-- create table in colorado db
CREATE TABLE
    eagle_county (
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

-- inserting researched data about Eagle County
INSERT INTO
    eagle_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Vail Ski Resort',
        'Ski Resort',
        'Vail',
        'Eagle County',
        '1962-12-15'
    ),
    (
        'Beaver Creek Resort',
        'Ski Resort',
        'Avon',
        'Eagle County',
        '1980-12-15'
    ),
    (
        'Vail Village',
        'Resort Village',
        'Vail',
        'Eagle County',
        '1962-01-01'
    ),
    (
        'Eagle River',
        'River',
        'Eagle',
        'Eagle County',
        '1800-01-01'
    ),
    (
        'Sylvan Lake State Park',
        'State Park',
        'Eagle',
        'Eagle County',
        '1987-01-01'
    ),
    (
        'Colorado Snowsports Museum',
        'Museum',
        'Vail',
        'Eagle County',
        '1976-01-01'
    ),
    (
        'Minturn Historic District',
        'Historic District',
        'Minturn',
        'Eagle County',
        '1904-01-01'
    ),
    (
        'Gypsum Recreation Center',
        'Recreation Center',
        'Gypsum',
        'Eagle County',
        '1995-01-01'
    ),
    (
        'Holy Cross Wilderness',
        'Wilderness Area',
        'Vail',
        'Eagle County',
        '1980-01-01'
    ),
    (
        'Betty Ford Alpine Gardens',
        'Botanical Garden',
        'Vail',
        'Eagle County',
        '1986-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS garfield_county;

-- create table in colorado db
CREATE TABLE
    garfield_county (
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

-- inserting researched data about Garfield County
INSERT INTO
    garfield_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Glenwood Hot Springs',
        'Hot Springs',
        'Glenwood Springs',
        'Garfield County',
        '1888-01-01'
    ),
    (
        'Hanging Lake',
        'Natural Lake',
        'Glenwood Springs',
        'Garfield County',
        '1900-01-01'
    ),
    (
        'Hotel Colorado',
        'Historic Hotel',
        'Glenwood Springs',
        'Garfield County',
        '1893-06-10'
    ),
    (
        'Glenwood Caverns Adventure Park',
        'Adventure Park',
        'Glenwood Springs',
        'Garfield County',
        '1999-01-01'
    ),
    (
        'Sunlight Mountain Resort',
        'Ski Resort',
        'Glenwood Springs',
        'Garfield County',
        '1967-01-01'
    ),
    (
        'Rifle Falls State Park',
        'State Park',
        'Rifle',
        'Garfield County',
        '1966-01-01'
    ),
    (
        'Colorado River Trail',
        'Trail',
        'Glenwood Springs',
        'Garfield County',
        '1990-01-01'
    ),
    (
        'Carbondale Historic District',
        'Historic District',
        'Carbondale',
        'Garfield County',
        '1888-01-01'
    ),
    (
        'Mount Sopris',
        'Mountain',
        'Carbondale',
        'Garfield County',
        '1900-01-01'
    ),
    (
        'Roaring Fork River',
        'River',
        'Glenwood Springs',
        'Garfield County',
        '1800-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS mesa_county;

-- create table in colorado db
CREATE TABLE
    mesa_county (
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

-- inserting researched data about Mesa County
INSERT INTO
    mesa_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Colorado National Monument',
        'National Monument',
        'Grand Junction',
        'Mesa County',
        '1911-05-24'
    ),
    (
        'Grand Junction Motor Speedway',
        'Racing Track',
        'Grand Junction',
        'Mesa County',
        '1963-01-01'
    ),
    (
        'Museum of the West',
        'Museum',
        'Grand Junction',
        'Mesa County',
        '1957-01-01'
    ),
    (
        'Two Rivers Winery',
        'Winery',
        'Grand Junction',
        'Mesa County',
        '1999-01-01'
    ),
    (
        'James M. Robb - Colorado River State Park',
        'State Park',
        'Grand Junction',
        'Mesa County',
        '1994-01-01'
    ),
    (
        'Cross Orchards Historic Farm',
        'Historic Site',
        'Grand Junction',
        'Mesa County',
        '1896-01-01'
    ),
    (
        'Powderhorn Mountain Resort',
        'Ski Resort',
        'Mesa',
        'Mesa County',
        '1964-01-01'
    ),
    (
        'Devils Kitchen Trail',
        'Trail',
        'Grand Junction',
        'Mesa County',
        '1980-01-01'
    ),
    (
        'Grand Mesa National Forest',
        'National Forest',
        'Grand Junction',
        'Mesa County',
        '1892-12-24'
    ),
    (
        'Bananas Fun Park',
        'Family Entertainment',
        'Grand Junction',
        'Mesa County',
        '1995-01-01'
    );

-- display table contents for Denver County
SELECT
    *
FROM
    denver_county
ORDER BY
    place_id;

-- display table contents for El Paso County
SELECT
    *
FROM
    el_paso_county
ORDER BY
    place_id;

-- display table contents for Summit County
SELECT
    *
FROM
    summit_county
ORDER BY
    place_id;

-- display table contents for Larimer County
SELECT
    *
FROM
    larimer_county
ORDER BY
    place_id;

-- display table contents for Pitkin County
SELECT
    *
FROM
    pitkin_county
ORDER BY
    place_id;

-- display table contents for Jefferson County
SELECT
    *
FROM
    jefferson_county
ORDER BY
    place_id;

-- display table contents for Boulder County
SELECT
    *
FROM
    boulder_county
ORDER BY
    place_id;

-- display table contents for Eagle County
SELECT
    *
FROM
    eagle_county
ORDER BY
    place_id;

-- display table contents for Garfield County
SELECT
    *
FROM
    garfield_county
ORDER BY
    place_id;

-- display table contents for Mesa County
SELECT
    *
FROM
    mesa_county
ORDER BY
    place_id;