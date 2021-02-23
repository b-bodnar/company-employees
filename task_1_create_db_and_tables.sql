-- create DB
CREATE SCHEMA `company_employee` DEFAULT CHARACTER SET utf8;

USE company_employee;

-- create table Region
CREATE TABLE `region`
(
    `id`   bigint      NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `name_UNIQUE` (`name`)
)

-- create table Company
CREATE TABLE `company`
(
    `id`            BIGINT      NOT NULL AUTO_INCREMENT,
    `name`          VARCHAR(45) NOT NULL,
    `address`       VARCHAR(45) NULL,
    `phone`         VARCHAR(45) NULL,
    `region`        BIGINT      NOT NULL,
    `country`       VARCHAR(45) NULL,
    `city`          VARCHAR(45) NULL,
    `active`        TINYINT NULL,
    `business_area` VARCHAR(45) NULL,
    `offices`       INT NULL,
    `employees`     INT NULL,
    PRIMARY KEY (`id`),
    INDEX           `region_id_idx` (`region` ASC) VISIBLE,
    CONSTRAINT `region_id`
        FOREIGN KEY (`region`)
            REFERENCES `company_employee`.`region` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
);

-- create table Employee
CREATE TABLE `employee`
(
    `id`                         BIGINT NOT NULL AUTO_INCREMENT,
    `first_name`                 VARCHAR(45) NULL,
    `last_name`                  VARCHAR(45) NULL,
    `position`                   VARCHAR(45) NULL,
    `married`                    TINYINT NULL,
    `number_of_years_in_company` INT NULL,
    `company`                    BIGINT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX                        `company_id_idx` (`company` ASC) VISIBLE,
    CONSTRAINT `company_id`
        FOREIGN KEY (`company`)
            REFERENCES `company_employee`.`company` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
);
