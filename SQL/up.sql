CREATE TABLE template (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE response(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
response VARCHAR(255),
heure VARCHAR(255),
medic TINYINT,
sante TINYINT,
perso TINYINT,
id_patient INT
);
INSERT INTO response (response, heure, medic, sante, id_patient) VALUE
('Bien','07/12 - 10:25','0', '1', '2'),
('Bien','08/12 - 10:30','0', '1', '2'),
('Non','09/12 - 16:45','1', '0', '2'),
('Trés bien','09/12 - 10:30','1', '0', '2'),
('Non','10/12 - 11:30','0', '1', '2'),
('Bien','07/12 - 10:25','0', '1', '1'),
('Trés bien','08/12 - 10:30','0', '1', '1'),
('Oui','09/12 - 10:45','1', '0', '1'),
('Trés bien','09/12 - 10:30','1', '0', '1'),
('Oui','10/12 - 10:30','0', '1', '1');



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
