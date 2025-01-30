-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema biblioteca1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema biblioteca1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `biblioteca1` DEFAULT CHARACTER SET utf8 ;
USE `biblioteca1` ;

-- -----------------------------------------------------
-- Table `mydb`.`Autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Autor` (
  `ID_Autor` INT NOT NULL,
  `Nome_Autor` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID_Autor`),
  UNIQUE INDEX `ID_Autor_UNIQUE` (`ID_Autor` ASC) VISIBLE,
  UNIQUE INDEX `Nome_Autor_UNIQUE` (`Nome_Autor` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Livro` (
  `ID_Livro` INT NOT NULL,
  `Titulo` VARCHAR(150) NOT NULL,
  `Anol` YEAR(4) NOT NULL,
  `Autor_livro_Escrito_idAutor_livro_Escrito` INT NOT NULL,
  `Autor_ID_Autor` INT NOT NULL,
  PRIMARY KEY (`ID_Livro`, `Autor_livro_Escrito_idAutor_livro_Escrito`, `Autor_ID_Autor`),
  UNIQUE INDEX `ID_Livro_UNIQUE` (`ID_Livro` ASC) VISIBLE,
  INDEX `fk_Livro_Autor1_idx` (`Autor_ID_Autor` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_Autor1`
    FOREIGN KEY (`Autor_ID_Autor`)
    REFERENCES `mydb`.`Autor` (`ID_Autor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuário`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuário` (
  `ID_Usuário` INT UNSIGNED NULL,
  `Nome_Usuário` VARCHAR(50) NULL,
  `Data_Nascimento` DATE NULL,
  PRIMARY KEY (`ID_Usuário`),
  UNIQUE INDEX `ID_Usuário_UNIQUE` (`ID_Usuário` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Livro_livro_Usuário`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Livro_livro_Usuário` (
  `Livro_ID_Livro` INT NOT NULL,
  `Livro_Autor_livro_Escrito_idAutor_livro_Escrito` INT NOT NULL,
  `Livro_Autor_ID_Autor` INT NOT NULL,
  `Usuário_ID_Usuário` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Livro_ID_Livro`, `Livro_Autor_livro_Escrito_idAutor_livro_Escrito`, `Livro_Autor_ID_Autor`, `Usuário_ID_Usuário`),
  INDEX `fk_Livro_has_Usuário_Usuário1_idx` (`Usuário_ID_Usuário` ASC) VISIBLE,
  INDEX `fk_Livro_has_Usuário_Livro1_idx` (`Livro_ID_Livro` ASC, `Livro_Autor_livro_Escrito_idAutor_livro_Escrito` ASC, `Livro_Autor_ID_Autor` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_has_Usuário_Livro1`
    FOREIGN KEY (`Livro_ID_Livro` , `Livro_Autor_livro_Escrito_idAutor_livro_Escrito` , `Livro_Autor_ID_Autor`)
    REFERENCES `mydb`.`Livro` (`ID_Livro` , `Autor_livro_Escrito_idAutor_livro_Escrito` , `Autor_ID_Autor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Livro_has_Usuário_Usuário1`
    FOREIGN KEY (`Usuário_ID_Usuário`)
    REFERENCES `mydb`.`Usuário` (`ID_Usuário`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
