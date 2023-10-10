-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 12:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelac`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(128) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `room_id`, `link`) VALUES
(277, 68, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(139, 68, 'https://i.imgur.com/OUkcjK3_d.webp?maxwidth=600&fidelity=grand'),
(140, 68, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(142, 69, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(141, 69, 'https://i.imgur.com/pTvzlX4_d.webp?maxwidth=600&fidelity=grand'),
(143, 70, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(144, 70, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(145, 71, 'https://i.imgur.com/O0fSoAA_d.webp?maxwidth=600&fidelity=grand'),
(146, 71, 'https://i.imgur.com/VDQPjgS_d.webp?maxwidth=600&fidelity=grand'),
(148, 72, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(147, 72, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(149, 73, 'https://i.imgur.com/77J4Sva_d.webp?maxwidth=600&fidelity=grand'),
(150, 73, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand'),
(151, 74, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(152, 74, 'https://i.imgur.com/O0fSoAA_d.webp?maxwidth=600&fidelity=grand'),
(153, 75, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(154, 75, 'https://i.imgur.com/pTvzlX4_d.webp?maxwidth=600&fidelity=grand'),
(155, 76, 'https://i.imgur.com/VDQPjgS_d.webp?maxwidth=600&fidelity=grand'),
(156, 76, 'https://i.imgur.com/Xzgxbvz_d.webp?maxwidth=600&fidelity=grand'),
(157, 77, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(158, 77, 'https://i.imgur.com/O0fSoAA_d.webp?maxwidth=600&fidelity=grand'),
(159, 78, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(160, 78, 'https://i.imgur.com/pTvzlX4_d.webp?maxwidth=600&fidelity=grand'),
(161, 79, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(162, 79, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(164, 80, 'https://i.imgur.com/VDQPjgS_d.webp?maxwidth=600&fidelity=grand'),
(163, 80, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(165, 81, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(166, 81, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(167, 82, 'https://i.imgur.com/O0fSoAA_d.webp?maxwidth=600&fidelity=grand'),
(168, 82, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(170, 83, 'https://i.imgur.com/77J4Sva_d.webp?maxwidth=600&fidelity=grand'),
(169, 83, 'https://i.imgur.com/VDQPjgS_d.webp?maxwidth=600&fidelity=grand'),
(172, 84, 'https://i.imgur.com/VDQPjgS_d.webp?maxwidth=600&fidelity=grand'),
(171, 84, 'https://i.imgur.com/Xzgxbvz_d.webp?maxwidth=600&fidelity=grand'),
(174, 85, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(173, 85, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand'),
(176, 86, 'https://i.imgur.com/NX5qrGJ_d.webp?maxwidth=600&fidelity=grand'),
(175, 86, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(177, 87, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(178, 87, 'https://i.imgur.com/OUkcjK3_d.webp?maxwidth=600&fidelity=grand'),
(179, 88, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(180, 88, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(182, 89, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(181, 89, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(183, 90, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(184, 90, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(185, 91, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(186, 91, 'https://i.imgur.com/pTvzlX4_d.webp?maxwidth=600&fidelity=grand'),
(188, 92, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(187, 92, 'https://i.imgur.com/OUkcjK3_d.webp?maxwidth=600&fidelity=grand'),
(189, 93, 'https://i.imgur.com/O0fSoAA_d.webp?maxwidth=600&fidelity=grand'),
(190, 93, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(192, 94, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(191, 94, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(193, 95, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(194, 95, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand'),
(195, 96, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(196, 96, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(197, 97, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(198, 97, 'https://i.imgur.com/cTNbyUx_d.webp?maxwidth=600&fidelity=grand'),
(199, 98, 'https://i.imgur.com/NX5qrGJ_d.webp?maxwidth=600&fidelity=grand'),
(200, 98, 'https://i.imgur.com/Xzgxbvz_d.webp?maxwidth=600&fidelity=grand'),
(202, 99, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(201, 99, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand'),
(204, 100, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(203, 100, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(206, 101, 'https://i.imgur.com/NX5qrGJ_d.webp?maxwidth=600&fidelity=grand'),
(205, 101, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand'),
(208, 102, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(207, 102, 'https://i.imgur.com/pTvzlX4_d.webp?maxwidth=600&fidelity=grand'),
(210, 103, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(209, 103, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(212, 104, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(211, 104, 'https://i.imgur.com/xlYmiZJ_d.webp?maxwidth=600&fidelity=grand'),
(214, 105, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(213, 105, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(215, 106, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(216, 106, 'https://i.imgur.com/O0fSoAA_d.webp?maxwidth=600&fidelity=grand'),
(217, 107, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(218, 107, 'https://i.imgur.com/NX5qrGJ_d.webp?maxwidth=600&fidelity=grand'),
(219, 108, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(220, 108, 'https://i.imgur.com/xlYmiZJ_d.webp?maxwidth=600&fidelity=grand'),
(221, 109, 'https://i.imgur.com/VDQPjgS_d.webp?maxwidth=600&fidelity=grand'),
(222, 109, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(224, 110, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(223, 110, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(225, 111, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(226, 111, 'https://i.imgur.com/awcvKkv_d.webp?maxwidth=600&fidelity=grand'),
(228, 112, 'https://i.imgur.com/OUkcjK3_d.webp?maxwidth=600&fidelity=grand'),
(227, 112, 'https://i.imgur.com/cTNbyUx_d.webp?maxwidth=600&fidelity=grand'),
(230, 113, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(229, 113, 'https://i.imgur.com/cTNbyUx_d.webp?maxwidth=600&fidelity=grand'),
(232, 114, 'https://i.imgur.com/O0fSoAA_d.webp?maxwidth=600&fidelity=grand'),
(231, 114, 'https://i.imgur.com/Xzgxbvz_d.webp?maxwidth=600&fidelity=grand'),
(234, 115, 'https://i.imgur.com/Xzgxbvz_d.webp?maxwidth=600&fidelity=grand'),
(233, 115, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand'),
(235, 116, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(236, 116, 'https://i.imgur.com/cTNbyUx_d.webp?maxwidth=600&fidelity=grand'),
(237, 117, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand'),
(238, 117, 'https://i.imgur.com/pTvzlX4_d.webp?maxwidth=600&fidelity=grand'),
(239, 118, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(240, 118, 'https://i.imgur.com/Xzgxbvz_d.webp?maxwidth=600&fidelity=grand'),
(242, 119, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(241, 119, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(243, 120, 'https://i.imgur.com/StOHPnd_d.webp?maxwidth=600&fidelity=grand'),
(244, 120, 'https://i.imgur.com/xlYmiZJ_d.webp?maxwidth=600&fidelity=grand'),
(246, 121, 'https://i.imgur.com/NX5qrGJ_d.webp?maxwidth=600&fidelity=grand'),
(245, 121, 'https://i.imgur.com/OUkcjK3_d.webp?maxwidth=600&fidelity=grand'),
(247, 122, 'https://i.imgur.com/NX5qrGJ_d.webp?maxwidth=600&fidelity=grand'),
(248, 122, 'https://i.imgur.com/xlYmiZJ_d.webp?maxwidth=600&fidelity=grand'),
(250, 123, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(249, 123, 'https://i.imgur.com/xlYmiZJ_d.webp?maxwidth=600&fidelity=grand'),
(251, 124, 'https://i.imgur.com/77J4Sva_d.webp?maxwidth=600&fidelity=grand'),
(252, 124, 'https://i.imgur.com/NX5qrGJ_d.webp?maxwidth=600&fidelity=grand'),
(254, 125, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(253, 125, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(255, 126, 'https://i.imgur.com/NX5qrGJ_d.webp?maxwidth=600&fidelity=grand'),
(256, 126, 'https://i.imgur.com/VDQPjgS_d.webp?maxwidth=600&fidelity=grand'),
(257, 127, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(258, 127, 'https://i.imgur.com/pTvzlX4_d.webp?maxwidth=600&fidelity=grand'),
(259, 128, 'https://i.imgur.com/O0fSoAA_d.webp?maxwidth=600&fidelity=grand'),
(260, 128, 'https://i.imgur.com/a1m2oiG_d.webp?maxwidth=600&fidelity=grand'),
(262, 129, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(261, 129, 'https://i.imgur.com/xlYmiZJ_d.webp?maxwidth=600&fidelity=grand'),
(264, 130, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(263, 130, 'https://i.imgur.com/Xzgxbvz_d.webp?maxwidth=600&fidelity=grand'),
(266, 131, 'https://i.imgur.com/1t1awOd_d.webp?maxwidth=600&fidelity=grand'),
(265, 131, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(267, 132, 'https://i.imgur.com/9UrXAlE_d.webp?maxwidth=600&fidelity=grand'),
(268, 132, 'https://i.imgur.com/cTNbyUx_d.webp?maxwidth=600&fidelity=grand'),
(270, 133, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand'),
(269, 133, 'https://i.imgur.com/cTNbyUx_d.webp?maxwidth=600&fidelity=grand'),
(271, 134, 'https://i.imgur.com/Xzgxbvz_d.webp?maxwidth=600&fidelity=grand'),
(272, 134, 'https://i.imgur.com/cTNbyUx_d.webp?maxwidth=600&fidelity=grand'),
(274, 135, 'https://i.imgur.com/77J4Sva_d.webp?maxwidth=600&fidelity=grand'),
(273, 135, 'https://i.imgur.com/xlYmiZJ_d.webp?maxwidth=600&fidelity=grand'),
(275, 136, 'https://i.imgur.com/2aojQcn_d.webp?maxwidth=600&fidelity=grand'),
(276, 136, 'https://i.imgur.com/YTTsKOu_d.webp?maxwidth=600&fidelity=grand');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `room_id`, `user_id`, `date_start`, `date_end`) VALUES
(137, 89, 10, '2019-10-12', '2019-10-24'),
(138, 103, 72, '2020-02-05', '2020-02-15'),
(139, 122, 54, '2022-07-19', '2022-08-01'),
(140, 90, 37, '2020-08-31', '2020-09-07'),
(141, 92, 26, '2020-06-23', '2020-07-04'),
(142, 126, 98, '2021-11-15', '2021-11-30'),
(143, 132, 18, '2022-01-07', '2022-01-20'),
(144, 91, 80, '2021-04-12', '2021-04-23'),
(145, 78, 47, '2022-04-28', '2022-05-06'),
(146, 111, 55, '2020-10-02', '2020-10-16'),
(147, 104, 67, '2022-12-10', '2022-12-29'),
(148, 101, 41, '2020-01-22', '2020-02-05'),
(149, 118, 73, '2023-02-11', '2023-02-18'),
(150, 86, 13, '2020-09-03', '2020-09-20'),
(151, 77, 29, '2022-06-09', '2022-06-17'),
(152, 83, 35, '2020-12-08', '2020-12-22'),
(153, 73, 88, '2021-08-17', '2021-08-31'),
(154, 107, 79, '2021-01-19', '2021-02-03'),
(155, 95, 57, '2022-02-03', '2022-02-19'),
(156, 88, 28, '2023-04-14', '2023-04-26'),
(157, 93, 34, '2021-09-02', '2021-09-21'),
(158, 115, 65, '2020-03-07', '2020-03-21'),
(159, 123, 91, '2022-08-12', '2022-08-27'),
(160, 135, 11, '2021-07-02', '2021-07-21'),
(161, 114, 82, '2022-03-28', '2022-04-07'),
(162, 119, 60, '2020-06-01', '2020-06-17'),
(163, 82, 15, '2023-01-06', '2023-01-15'),
(164, 76, 42, '2020-10-18', '2020-10-31'),
(165, 127, 77, '2022-05-25', '2022-06-07'),
(166, 69, 20, '2021-01-04', '2021-01-15'),
(167, 112, 68, '2022-09-18', '2022-10-02'),
(168, 100, 39, '2020-11-19', '2020-12-04'),
(169, 131, 62, '2021-05-23', '2021-06-02'),
(170, 124, 45, '2022-10-30', '2022-11-16'),
(171, 113, 85, '2021-12-29', '2022-01-15'),
(172, 125, 50, '2022-05-13', '2022-05-31'),
(173, 96, 24, '2020-08-24', '2020-09-10'),
(174, 80, 102, '2023-03-12', '2023-03-22'),
(175, 94, 75, '2021-07-25', '2021-08-06'),
(176, 108, 96, '2022-11-02', '2022-11-14'),
(177, 133, 38, '2021-06-19', '2021-07-05'),
(178, 116, 14, '2022-02-26', '2022-03-10'),
(179, 87, 66, '2021-02-14', '2021-03-02'),
(180, 99, 33, '2022-05-01', '2022-05-18'),
(181, 75, 81, '2022-10-05', '2022-10-19'),
(182, 70, 56, '2021-05-10', '2021-05-21'),
(183, 102, 97, '2022-01-27', '2022-02-12'),
(184, 129, 19, '2022-07-05', '2022-07-23'),
(185, 106, 30, '2021-11-25', '2021-12-12'),
(186, 117, 59, '2022-09-04', '2022-09-23'),
(187, 105, 23, '2020-05-16', '2020-05-31'),
(231, 79, 92, '2021-03-18', '2021-04-01'),
(232, 121, 40, '2023-04-01', '2023-04-14'),
(233, 84, 64, '2021-06-07', '2021-06-25'),
(234, 128, 31, '2022-03-02', '2022-03-18'),
(235, 98, 87, '2022-12-22', '2023-01-04'),
(236, 110, 16, '2021-08-01', '2021-08-19'),
(237, 130, 69, '2020-07-28', '2020-08-10'),
(238, 71, 21, '2022-11-14', '2022-11-30'),
(239, 136, 44, '2021-04-29', '2021-05-09'),
(240, 97, 90, '2022-08-29', '2022-09-14'),
(241, 81, 99, '2022-02-20', '2022-03-03'),
(242, 134, 78, '2020-12-14', '2020-12-30'),
(243, 109, 46, '2023-03-02', '2023-03-19'),
(244, 120, 100, '2021-08-30', '2021-09-11'),
(245, 134, 76, '2021-03-10', '2021-03-28'),
(246, 85, 25, '2020-01-14', '2020-01-24'),
(247, 74, 49, '2022-05-26', '2022-06-08'),
(248, 102, 86, '2023-01-15', '2023-01-28'),
(249, 79, 59, '2023-02-25', '2023-03-14'),
(250, 95, 112, '2023-02-18', '2023-03-06'),
(251, 75, 67, '2023-03-20', '2023-04-06'),
(252, 120, 97, '2023-05-02', '2023-05-20'),
(253, 77, 21, '2023-03-16', '2023-03-30'),
(254, 70, 56, '2023-02-02', '2023-02-20'),
(255, 130, 43, '2023-05-01', '2023-05-19'),
(256, 123, 87, '2023-02-21', '2023-03-11'),
(257, 95, 80, '2023-03-23', '2023-04-10'),
(258, 94, 96, '2023-02-15', '2023-03-05'),
(259, 133, 100, '2023-01-18', '2023-01-31'),
(260, 134, 62, '2023-02-08', '2023-02-26'),
(261, 112, 38, '2023-03-13', '2023-03-31'),
(262, 82, 13, '2023-03-08', '2023-03-25'),
(263, 98, 68, '2023-02-09', '2023-02-26'),
(264, 89, 104, '2023-04-03', '2023-04-20'),
(265, 88, 53, '2023-05-05', '2023-05-25'),
(266, 68, 113, '2023-04-22', '2023-05-09'),
(267, 103, 94, '2023-02-25', '2023-03-15'),
(268, 107, 77, '2023-02-12', '2023-03-02'),
(269, 88, 93, '2023-02-10', '2023-02-27'),
(270, 128, 18, '2023-04-24', '2023-05-11'),
(271, 76, 36, '2023-01-11', '2023-01-30'),
(272, 91, 68, '2023-03-06', '2023-03-23'),
(273, 79, 45, '2023-03-29', '2023-04-15'),
(274, 90, 61, '2023-01-28', '2023-02-15'),
(275, 91, 51, '2023-05-10', '2023-05-27'),
(276, 88, 36, '2023-02-23', '2023-03-13'),
(277, 96, 66, '2023-04-01', '2023-04-18'),
(278, 73, 22, '2023-05-08', '2023-05-25'),
(279, 80, 109, '2023-01-23', '2023-02-09'),
(280, 71, 76, '2023-03-19', '2023-04-07'),
(281, 88, 85, '2023-01-18', '2023-02-04'),
(282, 93, 41, '2023-02-04', '2023-02-21'),
(283, 78, 42, '2023-05-02', '2023-05-18'),
(284, 116, 38, '2023-02-27', '2023-03-16'),
(285, 81, 74, '2023-02-10', '2023-02-27'),
(286, 129, 93, '2023-02-03', '2023-02-20'),
(287, 123, 53, '2023-04-16', '2023-05-02'),
(288, 76, 15, '2023-04-12', '2023-04-30'),
(289, 120, 47, '2023-04-07', '2023-04-27'),
(290, 94, 105, '2023-04-08', '2023-04-25'),
(291, 84, 34, '2023-02-07', '2023-02-25'),
(292, 91, 71, '2023-03-28', '2023-04-14'),
(293, 84, 37, '2023-04-04', '2023-04-24'),
(294, 74, 102, '2023-03-30', '2023-04-16'),
(295, 84, 72, '2023-03-12', '2023-03-29'),
(296, 93, 97, '2023-02-05', '2023-02-23'),
(297, 119, 87, '2023-03-23', '2023-04-11'),
(298, 78, 48, '2023-01-29', '2023-02-15'),
(299, 85, 89, '2023-05-10', '2023-06-14'),
(300, 92, 82, '2023-02-24', '2023-03-12'),
(301, 109, 43, '2023-03-15', '2023-04-01'),
(302, 76, 86, '2023-04-06', '2023-04-24'),
(303, 105, 40, '2023-03-13', '2023-03-30'),
(304, 129, 17, '2023-03-22', '2023-04-07'),
(305, 73, 103, '2023-03-26', '2023-04-12'),
(306, 133, 29, '2023-01-24', '2023-02-10'),
(307, 116, 35, '2023-02-01', '2023-02-18'),
(308, 70, 68, '2023-01-14', '2023-01-31'),
(309, 91, 94, '2023-02-19', '2023-03-08'),
(310, 135, 70, '2023-03-23', '2023-04-10'),
(311, 88, 48, '2023-05-06', '2023-05-24'),
(312, 85, 80, '2023-06-23', '2023-06-29'),
(313, 85, 27, '2023-06-16', '2023-06-19'),
(317, 70, 121, '2023-05-30', '2023-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `rating` tinyint(1) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `user_id`, `room_id`, `rating`, `comment`) VALUES
(1, 41, 86, 3, 'Decent stay, but the room was a bit small.'),
(2, 78, 96, 5, 'Amazing experience! Highly recommended.'),
(3, 67, 100, 4, 'Nice hotel, great service.'),
(4, 91, 125, 2, 'Disappointing stay, room was not clean.'),
(5, 34, 73, 1, 'Terrible hotel, rude staff and dirty room.'),
(7, 8, 76, 4, 'Good hotel, friendly staff.'),
(8, 99, 101, 3, 'Average stay, nothing special.'),
(9, 109, 83, 4, 'Had a pleasant stay, would come back again.'),
(10, 55, 93, 5, 'Outstanding hotel, exceeded my expectations.'),
(12, 62, 120, 1, 'Worst hotel experience ever! Dirty room and terrible customer service.'),
(13, 77, 110, 4, 'Comfortable stay, convenient location.'),
(14, 81, 71, 3, 'Decent hotel, but could use some improvements.'),
(15, 56, 85, 4, 'Enjoyable stay, beautiful surroundings.'),
(16, 45, 70, 5, 'Fantastic hotel, highly recommended!'),
(17, 30, 103, 2, 'Not satisfied with the room cleanliness.'),
(18, 11, 95, 1, 'Avoid this hotel! Terrible experience.'),
(19, 70, 102, 5, 'Excellent hotel, top-notch service.'),
(21, 94, 75, 3, 'Average stay, nothing exceptional.'),
(22, 100, 128, 4, 'Had a wonderful time at this hotel.'),
(23, 84, 107, 2, 'Below average experience, would not recommend.'),
(24, 25, 83, 1, 'Horrific hotel, dirty and outdated.'),
(25, 113, 77, 5, 'Absolutely loved every aspect of this hotel.'),
(26, 61, 124, 4, 'Friendly staff and comfortable accommodations.'),
(27, 37, 119, 3, 'Decent stay, but nothing remarkable.'),
(28, 72, 113, 4, 'Good hotel with nice amenities.'),
(29, 92, 88, 2, 'Unpleasant stay, noisy room and slow service.'),
(30, 76, 105, 1, 'Avoid this hotel at all costs! Terrible experience.'),
(31, 43, 80, 5, 'Outstanding hotel, exceeded my expectations.'),
(33, 49, 74, 2, 'Disappointed with the room cleanliness.'),
(34, 97, 121, 1, 'Worst hotel ever! Rude staff and dirty facilities.'),
(35, 89, 108, 4, 'Had a great time at this hotel.'),
(36, 53, 109, 3, 'Average stay, nothing special.'),
(37, 65, 72, 4, 'Enjoyed my stay, pleasant atmosphere.'),
(38, 32, 104, 5, 'Wonderful hotel, highly recommended!'),
(39, 85, 98, 2, 'Below average experience, needs improvement.'),
(40, 47, 80, 1, 'Horrible hotel, dirty room and unhelpful staff.'),
(41, 102, 104, 5, 'Absolutely amazing hotel, exceeded all expectations.'),
(42, 15, 91, 4, 'Good value for money, comfortable accommodations.'),
(43, 101, 99, 3, 'Decent hotel, but could use some improvements.'),
(44, 36, 81, 4, 'Enjoyable stay, beautiful location.'),
(45, 75, 94, 5, 'Exceptional hotel, top-notch service.'),
(47, 80, 122, 1, 'Avoid this hotel! Terrible experience.'),
(48, 27, 118, 5, 'Loved every moment of my stay, amazing hotel.'),
(49, 60, 70, 4, 'Friendly staff and cozy atmosphere.'),
(50, 105, 113, 3, 'Average stay, nothing remarkable.'),
(51, 64, 90, 4, 'Good hotel with great amenities.'),
(52, 86, 87, 2, 'Unsatisfactory stay, noisy room and slow service.'),
(53, 40, 71, 1, 'Terrible hotel, rude staff and dirty room.'),
(54, 28, 118, 4, 'Had a wonderful experience at this hotel.'),
(55, 16, 84, 5, 'Absolutely loved my stay, beautiful room and excellent service!'),
(56, 58, 92, 4, 'Enjoyed my time at this hotel, would recommend.'),
(57, 38, 112, 3, 'Decent stay, but nothing exceptional.'),
(59, 51, 69, 5, 'Amazing hotel, exceeded all expectations.'),
(60, 18, 100, 2, 'Not satisfied with the cleanliness of the room.'),
(61, 74, 122, 1, 'Worst hotel ever! Rude staff and dirty facilities.'),
(62, 103, 125, 5, 'Exceptional hotel, highly recommended!'),
(63, 29, 74, 4, 'Good hotel, friendly staff.'),
(64, 66, 119, 3, 'Average stay, nothing special.'),
(65, 96, 83, 4, 'Had a pleasant experience at this hotel.'),
(66, 19, 85, 5, 'Outstanding hotel, exceeded my expectations.'),
(67, 82, 101, 2, 'Disappointed with the room cleanliness.'),
(68, 57, 95, 1, 'Avoid this hotel! Terrible experience.'),
(69, 87, 102, 5, 'Excellent hotel, top-notch service.'),
(70, 68, 76, 4, 'Great value for the price, would stay again.'),
(71, 112, 84, 3, 'Average stay, nothing exceptional.'),
(72, 26, 77, 5, 'Absolutely loved every aspect of this hotel.'),
(73, 44, 96, 4, 'Friendly staff and comfortable accommodations.'),
(74, 17, 123, 2, 'Unpleasant stay, noisy room and slow service.'),
(75, 93, 78, 1, 'Horrific hotel, dirty and outdated.'),
(76, 52, 121, 5, 'Fantastic stay, couldnt ask for more.'),
(77, 12, 116, 2, 'Disappointed with the cleanliness of the room.'),
(78, 107, 110, 1, 'Worst hotel ever! Rude staff and dirty facilities.'),
(79, 21, 106, 5, 'Wonderful hotel, highly recommended!'),
(80, 79, 124, 4, 'Enjoyed my stay, pleasant atmosphere.'),
(81, 33, 81, 3, 'Decent hotel, but could use some improvements.'),
(82, 83, 125, 4, 'Good hotel with nice amenities.'),
(83, 110, 88, 2, 'Unpleasant stay, noisy room and unhelpful staff.'),
(84, 73, 105, 1, 'Avoid this hotel at all costs! Terrible experience.'),
(85, 42, 97, 5, 'Outstanding hotel, exceeded my expectations.'),
(86, 24, 115, 5, 'Fantastic hotel, highly recommended!'),
(87, 50, 75, 2, 'Disappointed with the cleanliness of the room.'),
(88, 88, 101, 1, 'Horrible hotel, dirty room and rude staff.'),
(89, 111, 108, 4, 'Had a great time at this hotel.'),
(90, 63, 109, 3, 'Average stay, nothing special.'),
(91, 98, 72, 4, 'Enjoyable stay, beautiful surroundings.'),
(92, 31, 111, 5, 'Wonderful hotel, highly recommended!'),
(93, 13, 90, 2, 'Below average experience, needs improvement.'),
(94, 104, 80, 1, 'Horrible hotel, dirty room and unhelpful staff.'),
(95, 22, 112, 4, 'Had a pleasant stay, would come back again.'),
(96, 69, 113, 3, 'Decent stay, but nothing remarkable.'),
(97, 95, 70, 4, 'Good hotel, friendly staff.'),
(98, 39, 119, 5, 'Exceptional hotel, exceeded all expectations.'),
(99, 59, 89, 4, 'Comfortable accommodations and attentive staff.'),
(100, 35, 69, 3, 'Average stay, nothing remarkable.'),
(101, 71, 90, 4, 'Enjoyed my time at this hotel, would recommend.'),
(102, 101, 114, 2, 'Unsatisfactory stay, noisy room and slow service.'),
(103, 81, 120, 1, 'Terrible hotel, rude staff and dirty room.'),
(104, 54, 115, 4, 'Had a wonderful experience at this hotel.'),
(105, 46, 84, 5, 'Absolutely loved my stay, beautiful room and excellent service!'),
(106, 100, 92, 4, 'Enjoyed my stay, good service and comfortable room.'),
(107, 37, 79, 3, 'Average hotel, nothing special.'),
(108, 83, 103, 4, 'Had a pleasant stay, friendly staff.'),
(109, 64, 97, 5, 'Outstanding hotel, exceeded my expectations.'),
(110, 24, 123, 2, 'Disappointed with the room cleanliness.'),
(111, 91, 75, 1, 'Terrible hotel, rude staff and dirty room.'),
(112, 11, 121, 5, 'Fantastic stay, highly recommended!'),
(113, 51, 73, 4, 'Good hotel, great location.'),
(114, 76, 124, 3, 'Decent stay, but nothing remarkable.'),
(115, 42, 113, 4, 'Had a comfortable stay, friendly staff.'),
(116, 87, 88, 2, 'Unsatisfactory experience, room was not up to par.'),
(117, 33, 105, 1, 'Avoid this hotel! Terrible experience.'),
(118, 69, 97, 5, 'Exceptional hotel, highly recommended!'),
(119, 6, 122, 4, 'Enjoyed my stay, would come back again.'),
(120, 55, 74, 3, 'Average hotel, nothing exceptional.'),
(121, 92, 106, 4, 'Good hotel with nice amenities.'),
(122, 15, 85, 2, 'Below average experience, needs improvement.'),
(123, 71, 78, 1, 'Horrible hotel, dirty room and unhelpful staff.'),
(124, 105, 123, 5, 'Fantastic hotel, exceeded my expectations.'),
(125, 49, 116, 5, 'Absolutely loved my stay, top-notch service!'),
(126, 26, 82, 4, 'Great value for the price, comfortable accommodations.'),
(127, 81, 109, 3, 'Decent stay, but could use some improvements.'),
(128, 13, 76, 4, 'Enjoyable stay, friendly staff.'),
(129, 103, 84, 5, 'Amazing hotel, exceeded all expectations.'),
(130, 60, 91, 2, 'Disappointed with the cleanliness of the room.'),
(131, 34, 95, 1, 'Avoid this hotel! Terrible experience.'),
(132, 78, 102, 5, 'Excellent hotel, top-notch service.'),
(133, 48, 86, 4, 'Had a great time at this hotel.'),
(134, 89, 80, 3, 'Average stay, nothing special.'),
(135, 18, 72, 4, 'Enjoyed my stay, beautiful surroundings.'),
(136, 66, 111, 5, 'Wonderful hotel, highly recommended!'),
(137, 28, 88, 2, 'Below average experience, needs improvement.'),
(138, 68, 71, 1, 'Horrific hotel, dirty and outdated.'),
(139, 97, 98, 5, 'Absolutely loved every aspect of this hotel.'),
(140, 57, 107, 4, 'Friendly staff and comfortable accommodations.'),
(141, 36, 75, 2, 'Unsatisfactory stay, noisy room and slow service.'),
(142, 90, 121, 1, 'Avoid this hotel! Terrible experience.'),
(143, 31, 110, 5, 'Outstanding hotel, exceeded my expectations.'),
(144, 79, 96, 4, 'Good hotel, great service.'),
(145, 62, 84, 3, 'Decent stay, but the room was a bit small.'),
(146, 86, 100, 5, 'Amazing experience! Highly recommended.'),
(147, 17, 125, 2, 'Disappointing stay, room was not clean.'),
(148, 74, 73, 1, 'Terrible hotel, rude staff and dirty room.'),
(149, 23, 123, 5, 'Absolutely loved my stay, beautiful room and excellent service!'),
(151, 99, 101, 3, 'Average stay, nothing special.'),
(152, 109, 83, 4, 'Had a pleasant stay, would come back again.'),
(153, 55, 132, 5, 'Outstanding hotel, exceeded my expectations.'),
(154, 6, 114, 2, 'Poor service, unhelpful staff.'),
(155, 62, 120, 1, 'Worst hotel experience ever! Dirty room and terrible customer service.'),
(156, 77, 110, 4, 'Comfortable stay, convenient location.'),
(157, 81, 71, 3, 'Decent hotel, but could use some improvements.'),
(158, 56, 132, 4, 'Enjoyable stay, beautiful surroundings.'),
(159, 45, 78, 5, 'Fantastic hotel, highly recommended!'),
(160, 30, 107, 2, 'Not satisfied with the room cleanliness.'),
(162, 70, 102, 5, 'Excellent hotel, top-notch service.'),
(163, 14, 116, 4, 'Great value for the price, would stay again.'),
(164, 94, 75, 3, 'Average stay, nothing exceptional.'),
(165, 100, 128, 4, 'Had a wonderful time at this hotel.'),
(166, 84, 107, 2, 'Below average experience, would not recommend.'),
(167, 25, 82, 1, 'Horrific hotel, dirty and outdated.'),
(168, 113, 77, 5, 'Absolutely loved every aspect of this hotel.'),
(169, 61, 124, 4, 'Friendly staff and comfortable accommodations.'),
(170, 37, 85, 3, 'Decent stay, but nothing remarkable.'),
(171, 72, 113, 4, 'Good hotel with nice amenities.'),
(172, 92, 88, 2, 'Unpleasant stay, noisy room and slow service.'),
(173, 76, 105, 1, 'Avoid this hotel at all costs! Terrible experience.'),
(174, 43, 97, 5, 'Outstanding hotel, exceeded my expectations.'),
(175, 20, 115, 5, 'Fantastic stay, couldnt ask for more.'),
(176, 49, 69, 2, 'Disappointed with the room cleanliness.'),
(177, 97, 121, 1, 'Worst hotel ever! Rude staff and dirty facilities.'),
(178, 89, 108, 4, 'Had a great time at this hotel.'),
(179, 53, 121, 3, 'Average stay, nothing special.'),
(180, 65, 72, 4, 'Enjoyed my stay, pleasant atmosphere.'),
(181, 32, 111, 5, 'Wonderful hotel, highly recommended!'),
(182, 85, 98, 2, 'Below average experience, needs improvement.'),
(183, 47, 71, 1, 'Horrible hotel, dirty room and unhelpful staff.'),
(184, 102, 104, 5, 'Absolutely amazing hotel, exceeded all expectations.'),
(186, 101, 99, 3, 'Decent hotel, but could use some improvements.'),
(187, 36, 70, 4, 'Enjoyable stay, beautiful location.'),
(188, 75, 94, 5, 'Exceptional hotel, top-notch service.'),
(189, 9, 106, 2, 'Poor service, unresponsive staff.'),
(190, 80, 122, 1, 'Avoid this hotel! Terrible experience.'),
(191, 27, 117, 5, 'Loved every moment of my stay, amazing hotel.'),
(192, 60, 70, 4, 'Friendly staff and cozy atmosphere.'),
(193, 105, 113, 3, 'Average stay, nothing remarkable.'),
(194, 64, 90, 4, 'Good hotel with great amenities.'),
(195, 86, 87, 2, 'Unsatisfactory stay, noisy room and slow service.'),
(196, 40, 79, 1, 'Terrible hotel, rude staff and dirty room.'),
(197, 28, 126, 4, 'Had a wonderful experience at this hotel.'),
(199, 58, 73, 4, 'Enjoyed my time at this hotel, would recommend.'),
(200, 38, 98, 3, 'Decent stay, but nothing exceptional.'),
(201, 10, 89, 4, 'Comfortable accommodations and friendly staff.'),
(202, 51, 90, 5, 'Amazing hotel, exceeded all expectations.'),
(204, 74, 122, 1, 'Worst hotel ever! Rude staff and dirty facilities.'),
(205, 103, 125, 5, 'Exceptional hotel, highly recommended!'),
(206, 29, 70, 4, 'Good hotel, friendly staff.'),
(207, 121, 69, 5, '.'),
(208, 121, 69, 4, 'prijateljuuuu'),
(210, 121, 69, 4, 'kida kida'),
(211, 121, 72, 2, 'aloooooo'),
(212, 121, 71, 4, 'Okej soba.'),
(215, 121, 75, 5, 'asdasfasfsaf.');

--
-- Triggers `review`
--
DELIMITER $$
CREATE TRIGGER `trigger_review_bi` BEFORE INSERT ON `review` FOR EACH ROW BEGIN
	IF NEW.rating < 1 OR NEW.rating > 5 THEN
		SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Invalid input for rating.';
	END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_review_bu` BEFORE UPDATE ON `review` FOR EACH ROW BEGIN
	IF NEW.rating < 1 OR NEW.rating > 5 THEN
		SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Invalid input for rating.';
	END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) UNSIGNED NOT NULL,
  `number_of_rooms` tinyint(3) UNSIGNED NOT NULL,
  `number_of_sleeping_places` tinyint(3) UNSIGNED NOT NULL,
  `daily_price` float UNSIGNED NOT NULL DEFAULT 0,
  `has_parking` tinyint(1) UNSIGNED NOT NULL,
  `has_terrace` tinyint(1) UNSIGNED NOT NULL,
  `has_kitchen` tinyint(1) UNSIGNED NOT NULL,
  `has_network` tinyint(1) UNSIGNED NOT NULL,
  `has_tv` tinyint(1) UNSIGNED NOT NULL,
  `is_smoking_free` tinyint(1) UNSIGNED NOT NULL,
  `has_air_conditioner` tinyint(1) UNSIGNED NOT NULL,
  `has_smoke_alarm` tinyint(1) UNSIGNED NOT NULL,
  `is_pet_friendly` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `number_of_rooms`, `number_of_sleeping_places`, `daily_price`, `has_parking`, `has_terrace`, `has_kitchen`, `has_network`, `has_tv`, `is_smoking_free`, `has_air_conditioner`, `has_smoke_alarm`, `is_pet_friendly`) VALUES
