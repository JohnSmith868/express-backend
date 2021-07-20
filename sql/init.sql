-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-07-20 05:54:04
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

CREATE TABLE `clinics` (
  `clinicId` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `clinics`
--

INSERT INTO `clinics` (`clinicId`, `email`, `phone`, `address`, `password`) VALUES
(1, 'test@test.com', '53232342', 'Kwun Tong, Hung To Rd,\r\nNo 21, Room A-C, 10/F\r\nInfotech Centre', '098f6bcd4621d373cade4e832627b4f6'),
(2, 'test@tesst.com', '56743444', 'sdffs', '5f4dcc3b5aa765d61d8327deb882cf99'),
(3, 'test@tessst.com', '56743444', 'sdffs', '5f4dcc3b5aa765d61d8327deb882cf99'),
(4, 'test@tessdfsst.com', '56743444', 'sdffs', '5f4dcc3b5aa765d61d8327deb882cf99'),
(5, 'test@tessdsadffsst.com', '56743444', 'sdffs', '5f4dcc3b5aa765d61d8327deb882cf99'),
(6, 'asma@gmail.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(7, 'test0.324234@tessdsadffsst0.3324242.com', '56743444', 'sdffs', '5f4dcc3b5aa765d61d8327deb882cf99'),
(8, 'asma0.5378872593493138@gmail0.5457716949455267.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(9, 'asma0.8302280616678659@gmail0.6505090755522227.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(10, 'asma0.5738457781142865@gmail0.7681277573020944.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(11, 'asma0.7395786206461743@gmail0.18620655256745944.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(12, 'asma0.22493128980471466@gmail0.747664770514717.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(13, 'asma0.588762653663325@gmail0.41179924271985957.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(14, 'asma0.6165099089372341@gmail0.7406796640334987.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(15, 'asma0.418077055635256@gmail0.8804815696443211.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(16, 'asma0.08906797310636216@gmail0.523201449397731.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(17, 'asma0.2097462774972716@gmail0.04332635983462163.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(18, 'asma0.023771445474729536@gmail0.8716935967675461.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(19, 'asma0.7422679465995279@gmail0.4700643500124826.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(20, 'asma0.5360423136855585@gmail0.18686315004649345.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(21, 'asma0.06790143406040738@gmail0.19183625692644624.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(22, 'asma0.611722364622381@gmail0.32608172685398995.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(23, 'asma0.11633873434150988@gmail0.5529613995408.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(24, 'asma0.15027393505205322@gmail0.794084270202968.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(25, 'asma0.6373576444877858@gmail0.003564563711413671.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(26, 'asma0.4358613714514583@gmail0.989933332479491.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4'),
(27, 'asma0.1613017851865015@gmail0.8981213293971368.com', '34235343', 'Kwun Tong, Hung To Rd,\nNo 21, Room A-C, 10/F\nInfotech Centre', '16d7a4fca7442dda3ad93c9a726597e4');

-- --------------------------------------------------------

--
-- 資料表結構 `consultationrecords`
--

CREATE TABLE `consultationrecords` (
  `consultationId` int(11) NOT NULL,
  `clinicId` int(11) NOT NULL,
  `clinic` varchar(200) NOT NULL,
  `doctorName` varchar(200) NOT NULL,
  `patientName` varchar(200) NOT NULL,
  `diagnosis` varchar(200) NOT NULL,
  `medication` varchar(200) NOT NULL,
  `consultationFee` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `followUp` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `consultationrecords`
--

INSERT INTO `consultationrecords` (`consultationId`, `clinicId`, `clinic`, `doctorName`, `patientName`, `diagnosis`, `medication`, `consultationFee`, `date`, `followUp`) VALUES
(1, 7, 'test0.324234@tessdsadffsst0.3324242.com', 'dr. sam', 'Jim Chau', 'headaches', 'neurontin', 232, '2021-01-01 00:00:00', 1),
(2, 7, 'test0.324234@tessdsadffsst0.3324242.com', 'dr. sam', 'Jim Chau', 'headaches', 'neurontin', 232, '2021-01-03 00:00:00', 1),
(3, 7, 'test0.324234@tessdsadffsst0.3324242.com', 'dr. sam', 'Jim Chau', 'headaches', 'neurontin', 232, '2021-01-01 00:00:00', 1),
(4, 7, 'test0.324234@tessdsadffsst0.3324242.com', 'dr. sam', 'Jim Chau', 'headaches', 'neurontin', 232, '2021-01-01 15:20:23', 1),
(5, 6, 'test0.324234@tessdsadffsst0.3324242.com', 'dr. sam', 'Jim Chau', 'headaches', 'neurontin', 232, '2021-01-01 15:20:23', 1),
(6, 6, 'Health Clinic', 'Dr. Chan Tai Man', 'Jim Chau', 'headaches', 'neurontin', 210, '2021-01-01 15:20:23', 1),
(7, 6, 'Health Clinic', 'Dr. Chan Tai Man', 'Jim Chau', 'headaches', 'neurontin', 210, '2021-01-01 15:20:23', 1),
(8, 6, 'Health Clinic', 'Dr. Chan Tai Man', 'Jim Chau', 'headaches', 'neurontin', 210, '2021-01-01 15:20:23', 1),
(9, 6, 'Health Clinic', 'Dr. Chan Tai Man', 'Jim Chau', 'headaches', 'neurontin', 210, '2021-01-01 15:20:23', 1),
(10, 6, 'Health Clinic', 'Dr. Chan Tai Man', 'Jim Chau', 'headaches', 'neurontin', 210, '2021-01-01 15:20:23', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `tokens`
--

CREATE TABLE `tokens` (
  `tokenId` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `expired` int(16) NOT NULL,
  `clinicId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `tokens`
--

INSERT INTO `tokens` (`tokenId`, `token`, `expired`, `clinicId`) VALUES
(1, '', 2147483647, 2),
(2, 'sfdasdfasd', 2147483647, 3),
(3, 'sdfsfsffs', 0, 3),
(4, 'dsffsfsfs', 1626196011, 3),
(5, 'sdff', 32424, 324),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjYyODcyNywiZXhwIjoxNjI3MDYwNzI3fQ.9EqHGmcKQnaRCv9jdSUIEJOR_vYVSsEO_9MTanNAaEo', 1627060727, 6),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjcsImlhdCI6MTYyNjYyODc5MywiZXhwIjoxNjI3MDYwNzkzfQ.0F7CzztDRcN2V5Yl0z0s2f9SSJwIX_xC9kZC6fWONEo', 1627060793, 7),
(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjcsImlhdCI6MTYyNjYyODgwNSwiZXhwIjoxNjI3MDYwODA1fQ.D4ZAXxM5CGdHxm-pceB16gwfuitU_urV-ne-IRLim94', 1627060805, 7),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjcsImlhdCI6MTYyNjY3NDQ3OCwiZXhwIjoxNjI3MTA2NDc4fQ.hCPEXf4rYXyi2OM7M6FRLqsa-ZLu6fYRCZWZM1vRyxA', 1627106478, 7),
(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjY3ODY1MSwiZXhwIjoxNjI3MTEwNjUxfQ.vaAf4S4vc1FJlpJB7rD30lrIGtzZ1SB8S5suI-Fxdts', 1627110651, 6),
(11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjY3ODczNCwiZXhwIjoxNjI3MTEwNzM0fQ.CC5RFninDeV_t9BrozLR9X2Nmcyt1L6lB0j--A8jvCc', 1627110734, 6),
(12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjY3ODc2NywiZXhwIjoxNjI3MTEwNzY3fQ.hFNWHz3VlavKF6JBpKk7QfQiFMsOMJWrEDi0PqW9LxY', 1627110767, 6),
(13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjY3ODc5MywiZXhwIjoxNjI3MTEwNzkzfQ.bRd8ut_JY7QYxMxNODD8raVla8akikAxydv3fO_iVyk', 1627110793, 6),
(14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjY3ODgyOCwiZXhwIjoxNjI3MTEwODI4fQ.HMQ6dypF_LehpJXM9dfOztZNXXP5iyOvsvV_CqxwFM8', 1627110828, 6),
(15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjY3ODg0NSwiZXhwIjoxNjI3MTEwODQ1fQ.-UI1BRWG5g5OyGGE9NH0uvu6yRDX6rh2pGqqcdQHOYE', 1627110845, 6),
(16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjY3ODg2MywiZXhwIjoxNjI3MTEwODYzfQ.Hn_vajWnji0ga6Lgs29V0XlUKgw1ehoR4Ih5FWq3LkM', 1627110863, 6),
(17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjcwNTMwOSwiZXhwIjoxNjI3MTM3MzA4fQ.VwEzIQGiOGt4JBrfx4K1Lmw1YlPtspeUlY8wb32QNZs', 1627137308, 6),
(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjcwNTMyOCwiZXhwIjoxNjI3MTM3MzI4fQ.HYHeEfZNyqU_SZhiOtMVJEoqF48uf1ON7cCdGakttQo', 1627137328, 6),
(19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjcwNTk3NSwiZXhwIjoxNjI3MTM3OTc1fQ.ypm5_wvk8D9nRehHwp0S9Hrd9k8pj2Zu_S9UmhapMx8', 1627137975, 6);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`clinicId`);

--
-- 資料表索引 `consultationrecords`
--
ALTER TABLE `consultationrecords`
  ADD PRIMARY KEY (`consultationId`);

--
-- 資料表索引 `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`tokenId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `clinics`
--
ALTER TABLE `clinics`
  MODIFY `clinicId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `consultationrecords`
--
ALTER TABLE `consultationrecords`
  MODIFY `consultationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tokens`
--
ALTER TABLE `tokens`
  MODIFY `tokenId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
