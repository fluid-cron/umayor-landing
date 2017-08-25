-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `ingresos` (`id`, `nombre`, `estado`, `fecha`) VALUES
(1,	'Regular',	1,	'2017-08-23 19:40:42'),
(2,	'Continuidad de Estudios',	1,	'2017-08-23 19:40:41'),
(3,	'Convalidación',	1,	'2017-08-23 19:40:39');

-- 2017-08-24 13:21:22
