-- select database
USE arizona;

-- create table for arizona db
CREATE TABLE
    arizona (
        place_id AS AUTO_INCREMENT PRIMARY KEY, -- place_id: unique auto-increment ID (primary key)
        place_name VARCHAR(100) NOT NULL, -- place_name: required name of the place
        place_type VARCHAR(50) NOT NULL, -- place_type: required category/type of place
        city_location VARCHAR(75), -- city_location: optional city info
        description TEXT, -- description: optional detailed text
        established_date DATE, -- established_date: optional founding date
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- created_at: timestamp of record creation
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- updated_at: auto-updated timestamp on changes
        -- defining indexes
        INDEX idx_place_type (place_type),
        INDEX idx_city_location (city_location),
        INDEX idx_established_date (established_date)
    );

-- inserting researched data about arizona
INSERT INTO
    arizona (
        place_name,
        place_type,
        city_location,
        description,
        established_date
    )
VALUES
    (
        'Universal Studios Hollywood',
        'Theme Park',
        'Hollywood',
        'Movie studio and theme park featuring rides and attractions based on popular films',
        '1964-07-15'
    ),
SELECT
    place_id,
    place_name,
    city_location,
    description,
    established_date,
    created_at
FROM
    arizona
ORDER BY
    established_date

-- switching to California db
USE california;

-- switching to Colorado db
USE colorado;

-- switching to Florida db
USE florida;

-- switching to New York db
USE new_york;