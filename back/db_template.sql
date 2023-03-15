-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cvs
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cvs` ;

-- -----------------------------------------------------
-- Schema cvs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cvs` DEFAULT CHARACTER SET utf8 ;
USE `cvs` ;

-- -----------------------------------------------------
-- Table `cvs`.`usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`usuarios` ;

CREATE TABLE IF NOT EXISTS `cvs`.`usuarios` (
  `idusuarios` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(75) NOT NULL,
  `contrasena` VARCHAR(200) NOT NULL,
  `correo` VARCHAR(150) NOT NULL,
  `nombres` VARCHAR(100) NOT NULL,
  `apellidos` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idusuarios`),
  UNIQUE INDEX `usuario_UNIQUE` (`usuario` ASC),
  UNIQUE INDEX `correo_UNIQUE` (`correo` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`lenguajes_del_cv`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`lenguajes_del_cv` ;

CREATE TABLE IF NOT EXISTS `cvs`.`lenguajes_del_cv` (
  `idlenguajes_del_cv` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `lenguaje_completo` VARCHAR(30) NOT NULL,
  `lenguaje_recortado` VARCHAR(2) NOT NULL,
  `icono` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idlenguajes_del_cv`),
  UNIQUE INDEX `lenguaje_UNIQUE` (`lenguaje_completo` ASC),
  UNIQUE INDEX `lenguaje_recortado_UNIQUE` (`lenguaje_recortado` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`datos_personales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`datos_personales` ;

CREATE TABLE IF NOT EXISTS `cvs`.`datos_personales` (
  `iddatos_personales` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `telefono` INT NULL,
  `domicilio` VARCHAR(200) NULL,
  `pais` VARCHAR(100) NULL,
  `provincia_estado` VARCHAR(200) NULL,
  `barrio` VARCHAR(200) NULL,
  `codigo_postal` VARCHAR(10) NULL,
  `fecha_nacimiento` DATE NULL,
  `foto_perfil` VARCHAR(250) NULL,
  `titulo_destacado` VARCHAR(200) NULL,
  `profesion_destacada` VARCHAR(200) NULL,
  `perfil_extracto` MEDIUMTEXT NULL,
  `web_personal` VARCHAR(255) NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`iddatos_personales`),
  INDEX `fk_datos_personales_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  INDEX `fk_datos_personales_usuarios1_idx` (`usuarios_idusuarios` ASC),
  CONSTRAINT `fk_datos_personales_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_datos_personales_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`campos_cvs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`campos_cvs` ;

CREATE TABLE IF NOT EXISTS `cvs`.`campos_cvs` (
  `idcampos_cvs` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `perfil` TINYINT UNSIGNED NULL,
  `experiencia_laboral` TINYINT UNSIGNED NULL,
  `otras_actividades` TINYINT UNSIGNED NULL,
  `detalles_personales` TINYINT UNSIGNED NULL,
  `educacion` TINYINT UNSIGNED NULL,
  `cursos` TINYINT UNSIGNED NULL,
  `grafico_competencias` TINYINT UNSIGNED NULL,
  `softwares` TINYINT UNSIGNED NULL,
  `redes_sociales` TINYINT UNSIGNED NULL,
  `lenguajes` TINYINT UNSIGNED NULL,
  PRIMARY KEY (`idcampos_cvs`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`diseno_cvs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`diseno_cvs` ;

CREATE TABLE IF NOT EXISTS `cvs`.`diseno_cvs` (
  `iddisenocv` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `campos_cvs_idcampos_cvs` INT UNSIGNED NOT NULL,
  `nombre_diseno` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`iddisenocv`),
  INDEX `fk_cvs_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_diseno_cvs_campos_cvs1_idx` (`campos_cvs_idcampos_cvs` ASC),
  CONSTRAINT `fk_cvs_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_diseno_cvs_campos_cvs1`
    FOREIGN KEY (`campos_cvs_idcampos_cvs`)
    REFERENCES `cvs`.`campos_cvs` (`idcampos_cvs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`trabajos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`trabajos` ;

CREATE TABLE IF NOT EXISTS `cvs`.`trabajos` (
  `idtrabajos` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `titulo_puesto` VARCHAR(255) NOT NULL,
  `empresa_organizacion` VARCHAR(255) NOT NULL,
  `area_subarea` VARCHAR(255) NULL,
  `fecha_desde` DATE NOT NULL,
  `fecha_hasta` DATE NULL,
  `descripcion` LONGTEXT NOT NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idtrabajos`),
  INDEX `fk_trabajos_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_trabajos_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  CONSTRAINT `fk_trabajos_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trabajos_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`otras_actividades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`otras_actividades` ;

CREATE TABLE IF NOT EXISTS `cvs`.`otras_actividades` (
  `idotras_actividades` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `titulo_puesto` VARCHAR(255) NOT NULL,
  `empresa_organizacion` VARCHAR(255) NULL,
  `area_subarea` VARCHAR(255) NULL,
  `fecha_desde` DATE NULL,
  `fecha_hasta` DATE NULL,
  `descripcion` LONGTEXT NOT NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idotras_actividades`),
  INDEX `fk_otras_actividades_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_otras_actividades_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  CONSTRAINT `fk_otras_actividades_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_otras_actividades_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`detalles_usuario_en_Cv`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`detalles_usuario_en_Cv` ;

CREATE TABLE IF NOT EXISTS `cvs`.`detalles_usuario_en_Cv` (
  `iddetalles_usuario_en_Cv` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `mostrar_telefono` TINYINT UNSIGNED NULL,
  `mostrar_correo` TINYINT UNSIGNED NULL,
  `mostrar_domicilio` TINYINT UNSIGNED NULL,
  `mostrar_pais` TINYINT UNSIGNED NULL,
  `mostrar_provincia_estado` TINYINT UNSIGNED NULL,
  `mostrar_barrio` TINYINT UNSIGNED NULL,
  `mostrar_codigo_postal` TINYINT UNSIGNED NULL,
  `mostrar_fecha_nacimiento` TINYINT UNSIGNED NULL,
  `mostrar_titulo_destacado` TINYINT UNSIGNED NULL,
  `mostrar_profesion_destacada` TINYINT UNSIGNED NULL,
  `mostrar_perfil_extracto` TINYINT UNSIGNED NULL,
  PRIMARY KEY (`iddetalles_usuario_en_Cv`),
  INDEX `fk_detalles_usuario_en_Cv_usuarios1_idx` (`usuarios_idusuarios` ASC),
  CONSTRAINT `fk_detalles_usuario_en_Cv_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`educacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`educacion` ;

CREATE TABLE IF NOT EXISTS `cvs`.`educacion` (
  `ideducacion` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `titulo` VARCHAR(255) NOT NULL,
  `institucion` VARCHAR(255) NOT NULL,
  `fecha_inicio` DATE NULL,
  `fecha_egreso` DATE NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ideducacion`),
  INDEX `fk_educacion_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_educacion_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  CONSTRAINT `fk_educacion_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_educacion_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`cursos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`cursos` ;

CREATE TABLE IF NOT EXISTS `cvs`.`cursos` (
  `idcursos` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `institucion` VARCHAR(255) NOT NULL,
  `fecha_completitud` DATE NOT NULL,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  `prioridad` INT UNSIGNED NULL,
  PRIMARY KEY (`idcursos`),
  INDEX `fk_cursos_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_cursos_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  CONSTRAINT `fk_cursos_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cursos_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`competencias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`competencias` ;

CREATE TABLE IF NOT EXISTS `cvs`.`competencias` (
  `idcompetencias` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `porcentaje` INT NOT NULL,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idcompetencias`),
  INDEX `fk_competencias_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_competencias_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  CONSTRAINT `fk_competencias_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_competencias_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`softwares_sistema`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`softwares_sistema` ;

CREATE TABLE IF NOT EXISTS `cvs`.`softwares_sistema` (
  `idsoftwares_sistema` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idsoftwares_sistema`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`softwares_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`softwares_usuario` ;

CREATE TABLE IF NOT EXISTS `cvs`.`softwares_usuario` (
  `idsoftwares_usuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `posicion` INT UNSIGNED NULL,
  `softwares_sistema_idsoftwares_sistema` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idsoftwares_usuario`),
  INDEX `fk_softwares_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_softwares_usuario_softwares_sistema1_idx` (`softwares_sistema_idsoftwares_sistema` ASC),
  CONSTRAINT `fk_softwares_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_softwares_usuario_softwares_sistema1`
    FOREIGN KEY (`softwares_sistema_idsoftwares_sistema`)
    REFERENCES `cvs`.`softwares_sistema` (`idsoftwares_sistema`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`idiomas_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`idiomas_usuario` ;

CREATE TABLE IF NOT EXISTS `cvs`.`idiomas_usuario` (
  `ididiomas_usuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idioma` VARCHAR(255) NOT NULL,
  `porcentaje` INT UNSIGNED NOT NULL,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ididiomas_usuario`),
  INDEX `fk_idiomas_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_idiomas_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  CONSTRAINT `fk_idiomas_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idiomas_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`redes_sociales_sistema`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`redes_sociales_sistema` ;

CREATE TABLE IF NOT EXISTS `cvs`.`redes_sociales_sistema` (
  `idredes_sociales_sistema` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `url_base` VARCHAR(255) NOT NULL,
  `icono` VARCHAR(225) NOT NULL,
  PRIMARY KEY (`idredes_sociales_sistema`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`redes_sociales_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`redes_sociales_usuario` ;

CREATE TABLE IF NOT EXISTS `cvs`.`redes_sociales_usuario` (
  `idredes_sociales` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(255) NOT NULL,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `redes_sociales_sistema_idredes_sociales_sistema` INT UNSIGNED NOT NULL,
  `prioridad` INT UNSIGNED NULL,
  PRIMARY KEY (`idredes_sociales`),
  INDEX `fk_redes_sociales_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_redes_sociales_usuario_redes_sociales_sistema1_idx` (`redes_sociales_sistema_idredes_sociales_sistema` ASC),
  CONSTRAINT `fk_redes_sociales_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_redes_sociales_usuario_redes_sociales_sistema1`
    FOREIGN KEY (`redes_sociales_sistema_idredes_sociales_sistema`)
    REFERENCES `cvs`.`redes_sociales_sistema` (`idredes_sociales_sistema`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`cv_descargable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`cv_descargable` ;

CREATE TABLE IF NOT EXISTS `cvs`.`cv_descargable` (
  `idcv_descargable` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ruta` VARCHAR(255) NOT NULL,
  `diseno_cvs_iddisenocv` INT UNSIGNED NOT NULL,
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idcv_descargable`),
  INDEX `fk_cv_descargable_diseno_cvs1_idx` (`diseno_cvs_iddisenocv` ASC),
  INDEX `fk_cv_descargable_usuarios1_idx` (`usuarios_idusuarios` ASC),
  INDEX `fk_cv_descargable_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  CONSTRAINT `fk_cv_descargable_diseno_cvs1`
    FOREIGN KEY (`diseno_cvs_iddisenocv`)
    REFERENCES `cvs`.`diseno_cvs` (`iddisenocv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cv_descargable_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cv_descargable_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cvs`.`usuarios_has_lenguajes_del_cv`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cvs`.`usuarios_has_lenguajes_del_cv` ;

CREATE TABLE IF NOT EXISTS `cvs`.`usuarios_has_lenguajes_del_cv` (
  `usuarios_idusuarios` INT UNSIGNED NOT NULL,
  `lenguajes_del_cv_idlenguajes_del_cv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`),
  INDEX `fk_usuarios_has_lenguajes_del_cv_lenguajes_del_cv1_idx` (`lenguajes_del_cv_idlenguajes_del_cv` ASC),
  INDEX `fk_usuarios_has_lenguajes_del_cv_usuarios1_idx` (`usuarios_idusuarios` ASC),
  CONSTRAINT `fk_usuarios_has_lenguajes_del_cv_usuarios1`
    FOREIGN KEY (`usuarios_idusuarios`)
    REFERENCES `cvs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_has_lenguajes_del_cv_lenguajes_del_cv1`
    FOREIGN KEY (`lenguajes_del_cv_idlenguajes_del_cv`)
    REFERENCES `cvs`.`lenguajes_del_cv` (`idlenguajes_del_cv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
