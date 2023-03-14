CREATE TABLE description
(
	id_films integer PRIMARY KEY,
	name_films varchar(128) NOT NULL,
	year_films integer NOT NULL,
	country_films varchar (128) NOT NULL
);

CREATE TABLE person
(id_person integer PRIMARY KEY,
position_person varchar (128) NOT NULL,
name_person varchar (128) NOT NULL,
fk_id_person integer REFERENCES description(id_films)
);

CREATE TABLE actors
(id_actors integer PRIMARY KEY,
position_artors varchar (128) NOT NULL,
name_actors varchar (128) NOT NULL
);

CREATE TABLE genre
(id_genre integer PRIMARY KEY,
name_genre varchar (128) NOT NULL);

CREATE TABLE audience
(id_country integer PRIMARY KEY,
name_country varchar (128) NOT NULL,
amount_audience integer NOT NULL,
fk_id_audience integer REFERENCES description(id_films)
);

INSERT INTO description
VALUES
(1, 'The Green Mile', 1999, 'USA'),
(2, 'Outcast', 2000, 'USA'),
(3, 'Jumanji', 1995, 'USA'),
(4, 'Beethoven',1991, 'USA');

INSERT INTO person
VALUES
(1, 'director', 'Frank Darabont', 1),
(2,'scenario', 'Frank Darabont', 1),
(3,'producer', 'Frank Darabont',1),
(4,'operator', 'David Tattersall',1),
(5,'composer', 'Thomas Newman',1),
(6, 'artist', 'Terence Marsh',1),

(7, 'director', 'Robert Zemeckis', 2),
(8,'scenario', 'William Broyles Jr.', 2),
(9,'producer', 'Tom Hanks', 2),
(10,'operator', 'Don Burgess', 2),
(11,'composer', 'Alan Silvestri',2),
(12, 'artist', 'Rick Carter',2),

(14, 'director', 'Joe Johnston', 3),
(15,'scenario', 'Jonathan Hensley', 3),
(16,'producer', 'Scott Kroopf',3),
(17,'operator', 'Thomas E. Ackerman',3),
(18,'composer', 'James Horner',3),
(19, 'artist', 'James D. Bissell',3),

(20, 'director', 'Brian Levant', 4),
(21,'scenario', 'John Hughes', 4),
(22,'producer', 'Michael S. Gross ',4),
(23,'operator', 'Victor J. Kemper',4),
(24,'composer', 'Randy Edelman',4),
(25, 'artist', 'Alex Tavoularis',4);

INSERT INTO actors
VALUES
(1, 'starring', 'Tom Hanks'),
(2, 'starring', 'David Morse'),
(3, 'starring', 'Bonnie Hunt'),
(4, 'starring', 'Michael Clarke Duncan'),
(5, 'starring', 'James Cromwell'),
(6, 'starring', 'Michael Jeter'),
(7, 'starring','Graham Green'),
(8, 'starring', 'Doug Hutchison'),
(9, 'starring', 'Sam Rochwell'),
(10, 'starring', 'Barry Pepper'),
(11, 'dublicated', 'Vsevolod Kuznetsov'),
(12, 'dublicated','Vladimir Antonik'),
(13, 'dublicated', 'Lyubov Germanova'),
(14, 'dublicated', 'Valentin Golubenko'),
(15, 'dublicated', 'Alexander Belyavsky'),
(16, 'starring', 'Helen Hunt'),
(17, 'starring', 'Nick Searcy'),
(18, 'starring', 'Jennifer Lewis'),
(19, 'starring', 'Paul Sanchez'),
(20, 'starring', 'Larry White'),
(21, 'dublicated', 'Valery Storozhik'),
(22, 'dublicated', 'Elena Borzunova'),
(23, 'dublicated', 'Alexander Rakhlenko'),
(24, 'starring', 'Robin Williams'),
(25, 'starring', 'Kirsten Dunst'),
(26, 'starring', 'Bradley Pierce'),
(27, 'starring', 'David Alan Grier'),
(28, 'dublicated', 'Vadim Andreev'),
(29, 'dublicated', 'Marina Dyuzheva'),
(30, 'starring', 'Charles Grodin'),
(31, 'starring', 'Dean Jones'),
(32, 'starring', 'Oliver Platt'),
(33, 'dublicated', 'Gennady Novikov');

 
CREATE TABLE description_actors
(id_films integer REFERENCES description(id_films),
id_actors integer REFERENCES actors(id_actors),
CONSTRAINT fk_description_actors PRIMARY KEY (id_films, id_actors));
 
INSERT INTO description_actors
VALUES
(1,1),
(2,1),
(1,2),
(1,3),
(2,3),
(3,3),
(4,3),
(1,4),
(1,5),
(1,6),
(2,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11),
(1,12),
(4,12),
(1,13),
(4,13),
(1,14),
(2,14),
(1,15),
(3,15),
(2,16),
(2,17),
(3,17),
(2,18),
(3,18),
(2,19),
(2,20),
(2,21),
(4,21),
(2,22),
(2,23),
(3,23),
(3,24),
(3,25),
(3,26),
(3,27),
(3,28),
(3,29),
(4,29),
(4,30),
(4,31),
(4,32),
(4,33);

INSERT INTO genre
VALUES
(1, 'drama'), 
(2, 'comedy'),
(3, 'family'),
(4, 'fantasy'),
(5, 'adventure'),
(6, 'melodrama'),
(7, 'crime'); 


CREATE TABLE description_genre
(id_films integer REFERENCES description(id_films),
id_genre integer REFERENCES genre(id_genre),
CONSTRAINT fk_description_genre PRIMARY KEY (id_films, id_genre));

INSERT INTO description_genre
VALUES
(1,1),
(2,1),
(4,1),
(3,2),
(4,2),
(3,3),
(4,3),
(1,4),
(3,4),
(4,4),
(2,5),
(3,5),
(2,6),
(1,7);

INSERT INTO audience
VALUES
(1, 'USA', 26e6, 1),
(2, 'Germany', 2.1e6, 1),
(3,'Greece', 182e3, 1),
(4, 'Norway', 110e3, 1),
(5, 'Finland', 32e3, 1),
(6, 'USA', 43e6, 2),
(7, 'Germany', 4.9e6, 2),
(8, 'Czech', 301e3, 2),
(9, 'Austria', 387e3, 2),
(10,'Sweden', 3e3, 2),
(11, 'USA', 22e6, 3),
(12, 'Spain', 2.2e6,3),
(13,'Belgium', 400e3, 3),
(14, 'France', 2e6, 3),
(15, 'Great Britain', 4e3, 3),
(16, 'USA', 13e6, 4),
(17, 'Germany', 2.4e6, 4),
(18, 'Denmark', 151, 4),
(19, 'France', 2.4e6, 4),
(20, 'Spain', 8.9e5, 4);

