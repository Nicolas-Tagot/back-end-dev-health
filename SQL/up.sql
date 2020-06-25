CREATE TABLE template (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

DROP TABLE IF EXISTS `response`;
CREATE TABLE `response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response` varchar(255) DEFAULT NULL,
  `heure` datetime DEFAULT CURRENT_TIMESTAMP,
  `medic` tinyint(4) DEFAULT NULL,
  `sante` tinyint(4) DEFAULT NULL,
  `perso` tinyint(4) DEFAULT NULL,
  `id_patient` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
