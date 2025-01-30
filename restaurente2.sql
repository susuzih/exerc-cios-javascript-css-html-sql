-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema restaute
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema restaute
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `restaute` DEFAULT CHARACTER SET utf8 ;
USE `restaute` ;

-- -----------------------------------------------------
-- Table `restaute`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaute`.`cliente` (
  `ID_cliente` INT NOT NULL,
  `Nome_cliente` VARCHAR(100) NULL,
  `Telefone` INT NULL,
  PRIMARY KEY (`ID_cliente`),
  UNIQUE INDEX `ID_cliente_UNIQUE` (`ID_cliente` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaute`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaute`.`Pedido` (
  `ID_Pedido` INT NOT NULL,
  `data_pedido` DATE NULL,
  `cliente_ID_cliente` INT NOT NULL,
  PRIMARY KEY (`ID_Pedido`, `cliente_ID_cliente`),
  UNIQUE INDEX `ID_Pedido_UNIQUE` (`ID_Pedido` ASC) VISIBLE,
  INDEX `fk_Pedido_cliente1_idx` (`cliente_ID_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_cliente1`
    FOREIGN KEY (`cliente_ID_cliente`)
    REFERENCES `restaute`.`cliente` (`ID_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaute`.`Prato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaute`.`Prato` (
  `ID_prato` INT NOT NULL,
  `nome_Prato` VARCHAR(100) NULL,
  `Preco` INT NULL,
  PRIMARY KEY (`ID_prato`),
  UNIQUE INDEX `ID_prato_UNIQUE` (`ID_prato` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaute`.`Prato_has_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaute`.`Prato_has_cliente` (
  `Prato_ID_prato` INT NOT NULL,
  `cliente_ID_cliente` INT NOT NULL,
  PRIMARY KEY (`Prato_ID_prato`, `cliente_ID_cliente`),
  INDEX `fk_Prato_has_cliente_cliente1_idx` (`cliente_ID_cliente` ASC) VISIBLE,
  INDEX `fk_Prato_has_cliente_Prato1_idx` (`Prato_ID_prato` ASC) VISIBLE,
  CONSTRAINT `fk_Prato_has_cliente_Prato1`
    FOREIGN KEY (`Prato_ID_prato`)
    REFERENCES `restaute`.`Prato` (`ID_prato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Prato_has_cliente_cliente1`
    FOREIGN KEY (`cliente_ID_cliente`)
    REFERENCES `restaute`.`cliente` (`ID_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
