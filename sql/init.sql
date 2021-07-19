-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-07-19 17:35:20
-- 伺服器版本： 10.4.19-MariaDB
-- PHP 版本： 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `expresscon`
--
CREATE DATABASE IF NOT EXISTS `expresscon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `expresscon`;

-- --------------------------------------------------------

--
-- 資料表結構 `clinics`
--
-- 讀取資料表 expresscon.clinics 的結構時出現錯誤： #1932 - Table 'expresscon.clinics' doesn't exist in engine
-- 讀取資料表 expresscon.clinics 的資料時出現錯誤： #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `expresscon`.`clinics`' at line 1

-- --------------------------------------------------------

--
-- 資料表結構 `consultationrecords`
--
-- 讀取資料表 expresscon.consultationrecords 的結構時出現錯誤： #1932 - Table 'expresscon.consultationrecords' doesn't exist in engine
-- 讀取資料表 expresscon.consultationrecords 的資料時出現錯誤： #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `expresscon`.`consultationrecords`' at line 1

-- --------------------------------------------------------

--
-- 資料表結構 `tokens`
--
-- 讀取資料表 expresscon.tokens 的結構時出現錯誤： #1932 - Table 'expresscon.tokens' doesn't exist in engine
-- 讀取資料表 expresscon.tokens 的資料時出現錯誤： #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `expresscon`.`tokens`' at line 1
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
