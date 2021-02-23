USE company_employee;

-- INSERT
INSERT INTO `company` (`name`, `address`, `country`, `active`, `business_area`)
VALUES ('Google', 'Mountain View, California', 'United States', '1', 'internet');
INSERT INTO `company` (`name`, `address`, `phone`, `region`, `country`, `city`, `active`,
                       `business_area`, `offices`, `employees`)
VALUES ('Карпати', 'вул. Степана Бандери, 15', '0324567634', '2', 'Україна', 'Львів', '1', 'Промистовість', '1', '200');
INSERT INTO `company` (`name`, `address`, `phone`, `region`, `country`, `city`, `active`,
                       `business_area`, `offices`, `employees`)
VALUES ('Цитрус', 'вул. Сахарова, 24', '0673547194', '2', 'Україна', 'Львів', '1', 'Комунікації', '23', '345');
INSERT INTO `employee` (`first_name`, `last_name`, `position`, `married`,
                                           `number_of_years_in_company`, `company`)
VALUES ('Юрій', 'Залізняк', 'Адміністратор', '0', '3', '2');
INSERT INTO `employee` (`first_name`, `last_name`, `position`, `married`,
                                           `number_of_years_in_company`, `company`)
VALUES ('Наталія', 'Петрівська', 'Фінінсист', '1', '5', '1');


-- UPDATE
UPDATE `employee`
SET `number_of_years_in_company` = '4'
WHERE (`id` = '5');

-- DELETE
DELETE FROM `employee` WHERE (`id` = '6');

-- SELECT
SELECT * FROM `country`;
