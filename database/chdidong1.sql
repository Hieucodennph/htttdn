-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 10:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chdidong`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangchamcong`
--

CREATE TABLE `bangchamcong` (
  `id` int(11) NOT NULL,
  `idNV` int(11) NOT NULL,
  `NGAYLAM` date NOT NULL,
  `CHECKIN` time NOT NULL,
  `CHECKOUT` time DEFAULT NULL,
  `HESO` decimal(2,1) NOT NULL DEFAULT 1.0,
  `idNGAYLE` int(11) DEFAULT NULL,
  `TANGCA` float DEFAULT 0,
  `TANGCA_CHECKIN` time DEFAULT NULL,
  `AUTO_CHECKOUT` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bangchamcong`
--

INSERT INTO `bangchamcong` (`id`, `idNV`, `NGAYLAM`, `CHECKIN`, `CHECKOUT`, `HESO`, `idNGAYLE`, `TANGCA`, `TANGCA_CHECKIN`, `AUTO_CHECKOUT`) VALUES
(40, 12, '2025-03-24', '19:31:11', '19:31:12', 2.0, NULL, 0.52, NULL, 0),
(41, 13, '2025-03-24', '19:33:05', '19:33:06', 1.5, NULL, 0.551667, NULL, 0),
(44, 12, '2025-03-25', '08:45:31', '12:58:43', 1.0, NULL, 0, NULL, 1),
(48, 12, '2025-04-01', '15:42:17', '15:51:07', 1.0, NULL, 0, NULL, 0),
(49, 12, '2025-04-13', '17:19:43', '17:19:50', 1.5, 5, 0, NULL, 0),
(50, 12, '2025-04-13', '17:19:52', '17:19:57', 1.5, 5, 0, NULL, 0),
(51, 13, '2025-04-13', '17:47:57', '17:49:46', 1.5, 5, 0, NULL, 0),
(52, 12, '2025-04-14', '12:04:04', '12:04:05', 1.0, NULL, 0, NULL, 0),
(53, 12, '2025-05-09', '21:49:15', '21:49:34', 1.5, NULL, 2.82611, NULL, 0),
(54, 12, '2025-05-09', '21:50:42', NULL, 1.5, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bangluong`
--

CREATE TABLE `bangluong` (
  `idLUONG` int(11) NOT NULL,
  `idNV` int(11) NOT NULL,
  `TONGTIEN` double NOT NULL,
  `THANG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NAM` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LUONGCHINH` double NOT NULL DEFAULT 0,
  `PHUCAP` double NOT NULL DEFAULT 0,
  `KHAUTRU` double NOT NULL DEFAULT 0,
  `TAMUNG` double DEFAULT 0,
  `TINHTRANG` tinyint(1) NOT NULL DEFAULT 0,
  `GHICHUPC` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `GHICHUKT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LUONGHIENTAI` double NOT NULL,
  `CHUCVUHIENTAI` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bangluong`
--

INSERT INTO `bangluong` (`idLUONG`, `idNV`, `TONGTIEN`, `THANG`, `NAM`, `LUONGCHINH`, `PHUCAP`, `KHAUTRU`, `TAMUNG`, `TINHTRANG`, `GHICHUPC`, `GHICHUKT`, `LUONGHIENTAI`, `CHUCVUHIENTAI`) VALUES
(4, 12, 1448935, '01', '2024', 0, 0, 0, 6, 0, '', '', 96153.85, ''),
(5, 12, 1935885, '02', '2024', 0, 0, 0, 0, 1, '', '', 0, ''),
(26, 12, 0, '04', '2024', 0, 0, 0, 0, 0, NULL, NULL, 0, ''),
(27, 12, 0, '07', '2024', 0, 0, 0, 0, 0, NULL, NULL, 0, ''),
(28, 12, 0, '05', '2025', 0, 0, 0, 465, 0, NULL, NULL, 0, ''),
(29, 12, 1935885, '01', '2025', 0, 0, 0, 7576, 0, NULL, '', 0, 'admin'),
(30, 13, 0, '01', '2024', 0, 0, 0, 0, 0, NULL, NULL, 0, ''),
(31, 13, 0, '01', '2025', 0, 0, 0, 0, 0, NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `idTK` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `idCT` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `MAUSAC` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DUNGLUONG` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `THOIGIANTHEM` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`idTK`, `idSP`, `idCT`, `SOLUONG`, `MAUSAC`, `DUNGLUONG`, `THOIGIANTHEM`) VALUES
(35, 2, 11, 2, 'trắng', '128gb', '2025-05-06 13:24:54'),
(38, 1, 2, 1, 'đen', '256gb', '2025-05-09 02:41:48'),
(38, 5, 68, 3, 'trắng', 'không có', '2025-05-09 03:54:19'),
(38, 33, 164, 2, '', '', '2025-05-09 04:39:37'),
(38, 1, 4, 1, 'trắng', '128gb', '2025-05-09 06:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idHD` int(11) NOT NULL,
  `idCTSP` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idHD`, `idCTSP`, `SOLUONG`) VALUES
(57, 141, 1),
(58, 150, 1),
(59, 150, 1),
(60, 150, 1),
(61, 150, 1),
(62, 8, 1),
(63, 11, 1),
(64, 11, 1),
(65, 4, 1),
(66, 41, 1),
(66, 40, 1),
(66, 2, 1),
(68, 37, 1),
(69, 140, 1),
(70, 40, 2),
(72, 12, 1),
(73, 4, 1),
(74, 41, 3),
(75, 40, 1),
(76, 4, 2),
(77, 68, 1),
(78, 172, 1),
(78, 40, 2),
(78, 151, 1),
(79, 36, 1),
(80, 33, 2),
(81, 11, 4),
(82, 35, 10),
(83, 151, 1),
(84, 34, 2),
(84, 1, 2),
(85, 39, 1),
(85, 31, 1),
(86, 36, 1),
(87, 1, 1),
(88, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `idPN` int(11) NOT NULL,
  `idCTSP` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `GIANHAP` float NOT NULL,
  `DIEUCHINHGIA` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`idPN`, `idCTSP`, `SOLUONG`, `GIANHAP`, `DIEUCHINHGIA`) VALUES
(1, 1, 3, 19200000, 0),
(1, 3, 3, 19120000, 0),
(1, 4, 3, 26232000, 0),
(1, 5, 3, 4952000, 0),
(2, 1, 3, 19200000, 0),
(2, 1, 3, 19200000, 0),
(2, 1, 3, 19200000, 0),
(3, 1, 3, 19200000, 0),
(3, 1, 3, 19200000, 0),
(3, 1, 3, 19200000, 0),
(4, 1, 3, 19200000, 0),
(4, 1, 3, 19200000, 0),
(5, 6, 1, 0, 0),
(6, 4, 1, 0, 0),
(7, 5, 1, 0, 0),
(7, 8, 5, 0, 0),
(8, 6, 2, 0, 0),
(8, 9, 1, 0, 0),
(8, 13, 1, 0, 0),
(8, 4, 5, 0, 0),
(8, 8, 4, 0, 0),
(9, 3, 1, 0, 0),
(9, 85, 3, 0, 0),
(10, 6, 2, 0, 0),
(10, 9, 1, 0, 0),
(10, 4, 5, 0, 0),
(10, 8, 4, 0, 0),
(10, 13, 1, 0, 0),
(11, 6, 1, 0, 0),
(11, 78, 1, 0, 0),
(11, 93, 1, 0, 0),
(12, 4, 1, 0, 0),
(12, 14, 1, 0, 0),
(12, 94, 1, 0, 0),
(12, 86, 1, 0, 0),
(12, 92, 1, 0, 0),
(12, 102, 1, 0, 0),
(12, 101, 1, 0, 0),
(13, 101, 1, 0, 0),
(13, 103, 1, 0, 0),
(13, 102, 1, 0, 0),
(14, 102, 1, 0, 0),
(14, 103, 1, 0, 0),
(15, 103, 2, 0, 0),
(16, 103, 7, 0, 0),
(17, 2, 11, 0, 0),
(18, 1, 11, 0, 0),
(19, 1, 12, 0, 0),
(20, 2, 11, 0, 0),
(21, 4, 11, 0, 0),
(22, 3, 15, 0, 0),
(1, 1, 3, 19200000, 0),
(1, 3, 3, 19120000, 0),
(1, 4, 3, 26232000, 0),
(1, 5, 3, 4952000, 0),
(2, 1, 3, 19200000, 0),
(2, 1, 3, 19200000, 0),
(2, 1, 3, 19200000, 0),
(3, 1, 3, 19200000, 0),
(3, 1, 3, 19200000, 0),
(3, 1, 3, 19200000, 0),
(4, 1, 3, 19200000, 0),
(4, 1, 3, 19200000, 0),
(5, 6, 1, 0, 0),
(6, 4, 1, 0, 0),
(7, 5, 1, 0, 0),
(7, 8, 5, 0, 0),
(8, 6, 2, 0, 0),
(8, 9, 1, 0, 0),
(8, 13, 1, 0, 0),
(8, 4, 5, 0, 0),
(8, 8, 4, 0, 0),
(9, 3, 1, 0, 0),
(9, 85, 3, 0, 0),
(10, 6, 2, 0, 0),
(10, 9, 1, 0, 0),
(10, 4, 5, 0, 0),
(10, 8, 4, 0, 0),
(10, 13, 1, 0, 0),
(11, 6, 1, 0, 0),
(11, 78, 1, 0, 0),
(11, 93, 1, 0, 0),
(12, 4, 1, 0, 0),
(12, 14, 1, 0, 0),
(12, 94, 1, 0, 0),
(12, 86, 1, 0, 0),
(12, 92, 1, 0, 0),
(12, 102, 1, 0, 0),
(12, 101, 1, 0, 0),
(13, 101, 1, 0, 0),
(13, 103, 1, 0, 0),
(13, 102, 1, 0, 0),
(14, 102, 1, 0, 0),
(14, 103, 1, 0, 0),
(15, 103, 2, 0, 0),
(16, 103, 7, 0, 0),
(17, 2, 11, 0, 0),
(18, 1, 11, 0, 0),
(19, 1, 12, 0, 0),
(20, 2, 11, 0, 0),
(21, 4, 11, 0, 0),
(22, 3, 15, 0, 0),
(23, 166, 10, 13000000, 100000),
(23, 165, 4, 13000000, 10000),
(24, 4, 1, 19200000, 0),
(25, 1, 1, 19200000, 0),
(26, 8, 1, 28000000, 3000000),
(27, 1, 1, 19200000, 0),
(28, 134, 1, 199200, 0),
(29, 1, 10, 19200000, 19890000),
(29, 8, 10, 28000000, 3000000),
(30, 1, 10, 19200000, 2000),
(31, 2, 5, 19200000, 3000000),
(31, 3, 10, 19200000, 6000000),
(32, 1, 10, 19200000, 2000),
(32, 4, 10, 19200000, 0),
(32, 134, 10, 199200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `idCTSP` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `MAUSAC` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DUNGLUONG` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIEUCHINHGIA` float DEFAULT 0,
  `TONKHO` int(11) NOT NULL DEFAULT 0,
  `IMG` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`idCTSP`, `idSP`, `MAUSAC`, `DUNGLUONG`, `DIEUCHINHGIA`, `TONKHO`, `IMG`) VALUES
(1, 1, 'Đen', '128GB', 2000, 17, 'iphone-16-den.jpg'),
(2, 1, 'Đen', '256GB', 3000000, 6, 'iphone-16-den.jpg'),
(3, 1, 'Đen', '512GB', 6000000, 11, 'iphone-16-den.jpg'),
(4, 1, 'Trắng', '128GB', 0, 210, 'iphone-16-trang.jpg'),
(5, 1, 'Trắng', '256GB', 3000000, 200, 'iphone-16-trang.jpg'),
(6, 1, 'Xanh', '128GB', 0, 200, 'iphone-16-xanh-luu-ly.jpg'),
(7, 1, 'Xanh', '256GB', 3000000, 200, 'iphone-16-xanh-luu-ly.jpg'),
(8, 2, 'Đen', '128GB', 3000000, 11, 'iphone-16-den.jpg'),
(9, 2, 'Đen', '256GB', 0, 200, 'iphone-16-den.jpg'),
(10, 2, 'Đen', '512GB', 3000000, 200, 'iphone-16-den.jpg'),
(11, 2, 'Trắng', '128GB', -3000000, 195, 'iphone-16-trang.jpg'),
(12, 2, 'Trắng', '256GB', 0, 199, 'iphone-16-trang.jpg'),
(13, 2, 'tea', '128GB', -3000000, 200, 'iphone-16-teal.jpg'),
(14, 2, 'Xanh dương', '128GB', -3000000, 199, 'iPhone-16-Ultramarine1.jpg'),
(15, 2, 'Xanh lá', '128GB', -3000000, 200, 'Iphone 16.jpg'),
(31, 3, 'Đen', '256GB', 0, 200, 'SamSung Galaxy Z Flip 6.jpg'),
(32, 3, 'Đen', '512GB', 4000000, 200, 'SamSung Galaxy Z Flip 6.jpg'),
(33, 3, 'Xanh', '256GB', 0, 198, 'samsung-galaxy-z-flip6-mint.jpg'),
(34, 3, 'Xanh', '512GB', 4000000, 198, 'samsung-galaxy-z-flip6-mint.jpg'),
(35, 3, 'Vàng', '256GB', 0, 190, 'samsung-galaxy-z-flip6-yellow.jpg'),
(36, 4, 'Đen Titan', '256GB', 0, 197, 'iphone-16-pro-max-titan-den.jpg'),
(37, 4, 'Đen Titan', '512GB', 5000000, 199, 'iphone-16-pro-max-titan-den.jpg'),
(38, 4, 'Đen Titan', '1TB', 10000000, 200, 'iphone-16-pro-max-titan-den.jpg'),
(39, 4, 'Trắng Titan', '256GB', 0, 200, 'iphone-16-pro-max-titan-trang.jpg'),
(40, 4, 'Trắng Titan', '512GB', 5000000, 195, 'iphone-16-pro-max-titan-trang.jpg'),
(41, 4, 'Vàng Titan', '256GB', 0, 197, 'iphone-16-pro-max-titan-sa-mac.jpg'),
(68, 5, 'Trắng', 'KHÔNG CÓ', 500000, 199, 'Airpods pro 2_Trắng.png'),
(69, 5, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(70, 6, 'Xám', '128GB', 0, 200, 'samsung-galaxy-s21-xam.jpg'),
(71, 6, 'Xám', '256GB', 2000000, 200, 'samsung-galaxy-s21-xam.jpg'),
(72, 6, 'Trắng', '128GB', 0, 200, 'samsung-galaxy-s21-trang.jpg'),
(73, 6, 'Trắng', '256GB', 2000000, 200, 'samsung-galaxy-s21-trang.jpg'),
(74, 6, 'Tím', '128GB', 0, 200, 'samsung-galaxy-s21-tim.jpg'),
(75, 6, 'Tím', '256GB', 2000000, 200, 'samsung-galaxy-s21-tim.jpg'),
(76, 7, 'Đen', '128GB', 0, 200, 'iphone-13-den.jpg'),
(77, 7, 'Đen', '256GB', 3000000, 200, 'iphone-13-den.jpg'),
(78, 7, 'Trắng', '128GB', 0, 200, 'iphone-13-trang.jpg'),
(79, 7, 'Đen', '512GB', 0, 200, 'iphone-13-den.jpg'),
(80, 7, 'Trắng', '256GB', 0, 200, 'iphone-13-trang.jpg'),
(81, 8, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(82, 8, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(83, 8, 'Vàng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(84, 9, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(85, 9, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(86, 10, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(87, 10, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(88, 11, 'Đen', '64GB', 0, 200, '.jpg'),
(89, 11, 'Đen', '128GB', 500000, 200, '.jpg'),
(90, 11, 'Xám', '64GB', 0, 200, '.jpg'),
(91, 11, 'Xám', '128GB', 500000, 200, '.jpg'),
(92, 12, 'Đen', '32GB', -200000, 200, '.jpg'),
(93, 12, 'Đen', '64GB', 0, 200, '.jpg'),
(94, 12, 'Đen', '128GB', 400000, 200, '.jpg'),
(95, 13, 'Xám', '256GB', 0, 200, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(96, 13, 'Xám', '512GB', 4000000, 200, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(97, 13, 'Xám', '1TB', 8000000, 200, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(98, 13, 'Bạc', '256GB', 0, 200, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(99, 13, 'Bạc', '512GB', 4000000, 200, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(100, 13, 'Bạc', '1TB', 8000000, 200, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(101, 14, 'Đen', '128GB', 0, 200, 'samsung-galaxy-tab-a9-plus-wifi-xam.jpg'),
(102, 14, 'Đen', '256GB', 1500000, 200, 'samsung-galaxy-tab-a9-plus-wifi-xam.jpg'),
(103, 14, 'Xanh', '128GB', 0, 200, 'samsung-galaxy-tab-a9-plus-wifi-xanh-duong.jpg'),
(104, 14, 'Xanh', '256GB', 1500000, 200, 'samsung-galaxy-tab-a9-plus-wifi-xanh-duong.jpg'),
(105, 15, 'Đen', '256GB', 0, 200, 'samsung-galaxy-tab-s10-plus-gray.jpg'),
(106, 15, 'Đen', '512GB', 3000000, 200, 'samsung-galaxy-tab-s10-plus-gray.jpg'),
(107, 15, 'Bạc', '256GB', 0, 200, 'samsung-galaxy-tab-s10-plus-sliver.jpg'),
(108, 15, 'Bạc', '512GB', 3000000, 200, 'samsung-galaxy-tab-s10-plus-sliver.jpg'),
(109, 16, 'Đen', '256GB', 0, 200, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(110, 16, 'Đen', '512GB', 4000000, 200, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(111, 16, 'Đen', '1TB', 8000000, 200, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(112, 16, 'Bạc', '256GB', 0, 200, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(113, 16, 'Bạc', '512GB', 4000000, 200, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(114, 16, 'Bạc', '1TB', 8000000, 200, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(115, 17, 'Xám', '128GB', 0, 200, 'lenovo-tab-plus.jpg'),
(116, 17, 'Xám', '256GB', 1000000, 200, 'lenovo-tab-plus.jpg'),
(117, 17, 'Xám', '128GB', 1500000, 200, 'lenovo-tab-plus.jpg'),
(118, 17, 'Xám', '256GB', 2500000, 200, 'lenovo-tab-plus.jpg'),
(119, 18, 'Xám', '64GB', 0, 200, '.jpg'),
(120, 18, 'Xám', '128GB', 500000, 200, '.jpg'),
(121, 18, 'Bạc', '64GB', 0, 200, '.jpg'),
(122, 18, 'Bạc', '128GB', 500000, 200, '.jpg'),
(123, 19, 'Đen', 'KHÔNG CÓ', 0, 200, 'Cáp sạc Type C Zmi AL303-AL873_Đen.jpg'),
(124, 19, 'Đen', 'KHÔNG CÓ', 50000, 200, '.jpg'),
(125, 19, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(126, 19, 'Trắng', 'KHÔNG CÓ', 50000, 200, 'Cáp sạc Type C Zmi AL303-AL873_Trắng.jpg'),
(127, 20, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(128, 20, 'Đen', 'KHÔNG CÓ', 30000, 200, '.jpg'),
(129, 20, 'Đen', 'KHÔNG CÓ', 50000, 200, '.jpg'),
(130, 21, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(131, 21, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(132, 22, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(133, 22, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(134, 23, 'Trắng', 'KHÔNG CÓ', 0, 16, '.jpg'),
(135, 23, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(136, 24, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(137, 24, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(138, 25, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(139, 25, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(140, 25, 'Vàng', 'KHÔNG CÓ', 0, 199, '.jpg'),
(141, 26, 'Đen', 'KHÔNG CÓ', 0, 1, '.jpg'),
(142, 26, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(143, 26, 'Đen', 'KHÔNG CÓ', 0, 200, '.jpg'),
(144, 26, 'Trắng', 'KHÔNG CÓ', 0, 200, '.jpg'),
(145, 27, 'Đen', '128GB', 0, 200, 'xiaomi-redmi-note-14-black.jpg'),
(146, 27, 'Trắng', '128GB', 0, 200, 'xiaomi-redmi-note-14-purple.jpg'),
(147, 27, 'Xanh', '128GB', 0, 200, 'xiaomi-redmi-note-14-xanh.jpg'),
(148, 27, 'Xạnh', '256GB', 0, 200, 'xiaomi-redmi-note-14-xanh.jpg'),
(149, 27, 'Trắng', '256GB', 0, 200, 'xiaomi-redmi-note-14-purple.jpg'),
(150, 28, 'Đen', '256GB', 0, 0, 'xiaomi-redmi-note-14-5g-black.jpg'),
(151, 28, 'Xanh', '256GB', 0, 199, 'xiaomi-redmi-note-14-5g-green.jpg'),
(152, 28, 'Tím', '128GB', 0, 200, 'xiaomi-redmi-note-14-5g-purple.jpg'),
(153, 28, 'Tím', '256GB', 0, 200, 'xiaomi-redmi-note-14-5g-purple.jpg'),
(154, 28, 'Xanh', '512GB', 0, 200, 'xiaomi-redmi-note-14-5g-green.jpg'),
(155, 29, 'Đen', '128GB', 0, 200, '.jpg'),
(156, 29, 'Xanh', '128GB', 0, 200, '.jpg'),
(157, 29, 'Trắng', '128GB', 0, 200, '.jpg'),
(158, 29, 'Tím', '128GB', 0, 200, '.jpg'),
(159, 29, 'Xám', '128GB', 0, 200, '.jpg'),
(160, 30, 'Đen', '128GB', 0, 200, 'xiaomi-redmi-note-13-pro-den.jpg'),
(161, 30, 'Xanh', '128GB', 0, 200, 'xiaomi-redmi-note-13-pro-xanh.jpg'),
(162, 30, 'Xanh Lam', '128GB', 0, 200, 'xiaomi-redmi-note-13-pro-5g-xalanh.jpg'),
(163, 30, 'Tím', '128GB', 0, 200, 'xiaomi-redmi-note13-pro-tim.jpg'),
(164, 33, 'Trắng', 'KHÔNG CÓ', 0, 2, 'iPad mini 6 Wifi 64GB_Trắng.jpg'),
(165, 105, 'Trắng', '256GB', 10000, 4, 'iPhone 16e_Trắng_256GB.jpg'),
(166, 105, 'Đen', '1TB', 100000, 10, 'iPhone 16e_Đen_1TB.jpg'),
(167, 105, 'Đen', '128GB', 0, 0, 'iPhone 16e_Đen_128GB.jpg'),
(168, 105, 'Trắng', '1TB', 0, 0, 'iPhone 16e_Trắng_1TB.jpg'),
(169, 105, 'Trắng', '128GB', 0, 0, 'iPhone 16e_Trắng_128GB.jpg'),
(170, 106, 'Trắng', '128GB', 0, 0, 'iPhone 16 SE_Trắng_128GB.jpg'),
(171, 64, 'Trắng', 'KHÔNG CÓ', 0, 2, '.jpg'),
(172, 78, 'Trắng', 'KHÔNG CÓ', 0, 1, '.jpg'),
(173, 63, 'Trắng', 'KHÔNG CÓ', 0, 2, '.jpg'),
(174, 37, 'Trắng', 'KHÔNG CÓ', 0, 2, '.jpg'),
(175, 46, 'Trắng', 'KHÔNG CÓ', 0, 2, '.jpg'),
(176, 104, 'Đen', '128GB', 0, 0, 'Oppo Reno 69_Đen_128GB.png'),
(177, 67, 'Trắng', 'KHÔNG CÓ', 0, 2, '.jpg'),
(178, 35, 'Trắng', 'KHÔNG CÓ', 0, 2, '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chucnang`
--

CREATE TABLE `chucnang` (
  `idCN` int(11) NOT NULL,
  `TENCN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chucnang`
--

INSERT INTO `chucnang` (`idCN`, `TENCN`, `TRANGTHAI`) VALUES
(1, 'Thống kê', 1),
(2, 'Sản phẩm', 1),
(3, 'Đơn hàng', 1),
(4, 'Nhà cung cấp', 1),
(5, 'Khuyến mãi', 1),
(6, 'Nhân viên', 1),
(7, 'Phân quyền', 1),
(8, 'Tài khoản', 1),
(9, 'Lịch làm việc', 1),
(10, 'Phiếu nhập', 1),
(11, 'Thông tin nhân viên', 1),
(12, 'Yêu cầu hoàn tiền', 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `idDM` int(11) NOT NULL,
  `LOAISP` varchar(20) NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`idDM`, `LOAISP`, `TRANGTHAI`) VALUES
(1, 'Điện thoại', 1),
(2, 'Củ sạc (Adapter)', 1),
(3, 'Dây sạc', 1),
(4, 'Ốp lưng', 1),
(5, 'Tai Nghe', 1),
(6, 'Đồng hồ', 1),
(7, 'Tablet', 1),
(8, 'iPad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `idHD` int(11) NOT NULL,
  `idTK` int(11) NOT NULL,
  `THANHTIEN` float NOT NULL,
  `NGAYMUA` date NOT NULL,
  `DIACHI` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MAKHUYENMAI` int(11) DEFAULT NULL,
  `idVC` int(11) NOT NULL,
  `TRANGTHAI` int(11) NOT NULL DEFAULT 1,
  `idTHANHTOAN` int(11) NOT NULL,
  `SDT_DH` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`idHD`, `idTK`, `THANHTIEN`, `NGAYMUA`, `DIACHI`, `MAKHUYENMAI`, `idVC`, `TRANGTHAI`, `idTHANHTOAN`, `SDT_DH`) VALUES
(2, 2, 25000000, '2024-02-15', '456 Tran Hung Dao, Q5, TP HCM', 2, 2, 4, 2, ''),
(3, 3, 18000000, '2024-03-20', '789 Nguyen Trai, Q3, TP HCM', 1, 3, 1, 1, ''),
(4, 4, 22000000, '2024-04-05', '159 Vo Van Kiet, Q6, TP HCM', 3, 2, 1, 2, ''),
(5, 5, 3000000, '2024-05-12', '753 Phan Xich Long, Q. Phu Nhuan', 2, 1, 1, 1, ''),
(6, 10, 32820000, '2025-02-24', 'HoChiMinh', 1, 1, 1, 1, ''),
(7, 10, 23925000, '2025-02-24', 'HoChiMinh', 1, 2, 1, 1, ''),
(8, 10, 68804000, '2025-02-24', 'HoChiMinh', 1, 4, 4, 1, ''),
(9, 11, 32820000, '2025-02-26', 'HoChiMinh', 1, 1, 1, 1, ''),
(10, 11, 131190000, '2025-02-28', 'HoChiMinh', 1, 1, 1, 1, ''),
(11, 11, 46820000, '2025-02-28', 'HoChiMinh', 1, 6, 1, 1, ''),
(12, 11, 6210000, '2025-02-28', 'HoChiMinh', 1, 3, 1, 1, ''),
(13, 11, 23920000, '2025-02-28', 'HoChiMinh', 1, 3, 1, 1, ''),
(14, 11, 19030000, '2025-02-28', 'HoChiMinh', 1, 1, 1, 1, ''),
(15, 11, 23930000, '2025-02-28', 'HoChiMinh', 1, 1, 1, 1, ''),
(16, 11, 35040000, '2025-02-28', 'HoChiMinh', 1, 6, 1, 1, ''),
(22, 11, 35030000, '2025-03-01', 'HoChiMinh', NULL, 1, 5, 1, ''),
(23, 11, 35030000, '2025-03-01', 'HoChiMinh', NULL, 1, 1, 1, ''),
(24, 11, 32820000, '2025-03-01', 'HoChiMinh', NULL, 1, 1, 1, ''),
(25, 11, 35030000, '2025-03-01', 'HoChiMinh', NULL, 1, 1, 1, ''),
(26, 11, 32820000, '2025-03-01', 'HoChiMinh', NULL, 1, 1, 1, ''),
(27, 11, 19025000, '2025-03-01', 'HoChiMinh', NULL, 2, 1, 1, ''),
(28, 11, 32810000, '2025-03-01', 'HoChiMinh', NULL, 3, 1, 1, ''),
(29, 11, 32810000, '2025-03-01', 'HoChiMinh', NULL, 3, 1, 1, ''),
(30, 11, 23925000, '2025-03-01', 'HoChiMinhlast', NULL, 4, 1, 1, ''),
(31, 11, 5615000, '2025-03-01', 'HoChiMinh', NULL, 2, 1, 1, ''),
(32, 11, 20385000, '2025-03-01', 'HoChiMinh', 4, 2, 1, 1, ''),
(33, 11, 35030000, '2025-03-01', 'HoChiMinh', 5, 1, 1, 1, ''),
(34, 11, 7989000, '2025-03-01', 'HoChiMinh', 2, 3, 1, 1, ''),
(35, 11, 35000000, '2025-03-01', 'HoChiMinh', 5, 1, 1, 1, ''),
(36, 11, 7999000, '2025-03-01', 'HoChiMinhlast', 5, 1, 1, 1, ''),
(37, 14, 43020000, '2025-03-08', 'em nhà ở đâu thế', NULL, 1, 1, 2, ''),
(38, 14, 8180000, '2025-03-08', 'em nhà ở đâu thế', NULL, 5, 1, 2, ''),
(39, 14, 6426000, '2025-03-08', 'em nhà ở đâu thế', NULL, 2, 1, 1, ''),
(41, 14, 5590000, '2025-03-08', 'em nhà ở đâu thế', NULL, 1, 1, 2, ''),
(42, 14, 4851000, '2025-03-08', 'em nhà ở đâu thế', NULL, 2, 1, 2, ''),
(43, 14, 5490000, '2025-03-08', 'hem 36, duong An Duong Vuong, p16,q8', NULL, 3, 1, 1, ''),
(44, 14, 3149990000, '2025-03-10', 'em nhà ở đâu thế', 5, 3, 1, 1, ''),
(45, 15, 29506000, '2025-03-13', 'hem 36, duong An Duong Vuong, p16,q8', 5, 2, 4, 1, ''),
(46, 16, 29536000, '2025-03-13', 'em nhà ở đâu thế', NULL, 4, 4, 1, ''),
(47, 16, 7219100, '2025-03-15', 'em nhà ở đâu thế', NULL, 3, 4, 2, ''),
(48, 7, 31495000, '2025-03-25', 'jhrejgkr', 5, 2, 5, 2, ''),
(49, 32, 7224100, '2025-04-06', 'Sugar, Xã Dĩnh Trì, Thành phố Bắc Giang, Tỉnh Bắc Giang', NULL, 2, 5, 2, ''),
(50, 32, 7227100, '2025-04-06', 'afa, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, 5, 1, 1, ''),
(51, 33, 21595000, '2025-04-11', 'adá, Xã Bình Mỹ, Huyện Châu Phú, Tỉnh An Giang', 5, 2, 5, 1, ''),
(52, 33, 21630000, '2025-04-11', 'Võ Văn Hoài, Thị trấn An Phú, Huyện An Phú, Tỉnh An Giang', NULL, 1, 5, 1, ''),
(53, 33, 21620000, '2025-04-11', 'Võ Văn Hoài, Xã Phú Hưng, Thành phố Bến Tre, Tỉnh Bến Tre', NULL, 3, 2, 2, ''),
(54, 33, 21620000, '2025-04-11', 'Võ Văn Hoài, Xã Phú Hưng, Thành phố Bến Tre, Tỉnh Bến Tre', NULL, 3, 2, 2, ''),
(55, 33, 21620000, '2025-04-11', 'Võ Văn Hoài, Xã Phú Hưng, Thành phố Bến Tre, Tỉnh Bến Tre', NULL, 3, 5, 2, ''),
(56, 33, 174000, '2025-04-11', 'Võ Văn Hoài, Thị trấn Long Hải, Huyện Long Điền, Tỉnh Bà Rịa - Vũng Tàu', NULL, 2, 1, 1, ''),
(57, 33, 174000, '2025-04-11', 'Võ Văn Hoài, Thị trấn Long Hải, Huyện Long Điền, Tỉnh Bà Rịa - Vũng Tàu', NULL, 2, 5, 1, ''),
(58, 33, 5615000, '2025-04-11', 'Võ Văn Hoài, Xã Sơn Lập, Huyện Bảo Lạc, Tỉnh Cao Bằng', NULL, 4, 1, 1, ''),
(59, 33, 5615000, '2025-04-11', 'Võ Văn Hoài, Xã Sơn Lập, Huyện Bảo Lạc, Tỉnh Cao Bằng', NULL, 4, 1, 1, ''),
(60, 33, 5615000, '2025-04-11', 'Võ Văn Hoài, Xã Sơn Lập, Huyện Bảo Lạc, Tỉnh Cao Bằng', NULL, 4, 1, 1, ''),
(61, 33, 5615000, '2025-04-11', 'Võ Văn Hoài, Xã Sơn Lập, Huyện Bảo Lạc, Tỉnh Cao Bằng', NULL, 4, 1, 1, ''),
(62, 33, 31530000, '2025-04-11', 'Võ Văn Hoài, Phường Thới An, Quận Ô Môn, Thành phố Cần Thơ', NULL, 1, 1, 1, ''),
(63, 33, 31520000, '2025-04-11', 'Võ Văn Hoài, Xã Phúc Tiến, Huyện Phú Xuyên, Thành phố Hà Nội', NULL, 3, 5, 2, ''),
(64, 33, 31525000, '2025-04-11', 'Úm ba la, Xã Vĩ Thượng, Huyện Quang Bình, Tỉnh Hà Giang', NULL, 2, 1, 1, ''),
(65, 33, 21620000, '2025-04-11', 'Úm ba la, Xã Bình Thạnh, Huyện Châu Thành, Tỉnh An Giang', NULL, 3, 5, 1, ''),
(66, 33, 87820000, '2025-04-19', 'Võ Văn Hoài, Xã Thượng Hà, Huyện Bảo Lạc, Tỉnh Cao Bằng', 5, 5, 5, 2, ''),
(68, 33, 34036000, '2025-04-29', 'Tổ 8, Võ Văn Hoài, Xã Mỹ Khánh, Thành phố Long Xuyên, Tỉnh An Giang', NULL, 4, 2, 2, ''),
(69, 33, 279000, '2025-04-29', 'Tổ 8, Võ Văn Hoài, Xã Mai Trung, Huyện Hiệp Hòa, Tỉnh Bắc Giang', NULL, 1, 1, 1, ''),
(70, 33, 66791000, '2025-04-30', 'Võ Văn Hoài, Xã Bình Ba, Huyện Châu Đức, Tỉnh Bà Rịa - Vũng Tàu', 4, 1, 3, 1, ''),
(72, 33, 31515000, '2025-04-30', 'Võ Văn Hoài, Xã Khánh An, Huyện An Phú, Tỉnh An Giang', NULL, 1, 2, 2, ''),
(73, 33, 21615000, '2025-04-30', 'Võ Văn Hoài, Thị trấn Chư Ty, Huyện Đức Cơ, Tỉnh Gia Lai', NULL, 1, 1, 1, '0916658122'),
(74, 33, 95106000, '2025-04-30', 'Võ Văn Hoài, Phường Hưng Phú, Quận Cái Răng, Thành phố Cần Thơ', NULL, 1, 4, 2, '0916658122'),
(75, 33, 34026000, '2025-04-30', 'Võ Văn Hoài, Xã Vĩnh Hảo, Huyện Bắc Quang, Tỉnh Hà Giang', NULL, 1, 4, 2, '0864723561'),
(76, 38, 45615000, '2025-05-07', '111 An Ninh, Xã Quảng Nguyên, Huyện Xín Mần, Tỉnh Hà Giang', NULL, 1, 5, 2, ''),
(77, 38, 5136000, '2025-05-09', '111 An Ninh, Xã Vũ Minh, Huyện Nguyên Bình, Tỉnh Cao Bằng', NULL, 1, 4, 2, '0123456789'),
(78, 33, 72795500, '2025-05-10', 'Võ Văn Hoài, Xã Bình Giã, Huyện Châu Đức, Tỉnh Bà Rịa - Vũng Tàu', NULL, 4, 2, 2, '0706433641'),
(79, 33, 29531000, '2025-05-10', 'Võ Văn Hoài, Xã Long Hải, Huyện Phú Quí, Tỉnh Bình Thuận', NULL, 3, 1, 1, '0763524198'),
(80, 33, 45425000, '2025-05-10', 'Võ Văn Hoài, Phường Bình Định, Thị xã An Nhơn, Tỉnh Bình Định', NULL, 1, 1, 1, '0706433641'),
(81, 33, 111975000, '2025-05-12', 'Võ Văn Hoài, Xã Phước Sơn, Huyện Tuy Phước, Tỉnh Bình Định', NULL, 1, 1, 1, '0706433641'),
(82, 33, 236625000, '2025-05-12', 'Võ Văn Hoài, Thị trấn An Phú, Huyện An Phú, Tỉnh An Giang', NULL, 1, 1, 1, '0706433641'),
(83, 33, 5605000, '2025-05-12', 'Võ Văn Hoài, Phường Quang Trung, Thành phố Quy Nhơn, Tỉnh Bình Định', NULL, 1, 5, 2, '0706433641'),
(84, 33, 83942200, '2025-05-16', 'Võ Văn Hoài, Xã Sông Phan, Huyện Hàm Tân, Tỉnh Bình Thuận', NULL, 2, 1, 1, '0706433641'),
(85, 33, 51046000, '2025-05-16', 'Võ Văn Hoài, Xã Bình Ba, Huyện Châu Đức, Tỉnh Bà Rịa - Vũng Tàu', NULL, 2, 5, 2, '0706433641'),
(86, 33, 29536000, '2025-05-17', 'Võ Văn Hoài, Xã Thèn Phàng, Huyện Xín Mần, Tỉnh Hà Giang', NULL, 2, 2, 2, '0706433641'),
(87, 33, 16124600, '2025-11-10', 'Võ Văn Hoài, Xã Mỹ Khánh, Thành phố Long Xuyên, Tỉnh An Giang', 4, 3, 5, 2, '0706433641'),
(88, 33, 23755000, '2025-12-02', '123/3 Cao Lỗ, Phường 04, Quận 8, Thành phố Hồ Chí Minh', 5, 2, 1, 1, '0916658122');

-- --------------------------------------------------------

--
-- Table structure for table `dvvanchuyen`
--

CREATE TABLE `dvvanchuyen` (
  `idVC` int(11) NOT NULL,
  `TENDVVC` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GIAVANCHUYEN` float NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dvvanchuyen`
--

INSERT INTO `dvvanchuyen` (`idVC`, `TENDVVC`, `GIAVANCHUYEN`, `TRANGTHAI`) VALUES
(1, 'Lalamove', 15000, 1),
(2, 'Giao hàng nhanh', 25000, 1),
(3, 'Giao hàng tiết kiệm', 20000, 1),
(4, 'VNPost', 25000, 1),
(5, 'J&T Express', 28000, 1),
(6, 'Viettel Post', 40000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `idTK` int(11) NOT NULL,
  `idSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`idTK`, `idSP`) VALUES
(11, 2),
(11, 3),
(14, 101),
(11, 2),
(11, 3),
(14, 101),
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hang`
--

CREATE TABLE `hang` (
  `idHANG` int(11) NOT NULL,
  `TENHANG` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hang`
--

INSERT INTO `hang` (`idHANG`, `TENHANG`, `TRANGTHAI`) VALUES
(1, 'Apple', 1),
(2, 'Xiaomi', 1),
(3, 'Samsung', 1),
(4, 'Oppo', 1),
(5, 'Sony', 1),
(6, 'ZMI', 1),
(7, 'HOCO', 1),
(8, 'Remax', 1),
(9, 'Lenovo', 1),
(10, 'Honor', 1),
(11, 'TCL', 1),
(12, 'CITIZEN', 1),
(13, 'FREDERIQUE CONSTANT', 1),
(14, 'ORIENT', 1),
(15, 'G-SHOCK', 1),
(16, 'KORLEX', 1),
(17, 'EDOX', 1),
(18, 'MVW', 1),
(19, 'SHENZEN', 1),
(20, 'Hochuen', 1),
(21, 'HANOI SEOWONINTECH', 1),
(22, 'Ugreen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoantien`
--

CREATE TABLE `hoantien` (
  `id` int(11) NOT NULL,
  `idHD` int(11) NOT NULL,
  `idTK` int(11) NOT NULL,
  `amount` double NOT NULL,
  `ngayhoan` timestamp NOT NULL DEFAULT current_timestamp(),
  `trangthai` decimal(1,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoantien`
--

INSERT INTO `hoantien` (`id`, `idHD`, `idTK`, `amount`, `ngayhoan`, `trangthai`) VALUES
(1, 66, 33, 87820000, '2025-04-19 00:00:00', 1),
(2, 83, 33, 5605000, '2025-05-11 17:00:00', 1),
(3, 85, 33, 51046000, '2025-05-15 17:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MAKHUYENMAI` int(11) NOT NULL,
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GIATRI` float NOT NULL,
  `SOLUONG` int(11) NOT NULL DEFAULT 0,
  `NGAYAPDUNG` date NOT NULL,
  `HANSUDUNG` date NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MAKHUYENMAI`, `CODE`, `GIATRI`, `SOLUONG`, `NGAYAPDUNG`, `HANSUDUNG`, `TRANGTHAI`) VALUES
(1, 'SALE10', 10000, 89, '2024-01-01', '2024-12-31', 1),
(2, 'SALE20', 20000, 50, '2024-02-01', '2024-06-30', 1),
(3, 'DISCOUNT15', 15000, 30, '2024-03-01', '2024-07-31', 1),
(4, 'NEWYEAR25', 25000, 18, '2024-04-01', '2026-05-31', 1),
(5, 'SUMMER30', 30000, 1, '2024-05-01', '2026-09-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lsuthangchuc`
--

CREATE TABLE `lsuthangchuc` (
  `idTK` int(11) NOT NULL,
  `vitricu` int(11) DEFAULT NULL,
  `vitrimoi` int(11) NOT NULL,
  `luongcu` int(11) NOT NULL,
  `luongmoi` int(11) NOT NULL,
  `ngaynhamchuc` date NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lsuthangchuc`
--

INSERT INTO `lsuthangchuc` (`idTK`, `vitricu`, `vitrimoi`, `luongcu`, `luongmoi`, `ngaynhamchuc`, `trangthai`) VALUES
(41, 2, 4, 57692, 86538, '2025-05-11', 0),
(17, 3, 0, 52885, 0, '2025-05-11', 0),
(17, 0, 0, 0, 0, '2025-05-11', 0),
(24, 2, 4, 57692, 86538, '2025-05-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ngayle`
--

CREATE TABLE `ngayle` (
  `idNGAYLE` int(11) NOT NULL,
  `NGAY` date NOT NULL,
  `TENNGAYLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngayle`
--

INSERT INTO `ngayle` (`idNGAYLE`, `NGAY`, `TENNGAYLE`) VALUES
(1, '2025-04-30', 'Ngày giải phóng Miền Nam'),
(2, '2025-05-01', 'Quốc tế lao động'),
(3, '2025-06-01', 'Quốc tế thiếu nhi'),
(4, '2025-05-19', 'Chủ tịch HCM ra đời'),
(5, '2025-04-13', 'Ngày test code'),
(10, '2025-05-12', 'Lễ Phật Đản ');

-- --------------------------------------------------------

--
-- Table structure for table `ngaynghi`
--

CREATE TABLE `ngaynghi` (
  `idNV` int(11) NOT NULL,
  `NGAYGUI` timestamp NOT NULL DEFAULT current_timestamp(),
  `NGAYNGHI` date NOT NULL,
  `LYDO` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRANGTHAI` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Chưa duyệt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngaynghi`
--

INSERT INTO `ngaynghi` (`idNV`, `NGAYGUI`, `NGAYNGHI`, `LYDO`, `TRANGTHAI`) VALUES
(12, '2025-04-07 14:19:23', '2025-04-09', 'ốm', 'Đã duyệt'),
(24, '2025-04-07 15:15:24', '2025-04-09', 'xin gì ai bt', 'Chưa duyệt'),
(29, '2025-04-07 15:26:01', '2025-04-07', 'aisss', 'Đã duyệt'),
(31, '2025-04-07 15:00:37', '2025-04-08', 'tự thích nghỉ', 'Đã duyệt'),
(31, '2025-04-07 14:18:40', '2025-04-09', 'ốm', 'Chưa duyệt');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `idNCC` int(11) NOT NULL,
  `TENNCC` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DIACHI` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`idNCC`, `TENNCC`, `SDT`, `DIACHI`, `TRANGTHAI`) VALUES
(1, 'Công ty TNHH A', '0123456789', 'Ngõ 11, Đường Tôn Thất Tùng, Đống Đa Hà Nội', 1),
(2, 'Công ty TNHH B', '0123456789', 'Huỳnh Tấn Phát – Tổ 12 – Khu Phố 2 – TT.Nhà Bè', 1),
(3, 'X Kong ty', '0123456789', 'Phố Tô Vĩnh Diễn, phường Khương Trung, quận Thanh ', 1),
(4, 'Công ty C', '0371956740', 'Đường Lê Lợi, phường Bến Nghé, Quận 1, Thành phố H', 0),
(5, 'Apple Computer, Inc', '0180011920', 'District 8, Ho Chi Minh City', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `idTK` int(11) NOT NULL,
  `GIOITINH` tinyint(1) NOT NULL,
  `NGAYSINH` date NOT NULL,
  `DIACHI` varchar(255) NOT NULL,
  `IMG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NGAYVAOLAM` date NOT NULL,
  `TINHTRANG` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`idTK`, `GIOITINH`, `NGAYSINH`, `DIACHI`, `IMG`, `NGAYVAOLAM`, `TINHTRANG`) VALUES
(12, 1, '2005-03-02', 'Tân Hưng, Quận 7, TP.HCM', 'NV12.png', '2025-01-02', 'Đang làm'),
(13, 0, '2005-03-20', '', 'hertame.jpg', '2024-01-01', 'Đang tu'),
(17, 0, '1992-12-31', 'phố Tô Vĩnh Diễn, phường Khương Trung, quận Thanh Xuân, thành phố Hồ Chí Minh', 'NV17.jpg', '2025-03-19', 'Dang lam'),
(18, 0, '1999-12-31', 'đường Lê Lợi, phường Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', 'NV18.jpg', '2025-03-19', 'Dang lam'),
(19, 1, '2005-02-06', 'Huỳnh Tấn Phát – Tổ 12 – Khu Phố 2 – TT.Nhà Bè', 'NV19.jpg', '2025-03-19', 'Dang lam'),
(24, 0, '1997-11-11', 'Ngõ 11, Đường Tôn Thất Tùng, Đống Đa Hà Nội', 'NV24.png', '2025-03-19', 'Dang lam'),
(25, 1, '1991-11-11', 'tổ 12, đường Trương Định, phường Thịnh Liệt, quận Hoàng Mai, Hà Nội', 'NV25.png', '2025-03-19', 'Dang lam'),
(27, 1, '1111-11-11', 'Số nhà 119, đường Trần Duy Hưng, Quận Cầu Giấy , TP Hồ Chí Minh', 'NV27.jpg', '2025-03-19', 'Dang lam'),
(29, 1, '2001-11-11', 'Phạm Ngữ Tăng, Quận 8, TPHCM', 'NV29.jpg', '2025-03-19', 'Dang lam'),
(30, 1, '2000-01-01', 'Huỳnh Tấn Phát – Tổ 12 – Khu Phố 2 – TT.Nhà Bè', 'NV30.jpg', '2025-03-20', 'Dang lam'),
(31, 1, '2000-01-01', 'Số nhà 119, đường Trần Duy Hưng, Quận Cầu Giấy , TP Hà Nội.', 'NV31.JPG', '2025-03-21', 'Dang lam'),
(41, 1, '2004-09-10', '123/03, Hẻm 45 Cao Lỗ', 'NV41.jpg', '2025-05-11', 'Dang lam');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `idQUYEN` int(11) NOT NULL,
  `idCN` int(11) NOT NULL,
  `THAOTAC` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`idQUYEN`, `idCN`, `THAOTAC`) VALUES
(3, 1, 'XEM'),
(3, 2, 'XEM'),
(3, 3, 'THEM'),
(3, 3, 'SUA'),
(1, 1, 'XEM'),
(1, 1, 'THEM'),
(1, 1, 'SUA'),
(1, 1, 'XOA'),
(1, 2, 'XEM'),
(1, 2, 'THEM'),
(1, 2, 'SUA'),
(1, 2, 'XOA'),
(1, 3, 'XEM'),
(1, 3, 'THEM'),
(1, 3, 'SUA'),
(1, 3, 'XOA'),
(1, 4, 'XEM'),
(1, 4, 'THEM'),
(1, 4, 'SUA'),
(1, 4, 'XOA'),
(1, 5, 'XEM'),
(1, 5, 'THEM'),
(1, 5, 'SUA'),
(1, 5, 'XOA'),
(1, 6, 'XEM'),
(1, 6, 'THEM'),
(1, 6, 'SUA'),
(1, 6, 'XOA'),
(1, 7, 'XEM'),
(1, 7, 'THEM'),
(1, 7, 'SUA'),
(1, 7, 'XOA'),
(1, 8, 'XEM'),
(1, 8, 'THEM'),
(1, 8, 'SUA'),
(1, 8, 'XOA'),
(1, 9, 'XEM'),
(1, 9, 'THEM'),
(1, 9, 'SUA'),
(1, 9, 'XOA'),
(1, 10, 'XEM'),
(1, 10, 'THEM'),
(1, 10, 'SUA'),
(1, 10, 'XOA'),
(1, 11, 'XEM'),
(1, 11, 'THEM'),
(1, 11, 'SUA'),
(1, 11, 'XOA'),
(1, 12, 'XEM'),
(1, 12, 'THEM'),
(1, 12, 'SUA'),
(1, 12, 'XOA'),
(3, 1, 'XEM'),
(3, 2, 'XEM'),
(3, 3, 'THEM'),
(3, 3, 'SUA'),
(1, 1, 'XEM'),
(1, 1, 'THEM'),
(1, 1, 'SUA'),
(1, 1, 'XOA'),
(1, 2, 'XEM'),
(1, 2, 'THEM'),
(1, 2, 'SUA'),
(1, 2, 'XOA'),
(1, 3, 'XEM'),
(1, 3, 'THEM'),
(1, 3, 'SUA'),
(1, 3, 'XOA'),
(1, 4, 'XEM'),
(1, 4, 'THEM'),
(1, 4, 'SUA'),
(1, 4, 'XOA'),
(1, 5, 'XEM'),
(1, 5, 'THEM'),
(1, 5, 'SUA'),
(1, 5, 'XOA'),
(1, 6, 'XEM'),
(1, 6, 'THEM'),
(1, 6, 'SUA'),
(1, 6, 'XOA'),
(1, 7, 'XEM'),
(1, 7, 'THEM'),
(1, 7, 'SUA'),
(1, 7, 'XOA'),
(1, 8, 'XEM'),
(1, 8, 'THEM'),
(1, 8, 'SUA'),
(1, 8, 'XOA'),
(1, 9, 'XEM'),
(1, 9, 'THEM'),
(1, 9, 'SUA'),
(1, 9, 'XOA'),
(1, 10, 'XEM'),
(1, 10, 'THEM'),
(1, 10, 'SUA'),
(1, 10, 'XOA'),
(1, 11, 'XEM'),
(1, 11, 'THEM'),
(1, 11, 'SUA'),
(1, 11, 'XOA'),
(1, 12, 'XEM'),
(1, 12, 'THEM'),
(1, 12, 'SUA'),
(1, 12, 'XOA'),
(2, 1, 'XEM'),
(2, 3, 'XEM'),
(2, 5, 'XEM'),
(2, 9, 'XEM'),
(2, 11, 'XEM'),
(4, 1, 'XEM'),
(4, 6, 'XEM'),
(4, 7, 'XEM'),
(4, 8, 'XEM'),
(4, 11, 'XEM');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `idPN` int(11) NOT NULL,
  `idNCC` int(11) NOT NULL,
  `NGAYNHAP` date NOT NULL,
  `THANHTIEN` double DEFAULT NULL,
  `LOINHUAN` int(11) NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`idPN`, `idNCC`, `NGAYNHAP`, `THANHTIEN`, `LOINHUAN`, `TRANGTHAI`) VALUES
(1, 1, '2025-03-11', 112345, 23, 1),
(2, 2, '2025-03-11', 123456, 23, 1),
(3, 1, '2025-03-14', 123557, 23, 1),
(4, 3, '2025-03-15', 126458, 23, 1),
(5, 2, '2025-03-11', 6399200, 1, 1),
(6, 2, '2025-03-11', 26232000, 30, 1),
(7, 3, '2025-03-12', 16952000, 1, 1),
(8, 3, '2025-03-12', 173109600, 1, 1),
(9, 2, '2025-03-12', 20776000, 1, 1),
(10, 1, '2025-03-12', 193885600, 1, 1),
(11, 3, '2025-03-12', 59727200, 1, 1),
(12, 3, '2025-03-12', 31778624, 1, 1),
(13, 3, '2025-03-12', 12348347, 1, 1),
(14, 2, '2025-03-12', 569183, 1, 1),
(15, 3, '2025-03-12', 2469134, 1, 1),
(16, 2, '2025-03-12', 0, 1, 1),
(17, 2, '2025-03-12', 308000000, 1, 1),
(18, 3, '2025-03-12', 211200000, 1, 1),
(19, 1, '2025-03-12', 230400000, 1, 1),
(20, 2, '2025-03-12', 308000000, 1, 1),
(21, 1, '2025-03-12', 288552000, 1, 1),
(22, 1, '2025-03-12', 286800000, 1, 1),
(23, 2, '2025-05-09', 182000000, 3, 1),
(24, 1, '2025-05-09', 57600000, 1, 1),
(25, 3, '2025-05-09', 19200000, 1, 1),
(26, 1, '2025-05-09', 28000000, 1, 1),
(27, 3, '2025-05-09', 19200000, 1, 1),
(28, 3, '2025-05-09', 199200, 1, 1),
(29, 5, '2025-05-10', 472000000, 5, 1),
(30, 5, '2025-05-10', 192000000, 1, 1),
(31, 1, '2025-05-10', 288000000, 1, 1),
(32, 1, '2025-05-16', 386012000, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ptthanhtoan`
--

CREATE TABLE `ptthanhtoan` (
  `idThanhToan` int(11) NOT NULL,
  `TENPHUONGTHUC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ptthanhtoan`
--

INSERT INTO `ptthanhtoan` (`idThanhToan`, `TENPHUONGTHUC`) VALUES
(1, 'Thanh toán khi nhận hàng'),
(2, 'Thanh toán online');

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `idQUYEN` int(11) NOT NULL,
  `TENQUYEN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LUONGCB` decimal(10,2) DEFAULT 0.00,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`idQUYEN`, `TENQUYEN`, `LUONGCB`, `TRANGTHAI`) VALUES
(0, 'Khách hàng', 0.00, 1),
(1, 'admin', 96153.85, 1),
(2, 'Nhân viên bán hàng', 57692.31, 1),
(3, 'Nhân viên kho', 52884.62, 1),
(4, 'Quản lý nhân sự', 86538.46, 1),
(5, 'Kế toán', 72115.39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `idTK` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `has_image` tinyint(1) DEFAULT 0,
  `purchase_verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `idSP`, `idTK`, `rating`, `comment`, `has_image`, `purchase_verified`, `created_at`) VALUES
(1, 1, 2, 5, 'Sản phẩm tốt', 0, 0, '2025-02-21 08:12:13'),
(2, 2, 1, 3, '', 0, 0, '2025-02-21 08:15:06'),
(3, 3, 6, 3, '', 0, 0, '2025-02-21 08:51:43'),
(4, 2, 6, 5, 'ewf 3r gf', 0, 0, '2025-02-21 12:21:23'),
(5, 4, 6, 5, '', 0, 0, '2025-02-21 08:52:46'),
(6, 28, 6, 5, 'ewfefe', 0, 0, '2025-02-21 08:53:12'),
(7, 7, 6, 3, '', 0, 0, '2025-02-21 08:54:57'),
(8, 1, 7, 1, '', 0, 0, '2025-02-21 10:07:01'),
(9, 3, 7, 5, 'sp tott', 0, 0, '2025-02-21 13:33:06'),
(10, 2, 7, 5, 'dfnjnrgf', 0, 0, '2025-02-21 12:20:20'),
(11, 4, 7, 1, '', 0, 0, '2025-02-21 09:48:11'),
(12, 2, 8, 4, 'sp tooo', 0, 0, '2025-02-21 12:38:13'),
(13, 1, 6, 3, 'rym5y', 0, 0, '2025-02-21 13:23:12'),
(14, 3, 10, 5, 'asdasdasdasdas', 0, 0, '2025-02-24 14:44:57'),
(15, 29, 10, 1, 'sdfsfsd', 0, 0, '2025-02-24 14:45:24'),
(16, 6, 16, 4, 'fdgnhm', 0, 0, '2025-03-15 06:43:44'),
(17, 5, 38, 4, 'Cũng ổn', 0, 0, '2025-05-09 03:51:31'),
(18, 4, 33, 5, 'Sản phẩm zin', 0, 0, '2025-05-10 15:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(11) NOT NULL,
  `TENSP` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HANG` int(11) NOT NULL,
  `GIANHAP` float NOT NULL,
  `idDM` int(11) NOT NULL,
  `IMG` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MOTA` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1,
  `DISCOUNT` int(11) NOT NULL DEFAULT 0,
  `GIA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `TENSP`, `HANG`, `GIANHAP`, `idDM`, `IMG`, `MOTA`, `TRANGTHAI`, `DISCOUNT`, `GIA`) VALUES
(1, 'iPhone 16', 1, 19200000, 1, 'Iphone 16.jpeg', 'Hiệu năng vượt trội với chip A18\r\nVới lần nâng cấp này, Apple đã mạnh tay sử dụng chip A18 trên toàn bộ iPhone 16 Series, bao gồm iPhone 16 256GB. Đây là thế hệ chip 3nm thứ 2 của TSMC, công nghệ chip hiện đại nhất hiện nay, mang tới hiệu năng, tốc độ xử lý nhanh và tiết kiệm pin hơn so với chip A16 Bionic của iPhone 15 256GB.\r\n\r\nVề hệ điều hành, không còn là đồn đoán, gã khổng lồ công nghệ đã thực sự ứng dụng hệ điều hành iOS 18 tiên tiến trên điện thoại iPhone 16 phiên bản Tiêu Chuẩn. Hệ điều hành mới được cải tiến đặc biệt về AI, bổ sung tính năng tin nhắn mới, cập nhật Apple Maps, Siri, hỗ trợ RCS… mang đến nhiều tiện ích và nâng cấp trải nghiệm người dùng hơn iPhone 15 256GB', 1, 20, 20160000),
(2, 'iPhone 16 plus', 1, 28000000, 1, 'Iphone 16 pờ lếch.jpeg', 'iPhone 16 Plus 512GB dự kiến sẽ là sản phẩm cháy hàng trong thời gian tới vì dung lượng lưu trữ lớn và có nhiều thay đổi về mặt thiết kế - công nghệ so với mức giá. Hãy cùng điểm mặt 10 lý do bạn nên mua iPhone 16 Plus 512GB ngay khi ra mắt qua bài viết sau nhé!', 1, 10, 29400000),
(3, 'SamSung Galaxy Z Flip 6', 3, 19120000, 1, 'SamSung Galaxy Z Flip 6.jpeg', 'Galaxy Z Flip 6 ra mắt đã mở ra một kỷ nguyên AI di động với sức mạnh của Galaxy AI tiên tiến. Bên cạnh đó, thiết bị còn cuốn hút mọi người với vẻ ngoài siêu mỏng nhỏ gọn, hiệu năng mạnh mẽ, thời lượng sử dụng bền bỉ và camera nâng tầm nhiếp ảnh. Tất cả hứa hẹn sẽ mang đến cho bạn trải nghiệm sử dụng mới lạ, hấp dẫn, đáp ứng tốt mọi nhu cầu của bạn trong cuộc sống hiện đại ngày nay.', 1, 10, 23900000),
(4, 'iPhone 16 Ultra', 1, 26232000, 1, 'iphone 16 Pro Max.jpeg', 'iPhone 16 Plus 512GB dự kiến sẽ là sản phẩm cháy hàng trong thời gian tới vì dung lượng lưu trữ lớn và có nhiều thay đổi về mặt thiết kế - công nghệ so với mức giá. Hãy cùng điểm mặt 10 lý do bạn nên mua iPhone 16 Plus 512GB ngay khi ra mắt qua bài viết sau nhé!', 1, 10, 32790000),
(5, 'Airpods pro 2', 1, 4952000, 5, 'Airpods pro 2.jpg', 'Trải nghiệm chất lượng âm thanh vô song với tính năng Chủ Động Khử Tiếng Ồn đẳng cấp Pro,Chú thích³ Âm Thanh Thích Ứng để kiểm soát tiếng ồn phù hợp trong mọi môi trường, cùng chế độ Xuyên Âm giúp bạn nghe thấy thế giới xung quanh mình,Chú thích² và tính năng Nhận Biết Cuộc Hội Thoại để giảm âm lượng của nội dung đang phát một cách liền mạch khi bạn đang nói chuyện với ai đó ở gần.Chú thích¹³ Giảm thiểu mức độ tiếp xúc của bạn với tiếng ồn lớn bằng tính năng Giảm Âm Thanh Lớn, sử dụng Tăng Cường Hội Thoại để tập trung vào giọng nói ngay trước mặt bạn, và phát Âm Thanh Trong Nền êm dịu như tiếng đại dương hoặc tiếng mưa rơi để chặn bớt tiếng ồn không mong muốn xung quanh. Cả AirPods Pro 2 và Hộp Sạc MagSafe không dây (USB-C) đều có khả năng chống bụi, chống mồ hôi và chống nước đạt chuẩn IP54,Chú thích¹² và bạn có thể sử dụng ứng dụng Tìm để theo dõi vị trí của các thiết bị này.Chú thích', 1, 10, 6190000),
(6, 'Samsung Galaxy S21', 3, 6399200, 1, 'Samsung Galaxy S21.jpg', 'Smartphone Samsung S21', 1, 10, 7999000),
(7, 'iPhone 13', 1, 15200000, 1, 'iphone 13.jpeg', 'Smartphone iPhone 13', 1, 10, 19000000),
(8, 'Sony-1000XM4-Gold-A', 5, 2400000, 5, 'Sony-1000XM4-Gold-A.jpg', 'Tai nghe Sony chống ồn', 1, 10, 3000000),
(9, 'Củ sạc Xiaomi', 2, 119200, 2, 'Cu-Sac-Nhanh-Type-C-20W-Xiaomi-AD201-Quoc-Te-chinh-hang-mi360-3.jpg', 'Củ sạc nhanh Xiaomi AD201 20W Xiaomi AD201 Quốc Tế từ thương hiệu uy tín, công suất mạnh mẽ, hiệu quả sạc ổn định sẽ một lựa chọn hợp lý giúp cung cấp khả năng sạc nhanh cho các thiết bị. Bên cạnh thiết kế nhỏ gọn, dễ lưu trữ và mang đi. Củ sạc nhanh Xiaomi AD201 còn cho độ tương thích cao với nhiều dòng smartphone, máy tính bảng,…với công suất sạc lên đến 20W. Đặc biệt, cốc sạc còn hỗ trợ tính năng sạc nhanh giúp rút ngắn đáng kể thời gian sạc hơn so với những cốc sạc thông thường.', 1, 10, 149000),
(10, 'Củ sạc Samsung', 3, 47200, 2, 'cu-sac-samsung-mi360.jpg', '– Củ sạc nhanh Samsung 5V-2A được bán tại shop phụ kiện Samsung cam kết là hàng chính hãng 100% của thương hiệu Samsung.\r\n– Bộ sạc được shop nhập từ hai nhà cung cấp đó là nhà máy Samsung Việt Nam và Trung Quốc, bạn hoàn toàn yên tâm sử dụng.\r\n– Củ sạc nhanh Samsung 5V-2A có thiết kế nhỏ gọn, trọng lượng nhẹ hơn thế phần củ và dây cáp thiết kế tách biệt nhau cho nên sản phẩm giúp bạn dễ dàng di chuyển mọi lúc mọi nơi.', 1, 0, 59000),
(11, 'Máy tính bảng TCL Tab 10L Gen 3', 11, 2152000, 7, 'Máy tính bảng TCL Tab 10L Gen 3.jpg', 'TCL Tab 10L Gen 3 là chiếc máy tính bảng hoàn hảo cho những ai tìm kiếm sự kết hợp giữa hiệu suất mạnh mẽ, thiết kế tinh tế và tính năng giải trí vượt trội. Với màn hình lớn 10.1 inch sắc nét, hiệu năng mạnh mẽ, camera chất lượng và thời gian sử dụng pin dài, máy đáp ứng nhu cầu học tập, làm việc và giải trí cho cả gia đình.', 1, 0, 2690000),
(12, 'Máy tính bảng TCL Tab 10L Gen 2', 11, 1592000, 7, 'Máy tính bảng TCL Tab 10L Gen 2.jpg', 'Được ra mắt trong năm 2023, TCL Tab 10L Gen 2 tạo được sự chú ý khi có giá bán hết sức cạnh tranh nhưng lại sở hữu khá nhiều đặc điểm nổi bật. Ưu điểm lớn nhất có thể kể đến là màn hình lớn, thiết kế mỏng và có cả mặt lưng kim loại.', 1, 0, 1990000),
(13, 'Máy tính bảng Samsung Galaxy Tab S10 Ultra', 3, 19432000, 7, 'Máy tính bảng Samsung Galaxy Tab S10 Ultra.jpg', 'Samsung Galaxy Tab S10 Ultra WiFi là một lựa chọn hoàn hảo cho những người đam mê công nghệ, những người sáng tạo và những ai muốn trải nghiệm một chiếc máy tính bảng cao cấp. Với thiết kế đẹp mắt, cấu hình mạnh mẽ và nhiều tính năng hữu ích, máy chắc chắn sẽ làm hài lòng ngay cả những người dùng khó tính nhất.', 1, 0, 24290000),
(14, 'Máy tính bảng Samsung Galaxy Tab A9+ 5G', 3, 4792000, 7, 'Máy tính bảng Samsung Galaxy Tab A9+ 5G.jpg', 'Với giá cả phải chăng, Samsung Galaxy Tab A9+ 5G là một sản phẩm máy tính bảng của Samsung dành cho người dùng muốn sở hữu một thiết bị giải trí cơ bản với màn hình rộng và khả năng kết nối mạng toàn diện để truy cập internet bất kỳ lúc nào và ở bất kỳ đâu.', 1, 0, 5990000),
(15, 'Máy tính bảng Samsung Galaxy Tab S10+', 3, 15432000, 7, 'Máy tính bảng Samsung Galaxy Tab S10+.jpg', 'Samsung tiếp tục khẳng định vị thế của mình trong thị trường máy tính bảng với dòng sản phẩm Samsung Galaxy Tab S10 Plus. Đây là thiết bị hướng tới người dùng tìm kiếm một trải nghiệm toàn diện, từ hiệu năng mạnh mẽ đến khả năng sáng tạo hiệu quả, cùng hàng loạt các tính năng tiện lợi khác, hỗ trợ cho cả công việc, giải trí và các tác vụ thường ngày của bạn.', 1, 0, 19290000),
(16, 'Máy tính bảng Samsung Galaxy Tab S10 Ultra 5G', 3, 21832000, 7, 'Máy tính bảng Samsung Galaxy Tab S10 Ultra 5G.jpg', 'Samsung Galaxy Tab S10 Ultra là minh chứng cho sự kết hợp hoàn hảo giữa thiết kế, hiệu năng và tính năng thông minh, mang đến trải nghiệm chưa từng có cho người dùng. Sản phẩm này không chỉ đơn thuần là một chiếc máy tính bảng, mà còn là công cụ hỗ trợ mạnh mẽ trong công việc, sáng tạo và giải trí.', 1, 0, 27290000),
(17, 'Máy tính bảng Lenovo Tab Plus', 9, 5352000, 7, 'Máy tính bảng Lenovo Tab Plus.jpg', 'Lenovo Tab Plus kết hợp thiết kế tinh tế, hiệu năng mạnh mẽ và trải nghiệm giải trí đỉnh cao. Với màn hình lớn, chân đế tiện lợi, âm thanh sống động và pin bền bỉ, sản phẩm này đáp ứng tốt mọi nhu cầu từ công việc đến giải trí. Lenovo Tab Plus là lựa chọn lý tưởng trong phân khúc tablet tầm trung đến cao cấp.', 1, 0, 6690000),
(18, 'Máy tính bảng Lenovo Tab M9', 9, 2072000, 7, 'Máy tính bảng Lenovo Tab M9.jpg', 'Để mở rộng dải sản phẩm máy tính bảng của mình, Lenovo đã trình làng Lenovo Tab M9 WiFi. Sản phẩm gây ấn tượng với thiết kế thanh lịch, màn hình rộng rãi và hiệu suất ổn định, đảm bảo đáp ứng mọi nhu cầu sử dụng cho người dùng.', 1, 0, 2590000),
(19, 'Cáp sạc Type C Zmi AL303-AL873', 6, 143200, 3, 'Cáp sạc Type C Zmi AL303-AL873.jpg', 'Bạn đang tìm kiếm một sợi cáp sạc chất lượng với giá cả hợp lý, đến từ thương hiệu uy tín, đồng thời hỗ trợ sạc nhanh thì Cáp sạc Type C Zmi AL303-AL873 chính là sự lựa chọn mà bạn không thể bỏ qua.\r\nLí do nên trang bị Cáp sạc Type C Zmi AL303-AL873?\r\nCáp sạc Type C Zmi AL303-AL873 là một cáp sạc đến từ tương hiệu ZMI, hỗ trợ dòng điện lên tới 3A giúp quá trình sạc và truyền dữ liệu nhanh hơn. Bên cạnh đó thiết kế siêu bền bỉ cùng chiều dài lên tới 1m sẽ là những ưu điểm đáng để bạn cân nhắc.', 1, 0, 179000),
(20, 'Cáp sạc Type C ZMI AL706', 6, 159200, 3, 'Cap-type-C-sieu-ben-Xiaomi-ZMI-AL706-chinh-hang-mi360.jpg', 'Cáp sạc Type C ZMI AL706 có chiều dài dây 1 mét/2 mét tiêu chuẩn tương tự như các loại cáp sạc phổ biến. Tuy nhiên điểm đặc biệt chính là toàn bộ thân dây được bao bọc bởi một lớp dây dù bện nylon nhằm gia cố chắc chắn cho sợi cáp, giúp cho sợi cáp cứng cáp mà không gặp phải trường hợp tưa dây hở mạch. Ngoài ra, nó còn chống rối dây hiệu quả khi bạn để trong balo túi xách và có thể chịu lực uốn cong liên tục lên đến 30.000 lần mà không bị hư hỏng.', 1, 0, 199000),
(21, 'Củ sạc nhanh Zmi HA612', 2, 79200, 2, 'Cu-Sac-Nhanh-Xiaomi-Zmi-HA716-chinh-hang-mi360-3.png', 'Bạn đang tìm một cốc sạc chất lượng, có thể hoạt động ổn định và đặc biệt là phải có tính năng sạc nhanh. Bạn đang phân vân và không biết nên chọn sản phẩm nào để vừa có thể đáp ứng tốt như cầu của mình nhưng lại phải phù hợp với túi tiền của mình. Vâng nếu như thế thì sản phẩm dưới đây, Củ sạc nhanh Zmi HA612 18W Chính Hãng chính là sản phẩm mà bạn đang tìm kiếm.', 1, 0, 99000),
(22, 'Củ sạc nhanh HOCO 3USB HK1', 7, 132000, 2, 'Củ sạc nhanh HOCO 3USB HK1.png', 'Củ sạc nhanh HOCO 3USB HK1 3 cổng 5A một thiết bị adapter để sạc cho các thiết bị di động, trang bị 3 cổng USB cho phép sạc cùng lúc cho cả 3 thiết bị. Hỗ trợ sạc tương thích với cả điện thoại và máy tính bảng.\r\nCủ sạc nhanh HOCO 3USB HK1 3 cổng 5A được làm hoàn toàn từ nhựa ABS-PC. Các cạnh xung quanh đều được bo cong để cảm giác cầm nắm tốt hơn và bớt phần đơn điệu. Bề mặt được làm dạng bóng giúp sản phẩm sang trọng và cao cấp hơn.', 1, 0, 165000),
(23, 'Củ sạc nhanh Xiaomi AD332EU', 2, 199200, 2, 'Củ sạc nhanh Xiaomi AD332EU.jpg', 'Củ sạc nhanh Xiaomi AD332EU được trang bị công nghệ sạc nhanh lên đến 30W cho tốc độ vượt trội. Bên cạnh đó, với việc được trang bị cả 2 cổng đầu ra phổ biến nhất hiện nay là USB-A và USB type C thì đây là một điểm rất tiện lợi cho người sử dụng. Cả 2 cổng đầu ra đều có khả năng sạc nhanh, đối với cổng USB type C thì cốc sạc có công suất sạc nhanh là 30W, khi sử dụng cổng sạc USB-A thì công suất tối đa là 27W. Còn khi sử dụng đồng thời cả 2 cổng thì công suất đạt tối đa là 24W chia đều cho 2 cổng sạc.', 1, 0, 209160),
(24, 'Củ sạc nhanh Zmi 1A1C HA722', 6, 183200, 2, 'Củ sạc nhanh Zmi 1A1C HA722.jpg', 'Củ sạc nhanh Zmi 1A1C HA722 là sản phẩm được rất nhiều người yêu thích sử dụng hiện nay. Với thiết kế nhỏ gọn, trang bị 2 cổng ra với công suất sạc nhanh lên tới 30W, cùng với cổng USB type C hỗ trợ PD sản phẩm có thể sạc được cho Laptop, Macbook. Đây là lựa chọn tuyệt vời dành cho những ai sở hữu nhiều thiết bị di động.', 1, 0, 229000),
(25, 'Tai nghe Bluetooth Business Remax RB T15', 8, 199200, 5, 'Tai nghe Bluetooth Business Remax RB T15.jpg', 'Tai nghe Bluetooth Business Remax RB T15 được thiết kế với kiểu dáng hiện đại, sang trọng, giúp bạn dễ dàng mang theo bên mình và sử dụng trong khi di chuyển mọi nơi, thích hợp cho những người bận rộn và phải đàm thoại nhiều.\r\nKích thước của Tai nghe Bluetooth Business Remax RB T15 tuy nhỏ 51×13.8×9.15mm, trọng lượng nhẹ chỉ với 675g, nhưng chiếc tai nghe này được cấu tạo bao gồm 46 bộ phận chi tiết nhỏ được cấu tạo tỉ mỉ và lắp ráp cẩn thận thận từ ngoài vỏ cho tới bên trong.', 1, 0, 249000),
(26, 'Tai nghe In-Ear Headphones Basic', 2, 119200, 5, 'Tai nghe In-Ear Headphones Basic.jpg', 'Tai nghe Tai nghe In-Ear Headphones Basic được thiết kế với kiểu dáng hiện đại, sang trọng, giúp bạn dễ dàng mang theo bên mình và sử dụng trong khi di chuyển mọi nơi, thích hợp cho những người bận rộn và phải đàm thoại nhiều.\r\nKích thước của Tai nghe In-Ear Headphones Basic tuy nhỏ 51×13.8×9.15mm, trọng lượng nhẹ chỉ với 675g, nhưng chiếc tai nghe này được cấu tạo bao gồm 46 bộ phận chi tiết nhỏ được cấu tạo tỉ mỉ và lắp ráp cẩn thận thận từ ngoài vỏ cho tới bên trong.', 1, 0, 149000),
(27, 'Xiaomi Redmi Note 14 8GB/128GB', 2, 4392000, 1, 'Xiaomi Redmi Note 14 8GB-128GB.jpg', 'Hệ điều hành:\r\nXiaomi HyperOS (Android 14)\r\nChip xử lý (CPU):\r\nMediaTek Helio G99-Ultra 8 nhân\r\nTốc độ CPU:\r\n2 nhân 2.2 GHz & 6 nhân 2.0 GHz\r\nChip đồ họa (GPU):\r\nMali-G57 MC2\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n104 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\nKhông giới hạn', 1, 0, 5490000),
(28, 'Xiaomi Redmi Note 14 5G (12GB|256GB) Dimensity 7025 Ultra Ne', 2, 4472000, 1, 'Xiaomi Redmi Note 14 5G (12GB-256GB) Dimensity 7025 Ultra.png', 'Nâng cấp lớn về ngoại hình, thiết kế lịch lãm nhất dòng Note\r\nBắt đầu từ dòng Note 13 năm ngoái, Redmi đã củng cố thiết kế ngoại hình của dòng Note. Do đó, ở dòng Note 14 mới, chúng ta thấy một thiết kế rất đặc biệt và kết cấu thân máy có thể so sánh với một chiếc hạm. Dòng Note 14 áp dụng thiết kế ống kính gắn ở giữa để nâng cao cảm giác sang trọng tổng thể, Redmi cũng sử dụng một vòng tròn có thiết kế họa tiết được chạm khắc tinh xảo ở vòng ngoài. Mặt sau thân máy cũng áp dụng thiết kế hyperboloid, giúp cải thiện đáng kể độ bám của toàn bộ máy.', 1, 0, 5590000),
(29, 'Xiaomi Redmi Note 13 5G (6|128) Dimensity 6080', 2, 3272000, 1, 'Xiaomi Redmi Note 13 5G (6-128) Dimensity 6080.png', 'Xiaomi gần đây đã ra mắt sản phẩm tiếp theo của thương hiệu Redmi tại Trung Quốc , đó là Redmi Note 13 Series ngày 21 tháng 09 năm 2023 . Ở Note 13 series sẽ có các phiên bản sau : Redmi Note 13 ,  Redmi Note 13 Pro ,  Redmi Note 13 Pro Plus . Hứa hẹn là mẫu smartphone hàng đầu hiện nay ở phân khúc giá rẻ tầm trung khi được trang bị chipset mạnh mẽ cùng mức giá cực tốt . ', 1, 0, 4090000),
(30, 'Xiaomi Redmi Note 13 Pro 5G (8|128GB) Snap 7s Gen 2', 2, 3352000, 1, 'Xiaomi Redmi Note 13 Pro 5G (8-128GB) Snap 7s Gen 2.png', 'Xiaomi gần đây đã ra mắt sản phẩm tiếp theo của thương hiệu Redmi tại Trung Quốc , đó là Redmi Note 13 Series ngày 21 tháng 09 năm 2023 . Ở Note 13 series sẽ có các phiên bản sau : Redmi Note 13 ,  Redmi Note 13 Pro ,  Redmi Note 13 Pro Plus . Hứa hẹn là mẫu smartphone hàng đầu hiện nay ở phân khúc giá rẻ tầm trung khi được trang bị chipset mạnh mẽ cùng mức giá cực tốt.', 1, 0, 4190000),
(31, 'Máy tính bảng Samsung Galaxy Tab S6 Lite', 3, 5592000, 7, 'Máy tính bảng Samsung Galaxy Tab S6 Lite.jpg', 'Samsung Galaxy Tab S6 Lite (2024) là người bạn đồng hành lý tưởng trên hành trình sáng tạo và học tập. Với thiết kế nhỏ gọn, màn hình rộng 10.4 inch, mang lại cảm giác thoải mái mỗi khi cầm nắm. Hỗ trợ hệ điều hành One UI 6.1, bút S Pen tích hợp sẵn, sản phẩm mở ra không gian làm việc và giải trí đa năng dành cho bạn.', 1, 10, 6990000),
(32, 'Xiaomi Redmi Note 13 Pro+ 5G (12|256GB) Dimensity 7200 Ultra', 2, 4312000, 1, 'Xiaomi Redmi Note 13 Pro+ 5G (12-256GB) Dimensity 7200 Ultra.png', 'Xiaomi gần đây đã ra mắt sản phẩm tiếp theo của thương hiệu Redmi tại Trung Quốc , đó là Redmi Note 13 Series ngày 21 tháng 09 năm 2023 . Ở Note 13 series sẽ có các phiên bản sau : Redmi Note 13 ,  Redmi Note 13 Pro ,  Redmi Note 13 Pro Plus . Hứa hẹn là mẫu smartphone hàng đầu hiện nay ở phân khúc giá rẻ tầm trung khi được trang bị chipset mạnh mẽ cùng mức giá cực tốt.', 1, 10, 5390000),
(33, 'iPad mini 6 Wifi 64GB', 1, 8712000, 8, 'iPad mini 6 Wifi 64GB.jpg', 'Sức mạnh ấn tượng trong một thiết kế nhỏ gọn iPad Mini 6 64G Wifi  /A đánh dấu sự trở lại mạnh mẽ của dòng iPad mini luôn được ưa chuộng. Nút Touch ID tích hợp trên nút nguồn tiện dụng, chip A15 Bionic mới mẻ mang đến hiệu suất vượt trội.', 1, 10, 10890000),
(34, 'iPad Gen 9 Wifi 64GB', 1, 5272000, 8, 'iPad Gen 9 Wifi 64GB.jpg\r\n\r\n', 'iPad Gen 9 64G Wifi có nhiều điểm nâng cấp đáng chú ý: công nghệ True Tone tinh chỉnh độ sáng màn hình, tính năng sân khấu trung tâm nổi bật chủ thể giữa khung hình,... Đây là dòng iPad thiết kế cũ giá mềm phù hợp với học sinh sinh viên, dân văn phòng,...', 1, 10, 6590000),
(35, 'iPad Gen 10 Wifi 64GB', 1, 6632000, 8, 'iPad Gen 10 Wifi 64GB.jpg\r\n\r\n', 'Là phiên bản nâng cấp của iPad Gen 9, iPad Gen 10 2022 vừa được Apple cho ra mắt 18/10 với nhiều cải tiến về hiệu năng cũng như thế kế. Phiên bản Gen 10 có màn hình 10.9 inch và nhiều màu sắc hơn để lựa chọn.\r\n', 1, 10, 8290000),
(36, 'iPad Gen 10 Wifi 256GB', 1, 9592000, 8, 'iPad Gen 10 Wifi 256GB.jpg', 'Là phiên bản nâng cấp của iPad Gen 9, iPad Gen 10 2022 vừa được Apple cho ra mắt 18/10 với nhiều cải tiến về hiệu năng cũng như thế kế. Phiên bản Gen 10 có màn hình 10.9 inch và nhiều màu sắc hơn để lựa chọn.', 1, 10, 11990000),
(37, 'iPad Gen 10 5G 64GB', 1, 9752000, 8, 'iPad Gen 10 5G 64GB.jpg', 'Là dòng iPad phổ thông của Apple, iPad Gen 10 2022 đang nhận được nhiều sự quan tâm khi có được nhiều cải tiến về hiệu năng, thiết kế cũng như phong phú hơn về màu sắc. Nếu bạn đang quan tâm đến 1 chiếc iPad giá rẻ thì đây là 1 gợi ý không tồi.', 1, 10, 12190000),
(38, 'iPad mini 7 2024 Wifi 128GB', 1, 11032000, 8, 'iPad mini 7 2024 Wifi 128GB.jpg', 'Sở hữu chip A17 Pro mạnh mẽ cùng màn hình Liquid Retina 8.3 inch sắc nét, iPad mini 7 2024 Wifi 128GB hứa hẹn mang đến trải nghiệm tablet hoàn hảo trong một thiết kế nhỏ gọn chỉ 8.3 inch, đáp ứng đa dạng nhu cầu từ giải trí đến công việc.', 1, 10, 13790000),
(39, 'iPad Air 6 M2 11 inch Wifi 128GB', 1, 11192000, 8, 'iPad Air 6 M2 11 inch Wifi 128GB.jpg', 'iPad Air 11 inch M2 Wifi 128GB là biểu tượng của sự kết hợp hoàn hảo giữa sức mạnh công nghệ và thiết kế hiện đại. Với chip Apple M2 mạnh mẽ, màn hình Retina IPS 11 inch sống động và dung lượng lưu trữ 128GB, chiếc iPad này mang đến hiệu suất ấn tượng và trải nghiệm người dùng tuyệt vời. Không chỉ là công cụ làm việc hiệu quả, iPad Air M2 còn là người bạn đồng hành lý tưởng cho mọi nhu cầu giải trí.', 1, 10, 13990000),
(40, 'iPad mini 7 2024 Wifi 256GB', 1, 12792000, 8, 'iPad mini 7 2024 Wifi 256GB.jpg', 'Tối ưu cho người dùng chuyên nghiệp với bộ nhớ 256GB rộng rãi cùng chip A17 Pro mạnh mẽ, iPad mini 7 2024 Wifi là chiếc tablet nhỏ gọn đáp ứng xuất sắc mọi nhu cầu từ làm việc đến giải trí với màn hình Liquid Retina 8.3 inch sắc nét.', 1, 10, 15990000),
(41, 'iPad Gen 10 5G 256GB', 1, 12792000, 8, 'iPad Gen 10 5G 256GB.jpg', 'Là dòng iPad phổ thông của Apple, iPad Gen 10 2022 đang nhận được nhiều sự quan tâm khi có được nhiều cải tiến về hiệu năng, thiết kế cũng như phong phú hơn về màu sắc. Nếu bạn đang quan tâm đến 1 chiếc iPad giá rẻ thì đây là 1 gợi ý không tồi.', 1, 10, 15990000),
(42, 'iPad Air 6 M2 11 inch Wifi 256GB', 1, 13192000, 8, 'iPad Air 6 M2 11 inch Wifi 256GB.jpg', 'Bạn đang tìm kiếm một chiếc máy tính bảng vừa mạnh mẽ, vừa sang trọng? Hãy để iPad Air 11 inch M2 Wifi 256GB thổi bay mọi nghi ngờ của bạn! Sở hữu chip Apple M2 đột phá, màn hình Retina IPS 11 inch sống động và bộ nhớ trong rộng rãi lên đến 256GB, chiếc iPad này sẵn sàng đáp ứng mọi thử thách từ công việc đến giải trí.', 1, 10, 16490000),
(43, 'iPad mini 7 2024 5G 128GB', 1, 13512000, 8, 'iPad mini 7 2024 5G 128GB.jpg', 'Là thế hệ iPad mini mạnh mẽ nhất từ trước đến nay với chip A17 Pro, màn hình Liquid Retina 8.3 inch sắc nét cùng khả năng kết nối 5G, iPad Mini 7 2024 hứa hẹn mang đến trải nghiệm di động hoàn hảo cho người dùng trong một thiết kế nhỏ gọn chỉ 300g.', 1, 10, 16890000),
(44, 'iPad Air 6 M2 11 inch 5G 128GB', 1, 14552000, 8, 'iPad Air 6 M2 11 inch 5G 128GB.jpg', 'Trong năm 2024, Apple lại tiếp tục ghi dấu ấn với sự ra mắt của iPad Air M2 11 inch. Sự kết hợp tuyệt vời giữa vẻ đẹp tinh tế, sức mạnh xử lý đỉnh cao và tính di động vượt trội đã biến chiếc máy tính bảng này trở thành người bạn đồng hành hoàn hảo cho mọi nhu cầu làm việc và giải trí hiện đại.', 1, 10, 18190000),
(45, 'iPad Air 6 M2 13 inch Wifi 128GB', 1, 16232000, 8, 'iPad Air 6 M2 13 inch Wifi 128GB.jpg', 'Thỏa mãn nhu cầu của những người dùng khắt khe về thiết kế lẫn sức mạnh xử lý, mẫu iPad Air M2 13 inch mới nhất của Apple hứa hẹn sẽ đem đến trải nghiệm di động tối ưu trên một thiết bị cao cấp, đẳng cấp. Với những ưu điểm vượt trội, chiếc máy tính bảng này chắc chắn sẽ chinh phục bất cứ ai yêu thích sự di động tiện lợi nhưng không đánh đổi hiệu năng và trải nghiệm đỉnh cao.', 1, 10, 20290000),
(46, 'iPad Air 6 M2 11 inch 5G 256GB', 1, 16792000, 8, 'iPad Air 6 M2 11 inch 5G 256GB.jpg', 'Kỷ nguyên di động đã đạt đến đỉnh cao mới với sự ra mắt của iPad Air M2 11 inch - chiếc máy tính bảng tuyệt đỉnh kết hợp giữa vẻ đẹp sang trọng, sức mạnh đột phá và tính di động vượt trội. Được trang bị con chip Apple M2 mạnh mẽ đỉnh cao, màn hình Liquid Retina rực rỡ và hỗ trợ tối đa cho các công cụ sáng tạo như Apple Pencil Pro, iPad Air M2 hứa hẹn sẽ là người bạn đồng hành hoàn hảo cho mọi nhu cầu làm việc, học tập và giải trí đa phương tiện của thời đại hiện đại.', 1, 10, 20990000),
(47, 'iPad Air 6 M2 13 inch Wifi 256GB', 1, 18312000, 8, 'iPad Air 6 M2 13 inch Wifi 256GB.jpg', 'Trong thế giới công nghệ không ngừng tiến bộ, Apple tiếp tục khẳng định vị thế dẫn đầu với sự ra mắt của iPad Air M2 13 inch. Chiếc máy tính bảng này là sự kết hợp hoàn hảo giữa vẻ ngoài sang trọng và hiệu năng đỉnh cao, hứa hẹn mang đến những trải nghiệm di động vượt trội.', 1, 10, 22890000),
(48, 'iPad Air 6 M2 13 inch 5G 128GB', 1, 19032000, 8, 'iPad Air 6 M2 13 inch 5G 128GB.jpg', 'iPad Air thế hệ mới năm 2024 đánh dấu một bước tiến vượt bậc của Apple trong phân khúc máy tính bảng khi mang trên mình con chip M2 mạnh mẽ cùng màn hình lớn 13 inch chưa từng có trên dòng Air trước đây. Sản phẩm này hứa hẹn sẽ mang đến những trải nghiệm đột phá về hiệu năng, đồ họa và khả năng xử lý AI cũng như không gian hiển thị rộng rãi hơn để phục vụ cho các tác vụ học tập, làm việc và sáng tạo.', 1, 10, 23790000),
(49, 'iPad Pro M4 11 inch Wifi 256GB', 1, 21272000, 8, 'iPad Pro M4 11 inch Wifi 256GB.jpg', 'Apple vừa trình làng phiên bản iPad Pro M4 11 inch WiFi mới nhất, mang đến nhiều cải tiến về hiệu năng xử lý, thiết kế mỏng nhẹ cùng khả năng hiển thị tuyệt vời. Đây chính là mẫu máy tính bảng chuyên nghiệp hàng đầu dành cho các tác vụ sáng tạo và đa nhiệm.', 1, 10, 26590000),
(50, 'iPad Air 6 M2 13 inch 5G 256GB', 1, 21432000, 8, 'iPad Air 6 M2 13 inch 5G 256GB.jpg', 'Apple đã mang đến một bước tiến vượt bậc trong phân khúc máy tính bảng với iPad Air thế hệ mới năm 2024. Sản phẩm này được trang bị con chip M2 mạnh mẽ và màn hình lớn 13 inch, một kích thước chưa từng có trên dòng Air trước đây. iPad Air 13 inch M2 hứa hẹn sẽ mang đến những trải nghiệm đột phá về hiệu năng, đồ họa, khả năng xử lý AI cũng như không gian hiển thị rộng rãi hơn để phục vụ cho các tác vụ học tập, làm việc và sáng tạo.', 1, 30, 26790000),
(51, 'iPad Pro M4 11 inch 5G 256GB', 1, 25592000, 8, 'iPad Pro M4 11 inch 5G 256GB.jpg', 'iPad Pro M4 11 inch đánh dấu một bước tiến mới trong việc tối ưu hóa hiệu năng và trải nghiệm người dùng cho các tác vụ chuyên nghiệp. Con chip M4 tiên tiến mang đến sức mạnh xử lý vượt trội, cho phép người dùng thực hiện các nhiệm vụ phức tạp một cách trơn tru.', 1, 30, 31990000),
(52, 'iPad Pro M4 11 inch Wifi 512GB', 1, 25752000, 8, 'iPad Pro M4 11 inch Wifi 512GB.jpg', 'Nếu bạn đang tìm kiếm một trợ lý đắc lực để cùng khám phá những tác phẩm đỉnh cao nhất, thì iPad Pro M4 11 inch WiFi 256GB chính là câu trả lời hoàn hảo. Mẫu tablet chuyên nghiệp đỉnh cao này sẽ mang đến cho bạn sức mạnh vô song trong khả năng đa nhiệm và sáng tạo.', 1, 30, 32190000),
(53, 'Máy tính bảng HONOR Pad X8a', 10, 3352000, 7, 'Máy tính bảng HONOR Pad X8a.jpg', 'HONOR Pad X8a gây ấn tượng với viên pin lớn cho thời gian chờ lên đến 56 ngày, màn hình 11 inch cân đối, âm thanh sống động và hiệu năng ổn định, mang đến sự tiện lợi và trải nghiệm trọn vẹn cho cả công việc lẫn giải trí hàng ngày.', 1, 30, 4190000),
(54, 'Máy tính bảng Xiaomi Pad 6', 2, 7192000, 7, 'Máy tính bảng Xiaomi Pad 6.jpg', 'Xiaomi tiếp tục định nghĩa công nghệ với sáng kiến mới nhất của mình, Xiaomi Pad 6. Với thiết kế viền kim loại sang trọng, chiếc máy tính bảng này kết hợp sự thanh lịch với hiệu suất mạnh mẽ để đáp ứng tất cả nhu cầu công việc và giải trí của bạn.', 1, 30, 8990000),
(55, 'Máy tính bảng Xiaomi Pad 6S Pro', 2, 10792000, 7, 'Máy tính bảng Xiaomi Pad 6S Pro.jpg', 'Xiaomi Pad 6S Pro là chiếc máy tính bảng mạnh mẽ với màn hình lớn sắc nét, hiệu năng vượt trội và tính năng thông minh. Sản phẩm kết hợp hoàn hảo giữa thiết kế tinh tế và công nghệ tiên tiến, đáp ứng tốt nhu cầu công việc lẫn giải trí.', 1, 30, 13490000),
(56, 'Máy tính bảng OPPO Pad 3 Pro', 4, 13592000, 7, 'Máy tính bảng OPPO Pad 3 Pro.jpg', 'OPPO Pad 3 Pro là chiếc máy tính bảng lý tưởng cho những ai đam mê sáng tạo. Trang bị vi xử lý mạnh mẽ từ Qualcomm cùng các tính năng AI độc đáo, Pad 3 Pro mang đến hiệu suất ấn tượng, giúp xử lý mượt mà mọi tác vụ từ thiết kế đồ họa đến chỉnh sửa video.', 1, 30, 16990000),
(57, 'Máy tính bảng OPPO Pad 2', 4, 7832000, 7, 'Máy tính bảng OPPO Pad 2.jpg', 'OPPO Pad 2 là sản phẩm mới của OPPO trong công cuộc chạy đua công nghệ trên thị trường máy tính bảng. Máy thu hút được khá nhiều sự quan tâm khi trang bị một màn hình lớn, con chip mạnh trong tầm giá cùng một viên pin lớn cho trải nghiệm dài lâu mà ít khi gặp phải gián đoạn.', 1, 30, 9790000),
(58, 'Máy tính bảng OPPO Pad Air', 4, 3432000, 7, 'Máy tính bảng OPPO Pad Air.jpg', 'OPPO Pad Air là chiếc máy tính bảng đầu tiên OPPO phát hành chính hãng và kinh doanh tại thị trường Việt Nam. Với thông số khá ấn tượng cùng mức giá bán hấp dẫn giúp cho máy trở thành một đối thủ đáng gờm so với các tablet khác trên thị trường.', 1, 30, 4290000),
(59, 'Tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41', 4, 632000, 5, 'Tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41.jpg', 'Thời lượng pin tai nghe:\r\nDùng 7 giờ - Sạc 1.5 giờ\r\nThời lượng pin hộp sạc:\r\nDùng 28 giờ - Sạc 3 giờ\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\ncodec SBC\r\nCông nghệ ENC\r\ncodec AAC\r\nTương thích:\r\nAndroid\r\niOS (iPhone)\r\nỨng dụng kết nối:\r\nHeyMelody App\r\nTiện ích:\r\nChống nước IPX4\r\nGame Mode\r\nCó mic thoại\r\nChụp ảnh nhanh\r\nKết nối cùng lúc:\r\n1 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.2\r\nĐiều khiển:\r\nCảm ứng chạm\r\nPhím điều khiển:\r\nTăng/giảm âm lượng\r\nChuyển bài hát\r\nNhận/Ngắt cuộc gọi\r\nKích thước:\r\nDài 2.1 cm - Rộng 2.2 cm - Cao 3.4 cm\r\nKhối lượng:\r\n4 g', 1, 30, 790000),
(60, 'Máy tính bảng Lenovo Tab M11 4G', 9, 4232000, 7, 'Máy tính bảng Lenovo Tab M11 4G.jpg', 'Lenovo Tab M11 4G 4GB/128GB mở ra thế giới giải trí sinh động với màn hình IPS LCD 11 inch, độ phân giải 1200 x 1920 Pixels, tần số quét 90 Hz. Âm thanh Dolby Atmos và tính năng Google Kids Space biến tablet này thành công cụ giải trí và học tập tuyệt vời cho cả gia đình.', 1, 30, 5290000),
(61, 'Tai nghe TWS Samsung Galaxy Buds3 Pro R630N', 3, 4072000, 5, 'Tai nghe TWS Samsung Galaxy Buds3 Pro R630N.jpg', 'Thời lượng pin tai nghe:\r\nDùng 7 giờ - Sạc Hãng không công bố\r\nThời lượng pin hộp sạc:\r\nDùng 30 giờ - Sạc Hãng không công bố\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nDolby Atmos\r\nCông nghệ phát sóng Auracast\r\nAdaptive Noise Control\r\nAdaptive EQ\r\n360 Reality Audio\r\nTương thích:\r\nmacOS\r\nAndroid, iOS, Windows\r\nỨng dụng kết nối:\r\nGalaxy Wearable\r\nTiện ích:\r\nPhiên dịch trực tiếp\r\nThanh ánh sáng Blade Lights\r\nChống nước & bụi IP57\r\nSạc không dây\r\nTự động chuyển đổi kết nối linh hoạt (Auto Switch)\r\nCó mic thoại\r\nSạc nhanh\r\n360 Reality Audio\r\nGalaxy AI\r\nKết nối cùng lúc:\r\n1 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.4\r\nĐiều khiển:\r\nCảm ứng chạm/vuốt\r\nGiọng nói (Tiếng Anh, Hàn)\r\nPhím điều khiển:\r\nTăng/giảm âm lượng\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nChuyển chế độ\r\nNhận/Ngắt cuộc gọi\r\nKích thước:\r\nDài 3.2 cm - Rộng 2.02 cm - Cao 1.8 cm\r\nKhối lượng:\r\n5.4 g', 1, 10, 5090000),
(62, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 4 ETEE1', 4, 1032000, 5, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 4 ETEE1.jpg', 'Thời lượng pin tai nghe:\r\nDùng 11.5 giờ - Sạc 1 giờ\r\nThời lượng pin hộp sạc:\r\nDùng 42 giờ - Sạc Khoảng 80 phút\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nChống ồn chủ động\r\nTương thích:\r\nmacOS\r\nAndroid, iOS, Windows\r\nỨng dụng kết nối:\r\nHeyMelody App\r\nTiện ích:\r\nChống nước & bụi IP55\r\nCó mic thoại\r\n2 Micro hỗ trợ AI\r\nKết nối cùng lúc:\r\n2 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.4\r\nĐiều khiển:\r\nCảm ứng\r\nPhím điều khiển:\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nChuyển chế độ\r\nNhận/Ngắt cuộc gọi\r\nKích thước:\r\nDài 2.8 cm - Rộng 2.1 cm - Cao 1.7 cm\r\nKhối lượng:\r\n4.2 g', 1, 10, 1290000),
(63, 'Tai nghe Bluetooth True Wireless OPPO Enco Buds 2 Pro E510A', 4, 816000, 5, 'Tai nghe Bluetooth True Wireless OPPO Enco Buds 2 Pro E510A.jpg', 'Thời lượng pin tai nghe:\r\nDùng 8 giờ - Sạc 2 giờ\r\nThời lượng pin hộp sạc:\r\nDùng 38 giờ - Sạc 2 giờ\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nDolby Atmos\r\nDirac Audio Tuner\r\nDynamic Driver 12.4 mm\r\nCông nghệ ENC\r\nTương thích:\r\nmacOS\r\nAndroid, iOS, Windows\r\nỨng dụng kết nối:\r\nHeyMelody App\r\nTiện ích:\r\nChống nước & bụi IP55\r\nCó mic thoại\r\n2 Micro hỗ trợ AI\r\nKết nối cùng lúc:\r\n1 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.3\r\nĐiều khiển:\r\nCảm ứng chạm\r\nPhím điều khiển:\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nNhận/Ngắt cuộc gọi\r\nKích thước:\r\nDài 2.85 cm - Rộng 2.02 cm - Cao 2.3 cm\r\nKhối lượng:\r\n4.3 g ± 0.1 g', 1, 10, 1020000),
(64, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 3 ETE31', 4, 952000, 5, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 3 ETE31.png', 'Thời lượng pin tai nghe:\r\nDùng 6 giờ - Sạc 1 giờ\r\nThời lượng pin hộp sạc:\r\nDùng 25 giờ - Sạc 2 giờ\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nÂm thanh Hi-Fi\r\nÂm thanh vòm OPPO Alive\r\nTương thích:\r\nAndroid\r\niOS (iPhone)\r\nmacOS (Macbook, iMac)\r\nWindows\r\nỨng dụng kết nối:\r\nHeyMelody App\r\nTiện ích:\r\nChống nước & bụi IP54\r\nHỗ trợ chụp ảnh\r\nTrợ lý ảo Google\r\nKhử tiếng ồn AI\r\nKết nối cùng lúc:\r\n2 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.3\r\nĐiều khiển:\r\nCảm ứng chạm\r\nPhím điều khiển:\r\nTăng/giảm âm lượng\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nBật trợ lí ảo\r\nNhận/Ngắt cuộc gọi\r\nHỗ trợ chụp ảnh\r\nKích thước:\r\nDài 3.31 cm - Rộng 1.845 cm - Cao 1.71 cm\r\nKhối lượng:\r\n3.75 g', 1, 10, 1190000),
(65, 'Tai nghe TWS Samsung Galaxy Buds3 R530N', 3, 2872000, 5, 'Tai nghe TWS Samsung Galaxy Buds3 R530N.jpg', 'Thời lượng pin tai nghe:\r\nDùng 6 giờ - Sạc Hãng không công bố\r\nThời lượng pin hộp sạc:\r\nDùng 30 giờ - Sạc Hãng không công bố\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nCông nghệ phát sóng Auracast\r\nÂm thanh Hi-Fi\r\nActive Noise Cancelling\r\nAdaptive EQ\r\n360 Reality Audio\r\nTương thích:\r\nAndroid\r\niOS (iPhone)\r\nWindows\r\nỨng dụng kết nối:\r\nGalaxy Wearable\r\nTiện ích:\r\nPhiên dịch trực tiếp\r\nSạc không dây\r\nTự động chuyển đổi kết nối linh hoạt (Auto Switch)\r\nChống nước IP57\r\nCó mic thoại\r\nSạc nhanh\r\n360 Reality Audio\r\nChống ồn\r\nGalaxy AI\r\nKết nối cùng lúc:\r\n1 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.4\r\nĐiều khiển:\r\nCảm ứng chạm/vuốt\r\nGiọng nói (Tiếng Anh, Hàn)\r\nPhím điều khiển:\r\nTăng/giảm âm lượng\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nChuyển chế độ\r\nNhận/Ngắt cuộc gọi\r\nBật/Tắt chống ồn\r\nKích thước:\r\nDài 3.1 cm - Rộng 1.78 cm - Cao 1.7 cm\r\nKhối lượng:\r\n4.7 g', 1, 10, 3590000),
(66, 'Đồng hồ Citizen 42 mm Nam BU0060-09H', 12, 17188000, 6, 'Đồng hồ Citizen 42 mm Nam BU0060-09H.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n42 mm\r\nChất liệu dây:\r\nDa tổng hợp\r\nĐộ rộng dây:\r\n21 mm\r\nChất liệu khung viền:\r\nTitanium\r\nĐộ dày mặt:\r\n12.2 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nTên bộ máy:\r\nHãng không công bố\r\nThời gian sử dụng pin:\r\nKhoảng 6 - 8 năm\r\nKháng nước:\r\n10 ATM - Tắm, bơi\r\nTiện ích:\r\nKim dạ quang\r\nLịch ngày - thứ\r\nLịch tháng\r\nLịch tuần trăng\r\nNguồn năng lượng:\r\nÁnh sáng', 1, 10, 21485000),
(67, 'Đồng hồ FREDERIQUE CONSTANT Classics 40 mm Nam FC-335MC4P6B2', 13, 52624000, 6, 'Đồng hồ FREDERIQUE CONSTANT Classics 40 mm Nam FC-335MC4P6B2.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n40 mm\r\nDây đeo:\r\nThép không gỉ\r\nĐộ rộng dây:\r\n22 mm\r\nKhung viền:\r\nThép không gỉ 316L\r\nĐộ dày mặt:\r\n10 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nTên bộ máy:\r\nFC-335 Automatic\r\nThời gian trữ dây cót:\r\nKhoảng 38 tiếng\r\nKháng nước:\r\n6 ATM - Đi mưa, tắm\r\nTiện ích:\r\nLịch ngày\r\nLịch tuần trăng\r\nNguồn năng lượng:\r\nCơ tự động', 1, 10, 65780000),
(68, 'Đồng hồ ORIENT SK 41.7 mm Nam RA-AA0B04R19B', 14, 52624000, 6, 'Đồng hồ ORIENT SK 41.7 mm Nam RA-AA0B04R19B.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n41.7 mm\r\nDây đeo:\r\nThép không gỉ 316L\r\nĐộ rộng dây:\r\nHãng không công bố\r\nKhung viền:\r\nThép không gỉ 316L\r\nĐộ dày mặt:\r\n12.6 mm\r\nChất liệu mặt kính:\r\nKính khoáng Mineral\r\nTên bộ máy:\r\nHãng không công bố\r\nThời gian trữ dây cót:\r\nKhoảng 40 tiếng\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nTiện ích:\r\nKim dạ quang\r\nLịch ngày - thứ\r\nNguồn năng lượng:\r\nCơ tự động', 1, 10, 65780000),
(69, 'Đồng hồ Citizen 40 mm Nam BI5120-51Z', 12, 2948000, 6, 'Đồng hồ Citizen 40 mm Nam BI5120-51Z.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n40 mm\r\nChất liệu dây:\r\nThép không gỉ\r\nĐộ rộng dây:\r\nHãng không công bố\r\nChất liệu khung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n7 mm\r\nChất liệu mặt kính:\r\nKính khoáng Mineral\r\nTên bộ máy:\r\nG112\r\nThời gian sử dụng pin:\r\nKhoảng 1 - 2 năm\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nTiện ích:\r\nLịch ngày\r\nNguồn năng lượng:\r\nPin\r\nLoại máy:\r\nPin (Quartz)', 1, 10, 3685000),
(70, 'Đồng hồ G-Shock 2100 45.4 mm Nam GA-B2100CD-1A4DR', 15, 4628800, 6, 'Đồng hồ G-Shock 2100 45.4 mm Nam GA-B2100CD-1A4DR.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n45.4 mm\r\nChất liệu dây:\r\nNhựa\r\nĐộ rộng dây:\r\n24 mm\r\nChất liệu khung viền:\r\nCarbon + Nhựa Resin\r\nĐộ dày mặt:\r\n11.9 mm\r\nChất liệu mặt kính:\r\nKính khoáng Mineral\r\nTên bộ máy:\r\nHãng không công bố\r\nThời gian sử dụng pin:\r\nKhoảng 1.5 năm\r\nKháng nước:\r\n20 ATM - Bơi, lặn\r\nTiện ích:\r\nÂm bấm phím\r\nBluetooth\r\nĐồng hồ 24 giờ\r\nBáo thức\r\nBấm giờ thể thao\r\n2 đèn LED\r\nBấm giờ đếm ngược\r\nLịch ngày - thứ\r\nLịch tháng\r\nLịch năm\r\nGiờ thế giới\r\nTìm điện thoại\r\nNguồn năng lượng:\r\nÁnh sáng', 1, 45, 5786000),
(71, 'Đồng hồ KORLEX 36 mm Nữ KS015-01', 16, 1040000, 6, 'Đồng hồ KORLEX 36 mm Nữ KS015-01.jpg', 'Đối tượng sử dụng:\r\nNữ\r\nĐường kính mặt:\r\n36 mm\r\nChất liệu dây:\r\nThép không gỉ\r\nĐộ rộng dây:\r\n16 mm\r\nChất liệu khung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n8 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nThời gian sử dụng pin:\r\nKhoảng 3 năm\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nTiện ích:\r\nLịch ngày\r\nNguồn năng lượng:\r\nPin\r\nLoại máy:\r\nPin (Quartz)', 1, 45, 1300000),
(72, 'Dây silicone Apple Watch Stride 49/45/44/42mm UNIQ', 16, 1176000, 6, 'Dây silicone Apple Watch Stride 49454442mm UNIQ.png', 'Loại dây:\r\nDây đồng hồ thông minh\r\nDây Apple Watch\r\nĐộ rộng dây:\r\nHãng không công bố\r\nChất liệu dây:\r\nDây silicone', 1, 45, 1470000),
(73, 'Đồng hồ CITIZEN 32 mm Nữ EM0500-73L', 12, 1176000, 6, 'Đồng hồ CITIZEN 32 mm Nữ EM0500-73L.jpg', 'Đối tượng sử dụng:\r\nNữ\r\nĐường kính mặt:\r\n32 mm\r\nChất liệu dây:\r\nThép không gỉ\r\nĐộ rộng dây:\r\n14 mm\r\nChất liệu khung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n7 mm\r\nChất liệu mặt kính:\r\nKính khoáng Mineral\r\nTên bộ máy:\r\nHãng không công bố\r\nThời gian sử dụng pin:\r\nHãng không công bố\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nNguồn năng lượng:\r\nÁnh sáng', 1, 45, 1470000),
(74, 'Đồng hồ Edox Delfin 43 mm Nam 88005-3CA-BUIR', 17, 28000000, 6, 'Đồng hồ Edox Delfin 43 mm Nam 88005-3CA-BUIR.jpg', 'Nam\r\nĐường kính mặt:\r\n43 mm\r\nChất liệu dây:\r\nCao su\r\nĐộ rộng dây:\r\n25 mm\r\nChất liệu khung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n13 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nTên bộ máy:\r\nCaliber 88 (SW220-1)\r\nThời gian trữ dây cót:\r\nKhoảng 40 tiếng\r\nKháng nước:\r\n20 ATM - Bơi, lặn\r\nTiện ích:\r\nKim dạ quang\r\nLịch ngày - thứ\r\nNguồn năng lượng:\r\nCơ tự động', 1, 45, 35000000),
(75, 'Đồng hồ MVW Galaxy 43 mm Nam MSCA002-01-S3', 18, 3192000, 6, 'Đồng hồ MVW Galaxy 43 mm Nam MSCA002-01-S3.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n43 mm\r\nDây đeo:\r\nSilicone\r\nĐộ rộng dây:\r\n25 mm\r\nKhung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n13.7 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nTên bộ máy:\r\nJapan - automatic NH05\r\nThời gian trữ dây cót:\r\nKhoảng 36 tiếng\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nTiện ích:\r\nLịch ngày\r\nKim dạ quang\r\nNguồn năng lượng:\r\nCơ tự động\r\nLoại máy:\r\nCơ tự động (Automatic)\r\nBộ sưu tập:\r\nGalaxy', 1, 45, 3990000),
(76, 'Ốp lưng MagSafe iPhone 15 Nhựa cứng viền dẻo JM Bayer II', 19, 200000, 4, 'Ốp lưng MagSafe iPhone 15 Nhựa cứng viền dẻo JM Bayer II.jpg', 'Đặc điểm nổi bật\r\n\r\nSản phẩm có mặt lưng trong suốt, ốp lưng phù hợp với hầu hết mọi lứa tuổi sử dụng.\r\nChất liệu nhựa cứng viền dẻo bền bỉ, đảm bảo an toàn cho máy khi bị ngoại lực tác động.\r\nỐp lưng iPhone 15 có phần viền dẻo giúp dễ dàng tháo và lắp, không lo bị trầy phần khung của điện thoại.\r\nNhững đường nét trên ốp lưng JM được cắt khoét chỉn chu, kích cỡ vừa vặn với chiếc iPhone 15.\r\nSản phẩm hỗ trợ sạc không dây nhanh chóng mà không cần tháo ốp.', 1, 45, 250000),
(77, 'Ốp lưng Galaxy A16 Nhựa dẻo TPU có khe đựng thẻ Samsung', 19, 312000, 4, 'Ốp lưng Galaxy A16 Nhựa dẻo TPU có khe đựng thẻ Samsung.jpg', '', 1, 45, 390000),
(78, 'Ốp lưng Galaxy S25+ Silicone Samsung', 3, 552000, 4, 'Ốp lưng Galaxy S25+ Silicone Samsung.jpg', '', 1, 45, 690000),
(79, 'Ốp lưng iPhone 15 Plus Nhựa cứng viền dẻo Mipow Tempered Gla', 19, 280000, 4, 'Ốp lưng iPhone 15 Plus Nhựa cứng viền dẻo Mipow Tempered Glass PS15B-CR.jpg', '', 1, 45, 350000),
(80, 'Ốp lưng Galaxy A55 Silicone Samsung', 19, 440000, 4, 'Ốp lưng Galaxy A55 Silicone Samsung.jpg', 'Đặc điểm nổi bật\r\n\r\nỐp lưng Galaxy A55 có thiết kế đơn giản, tinh tế và đẹp mắt với gam màu đen sang trọng, mang đến cho bạn một phong cách thời thượng.\r\nChất liệu silicone mềm mại, nhẹ và thoải mái khi cầm nắm.\r\nỐp lưng có kiểu dáng chính xác, vừa vặn với điện thoại, đảm bảo khớp hoàn toàn với các khu vực camera, loa và cổng kết nối.\r\nSản phẩm giúp hạn chế bám bẩn và vân tay, giữ cho Galaxy A55 luôn sáng bóng và mới mẻ. ', 1, 45, 550000),
(81, 'Ốp lưng Galaxy S25 Ultra Nhựa cứng PC Da PU Samsung Kindsuit', 20, 1032000, 4, 'Ốp lưng Galaxy S25 Ultra Nhựa cứng PC Da PU Samsung Kindsuit.jpg', '', 1, 45, 1290000),
(82, 'Ốp lưng Galaxy A24 Nhựa cứng Samsung', 20, 1032000, 4, 'Ốp lưng Galaxy A24 Nhựa cứng Samsung.jpg', '', 1, 45, 1290000),
(83, 'Ốp lưng Galaxy A25 Nhựa dẻo Samsung SMAPP', 20, 200000, 4, 'Ốp lưng Galaxy A25 Nhựa dẻo Samsung SMAPP.jpg', 'Đặc điểm nổi bật\r\n\r\nMang thiết kế tối giản, phù hợp sử dụng cho cả nam và nữ.\r\nỐp lưng làm từ nhựa dẻo bền bỉ, hạn chế trầy xước cho điện thoại do va đập.\r\nCác chi tiết trên ốp lưng được chế tác chính xác, cho thao tác bấm nhấn trơn tru.\r\nỐp lưng Galaxy A25 ôm vừa vặn điện thoại, giúp cầm nắm êm tay.\r\nSản phẩm dành riêng cho điện thoại Galaxy A25.', 1, 45, 250000),
(84, 'Bao da Galaxy A35 Samsung Thông minh', 21, 712000, 4, 'Bao da Galaxy A35 Samsung Thông minh.jpg', 'Đặc điểm nổi bật\r\n\r\nDễ dàng xem thời gian, thông báo hay điều khiển âm nhạc mà không cần mở phần nắp gập của ốp lưng.\r\nỐp lưng Galaxy A35 được làm từ chất liệu giả da bền bỉ và sang trọng.\r\nBảo vệ màn hình và thân máy khỏi trầy xước, hư hỏng hiệu quả.\r\nHạn chế bám dính bụi bẩn, dấu vân tay, giữ cho Galaxy A35 luôn sạch sẽ.', 1, 45, 890000),
(85, 'Ốp lưng Galaxy Z Fold6 nhựa cứng siêu mỏng Samsung', 20, 552000, 4, 'Ốp lưng Galaxy Z Fold6 nhựa cứng siêu mỏng Samsung.jpg', '', 1, 45, 690000),
(86, 'Ốp lưng Galaxy A16 Nhựa cứng PC mỏng Samsung Trong', 20, 312000, 4, 'Ốp lưng Galaxy A16 Nhựa cứng PC mỏng Samsung Trong.jpg', '', 1, 10, 390000),
(87, 'Ốp lưng iPhone 11 Nhựa cứng viền dẻo COSANO SRTG270 Mèo', 20, 40000, 4, 'Ốp lưng iPhone 11 Nhựa cứng viền dẻo COSANO SRTG270 Mèo.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế đơn giản, thời trang với hoa văn hình mèo con đáng yêu. \r\nSản phẩm chuyên dụng cho dòng iPhone 11.\r\nKích thước và thiết kế vừa khít với mọi chi tiết máy.\r\nỐp lưng chắc chắn, dễ tháo lắp nhờ làm từ nhựa cứng viền dẻo.', 1, 10, 50000),
(88, 'Ốp lưng Magsafe iPhone 15 Plus Vải tinh dệt Apple', 19, 312000, 4, 'Ốp lưng Magsafe iPhone 15 Plus Vải tinh dệt Apple.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế trang nhã và thời thượng từ kiểu dáng đến màu sắc.\r\nỐp lưng Apple làm từ vải tinh dệt sang trọng, bề mặt mềm mại, cầm êm tay. \r\nỐp lưng iPhone 15 Plus hỗ trợ sạc không dây Magsafe, nạp pin nhanh chóng.\r\nThiết kế ốp lưng chuyên dụng cho dòng iPhone 15 Plus. ', 1, 10, 390000),
(89, 'Ốp lưng MagSafe iPhone 16 Pro Nhựa TPU PC ALU UNIQ HELDRO MA', 20, 792000, 4, 'Ốp lưng MagSafe iPhone 16 Pro Nhựa TPU PC ALU UNIQ HELDRO MAX MAGCLICK WITH CAMERA STAND.jpg', '', 1, 10, 990000),
(90, 'Ốp lưng iPhone 14 Nhựa cứng viền dẻo SwitchEasy Artist', 20, 432000, 4, 'Ốp lưng iPhone 14 Nhựa cứng viền dẻo SwitchEasy Artist.jpg', '', 1, 10, 540000),
(91, 'Cáp Type C 1m Ugreen 60126', 22, 128000, 3, 'Cáp Type C 1m Ugreen 60126.jpg', 'Chức năng:\r\nTruyền dữ liệu\r\nSạc\r\nĐầu vào:\r\nUSB Type-A\r\nĐầu ra:\r\nType C: 5V - 3A\r\nĐộ dài dây:\r\n1 m\r\nCông suất tối đa:\r\n15 W', 1, 10, 160000),
(92, 'Cáp Lightning 1m Xmobile DR-L001X', 22, 152000, 3, 'Cáp Lightning 1m Xmobile DR-L001X.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế nhỏ gọn, màu sắc nổi bật, trẻ trung, đẹp mắt.\r\nChiều dài dây cáp 1 m sử dụng tiện lợi.\r\nVỏ bọc bằng sợi nylon dai bền, hạn chế xoắn rối hay đứt gãy.\r\nDòng sạc tối đa 5V – 2.1A tương đương 10.5 W, cho tốc độ sạc nhanh, đường truyền ổn định.\r\nTương thích với các thiết bị iPhone 5, iPad 4 trở lên và các thiết bị dùng cổng Lightning.\r\nĐầu cáp USB kết nối tốt với adapter, sạc dự phòng, PC, laptop.\r\nDùng để sạc pin, sao chép, đồng bộ dữ liệu cho các thiết bị.', 1, 10, 190000),
(93, 'Cáp Type C - Lightning MFI 1m Ugreen 60759', 22, 152000, 3, 'Cáp Type C - Lightning MFI 1m Ugreen 60759.jpg', 'Công nghệ/Tiện ích:\r\nHỗ trợ sạc nhanh\r\nChức năng:\r\nSạc\r\nTruyền dữ liệu\r\nĐầu vào:\r\nUSB Type-C\r\nĐầu ra:\r\nLightning: 60 W\r\nĐộ dài dây:\r\n1 m\r\nCông suất tối đa:\r\n60 W', 1, 10, 190000),
(94, 'Cáp Lightning 1m Xmobile DR-L001X', 22, 288000, 3, 'Cáp Lightning 1m Xmobile DR-L001X.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế nhỏ gọn, màu sắc nổi bật, trẻ trung, đẹp mắt.\r\nChiều dài dây cáp 1 m sử dụng tiện lợi.\r\nVỏ bọc bằng sợi nylon dai bền, hạn chế xoắn rối hay đứt gãy.\r\nDòng sạc tối đa 5V – 2.1A tương đương 10.5 W, cho tốc độ sạc nhanh, đường truyền ổn định.\r\nTương thích với các thiết bị iPhone 5, iPad 4 trở lên và các thiết bị dùng cổng Lightning.\r\nĐầu cáp USB kết nối tốt với adapter, sạc dự phòng, PC, laptop.\r\nDùng để sạc pin, sao chép, đồng bộ dữ liệu cho các thiết bị.', 1, 10, 360000),
(95, 'Cáp Type C - Type C 1m Ugreen 70427', 22, 200000, 3, 'Cáp Type C - Type C 1m Ugreen 70427.jpg', 'Công nghệ/Tiện ích:\r\nChip E-marker\r\nChức năng:\r\nSạc\r\nTruyền dữ liệu\r\nĐầu vào:\r\nUSB Type-C\r\nĐầu ra:\r\nType C: 100 W\r\nĐộ dài dây:\r\n1 m\r\nCông suất tối đa:\r\n100 W', 1, 10, 250000),
(96, 'Cáp Type C - Type C 1m Ugreen 50997', 22, 104000, 3, 'Cáp Type C - Type C 1m Ugreen 50997.jpg', 'Chức năng:\r\nTruyền dữ liệu\r\nSạc\r\nĐầu vào:\r\nUSB Type-C\r\nĐầu ra:\r\nType C: 5V - 3A, 9V - 2A, 12V - 3A, 15V - 3A, 20V - 3A (Max 60 W)\r\nĐộ dài dây:\r\n1 m\r\nCông suất tối đa:\r\n60 W', 1, 10, 130000),
(97, 'Bộ Adapter Sạc 3 cổng Type C PD QC 4.0+ GaN 65W kèm Cáp Type', 22, 856000, 2, 'Bộ Adapter Sạc 3 cổng Type C PD QC 4.0+ GaN 65W kèm Cáp Type C - Type C 1.5m Ugreen X755 25870.jpg', 'Model:\r\nX755 25870\r\nChức năng:\r\nSạc\r\nĐầu vào:\r\n100-240V~50/60Hz 1.8A\r\nĐầu ra:\r\nUSB: 5V - 3A, 9V - 2A, 12V - 1.5A, 10V - 2.25A (Max 22.5W)\r\nType C1: 5V - 3A, 9V - 3A, 12V - 3A, 15V - 3A, 20V - 3.25A, 3.3-21V - 3A (Max 65W)\r\nType C2: 5V - 3A, 9V - 3A, 12V - 3A, 15V - 3A, 20V - 3.25A, 21V - 3A (Max 65W)\r\nDòng sạc tối đa:\r\n65 W\r\nKích thước:\r\nDài 5.4 cm - Ngang 4 cm - Cao 3.2 cm\r\nCông nghệ/Tiện ích:\r\nCông nghệ GaN\r\nPower Delivery\r\nQuick Charge 4.0+', 1, 10, 1070000),
(98, 'Adapter Sạc 2 cổng USB Type C PD QC 3.0 GaN 35W Ugreen Nexod', 22, 856000, 2, 'Adapter Sạc 2 cổng USB Type C PD QC 3.0 GaN 35W Ugreen Nexode CD350 15539.jpg', 'Model:\r\nCD350 15539\r\nChức năng:\r\nSạc\r\nĐầu vào:\r\n100-240V~50/60Hz, 900mA\r\nĐầu ra:\r\nUSB: 5V - 3A, 9V - 2A, 12V - 1.5A, 12V - 2.25A (Max 22.5W)\r\nType C: 5V - 3A, 9V - 3A, 12V - 2.9A, 15V - 2.33A, 20V - 1.75A (Max 35W)\r\nDòng sạc tối đa:\r\n35 W\r\nKích thước:\r\nDài 8.4 cm - Ngang 3.6 cm - Cao 3.6 cm\r\nCông nghệ/Tiện ích:\r\nCông nghệ GaN\r\nPower Delivery\r\nQuick Charge 4.0+', 1, 10, 1070000),
(99, 'Adapter Sạc Type C PD QC 4.0+ GaN 30W Ugreen Nexode CD319', 22, 280000, 2, 'Adapter Sạc Type C PD QC 4.0+ GaN 30W Ugreen Nexode CD319.jpg', 'Model:\r\nCD319\r\nChức năng:\r\nSạc\r\nĐầu vào:\r\n100-240V~50/60Hz, 800mA\r\nĐầu ra:\r\nType C: 5V - 3A, 9V - 3A, 12V - 2.5A, 15V - 2A, 20V - 1.5A (Max 30W)\r\nDòng sạc tối đa:\r\n30 W\r\nCông nghệ/Tiện ích:\r\nCông nghệ GaN\r\nPower Delivery\r\nQuick Charge 4.0+', 1, 10, 350000),
(100, 'Adapter Sạc Type C PD GaN 30W Ugreen Robot Nexode 15550', 7, 480000, 2, 'Adapter Sạc Type C PD GaN 30W Ugreen Robot Nexode 15550.jpg', 'Model:\r\nCD319\r\nChức năng:\r\nSạc\r\nĐầu vào:\r\n100-240V~50/60Hz, 800mA\r\nĐầu ra:\r\nType C: 5V - 3A, 9V - 3A, 12V - 2.5A, 15V - 2A, 20V - 1.5A (Max 30W)\r\nDòng sạc tối đa:\r\n30 W\r\nCông nghệ/Tiện ích:\r\nCông nghệ GaN\r\nPower Delivery\r\nQuick Charge 4.0+', 1, 19, 600000),
(101, '12345614134', 8, 123, 5, '12345614134.jpg', '', 0, 0, 123),
(104, 'Oppo Reno 69', 4, 0, 1, 'Oppo Reno 69_Đen_128GB.png', 'Oppo Reno 69', 1, 0, 0),
(105, 'iPhone 16e', 1, 13000000, 1, 'iPhone 16e_Trắng_256GB.jpg', 'iPhone 16e - Lựa chọn hoàn hảo cho hiệu suất đỉnh cao!\nThông số iPhone 16e có gì mới?\nHiệu năng vượt trội với chip A18 đời mới\nMàn hình Super Retina XDR sắc nét hơn\nKết nối mạnh mẽ với Apple C1 5G\nCamera 48MP \"2 trong 1\" – Chụp ảnh đỉnh cao\nPin ‘’trâu’’ hơn kết hợp với sạc nhanh USB-C\nThiết kế bền bỉ với hai màu cơ bản sang trọng\nSo sánh iPhone 16e với iPhone SE và iPhone 15\nSo sánh iPhone 16e và iPhone SE (2022) – Sự nâng cấp đáng giá\nSo sánh iPhone 16e và iPhone 15 – Hiệu năng mạnh hơn, AI thông minh hơn, pin bền hơn\nNhững câu hỏi thường gặp khi mua iP 16e mới?\nĐiện thoại iPhone 16e ra mắt khi nào?\niPhone 16e giá bao nhiêu tiền?\niPhone 16e có những màu sắc nào?\nĐiện thoại iPhone 16e sử dụng con chip nào?\nDung lượng pin của iPhone 16e có tốt hơn iPhone 16 không?\n16e có hỗ trợ AI không?\niPhone 16e có chống nước không?', 1, 20, 13390000),
(106, 'iPhone 16 SE', 1, 19900000, 1, 'iPhone 16 SE_Trắng_128GB.jpg', '', 1, 10, 19890000);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `idTK` int(11) NOT NULL,
  `USERNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SDT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `HOTEN` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idQUYEN` int(11) NOT NULL DEFAULT 1,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`idTK`, `USERNAME`, `PASSWORD`, `SDT`, `EMAIL`, `HOTEN`, `idQUYEN`, `TRANGTHAI`) VALUES
(1, 'user1', 'pass1', '0123456789', 'user1@example.com', 'Nguyen Van A', 1, 1),
(2, 'user2', 'pass2', '0987654321', 'user2@example.com', 'Le Thi B', 1, 1),
(3, 'user3', 'pass3', '0345678923', 'user3@example.com', 'Tran Van C', 1, 1),
(4, 'user4', 'pass4', '0765432189', 'user4@example.com', 'Pham Thi D', 1, 1),
(5, 'user5', 'pass5', '0912345678', 'user5@example.com', 'Hoang Van E', 1, 1),
(6, 'vu', '$2y$12$zeG2TV9guLeGLkzofNNlMOXHOhFHVZ7JCS75rwZM28KNHrjdinldi', '0367645099', 'nguyenvanvuem1705@gm', 'nguyenvu111', 1, 1),
(7, 'vu12', '$2y$12$kKf0xVHtP9WTAjKiSeeEsee0JID5DIdjD8N3wDcKrCxRaMYF3.6B2', '0367645098', 'nguyenvanvuem1705@gm', 'nguyenvu111', 1, 1),
(8, 'VU333', '$2y$12$xac1lRe.ljUaHoLrxVDKz.rrMWuKMRDmFJyMtYv3b3Gze3nPbaPq6', '0367645097', 'nguyenvanvuem1705@gm', 'nguyenvu222', 1, 1),
(9, 'nguoideptrai', '$2y$12$4kqyNGv5RQ.IrtX0.Jz0.eM9FOZUyfV5.q.nwONQGR6gNPFUX622y', '0799697981', 'biedu.upes@gmail.com', 'ấy sì bà', 1, 1),
(10, 'XuanCanh', '$2y$12$GtimSHuPw8QhzTkW.D0TbeD4jOfcSSeLgIhi4vnTkIxAys6jJGxJ2', '0397161910', 'xuanc38791@gmail.com', 'Trương Xuân Cảnh', 1, 1),
(11, 'Xuân Cảnh Xuân Cảnh Xuân Cảnh ', '$2y$12$fMMjoSAHcsmCwQow0xGXgud6epKwXOgubFXp7ESfg006GjrKUeCO2', '0397161912', 'xuanc387911@gmail.com', 'Trương Xuân Cảnh', 0, 1),
(12, '0123456789', '$2y$12$y0XCvAmrMLui506qX75s3O7yNIQ26B5SZo0wNb61phCITFaNZxLwW', '0123456787', 'nva.upes@gmail.com', 'Nguyễn Văn A', 1, 1),
(13, 'tinhcha', '$2y$12$HcD85LlxGZg/Yg4JmCcp1u5Xiyqo04j96AjkU4QUpBw7pd6xFabZu', '0799697982', 'kememay.upes@gmail.com', 'ấy sì bà', 1, 1),
(14, '12345', '$2y$12$gwTIglcGqbd/XLvpfV0zyeHuxw1cVC3wE55ST5Nfye4YS9corNBQ6', '0799697983', 'ketiamay.upes@gmail.com', 'dồ ái mồ', 1, 1),
(15, '0123456780', '$2y$12$m9IqL/TLRksAkQ4.YRPmV.Bq2fndmuzL812j71PaNghoUf9AGaHa2', '0799697984', 'manbohiuthu2@gmail.com', 'hieu chu nhat', 1, 1),
(16, '0123456785', '$2y$12$rQoUf67jzp5fz.Fdmv8KUOKgfk/M7BRd5ns/ToglRChH8vKLdotdK', '0799697985', 'manbohiuthu3@gmail.com', 'hieu thu 7', 1, 1),
(17, '0987656764', '$2y$12$33hBtujgxAo0N9G5JRzFJuKEJsoWKNN1ARizShleyHgNaPDOGVVze', '0987656764', 'aaba@gmail.com', 'Nguyễn Đình V', 0, 1),
(18, '0858482144', '$2y$12$gYZ8DsQZHdoeH6KEAgGuBOBK2K7554FCQ1ugqjs/MtT2edPz9h8KC', '0858482144', 'thuong2004@gmail.com', 'Nguyễn Ngọc T', 3, 1),
(19, '0858482145', '$2y$12$PezdQLA4uILRc5ovsSwiFOdODj6ROmqtaLuK9D6swE7MT89zK6yKC', '0858482145', 'thuong1605@gmail.com', 'Võ Hoàng V', 3, 1),
(20, '0858487778', '$2y$12$Pdphqh168riXjV.QPZEteekQzVDufTgqf.jTfLBI1sSnzaXds6gcO', '0858487778', 'thu16052004@gmail.com', 'Võ Thị T', 2, 1),
(21, '0858482140', '$2y$12$8S/dyJ8OnIlAbrJZLqBjUunWfRfWCGJu1a.dxyEmLhSw/nZvcCOvC', '0858482140', 'thuong@gmail.com', 'ttt', 2, 1),
(22, '0858482111', '$2y$12$7dTYKEaykVzLjf6T70PL0epVwRusQCJBhIb40xCl8Hkw7vqXKxcrq', '0858482111', 'aaa@gmail.com', 'Nguyễn Văn A', 2, 1),
(23, '0123333333', '$2y$12$w2rL56W8zgOxnvrRO30mYezVk6Ep3ObKc12p2EtibdJ0GPk4sN9yC', '0123333333', 'aba@gmail.com', 'Nguyễn Văn B', 2, 1),
(24, 'NV24', '$2y$12$wU/xVsT4qat07QeUsiQfwOjK4bEQj6XuGLoqQJ1F8Il4Wn3wiw2P.', '0111111111', 'acv@gmail.com', 'Nguyễn Đình Như', 2, 1),
(25, 'NV25', '$2y$12$UY7mXcsghzNyi2DbRUJqv.gLBmARkPG4hXbrMbU/l2jQXv2F7ZFU2', '0234567891', 'acv@gmail.com', 'Mất th', 2, 1),
(26, 'NV26', '$2y$12$klxL3IusLpdLTcHjjVMFdeNkY5ez59JrUovjTqGesZkSORqloLmlS', '0234567888', 'acv@gmail.com', 'Mất tttttt', 2, 1),
(27, 'NV27', '$2y$12$xYXzqCfwklMaZbBu6MFxK.j0nNzeU93SxR92oY109z1Aw8rOaXL4u', '0234567800', 'acv@gmail.com', 'Hoàng Văn C', 2, 1),
(28, 'NV28', '$2y$12$Gdrcq7TZ0/wYpN4LDU1Zd.DPZW8JC5frI4pBGx7QiWLe3COpF4TBG', '0234567833', 'acv@gmail.com', 'Mất não', 2, 1),
(29, 'NV29', '$2y$12$.UQAf8sFK5o3t8G/Pgom..s/5bOxgiCpwr6.ZPPQBZFZ2wx45dH8a', '0234567855', 'acv@gmail.com', 'Trần Duy Hào', 2, 1),
(30, 'NV30', '$2y$12$t8ZY4UDR1DOPD9YvGLbPbuZTbv26U9/36OYlCA4ncOcBOZ.x/qlJa', '0332244669', 'truongsinhcanh1910@gmail.com', 'CHQT', 5, 1),
(31, 'NV31', '$2y$12$BRvWxhW53MiCPryNuc5cbexsyoF9tVTEoraJrWjGM3VB7ctdWD1/2', '0332244668', 'aba@gmail.com', 'Lê Hoàng P', 2, 1),
(32, 'Nguoi dep trai', '$2y$12$AKvF3ISier6aVTnKs0cV9.z/2qmAXjTwr0ErG83a0TbaFOPBZWTWi', '0896727670', 'khuong@gmail.com', 'Trần Duy Khương', 2, 1),
(33, 'Khương97', '$2y$12$vukHRxWvye99kNXO8XFNA.Lpm/MRv7lKtaVAizwyrRAldNr1oSW5u', '0706433641', 'khuong1@gmail.com', 'Trần Duy Khương', 0, 1),
(34, 'NV34', '$2y$12$AczFTuqRBqAVNTgKv3eG5eaHCgWC4aTb7kjb8IsQe93AUb8FIaj56', '0799697989', 'biedit.upes@gmail.com', 'ài dố sì mốt', 4, 2),
(35, 'thuong', '$2y$12$PhzaLWkjObJyFJVGnF0lte9IpTq1P4rVyKlc3Ar6kqQ15V9HTJfRi', '0858482103', 'thuong16052004@gmail.com', 'Võ Thị Thương', 0, 1),
(38, 'thuong1', '$2y$12$8d4vLrBadqaO87iXNb1haO.geRdC.IEum3NvS0e59Q7NCLx0vXVge', '0858482104', 'tttt052004@gmail.com', 'Võ Thị T', 0, 1),
(39, 'NV39', '$2y$12$kvY8rvFbbHn3ZB0BKEFrF.LxHBXxLS1HRCKmAq0B2AuMApDIkWxbi', '0898777999', 'tdkhuong@gmail.com', 'Trần Duy Khương', 4, 2),
(40, 'NV40', '$2y$12$xdCdgNUw7qCksd6X2sFETeWQSiIOzA2bj17Kwl6hBq8bd.IYAm5Pu', '0987645348', 'vuhao91@gmail.com', 'Trần Duy Khương', 2, 2),
(41, 'NV41', '$2y$12$VCPAfmyxTgflS.8H1.wLs.gOgdH/I9SzC6db2Q3rW03rGb9.6G.Ia', '0367668035', 'vuhao97@gmail.com', 'Trần Duy Khương', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thongsokythuat`
--

CREATE TABLE `thongsokythuat` (
  `idKT` int(11) DEFAULT NULL,
  `idSP` int(11) DEFAULT NULL,
  `ManHinh` varchar(255) DEFAULT NULL,
  `ChipXuLy` varchar(255) DEFAULT NULL,
  `RAM` varchar(50) DEFAULT NULL,
  `BoNhoTrong` varchar(100) DEFAULT NULL,
  `CameraSauTruoc` varchar(100) DEFAULT NULL,
  `Pin` varchar(100) DEFAULT NULL,
  `HeDieuHanh` varchar(100) DEFAULT NULL,
  `KetNoi` varchar(255) DEFAULT NULL,
  `CongSac` varchar(50) DEFAULT NULL,
  `TanSoQuet` varchar(50) DEFAULT NULL,
  `ChongNuocBui` varchar(50) DEFAULT NULL,
  `TrongLuong` varchar(50) DEFAULT NULL,
  `ChatLieu` varchar(100) DEFAULT NULL,
  `Loa` varchar(50) DEFAULT NULL,
  `SacNhanh` varchar(50) DEFAULT NULL,
  `TinhNangDacBiet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thongsokythuat`
--

INSERT INTO `thongsokythuat` (`idKT`, `idSP`, `ManHinh`, `ChipXuLy`, `RAM`, `BoNhoTrong`, `CameraSauTruoc`, `Pin`, `HeDieuHanh`, `KetNoi`, `CongSac`, `TanSoQuet`, `ChongNuocBui`, `TrongLuong`, `ChatLieu`, `Loa`, `SacNhanh`, `TinhNangDacBiet`) VALUES
(1, 1, '6.1\" OLED', 'A17 Bionic', '6GB', '128GB/256GB', '48MP/12MP', '4000mAh, 20W', 'iOS 17', '5G, Wi-Fi 6E, NFC', 'Lightning', '120Hz', 'IP68', '172g', 'Kính, thép không gỉ', 'Stereo', 'Có', 'Face ID, Dolby Vision'),
(2, 2, '6.7\" OLED', 'A17 Bionic', '6GB', '256GB/512GB', '48MP/12MP', '4320mAh, 20W', 'iOS 17', '5G, Wi-Fi 6E, NFC', 'Lightning', '120Hz', 'IP68', '203g', 'Kính, thép không gỉ', 'Stereo', 'Có', 'Face ID, Dolby Vision'),
(3, 3, '6.7\" AMOLED gập, 120Hz', 'Snapdragon 8 Gen 3', '8GB', '256GB/512GB', '12MP kép/10MP', '3700mAh, 25W', 'Android 13', '5G, Wi-Fi 7, NFC', 'USB-C', '120Hz', 'IPX8', '198g', 'Kính, nhôm', 'Stereo', 'Có', 'Gập đôi, Flex Mode'),
(4, 4, '6.7\" Super Retina XDR', 'A17 Pro', '8GB', '256GB/512GB', '48MP/12MP', '4320mAh, 20W', 'iOS 17', '5G, Wi-Fi 6E, NFC', 'Lightning', '120Hz', 'IP68', '228g', 'Kính, thép không gỉ', 'Stereo', 'Có', 'Face ID, Dolby Vision'),
(5, 5, NULL, NULL, NULL, NULL, NULL, '24 giờ (kèm hộp)', 'Firmware Apple', 'Bluetooth 5.3', 'USB-C', NULL, 'IPX4', NULL, 'Nhựa', 'Mono', 'Có', 'Chống ồn chủ động (ANC)'),
(6, 6, '6.2\" AMOLED, 120Hz', 'Exynos 2100/Snapdragon 888', '8GB', '128GB/256GB', '12MP kép/10MP', '4000mAh, 25W', 'Android 12', '5G, Wi-Fi 6', 'USB-C', '120Hz', 'IP68', '169g', 'Kính, nhôm', 'Stereo', 'Có', 'Sạc nhanh, Dolby Atmos'),
(7, 7, '6.1\" Super Retina XDR', 'A15 Bionic', '4GB', '128GB/256GB/512GB', '12MP kép/12MP', '3240mAh, 20W', 'iOS 15', '5G, Wi-Fi 6, NFC', 'Lightning', '60Hz', 'IP68', '174g', 'Kính, nhôm', 'Stereo', 'Có', 'Face ID, Dolby Vision'),
(8, 8, NULL, NULL, NULL, NULL, NULL, '30 giờ (kèm hộp)', NULL, 'Bluetooth 5.0', 'USB-C', NULL, 'IPX4', NULL, 'Nhựa', 'Mono', 'Có', 'Chống ồn chủ động (ANC)'),
(9, 9, '6.6\" AMOLED', 'MediaTek Helio G88', '6GB', '128GB', '50MP kép/8MP', '5000mAh, 33W', 'Android 13', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', 'IP53', '190g', 'Nhựa', 'Stereo', 'Có', 'Sạc nhanh, vân tay cạnh bên'),
(10, 10, '6.5\" PLS LCD', 'Exynos 850', '4GB', '64GB/128GB', '50MP/5MP', '5000mAh, 15W', 'Android 12', '4G, Wi-Fi, Bluetooth', 'USB-C', '60Hz', NULL, '195g', 'Nhựa', 'Mono', 'Không', 'Mở khoá vân tay cạnh bên'),
(11, 11, '6.43\" AMOLED', 'Snapdragon 680', '6GB', '128GB', '50MP/16MP', '5000mAh, 33W', 'Android 12', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '178g', 'Nhựa', 'Stereo', 'Có', 'Sạc nhanh, vân tay dưới màn'),
(12, 12, '6.4\" AMOLED', 'Exynos 1380', '8GB', '128GB/256GB', '50MP/13MP', '5000mAh, 25W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP67', '202g', 'Nhựa', 'Stereo', 'Có', 'Vân tay dưới màn, Samsung Knox'),
(13, 13, '6.5\" IPS LCD', 'Snapdragon 680', '6GB', '128GB', '50MP/8MP', '5000mAh, 33W', 'Android 12', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '190g', 'Nhựa', 'Stereo', 'Có', 'Sạc nhanh, vân tay cạnh bên'),
(14, 14, '6.72\" IPS LCD', 'Snapdragon 695', '8GB', '128GB', '108MP/16MP', '5000mAh, 67W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '190g', 'Nhựa', 'Stereo', 'Có', 'Vân tay cạnh bên, sạc siêu nhanh'),
(15, 15, '6.4\" AMOLED', 'MediaTek Dimensity 920', '8GB', '256GB', '64MP/16MP', '4500mAh, 60W', 'Android 12', '5G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', 'IP54', '179g', 'Nhựa', 'Stereo', 'Có', 'Chống nước nhẹ, vân tay dưới màn'),
(16, 16, '6.78\" AMOLED', 'Snapdragon 8 Gen 2', '12GB', '256GB/512GB', '50MP/16MP', '5000mAh, 120W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '144Hz', 'IP54', '204g', 'Kính, kim loại', 'Stereo', 'Có', 'Sạc siêu nhanh, loa JBL'),
(17, 17, '6.7\" AMOLED', 'MediaTek Dimensity 8100', '8GB', '256GB', '64MP/16MP', '5000mAh, 80W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP54', '195g', 'Nhựa', 'Stereo', 'Có', 'Vân tay cạnh bên, loa JBL'),
(18, 18, '6.43\" AMOLED', 'Snapdragon 695', '6GB', '128GB', '64MP/16MP', '5000mAh, 33W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '180g', 'Nhựa', 'Stereo', 'Có', 'Chống nước nhẹ, vân tay dưới màn'),
(19, 19, '6.7\" OLED', 'Apple M2', '8GB', '256GB/512GB', '12MP/12MP', 'Unknown', 'iPadOS 16', 'Wi-Fi 6E, Bluetooth', 'USB-C', '120Hz', NULL, '450g', 'Nhôm', 'Stereo', 'Không', 'Face ID, hỗ trợ Apple Pencil'),
(20, 20, '10.9\" Liquid Retina', 'Apple M1', '8GB', '64GB/256GB', '12MP/12MP', 'Unknown', 'iPadOS 15', 'Wi-Fi 6, Bluetooth', 'USB-C', '60Hz', NULL, '470g', 'Nhôm', 'Stereo', 'Không', 'Hỗ trợ Magic Keyboard, Pencil'),
(21, 21, '6.6\" AMOLED', 'MediaTek Helio G99', '8GB', '128GB/256GB', '64MP/16MP', '5000mAh, 33W', 'Android 13', '4G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP53', '185g', 'Nhựa', 'Stereo', 'Có', 'Vân tay cạnh bên, loa kép'),
(22, 22, '6.67\" AMOLED', 'Snapdragon 7 Gen 1', '8GB', '256GB', '200MP/16MP', '5000mAh, 67W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP54', '190g', 'Nhôm', 'Stereo', 'Có', 'Camera 200MP, vân tay dưới màn'),
(23, 23, '6.5\" IPS LCD', 'MediaTek Helio G85', '4GB', '64GB/128GB', '50MP/8MP', '5000mAh, 18W', 'Android 12', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '195g', 'Nhựa', 'Mono', 'Không', 'Giá rẻ, pin trâu'),
(24, 24, '6.6\" AMOLED', 'Snapdragon 680', '6GB', '128GB', '50MP/16MP', '5000mAh, 33W', 'Android 13', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '182g', 'Nhựa', 'Stereo', 'Có', 'Mở khóa vân tay cạnh bên'),
(25, 25, '6.8\" AMOLED', 'Snapdragon 8 Gen 2', '12GB', '256GB/512GB', '108MP/32MP', '5000mAh, 45W', 'Android 13', '5G, Wi-Fi 7, Bluetooth', 'USB-C', '120Hz', 'IP68', '234g', 'Kính, kim loại', 'Stereo', 'Có', 'Hỗ trợ bút S Pen, chống nước'),
(26, 26, '6.7\" OLED', 'Apple M2', '8GB', '256GB/512GB', '12MP/12MP', 'Unknown', 'iPadOS 16', 'Wi-Fi 6E, Bluetooth', 'USB-C', '120Hz', NULL, '470g', 'Nhôm', 'Stereo', 'Không', 'Face ID, hỗ trợ Magic Keyboard'),
(27, 27, '6.8\" AMOLED', 'Snapdragon 8 Gen 1', '8GB', '128GB/256GB', '50MP/32MP', '4700mAh, 80W', 'Android 12', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP53', '204g', 'Nhôm', 'Stereo', 'Có', 'Vân tay dưới màn, loa JBL'),
(28, 28, '6.5\" AMOLED', 'Snapdragon 695', '8GB', '128GB', '64MP/16MP', '5000mAh, 33W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '189g', 'Nhựa', 'Stereo', 'Có', 'Vân tay cạnh bên, loa kép'),
(29, 29, '6.6\" AMOLED', 'Snapdragon 870', '8GB', '256GB', '50MP/16MP', '4700mAh, 67W', 'Android 12', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '196g', 'Nhôm', 'Stereo', 'Có', 'Vân tay dưới màn, HDR10+'),
(30, 30, '6.5\" AMOLED', 'Snapdragon 732G', '6GB', '128GB', '64MP/16MP', '5020mAh, 33W', 'Android 11', '4G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '193g', 'Nhựa', 'Stereo', 'Có', 'Pin lớn, màn hình mượt'),
(31, 31, '6.7\" AMOLED', 'Snapdragon 8 Gen 1', '8GB', '128GB/256GB', '50MP/32MP', '4800mAh, 80W', 'Android 12', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '202g', 'Nhôm', 'Stereo', 'Có', 'Loa JBL, vân tay dưới màn'),
(32, 32, '6.8\" AMOLED', 'Snapdragon 8 Gen 2', '12GB', '256GB/512GB', '200MP/32MP', '5000mAh, 45W', 'Android 13', '5G, Wi-Fi 7, Bluetooth', 'USB-C', '120Hz', 'IP68', '234g', 'Kính, nhôm', 'Stereo', 'Có', 'Bút S Pen, camera 200MP'),
(33, 33, '6.4\" AMOLED', 'MediaTek Dimensity 920', '8GB', '128GB/256GB', '64MP/16MP', '5000mAh, 60W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '179g', 'Nhựa', 'Stereo', 'Có', 'Chống nước nhẹ, sạc nhanh'),
(34, 34, '6.7\" AMOLED', 'Snapdragon 8+ Gen 1', '12GB', '256GB/512GB', '108MP/32MP', '5000mAh, 100W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP53', '210g', 'Kính, nhôm', 'Stereo', 'Có', 'Sạc siêu nhanh, camera 108MP'),
(35, 35, '6.5\" OLED', 'A16 Bionic', '6GB', '128GB/256GB', '48MP/12MP', '4200mAh, 20W', 'iOS 16', '5G, Wi-Fi 6, NFC', 'Lightning', '120Hz', 'IP68', '200g', 'Kính, thép không gỉ', 'Stereo', 'Có', 'Face ID, Dolby Vision'),
(36, 36, '6.6\" IPS LCD', 'Snapdragon 680', '6GB', '128GB', '50MP/8MP', '5000mAh, 25W', 'Android 12', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '195g', 'Nhựa', 'Mono', 'Không', 'Vân tay cạnh bên, sạc nhanh'),
(37, 37, '6.67\" AMOLED', 'Snapdragon 7s Gen 2', '8GB', '256GB', '100MP/16MP', '5100mAh, 67W', 'Android 14', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP54', '193g', 'Nhôm', 'Stereo', 'Có', 'Camera 100MP, vân tay dưới màn'),
(38, 38, '6.43\" AMOLED', 'Snapdragon 680', '8GB', '128GB', '50MP/13MP', '5000mAh, 33W', 'Android 13', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '179g', 'Nhựa', 'Stereo', 'Có', 'Vân tay dưới màn, sạc nhanh'),
(39, 39, '6.6\" IPS LCD', 'MediaTek Helio G88', '6GB', '128GB', '50MP/8MP', '5000mAh, 18W', 'Android 12', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '190g', 'Nhựa', 'Mono', 'Không', 'Pin lớn, loa đơn'),
(40, 40, '6.72\" AMOLED', 'Snapdragon 695', '8GB', '256GB', '64MP/16MP', '5000mAh, 67W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP54', '185g', 'Nhựa', 'Stereo', 'Có', 'Sạc nhanh, loa JBL'),
(41, 41, '6.4\" AMOLED', 'Exynos 1380', '8GB', '128GB/256GB', '50MP/13MP', '5000mAh, 25W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP67', '197g', 'Nhôm', 'Stereo', 'Có', 'Chống nước IP67, vân tay dưới màn'),
(42, 42, '6.67\" AMOLED', 'Snapdragon 870', '8GB', '256GB', '64MP/20MP', '5160mAh, 67W', 'Android 11', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '196g', 'Nhôm', 'Stereo', 'Có', 'Loa kép, màn hình HDR10+'),
(43, 43, '6.43\" AMOLED', 'MediaTek Dimensity 6020', '6GB', '128GB', '50MP/8MP', '5000mAh, 33W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '185g', 'Nhựa', 'Stereo', 'Có', 'Giá rẻ, 5G, màn AMOLED'),
(44, 44, '6.5\" OLED', 'A15 Bionic', '6GB', '128GB', '12MP/12MP', '3240mAh, 20W', 'iOS 15', '5G, Wi-Fi 6, NFC', 'Lightning', '60Hz', 'IP68', '174g', 'Kính, nhôm', 'Stereo', 'Có', 'Face ID, Ceramic Shield'),
(45, 45, '6.6\" AMOLED', 'Snapdragon 778G', '8GB', '128GB', '64MP/32MP', '4500mAh, 25W', 'Android 12', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP67', '181g', 'Nhôm', 'Stereo', 'Có', 'Chống nước, camera selfie tốt'),
(46, 46, '6.8\" AMOLED', 'Snapdragon 8 Gen 2', '12GB', '512GB', '108MP/12MP', '5000mAh, 45W', 'Android 14', '5G, Wi-Fi 7, Bluetooth', 'USB-C', '120Hz', 'IP68', '232g', 'Kính, kim loại', 'Stereo', 'Có', 'Bút S Pen, thiết kế cao cấp'),
(47, 47, '6.5\" AMOLED', 'MediaTek Helio G99', '6GB', '128GB', '64MP/16MP', '5000mAh, 33W', 'Android 13', '4G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '190g', 'Nhựa', 'Stereo', 'Có', 'Hiệu năng ổn, màn đẹp'),
(48, 48, '6.55\" AMOLED', 'Snapdragon 778G+', '8GB', '128GB/256GB', '50MP/32MP', '4200mAh, 68W', 'Android 12', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '172g', 'Kính, nhôm', 'Stereo', 'Có', 'Thiết kế nhỏ gọn, loa kép'),
(49, 49, '6.6\" AMOLED', 'Snapdragon 695', '8GB', '128GB', '50MP/16MP', '5000mAh, 67W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '192g', 'Nhôm', 'Stereo', 'Có', 'Vân tay cạnh bên, camera tốt'),
(50, 50, '6.7\" OLED', 'Apple A17 Pro', '8GB', '256GB/512GB/1TB', '48MP/12MP', '4352mAh, 20W', 'iOS 17', '5G, Wi-Fi 6E, NFC', 'USB-C', '120Hz', 'IP68', '221g', 'Titan', 'Stereo', 'Có', 'Dynamic Island, quay ProRes'),
(51, 51, '6.4\" AMOLED', 'Snapdragon 720G', '8GB', '128GB', '64MP/16MP', '4300mAh, 30W', 'Android 11', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '180g', 'Nhôm', 'Stereo', 'Có', 'Thiết kế đẹp, sạc nhanh'),
(52, 52, '6.8\" AMOLED', 'Snapdragon 8 Gen 1', '12GB', '256GB/512GB', '108MP/40MP', '5000mAh, 45W', 'Android 12', '5G, Wi-Fi 6E, Bluetooth', 'USB-C', '120Hz', 'IP68', '228g', 'Kính, kim loại', 'Stereo', 'Có', 'Hỗ trợ S Pen, flagship'),
(53, 53, '6.7\" AMOLED', 'Snapdragon 870', '8GB', '256GB', '64MP/16MP', '5000mAh, 67W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '193g', 'Nhôm', 'Stereo', 'Có', 'Camera ổn, pin trâu'),
(54, 54, '6.6\" AMOLED', 'Exynos 1280', '8GB', '128GB', '50MP/13MP', '5000mAh, 25W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP67', '200g', 'Nhôm', 'Stereo', 'Có', 'Chống nước, hiệu năng ổn'),
(55, 55, '6.55\" AMOLED', 'MediaTek Dimensity 7050', '8GB', '256GB', '64MP/32MP', '5000mAh, 67W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '185g', 'Nhôm', 'Stereo', 'Có', 'Chụp hình đẹp, sạc nhanh'),
(56, 56, '6.8\" AMOLED', 'Snapdragon 8+ Gen 1', '12GB', '256GB', '200MP/60MP', '5100mAh, 125W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '165Hz', 'IP68', '230g', 'Kính, nhôm', 'Stereo', 'Có', 'Camera khủng, sạc siêu nhanh'),
(57, 57, '6.5\" AMOLED', 'Snapdragon 695', '8GB', '128GB', '50MP/13MP', '5000mAh, 25W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', 'IP67', '194g', 'Nhôm', 'Stereo', 'Có', 'Chống nước, màn đẹp'),
(58, 58, '6.7\" AMOLED', 'Snapdragon 8 Gen 2', '12GB', '512GB/1TB', '200MP/12MP', '5000mAh, 45W', 'Android 14', '5G, Wi-Fi 7, Bluetooth', 'USB-C', '120Hz', 'IP68', '233g', 'Kính, titan', 'Stereo', 'Có', 'Flagship cao cấp, bút S Pen'),
(59, 59, '6.43\" AMOLED', 'Snapdragon 680', '6GB', '128GB', '50MP/8MP', '5000mAh, 33W', 'Android 12', '4G, Wi-Fi, Bluetooth', 'USB-C', '90Hz', NULL, '180g', 'Nhựa', 'Mono', 'Không', 'Giá mềm, màn đẹp'),
(60, 60, '6.6\" AMOLED', 'MediaTek Dimensity 6100+', '6GB', '128GB', '50MP/16MP', '5000mAh, 33W', 'Android 13', '5G, Wi-Fi, Bluetooth', 'USB-C', '120Hz', NULL, '190g', 'Nhựa', 'Stereo', 'Có', '5G, giá tốt, màn 120Hz'),
(61, 61, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '29 giờ (kèm hộp)', 'N/A', 'Bluetooth 5.3', 'USB-C', 'N/A', 'IPX7', 'N/A', 'Nhựa', 'Stereo', 'Có', 'Chống ồn chủ động (ANC)'),
(62, 62, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '30 giờ (kèm hộp)', 'N/A', 'Bluetooth 5.3', 'USB-C', 'N/A', 'IP54', 'N/A', 'Nhựa', 'Stereo', 'Có', 'Chống ồn thụ động'),
(63, 63, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '28 giờ (kèm hộp)', 'N/A', 'Bluetooth 5.2', 'USB-C', 'N/A', 'IP54', 'N/A', 'Nhựa', 'Stereo', 'Có', 'Chống ồn chủ động (ANC)'),
(64, 64, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '25 giờ (kèm hộp)', 'N/A', 'Bluetooth 5.3', 'USB-C', 'N/A', 'IP54', 'N/A', 'Nhựa', 'Stereo', 'Có', 'Chống ồn thụ động'),
(65, 65, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '28 giờ (kèm hộp)', 'N/A', 'Bluetooth 5.3', 'USB-C', 'N/A', 'IPX7', 'N/A', 'Nhựa', 'Stereo', 'Có', 'Chống ồn chủ động (ANC)'),
(66, 66, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Thép không gỉ', 'N/A', 'Không', 'Chống nước 10ATM'),
(67, 67, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Thép không gỉ', 'N/A', 'Không', 'Chống nước 5ATM'),
(68, 68, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Thép không gỉ', 'N/A', 'Không', 'Chống nước 10ATM'),
(69, 69, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Thép không gỉ', 'N/A', 'Không', 'Chống nước 5ATM'),
(70, 70, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa', 'N/A', 'Không', 'Chống nước 20ATM'),
(71, 71, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Thép không gỉ', 'N/A', 'Không', 'Chống nước 3ATM'),
(72, 72, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Silicone', 'N/A', 'Không', 'Tương thích Apple Watch'),
(73, 73, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Thép không gỉ', 'N/A', 'Không', 'Chống nước 5ATM'),
(74, 74, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Thép không gỉ', 'N/A', 'Không', 'Chống nước 20ATM'),
(75, 75, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Thép không gỉ', 'N/A', 'Không', 'Chống nước 10ATM'),
(76, 76, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa', 'N/A', 'Không', 'Hỗ trợ sạc MagSafe'),
(77, 77, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa dẻo', 'N/A', 'Không', 'Có khe đựng thẻ'),
(78, 78, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Silicone', 'N/A', 'Không', 'Chống trầy xước'),
(79, 79, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa cứng', 'N/A', 'Không', 'Kính cường lực'),
(80, 80, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Silicone', 'N/A', 'Không', 'Chống trầy xước'),
(81, 81, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa cứng', 'N/A', 'Không', 'Da PU cao cấp'),
(82, 82, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa cứng', 'N/A', 'Không', 'Chống trầy xước'),
(83, 83, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa dẻo', 'N/A', 'Không', 'Chống trầy xước'),
(84, 84, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Da', 'N/A', 'Không', 'Tính năng thông minh'),
(85, 85, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa cứng', 'N/A', 'Không', 'Siêu mỏng'),
(86, 86, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa cứng', 'N/A', 'Không', 'Trong suốt'),
(87, 87, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa cứng', 'N/A', 'Không', 'Họa tiết mèo'),
(88, 88, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Vải', 'N/A', 'Có', 'Hỗ trợ MagSafe'),
(89, 89, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa TPU', 'N/A', 'Có', 'Hỗ trợ MagSafe'),
(90, 90, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'Nhựa TPU', 'N/A', 'Có', 'Hỗ trợ MagSafe'),
(91, 91, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Không', 'Dài 1m'),
(92, 92, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Không', 'Dài 1m'),
(93, 93, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Không', 'MFI, dài 1m'),
(94, 94, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Không', 'Dài 1m'),
(95, 95, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Không', 'Dài 1m'),
(96, 96, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Không', 'Dài 1m'),
(97, 97, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Có', 'Công suất 65W'),
(98, 98, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Có', 'Công suất 35W'),
(99, 99, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Có', 'Công suất 30W'),
(100, 100, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Không', 'N/A', 'N/A', 'N/A', 'Có', 'Công suất 30W');

-- --------------------------------------------------------

--
-- Table structure for table `trangthaidonhang`
--

CREATE TABLE `trangthaidonhang` (
  `idSTATUS` int(11) NOT NULL,
  `STATUS` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangthaidonhang`
--

INSERT INTO `trangthaidonhang` (`idSTATUS`, `STATUS`) VALUES
(1, 'Chờ xác nhận'),
(2, 'Đang chuẩn bị hàng'),
(3, 'Đang giao hàng'),
(4, 'Giao hàng thành công'),
(5, 'Hủy đơn hàng');

-- --------------------------------------------------------

--
-- Table structure for table `trangthaihoantien`
--

CREATE TABLE `trangthaihoantien` (
  `idSTATUS` decimal(1,0) NOT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangthaihoantien`
--

INSERT INTO `trangthaihoantien` (`idSTATUS`, `STATUS`) VALUES
(0, 'Chờ duyệt'),
(1, 'Đã duyệt'),
(2, 'Từ chối');

-- --------------------------------------------------------

--
-- Table structure for table `ungluong`
--

CREATE TABLE `ungluong` (
  `idLUONG` int(11) NOT NULL,
  `TIENTAMUNG` double NOT NULL,
  `LYDO` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRANGTHAI` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chưa duyệt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ungluong`
--

INSERT INTO `ungluong` (`idLUONG`, `TIENTAMUNG`, `LYDO`, `TRANGTHAI`) VALUES
(4, 6, '576', 'Duyệt'),
(5, 76576, 'kh', 'Bị từ chối'),
(28, 465, '654', 'Duyệt'),
(29, 7576, 'jhmj', 'Bị từ chối');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangchamcong`
--
ALTER TABLE `bangchamcong`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idNV_2` (`idNV`,`NGAYLAM`,`CHECKIN`),
  ADD KEY `nv-cc` (`idNV`),
  ADD KEY `nl-cc` (`idNGAYLE`);

--
-- Indexes for table `bangluong`
--
ALTER TABLE `bangluong`
  ADD PRIMARY KEY (`idLUONG`),
  ADD KEY `nv-luong` (`idNV`);

--
-- Indexes for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD KEY `tk-ctgh` (`idTK`),
  ADD KEY `idCT` (`idCT`),
  ADD KEY `idSP` (`idSP`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `hd-cthd` (`idHD`),
  ADD KEY `sp-cthd` (`idCTSP`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD KEY `pn-ctpn` (`idPN`),
  ADD KEY `sp-ctpn` (`idCTSP`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`idCTSP`),
  ADD KEY `idSP` (`idSP`);

--
-- Indexes for table `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`idCN`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`idDM`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idHD`),
  ADD KEY `TK-HD` (`idTK`),
  ADD KEY `VC-HD` (`idVC`),
  ADD KEY `KM-HD` (`MAKHUYENMAI`),
  ADD KEY `tt-hd` (`idTHANHTOAN`),
  ADD KEY `Status-hd` (`TRANGTHAI`);

--
-- Indexes for table `dvvanchuyen`
--
ALTER TABLE `dvvanchuyen`
  ADD PRIMARY KEY (`idVC`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD KEY `tk-fav` (`idTK`),
  ADD KEY `sp-fav` (`idSP`);

--
-- Indexes for table `hang`
--
ALTER TABLE `hang`
  ADD PRIMARY KEY (`idHANG`);

--
-- Indexes for table `hoantien`
--
ALTER TABLE `hoantien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idHD_3` (`idHD`),
  ADD KEY `idHD` (`idHD`),
  ADD KEY `idTK` (`idTK`),
  ADD KEY `idHD_2` (`idHD`,`idTK`),
  ADD KEY `trangthai` (`trangthai`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MAKHUYENMAI`);

--
-- Indexes for table `lsuthangchuc`
--
ALTER TABLE `lsuthangchuc`
  ADD KEY `tk-lsu` (`idTK`),
  ADD KEY `vtcu-lsu` (`vitricu`),
  ADD KEY `vtmoi-lsu` (`vitrimoi`);

--
-- Indexes for table `ngayle`
--
ALTER TABLE `ngayle`
  ADD PRIMARY KEY (`idNGAYLE`,`NGAY`);

--
-- Indexes for table `ngaynghi`
--
ALTER TABLE `ngaynghi`
  ADD PRIMARY KEY (`idNV`,`NGAYNGHI`),
  ADD KEY `nv-nghi` (`idNV`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`idNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD KEY `tk-nv` (`idTK`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD KEY `quyen-pq` (`idQUYEN`),
  ADD KEY `cn-pq` (`idCN`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`idPN`),
  ADD KEY `ncc-pn` (`idNCC`);

--
-- Indexes for table `ptthanhtoan`
--
ALTER TABLE `ptthanhtoan`
  ADD PRIMARY KEY (`idThanhToan`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`idQUYEN`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idSP` (`idSP`,`idTK`),
  ADD KEY `tk-rate` (`idTK`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `DM-SP` (`idDM`),
  ADD KEY `Hang` (`HANG`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`idTK`),
  ADD KEY `quyen-tk` (`idQUYEN`);

--
-- Indexes for table `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  ADD KEY `idSP` (`idSP`);

--
-- Indexes for table `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  ADD PRIMARY KEY (`idSTATUS`);

--
-- Indexes for table `trangthaihoantien`
--
ALTER TABLE `trangthaihoantien`
  ADD PRIMARY KEY (`idSTATUS`);

--
-- Indexes for table `ungluong`
--
ALTER TABLE `ungluong`
  ADD KEY `pl-ul` (`idLUONG`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangchamcong`
--
ALTER TABLE `bangchamcong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `bangluong`
--
ALTER TABLE `bangluong`
  MODIFY `idLUONG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `idCTSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `chucnang`
--
ALTER TABLE `chucnang`
  MODIFY `idCN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `idDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `dvvanchuyen`
--
ALTER TABLE `dvvanchuyen`
  MODIFY `idVC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hang`
--
ALTER TABLE `hang`
  MODIFY `idHANG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hoantien`
--
ALTER TABLE `hoantien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MAKHUYENMAI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ngayle`
--
ALTER TABLE `ngayle`
  MODIFY `idNGAYLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `idNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `idPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ptthanhtoan`
--
ALTER TABLE `ptthanhtoan`
  MODIFY `idThanhToan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `idQUYEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `idTK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  MODIFY `idSTATUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bangchamcong`
--
ALTER TABLE `bangchamcong`
  ADD CONSTRAINT `fk_nl_cc` FOREIGN KEY (`idNGAYLE`) REFERENCES `ngayle` (`idNGAYLE`),
  ADD CONSTRAINT `fk_nv_cc` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idTK`) ON DELETE CASCADE,
  ADD CONSTRAINT `nl-cc` FOREIGN KEY (`idNGAYLE`) REFERENCES `ngayle` (`idNGAYLE`),
  ADD CONSTRAINT `nv_cc` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idTK`) ON DELETE CASCADE;

--
-- Constraints for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`idCT`) REFERENCES `chitietsanpham` (`idCTSP`),
  ADD CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`),
  ADD CONSTRAINT `tk-ctgh` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`idCTSP`) REFERENCES `chitietsanpham` (`idCTSP`),
  ADD CONSTRAINT `hd-cthd` FOREIGN KEY (`idHD`) REFERENCES `donhang` (`idHD`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `ctsp-ctpn` FOREIGN KEY (`idCTSP`) REFERENCES `chitietsanpham` (`idCTSP`),
  ADD CONSTRAINT `pn-ctpn` FOREIGN KEY (`idPN`) REFERENCES `phieunhap` (`idPN`);

--
-- Constraints for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `KM-HD` FOREIGN KEY (`MAKHUYENMAI`) REFERENCES `khuyenmai` (`MAKHUYENMAI`),
  ADD CONSTRAINT `Status-hd` FOREIGN KEY (`TRANGTHAI`) REFERENCES `trangthaidonhang` (`idSTATUS`),
  ADD CONSTRAINT `TK-HD` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`),
  ADD CONSTRAINT `VC-HD` FOREIGN KEY (`idVC`) REFERENCES `dvvanchuyen` (`idVC`),
  ADD CONSTRAINT `tt-hd` FOREIGN KEY (`idTHANHTOAN`) REFERENCES `ptthanhtoan` (`idThanhToan`);

--
-- Constraints for table `favourite`
--
ALTER TABLE `favourite`
  ADD CONSTRAINT `sp-fav` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`),
  ADD CONSTRAINT `tk-fav` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`);

--
-- Constraints for table `hoantien`
--
ALTER TABLE `hoantien`
  ADD CONSTRAINT `hoantien_ibfk_1` FOREIGN KEY (`idHD`) REFERENCES `donhang` (`idHD`),
  ADD CONSTRAINT `hoantien_ibfk_2` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`),
  ADD CONSTRAINT `hoantien_ibfk_3` FOREIGN KEY (`trangthai`) REFERENCES `trangthaihoantien` (`idSTATUS`);

--
-- Constraints for table `lsuthangchuc`
--
ALTER TABLE `lsuthangchuc`
  ADD CONSTRAINT `tk-lsu` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`),
  ADD CONSTRAINT `vtcu-lsu` FOREIGN KEY (`vitricu`) REFERENCES `quyen` (`idQUYEN`),
  ADD CONSTRAINT `vtmoi-lsu` FOREIGN KEY (`vitrimoi`) REFERENCES `quyen` (`idQUYEN`);

--
-- Constraints for table `ngaynghi`
--
ALTER TABLE `ngaynghi`
  ADD CONSTRAINT `nv-nghi` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idTK`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `tk-nv` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`);

--
-- Constraints for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD CONSTRAINT `cn-pq` FOREIGN KEY (`idCN`) REFERENCES `chucnang` (`idCN`),
  ADD CONSTRAINT `quyen-pq` FOREIGN KEY (`idQUYEN`) REFERENCES `quyen` (`idQUYEN`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `ncc-pn` FOREIGN KEY (`idNCC`) REFERENCES `nhacungcap` (`idNCC`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `DM-SP` FOREIGN KEY (`idDM`) REFERENCES `danhmuc` (`idDM`),
  ADD CONSTRAINT `Hang-SP` FOREIGN KEY (`HANG`) REFERENCES `hang` (`idHANG`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `quyen-tk` FOREIGN KEY (`idQUYEN`) REFERENCES `quyen` (`idQUYEN`);

--
-- Constraints for table `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  ADD CONSTRAINT `thongsokythuat_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`);

--
-- Constraints for table `ungluong`
--
ALTER TABLE `ungluong`
  ADD CONSTRAINT `pl-ul` FOREIGN KEY (`idLUONG`) REFERENCES `bangluong` (`idLUONG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
