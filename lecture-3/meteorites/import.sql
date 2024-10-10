-- frop table if they alread exist
DROP TABLE IF EXISTS meteorites;


-- create table meteorites and meteorites_temp
CREATE TABLE meteorites (
    id INTEGER,
    name TEXT,
    class TEXT,
    mass NUMERIC,
    discovery TEXT,
    year INTEGER,
    lat NUMERIC,
    long NUMERIC,
    PRIMARY KEY(id)
);

CREATE TABLE meteorites_temp (
    name TEXT,
    id INTEGER,
    name_type TEXT,
    class TEXT,
    mass NUMERIC,
    discovery TEXT,
    year INTEGER,
    lat NUMERIC,
    long NUMERIC
);


-- import data from meteorites.csv into meteorites_temp
.import --csv meteorites.csv meteorites_temp


-- clean data
UPDATE meteorites_temp
SET mass = NULL
WHERE mass = 0;

UPDATE meteorites_temp
SET year = NULL
WHERE year = '';

UPDATE meteorites_temp
SET long = NULL, lat = NULL
WHERE long = 0 AND lat = 0;


-- insert into meteorites the valid data in meteorites_temp
INSERT INTO meteorites(name, class, mass, discovery, year, lat, long)
SELECT name, class, ROUND(mass, 2), discovery, year, ROUND(lat, 2), ROUND(long, 2) FROM meteorites_temp
WHERE name_type != 'Relict'
ORDER BY year, name;


-- delete meteories_temp
DROP TABLE meteorites_temp;
