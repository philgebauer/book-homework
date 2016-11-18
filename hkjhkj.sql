CREATE TABLE people (
id SERIAL PRIMARY KEY,
first_name VARCHAR(80),
last_name VARCHAR (80)
);

INSERT INTO people (first_name, last_name)
VALUES (‘phil’, ‘gebauer’);

SELECT * FROM people;

— you can create multiple tables


CREATE TABLE jobs(
id SERIAL PRIMARY KEY,
title VARCHAR(80),
people_id INTEGER REFERENCES people
);

INSERT INTO jobs(title, poeple_id)
VALUES (‘Astronaut’, 1);

INSERT INTO jobs(title, poeple_id)
VALUES (‘farmer’, 1);

INSERT INTO jobs(title, poeple_id)
VALUES (‘golfer’, 1);

INSERT INTO jobs(title, poeple_id)
VALUES (‘Cat Surgeon’, 1);

INSERT INTO jobs(title, poeple_id)
VALUES (‘farmer’, 2);

etc….


SELECT * FROM jobs;


—JOINS _—

SELECT *
FROM PEOPLE
JOIN jobs
ON people.id = jobs.people.id;

—selecting one person
WHERE people.first_name=‘phil’;
—find all phil’s


CREATE TABLE people_jobs (
people.id INTEGER REFERENCES people,
jobs_id INTEGER REFERENCES jobs
);

INSERT INTO people_jobs
VALUES(1,2),(1,5),(2,5),(3,5);


——————————————


INSERT INTO stats (recorded, inches, drought, city)
VALUES ('1997-10-02', 20, true, 'Chicago'),
('1997-10-12', 10, true, 'Chicago'),
('2001-11-02', 1, false, 'Detroit'),
('2010-08-05', 3, true, 'Detroit'),
('2010-07-06', 0, false, 'Detroit'),
('2016-09-20', 3, true, 'Las Vegas');
