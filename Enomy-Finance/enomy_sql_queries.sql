CREATE DATABASE enomy_finance;

-- Create User Table
CREATE TABLE `user_tb` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `contactInfo` varchar(45) NOT NULL,
  `emailAddress` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create Role Table
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Define User Roles
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create Currency Conversion Table
CREATE TABLE `currency_conversion` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `source_currency` varchar(5) NOT NULL, -- Adjusted length
  `converted_amount` double NOT NULL,
  `target_currency` varchar(5) NOT NULL, -- Adjusted length
  `fee` double NOT NULL,
  `total_balance` double NOT NULL,
  PRIMARY KEY (`transaction_id`),
  FOREIGN KEY (`user_id`) REFERENCES `user_tb`(`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Insert Initial Roles
INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'User', 'for user role'),
(2, 'Admin', 'for admin role');

DROP DATABASE enomy_finance
