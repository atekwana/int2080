-- kasey atekwana
-- int2080
-- 31/08/25
-- California data base displaying 10 counties and 10 notable attractions

-- select data base
USE california;

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

-- inserting researched data about apache county
INSERT INTO
    santa_cruz_county (
        place_name,
        place_type,
        city,
        county,
        established_date
    )