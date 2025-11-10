CREATE SCHEMA `tifosi` ;

CREATE USER 'tifosi_user'@'localhost' IDENTIFIED BY 'tifosi1234';
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi_user'@'localhost';

CREATE TABLE `tifosi`.`ingredients` (
  `id_ingredient` INT NOT NULL AUTO_INCREMENT,
  `nom_ingredient` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_ingredients`));
  
CREATE TABLE `tifosi`.`foccacia` (
  `id_foccacia` INT NOT NULL AUTO_INCREMENT,
  `nom_foccacia` VARCHAR(50) NOT NULL,
  `prix_foccacia` DECIMAL(5,2) NOT NULL,
  `ingredients` LONGTEXT,
  PRIMARY KEY (`id_foccacia`));
  
CREATE TABLE `tifosi`.`menu` (
  `id_menu` INT NOT NULL AUTO_INCREMENT,
  `nom_menu` VARCHAR(50) NOT NULL,
  `prix_menu` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`id_menu`));
  
CREATE TABLE `tifosi`.`Client` (
  `id_client` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `code_postal` INT NULL,
  PRIMARY KEY (`id_client`));
  
CREATE TABLE `tifosi`.`boisson` (
  `id_boisson` INT NOT NULL AUTO_INCREMENT,
  `nom_boisson` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_boisson`));
  
CREATE TABLE `tifosi`.`marque` (
  `id_marque` INT NOT NULL AUTO_INCREMENT,
  `nom_marque` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_marque`));
