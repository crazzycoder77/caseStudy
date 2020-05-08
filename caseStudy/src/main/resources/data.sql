INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'admin', '12345');
INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'USA');
INSERT INTO `country` (`country_id`, `country_name`) VALUES
(2, 'INDIA');
INSERT INTO `state` (`state_id`, `state_name`, `state_country_id`) VALUES
(1, 'TEXAS', 1);
INSERT INTO `state` (`state_id`, `state_name`, `state_country_id`) VALUES
(2, 'FLORIDA', 1);
INSERT INTO `state` (`state_id`, `state_name`, `state_country_id`) VALUES
(3, 'WEST BENGAL', 2);
INSERT INTO `state` (`state_id`, `state_name`, `state_country_id`) VALUES
(4, 'UTTAR PRADESH', 2);
INSERT INTO `city` (`city_id`, `city_name`, `city_state_id`) VALUES
(1, 'AUSTIN', 1);
INSERT INTO `city` (`city_id`, `city_name`, `city_state_id`) VALUES
(2, 'Tallahassee', 2);
INSERT INTO `city` (`city_id`, `city_name`, `city_state_id`) VALUES
(3, 'KOLKATA', 3);
INSERT INTO `city` (`city_id`, `city_name`, `city_state_id`) VALUES
(4, 'NOIDA', 4);