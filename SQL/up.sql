CREATE TABLE template (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE response(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
response VARCHAR(255));

INSERT into template VALUE
('1', 'Aucun'),
('2', 'Grossesse'),
('3', 'Diabète'),
('4', 'Echographie'),
('5', 'Dépression'),
('6', 'Personal-Doctor'),
('7', 'Question');

CREATE TABLE patient (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT into patient VALUE
('1', 'Marie'),
('2', 'Sophie'),
('3', 'Bruno'),
('4', 'Henri'),
('5', 'Patrick'),
('6', 'Meï');
