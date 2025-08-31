-- select database
USE arizona;

-- create table for arizona db
CREATE TABLE
    coconino (
        place_id INT AUTO_INCREMENT PRIMARY KEY, -- place_id: unique auto-increment ID (primary key)
        place_name VARCHAR(100) NOT NULL, -- place_name: required name of the place
        place_type VARCHAR(50) NOT NULL, -- place_type: required category/type of place
        city_location VARCHAR(75), -- city_location: optional city info
        established_date DATE, -- established_date: optional founding date
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- created_at: timestamp of record creation
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- updated_at: auto-updated timestamp on changes
        -- defining indexes
        INDEX idx_place_type (place_type),
        INDEX idx_city_location (city_location),
        INDEX idx_established_date (established_date)
    );

-- inserting researched data about coconino
INSERT INTO
    coconino (
        place_name,
        place_type,
        city_location,
        established_date
    )
VALUES
    (
        'Grand Canyon National Park (South Rim)',
        'National Park',
        'Grand Canyon Village',
        '1919-02-26'
    ),
    (
        'Lowell Observatory',
        'Observatory',
        'Flagstaff',
        '1894-05-28'
    ),
    (
        'Walnut Canyon National Monument',
        'National Monument',
        'Flagstaff',
        '1915-11-30'
    ),
    (
        'Museum of Northern Arizona',
        'Museum',
        'Flagstaff',
        '1928-01-01'
    ),
    (
        'Arizona Snowbowl',
        'Ski Resort',
        'Flagstaff',
        '1938-12-17'
    ),
    (
        'Wupatki National Monument',
        'National Monument',
        'Flagstaff',
        '1924-12-09'
    ),
    (
        'Meteor Crater',
        'Impact Site',
        'Winslow',
        '1903-02-01'
    ),
    (
        'Flagstaff Arboretum',
        'Botanical Garden',
        'Flagstaff',
        '1981-06-01'
    ),
    (
        'Riordan Mansion State Historic Park',
        'Historic Site',
        'Flagstaff',
        '1983-08-01'
    );

-- display table contents
SELECT
    place_id,
    place_name,
    city_location,
    established_date,
    created_at
FROM
    coconino
ORDER BY
    established_date
    -- switching to California db
    -- USE california;

-- switching to Colorado db
-- USE colorado;
-- switching to Florida db
-- USE florida;
-- switching to New York db
-- USE new_york;