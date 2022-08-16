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
  `employment_type` ENUM('Employee', 'Contractor') NULL,
  `service_type` ENUM('HHA', 'SN', 'PDN', 'Therapy') NULL,
  `bill_status` TINYINT NULL,
  `bill_amount` DECIMAL(5,0) NULL,
  `payroll_amount` DECIMAL(5,0) NULL,
  `service_date` VARCHAR(20) NULL,
  `nurse` VARCHAR(45) NULL,
  `gross_margin` VARCHAR(45) NULL,
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
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (1, 'Aspen Nguyen', '3174 Nunc Street', 'Estes Park', 'Employee', 'HHA', 1, 253, 184, '8/12/2021', 'Mateo Medina', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (2, 'Iyla Bartholomew', '674 Nec Street', 'Durango', 'Contractor', 'HHA', 1, 345, 135, '1/13/2021', 'Logan Hall', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (3, 'Lexie Frey', '459-4760 Vel Street', 'Grand Junction', 'Contractor', 'PDN', 1, 256, 139, '7/22/2021', 'Ethan Hall', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (4, 'Tony Byrum', 'P.O. Box 382, 5153 Nonummy Rd.', 'Aspen', 'Contractor', 'SN', 1, 252, 155, '12/1/2021', 'Aiden Shipwash', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (5, 'Ariel Paul', '129-5108 Libero Ave', 'Boulder', 'Contractor', 'Therapy', 1, 349, 146, '7/9/2021', 'Logan Zimmerman', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (6, 'David Quinata', 'Ap #954-8135 Arcu. Ave', 'Vail', 'Contractor', 'Therapy', 1, 340, 121, '10/9/2021', 'Scott Culver', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (7, 'Robert Tracy', 'Ap #195-3506 Aliquam Av.', 'Loveland', 'Contractor', 'Therapy', 1, 263, 165, '11/18/2021', 'Jazmyn Everly', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (8, 'Lyla Edwards', '813-7463 Vitae Avenue', 'Denver', 'Contractor', 'PDN', 1, 287, 188, '2/13/2021', 'Rubi Estrada', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (9, 'Lewis Jacket', 'P.O. Box 854, 2056 Ante St.', 'Aspen', 'Contractor', 'Therapy', 1, 334, 170, '3/1/2021', 'Jessica Baker', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (10, 'Taehyung Lewis', 'Ap #421-8659 Quam. St.', 'Boulder', 'Contractor', 'Therapy', 1, 333, 126, '9/3/2021', 'Phynix Hairston', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (11, 'Gregory Nguyen', 'Ap #800-6524 Vitae Rd.', 'Denver', 'Contractor', 'Therapy', 1, 312, 138, '9/23/2021', 'Isaac White Crane', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (12, 'Alicia Graham', 'Ap #134-2136 Nullam Road', 'Grand Junction', 'Contractor', 'Therapy', 1, 285, 148, '8/2/2021', 'Tahlaia Delk', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (13, 'Alexander Page', '408-4793 Neque. St.', 'Estes Park', 'Contractor', 'HHA', 1, 254, 123, '4/15/2021', 'Daxton Davis', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (14, 'Loretta Partridge', '499-175 Nec Road', 'Greeley', 'Employee', 'HHA', 1, 334, 173, '9/23/2022', 'Ginger Kreibich', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (15, 'Ben Stonehouse', 'Ap #860-5106 Non, Road', 'Littleton', 'Employee', 'HHA', 1, 290, 161, '5/11/2021', 'Shirice Dettweiler', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (16, 'Aspen Losee', '254-6591 Sed Ave', 'Loveland', 'Employee', 'HHA', 0, 279, 134, '6/3/2021', 'Janice Hicks', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (17, 'Joseph D\'Angelo', '3709 Facilisis. Avenue', 'Aspen', 'Employee', 'SN', 0, 289, 149, '9/1/2021', 'Yvette Lechman', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (18, 'Faith Graham', '744-6201 Velit Ave', 'Durango', 'Employee', 'SN', 0, 296, 174, '12/9/2021', 'Brendan Lim', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (19, 'Barnito Henderson', 'Ap #989-1465 Velit. Avenue', 'Denver', 'Employee', 'SN', 0, 257, 133, '12/1/2021', 'William Gantt', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (20, 'Luke Stamer', '273-411 Facilisis Rd.', 'Durango', 'Employee', 'PDN', 0, 328, 165, '9/2/2021', 'Adison Parker', NULL);
INSERT INTO `service` (`id`, `client`, `client_address`, `client_city`, `employment_type`, `service_type`, `bill_status`, `bill_amount`, `payroll_amount`, `service_date`, `nurse`, `gross_margin`) VALUES (21, 'Sam Radabaugh', 'Ap #545-8844 Tristique Rd.', 'Aspen', 'Employee', 'PDN', 0, 316, 158, '8/9/2021', 'Lamar Desir', NULL);

COMMIT;

