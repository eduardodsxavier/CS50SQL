# Design Document

By Eduardo da Silva

## Scope

This database serve the purpose of save and search dnd magics for multiples characters. The database include a characters table, a magics know for each character table and a magics table. This database don't contain a user table, because the purpose of this database is to be used as a local storege for mobile applications, without a network connection with others databases.  

## Functional Requirements

With this database the user shold be able to create multiple characters in the database, save a list of the magics that each character have and save multiples magics and the information about the magics. In this database you shouldn't be able to create a user in the database, create comments about magics or characters and save others informations beside the character know magics.

## Representation

### Entities
In this section you should answer the following questions:

* Which entities will you choose to represent in your database?
* What attributes will those entities have?
* Why did you choose the types you did?
* Why did you choose the constraints you did?

#### characters 
This database have the characters informations 
- id integer that represents the index of the char 
- name text that represents the name of the character

#### know 
This database have the magics that the characters have 
- character_id integer the index of the character
- magic_id integer the index of the magic that the character have 

#### magics
This database have the magics and the magic informations 
- id integer the index of the character 
- name text the name of the magic 
- level integer the level of the magic 
- range text the range og the magic 
- material text the required materials of the magic 
- conjuration_time text the necessary action for the magic 
- duration text the time that the magic still working
- description text the description of the magic 

### Relationships

#### characters to know 
A character have one to many in relation to know 
and know have a one to many in relation to character 

#### know to magics 
A magics have one to many in relation to know 
and know have a one to many in relation to magics 

## Optimizations

#### indexes
characters_id_index on know in character_id

magics_index on magics in id, name and level

#### views 
character_magics a virtual table that join magics and know and show the magics of every character

## Limitations
In the final project the database cold not save information about multiple databases.
The user should save every magic in the database if they want to use that magic.
