-- kasey atekwana
-- int2080
-- 31/08/25
-- New York data base displaying 10 counties and 10 notable attractions
-- select database
USE new_york;

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS new_york_county;

-- create table in new_york db
CREATE TABLE
    new_york_county (
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

-- inserting researched data about New York County
INSERT INTO
    new_york_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
    -- the 10 attractions
VALUES
    (
        'Central Park',
        'Park',
        'New York',
        'New York County',
        '1857-07-21'
    ),
    (
        'Empire State Building',
        'Landmark',
        'New York',
        'New York County',
        '1931-05-01'
    ),
    (
        'Times Square',
        'Entertainment District',
        'New York',
        'New York County',
        '1904-01-01'
    ),
    (
        'Statue of Liberty',
        'Monument',
        'New York',
        'New York County',
        '1886-10-28'
    ),
    (
        'Metropolitan Museum of Art',
        'Museum',
        'New York',
        'New York County',
        '1870-04-13'
    ),
    (
        'Brooklyn Bridge',
        'Bridge',
        'New York',
        'New York County',
        '1883-05-24'
    ),
    (
        'One World Trade Center',
        'Skyscraper',
        'New York',
        'New York County',
        '2014-11-03'
    ),
    (
        'High Line',
        'Park',
        'New York',
        'New York County',
        '2009-06-08'
    ),
    (
        'Broadway Theater District',
        'Theater District',
        'New York',
        'New York County',
        '1750-01-01'
    ),
    (
        'Rockefeller Center',
        'Complex',
        'New York',
        'New York County',
        '1939-05-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS kings_county;

-- create table in new_york db
-- CREATE TABLE
CREATE TABLE
    kings_county (
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

-- inserting researched data about Kings County
INSERT INTO
    kings_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Coney Island',
        'Entertainment District',
        'Brooklyn',
        'Kings County',
        '1829-01-01'
    ),
    (
        'Brooklyn Museum',
        'Museum',
        'Brooklyn',
        'Kings County',
        '1897-01-01'
    ),
    (
        'Prospect Park',
        'Park',
        'Brooklyn',
        'Kings County',
        '1867-01-01'
    ),
    (
        'Brooklyn Botanic Garden',
        'Botanical Garden',
        'Brooklyn',
        'Kings County',
        '1910-05-13'
    ),
    (
        'Barclays Center',
        'Arena',
        'Brooklyn',
        'Kings County',
        '2012-09-21'
    ),
    (
        'DUMBO',
        'Neighborhood',
        'Brooklyn',
        'Kings County',
        '1978-01-01'
    ),
    (
        'Williamsburg',
        'Neighborhood',
        'Brooklyn',
        'Kings County',
        '1661-01-01'
    ),
    (
        'Brooklyn Heights Promenade',
        'Promenade',
        'Brooklyn',
        'Kings County',
        '1951-01-01'
    ),
    (
        'New York Aquarium',
        'Aquarium',
        'Brooklyn',
        'Kings County',
        '1896-01-01'
    ),
    (
        'Luna Park',
        'Amusement Park',
        'Brooklyn',
        'Kings County',
        '2010-05-29'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS westchester_county;

-- create table in new_york db
-- CREATE TABLE
CREATE TABLE
    westchester_county (
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

-- inserting researched data about Westchester County
INSERT INTO
    westchester_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Hudson River Valley',
        'Scenic Region',
        'Tarrytown',
        'Westchester County',
        '1609-01-01'
    ),
    (
        'Kykuit (Rockefeller Estate)',
        'Historic Site',
        'Sleepy Hollow',
        'Westchester County',
        '1913-01-01'
    ),
    (
        'Sleepy Hollow Cemetery',
        'Cemetery',
        'Sleepy Hollow',
        'Westchester County',
        '1849-01-01'
    ),
    (
        'Lyndhurst Mansion',
        'Historic Mansion',
        'Tarrytown',
        'Westchester County',
        '1838-01-01'
    ),
    (
        'Playland Amusement Park',
        'Amusement Park',
        'Rye',
        'Westchester County',
        '1928-05-26'
    ),
    (
        'Bronx River Parkway',
        'Scenic Parkway',
        'Bronxville',
        'Westchester County',
        '1925-01-01'
    ),
    (
        'Caramoor Center for Music and the Arts',
        'Cultural Center',
        'Katonah',
        'Westchester County',
        '1945-01-01'
    ),
    (
        'Untermyer Park and Gardens',
        'Garden',
        'Yonkers',
        'Westchester County',
        '1916-01-01'
    ),
    (
        'Cross County Shopping Center',
        'Shopping Center',
        'Yonkers',
        'Westchester County',
        '1954-01-01'
    ),
    (
        'Muscoot Farm',
        'Historic Farm',
        'Somers',
        'Westchester County',
        '1885-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS niagara_county;

-- create table in new_york db
CREATE TABLE
    niagara_county (
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

-- inserting researched data about Niagara County
INSERT INTO
    niagara_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Niagara Falls',
        'Waterfall',
        'Niagara Falls',
        'Niagara County',
        '12000-01-01'
    ),
    (
        'Maid of the Mist',
        'Boat Tour',
        'Niagara Falls',
        'Niagara County',
        '1846-01-01'
    ),
    (
        'Cave of the Winds',
        'Tourist Attraction',
        'Niagara Falls',
        'Niagara County',
        '1834-01-01'
    ),
    (
        'Niagara Falls State Park',
        'State Park',
        'Niagara Falls',
        'Niagara County',
        '1885-01-01'
    ),
    (
        'Old Fort Niagara',
        'Historic Fort',
        'Youngstown',
        'Niagara County',
        '1726-01-01'
    ),
    (
        'Whirlpool State Park',
        'State Park',
        'Niagara Falls',
        'Niagara County',
        '1957-01-01'
    ),
    (
        'Artpark',
        'Cultural Center',
        'Lewiston',
        'Niagara County',
        '1974-01-01'
    ),
    (
        'Lockport Locks and Erie Canal Cruises',
        'Historic Site',
        'Lockport',
        'Niagara County',
        '1825-01-01'
    ),
    (
        'Aquarium of Niagara',
        'Aquarium',
        'Niagara Falls',
        'Niagara County',
        '1965-01-01'
    ),
    (
        'Devil\'s Hole State Park',
        'State Park',
        'Niagara Falls',
        'Niagara County',
        '1962-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS erie_county;

-- create table in new_york db
CREATE TABLE
    erie_county (
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

-- inserting researched data about Erie County
INSERT INTO
    erie_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Anchor Bar',
        'Restaurant',
        'Buffalo',
        'Erie County',
        '1964-01-01'
    ),
    (
        'Buffalo Zoo',
        'Zoo',
        'Buffalo',
        'Erie County',
        '1875-01-01'
    ),
    (
        'Frank Lloyd Wright\'s Darwin D. Martin House',
        'Historic House',
        'Buffalo',
        'Erie County',
        '1905-01-01'
    ),
    (
        'Elmwood Village',
        'Neighborhood',
        'Buffalo',
        'Erie County',
        '1870-01-01'
    ),
    (
        'Buffalo Museum of Science',
        'Museum',
        'Buffalo',
        'Erie County',
        '1861-01-01'
    ),
    (
        'Canalside',
        'Waterfront District',
        'Buffalo',
        'Erie County',
        '2008-01-01'
    ),
    (
        'Buffalo City Hall',
        'Government Building',
        'Buffalo',
        'Erie County',
        '1932-01-01'
    ),
    (
        'Albright-Knox Art Gallery',
        'Museum',
        'Buffalo',
        'Erie County',
        '1905-01-01'
    ),
    (
        'Delaware Park',
        'Park',
        'Buffalo',
        'Erie County',
        '1868-01-01'
    ),
    (
        'KeyBank Center',
        'Arena',
        'Buffalo',
        'Erie County',
        '1996-09-21'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS suffolk_county;

-- create table in new_york db
CREATE TABLE
    suffolk_county (
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

-- inserting researched data about Suffolk County
INSERT INTO
    suffolk_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'The Hamptons',
        'Resort Area',
        'East Hampton',
        'Suffolk County',
        '1648-01-01'
    ),
    (
        'Fire Island National Seashore',
        'National Seashore',
        'Patchogue',
        'Suffolk County',
        '1964-09-11'
    ),
    (
        'Montauk Point Lighthouse',
        'Lighthouse',
        'Montauk',
        'Suffolk County',
        '1796-11-05'
    ),
    (
        'Splish Splash Water Park',
        'Water Park',
        'Calverton',
        'Suffolk County',
        '1991-01-01'
    ),
    (
        'Long Island Aquarium',
        'Aquarium',
        'Riverhead',
        'Suffolk County',
        '2000-01-01'
    ),
    (
        'Sagamore Hill National Historic Site',
        'Historic Site',
        'Oyster Bay',
        'Suffolk County',
        '1885-01-01'
    ),
    (
        'Jones Beach State Park',
        'State Park',
        'Wantagh',
        'Suffolk County',
        '1929-08-04'
    ),
    (
        'Tanger Outlets Riverhead',
        'Shopping Center',
        'Riverhead',
        'Suffolk County',
        '1994-01-01'
    ),
    (
        'Old Westbury Gardens',
        'Garden',
        'Old Westbury',
        'Suffolk County',
        '1906-01-01'
    ),
    (
        'Brookhaven National Laboratory',
        'Research Facility',
        'Upton',
        'Suffolk County',
        '1947-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS albany_county;

-- create table in new_york db
CREATE TABLE
    albany_county (
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

-- inserting researched data about Albany County
INSERT INTO
    albany_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'New York State Capitol',
        'Government Building',
        'Albany',
        'Albany County',
        '1899-01-01'
    ),
    (
        'Empire State Plaza',
        'Government Complex',
        'Albany',
        'Albany County',
        '1976-01-01'
    ),
    (
        'Albany Institute of History and Art',
        'Museum',
        'Albany',
        'Albany County',
        '1791-01-01'
    ),
    (
        'USS Slater',
        'Museum Ship',
        'Albany',
        'Albany County',
        '1944-01-01'
    ),
    (
        'Washington Park',
        'Park',
        'Albany',
        'Albany County',
        '1870-01-01'
    ),
    (
        'Palace Theatre',
        'Theater',
        'Albany',
        'Albany County',
        '1931-10-02'
    ),
    (
        'Crossgates Mall',
        'Shopping Mall',
        'Guilderland',
        'Albany County',
        '1984-08-01'
    ),
    (
        'Historic Cherry Hill',
        'Historic House',
        'Albany',
        'Albany County',
        '1787-01-01'
    ),
    (
        'Thacher State Park',
        'State Park',
        'Voorheesville',
        'Albany County',
        '1914-01-01'
    ),
    (
        'Pine Bush Preserve',
        'Nature Preserve',
        'Albany',
        'Albany County',
        '1988-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS nassau_county;

-- create table in new_york db
CREATE TABLE
    nassau_county (
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

-- inserting researched data about Nassau County
INSERT INTO
    nassau_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'UBS Arena',
        'Arena',
        'Elmont',
        'Nassau County',
        '2021-11-20'
    ),
    (
        'Nassau County Museum of Art',
        'Museum',
        'Roslyn Harbor',
        'Nassau County',
        '1969-01-01'
    ),
    (
        'Eisenhower Park',
        'Park',
        'East Meadow',
        'Nassau County',
        '1944-01-01'
    ),
    (
        'Cradle of Aviation Museum',
        'Museum',
        'Garden City',
        'Nassau County',
        '1980-01-01'
    ),
    (
        'Roosevelt Field Mall',
        'Shopping Mall',
        'Garden City',
        'Nassau County',
        '1956-01-01'
    ),
    (
        'Bethpage State Park',
        'State Park',
        'Farmingdale',
        'Nassau County',
        '1962-01-01'
    ),
    (
        'Hofstra University',
        'University',
        'Hempstead',
        'Nassau County',
        '1935-09-23'
    ),
    (
        'Long Beach',
        'Beach',
        'Long Beach',
        'Nassau County',
        '1922-01-01'
    ),
    (
        'Adventureland',
        'Amusement Park',
        'Farmingdale',
        'Nassau County',
        '1962-06-17'
    ),
    (
        'Mill Pond Park',
        'Park',
        'Wantagh',
        'Nassau County',
        '1960-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS monroe_county;

-- create table in new_york db
CREATE TABLE
    monroe_county (
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

-- inserting researched data about Monroe County
INSERT INTO
    monroe_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Eastman Museum',
        'Museum',
        'Rochester',
        'Monroe County',
        '1947-01-01'
    ),
    (
        'Strong National Museum of Play',
        'Museum',
        'Rochester',
        'Monroe County',
        '1982-01-01'
    ),
    (
        'Seneca Park Zoo',
        'Zoo',
        'Rochester',
        'Monroe County',
        '1894-01-01'
    ),
    (
        'Highland Park',
        'Park',
        'Rochester',
        'Monroe County',
        '1888-01-01'
    ),
    (
        'Rochester Museum & Science Center',
        'Museum',
        'Rochester',
        'Monroe County',
        '1912-01-01'
    ),
    (
        'Genesee River',
        'River',
        'Rochester',
        'Monroe County',
        '1800-01-01'
    ),
    (
        'Blue Cross Arena',
        'Arena',
        'Rochester',
        'Monroe County',
        '1955-10-01'
    ),
    (
        'Mount Hope Cemetery',
        'Cemetery',
        'Rochester',
        'Monroe County',
        '1838-01-01'
    ),
    (
        'Seabreeze Amusement Park',
        'Amusement Park',
        'Rochester',
        'Monroe County',
        '1879-01-01'
    ),
    (
        'Lilac Festival',
        'Festival',
        'Rochester',
        'Monroe County',
        '1898-01-01'
    );

-- if table already exists drop
-- if table does not exists create table
DROP TABLE IF EXISTS onondaga_county;

-- create table in new_york db
CREATE TABLE
    onondaga_county (
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

-- inserting researched data about Onondaga County
INSERT INTO
    onondaga_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )
VALUES
    (
        'Syracuse University',
        'University',
        'Syracuse',
        'Onondaga County',
        '1870-03-24'
    ),
    (
        'Carrier Dome',
        'Stadium',
        'Syracuse',
        'Onondaga County',
        '1980-09-20'
    ),
    (
        'Everson Museum of Art',
        'Museum',
        'Syracuse',
        'Onondaga County',
        '1968-01-01'
    ),
    (
        'Destiny USA',
        'Shopping Mall',
        'Syracuse',
        'Onondaga County',
        '1990-10-01'
    ),
    (
        'Onondaga Lake Park',
        'Park',
        'Liverpool',
        'Onondaga County',
        '1991-01-01'
    ),
    (
        'Museum of Science and Technology',
        'Museum',
        'Syracuse',
        'Onondaga County',
        '1981-01-01'
    ),
    (
        'Rosamond Gifford Zoo',
        'Zoo',
        'Syracuse',
        'Onondaga County',
        '1914-01-01'
    ),
    (
        'Salt Museum',
        'Museum',
        'Liverpool',
        'Onondaga County',
        '1933-01-01'
    ),
    (
        'Clinton Square',
        'Public Square',
        'Syracuse',
        'Onondaga County',
        '1825-01-01'
    ),
    (
        'Green Lakes State Park',
        'State Park',
        'Fayetteville',
        'Onondaga County',
        '1928-01-01'
    );

-- display table contents for New York County
SELECT
    *
FROM
    new_york_county
ORDER BY
    place_id;

-- display table contents for Kings County
SELECT
    *
FROM
    kings_county
ORDER BY
    place_id;

-- display table contents for Westchester County
SELECT
    *
FROM
    westchester_county
ORDER BY
    place_id;

-- display table contents for Niagara County
SELECT
    *
FROM
    niagara_county
ORDER BY
    place_id;

-- display table contents for Erie County
SELECT
    *
FROM
    erie_county
ORDER BY
    place_id;

-- display table contents for Suffolk County
SELECT
    *
FROM
    suffolk_county
ORDER BY
    place_id;

-- display table contents for Albany County
SELECT
    *
FROM
    albany_county
ORDER BY
    place_id;

-- display table contents for Nassau County
SELECT
    *
FROM
    nassau_county
ORDER BY
    place_id;

-- display table contents for Monroe County
SELECT
    *
FROM
    monroe_county
ORDER BY
    place_id;

-- display table contents for Onondaga County
SELECT
    *
FROM
    onondaga_county
ORDER BY
    place_id;