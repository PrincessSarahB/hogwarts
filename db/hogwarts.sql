DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses(
id SERIAL PRIMARY KEY,
house_name VARCHAR(255),
url VARCHAR(255)
);

CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house INT REFERENCES houses(id) ON DELETE CASCADE,
  age INT
);
