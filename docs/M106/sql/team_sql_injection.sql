DROP DATABASE IF EXISTS `team_sql_injection`;
CREATE DATABASE `team_sql_injection`;
USE `team_sql_injection`;

CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `is_leader` boolean DEFAULT FALSE,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `ahv_number` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `employee` (
    `first_name`, 
    `last_name`, 
    `is_leader`, 
    `email`, 
    `phone_number`, 
    `ahv_number`
) 
VALUES (
    'Matteo', 
    'Bosshard', 
    TRUE, 
    'matteobosshard@gmail.com', 
    '+41 76 448 02 82', 
    '7568612972634'
);

INSERT INTO employee (first_name, last_name, is_leader, email, phone_number, ahv_number)
VALUES 
('Andrin', 'Gräub', FALSE, 'andringraeub@gmail.com', '076 721 16 42', '7561234567890'); 

INSERT INTO employee(first_name, last_name, is_leader, email, phone_number, ahv_number)
VALUES 
('Alyan', 'Javed', FALSE, 'alyan.javed@wiss-edu.ch', '078 836 16 22', '9375836783629');

INSERT INTO employee(first_name, last_name, is_leader, email, phone_number, ahv_number)
VALUES
('Jay','Grenacher', FALSE,'jaygrenacher@gmail.com','076 370 67 69','1234567891011');

INSERT INTO employee (first_name, last_name, is_leader, email, phone_number, ahv_number)
VALUES 
('Nicolas', 'Schmid', FALSE, 'nicolas.schmid1000@gmail.comm', '+41799145691', '7568511466355');