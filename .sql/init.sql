-- psql -c 'CREATE DATABASE "order";'

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE horses (
    horse_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    description VARCHAR(255)
);

INSERT INTO users (username, password)
VALUES ('admin',SUBSTR((RANDOM())::VARCHAR(255),3,16)),
       ('bob','marlins66'),
       ('charlie','iloveyou'),
       ('alex','password123'),
       ('dylan','1q2w3e4r');

INSERT INTO horses (name, birthdate, description)
VALUES ('James','2000-07-03','Funny'),
       ('Melissa','1999-12-09',NULL),
       ('Anton','1997-10-05','Russian, I think'),
       ('Leana','1998-12-23',NULL),
       ('Susanne','2002-05-12','Blondes have more fun'),
       ('Edward','1964-08-15','Loves starwars'),
       ('Roberta','1993-07-31',NULL),
       ('Brenda','1972-06-18','Is a Gemini'),
       ('Susie','1977-06-04','Also a Gemini'),
       ('Aaron','1983-05-25',NULL);