(68, 3, 6, 100, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(69, 4, 8, 150, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(70, 2, 4, 80, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(71, 5, 10, 200, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 1, 2, 60, 0, 1, 0, 1, 1, 1, 0, 1, 0),
(73, 5, 10, 180, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(74, 3, 6, 120, 1, 1, 0, 1, 1, 1, 1, 1, 1),
(75, 2, 4, 90, 0, 0, 1, 0, 1, 1, 0, 1, 1),
(76, 4, 8, 160, 1, 1, 1, 1, 0, 1, 1, 1, 1),
(77, 3, 6, 110, 1, 1, 0, 1, 1, 1, 1, 0, 1),
(78, 4, 8, 130, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(79, 2, 4, 80, 1, 1, 0, 1, 1, 0, 1, 0, 1),
(80, 3, 6, 110, 1, 1, 1, 0, 0, 1, 0, 1, 0),
(81, 5, 10, 150, 0, 1, 1, 1, 0, 1, 1, 0, 1),
(82, 1, 2, 70, 0, 0, 0, 1, 1, 1, 1, 1, 0),
(83, 3, 6, 120, 1, 0, 1, 1, 0, 1, 0, 0, 1),
(84, 2, 4, 80, 0, 1, 0, 1, 1, 1, 1, 1, 1),
(85, 4, 8, 140, 1, 1, 1, 0, 1, 0, 1, 0, 1),
(86, 3, 6, 100, 1, 1, 0, 1, 0, 1, 1, 1, 0),
(87, 5, 10, 160, 0, 0, 1, 1, 1, 1, 0, 0, 1),
(88, 2, 4, 80, 0, 1, 0, 1, 1, 1, 0, 1, 1),
(89, 3, 6, 110, 1, 1, 1, 1, 0, 1, 1, 1, 1),
(90, 4, 8, 130, 1, 0, 0, 0, 1, 1, 1, 0, 0),
(91, 1, 2, 60, 0, 0, 1, 1, 0, 0, 1, 0, 1),
(92, 2, 4, 90, 1, 1, 1, 0, 0, 1, 1, 1, 0),
(93, 5, 10, 150, 0, 1, 0, 1, 1, 0, 1, 1, 1),
(94, 3, 6, 110, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(95, 4, 8, 130, 1, 0, 0, 0, 1, 1, 1, 1, 0),
(96, 2, 4, 80, 0, 1, 0, 1, 0, 1, 0, 1, 0),
(97, 3, 6, 100, 1, 1, 0, 1, 0, 1, 1, 0, 1),
(98, 5, 10, 160, 0, 0, 1, 1, 1, 0, 0, 1, 1),
(99, 2, 4, 90, 0, 1, 1, 1, 0, 1, 1, 1, 0),
(100, 4, 8, 140, 1, 0, 1, 0, 1, 1, 0, 0, 1),
(101, 1, 2, 70, 0, 0, 1, 1, 0, 0, 1, 1, 1),
(102, 3, 6, 120, 1, 0, 1, 1, 1, 1, 1, 0, 0),
(103, 2, 4, 80, 0, 1, 0, 1, 0, 1, 1, 0, 0),
(104, 4, 8, 140, 1, 1, 0, 0, 0, 1, 1, 1, 1),
(105, 3, 6, 100, 1, 1, 1, 0, 1, 1, 0, 1, 1),
(106, 5, 10, 160, 0, 0, 0, 1, 1, 0, 1, 0, 0),
(107, 2, 4, 90, 1, 1, 1, 0, 1, 0, 0, 0, 1),
(108, 3, 6, 120, 1, 0, 0, 1, 0, 1, 1, 1, 1),
(109, 4, 8, 130, 1, 0, 1, 1, 1, 0, 0, 1, 0),
(110, 1, 2, 70, 0, 0, 1, 0, 0, 1, 1, 0, 1),
(111, 3, 6, 100, 1, 1, 0, 0, 1, 1, 0, 0, 1),
(112, 2, 4, 80, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(113, 5, 10, 160, 0, 1, 1, 0, 0, 0, 1, 0, 1),
(114, 3, 6, 120, 1, 1, 0, 1, 0, 0, 1, 1, 1),
(115, 4, 8, 130, 1, 0, 1, 1, 1, 1, 0, 0, 0),
(116, 2, 4, 80, 0, 1, 0, 1, 1, 1, 1, 0, 1),
(117, 3, 6, 100, 1, 1, 1, 1, 0, 1, 1, 1, 0),
(118, 5, 10, 150, 0, 1, 0, 0, 1, 0, 1, 1, 0),
(119, 4, 8, 130, 1, 0, 0, 1, 0, 1, 0, 1, 1),
(120, 2, 4, 80, 0, 1, 1, 1, 1, 0, 1, 1, 0),
(121, 3, 6, 110, 1, 1, 0, 1, 0, 0, 0, 0, 1),
(122, 5, 10, 150, 0, 1, 1, 0, 1, 1, 1, 0, 0),
(123, 2, 4, 90, 1, 0, 1, 1, 0, 0, 1, 1, 1),
(124, 3, 6, 110, 1, 1, 0, 0, 1, 0, 1, 1, 0),
(125, 4, 8, 140, 1, 1, 1, 1, 1, 1, 0, 0, 1),
(126, 1, 2, 70, 0, 0, 0, 1, 0, 1, 1, 1, 1),
(127, 3, 6, 100, 1, 0, 1, 0, 1, 1, 0, 0, 0),
(128, 2, 4, 80, 0, 1, 0, 1, 0, 1, 1, 0, 1),
(129, 5, 10, 160, 0, 0, 1, 1, 1, 0, 0, 1, 1),
(130, 3, 6, 110, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(131, 4, 8, 140, 1, 0, 0, 1, 0, 1, 0, 1, 0),
(132, 2, 4, 80, 0, 1, 0, 1, 1, 1, 0, 0, 1),
(133, 3, 6, 100, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(134, 5, 10, 150, 0, 1, 0, 0, 0, 0, 1, 0, 1),
(135, 4, 8, 130, 1, 0, 1, 1, 0, 0, 1, 1, 1),
(136, 2, 4, 90, 0, 1, 1, 1, 0, 1, 1, 0, 0);

--
-- Triggers `room`
--
DELIMITER $$
CREATE TRIGGER `trigger_room_bi` BEFORE INSERT ON `room` FOR EACH ROW BEGIN
	IF NEW.has_parking > 1 OR NEW.has_parking < 0 THEN
		SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'has_parking: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_terrace > 1 OR NEW.has_terrace < 0 THEN
		SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'has_terrace: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_kitchen > 1 OR NEW.has_kitchen < 0 THEN
		SIGNAL SQLSTATE '50003' SET MESSAGE_TEXT = 'has_kitchen: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_network > 1 OR NEW.has_network < 0 THEN
		SIGNAL SQLSTATE '50004' SET MESSAGE_TEXT = 'has_network: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_tv > 1 OR NEW.has_tv < 0 THEN
		SIGNAL SQLSTATE '50005' SET MESSAGE_TEXT = 'has_tv: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.is_smoking_free > 1 OR NEW.is_smoking_free < 0 THEN
		SIGNAL SQLSTATE '50006' SET MESSAGE_TEXT = 'is_smoking_free: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_air_conditioner > 1 OR NEW.has_air_conditioner < 0 THEN
		SIGNAL SQLSTATE '50007' SET MESSAGE_TEXT = 'has_air_conditioner: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_smoke_alarm > 1 OR NEW.has_smoke_alarm < 0 THEN
		SIGNAL SQLSTATE '50008' SET MESSAGE_TEXT = 'has_smoke_alarm: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.is_pet_friendly > 1 OR NEW.is_pet_friendly < 0 THEN
		SIGNAL SQLSTATE '50009' SET MESSAGE_TEXT = 'is_pet_friendly: Boolean value can be only 1 or 0.';
	END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_room_bu` BEFORE UPDATE ON `room` FOR EACH ROW BEGIN
	IF NEW.has_parking > 1 OR NEW.has_parking < 0 THEN
		SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'has_parking: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_terrace > 1 OR NEW.has_terrace < 0 THEN
		SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'has_terrace: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_kitchen > 1 OR NEW.has_kitchen < 0 THEN
		SIGNAL SQLSTATE '50003' SET MESSAGE_TEXT = 'has_kitchen: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_network > 1 OR NEW.has_network < 0 THEN
		SIGNAL SQLSTATE '50004' SET MESSAGE_TEXT = 'has_network: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_tv > 1 OR NEW.has_tv < 0 THEN
		SIGNAL SQLSTATE '50005' SET MESSAGE_TEXT = 'has_tv: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.is_smoking_free > 1 OR NEW.is_smoking_free < 0 THEN
		SIGNAL SQLSTATE '50006' SET MESSAGE_TEXT = 'is_smoking_free: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_air_conditioner > 1 OR NEW.has_air_conditioner < 0 THEN
		SIGNAL SQLSTATE '50007' SET MESSAGE_TEXT = 'has_air_conditioner: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.has_smoke_alarm > 1 OR NEW.has_smoke_alarm < 0 THEN
		SIGNAL SQLSTATE '50008' SET MESSAGE_TEXT = 'has_smoke_alarm: Boolean value can be only 1 or 0.';
	END IF;
	IF NEW.is_pet_friendly > 1 OR NEW.is_pet_friendly < 0 THEN
		SIGNAL SQLSTATE '50009' SET MESSAGE_TEXT = 'is_pet_friendly: Boolean value can be only 1 or 0.';
	END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `room_seq`
--

CREATE TABLE `room_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `room_seq`
--

INSERT INTO `room_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'test', 'test@gmail.com', 'test123'),
(2, 'sarahsmith', 'sarah.smith@example.com', 'R3p#53T@D!'),
(3, 'alex.brown', 'alex.brown@example.com', 'B@nD1t$u3$'),
(4, 'emily.jones', 'emily.jones@example.com', 'P@ssw0rd!23'),
(5, 'michael.wilson', 'michael.wilson@example.com', 'W1nt3r!5C0m1ng'),
(6, 'jessica.davis', 'jessica.davis@example.com', 'J@d#v1s$987'),
(7, 'daniel.thomas', 'daniel.thomas@example.com', 'Th0m@$123!'),
(8, 'olivia.martin', 'olivia.martin@example.com', 'M@rt!n$01'),
(9, 'william.johnson', 'william.johnson@example.com', 'J0hn$0n!345'),
(10, 'sophia.taylor', 'sophia.taylor@example.com', 'T@yl0r#12$'),
(11, 'james.jackson', 'james.jackson@example.com', 'J@ck$0n123'),
(12, 'ava.white', 'ava.white@example.com', 'W#1t3H0r$3'),
(13, 'logan.thompson', 'logan.thompson@example.com', 'Th0mp$0n456!'),
(14, 'mia.anderson', 'mia.anderson@example.com', '4nd3r$0n!78'),
(15, 'benjamin.harris', 'benjamin.harris@example.com', 'H@rr1$123!'),
(16, 'charlotte.lewis', 'charlotte.lewis@example.com', 'L3w1$#2023'),
(17, 'david.clark', 'david.clark@example.com', 'Cl@rk$R3v!3w'),
(18, 'abigail.hall', 'abigail.hall@example.com', 'H@ll#Ab1g@!'),
(19, 'joseph.walker', 'joseph.walker@example.com', 'W@lk3rJ0e!'),
(20, 'harper.young', 'harper.young@example.com', 'Y0ung!21#'),
(21, 'henry.green', 'henry.green@example.com', 'Gr33nH3nry!'),
(22, 'victoria.mitchell', 'victoria.mitchell@example.com', 'M!tch3llV1c$'),
(23, 'samuel.baker', 'samuel.baker@example.com', 'B@k3r#S@muel'),
(24, 'evelyn.hall', 'evelyn.hall@example.com', 'H@ll$Ev3lYn'),
(25, 'sebastian.nelson', 'sebastian.nelson@example.com', 'N3l$0nS3b@st1@n'),
(26, 'chloe.roberts', 'chloe.roberts@example.com', 'R0b3rt$C@$t3r'),
(27, 'andrew.cook', 'andrew.cook@example.com', 'C00k!Andrew'),
(28, 'grace.rogers', 'grace.rogers@example.com', 'R0g3r$Gr@ce'),
(29, 'dylan.kelly', 'dylan.kelly@example.com', 'K3lly$Dyl@n'),
(30, 'zoe.phillips', 'zoe.phillips@example.com', 'Ph!ll1p$Z03'),
(31, 'ryan.turner', 'ryan.turner@example.com', 'Turn3rRy@n'),
(32, 'nora.carter', 'nora.carter@example.com', 'C@rt3r#N0r@'),
(33, 'carter.bennett', 'carter.bennett@example.com', 'B3nn3tt$C@rt3r'),
(34, 'layla.morris', 'layla.morris@example.com', 'M0rr!s#L@yla'),
(35, 'charles.cooper', 'charles.cooper@example.com', 'C00p3r#Ch@rl3s'),
(36, 'grace.nguyen', 'grace.nguyen@example.com', 'Nguy3n$Gr@ce'),
(37, 'elijah.rivera', 'elijah.rivera@example.com', 'R!v3r@E1!j@h'),
(38, 'hannah.rossi', 'hannah.rossi@example.com', 'R0$$1#H@nn@h'),
(39, 'eva.patel', 'eva.patel@example.com', 'P@t3lEva!'),
(40, 'logan.wright', 'logan.wright@example.com', 'Wr!ghtL0g@n'),
(41, 'amelia.gonzalez', 'amelia.gonzalez@example.com', 'G0nz@l3z#Am3l!@'),
(42, 'muhammad.hernandez', 'muhammad.hernandez@example.com', 'H3rn@nd3z$Muh@mM@d'),
(43, 'lucas.kim', 'lucas.kim@example.com', 'K!m#L0c@s'),
(44, 'mia.hughes', 'mia.hughes@example.com', 'Hug#M!@23'),
(45, 'cameron.collins', 'cameron.collins@example.com', 'C0ll!n$C@m3r0n'),
(46, 'scarlett.richardson', 'scarlett.richardson@example.com', 'R!ch@rd$0n$C@rl3tt'),
(47, 'nathan.cruz', 'nathan.cruz@example.com', 'CrUz$N@th@n'),
(48, 'zoey.howard', 'zoey.howard@example.com', 'H0w@rd#Z03y'),
(49, 'oliver.ward', 'oliver.ward@example.com', 'W@rd0l1v3r!'),
(50, 'lillian.rodriguez', 'lillian.rodriguez@example.com', 'R0dr!gu3z#L1ll!@n'),
(51, 'andrew.lopez', 'andrew.lopez@example.com', 'L0p3z$@ndr3w'),
(52, 'morgan.bailey', 'morgan.bailey@example.com', 'B@!l3y#M0rg@n'),
(53, 'ella.nguyen', 'ella.nguyen@example.com', 'Nguy3n#3ll@'),
(54, 'jonathan.watson', 'jonathan.watson@example.com', 'W@t$0n#J0n@th@n'),
(55, 'natalie.harris', 'natalie.harris@example.com', 'H@rr!sN@t@l!3'),
(56, 'lucas.young', 'lucas.young@example.com', 'Y0ung!L$@'),
(57, 'ariana.hall', 'ariana.hall@example.com', 'H@ll#4r!@n@'),
(58, 'david.garcia', 'david.garcia@example.com', 'G@rc!@D@v1d'),
(59, 'sophie.richardson', 'sophie.richardson@example.com', 'R!ch@rd$0n#S0ph!3'),
(60, 'jack.turner', 'jack.turner@example.com', 'Turn3r#J@ck'),
(61, 'penelope.harris', 'penelope.harris@example.com', 'H@rr!$P3n3l0p3'),
(62, 'jacob.thomas', 'jacob.thomas@example.com', 'Th0m@$J@c0b'),
(63, 'madison.cook', 'madison.cook@example.com', 'C00k#M@d!s0n'),
(64, 'lucas.bennett', 'lucas.bennett@example.com', 'B3nn3tt$Luc@S'),
(65, 'harper.jackson', 'harper.jackson@example.com', 'J@ck$0n#H@rp3r'),
(66, 'amelia.nelson', 'amelia.nelson@example.com', 'N3l$0n#4m3l!@'),
(67, 'ethan.walker', 'ethan.walker@example.com', 'W@lk3r#3th@n'),
(68, 'mia.lewis', 'mia.lewis@example.com', 'L3w!$M!@'),
(69, 'william.clark', 'william.clark@example.com', 'Cl@rk#W!ll!@m'),
(70, 'ava.hall', 'ava.hall@example.com', 'H@ll#Av@'),
(71, 'michael.mitchell', 'michael.mitchell@example.com', 'M!tch3ll$M!ch@3l'),
(72, 'sophia.baker', 'sophia.baker@example.com', 'B@k3r#S0ph!@'),
(73, 'jackson.martin', 'jackson.martin@example.com', 'M@rt!n#J@ck$0n'),
(74, 'charlotte.anderson', 'charlotte.anderson@example.com', '4nd3r$0n#Ch@rl0tt3'),
(75, 'joseph.brown', 'joseph.brown@example.com', 'Br0wn$J0$3ph'),
(76, 'amelia.thompson', 'amelia.thompson@example.com', 'Th0mp$0n#4m3l!@'),
(77, 'daniel.davis', 'daniel.davis@example.com', 'D@v!$D@n13l'),
(78, 'emily.smith', 'emily.smith@example.com', 'Sm!th#3m!lY'),
(79, 'oliver.wilson', 'oliver.wilson@example.com', 'W!l$0n#0l!v3r'),
(80, 'charlotte.johnson', 'charlotte.johnson@example.com', 'J0hn$0n#Ch@rl0tt3'),
(81, 'joseph.taylor', 'joseph.taylor@example.com', 'T@yl0r#J0$3ph'),
(82, 'lillian.brown', 'lillian.brown@example.com', 'Br0wn#L!ll!@n'),
(83, 'samuel.davis', 'samuel.davis@example.com', 'D@v!$S@mU3l'),
(84, 'david.anderson', 'david.anderson@example.com', '4nd3r$0n#D@v!d'),
(85, 'abigail.jones', 'abigail.jones@example.com', 'J0n3$@b!g@!'),
(86, 'henry.martin', 'henry.martin@example.com', 'M@rt!n#H3nRy'),
(87, 'sophie.wilson', 'sophie.wilson@example.com', 'W!l$0n#S0ph!3'),
(88, 'andrew.johnson', 'andrew.johnson@example.com', 'J0hn$0n#@ndr3w'),
(89, 'mia.davis', 'mia.davis@example.com', 'D@v!$M!@'),
(90, 'logan.miller', 'logan.miller@example.com', 'M!ll3r#L0g@n'),
(91, 'charles.smith', 'charles.smith@example.com', 'Sm!th#Ch@rl3s'),
(92, 'amelia.walker', 'amelia.walker@example.com', 'W@lk3r#4m3l!@'),
(93, 'dylan.anderson', 'dylan.anderson@example.com', '4nd3r$0n#Dyl@n'),
(94, 'lucas.clark', 'lucas.clark@example.com', 'Cl@rk#Luc@s'),
(95, 'eva.mitchell', 'eva.mitchell@example.com', 'M!tch3ll#3v@'),
(96, 'charlotte.rodriguez', 'charlotte.rodriguez@example.com', 'R0dr!gu3z#Ch@rl0tt3'),
(97, 'hannah.young', 'hannah.young@example.com', 'Y0ung#H@nn@h'),
(98, 'nathan.carter', 'nathan.carter@example.com', 'C@rt3r#N@th@n'),
(99, 'samuel.martinez', 'samuel.martinez@example.com', 'M@rt!n3z#S@mU3l'),
(100, 'olivia.perez', 'olivia.perez@example.com', 'P3r3z#0l!v!@'),
(101, 'avery.gonzalez', 'avery.gonzalez@example.com', 'G0nz@l3z#Av3ry'),
(102, 'lucas.rodriguez', 'lucas.rodriguez@example.com', 'R0dr!gu3z#L0c@s'),
(103, 'lillian.kelly', 'lillian.kelly@example.com', 'K3lly#L!ll!@n'),
(104, 'lucas.turner', 'lucas.turner@example.com', 'Turn3r#L0c@s'),
(105, 'mia.brown', 'mia.brown@example.com', 'Br0wn#M!@'),
(106, 'charles.lopez', 'charles.lopez@example.com', 'L0p3z#Ch@rl3s'),
(107, 'mia.scott', 'mia.scott@example.com', 'Sc0tt#M!@'),
(108, 'jackson.bailey', 'jackson.bailey@example.com', 'B@!l3y#J@ck$0n'),
(109, 'penelope.richardson', 'penelope.richardson@example.com', 'R!ch@rd$0n#P3n3l0p3'),
(110, 'andrew.roberts', 'andrew.roberts@example.com', 'R0b3rt$#@ndr3w'),
(111, 'olivia.rivera', 'olivia.rivera@example.com', 'R!v3r@#0l!v!@'),
(112, 'joseph.collins', 'joseph.collins@example.com', 'C0ll!n$#J0$3ph'),
(113, 'mia.morris', 'mia.morris@example.com', 'M0rr!$#M!@'),
(121, 'dev.test', 'dev.test@gmail.com', 'test123'),
(124, 'test.test', 'test1234@gmail.com', 'test123');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `trigger_user_bi` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
	IF NEW.username NOT RLIKE '^[a-zA-Z0-9_.]{4,64}$' THEN
   	SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Invalid value for username.';
	END IF;
	IF NEW.password NOT RLIKE '^[a-zA-Z0-9_.!@#$]{6,255}$' THEN
   	SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Invalid value for password.';
	END IF;
  	IF NEW.email NOT RLIKE '^[a-zA-Z0-9_.-]+@([a-zA-Z0-9]+.)+[a-zA-Z0-9]{2,4}$' THEN
   	SIGNAL SQLSTATE '50003' SET MESSAGE_TEXT = 'Invalid value for email.';
	END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_user_bu` BEFORE UPDATE ON `user` FOR EACH ROW BEGIN
	IF NEW.username NOT RLIKE '^[a-zA-Z0-9_.]{4,64}$' THEN
   	SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Invalid value for username.';
	END IF;
	IF NEW.password NOT RLIKE '^[a-zA-Z0-9_.!@#$]{6,255}$' THEN
   	SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Invalid value for password.';
	END IF;
  	IF NEW.email NOT RLIKE '^[a-zA-Z0-9_.-]+@([a-zA-Z0-9]+.)+[a-zA-Z0-9]{2,4}$' THEN
   	SIGNAL SQLSTATE '50003' SET MESSAGE_TEXT = 'Invalid value for email.';
	END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `uq_image_room_id_link` (`room_id`,`link`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `fk_reservation_room_id` (`room_id`),
  ADD KEY `fk_reservation_user_id` (`user_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `fk_review_room_id` (`room_id`),
  ADD KEY `fk_review_user_id` (`user_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_image_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON UPDATE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_reservation_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservation_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_review_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_review_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
