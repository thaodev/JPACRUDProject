-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema hsptracker
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `hsptracker` ;

-- -----------------------------------------------------
-- Schema hsptracker
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hsptracker` DEFAULT CHARACTER SET utf8 ;
USE `hsptracker` ;

-- -----------------------------------------------------
-- Table `service`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `service` ;

CREATE TABLE IF NOT EXISTS `service` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client` VARCHAR(45) NOT NULL,
  `client_address` VARCHAR(45) NULL,
  `client_city` VARCHAR(45) NULL,
  `employment_type` VARCHAR(45) NULL,
  `service_type` ENUM('HHA', 'SN', 'PDN', 'Therapy') NULL,
  `bill_status` TINYINT NULL,
  `bill_amount` DECIMAL(5,2) NULL,
  `payroll_amount` DECIMAL(5,2) NULL,
  `gross_margin` DECIMAL(5,2) NULL,
  `service_date` VARCHAR(15) NULL,
  `nurse` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS officer@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'officer'@'localhost' IDENTIFIED BY 'officer';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'officer'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `service`
-- -----------------------------------------------------
START TRANSACTION;
USE `hsptracker`;
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `gross_margin`, `service_date`, `nurse`) VALUES (1, 'Michelle Green', '1380 Edwards Cir', 'Idaho', 'Employee', 'SN', 1, 100, 50, NULL, '2022-12-12', 'Tom Land');
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `gross_margin`, `service_date`, `nurse`) VALUES (2, 'Rachel Green', '457 Quinata', 'CS', 'Contractor', 'PDN', 0, 150, 80, NULL, '2022-01-05', 'Tony Graham');
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `gross_margin`, `service_date`, `nurse`) VALUES (3, 'Aspen Tran', '11136 Rockie Ln', 'Parker', 'Employee', 'HHA', 0, 200, 120, NULL, '2022-07-15', 'Iyla Graham');
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `gross_margin`, `service_date`, `nurse`) VALUES (4, 'Robert Lan', '3701 Halowell', 'Aspen', 'Contractor', 'Therapy', 1, 180, 149, NULL, '2022-11-01', 'Nancy Moore');

COMMIT;

