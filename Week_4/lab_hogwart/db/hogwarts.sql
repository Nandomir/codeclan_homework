DROP TABLE if exists students;
DROP TABLE if exists houses;

CREATE TABLE students (
id SERIAL4 PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
house VARCHAR(255),
age INT2
);

CREATE TABLE houses (
id SERIAL4 PRIMARY KEY,
house_name VARCHAR(255),
logo VARCHAR(255)
);