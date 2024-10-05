-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2023 at 09:58 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$8YBkFKJzvxH1wGeF7Bt8P.Vh5OT5H98G5fv5rYr2g0nQLl2Gx/iE2'),
(2, 'Admin1', '$2y$10$Betx15etUvMAWvUoRsUY1uyd9BuGpJLY8tsmAPKdgsRcvlkuUg8De'),
(3, 'User1', '$2y$10$pUhw7As3sVvqlbMsTKVQlO63kNRknuX4Me5LMettgdRKFX4DRnWGu'),
(4, 'Addmin', '$2y$10$9ztgz1bEmmjerKojDOZtweWLCDN8tKhRJcylM6ck0nRVbkvTcXxSG');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
CREATE TABLE IF NOT EXISTS `complaints` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `complaint` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `reg_date`) VALUES
(3, '', '', '$2y$10$E2XrKSNhdOh0zydZ4EB/a.xew4QSuoWXbY15J3LKmJptD51gneYIu', '2023-05-11 19:46:40'),
(5, 'Tester', 'tester@gmail.com', '$2y$10$qUz075p6YB0nEdOhQosNw.MNRk1/9svlOKeCIWoi5o2pvTU9b195m', '2023-05-11 19:47:15'),
(6, 'Tester', 'tester@gmail.com', '$2y$10$q5WBY6C99EYvCdGT8EwhpuEsftC1iLm/OCn0os9/ma4Crb31Sgo7e', '2023-05-11 19:47:31'),
(7, 'Tester', 'tester@gmail.com', '$2y$10$oNsMUsq2yS31gE/eLPv8TeDD36adAOdey4Q/EvlZ3aBHcP5ExlW8e', '2023-05-11 19:48:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
