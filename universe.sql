-- create a database named universe
CREATE DATABASE universe;

-- Connect to the database
\c universe

-- Add tables named galaxy, star, planet, moon and nebula
CREATE TABLE galaxy();
CREATE TABLE star();
CREATE TABLE planet();
CREATE TABLE moon();
CREATE TABLE nebula();

-- Add a column to galaxy named galaxy_id with a data type SERIAL so it increments automatically when used as a primary key later. 
ALTER TABLE galaxy ADD COLUMN galaxy_id SERIAL;
-- Add a column to star named star_id with a data type SERIAL so it increments automatically when used as a primary key later. 
ALTER TABLE star ADD COLUMN star_id SERIAL;
-- Add a column to planet named planet_id with a data type SERIAL so it increments automatically when used as a primary key later. 
ALTER TABLE planet ADD COLUMN planet_id SERIAL;
-- Add a column to moon named moon_id with a data type SERIAL so it increments automatically when used as a primary key later. 
ALTER TABLE moon ADD COLUMN moon_id SERIAL;
-- Add a column to nebula named nebula_id with a data type SERIAL so it increments automatically when used as a primary key later. 
ALTER TABLE nebula ADD COLUMN nebula_id SERIAL;

-- Add a primary key galaxy_id to galaxy table
ALTER TABLE galaxy ADD PRIMARY KEY(galaxy_id);
-- Add a primary key star_id to star table
ALTER TABLE star ADD PRIMARY KEY(star_id);
-- Add a primary key planet_id to planet table
ALTER TABLE planet ADD PRIMARY KEY(planet_id);
-- Add a primary key to moon_id to moon table
ALTER TABLE moon ADD PRIMARY KEY(moon_id);
-- Add a primary key to nebula_id to nebula table
ALTER TABLE nebula ADD PRIMARY KEY(nebula_id);

-- All 5 tables contain a name column with type VARCHAR that can contain a maximum of 60 characters.
ALTER TABLE galaxy ADD COLUMN name VARCHAR(60);
ALTER TABLE star ADD COLUMN name VARCHAR(60);
ALTER TABLE planet ADD COLUMN name VARCHAR(60);
ALTER TABLE moon ADD COLUMN name VARCHAR(60);
ALTER TABLE nebula ADD COLUMN name VARCHAR(60);

