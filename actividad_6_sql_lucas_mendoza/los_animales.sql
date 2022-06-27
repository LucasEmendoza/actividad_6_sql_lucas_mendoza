-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Volcando estructura para tabla los_animales.conservations_status
DROP TABLE IF EXISTS `conservations_status`;
CREATE TABLE IF NOT EXISTS `conservations_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.conservations_status: ~5 rows (aproximadamente)
DELETE FROM `conservations_status`;
INSERT INTO `conservations_status` (`id`, `name`) VALUES
	(1, 'amenazada'),
	(2, 'bajo riesgo'),
	(3, 'extinta'),
	(4, 'preocupación menor'),
	(5, 'vulnerable ');

-- Volcando estructura para tabla los_animales.displacements_form
DROP TABLE IF EXISTS `displacements_form`;
CREATE TABLE IF NOT EXISTS `displacements_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.displacements_form: ~4 rows (aproximadamente)
DELETE FROM `displacements_form`;
INSERT INTO `displacements_form` (`id`, `name`) VALUES
	(1, 'cuadrupedo'),
	(2, 'bipedo'),
	(3, 'repta'),
	(4, 'nada');

-- Volcando estructura para tabla los_animales.embryonics_development
DROP TABLE IF EXISTS `embryonics_development`;
CREATE TABLE IF NOT EXISTS `embryonics_development` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.embryonics_development: ~3 rows (aproximadamente)
DELETE FROM `embryonics_development`;
INSERT INTO `embryonics_development` (`id`, `name`) VALUES
	(1, 'oviparo'),
	(2, 'oviviparo'),
	(3, 'viviparo');

-- Volcando estructura para tabla los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla relaciona los habitats de los animales del mundo.';

-- Volcando datos para la tabla los_animales.habitats: ~3 rows (aproximadamente)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `name`) VALUES
	(1, 'maritimo'),
	(2, 'terrestre'),
	(3, 'aereo');

-- Volcando estructura para tabla los_animales.habitats_species_animal
DROP TABLE IF EXISTS `habitats_species_animal`;
CREATE TABLE IF NOT EXISTS `habitats_species_animal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `specie_animal_id` int(10) unsigned NOT NULL,
  `habitat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats_species_animal: ~13 rows (aproximadamente)
DELETE FROM `habitats_species_animal`;
INSERT INTO `habitats_species_animal` (`id`, `specie_animal_id`, `habitat_id`) VALUES
	(1, 1, 2),
	(2, 2, 3),
	(3, 3, 1),
	(4, 4, 2),
	(5, 5, 3),
	(6, 6, 2),
	(7, 7, 2),
	(8, 8, 2),
	(9, 9, 2),
	(10, 10, 2),
	(11, 11, 2),
	(12, 12, 1),
	(13, 13, 2);

-- Volcando estructura para tabla los_animales.species_animal
DROP TABLE IF EXISTS `species_animal`;
CREATE TABLE IF NOT EXISTS `species_animal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `type_nutrition_id` varchar(45) NOT NULL,
  `development_embryonic_id` varchar(45) NOT NULL,
  `conservation_status_id` varchar(45) NOT NULL,
  `displacement_form_id` int(11) NOT NULL,
  `type_specie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que relaciona diferentes tipos de animales.';

-- Volcando datos para la tabla los_animales.species_animal: ~13 rows (aproximadamente)
DELETE FROM `species_animal`;
INSERT INTO `species_animal` (`id`, `name`, `amount`, `type_nutrition_id`, `development_embryonic_id`, `conservation_status_id`, `displacement_form_id`, `type_specie`) VALUES
	(1, 'leon ', 47000, '1', '3', '2', 1, 1),
	(2, 'murcielago', 57900340, '2', '3', '5', 4, 1),
	(3, 'tiburòn', 860000, '1', '2', '2', 4, 4),
	(4, 'jirafa', 59000, '2', '3', '1', 1, 1),
	(5, 'condor', 120, '1', '1', '1', 2, 5),
	(6, 'anacondonda', 32000, '1', '1', '5', 3, 3),
	(7, 'salamandra', 12568990, '3', '2', '4', 1, 2),
	(8, 'cocodrilo', 427000, '1', '1', '5', 1, 3),
	(9, 'rinoceronte blanco', 0, '2', '3', '3', 1, 1),
	(10, 'brontosaurio', 0, '2', '1', '3', 1, 3),
	(11, 'oso de anteojos', 8000, '3', '1', '1', 1, 1),
	(12, 'ballena', 60000, '3', '1', '1', 4, 4),
	(13, 'dodo', 0, '2', '1', '3', 2, 5);

-- Volcando estructura para tabla los_animales.types_nutrition
DROP TABLE IF EXISTS `types_nutrition`;
CREATE TABLE IF NOT EXISTS `types_nutrition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que reaciona las caracteristicas de alimentacion de los animales.';

-- Volcando datos para la tabla los_animales.types_nutrition: ~3 rows (aproximadamente)
DELETE FROM `types_nutrition`;
INSERT INTO `types_nutrition` (`id`, `name`) VALUES
	(1, 'carnivoro'),
	(2, 'herbivoro'),
	(3, 'omnivoro');

-- Volcando estructura para tabla los_animales.types_specie
DROP TABLE IF EXISTS `types_specie`;
CREATE TABLE IF NOT EXISTS `types_specie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.types_specie: ~5 rows (aproximadamente)
DELETE FROM `types_specie`;
INSERT INTO `types_specie` (`id`, `name`) VALUES
	(1, 'mamifero'),
	(2, 'anfivio'),
	(3, 'reptil'),
	(4, 'peces '),
	(5, 'aves');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
