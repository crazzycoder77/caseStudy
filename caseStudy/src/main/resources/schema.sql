DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS state;
DROP TABLE IF EXISTS country;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `country`(
	`country_id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`country_name` VARCHAR(20)
);
CREATE TABLE `state`(
	`state_id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`state_name` VARCHAR(20),
	`state_country_id` int,
	FOREIGN KEY (`state_country_id`) REFERENCES `country`(`country_id`)
);
CREATE TABLE `city`(
	`city_id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`city_name` VARCHAR(20),
	`city_state_id` int,
	FOREIGN KEY (`city_state_id`) REFERENCES `state`(`state_id`)
);
CREATE TABLE `employee`(
	`emp_id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`emp_name` VARCHAR(20),
	`emp_company_name` VARCHAR(20),
	`emp_contact_number` VARCHAR(20),
	`emp_gender` VARCHAR(6),
	`emp_country_id` int NOT NULL,
	`emp_state_id` int NOT NULL,
	`emp_city_id` int NOT NULL,
	FOREIGN KEY (`emp_country_id`) REFERENCES `country`(`country_id`),
	FOREIGN KEY (`emp_state_id`) REFERENCES `state`(`state_id`),
	FOREIGN KEY (`emp_city_id`) REFERENCES `city`(`city_id`)
);