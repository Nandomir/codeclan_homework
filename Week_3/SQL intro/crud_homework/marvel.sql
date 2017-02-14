DROP TABLE 'attendances';
DROP TABLE 'movies';
DROP TABLE 'people';

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE attendances (
	id SERIAL8 PRIMARY KEY,
	person_id INT REFERENCES people(id) ON DELETE CASCADE,
	movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO people (name) VALUES ('Adam  Baxter');
INSERT INTO people (name) VALUES ('Alice Loudon');
INSERT INTO people (name) VALUES ('Chris Brown');
INSERT INTO people (name) VALUES ('Colin Farquhar');
INSERT INTO people (name) VALUES ('David  Hale');
INSERT INTO people (name) VALUES ('Douglas Crooke');
INSERT INTO people (name) VALUES ('Ewen Carr');
INSERT INTO people (name) VALUES ('Ferdinando Sendyka');
INSERT INTO people (name) VALUES ('Craig Morton');
INSERT INTO people (name) VALUES ('Andrew');
INSERT INTO people (name) VALUES ('Andrew');
INSERT INTO people (name) VALUES ('Graeme Bell');
INSERT INTO people (name) VALUES ('Josef Meszaros');
INSERT INTO people (name) VALUES ('Km North');
INSERT INTO people (name) VALUES ('Leon-Paul Hart');
INSERT INTO people (name) VALUES ('Lewis Brown');
INSERT INTO people (name) VALUES ('Richard Page Croft');
INSERT INTO people (name) VALUES ('Rob Flett');
INSERT INTO people (name) VALUES ('Robert Ball');
INSERT INTO people (name) VALUES ('Robert Brice');
INSERT INTO people (name) VALUES ('Ross Crichton');
INSERT INTO people (name) VALUES ('Simon Smith');
INSERT INTO people (name) VALUES ('Suzanne Aitchison');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '21:00');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '14:20');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:45');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '22:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '16:45');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '21:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '17:30');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '14:30');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '20:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '17:40');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '16:35');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '23:30');

INSERT INTO attendances (person_id, movie_id) VALUES (1, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (18, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (23, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (23, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (23, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (23, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 4);