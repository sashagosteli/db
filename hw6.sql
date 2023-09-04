CREATE TABLE `semimar_4`.`users_old` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(50) NULL,
  `lastname` VARCHAR(50) NULL,
  `email` VARCHAR(120) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);
