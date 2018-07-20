DROP TABLE expeditions;
DROP TABLE adventurers;
DROP TABLE patrons;

CREATE TABLE adventurers
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  title VARCHAR(255),
  class VARCHAR(255),
  level INT2,
  status VARCHAR(255),
  adventure VARCHAR(255),
  background VARCHAR(255)
);

CREATE TABLE patrons
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  background VARCHAR(255)
);

CREATE TABLE expeditions
(
  id SERIAL8 PRIMARY KEY,
  adventurer_id INT8 REFERENCES adventurers(id),
  patron_id INT8 REFERENCES patrons(id),
  title VARCHAR(255),
  price INT8,
  objective VARCHAR(255)
);
