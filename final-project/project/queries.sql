-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- search magics that a character know
SELECT * FROM character_magics
WHERE know.character_id = 1;

-- search magics that a character know of a especific level
SELECT * FROM character_magics
WHERE know.character_id = 1
AND level = 3;

-- insert a new magic
INSERT INTO magics(name, level, range, material, conjuration_time, duration, description)
VALUES ("fire bolt", 5, 30, "fire", "1 action", "3 tunrs", "throll a fire bolt");

-- make a character know a new magic
INSERT INTO know (character_id, magic_id)
VALUES (1, 1);
