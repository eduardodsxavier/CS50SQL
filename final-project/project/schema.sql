-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

-- a table fot diferent characters
CREATE TABLE characters (
    id INTEGER,
    name TEXT,
    PRIMARY KEY(id)
);

-- a table for magics that a character know
CREATE TABLE know (
    character_id INTEGER,
    magic_id INTEGER,
    PRIMARY KEY(character_id, magic_id),
    FOREIGN KEY(character_id) REFERENCES characters(id),
    FOREIGN KEY(magic_id) REFERENCES magics(id)
);

-- a table for a list of magics
CREATE TABLE magics (
    id INTEGER,
    name TEXT NOT NULL,
    level INTEGER NOT NULL,
    range TEXT,
    material TEXT,
    conjuration_time TEXT NOT NULL,
    duration TEXT NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY(id)
);

-- a index for the character id in the know table
CREATE INDEX characters_id_index ON know(character_id);

-- a index for the id, name and level of a magic
CREATE INDEX magics_index ON magics(id, name, level);

-- a view that have the magics that a character know with the magic description
CREATE VIEW character_magics AS
SELECT * FROM magics
JOIN know ON know.magic_id = magics.id;
