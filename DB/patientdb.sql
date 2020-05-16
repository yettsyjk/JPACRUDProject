-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema patientdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `patientdb` ;

-- -----------------------------------------------------
-- Schema patientdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `patientdb` DEFAULT CHARACTER SET utf8 ;
USE `patientdb` ;

-- -----------------------------------------------------
-- Table `patient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patient` ;

CREATE TABLE IF NOT EXISTS `patient` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `physician_last_name` VARCHAR(45) NOT NULL,
  `physician_specialty` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS patient@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'patient'@'localhost' IDENTIFIED BY 'patient';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'patient'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `patient`
-- -----------------------------------------------------
START TRANSACTION;
USE `patientdb`;
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (1, 'Laura', 'Croft', 'lcroft@gmail.com', 'Spacemen', 'Surgery');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (2, 'Rick', 'Ross', 'smile@aol.com', 'Brader', 'Internal');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (3, 'Tom', 'Garcia', 'chase@yahoo.com', 'Victor', 'Orthopaedics');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (4, 'Henry', 'Smith', 'bigs@gmail.com', 'Chu', 'Neurology');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (5, 'Stella', 'Astamois', 'sa@outlook.com', 'Brooks', 'Surgery');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (6, 'Terra', 'Smith', 'ts@yahoo.com', 'Chu', 'Internal');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (7, 'Tom', 'Brady', 'tdawg@yahoo.com', 'Brader', 'Orthopaedics');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (8, 'Mel', 'Brooks', 'onetwothree@aol.com', 'Victor', 'Surgery');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (9, 'Steven', 'Schwartz', 'mainguy@yahoo.com', 'Chu', 'Neurology');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (10, 'Clark', 'Kent', 'superman@yahoo.com', 'Brooks', 'Internal');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `physician_last_name`, `physician_specialty`) VALUES (11, 'Taylor', 'Rains', 'thisone@outlook.com', 'Selma', 'Surgery');

COMMIT;

