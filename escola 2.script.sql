-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema escola2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema escola2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Turma` (
  `ID_Turma` INT NOT NULL,
  `Ano` YEAR(4) NOT NULL,
  PRIMARY KEY (`ID_Turma`),
  UNIQUE INDEX `ID_Turma_UNIQUE` (`ID_Turma` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Disciplina` (
  `ID_Discilpina` INT NOT NULL,
  ` Nome_Disciplina` VARCHAR(100) NOT NULL,
  `Turma_ID_Turma` INT NOT NULL,
  `Turma_ID_Turma1` INT NOT NULL,
  PRIMARY KEY (`ID_Discilpina`, `Turma_ID_Turma`, `Turma_ID_Turma1`),
  UNIQUE INDEX `ID_Discilpina_UNIQUE` (`ID_Discilpina` ASC) VISIBLE,
  INDEX `fk_Disciplina_Turma1_idx` (`Turma_ID_Turma1` ASC) VISIBLE,
  CONSTRAINT `fk_Disciplina_Turma1`
    FOREIGN KEY (`Turma_ID_Turma1`)
    REFERENCES `mydb`.`Turma` (`ID_Turma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Professor` (
  `ID_Professor` INT NOT NULL,
  `  Nome` VARCHAR(50) NOT NULL,
  `Disciplina_ID_Discilpina` INT NOT NULL,
  `Disciplina_Turma_ID_Turma` INT NOT NULL,
  PRIMARY KEY (`ID_Professor`, `Disciplina_ID_Discilpina`, `Disciplina_Turma_ID_Turma`),
  UNIQUE INDEX `ID_Professor_UNIQUE` (`ID_Professor` ASC) VISIBLE,
  INDEX `fk_Professor_Disciplina1_idx` (`Disciplina_ID_Discilpina` ASC, `Disciplina_Turma_ID_Turma` ASC) VISIBLE,
  CONSTRAINT `fk_Professor_Disciplina1`
    FOREIGN KEY (`Disciplina_ID_Discilpina` , `Disciplina_Turma_ID_Turma`)
    REFERENCES `mydb`.`Disciplina` (`ID_Discilpina` , `Turma_ID_Turma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Aluno` (
  `ID_Aluno` INT NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `CPF` INT NOT NULL,
  PRIMARY KEY (`ID_Aluno`),
  UNIQUE INDEX `ID_Aluno_UNIQUE` (`ID_Aluno` ASC) VISIBLE,
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Turma_has_Aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Turma_has_Aluno` (
  `Turma_ID_Turma` INT NOT NULL,
  `Aluno_ID_Aluno` INT NOT NULL,
  PRIMARY KEY (`Turma_ID_Turma`, `Aluno_ID_Aluno`),
  INDEX `fk_Turma_has_Aluno_Aluno1_idx` (`Aluno_ID_Aluno` ASC) VISIBLE,
  INDEX `fk_Turma_has_Aluno_Turma1_idx` (`Turma_ID_Turma` ASC) VISIBLE,
  CONSTRAINT `fk_Turma_has_Aluno_Turma1`
    FOREIGN KEY (`Turma_ID_Turma`)
    REFERENCES `mydb`.`Turma` (`ID_Turma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Turma_has_Aluno_Aluno1`
    FOREIGN KEY (`Aluno_ID_Aluno`)
    REFERENCES `mydb`.`Aluno` (`ID_Aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
