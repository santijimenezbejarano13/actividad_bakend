-- MySQL Workbench Forward Engineering
-- Modelo: actividad_entregable (Departamento 1 --- N Empleado)

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema actividad_entregable
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema actividad_entregable
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `actividad_entregable` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `actividad_entregable` ;

-- -----------------------------------------------------
-- Table `actividad_entregable`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividad_entregable`.`Departamento` (
  `DeptID` INT NOT NULL AUTO_INCREMENT,
  `NombreDepto` VARCHAR(100) NOT NULL,
  `Ubicacion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DeptID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `actividad_entregable`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividad_entregable`.`Empleado` (
  `EmpID` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Edad` INT NULL,
  `Salario` DECIMAL(10,2) NULL,
  `DeptID` INT NOT NULL,
  PRIMARY KEY (`EmpID`),
  INDEX `fk_Empleado_Departamento_idx` (`DeptID` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_Departamento`
    FOREIGN KEY (`DeptID`)
    REFERENCES `actividad_entregable`.`Departamento` (`DeptID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;