-- At least one column from each table should be required to be UNIQUE (UNIQUE constraint is used to enforce one-to-one relationship between two tables' rows) 
ALTER TABLE galaxy ADD CONSTRAINT unique_galaxy_name UNIQUE(name);
ALTER TABLE star ADD CONSTRAINT unique_star_name UNIQUE(name);
ALTER TABLE planet ADD CONSTRAINT unique_planet_name UNIQUE(name);
ALTER TABLE moon ADD CONSTRAINT unique_moon_name UNIQUE(name);
ALTER TABLE nebula ADD CONSTRAINT unique_nebula_name UNIQUE(name);

-- At least two columns per table should not accept NULL values (I chose id and name columns)
ALTER TABLE galaxy ALTER COLUMN galaxy_id SET NOT NULL;
ALTER TABLE galaxy ALTER COLUMN name SET NOT NULL;
ALTER TABLE star ALTER COLUMN star_id SET NOT NULL;
ALTER TABLE star ALTER COLUMN name SET NOT NULL;
ALTER TABLE planet ALTER COLUMN planet_id SET NOT NULL;
ALTER TABLE planet ALTER COLUMN name SET NOT NULL;
ALTER TABLE moon ALTER COLUMN moon_id SET NOT NULL;
ALTER TABLE moon ALTER COLUMN name SET NOT NULL;
ALTER TABLE nebula ALTER COLUMN nebula_id SET NOT NULL;
ALTER TABLE nebula ALTER COLUMN name SET NOT NULL;

-- galaxy table has a galaxy_types column with type VARCHAR that can contain a maximum of 60 characters.
ALTER TABLE galaxy ADD COLUMN galaxy_types VARCHAR(60);
-- star table has a star_types column with type VARCHAR that can contain a maximum of 60 characters.
ALTER TABLE star ADD COLUMN star_types VARCHAR(60);
-- planet table has a planet_types column with type VARCHAR that can contain a maximum of 60 characters.
ALTER TABLE planet ADD COLUMN planet_types VARCHAR(60);
-- galaxy, star, planet and moon tables have age_in_millions_of_years column with type INT 

ALTER TABLE galaxy ADD COLUMN age_in_millions_of_years INT;
ALTER TABLE star ADD COLUMN age_in_millions_of_years INT;
ALTER TABLE planet ADD COLUMN age_in_millions_of_years INT;
ALTER TABLE moon ADD COLUMN age_in_millions_of_years INT;

-- galaxy, star and planet tables have distance_from_earth_in_light_years column with type NUMERIC(10, 5)
ALTER TABLE galaxy ADD COLUMN distance_from_earth_in_light_years NUMERIC(10, 5);
ALTER TABLE star ADD COLUMN distance_from_earth_in_light_years NUMERIC(10, 5);
ALTER TABLE planet ADD COLUMN distance_from_earth_in_light_years NUMERIC(10, 5);

-- moon table has a distance_from_earth_in_kilometers column with type INT
ALTER TABLE moon ADD COLUMN distance_from_earth_in_kilometers INT;

-- planet table has a has_life column with type BOOLEAN
ALTER TABLE planet ADD COLUMN has_life BOOLEAN;

-- moon table has a is_spherical column with type BOOLEAN
ALTER TABLE moon ADD COLUMN is_spherical BOOLEAN;

-- nebula table has a description column with type TEXT
ALTER TABLE nebula ADD COLUMN description TEXT;

-- Insert 6 rows to the galaxy table
INSERT INTO galaxy(galaxy_id, name, galaxy_types, age_in_millions_of_years, distance_from_earth_in_light_years) 
VALUES
(1, 'Milky Way', 'Spiral', 13800, 0), 
(2, 'Andromeda', 'Spiral', 10000, 2.537), 
(3, 'Triangulum', 'Spiral', 3000, 3), 
(4, 'Sombrero Galaxy', 'Spiral', 1000, 28), 
(5, 'Messier 87', 'Elliptical', 13000, 53), 
(6, 'Whirlpool Galaxy', 'Spiral', 1000, 31);

-- Intert 6 rows to the star table
INSERT INTO star(star_id, name, star_types, age_in_millions_of_years, distance_from_earth_in_light_years) 
VALUES
(1, 'Sun', 'G-type', 4600, 0), 
(2, 'Sirius', 'A-type', 120000, 8.6), 
(3, 'Alpha Centauri', 'G-type', 5200, 4.37), 
(4, 'Betelgeuse', 'Red Supergiant', 8000, 642), 
(5, '	Proxima Centauri', 'Red Dwarf', 4850, 4.24), 
(6, 'Rigel', 'Blue Supergiant', 8000, 860);

-- Insert 12 rows to the planet table
INSERT INTO planet(planet_id, name, planet_types, age_in_millions_of_years, distance_from_earth_in_light_years, has_life) 
VALUES
(1, 'Earth', 'Terrestrial', 4500, 0, 'YES'), 
(2, 'Mars', 'Terrestrial', 4600, 0.00015, 'NO'), 
(3, 'Venus', 'Terrestrial', 4600, 0.00025, 'NO'), 
(4, 'Jupiter', 'Gas Giant', 4600, 5.2, 'NO'), 
(5, 'Saturn', 'Gas Giant', 4500, 9.5, 'NO'), 
(6, 'Uranus', 'Ice Giant', 4500, 19.2, 'NO'), 
(7, 'Neptune', 'Ice Giant', 4500, 30.1, 'NO'), 
(8, 'Mercury', 'Terrestrial', 4600, 0.0001, 'NO'), 
(9, 'Pluto', 'Dwarf Planet', 4600, 39.5, 'NO'), 
(10, 'Kepler-452b', 'Exoplanet', 6000, 1400, NULL), 
(11, 'Proxima B', 'Exoplanet', 4850, 4.2, NULL), 
(12, 'TRAPPIST-1d', 'Exoplanet', 5400, 39.5, NULL);

-- Insert 20 rows to the moon table
INSERT INTO moon(moon_id, name, age_in_millions_of_years, distance_from_earth_in_kilometers, is_spherical) 
VALUES
(1, 'Moon', 4500, 384400, 'YES'), 
(2, 'Io', 4500, 421700, 'YES'), 
(3, 'Europa', 4500, 670900, 'YES'), 
(4, 'Ganymede', 4500, 1070000, 'YES'), 
(5, 'Callisto', 4500, 1882700, 'YES'), 
(6, 'Titan', 4500, 1222000, 'YES'), 
(7, 'Enceladus', 4500, 238000, 'YES'), 
(8, 'Rhea', 4500, 527000, 'YES'), 
(9, 'Mimas', 4500, 185000, 'YES'), 
(10, 'Hyperion', 4500, 1479000, 'YES'), 
(11, 'Miranda', 4500, 129000, 'YES'), 
(12, 'Ariel', 4500, 191000, 'YES'), 
(13, 'Umbriel', 4500, 266000, 'YES'), 
(14, 'Triton', 4500, 354800, 'YES'), 
(15, 'Charon', 4500, 19640000, 'YES'), 
(16, 'Phobos', 4500, 9377, 'YES'), 
(17, 'Deimos', 4500, 23460, 'YES'), 
(18, 'Titan II', 3800, 456000, 'YES'), 
(19, 'Luna', 4500, 384400, 'YES'), 
(20, 'Ceres', 4500, 413000, 'YES');

-- Insert 3 rows to the nebula table
INSERT INTO nebula(nebula_id, name, description) 
VALUES
(1, 'Orion Nebula', 'A bright nebula in the Orion constellation.'), 
(2, 'Eagle Nebula', 'A star-forming region in the Serpens constellation.'), 
(3, 'Crab Nebula', 'The remnant of a supernova explosion in the Taurus constellation.');

-- Add galaxy_id column of type INT to star table
ALTER TABLE star ADD COLUMN galaxy_id INT;
-- Update all rows of the galaxy_id column in star table where there is a NULL value and set them to 1 
UPDATE star SET galaxy_id = 1 WHERE galaxy_id IS NULL;
-- Each "star" has a foreign key galaxy_id that references one of the rows in galaxy 
ALTER TABLE star ADD FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id);

-- Add star_id column of type INT to planet table
ALTER TABLE planet ADD COLUMN star_id INT;
-- Update all rows of the star_id column in planet table where there is a NULL value and set them to 1 
UPDATE planet SET star_id = 1 WHERE star_id IS NULL;
-- Each "planet" has a foreign key star_id that references one of the rows in star 
ALTER TABLE planet ADD FOREIGN KEY(star_id) REFERENCES star(star_id);

-- Add planet_id column of type INT to moon table
ALTER TABLE moon ADD COLUMN planet_id INT;
-- Update all rows of the planet_id column in moon table where there is a NULL value and set them to 1 
UPDATE moon SET planet_id = 1 WHERE planet_id IS NULL;
-- Each "moon" has a foreign key planet_id that references one of the rows in planet 
ALTER TABLE moon ADD FOREIGN KEY(planet_id) REFERENCES planet(planet_id);
