-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 03:41 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_running`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_event`
--

CREATE TABLE `add_event` (
  `id_add` int(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  `pic_event` varchar(200) DEFAULT NULL,
  `name_event` varchar(100) DEFAULT NULL,
  `name_producer` varchar(100) DEFAULT NULL,
  `date_reg_start` varchar(20) DEFAULT NULL,
  `date_reg_end` varchar(20) DEFAULT NULL,
  `bank` varchar(100) NOT NULL,
  `num_bank` varchar(100) NOT NULL,
  `objective` varchar(2000) DEFAULT NULL,
  `detail` varchar(5000) DEFAULT NULL,
  `name_organizer` varchar(50) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `type` int(1) NOT NULL,
  `status_event` int(11) NOT NULL,
  `detail_cancel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `add_event`
--

INSERT INTO `add_event` (`id_add`, `id_user`, `pic_event`, `name_event`, `name_producer`, `date_reg_start`, `date_reg_end`, `bank`, `num_bank`, `objective`, `detail`, `name_organizer`, `tel`, `type`, `status_event`, `detail_cancel`) VALUES
(187, 84, 'https://firebasestorage.googleapis.com/v0/b/vistual-running.appspot.com/o/images%2F83f1eed1-dbad-4a17-abd5-84f8fa699f66?alt=media&token=6ab60891-52c8-4489-9cc9-4486f87d1921', 'ก้าวคนละก้าว', 'gun', '6/4/2021', '13/4/2021', 'ธนาคารกสิกรไทย', '23-456-89', 'test', 'test', 'toon', '0923956498', 1, 1, 'รายละเอียดไม่ชัดเจน'),
(188, 84, 'https://firebasestorage.googleapis.com/v0/b/vistual-running.appspot.com/o/images%2F9ea639a1-cc8f-4f6e-aa21-0ae88fd75ce8?alt=media&token=da46eec0-334e-4c6a-9155-782ec6fdee23', 'test', 'test', '7/4/2021', '14/4/2021', 'ธนาคารกรุงไทย', '123456789', 'test', 'test', 'test', '115448', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_distance`
--

CREATE TABLE `detail_distance` (
  `Detail_id` int(11) NOT NULL,
  `id_add` int(11) NOT NULL,
  `name_event` varchar(40) NOT NULL,
  `name_distance` varchar(40) NOT NULL,
  `distance` int(3) NOT NULL,
  `price` int(10) NOT NULL,
  `num_register` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_distance`
--

INSERT INTO `detail_distance` (`Detail_id`, `id_add`, `name_event`, `name_distance`, `distance`, `price`, `num_register`) VALUES
(77, 187, 'ก้าวคนละก้าว', ' Fun Run', 4, 200, 200),
(78, 187, 'ก้าวคนละก้าว', 'Mini Marathon', 11, 200, 200),
(79, 188, 'test', 'Fun Run', 4, 200, 10);

-- --------------------------------------------------------

--
-- Table structure for table `history_payment`
--

CREATE TABLE `history_payment` (
  `id_history_payment` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_add` int(10) NOT NULL,
  `name_event` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `image_link` varchar(200) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(5) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `type_submit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history_payment`
--

INSERT INTO `history_payment` (`id_history_payment`, `id_user`, `id_add`, `name_event`, `first_name`, `last_name`, `image_link`, `date`, `time`, `bank`, `type_submit`) VALUES
(33, 85, 187, 'ก้าวคนละก้าว', 'teerit', 'sumalai', 'https://firebasestorage.googleapis.com/v0/b/vistual-running.appspot.com/o/images%2Ffb163dc8-b73f-4097-b7b8-81d7ac44da8f?alt=media&token=9846af44-61eb-4ee8-9c2f-dddca9592e13', '17/4/2021', '18:06', 'ธนาคารกสิกรไทย', 2),
(35, 85, 187, 'ก้าวคนละก้าว', 'teerit', 'sumalai', 'https://firebasestorage.googleapis.com/v0/b/vistual-running.appspot.com/o/images%2Fbd32ffe3-96e3-41af-8e0f-8b9070e350ee?alt=media&token=5a13332e-581d-4503-8da4-72ab09ea3099', '13/4/2021', '15:55', 'ธนาคารกสิกรไทย', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_uploadstatic`
--

CREATE TABLE `history_uploadstatic` (
  `id_history_UploadStatic` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_add` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `distance` float(10,2) NOT NULL,
  `cal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history_uploadstatic`
--

INSERT INTO `history_uploadstatic` (`id_history_UploadStatic`, `id_user`, `id_add`, `date`, `distance`, `cal`) VALUES
(17, 85, 187, '6/4/2021', 4.74, '500'),
(18, 85, 187, '6/4/2021', 4.74, '500'),
(19, 85, 187, '6/4/2021', 4.74, '500'),
(20, 90, 187, '7/4/2021', 3.50, '200');

-- --------------------------------------------------------

--
-- Table structure for table `reg_address`
--

CREATE TABLE `reg_address` (
  `id_address` int(11) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_add` int(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `District` varchar(100) NOT NULL,
  `MueangDistrict` varchar(100) NOT NULL,
  `province` varchar(20) NOT NULL,
  `Country_number` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Tel` varchar(20) NOT NULL,
  `transport` varchar(20) NOT NULL,
  `pacel_number` varchar(11) NOT NULL,
  `type_submit_reward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reg_address`
--

INSERT INTO `reg_address` (`id_address`, `id_user`, `id_add`, `Address`, `District`, `MueangDistrict`, `province`, `Country_number`, `Name`, `Tel`, `transport`, `pacel_number`, `type_submit_reward`) VALUES
(60, 85, 187, '247/9', 'mung', 'mung', 'khonkaen', '40000', 'Satamp', '0923956498', 'ems', '45454545', 0),
(61, 90, 187, 'test', 'test', 'test', 'test', 'test', 'test', 'test', '', '', 0),
(62, 85, 188, 'sadsad', 'dsad', 'asdasdds', 'dsdas', 'dasdas', 'dsad', 'dsad', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_event`
--

CREATE TABLE `reg_event` (
  `id_reg_event` int(11) NOT NULL,
  `id_add` int(40) NOT NULL,
  `id_user` int(10) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `Tel` varchar(20) NOT NULL,
  `id_card` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `blood` varchar(5) NOT NULL,
  `distance` varchar(20) NOT NULL,
  `emergency` varchar(20) NOT NULL,
  `relation` varchar(10) NOT NULL,
  `relationTel` varchar(20) NOT NULL,
  `name_event` varchar(50) DEFAULT NULL,
  `name_producer` varchar(40) NOT NULL,
  `pic_event` varchar(1000) NOT NULL,
  `status_reward` int(2) NOT NULL,
  `status_send` int(10) NOT NULL,
  `type_submit` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reg_event`
--

INSERT INTO `reg_event` (`id_reg_event`, `id_add`, `id_user`, `first_name`, `last_name`, `Tel`, `id_card`, `nationality`, `blood`, `distance`, `emergency`, `relation`, `relationTel`, `name_event`, `name_producer`, `pic_event`, `status_reward`, `status_send`, `type_submit`) VALUES
(116, 187, 85, 'satamp', 'satamp', '0923956498', '1300101186415', 'thai', 'B', '11', 'dad', 'บิดา', '1157', 'ก้าวคนละก้าว', 'gun', 'https://firebasestorage.googleapis.com/v0/b/vistual-running.appspot.com/o/images%2F83f1eed1-dbad-4a17-abd5-84f8fa699f66?alt=media&token=6ab60891-52c8-4489-9cc9-4486f87d1921', 0, 0, 1),
(117, 187, 90, 'test', 'test', '15555', '55455', 'thai', 'B', '4', 'dad', 'บิดา', '115', 'ก้าวคนละก้าว', 'gun', 'https://firebasestorage.googleapis.com/v0/b/vistual-running.appspot.com/o/images%2F83f1eed1-dbad-4a17-abd5-84f8fa699f66?alt=media&token=6ab60891-52c8-4489-9cc9-4486f87d1921', 0, 0, 0),
(118, 188, 85, 'test', 'test', '0923956498', '1300101186415', 'thai', 'O', '4', 'sadadasd', 'ญาติ', '554', 'test', 'test', 'https://firebasestorage.googleapis.com/v0/b/vistual-running.appspot.com/o/images%2F9ea639a1-cc8f-4f6e-aa21-0ae88fd75ce8?alt=media&token=da46eec0-334e-4c6a-9155-782ec6fdee23', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(4) NOT NULL,
  `pic_profile` varchar(1000) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(16) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `id_card` varchar(15) NOT NULL,
  `bd_date` varchar(20) NOT NULL,
  `weight` varchar(10) CHARACTER SET utf8 NOT NULL,
  `height` varchar(10) CHARACTER SET utf8 NOT NULL,
  `type` varchar(20) NOT NULL,
  `Status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `pic_profile`, `first_name`, `last_name`, `email`, `password`, `gender`, `Tel`, `id_card`, `bd_date`, `weight`, `height`, `type`, `Status`) VALUES
(84, '', 'kitinun', 'khonson', 'kitinun@kkumail.com', '1234567', 'ชาย', '', '', '21/4/2021', '56456456', '4564654', 'ผู้จัดกิจกรรม', ''),
(85, '', 'teerit', 'sumalai', 'teerit_sa@kkumail.com', '123456', 'ชาย', '', '', '5/4/2021', '464654', '456456', 'นักวิ่ง', ''),
(90, '', 'Kitinun', 'Khonson', 'gunza_za44@hotmail.com', '123456', 'ชาย', '', '', '7/4/2021', '74', '171', 'นักวิ่ง', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`id`, `username`, `password`) VALUES
(0, 'admin2', '1234'),
(1, 'admin1', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_event`
--
ALTER TABLE `add_event`
  ADD PRIMARY KEY (`id_add`);

--
-- Indexes for table `detail_distance`
--
ALTER TABLE `detail_distance`
  ADD PRIMARY KEY (`Detail_id`);

--
-- Indexes for table `history_payment`
--
ALTER TABLE `history_payment`
  ADD PRIMARY KEY (`id_history_payment`);

--
-- Indexes for table `history_uploadstatic`
--
ALTER TABLE `history_uploadstatic`
  ADD PRIMARY KEY (`id_history_UploadStatic`);

--
-- Indexes for table `reg_address`
--
ALTER TABLE `reg_address`
  ADD PRIMARY KEY (`id_address`);

--
-- Indexes for table `reg_event`
--
ALTER TABLE `reg_event`
  ADD PRIMARY KEY (`id_reg_event`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_event`
--
ALTER TABLE `add_event`
  MODIFY `id_add` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `detail_distance`
--
ALTER TABLE `detail_distance`
  MODIFY `Detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `history_payment`
--
ALTER TABLE `history_payment`
  MODIFY `id_history_payment` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `history_uploadstatic`
--
ALTER TABLE `history_uploadstatic`
  MODIFY `id_history_UploadStatic` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reg_address`
--
ALTER TABLE `reg_address`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `reg_event`
--
ALTER TABLE `reg_event`
  MODIFY `id_reg_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
