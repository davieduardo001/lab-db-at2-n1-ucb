create database if not exists trabalho;

use trabalho;

CREATE TABLE IF NOT EXISTS continente (
  `codcontinente` VARCHAR(10) NOT NULL,
  `nomecontinente` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`codcontinente`)
);

CREATE TABLE IF NOT EXISTS pais (
  `codPais` VARCHAR(10) NOT NULL,
  `nomePais` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`codPais`)
);

CREATE TABLE IF NOT EXISTS popSemAcessoEnergia (
  `idpopSemAcessoEnergia` INT NOT NULL AUTO_INCREMENT,
  `ano` YEAR NULL DEFAULT NULL,
  `popSemEnergia` BIGINT NULL DEFAULT NULL,
  `Pais_codPais` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idpopSemAcessoEnergia`),
  INDEX `fk_popSemAcessoEnergia_Pais_idx` (`Pais_codPais` ASC),
  CONSTRAINT `fk_popSemAcessoEnergia_Pais`
    FOREIGN KEY (`Pais_codPais`)
    REFERENCES `trabalho`.`Pais` (`codPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS geracaoEnergiaPessoaPais (
  `idgeracaoEnergiaPessoaPais` INT NOT NULL AUTO_INCREMENT,
  `ano` YEAR NULL DEFAULT NULL,
  `geracaoEnergiaPessoaPais` BIGINT NULL DEFAULT NULL,
  `Pais_codPais` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idgeracaoEnergiaPessoaPais`),
  INDEX `fk_geracaoEnergiaPessoaPais_Pais1_idx` (`Pais_codPais` ASC),
  CONSTRAINT `fk_geracaoEnergiaPessoaPais_Pais1`
    FOREIGN KEY (`Pais_codPais`)
    REFERENCES `trabalho`.`Pais` (`codPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS geracaoEnergiaContinente (
  `idgeracaoEnergiaContinente` INT NOT NULL AUTO_INCREMENT,
  `ano` YEAR NULL DEFAULT NULL,
  `geracaoEnergiaContinente` BIGINT NULL DEFAULT NULL,
  `continente_codcontinente` VARCHAR(10) NOT NULL,  -- Coluna para referência ao continente
  PRIMARY KEY (`idgeracaoEnergiaContinente`),
  INDEX `fk_geracaoEnergiaContinente_Continente_idx` (`continente_codcontinente` ASC),
  CONSTRAINT `fk_geracaoEnergiaContinente_Continente`
    FOREIGN KEY (`continente_codcontinente`)
    REFERENCES `trabalho`.`continente` (`codcontinente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS popRuralSemEletricidade (
  `idpopRuralSemEletricidade` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `ano` YEAR NULL DEFAULT NULL,
  `popRuralSemEletricidade` BIGINT NULL DEFAULT NULL,
  `Pais_codPais` VARCHAR(10) NOT NULL,
  INDEX `fk_popRuralSemEletricidade_Pais1_idx` (`Pais_codPais` ASC),
  CONSTRAINT `fk_popRuralSemEletricidade_Pais1`
    FOREIGN KEY (`Pais_codPais`)
    REFERENCES `trabalho`.`Pais` (`codPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS percentPopEnergiaLimpa (
  `idpercentPopEnergiaLimpa` INT NOT NULL AUTO_INCREMENT,
  `ano` YEAR NULL DEFAULT NULL,
  `percentPopEnergiaLimpa` DECIMAL(5,2) NULL DEFAULT NULL,
  `Pais_codPais` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idpercentPopEnergiaLimpa`),
  INDEX `fk_percentPopEnergiaLimpa_Pais1_idx` (`Pais_codPais` ASC),
  CONSTRAINT `fk_percentPopEnergiaLimpa_Pais1`
    FOREIGN KEY (`Pais_codPais`)
    REFERENCES `trabalho`.`Pais` (`codPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);