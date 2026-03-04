-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2025 at 10:21 AM
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
  `idNV` int(5) NOT NULL,
  `NGAYLAM` date NOT NULL,
  `CHECKIN` time NOT NULL,
  `CHECKOUT` time DEFAULT NULL,
  `HESO` decimal(2,1) NOT NULL DEFAULT 1.0,
  `idNGAYLE` int(2) DEFAULT NULL,
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
(48, 12, '2025-04-01', '15:42:17', '15:51:07', 1.0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bangluong`
--

CREATE TABLE `bangluong` (
  `idLUONG` int(11) NOT NULL,
  `idNV` int(5) NOT NULL,
  `THOIGIAN` date NOT NULL,
  `TONGTIEN` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bangluong`
--

INSERT INTO `bangluong` (`idLUONG`, `idNV`, `THOIGIAN`, `TONGTIEN`) VALUES
(1, 12, '2025-03-10', 1234570000),
(2, 12, '2025-04-10', 1234570000),
(3, 12, '2025-05-10', 1234570000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `idTK` int(5) NOT NULL,
  `idSP` int(5) NOT NULL,
  `SOLUONG` int(5) NOT NULL,
  `THOIGIANTHEM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`idTK`, `idSP`, `SOLUONG`, `THOIGIANTHEM`) VALUES
(10, 3, 1, '2025-02-24 14:37:13'),
(10, 6, 1, '2025-02-24 14:37:16'),
(11, 3, 1, '2025-03-01 01:17:37'),
(14, 4, 1, '2025-03-12 09:52:22'),
(15, 2, 1, '2025-03-13 08:29:38'),
(10, 3, 1, '2025-02-24 14:37:13'),
(10, 6, 1, '2025-02-24 14:37:16'),
(11, 3, 1, '2025-03-01 01:17:37'),
(14, 4, 1, '2025-03-12 09:52:22'),
(15, 2, 1, '2025-03-13 08:29:38'),
(7, 1, 2, '2025-04-05 02:45:29'),
(7, 4, 1, '2025-04-05 03:00:57'),
(7, 5, 2, '2025-04-05 03:27:10'),
(7, 8, 1, '2025-04-05 03:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idHD` int(5) NOT NULL,
  `idSP` int(5) NOT NULL,
  `SOLUONG` int(10) NOT NULL,
  `GIABAN` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idHD`, `idSP`, `SOLUONG`, `GIABAN`) VALUES
(6, 4, 1, 0),
(7, 3, 1, 0),
(8, 3, 1, 0),
(8, 4, 1, 0),
(8, 6, 1, 0),
(8, 29, 1, 0),
(9, 4, 1, 0),
(10, 4, 4, 0),
(11, 4, 1, 0),
(11, 39, 1, 0),
(12, 5, 1, 0),
(13, 3, 1, 0),
(14, 7, 1, 0),
(15, 3, 1, 0),
(16, 2, 1, 0),
(22, 2, 1, 0),
(23, 2, 1, 0),
(24, 4, 1, 0),
(25, 2, 1, 0),
(26, 4, 1, 0),
(27, 7, 1, 0),
(28, 4, 1, 0),
(29, 4, 1, 0),
(30, 3, 1, 0),
(31, 28, 1, 0),
(32, 61, 4, 0),
(33, 2, 1, 0),
(34, 6, 1, 0),
(35, 2, 1, 0),
(36, 6, 1, 0),
(37, 3, 2, 0),
(38, 29, 2, 0),
(39, 64, 6, 0),
(41, 28, 1, 0),
(42, 32, 1, 0),
(43, 27, 1, 0),
(44, 2, 100, 0),
(45, 4, 1, 0),
(46, 4, 1, 0),
(47, 6, 1, 0),
(48, 2, 1, 0),
(6, 4, 1, 0),
(7, 3, 1, 0),
(8, 3, 1, 0),
(8, 4, 1, 0),
(8, 6, 1, 0),
(8, 29, 1, 0),
(9, 4, 1, 0),
(10, 4, 4, 0),
(11, 4, 1, 0),
(11, 39, 1, 0),
(12, 5, 1, 0),
(13, 3, 1, 0),
(14, 7, 1, 0),
(15, 3, 1, 0),
(16, 2, 1, 0),
(22, 2, 1, 0),
(23, 2, 1, 0),
(24, 4, 1, 0),
(25, 2, 1, 0),
(26, 4, 1, 0),
(27, 7, 1, 0),
(28, 4, 1, 0),
(29, 4, 1, 0),
(30, 3, 1, 0),
(31, 28, 1, 0),
(32, 61, 4, 0),
(33, 2, 1, 0),
(34, 6, 1, 0),
(35, 2, 1, 0),
(36, 6, 1, 0),
(37, 3, 2, 0),
(38, 29, 2, 0),
(39, 64, 6, 0),
(41, 28, 1, 0),
(42, 32, 1, 0),
(43, 27, 1, 0),
(44, 2, 100, 0),
(45, 4, 1, 0),
(46, 4, 1, 0),
(47, 6, 1, 0),
(48, 2, 1, 0),
(49, 6, 1, 0),
(50, 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitietkhuyenmai`
--

CREATE TABLE `chitietkhuyenmai` (
  `idTK` int(5) NOT NULL,
  `idKM` int(5) NOT NULL,
  `SOLUONG` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `idPN` int(5) NOT NULL,
  `idSP` int(5) NOT NULL,
  `SOLUONG` int(10) NOT NULL,
  `GIANHAP` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`idPN`, `idSP`, `SOLUONG`, `GIANHAP`) VALUES
(1, 1, 3, 19200000),
(1, 3, 3, 19120000),
(1, 4, 3, 26232000),
(1, 5, 3, 4952000),
(2, 1, 3, 19200000),
(2, 1, 3, 19200000),
(2, 1, 3, 19200000),
(3, 1, 3, 19200000),
(3, 1, 3, 19200000),
(3, 1, 3, 19200000),
(4, 1, 3, 19200000),
(4, 1, 3, 19200000),
(5, 6, 1, 0),
(6, 4, 1, 0),
(7, 5, 1, 0),
(7, 8, 5, 0),
(8, 6, 2, 0),
(8, 9, 1, 0),
(8, 13, 1, 0),
(8, 4, 5, 0),
(8, 8, 4, 0),
(9, 3, 1, 0),
(9, 85, 3, 0),
(10, 6, 2, 0),
(10, 9, 1, 0),
(10, 4, 5, 0),
(10, 8, 4, 0),
(10, 13, 1, 0),
(11, 6, 1, 0),
(11, 67, 1, 0),
(11, 78, 1, 0),
(11, 93, 1, 0),
(12, 4, 1, 0),
(12, 14, 1, 0),
(12, 94, 1, 0),
(12, 86, 1, 0),
(12, 92, 1, 0),
(12, 102, 1, 0),
(12, 101, 1, 0),
(13, 101, 1, 0),
(13, 103, 1, 0),
(13, 102, 1, 0),
(14, 102, 1, 0),
(14, 103, 1, 0),
(15, 103, 2, 0),
(16, 103, 7, 0),
(17, 2, 11, 0),
(18, 1, 11, 0),
(19, 1, 12, 0),
(20, 2, 11, 0),
(21, 4, 11, 0),
(22, 3, 15, 0),
(1, 1, 3, 19200000),
(1, 3, 3, 19120000),
(1, 4, 3, 26232000),
(1, 5, 3, 4952000),
(2, 1, 3, 19200000),
(2, 1, 3, 19200000),
(2, 1, 3, 19200000),
(3, 1, 3, 19200000),
(3, 1, 3, 19200000),
(3, 1, 3, 19200000),
(4, 1, 3, 19200000),
(4, 1, 3, 19200000),
(5, 6, 1, 0),
(6, 4, 1, 0),
(7, 5, 1, 0),
(7, 8, 5, 0),
(8, 6, 2, 0),
(8, 9, 1, 0),
(8, 13, 1, 0),
(8, 4, 5, 0),
(8, 8, 4, 0),
(9, 3, 1, 0),
(9, 85, 3, 0),
(10, 6, 2, 0),
(10, 9, 1, 0),
(10, 4, 5, 0),
(10, 8, 4, 0),
(10, 13, 1, 0),
(11, 6, 1, 0),
(11, 67, 1, 0),
(11, 78, 1, 0),
(11, 93, 1, 0),
(12, 4, 1, 0),
(12, 14, 1, 0),
(12, 94, 1, 0),
(12, 86, 1, 0),
(12, 92, 1, 0),
(12, 102, 1, 0),
(12, 101, 1, 0),
(13, 101, 1, 0),
(13, 103, 1, 0),
(13, 102, 1, 0),
(14, 102, 1, 0),
(14, 103, 1, 0),
(15, 103, 2, 0),
(16, 103, 7, 0),
(17, 2, 11, 0),
(18, 1, 11, 0),
(19, 1, 12, 0),
(20, 2, 11, 0),
(21, 4, 11, 0),
(22, 3, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id` int(11) NOT NULL,
  `id_san_pham` int(5) NOT NULL,
  `mau_sac` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dung_luong` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dieu_chinh_gia` float DEFAULT 0,
  `ton_kho` int(11) DEFAULT 0,
  `IMG` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`id`, `id_san_pham`, `mau_sac`, `dung_luong`, `dieu_chinh_gia`, `ton_kho`, `IMG`) VALUES
(1, 1, 'Đen', '128GB', 0, 5, 'iphone-16-den.jpg'),
(2, 1, 'Đen', '256GB', 3000000, 5, 'iphone-16-den.jpg'),
(3, 1, 'Đen', '512GB', 6000000, 2, 'iphone-16-den.jpg'),
(4, 1, 'Trắng', '128GB', 0, 6, 'iphone-16-trang.jpg'),
(5, 1, 'Trắng', '256GB', 3000000, 4, 'iphone-16-trang.jpg'),
(6, 1, 'Xanh', '128GB', 0, 3, 'iphone-16-xanh-luu-ly.jpg'),
(7, 1, 'Xanh', '256GB', 3000000, 0, 'iphone-16-xanh-luu-ly.jpg'),
(8, 2, 'Đen', '128GB', -3000000, 0, 'iphone-16-den.jpg'),
(9, 2, 'Đen', '256GB', 0, 0, 'iphone-16-den.jpg'),
(10, 2, 'Đen', '512GB', 3000000, 0, 'iphone-16-den.jpg'),
(11, 2, 'Trắng', '128GB', -3000000, 0, 'iphone-16-trang.jpg'),
(12, 2, 'Trắng', '256GB', 0, 0, 'iphone-16-trang.jpg'),
(13, 2, 'tea', '128GB', -3000000, 0, 'iphone-16-teal.jpg'),
(14, 2, 'Xanh dương', '128GB', -3000000, 0, 'iPhone-16-Ultramarine1.jpg'),
(15, 2, 'Xanh lá', '128GB', -3000000, 0, 'Iphone 16.jpg'),
(31, 3, 'Đen', '256GB', 0, 5, 'SamSung Galaxy Z Flip 6.jpg'),
(32, 3, 'Đen', '512GB', 4000000, 2, 'SamSung Galaxy Z Flip 6.jpg'),
(33, 3, 'Xanh', '256GB', 0, 3, 'samsung-galaxy-z-flip6-mint.jpg'),
(34, 3, 'Xanh', '512GB', 4000000, 0, 'samsung-galaxy-z-flip6-mint.jpg'),
(35, 3, 'Vàng', '256GB', 0, 5, 'samsung-galaxy-z-flip6-yellow.jpg'),
(36, 4, 'Đen Titan', '256GB', 0, 3, 'iphone-16-pro-max-titan-den.jpg'),
(37, 4, 'Đen Titan', '512GB', 5000000, 2, 'iphone-16-pro-max-titan-den.jpg'),
(38, 4, 'Đen Titan', '1TB', 10000000, 1, 'iphone-16-pro-max-titan-den.jpg'),
(39, 4, 'Trắng Titan', '256GB', 0, 1, 'iphone-16-pro-max-titan-trang.jpg'),
(40, 4, 'Trắng Titan', '512GB', 5000000, 1, 'iphone-16-pro-max-titan-trang.jpg'),
(41, 4, 'Vàng Titan', '256GB', 0, 1, 'iphone-16-pro-max-titan-sa-mac.jpg'),
(68, 5, 'Trắng', NULL, -500000, 30, '.jpg'),
(69, 5, 'Trắng', NULL, 0, 71, '.jpg'),
(70, 6, 'Xám', '128GB', 0, 25, 'samsung-galaxy-s21-xam.jpg'),
(71, 6, 'Xám', '256GB', 2000000, 15, 'samsung-galaxy-s21-xam.jpg'),
(72, 6, 'Trắng', '128GB', 0, 20, 'samsung-galaxy-s21-trang.jpg'),
(73, 6, 'Trắng', '256GB', 2000000, 20, 'samsung-galaxy-s21-trang.jpg'),
(74, 6, 'Tím', '128GB', 0, 25, 'samsung-galaxy-s21-tim.jpg'),
(75, 6, 'Tím', '256GB', 2000000, 20, 'samsung-galaxy-s21-tim.jpg'),
(76, 7, 'Đen', '128GB', 0, 0, 'iphone-13-den.jpg'),
(77, 7, 'Đen', '256GB', 3000000, 0, 'iphone-13-den.jpg'),
(78, 7, 'Trắng', '128GB', 0, 0, 'iphone-13-trang.jpg'),
(79, 7, 'Đen', '512GB', 0, 0, 'iphone-13-den.jpg'),
(80, 7, 'Trắng', '256GB', 0, 0, 'iphone-13-trang.jpg'),
(81, 8, 'Đen', NULL, 0, 40, '.jpg'),
(82, 8, 'Trắng', NULL, 0, 33, '.jpg'),
(83, 8, 'Vàng', NULL, 0, 40, '.jpg'),
(84, 9, 'Trắng', NULL, 0, 0, '.jpg'),
(85, 9, 'Đen', NULL, 0, 0, '.jpg'),
(86, 10, 'Trắng', NULL, 0, 50, '.jpg'),
(87, 10, 'Đen', NULL, 0, 50, '.jpg'),
(88, 11, 'Đen', '64GB', 0, 40, '.jpg'),
(89, 11, 'Đen', '128GB', 500000, 30, '.jpg'),
(90, 11, 'Xám', '64GB', 0, 20, '.jpg'),
(91, 11, 'Xám', '128GB', 500000, 10, '.jpg'),
(92, 12, 'Đen', '32GB', -200000, 40, '.jpg'),
(93, 12, 'Đen', '64GB', 0, 31, '.jpg'),
(94, 12, 'Đen', '128GB', 400000, 30, '.jpg'),
(95, 13, 'Xám', '256GB', 0, 33, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(96, 13, 'Xám', '512GB', 4000000, 20, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(97, 13, 'Xám', '1TB', 8000000, 10, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(98, 13, 'Bạc', '256GB', 0, 20, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(99, 13, 'Bạc', '512GB', 4000000, 15, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(100, 13, 'Bạc', '1TB', 8000000, 5, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(101, 14, 'Đen', '128GB', 0, 35, 'samsung-galaxy-tab-a9-plus-wifi-xam.jpg'),
(102, 14, 'Đen', '256GB', 1500000, 26, 'samsung-galaxy-tab-a9-plus-wifi-xam.jpg'),
(103, 14, 'Xanh', '128GB', 0, 20, 'samsung-galaxy-tab-a9-plus-wifi-xanh-duong.jpg'),
(104, 14, 'Xanh', '256GB', 1500000, 20, 'samsung-galaxy-tab-a9-plus-wifi-xanh-duong.jpg'),
(105, 15, 'Đen', '256GB', 0, 40, 'samsung-galaxy-tab-s10-plus-gray.jpg'),
(106, 15, 'Đen', '512GB', 3000000, 30, 'samsung-galaxy-tab-s10-plus-gray.jpg'),
(107, 15, 'Bạc', '256GB', 0, 20, 'samsung-galaxy-tab-s10-plus-sliver.jpg'),
(108, 15, 'Bạc', '512GB', 3000000, 10, 'samsung-galaxy-tab-s10-plus-sliver.jpg'),
(109, 16, 'Đen', '256GB', 0, 30, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(110, 16, 'Đen', '512GB', 4000000, 25, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(111, 16, 'Đen', '1TB', 8000000, 15, 'samsung-galaxy-tab-s10-ultra-gray.jpg'),
(112, 16, 'Bạc', '256GB', 0, 15, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(113, 16, 'Bạc', '512GB', 4000000, 10, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(114, 16, 'Bạc', '1TB', 8000000, 5, 'samsung-galaxy-tab-s10-ultra-sliver.jpg'),
(115, 17, 'Xám', '128GB', 0, 40, 'lenovo-tab-plus.jpg'),
(116, 17, 'Xám', '256GB', 1000000, 30, 'lenovo-tab-plus.jpg'),
(117, 17, 'Xám', '128GB', 1500000, 20, 'lenovo-tab-plus.jpg'),
(118, 17, 'Xám', '256GB', 2500000, 10, 'lenovo-tab-plus.jpg'),
(119, 18, 'Xám', '64GB', 0, 40, '.jpg'),
(120, 18, 'Xám', '128GB', 500000, 30, '.jpg'),
(121, 18, 'Bạc', '64GB', 0, 20, '.jpg'),
(122, 18, 'Bạc', '128GB', 500000, 10, '.jpg'),
(123, 19, 'Đen', NULL, 0, 40, '.jpg'),
(124, 19, 'Đen', NULL, 50000, 35, '.jpg'),
(125, 19, 'Trắng', NULL, 0, 15, '.jpg'),
(126, 19, 'Trắng', NULL, 50000, 10, '.jpg'),
(127, 20, 'Đen', NULL, 0, 50, '.jpg'),
(128, 20, 'Đen', NULL, 30000, 30, '.jpg'),
(129, 20, 'Đen', NULL, 50000, 20, '.jpg'),
(130, 21, 'Trắng', NULL, 0, 50, '.jpg'),
(131, 21, 'Đen', NULL, 0, 50, '.jpg'),
(132, 22, 'Trắng', NULL, 0, 50, '.jpg'),
(133, 22, 'Đen', NULL, 0, 50, '.jpg'),
(134, 23, 'Trắng', NULL, 0, 50, '.jpg'),
(135, 23, 'Đen', NULL, 0, 50, '.jpg'),
(136, 24, 'Trắng', NULL, 0, 50, '.jpg'),
(137, 24, 'Đen', NULL, 0, 50, '.jpg'),
(138, 25, 'Đen', NULL, 0, 35, '.jpg'),
(139, 25, 'Trắng', NULL, 0, 33, '.jpg'),
(140, 25, 'Vàng', NULL, 0, 32, '.jpg'),
(141, 26, 'Đen', NULL, 0, 40, '.jpg'),
(142, 26, 'Trắng', NULL, 0, 30, '.jpg'),
(143, 26, 'Đen', NULL, 20000, 15, '.jpg'),
(144, 26, 'Trắng', NULL, 20000, 15, '.jpg'),
(145, 27, 'Đen', '128GB', 0, 20, 'xiaomi-redmi-note-14-black.jpg'),
(146, 27, 'Trắng', '128GB', 0, 20, 'xiaomi-redmi-note-14-purple.jpg'),
(147, 27, 'Xanh', '128GB', 0, 20, 'xiaomi-redmi-note-14-xanh.jpg'),
(148, 27, 'Xạnh', '256GB', 0, 20, 'xiaomi-redmi-note-14-xanh.jpg'),
(149, 27, 'Trắng', '256GB', 0, 20, 'xiaomi-redmi-note-14-purple.jpg'),
(150, 28, 'Đen', '256GB', 0, 20, 'xiaomi-redmi-note-14-5g-black.jpg'),
(151, 28, 'Xanh', '256GB', 0, 20, 'xiaomi-redmi-note-14-5g-green.jpg'),
(152, 28, 'Tím', '128GB', 0, 20, 'xiaomi-redmi-note-14-5g-purple.jpg'),
(153, 28, 'Tím', '256GB', 0, 20, 'xiaomi-redmi-note-14-5g-purple.jpg'),
(154, 28, 'Xanh', '512GB', 0, 20, 'xiaomi-redmi-note-14-5g-green.jpg'),
(155, 29, 'Đen', '128GB', 0, 20, '.jpg'),
(156, 29, 'Xanh', '128GB', 0, 20, '.jpg'),
(157, 29, 'Trắng', '128GB', 0, 20, '.jpg'),
(158, 29, 'Tím', '128GB', 0, 20, '.jpg'),
(159, 29, 'Xám', '128GB', 0, 20, '.jpg'),
(160, 30, 'Đen', '128GB', 0, 20, 'xiaomi-redmi-note-13-pro-den.jpg'),
(161, 30, 'Xanh', '128GB', 0, 20, 'xiaomi-redmi-note-13-pro-xanh.jpg'),
(162, 30, 'Xanh Lam', '128GB', 0, 20, 'xiaomi-redmi-note-13-pro-5g-xalanh.jpg'),
(163, 30, 'Tím', '128GB', 0, 20, 'xiaomi-redmi-note13-pro-tim.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chitietthunhap`
--

CREATE TABLE `chitietthunhap` (
  `idNV` int(5) NOT NULL,
  `idTN` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitiettruluong`
--

CREATE TABLE `chitiettruluong` (
  `idNV` int(5) NOT NULL,
  `idTRU` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chucnang`
--

CREATE TABLE `chucnang` (
  `idCN` int(2) NOT NULL,
  `TENCN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` int(1) NOT NULL DEFAULT 1
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
  `idDM` int(5) NOT NULL,
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
  `idHD` int(5) NOT NULL,
  `idTK` int(5) NOT NULL,
  `THANHTIEN` float NOT NULL,
  `NGAYMUA` date NOT NULL,
  `DIACHI` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MAKHUYENMAI` int(5) DEFAULT NULL,
  `idVC` int(5) NOT NULL,
  `TRANGTHAI` int(1) NOT NULL DEFAULT 1,
  `idTHANHTOAN` int(5) NOT NULL,
  `SDT-DH` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`idHD`, `idTK`, `THANHTIEN`, `NGAYMUA`, `DIACHI`, `MAKHUYENMAI`, `idVC`, `TRANGTHAI`, `idTHANHTOAN`, `SDT-DH`) VALUES
(1, 1, 17000000, '2024-01-10', '123 Le Loi, Q1, TP HCM', 1, 1, 5, 1, ''),
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
(50, 32, 7227100, '2025-04-06', 'afa, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, 5, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `dvvanchuyen`
--

CREATE TABLE `dvvanchuyen` (
  `idVC` int(5) NOT NULL,
  `TENDVVC` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GIAVANCHUYEN` float NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dvvanchuyen`
--

INSERT INTO `dvvanchuyen` (`idVC`, `TENDVVC`, `GIAVANCHUYEN`, `TRANGTHAI`) VALUES
(1, 'Hỏa tốc', 30000, 1),
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
  `idTK` int(5) NOT NULL,
  `idSP` int(5) NOT NULL
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
(14, 101);

-- --------------------------------------------------------

--
-- Table structure for table `hang`
--

CREATE TABLE `hang` (
  `idHANG` int(5) NOT NULL,
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
  `idHD` int(5) NOT NULL,
  `idTK` int(5) NOT NULL,
  `amount` double NOT NULL,
  `ngayhoan` datetime NOT NULL DEFAULT current_timestamp(),
  `trangthai` decimal(1,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoantien`
--

INSERT INTO `hoantien` (`id`, `idHD`, `idTK`, `amount`, `ngayhoan`, `trangthai`) VALUES
(0, 49, 32, 7224100, '2025-04-06 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `khoanthunhap`
--

CREATE TABLE `khoanthunhap` (
  `idTN` int(2) NOT NULL,
  `TENKHOANTN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TIEN` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khoantruluong`
--

CREATE TABLE `khoantruluong` (
  `idTRU` int(2) NOT NULL,
  `TENKHOANTRU` varchar(50) NOT NULL,
  `TIEN` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MAKHUYENMAI` int(5) NOT NULL,
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
(4, 'NEWYEAR25', 25000, 20, '2024-04-01', '2024-05-31', 0),
(5, 'SUMMER30', 30000, 7, '2024-05-01', '2026-09-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lsuthangchuc`
--

CREATE TABLE `lsuthangchuc` (
  `idTK` int(5) NOT NULL,
  `vitricu` int(5) DEFAULT NULL,
  `vitrimoi` int(5) NOT NULL,
  `luongcu` int(10) NOT NULL,
  `luongmoi` int(10) NOT NULL,
  `ngaynhamchuc` date NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lsuthangchuc`
--

INSERT INTO `lsuthangchuc` (`idTK`, `vitricu`, `vitrimoi`, `luongcu`, `luongmoi`, `ngaynhamchuc`, `trangthai`) VALUES
(28, 2, 5, 12000000, 15000000, '2025-03-30', 0),
(31, 2, 7, 12000000, 10000000, '2025-03-31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ngayle`
--

CREATE TABLE `ngayle` (
  `idNGAYLE` int(2) NOT NULL,
  `NGAY` date NOT NULL,
  `TENNGAYLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngayle`
--

INSERT INTO `ngayle` (`idNGAYLE`, `NGAY`, `TENNGAYLE`) VALUES
(1, '2025-04-30', 'Ngày giải phóng Miền Nam'),
(2, '2025-03-03', 'Ngày nghỉ dưỡng'),
(3, '2025-03-04', 'Ngày nghỉ ngơi'),
(4, '2025-03-07', 'nghỉ ngơi');

-- --------------------------------------------------------

--
-- Table structure for table `ngaynghi`
--

CREATE TABLE `ngaynghi` (
  `idNV` int(5) NOT NULL,
  `NGAYGUI` timestamp NOT NULL DEFAULT current_timestamp(),
  `NGAYNGHI` date NOT NULL,
  `LYDO` text NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngaynghi`
--

INSERT INTO `ngaynghi` (`idNV`, `NGAYGUI`, `NGAYNGHI`, `LYDO`, `TRANGTHAI`) VALUES
(13, '2025-03-24 05:08:52', '2025-03-27', '12345', 0),
(13, '2025-03-24 05:09:00', '2025-04-30', '12345', 0),
(13, '2025-03-24 05:09:08', '2025-06-27', '12345', 0),
(13, '2025-03-24 05:08:52', '2025-03-27', '12345', 0),
(13, '2025-03-24 05:09:00', '2025-04-30', '12345', 0),
(13, '2025-03-24 05:09:08', '2025-06-27', '12345', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `idNCC` int(5) NOT NULL,
  `TENNCC` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DIACHI` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`idNCC`, `TENNCC`, `SDT`, `DIACHI`, `TRANGTHAI`) VALUES
(1, 'Công ty A', '0123456789', '123123', 1),
(2, 'Công ty B', '0123456789', '123123', 1),
(3, 'X Kong ty', '0123456789', '123123', 1),
(4, 'Nhà cung cấp ZZZ', '0371956740', 'djfuy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `idTK` int(5) NOT NULL,
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
(12, 1, '2025-03-02', '', 'mei.jpg', '0000-00-00', 'Đang làm'),
(13, 0, '2025-03-20', '', 'hertame.jpg', '0000-00-00', 'Đang tu'),
(17, 1, '0555-12-31', 'sg', 'NV17.jpg', '2025-03-19', 'Dang lam'),
(18, 1, '0254-12-31', 'Quảng Bình', 'NV18.jpg', '2025-03-19', 'Dang lam'),
(19, 1, '0067-02-06', 'Quảng Bình', 'NV19.jpg', '2025-03-19', 'Dang lam'),
(24, 1, '1911-11-11', 'HN', 'NV24.png', '2025-03-19', 'Dang lam'),
(25, 1, '1991-11-11', 'HN', 'NV25.jpg', '2025-03-19', 'Dang lam'),
(27, 1, '1111-11-11', 'HN', 'NV27.jpg', '2025-03-19', 'Dang lam'),
(29, 1, '1111-11-11', 'HN', 'NV29.jpg', '2025-03-19', 'Dang lam'),
(30, 1, '2000-01-01', 'TP Hồ Chí Minh', 'NV30.jpg', '2025-03-20', 'Dang lam'),
(31, 1, '2000-01-01', 'TP Hồ Chí Minh', 'NV31.png', '2025-03-21', 'Dang lam');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `idQUYEN` int(2) NOT NULL,
  `idCN` int(2) NOT NULL,
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
(6, 1, 'XEM'),
(6, 2, 'XEM'),
(6, 3, 'XEM'),
(7, 8, 'XEM'),
(7, 8, 'SUA'),
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
(6, 1, 'XEM'),
(6, 2, 'XEM'),
(6, 3, 'XEM'),
(7, 8, 'XEM'),
(7, 8, 'SUA'),
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
(8, 2, 'XEM');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `idPN` int(5) NOT NULL,
  `idNCC` int(5) NOT NULL,
  `NGAYNHAP` date NOT NULL,
  `THANHTIEN` double DEFAULT NULL,
  `LOINHUAN` int(2) NOT NULL,
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
(22, 1, '2025-03-12', 286800000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ptthanhtoan`
--

CREATE TABLE `ptthanhtoan` (
  `idThanhToan` int(5) NOT NULL,
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
  `idQUYEN` int(2) NOT NULL,
  `TENQUYEN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LUONGCB` decimal(10,2) DEFAULT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`idQUYEN`, `TENQUYEN`, `LUONGCB`, `TRANGTHAI`) VALUES
(0, 'Khách hàng', 0.00, 1),
(1, 'admin', 20000000.00, 1),
(2, 'Nhân viên bán hàng', 12000000.00, 1),
(3, 'Nhân viên kho', 11000000.00, 1),
(4, 'Quản lý nhân sự', 18000000.00, 1),
(5, 'Kế toán', 15000000.00, 1),
(6, 'Quản lý nhập hàng', 16000000.00, 1),
(7, 'Shipper', 10000000.00, 1),
(8, 'rmgnjker', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `idTK` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `has_image` tinyint(1) DEFAULT 0,
  `purchase_verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(16, 6, 16, 4, 'fdgnhm', 0, 0, '2025-03-15 06:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(5) NOT NULL,
  `TENSP` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HANG` int(5) NOT NULL,
  `GIANHAP` float NOT NULL,
  `SOLUONG` int(20) NOT NULL DEFAULT 0,
  `idDM` int(5) NOT NULL,
  `IMG` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MOTA` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1,
  `DISCOUNT` int(2) NOT NULL DEFAULT 0,
  `GIA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `TENSP`, `HANG`, `GIANHAP`, `SOLUONG`, `idDM`, `IMG`, `MOTA`, `TRANGTHAI`, `DISCOUNT`, `GIA`) VALUES
(1, 'iPhone 16', 1, 19200000, 15, 1, 'Iphone 16.jpeg', 'Hiệu năng vượt trội với chip A18\r\nVới lần nâng cấp này, Apple đã mạnh tay sử dụng chip A18 trên toàn bộ iPhone 16 Series, bao gồm iPhone 16 256GB. Đây là thế hệ chip 3nm thứ 2 của TSMC, công nghệ chip hiện đại nhất hiện nay, mang tới hiệu năng, tốc độ xử lý nhanh và tiết kiệm pin hơn so với chip A16 Bionic của iPhone 15 256GB.\r\n\r\nVề hệ điều hành, không còn là đồn đoán, gã khổng lồ công nghệ đã thực sự ứng dụng hệ điều hành iOS 18 tiên tiến trên điện thoại iPhone 16 phiên bản Tiêu Chuẩn. Hệ điều hành mới được cải tiến đặc biệt về AI, bổ sung tính năng tin nhắn mới, cập nhật Apple Maps, Siri, hỗ trợ RCS… mang đến nhiều tiện ích và nâng cấp trải nghiệm người dùng hơn iPhone 15 256GB', 1, 10, 24000000),
(2, 'iPhone 16 plus', 1, 28000000, 0, 1, 'Iphone 16 pờ lếch.jpeg', 'iPhone 16 Plus 512GB dự kiến sẽ là sản phẩm cháy hàng trong thời gian tới vì dung lượng lưu trữ lớn và có nhiều thay đổi về mặt thiết kế - công nghệ so với mức giá. Hãy cùng điểm mặt 10 lý do bạn nên mua iPhone 16 Plus 512GB ngay khi ra mắt qua bài viết sau nhé!', 1, 10, 35000000),
(3, 'SamSung Galaxy Z Flip 6', 3, 19120000, 15, 1, 'SamSung Galaxy Z Flip 6.jpeg', 'Galaxy Z Flip6 ra mắt đã mở ra một kỷ nguyên AI di động với sức mạnh của Galaxy AI tiên tiến. Bên cạnh đó, thiết bị còn cuốn hút mọi người với vẻ ngoài siêu mỏng nhỏ gọn, hiệu năng mạnh mẽ, thời lượng sử dụng bền bỉ và camera nâng tầm nhiếp ảnh. Tất cả hứa hẹn sẽ mang đến cho bạn trải nghiệm sử dụng mới lạ, hấp dẫn, đáp ứng tốt mọi nhu cầu của bạn trong cuộc sống hiện đại ngày nay.', 1, 10, 23900000),
(4, 'iPhone 16 Ultra', 1, 26232000, 9, 1, 'iphone 16 Pro Max.jpeg', 'iPhone 16 Plus 512GB dự kiến sẽ là sản phẩm cháy hàng trong thời gian tới vì dung lượng lưu trữ lớn và có nhiều thay đổi về mặt thiết kế - công nghệ so với mức giá. Hãy cùng điểm mặt 10 lý do bạn nên mua iPhone 16 Plus 512GB ngay khi ra mắt qua bài viết sau nhé!', 1, 10, 32790000),
(5, 'Airpods pro 2', 1, 4952000, 101, 5, 'Airpods pro 2.jpg', 'Trải nghiệm chất lượng âm thanh vô song với tính năng Chủ Động Khử Tiếng Ồn đẳng cấp Pro,Chú thích³ Âm Thanh Thích Ứng để kiểm soát tiếng ồn phù hợp trong mọi môi trường, cùng chế độ Xuyên Âm giúp bạn nghe thấy thế giới xung quanh mình,Chú thích² và tính năng Nhận Biết Cuộc Hội Thoại để giảm âm lượng của nội dung đang phát một cách liền mạch khi bạn đang nói chuyện với ai đó ở gần.Chú thích¹³ Giảm thiểu mức độ tiếp xúc của bạn với tiếng ồn lớn bằng tính năng Giảm Âm Thanh Lớn, sử dụng Tăng Cường Hội Thoại để tập trung vào giọng nói ngay trước mặt bạn, và phát Âm Thanh Trong Nền êm dịu như tiếng đại dương hoặc tiếng mưa rơi để chặn bớt tiếng ồn không mong muốn xung quanh. Cả AirPods Pro 2 và Hộp Sạc MagSafe không dây (USB-C) đều có khả năng chống bụi, chống mồ hôi và chống nước đạt chuẩn IP54,Chú thích¹² và bạn có thể sử dụng ứng dụng Tìm để theo dõi vị trí của các thiết bị này.Chú thích', 1, 10, 6190000),
(6, 'Samsung Galaxy S21', 3, 6399200, 124, 1, 'Samsung Galaxy S21.jpg', 'Smartphone Samsung S21', 1, 10, 7999000),
(7, 'iPhone 13', 1, 15200000, 0, 1, 'iphone 13.jpeg', 'Smartphone iPhone 13', 1, 10, 19000000),
(8, 'Sony-1000XM4-Gold-A', 5, 2400000, 113, 5, 'Sony-1000XM4-Gold-A.jpg', 'Tai nghe Sony chống ồn', 1, 10, 3000000),
(9, 'Củ sạc Xiaomi', 2, 119200, 0, 2, 'Cu-Sac-Nhanh-Type-C-20W-Xiaomi-AD201-Quoc-Te-chinh-hang-mi360-3.jpg', 'Củ sạc nhanh Xiaomi AD201 20W Xiaomi AD201 Quốc Tế từ thương hiệu uy tín, công suất mạnh mẽ, hiệu quả sạc ổn định sẽ một lựa chọn hợp lý giúp cung cấp khả năng sạc nhanh cho các thiết bị. Bên cạnh thiết kế nhỏ gọn, dễ lưu trữ và mang đi. Củ sạc nhanh Xiaomi AD201 còn cho độ tương thích cao với nhiều dòng smartphone, máy tính bảng,…với công suất sạc lên đến 20W. Đặc biệt, cốc sạc còn hỗ trợ tính năng sạc nhanh giúp rút ngắn đáng kể thời gian sạc hơn so với những cốc sạc thông thường.', 1, 10, 149000),
(10, 'Củ sạc Samsung', 3, 47200, 100, 2, 'cu-sac-samsung-mi360.jpg', '– Củ sạc nhanh Samsung 5V-2A được bán tại shop phụ kiện Samsung cam kết là hàng chính hãng 100% của thương hiệu Samsung.\r\n– Bộ sạc được shop nhập từ hai nhà cung cấp đó là nhà máy Samsung Việt Nam và Trung Quốc, bạn hoàn toàn yên tâm sử dụng.\r\n– Củ sạc nhanh Samsung 5V-2A có thiết kế nhỏ gọn, trọng lượng nhẹ hơn thế phần củ và dây cáp thiết kế tách biệt nhau cho nên sản phẩm giúp bạn dễ dàng di chuyển mọi lúc mọi nơi.', 1, 0, 59000),
(11, 'Máy tính bảng TCL Tab 10L Gen 3', 11, 2152000, 100, 7, 'Máy tính bảng TCL Tab 10L Gen 3.jpg', 'TCL Tab 10L Gen 3 là chiếc máy tính bảng hoàn hảo cho những ai tìm kiếm sự kết hợp giữa hiệu suất mạnh mẽ, thiết kế tinh tế và tính năng giải trí vượt trội. Với màn hình lớn 10.1 inch sắc nét, hiệu năng mạnh mẽ, camera chất lượng và thời gian sử dụng pin dài, máy đáp ứng nhu cầu học tập, làm việc và giải trí cho cả gia đình.', 1, 0, 2690000),
(12, 'Máy tính bảng TCL Tab 10L Gen 2', 11, 1592000, 101, 7, 'Máy tính bảng TCL Tab 10L Gen 2.jpg', 'Được ra mắt trong năm 2023, TCL Tab 10L Gen 2 tạo được sự chú ý khi có giá bán hết sức cạnh tranh nhưng lại sở hữu khá nhiều đặc điểm nổi bật. Ưu điểm lớn nhất có thể kể đến là màn hình lớn, thiết kế mỏng và có cả mặt lưng kim loại.', 1, 0, 1990000),
(13, 'Máy tính bảng Samsung Galaxy Tab S10 Ultra', 3, 19432000, 103, 7, 'Máy tính bảng Samsung Galaxy Tab S10 Ultra.jpg', 'Samsung Galaxy Tab S10 Ultra WiFi là một lựa chọn hoàn hảo cho những người đam mê công nghệ, những người sáng tạo và những ai muốn trải nghiệm một chiếc máy tính bảng cao cấp. Với thiết kế đẹp mắt, cấu hình mạnh mẽ và nhiều tính năng hữu ích, máy chắc chắn sẽ làm hài lòng ngay cả những người dùng khó tính nhất.', 1, 0, 24290000),
(14, 'Máy tính bảng Samsung Galaxy Tab A9+ 5G', 3, 4792000, 101, 7, 'Máy tính bảng Samsung Galaxy Tab A9+ 5G.jpg', 'Với giá cả phải chăng, Samsung Galaxy Tab A9+ 5G là một sản phẩm máy tính bảng của Samsung dành cho người dùng muốn sở hữu một thiết bị giải trí cơ bản với màn hình rộng và khả năng kết nối mạng toàn diện để truy cập internet bất kỳ lúc nào và ở bất kỳ đâu.', 1, 0, 5990000),
(15, 'Máy tính bảng Samsung Galaxy Tab S10+', 3, 15432000, 100, 7, 'Máy tính bảng Samsung Galaxy Tab S10+.jpg', 'Samsung tiếp tục khẳng định vị thế của mình trong thị trường máy tính bảng với dòng sản phẩm Samsung Galaxy Tab S10 Plus. Đây là thiết bị hướng tới người dùng tìm kiếm một trải nghiệm toàn diện, từ hiệu năng mạnh mẽ đến khả năng sáng tạo hiệu quả, cùng hàng loạt các tính năng tiện lợi khác, hỗ trợ cho cả công việc, giải trí và các tác vụ thường ngày của bạn.', 1, 0, 19290000),
(16, 'Máy tính bảng Samsung Galaxy Tab S10 Ultra 5G', 3, 21832000, 100, 7, 'Máy tính bảng Samsung Galaxy Tab S10 Ultra 5G.jpg', 'Samsung Galaxy Tab S10 Ultra là minh chứng cho sự kết hợp hoàn hảo giữa thiết kế, hiệu năng và tính năng thông minh, mang đến trải nghiệm chưa từng có cho người dùng. Sản phẩm này không chỉ đơn thuần là một chiếc máy tính bảng, mà còn là công cụ hỗ trợ mạnh mẽ trong công việc, sáng tạo và giải trí.', 1, 0, 27290000),
(17, 'Máy tính bảng Lenovo Tab Plus', 9, 5352000, 100, 7, 'Máy tính bảng Lenovo Tab Plus.jpg', 'Lenovo Tab Plus kết hợp thiết kế tinh tế, hiệu năng mạnh mẽ và trải nghiệm giải trí đỉnh cao. Với màn hình lớn, chân đế tiện lợi, âm thanh sống động và pin bền bỉ, sản phẩm này đáp ứng tốt mọi nhu cầu từ công việc đến giải trí. Lenovo Tab Plus là lựa chọn lý tưởng trong phân khúc tablet tầm trung đến cao cấp.', 1, 0, 6690000),
(18, 'Máy tính bảng Lenovo Tab M9', 9, 2072000, 100, 7, 'Máy tính bảng Lenovo Tab M9.jpg', 'Để mở rộng dải sản phẩm máy tính bảng của mình, Lenovo đã trình làng Lenovo Tab M9 WiFi. Sản phẩm gây ấn tượng với thiết kế thanh lịch, màn hình rộng rãi và hiệu suất ổn định, đảm bảo đáp ứng mọi nhu cầu sử dụng cho người dùng.', 1, 0, 2590000),
(19, 'Cáp sạc Type C Zmi AL303-AL873', 6, 143200, 100, 3, 'Cáp sạc Type C Zmi AL303-AL873.jpg', 'Bạn đang tìm kiếm một sợi cáp sạc chất lượng với giá cả hợp lý, đến từ thương hiệu uy tín, đồng thời hỗ trợ sạc nhanh thì Cáp sạc Type C Zmi AL303-AL873 chính là sự lựa chọn mà bạn không thể bỏ qua.\r\nLí do nên trang bị Cáp sạc Type C Zmi AL303-AL873?\r\nCáp sạc Type C Zmi AL303-AL873 là một cáp sạc đến từ tương hiệu ZMI, hỗ trợ dòng điện lên tới 3A giúp quá trình sạc và truyền dữ liệu nhanh hơn. Bên cạnh đó thiết kế siêu bền bỉ cùng chiều dài lên tới 1m sẽ là những ưu điểm đáng để bạn cân nhắc.', 1, 0, 179000),
(20, 'Cáp sạc Type C ZMI AL706', 6, 159200, 100, 3, 'Cap-type-C-sieu-ben-Xiaomi-ZMI-AL706-chinh-hang-mi360.jpg', 'Cáp sạc Type C ZMI AL706 có chiều dài dây 1 mét/2 mét tiêu chuẩn tương tự như các loại cáp sạc phổ biến. Tuy nhiên điểm đặc biệt chính là toàn bộ thân dây được bao bọc bởi một lớp dây dù bện nylon nhằm gia cố chắc chắn cho sợi cáp, giúp cho sợi cáp cứng cáp mà không gặp phải trường hợp tưa dây hở mạch. Ngoài ra, nó còn chống rối dây hiệu quả khi bạn để trong balo túi xách và có thể chịu lực uốn cong liên tục lên đến 30.000 lần mà không bị hư hỏng.', 1, 0, 199000),
(21, 'Củ sạc nhanh Zmi HA612', 2, 79200, 100, 2, 'Cu-Sac-Nhanh-Xiaomi-Zmi-HA716-chinh-hang-mi360-3.png', 'Bạn đang tìm một cốc sạc chất lượng, có thể hoạt động ổn định và đặc biệt là phải có tính năng sạc nhanh. Bạn đang phân vân và không biết nên chọn sản phẩm nào để vừa có thể đáp ứng tốt như cầu của mình nhưng lại phải phù hợp với túi tiền của mình. Vâng nếu như thế thì sản phẩm dưới đây, Củ sạc nhanh Zmi HA612 18W Chính Hãng chính là sản phẩm mà bạn đang tìm kiếm.', 1, 0, 99000),
(22, 'Củ sạc nhanh HOCO 3USB HK1', 7, 132000, 100, 2, 'Củ sạc nhanh HOCO 3USB HK1.png', 'Củ sạc nhanh HOCO 3USB HK1 3 cổng 5A một thiết bị adapter để sạc cho các thiết bị di động, trang bị 3 cổng USB cho phép sạc cùng lúc cho cả 3 thiết bị. Hỗ trợ sạc tương thích với cả điện thoại và máy tính bảng.\r\nCủ sạc nhanh HOCO 3USB HK1 3 cổng 5A được làm hoàn toàn từ nhựa ABS-PC. Các cạnh xung quanh đều được bo cong để cảm giác cầm nắm tốt hơn và bớt phần đơn điệu. Bề mặt được làm dạng bóng giúp sản phẩm sang trọng và cao cấp hơn.', 1, 0, 165000),
(23, 'Củ sạc nhanh Xiaomi AD332EU', 2, 199200, 100, 2, 'Củ sạc nhanh Xiaomi AD332EU.jpg', 'Củ sạc nhanh Xiaomi AD332EU được trang bị công nghệ sạc nhanh lên đến 30W cho tốc độ vượt trội. Bên cạnh đó, với việc được trang bị cả 2 cổng đầu ra phổ biến nhất hiện nay là USB-A và USB type C thì đây là một điểm rất tiện lợi cho người sử dụng. Cả 2 cổng đầu ra đều có khả năng sạc nhanh, đối với cổng USB type C thì cốc sạc có công suất sạc nhanh là 30W, khi sử dụng cổng sạc USB-A thì công suất tối đa là 27W. Còn khi sử dụng đồng thời cả 2 cổng thì công suất đạt tối đa là 24W chia đều cho 2 cổng sạc.', 1, 0, 249000),
(24, 'Củ sạc nhanh Zmi 1A1C HA722', 6, 183200, 100, 2, 'Củ sạc nhanh Zmi 1A1C HA722.jpg', 'Củ sạc nhanh Zmi 1A1C HA722 là sản phẩm được rất nhiều người yêu thích sử dụng hiện nay. Với thiết kế nhỏ gọn, trang bị 2 cổng ra với công suất sạc nhanh lên tới 30W, cùng với cổng USB type C hỗ trợ PD sản phẩm có thể sạc được cho Laptop, Macbook. Đây là lựa chọn tuyệt vời dành cho những ai sở hữu nhiều thiết bị di động.', 1, 0, 229000),
(25, 'Tai nghe Bluetooth Business Remax RB T15', 8, 199200, 100, 5, 'Tai nghe Bluetooth Business Remax RB T15.jpg', 'Tai nghe Bluetooth Business Remax RB T15 được thiết kế với kiểu dáng hiện đại, sang trọng, giúp bạn dễ dàng mang theo bên mình và sử dụng trong khi di chuyển mọi nơi, thích hợp cho những người bận rộn và phải đàm thoại nhiều.\r\nKích thước của Tai nghe Bluetooth Business Remax RB T15 tuy nhỏ 51×13.8×9.15mm, trọng lượng nhẹ chỉ với 675g, nhưng chiếc tai nghe này được cấu tạo bao gồm 46 bộ phận chi tiết nhỏ được cấu tạo tỉ mỉ và lắp ráp cẩn thận thận từ ngoài vỏ cho tới bên trong.', 1, 0, 249000),
(26, 'Tai nghe In-Ear Headphones Basic', 2, 119200, 100, 5, 'Tai nghe In-Ear Headphones Basic.jpg', 'Tai nghe Tai nghe In-Ear Headphones Basic được thiết kế với kiểu dáng hiện đại, sang trọng, giúp bạn dễ dàng mang theo bên mình và sử dụng trong khi di chuyển mọi nơi, thích hợp cho những người bận rộn và phải đàm thoại nhiều.\r\nKích thước của Tai nghe In-Ear Headphones Basic tuy nhỏ 51×13.8×9.15mm, trọng lượng nhẹ chỉ với 675g, nhưng chiếc tai nghe này được cấu tạo bao gồm 46 bộ phận chi tiết nhỏ được cấu tạo tỉ mỉ và lắp ráp cẩn thận thận từ ngoài vỏ cho tới bên trong.', 1, 0, 149000),
(27, 'Xiaomi Redmi Note 14 8GB/128GB', 2, 4392000, 100, 1, 'Xiaomi Redmi Note 14 8GB-128GB.jpg', 'Hệ điều hành:\r\nXiaomi HyperOS (Android 14)\r\nChip xử lý (CPU):\r\nMediaTek Helio G99-Ultra 8 nhân\r\nTốc độ CPU:\r\n2 nhân 2.2 GHz & 6 nhân 2.0 GHz\r\nChip đồ họa (GPU):\r\nMali-G57 MC2\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n104 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\nKhông giới hạn', 1, 0, 5490000),
(28, 'Xiaomi Redmi Note 14 5G (12GB|256GB) Dimensity 7025 Ultra Ne', 2, 4472000, 100, 1, 'Xiaomi Redmi Note 14 5G (12GB-256GB) Dimensity 7025 Ultra.png', 'Nâng cấp lớn về ngoại hình, thiết kế lịch lãm nhất dòng Note\r\nBắt đầu từ dòng Note 13 năm ngoái, Redmi đã củng cố thiết kế ngoại hình của dòng Note. Do đó, ở dòng Note 14 mới, chúng ta thấy một thiết kế rất đặc biệt và kết cấu thân máy có thể so sánh với một chiếc hạm. Dòng Note 14 áp dụng thiết kế ống kính gắn ở giữa để nâng cao cảm giác sang trọng tổng thể, Redmi cũng sử dụng một vòng tròn có thiết kế họa tiết được chạm khắc tinh xảo ở vòng ngoài. Mặt sau thân máy cũng áp dụng thiết kế hyperboloid, giúp cải thiện đáng kể độ bám của toàn bộ máy.', 1, 0, 5590000),
(29, 'Xiaomi Redmi Note 13 5G (6|128) Dimensity 6080', 2, 3272000, 100, 1, 'Xiaomi Redmi Note 13 5G (6-128) Dimensity 6080.png', 'Xiaomi gần đây đã ra mắt sản phẩm tiếp theo của thương hiệu Redmi tại Trung Quốc , đó là Redmi Note 13 Series ngày 21 tháng 09 năm 2023 . Ở Note 13 series sẽ có các phiên bản sau : Redmi Note 13 ,  Redmi Note 13 Pro ,  Redmi Note 13 Pro Plus . Hứa hẹn là mẫu smartphone hàng đầu hiện nay ở phân khúc giá rẻ tầm trung khi được trang bị chipset mạnh mẽ cùng mức giá cực tốt . ', 1, 0, 4090000),
(30, 'Xiaomi Redmi Note 13 Pro 5G (8|128GB) Snap 7s Gen 2', 2, 3352000, 100, 1, 'Xiaomi Redmi Note 13 Pro 5G (8-128GB) Snap 7s Gen 2.png', 'Xiaomi gần đây đã ra mắt sản phẩm tiếp theo của thương hiệu Redmi tại Trung Quốc , đó là Redmi Note 13 Series ngày 21 tháng 09 năm 2023 . Ở Note 13 series sẽ có các phiên bản sau : Redmi Note 13 ,  Redmi Note 13 Pro ,  Redmi Note 13 Pro Plus . Hứa hẹn là mẫu smartphone hàng đầu hiện nay ở phân khúc giá rẻ tầm trung khi được trang bị chipset mạnh mẽ cùng mức giá cực tốt.', 1, 0, 4190000),
(31, 'Máy tính bảng Samsung Galaxy Tab S6 Lite', 3, 5592000, 100, 7, 'Máy tính bảng Samsung Galaxy Tab S6 Lite.jpg', 'Samsung Galaxy Tab S6 Lite (2024) là người bạn đồng hành lý tưởng trên hành trình sáng tạo và học tập. Với thiết kế nhỏ gọn, màn hình rộng 10.4 inch, mang lại cảm giác thoải mái mỗi khi cầm nắm. Hỗ trợ hệ điều hành One UI 6.1, bút S Pen tích hợp sẵn, sản phẩm mở ra không gian làm việc và giải trí đa năng dành cho bạn.', 1, 10, 6990000),
(32, 'Xiaomi Redmi Note 13 Pro+ 5G (12|256GB) Dimensity 7200 Ultra', 2, 4312000, 100, 1, 'Xiaomi Redmi Note 13 Pro+ 5G (12-256GB) Dimensity 7200 Ultra.png', 'Xiaomi gần đây đã ra mắt sản phẩm tiếp theo của thương hiệu Redmi tại Trung Quốc , đó là Redmi Note 13 Series ngày 21 tháng 09 năm 2023 . Ở Note 13 series sẽ có các phiên bản sau : Redmi Note 13 ,  Redmi Note 13 Pro ,  Redmi Note 13 Pro Plus . Hứa hẹn là mẫu smartphone hàng đầu hiện nay ở phân khúc giá rẻ tầm trung khi được trang bị chipset mạnh mẽ cùng mức giá cực tốt.', 1, 10, 5390000),
(33, 'iPad mini 6 Wifi 64GB', 1, 8712000, 100, 8, 'iPad mini 6 Wifi 64GB.jpg', 'Sức mạnh ấn tượng trong một thiết kế nhỏ gọn iPad Mini 6 64G Wifi  /A đánh dấu sự trở lại mạnh mẽ của dòng iPad mini luôn được ưa chuộng. Nút Touch ID tích hợp trên nút nguồn tiện dụng, chip A15 Bionic mới mẻ mang đến hiệu suất vượt trội.', 1, 10, 10890000),
(34, 'iPad Gen 9 Wifi 64GB', 1, 5272000, 100, 8, 'iPad Gen 9 Wifi 64GB.jpg\r\n\r\n', 'iPad Gen 9 64G Wifi có nhiều điểm nâng cấp đáng chú ý: công nghệ True Tone tinh chỉnh độ sáng màn hình, tính năng sân khấu trung tâm nổi bật chủ thể giữa khung hình,... Đây là dòng iPad thiết kế cũ giá mềm phù hợp với học sinh sinh viên, dân văn phòng,...', 1, 10, 6590000),
(35, 'iPad Gen 10 Wifi 64GB', 1, 6632000, 100, 8, 'iPad Gen 10 Wifi 64GB.jpg\r\n\r\n', 'Là phiên bản nâng cấp của iPad Gen 9, iPad Gen 10 2022 vừa được Apple cho ra mắt 18/10 với nhiều cải tiến về hiệu năng cũng như thế kế. Phiên bản Gen 10 có màn hình 10.9 inch và nhiều màu sắc hơn để lựa chọn.\r\n', 1, 10, 8290000),
(36, 'iPad Gen 10 Wifi 256GB', 1, 9592000, 100, 8, 'iPad Gen 10 Wifi 256GB.jpg', 'Là phiên bản nâng cấp của iPad Gen 9, iPad Gen 10 2022 vừa được Apple cho ra mắt 18/10 với nhiều cải tiến về hiệu năng cũng như thế kế. Phiên bản Gen 10 có màn hình 10.9 inch và nhiều màu sắc hơn để lựa chọn.', 1, 10, 11990000),
(37, 'iPad Gen 10 5G 64GB', 1, 9752000, 100, 8, 'iPad Gen 10 5G 64GB.jpg', 'Là dòng iPad phổ thông của Apple, iPad Gen 10 2022 đang nhận được nhiều sự quan tâm khi có được nhiều cải tiến về hiệu năng, thiết kế cũng như phong phú hơn về màu sắc. Nếu bạn đang quan tâm đến 1 chiếc iPad giá rẻ thì đây là 1 gợi ý không tồi.', 1, 10, 12190000),
(38, 'iPad mini 7 2024 Wifi 128GB', 1, 11032000, 100, 8, 'iPad mini 7 2024 Wifi 128GB.jpg', 'Sở hữu chip A17 Pro mạnh mẽ cùng màn hình Liquid Retina 8.3 inch sắc nét, iPad mini 7 2024 Wifi 128GB hứa hẹn mang đến trải nghiệm tablet hoàn hảo trong một thiết kế nhỏ gọn chỉ 8.3 inch, đáp ứng đa dạng nhu cầu từ giải trí đến công việc.', 1, 10, 13790000),
(39, 'iPad Air 6 M2 11 inch Wifi 128GB', 1, 11192000, 100, 8, 'iPad Air 6 M2 11 inch Wifi 128GB.jpg', 'iPad Air 11 inch M2 Wifi 128GB là biểu tượng của sự kết hợp hoàn hảo giữa sức mạnh công nghệ và thiết kế hiện đại. Với chip Apple M2 mạnh mẽ, màn hình Retina IPS 11 inch sống động và dung lượng lưu trữ 128GB, chiếc iPad này mang đến hiệu suất ấn tượng và trải nghiệm người dùng tuyệt vời. Không chỉ là công cụ làm việc hiệu quả, iPad Air M2 còn là người bạn đồng hành lý tưởng cho mọi nhu cầu giải trí.', 1, 10, 13990000),
(40, 'iPad mini 7 2024 Wifi 256GB', 1, 12792000, 100, 8, 'iPad mini 7 2024 Wifi 256GB.jpg', 'Tối ưu cho người dùng chuyên nghiệp với bộ nhớ 256GB rộng rãi cùng chip A17 Pro mạnh mẽ, iPad mini 7 2024 Wifi là chiếc tablet nhỏ gọn đáp ứng xuất sắc mọi nhu cầu từ làm việc đến giải trí với màn hình Liquid Retina 8.3 inch sắc nét.', 1, 10, 15990000),
(41, 'iPad Gen 10 5G 256GB', 1, 12792000, 100, 8, 'iPad Gen 10 5G 256GB.jpg', 'Là dòng iPad phổ thông của Apple, iPad Gen 10 2022 đang nhận được nhiều sự quan tâm khi có được nhiều cải tiến về hiệu năng, thiết kế cũng như phong phú hơn về màu sắc. Nếu bạn đang quan tâm đến 1 chiếc iPad giá rẻ thì đây là 1 gợi ý không tồi.', 1, 10, 15990000),
(42, 'iPad Air 6 M2 11 inch Wifi 256GB', 1, 13192000, 100, 8, 'iPad Air 6 M2 11 inch Wifi 256GB.jpg', 'Bạn đang tìm kiếm một chiếc máy tính bảng vừa mạnh mẽ, vừa sang trọng? Hãy để iPad Air 11 inch M2 Wifi 256GB thổi bay mọi nghi ngờ của bạn! Sở hữu chip Apple M2 đột phá, màn hình Retina IPS 11 inch sống động và bộ nhớ trong rộng rãi lên đến 256GB, chiếc iPad này sẵn sàng đáp ứng mọi thử thách từ công việc đến giải trí.', 1, 10, 16490000),
(43, 'iPad mini 7 2024 5G 128GB', 1, 13512000, 100, 8, 'iPad mini 7 2024 5G 128GB.jpg', 'Là thế hệ iPad mini mạnh mẽ nhất từ trước đến nay với chip A17 Pro, màn hình Liquid Retina 8.3 inch sắc nét cùng khả năng kết nối 5G, iPad Mini 7 2024 hứa hẹn mang đến trải nghiệm di động hoàn hảo cho người dùng trong một thiết kế nhỏ gọn chỉ 300g.', 1, 10, 16890000),
(44, 'iPad Air 6 M2 11 inch 5G 128GB', 1, 14552000, 100, 8, 'iPad Air 6 M2 11 inch 5G 128GB.jpg', 'Trong năm 2024, Apple lại tiếp tục ghi dấu ấn với sự ra mắt của iPad Air M2 11 inch. Sự kết hợp tuyệt vời giữa vẻ đẹp tinh tế, sức mạnh xử lý đỉnh cao và tính di động vượt trội đã biến chiếc máy tính bảng này trở thành người bạn đồng hành hoàn hảo cho mọi nhu cầu làm việc và giải trí hiện đại.', 1, 10, 18190000),
(45, 'iPad Air 6 M2 13 inch Wifi 128GB', 1, 16232000, 100, 8, 'iPad Air 6 M2 13 inch Wifi 128GB.jpg', 'Thỏa mãn nhu cầu của những người dùng khắt khe về thiết kế lẫn sức mạnh xử lý, mẫu iPad Air M2 13 inch mới nhất của Apple hứa hẹn sẽ đem đến trải nghiệm di động tối ưu trên một thiết bị cao cấp, đẳng cấp. Với những ưu điểm vượt trội, chiếc máy tính bảng này chắc chắn sẽ chinh phục bất cứ ai yêu thích sự di động tiện lợi nhưng không đánh đổi hiệu năng và trải nghiệm đỉnh cao.', 1, 10, 20290000),
(46, 'iPad Air 6 M2 11 inch 5G 256GB', 1, 16792000, 100, 8, 'iPad Air 6 M2 11 inch 5G 256GB.jpg', 'Kỷ nguyên di động đã đạt đến đỉnh cao mới với sự ra mắt của iPad Air M2 11 inch - chiếc máy tính bảng tuyệt đỉnh kết hợp giữa vẻ đẹp sang trọng, sức mạnh đột phá và tính di động vượt trội. Được trang bị con chip Apple M2 mạnh mẽ đỉnh cao, màn hình Liquid Retina rực rỡ và hỗ trợ tối đa cho các công cụ sáng tạo như Apple Pencil Pro, iPad Air M2 hứa hẹn sẽ là người bạn đồng hành hoàn hảo cho mọi nhu cầu làm việc, học tập và giải trí đa phương tiện của thời đại hiện đại.', 1, 10, 20990000),
(47, 'iPad Air 6 M2 13 inch Wifi 256GB', 1, 18312000, 100, 8, 'iPad Air 6 M2 13 inch Wifi 256GB.jpg', 'Trong thế giới công nghệ không ngừng tiến bộ, Apple tiếp tục khẳng định vị thế dẫn đầu với sự ra mắt của iPad Air M2 13 inch. Chiếc máy tính bảng này là sự kết hợp hoàn hảo giữa vẻ ngoài sang trọng và hiệu năng đỉnh cao, hứa hẹn mang đến những trải nghiệm di động vượt trội.', 1, 10, 22890000),
(48, 'iPad Air 6 M2 13 inch 5G 128GB', 1, 19032000, 100, 8, 'iPad Air 6 M2 13 inch 5G 128GB.jpg', 'iPad Air thế hệ mới năm 2024 đánh dấu một bước tiến vượt bậc của Apple trong phân khúc máy tính bảng khi mang trên mình con chip M2 mạnh mẽ cùng màn hình lớn 13 inch chưa từng có trên dòng Air trước đây. Sản phẩm này hứa hẹn sẽ mang đến những trải nghiệm đột phá về hiệu năng, đồ họa và khả năng xử lý AI cũng như không gian hiển thị rộng rãi hơn để phục vụ cho các tác vụ học tập, làm việc và sáng tạo.', 1, 10, 23790000),
(49, 'iPad Pro M4 11 inch Wifi 256GB', 1, 21272000, 100, 8, 'iPad Pro M4 11 inch Wifi 256GB.jpg', 'Apple vừa trình làng phiên bản iPad Pro M4 11 inch WiFi mới nhất, mang đến nhiều cải tiến về hiệu năng xử lý, thiết kế mỏng nhẹ cùng khả năng hiển thị tuyệt vời. Đây chính là mẫu máy tính bảng chuyên nghiệp hàng đầu dành cho các tác vụ sáng tạo và đa nhiệm.', 1, 10, 26590000),
(50, 'iPad Air 6 M2 13 inch 5G 256GB', 1, 21432000, 100, 8, 'iPad Air 6 M2 13 inch 5G 256GB.jpg', 'Apple đã mang đến một bước tiến vượt bậc trong phân khúc máy tính bảng với iPad Air thế hệ mới năm 2024. Sản phẩm này được trang bị con chip M2 mạnh mẽ và màn hình lớn 13 inch, một kích thước chưa từng có trên dòng Air trước đây. iPad Air 13 inch M2 hứa hẹn sẽ mang đến những trải nghiệm đột phá về hiệu năng, đồ họa, khả năng xử lý AI cũng như không gian hiển thị rộng rãi hơn để phục vụ cho các tác vụ học tập, làm việc và sáng tạo.', 1, 30, 26790000),
(51, 'iPad Pro M4 11 inch 5G 256GB', 1, 25592000, 100, 8, 'iPad Pro M4 11 inch 5G 256GB.jpg', 'iPad Pro M4 11 inch đánh dấu một bước tiến mới trong việc tối ưu hóa hiệu năng và trải nghiệm người dùng cho các tác vụ chuyên nghiệp. Con chip M4 tiên tiến mang đến sức mạnh xử lý vượt trội, cho phép người dùng thực hiện các nhiệm vụ phức tạp một cách trơn tru.', 1, 30, 31990000),
(52, 'iPad Pro M4 11 inch Wifi 512GB', 1, 25752000, 100, 8, 'iPad Pro M4 11 inch Wifi 512GB.jpg', 'Nếu bạn đang tìm kiếm một trợ lý đắc lực để cùng khám phá những tác phẩm đỉnh cao nhất, thì iPad Pro M4 11 inch WiFi 256GB chính là câu trả lời hoàn hảo. Mẫu tablet chuyên nghiệp đỉnh cao này sẽ mang đến cho bạn sức mạnh vô song trong khả năng đa nhiệm và sáng tạo.', 1, 30, 32190000),
(53, 'Máy tính bảng HONOR Pad X8a', 10, 3352000, 100, 7, 'Máy tính bảng HONOR Pad X8a.jpg', 'HONOR Pad X8a gây ấn tượng với viên pin lớn cho thời gian chờ lên đến 56 ngày, màn hình 11 inch cân đối, âm thanh sống động và hiệu năng ổn định, mang đến sự tiện lợi và trải nghiệm trọn vẹn cho cả công việc lẫn giải trí hàng ngày.', 1, 30, 4190000),
(54, 'Máy tính bảng Xiaomi Pad 6', 2, 7192000, 100, 7, 'Máy tính bảng Xiaomi Pad 6.jpg', 'Xiaomi tiếp tục định nghĩa công nghệ với sáng kiến mới nhất của mình, Xiaomi Pad 6. Với thiết kế viền kim loại sang trọng, chiếc máy tính bảng này kết hợp sự thanh lịch với hiệu suất mạnh mẽ để đáp ứng tất cả nhu cầu công việc và giải trí của bạn.', 1, 30, 8990000),
(55, 'Máy tính bảng Xiaomi Pad 6S Pro', 2, 10792000, 100, 7, 'Máy tính bảng Xiaomi Pad 6S Pro.jpg', 'Xiaomi Pad 6S Pro là chiếc máy tính bảng mạnh mẽ với màn hình lớn sắc nét, hiệu năng vượt trội và tính năng thông minh. Sản phẩm kết hợp hoàn hảo giữa thiết kế tinh tế và công nghệ tiên tiến, đáp ứng tốt nhu cầu công việc lẫn giải trí.', 1, 30, 13490000),
(56, 'Máy tính bảng OPPO Pad 3 Pro', 4, 13592000, 100, 7, 'Máy tính bảng OPPO Pad 3 Pro.jpg', 'OPPO Pad 3 Pro là chiếc máy tính bảng lý tưởng cho những ai đam mê sáng tạo. Trang bị vi xử lý mạnh mẽ từ Qualcomm cùng các tính năng AI độc đáo, Pad 3 Pro mang đến hiệu suất ấn tượng, giúp xử lý mượt mà mọi tác vụ từ thiết kế đồ họa đến chỉnh sửa video.', 1, 30, 16990000),
(57, 'Máy tính bảng OPPO Pad 2', 4, 7832000, 100, 7, 'Máy tính bảng OPPO Pad 2.jpg', 'OPPO Pad 2 là sản phẩm mới của OPPO trong công cuộc chạy đua công nghệ trên thị trường máy tính bảng. Máy thu hút được khá nhiều sự quan tâm khi trang bị một màn hình lớn, con chip mạnh trong tầm giá cùng một viên pin lớn cho trải nghiệm dài lâu mà ít khi gặp phải gián đoạn.', 1, 30, 9790000),
(58, 'Máy tính bảng OPPO Pad Air', 4, 3432000, 100, 7, 'Máy tính bảng OPPO Pad Air.jpg', 'OPPO Pad Air là chiếc máy tính bảng đầu tiên OPPO phát hành chính hãng và kinh doanh tại thị trường Việt Nam. Với thông số khá ấn tượng cùng mức giá bán hấp dẫn giúp cho máy trở thành một đối thủ đáng gờm so với các tablet khác trên thị trường.', 1, 30, 4290000),
(59, 'Tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41', 4, 632000, 100, 5, 'Tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41.jpg', 'Thời lượng pin tai nghe:\r\nDùng 7 giờ - Sạc 1.5 giờ\r\nThời lượng pin hộp sạc:\r\nDùng 28 giờ - Sạc 3 giờ\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\ncodec SBC\r\nCông nghệ ENC\r\ncodec AAC\r\nTương thích:\r\nAndroid\r\niOS (iPhone)\r\nỨng dụng kết nối:\r\nHeyMelody App\r\nTiện ích:\r\nChống nước IPX4\r\nGame Mode\r\nCó mic thoại\r\nChụp ảnh nhanh\r\nKết nối cùng lúc:\r\n1 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.2\r\nĐiều khiển:\r\nCảm ứng chạm\r\nPhím điều khiển:\r\nTăng/giảm âm lượng\r\nChuyển bài hát\r\nNhận/Ngắt cuộc gọi\r\nKích thước:\r\nDài 2.1 cm - Rộng 2.2 cm - Cao 3.4 cm\r\nKhối lượng:\r\n4 g', 1, 30, 790000),
(60, 'Máy tính bảng Lenovo Tab M11 4G', 9, 4232000, 100, 7, 'Máy tính bảng Lenovo Tab M11 4G.jpg', 'Lenovo Tab M11 4G 4GB/128GB mở ra thế giới giải trí sinh động với màn hình IPS LCD 11 inch, độ phân giải 1200 x 1920 Pixels, tần số quét 90 Hz. Âm thanh Dolby Atmos và tính năng Google Kids Space biến tablet này thành công cụ giải trí và học tập tuyệt vời cho cả gia đình.', 1, 30, 5290000),
(61, 'Tai nghe TWS Samsung Galaxy Buds3 Pro R630N', 3, 4072000, 100, 5, 'Tai nghe TWS Samsung Galaxy Buds3 Pro R630N.jpg', 'Thời lượng pin tai nghe:\r\nDùng 7 giờ - Sạc Hãng không công bố\r\nThời lượng pin hộp sạc:\r\nDùng 30 giờ - Sạc Hãng không công bố\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nDolby Atmos\r\nCông nghệ phát sóng Auracast\r\nAdaptive Noise Control\r\nAdaptive EQ\r\n360 Reality Audio\r\nTương thích:\r\nmacOS\r\nAndroid, iOS, Windows\r\nỨng dụng kết nối:\r\nGalaxy Wearable\r\nTiện ích:\r\nPhiên dịch trực tiếp\r\nThanh ánh sáng Blade Lights\r\nChống nước & bụi IP57\r\nSạc không dây\r\nTự động chuyển đổi kết nối linh hoạt (Auto Switch)\r\nCó mic thoại\r\nSạc nhanh\r\n360 Reality Audio\r\nGalaxy AI\r\nKết nối cùng lúc:\r\n1 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.4\r\nĐiều khiển:\r\nCảm ứng chạm/vuốt\r\nGiọng nói (Tiếng Anh, Hàn)\r\nPhím điều khiển:\r\nTăng/giảm âm lượng\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nChuyển chế độ\r\nNhận/Ngắt cuộc gọi\r\nKích thước:\r\nDài 3.2 cm - Rộng 2.02 cm - Cao 1.8 cm\r\nKhối lượng:\r\n5.4 g', 1, 10, 5090000),
(62, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 4 ETEE1', 4, 1032000, 100, 5, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 4 ETEE1.jpg', 'Thời lượng pin tai nghe:\r\nDùng 11.5 giờ - Sạc 1 giờ\r\nThời lượng pin hộp sạc:\r\nDùng 42 giờ - Sạc Khoảng 80 phút\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nChống ồn chủ động\r\nTương thích:\r\nmacOS\r\nAndroid, iOS, Windows\r\nỨng dụng kết nối:\r\nHeyMelody App\r\nTiện ích:\r\nChống nước & bụi IP55\r\nCó mic thoại\r\n2 Micro hỗ trợ AI\r\nKết nối cùng lúc:\r\n2 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.4\r\nĐiều khiển:\r\nCảm ứng\r\nPhím điều khiển:\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nChuyển chế độ\r\nNhận/Ngắt cuộc gọi\r\nKích thước:\r\nDài 2.8 cm - Rộng 2.1 cm - Cao 1.7 cm\r\nKhối lượng:\r\n4.2 g', 1, 10, 1290000),
(63, 'Tai nghe Bluetooth True Wireless OPPO Enco Buds 2 Pro E510A', 4, 816000, 100, 5, 'Tai nghe Bluetooth True Wireless OPPO Enco Buds 2 Pro E510A.jpg', 'Thời lượng pin tai nghe:\r\nDùng 8 giờ - Sạc 2 giờ\r\nThời lượng pin hộp sạc:\r\nDùng 38 giờ - Sạc 2 giờ\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nDolby Atmos\r\nDirac Audio Tuner\r\nDynamic Driver 12.4 mm\r\nCông nghệ ENC\r\nTương thích:\r\nmacOS\r\nAndroid, iOS, Windows\r\nỨng dụng kết nối:\r\nHeyMelody App\r\nTiện ích:\r\nChống nước & bụi IP55\r\nCó mic thoại\r\n2 Micro hỗ trợ AI\r\nKết nối cùng lúc:\r\n1 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.3\r\nĐiều khiển:\r\nCảm ứng chạm\r\nPhím điều khiển:\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nNhận/Ngắt cuộc gọi\r\nKích thước:\r\nDài 2.85 cm - Rộng 2.02 cm - Cao 2.3 cm\r\nKhối lượng:\r\n4.3 g ± 0.1 g', 1, 10, 1020000),
(64, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 3 ETE31', 4, 952000, 100, 5, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 3 ETE31.png', 'Thời lượng pin tai nghe:\r\nDùng 6 giờ - Sạc 1 giờ\r\nThời lượng pin hộp sạc:\r\nDùng 25 giờ - Sạc 2 giờ\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nÂm thanh Hi-Fi\r\nÂm thanh vòm OPPO Alive\r\nTương thích:\r\nAndroid\r\niOS (iPhone)\r\nmacOS (Macbook, iMac)\r\nWindows\r\nỨng dụng kết nối:\r\nHeyMelody App\r\nTiện ích:\r\nChống nước & bụi IP54\r\nHỗ trợ chụp ảnh\r\nTrợ lý ảo Google\r\nKhử tiếng ồn AI\r\nKết nối cùng lúc:\r\n2 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.3\r\nĐiều khiển:\r\nCảm ứng chạm\r\nPhím điều khiển:\r\nTăng/giảm âm lượng\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nBật trợ lí ảo\r\nNhận/Ngắt cuộc gọi\r\nHỗ trợ chụp ảnh\r\nKích thước:\r\nDài 3.31 cm - Rộng 1.845 cm - Cao 1.71 cm\r\nKhối lượng:\r\n3.75 g', 1, 10, 1190000),
(65, 'Tai nghe TWS Samsung Galaxy Buds3 R530N', 3, 2872000, 100, 5, 'Tai nghe TWS Samsung Galaxy Buds3 R530N.jpg', 'Thời lượng pin tai nghe:\r\nDùng 6 giờ - Sạc Hãng không công bố\r\nThời lượng pin hộp sạc:\r\nDùng 30 giờ - Sạc Hãng không công bố\r\nCổng sạc:\r\nType-C\r\nCông nghệ âm thanh:\r\nCông nghệ phát sóng Auracast\r\nÂm thanh Hi-Fi\r\nActive Noise Cancelling\r\nAdaptive EQ\r\n360 Reality Audio\r\nTương thích:\r\nAndroid\r\niOS (iPhone)\r\nWindows\r\nỨng dụng kết nối:\r\nGalaxy Wearable\r\nTiện ích:\r\nPhiên dịch trực tiếp\r\nSạc không dây\r\nTự động chuyển đổi kết nối linh hoạt (Auto Switch)\r\nChống nước IP57\r\nCó mic thoại\r\nSạc nhanh\r\n360 Reality Audio\r\nChống ồn\r\nGalaxy AI\r\nKết nối cùng lúc:\r\n1 thiết bị\r\nCông nghệ kết nối:\r\nBluetooth 5.4\r\nĐiều khiển:\r\nCảm ứng chạm/vuốt\r\nGiọng nói (Tiếng Anh, Hàn)\r\nPhím điều khiển:\r\nTăng/giảm âm lượng\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nChuyển chế độ\r\nNhận/Ngắt cuộc gọi\r\nBật/Tắt chống ồn\r\nKích thước:\r\nDài 3.1 cm - Rộng 1.78 cm - Cao 1.7 cm\r\nKhối lượng:\r\n4.7 g', 1, 10, 3590000),
(66, 'Đồng hồ Citizen 42 mm Nam BU0060-09H', 12, 17188000, 100, 6, 'Đồng hồ Citizen 42 mm Nam BU0060-09H.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n42 mm\r\nChất liệu dây:\r\nDa tổng hợp\r\nĐộ rộng dây:\r\n21 mm\r\nChất liệu khung viền:\r\nTitanium\r\nĐộ dày mặt:\r\n12.2 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nTên bộ máy:\r\nHãng không công bố\r\nThời gian sử dụng pin:\r\nKhoảng 6 - 8 năm\r\nKháng nước:\r\n10 ATM - Tắm, bơi\r\nTiện ích:\r\nKim dạ quang\r\nLịch ngày - thứ\r\nLịch tháng\r\nLịch tuần trăng\r\nNguồn năng lượng:\r\nÁnh sáng', 1, 10, 21485000),
(67, 'Đồng hồ FREDERIQUE CONSTANT Classics 40 mm Nam FC-335MC4P6B2', 13, 52624000, 101, 6, 'Đồng hồ FREDERIQUE CONSTANT Classics 40 mm Nam FC-335MC4P6B2.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n40 mm\r\nDây đeo:\r\nThép không gỉ\r\nĐộ rộng dây:\r\n22 mm\r\nKhung viền:\r\nThép không gỉ 316L\r\nĐộ dày mặt:\r\n10 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nTên bộ máy:\r\nFC-335 Automatic\r\nThời gian trữ dây cót:\r\nKhoảng 38 tiếng\r\nKháng nước:\r\n6 ATM - Đi mưa, tắm\r\nTiện ích:\r\nLịch ngày\r\nLịch tuần trăng\r\nNguồn năng lượng:\r\nCơ tự động', 1, 10, 65780000),
(68, 'Đồng hồ ORIENT SK 41.7 mm Nam RA-AA0B04R19B', 14, 52624000, 100, 6, 'Đồng hồ ORIENT SK 41.7 mm Nam RA-AA0B04R19B.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n41.7 mm\r\nDây đeo:\r\nThép không gỉ 316L\r\nĐộ rộng dây:\r\nHãng không công bố\r\nKhung viền:\r\nThép không gỉ 316L\r\nĐộ dày mặt:\r\n12.6 mm\r\nChất liệu mặt kính:\r\nKính khoáng Mineral\r\nTên bộ máy:\r\nHãng không công bố\r\nThời gian trữ dây cót:\r\nKhoảng 40 tiếng\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nTiện ích:\r\nKim dạ quang\r\nLịch ngày - thứ\r\nNguồn năng lượng:\r\nCơ tự động', 1, 10, 65780000),
(69, 'Đồng hồ Citizen 40 mm Nam BI5120-51Z', 12, 2948000, 100, 6, 'Đồng hồ Citizen 40 mm Nam BI5120-51Z.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n40 mm\r\nChất liệu dây:\r\nThép không gỉ\r\nĐộ rộng dây:\r\nHãng không công bố\r\nChất liệu khung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n7 mm\r\nChất liệu mặt kính:\r\nKính khoáng Mineral\r\nTên bộ máy:\r\nG112\r\nThời gian sử dụng pin:\r\nKhoảng 1 - 2 năm\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nTiện ích:\r\nLịch ngày\r\nNguồn năng lượng:\r\nPin\r\nLoại máy:\r\nPin (Quartz)', 1, 10, 3685000),
(70, 'Đồng hồ G-Shock 2100 45.4 mm Nam GA-B2100CD-1A4DR', 15, 4628800, 100, 6, 'Đồng hồ G-Shock 2100 45.4 mm Nam GA-B2100CD-1A4DR.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n45.4 mm\r\nChất liệu dây:\r\nNhựa\r\nĐộ rộng dây:\r\n24 mm\r\nChất liệu khung viền:\r\nCarbon + Nhựa Resin\r\nĐộ dày mặt:\r\n11.9 mm\r\nChất liệu mặt kính:\r\nKính khoáng Mineral\r\nTên bộ máy:\r\nHãng không công bố\r\nThời gian sử dụng pin:\r\nKhoảng 1.5 năm\r\nKháng nước:\r\n20 ATM - Bơi, lặn\r\nTiện ích:\r\nÂm bấm phím\r\nBluetooth\r\nĐồng hồ 24 giờ\r\nBáo thức\r\nBấm giờ thể thao\r\n2 đèn LED\r\nBấm giờ đếm ngược\r\nLịch ngày - thứ\r\nLịch tháng\r\nLịch năm\r\nGiờ thế giới\r\nTìm điện thoại\r\nNguồn năng lượng:\r\nÁnh sáng', 1, 45, 5786000),
(71, 'Đồng hồ KORLEX 36 mm Nữ KS015-01', 16, 1040000, 100, 6, 'Đồng hồ KORLEX 36 mm Nữ KS015-01.jpg', 'Đối tượng sử dụng:\r\nNữ\r\nĐường kính mặt:\r\n36 mm\r\nChất liệu dây:\r\nThép không gỉ\r\nĐộ rộng dây:\r\n16 mm\r\nChất liệu khung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n8 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nThời gian sử dụng pin:\r\nKhoảng 3 năm\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nTiện ích:\r\nLịch ngày\r\nNguồn năng lượng:\r\nPin\r\nLoại máy:\r\nPin (Quartz)', 1, 45, 1300000),
(72, 'Dây silicone Apple Watch Stride 49/45/44/42mm UNIQ', 16, 1176000, 100, 6, 'Dây silicone Apple Watch Stride 49454442mm UNIQ.png', 'Loại dây:\r\nDây đồng hồ thông minh\r\nDây Apple Watch\r\nĐộ rộng dây:\r\nHãng không công bố\r\nChất liệu dây:\r\nDây silicone', 1, 45, 1470000),
(73, 'Đồng hồ CITIZEN 32 mm Nữ EM0500-73L', 12, 1176000, 100, 6, 'Đồng hồ CITIZEN 32 mm Nữ EM0500-73L.jpg', 'Đối tượng sử dụng:\r\nNữ\r\nĐường kính mặt:\r\n32 mm\r\nChất liệu dây:\r\nThép không gỉ\r\nĐộ rộng dây:\r\n14 mm\r\nChất liệu khung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n7 mm\r\nChất liệu mặt kính:\r\nKính khoáng Mineral\r\nTên bộ máy:\r\nHãng không công bố\r\nThời gian sử dụng pin:\r\nHãng không công bố\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nNguồn năng lượng:\r\nÁnh sáng', 1, 45, 1470000),
(74, 'Đồng hồ Edox Delfin 43 mm Nam 88005-3CA-BUIR', 17, 28000000, 100, 6, 'Đồng hồ Edox Delfin 43 mm Nam 88005-3CA-BUIR.jpg', 'Nam\r\nĐường kính mặt:\r\n43 mm\r\nChất liệu dây:\r\nCao su\r\nĐộ rộng dây:\r\n25 mm\r\nChất liệu khung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n13 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nTên bộ máy:\r\nCaliber 88 (SW220-1)\r\nThời gian trữ dây cót:\r\nKhoảng 40 tiếng\r\nKháng nước:\r\n20 ATM - Bơi, lặn\r\nTiện ích:\r\nKim dạ quang\r\nLịch ngày - thứ\r\nNguồn năng lượng:\r\nCơ tự động', 1, 45, 35000000),
(75, 'Đồng hồ MVW Galaxy 43 mm Nam MSCA002-01-S3', 18, 3192000, 100, 6, 'Đồng hồ MVW Galaxy 43 mm Nam MSCA002-01-S3.jpg', 'Đối tượng sử dụng:\r\nNam\r\nĐường kính mặt:\r\n43 mm\r\nDây đeo:\r\nSilicone\r\nĐộ rộng dây:\r\n25 mm\r\nKhung viền:\r\nThép không gỉ\r\nĐộ dày mặt:\r\n13.7 mm\r\nChất liệu mặt kính:\r\nKính Sapphire\r\nTên bộ máy:\r\nJapan - automatic NH05\r\nThời gian trữ dây cót:\r\nKhoảng 36 tiếng\r\nKháng nước:\r\n5 ATM - Đi mưa, tắm\r\nTiện ích:\r\nLịch ngày\r\nKim dạ quang\r\nNguồn năng lượng:\r\nCơ tự động\r\nLoại máy:\r\nCơ tự động (Automatic)\r\nBộ sưu tập:\r\nGalaxy', 1, 45, 3990000),
(76, 'Ốp lưng MagSafe iPhone 15 Nhựa cứng viền dẻo JM Bayer II', 19, 200000, 100, 4, 'Ốp lưng MagSafe iPhone 15 Nhựa cứng viền dẻo JM Bayer II.jpg', 'Đặc điểm nổi bật\r\n\r\nSản phẩm có mặt lưng trong suốt, ốp lưng phù hợp với hầu hết mọi lứa tuổi sử dụng.\r\nChất liệu nhựa cứng viền dẻo bền bỉ, đảm bảo an toàn cho máy khi bị ngoại lực tác động.\r\nỐp lưng iPhone 15 có phần viền dẻo giúp dễ dàng tháo và lắp, không lo bị trầy phần khung của điện thoại.\r\nNhững đường nét trên ốp lưng JM được cắt khoét chỉn chu, kích cỡ vừa vặn với chiếc iPhone 15.\r\nSản phẩm hỗ trợ sạc không dây nhanh chóng mà không cần tháo ốp.', 1, 45, 250000),
(77, 'Ốp lưng Galaxy A16 Nhựa dẻo TPU có khe đựng thẻ Samsung', 19, 312000, 100, 4, 'Ốp lưng Galaxy A16 Nhựa dẻo TPU có khe đựng thẻ Samsung.jpg', '', 1, 45, 390000),
(78, 'Ốp lưng Galaxy S25+ Silicone Samsung', 3, 552000, 101, 4, 'Ốp lưng Galaxy S25+ Silicone Samsung.jpg', '', 1, 45, 690000),
(79, 'Ốp lưng iPhone 15 Plus Nhựa cứng viền dẻo Mipow Tempered Gla', 19, 280000, 100, 4, 'Ốp lưng iPhone 15 Plus Nhựa cứng viền dẻo Mipow Tempered Glass PS15B-CR.jpg', '', 1, 45, 350000),
(80, 'Ốp lưng Galaxy A55 Silicone Samsung', 19, 440000, 100, 4, 'Ốp lưng Galaxy A55 Silicone Samsung.jpg', 'Đặc điểm nổi bật\r\n\r\nỐp lưng Galaxy A55 có thiết kế đơn giản, tinh tế và đẹp mắt với gam màu đen sang trọng, mang đến cho bạn một phong cách thời thượng.\r\nChất liệu silicone mềm mại, nhẹ và thoải mái khi cầm nắm.\r\nỐp lưng có kiểu dáng chính xác, vừa vặn với điện thoại, đảm bảo khớp hoàn toàn với các khu vực camera, loa và cổng kết nối.\r\nSản phẩm giúp hạn chế bám bẩn và vân tay, giữ cho Galaxy A55 luôn sáng bóng và mới mẻ. ', 1, 45, 550000),
(81, 'Ốp lưng Galaxy S25 Ultra Nhựa cứng PC Da PU Samsung Kindsuit', 20, 1032000, 100, 4, 'Ốp lưng Galaxy S25 Ultra Nhựa cứng PC Da PU Samsung Kindsuit.jpg', '', 1, 45, 1290000),
(82, 'Ốp lưng Galaxy A24 Nhựa cứng Samsung', 20, 1032000, 100, 4, 'Ốp lưng Galaxy A24 Nhựa cứng Samsung.jpg', '', 1, 45, 1290000),
(83, 'Ốp lưng Galaxy A25 Nhựa dẻo Samsung SMAPP', 20, 200000, 100, 4, 'Ốp lưng Galaxy A25 Nhựa dẻo Samsung SMAPP.jpg', 'Đặc điểm nổi bật\r\n\r\nMang thiết kế tối giản, phù hợp sử dụng cho cả nam và nữ.\r\nỐp lưng làm từ nhựa dẻo bền bỉ, hạn chế trầy xước cho điện thoại do va đập.\r\nCác chi tiết trên ốp lưng được chế tác chính xác, cho thao tác bấm nhấn trơn tru.\r\nỐp lưng Galaxy A25 ôm vừa vặn điện thoại, giúp cầm nắm êm tay.\r\nSản phẩm dành riêng cho điện thoại Galaxy A25.', 1, 45, 250000),
(84, 'Bao da Galaxy A35 Samsung Thông minh', 21, 712000, 100, 4, 'Bao da Galaxy A35 Samsung Thông minh.jpg', 'Đặc điểm nổi bật\r\n\r\nDễ dàng xem thời gian, thông báo hay điều khiển âm nhạc mà không cần mở phần nắp gập của ốp lưng.\r\nỐp lưng Galaxy A35 được làm từ chất liệu giả da bền bỉ và sang trọng.\r\nBảo vệ màn hình và thân máy khỏi trầy xước, hư hỏng hiệu quả.\r\nHạn chế bám dính bụi bẩn, dấu vân tay, giữ cho Galaxy A35 luôn sạch sẽ.', 1, 45, 890000),
(85, 'Ốp lưng Galaxy Z Fold6 nhựa cứng siêu mỏng Samsung', 20, 552000, 103, 4, 'Ốp lưng Galaxy Z Fold6 nhựa cứng siêu mỏng Samsung.jpg', '', 1, 45, 690000),
(86, 'Ốp lưng Galaxy A16 Nhựa cứng PC mỏng Samsung Trong', 20, 312000, 101, 4, 'Ốp lưng Galaxy A16 Nhựa cứng PC mỏng Samsung Trong.jpg', '', 1, 10, 390000),
(87, 'Ốp lưng iPhone 11 Nhựa cứng viền dẻo COSANO SRTG270 Mèo', 20, 40000, 100, 4, 'Ốp lưng iPhone 11 Nhựa cứng viền dẻo COSANO SRTG270 Mèo.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế đơn giản, thời trang với hoa văn hình mèo con đáng yêu. \r\nSản phẩm chuyên dụng cho dòng iPhone 11.\r\nKích thước và thiết kế vừa khít với mọi chi tiết máy.\r\nỐp lưng chắc chắn, dễ tháo lắp nhờ làm từ nhựa cứng viền dẻo.', 1, 10, 50000),
(88, 'Ốp lưng Magsafe iPhone 15 Plus Vải tinh dệt Apple', 19, 312000, 100, 4, 'Ốp lưng Magsafe iPhone 15 Plus Vải tinh dệt Apple.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế trang nhã và thời thượng từ kiểu dáng đến màu sắc.\r\nỐp lưng Apple làm từ vải tinh dệt sang trọng, bề mặt mềm mại, cầm êm tay. \r\nỐp lưng iPhone 15 Plus hỗ trợ sạc không dây Magsafe, nạp pin nhanh chóng.\r\nThiết kế ốp lưng chuyên dụng cho dòng iPhone 15 Plus. ', 1, 10, 390000),
(89, 'Ốp lưng MagSafe iPhone 16 Pro Nhựa TPU PC ALU UNIQ HELDRO MA', 20, 792000, 100, 4, 'Ốp lưng MagSafe iPhone 16 Pro Nhựa TPU PC ALU UNIQ HELDRO MAX MAGCLICK WITH CAMERA STAND.jpg', '', 1, 10, 990000),
(90, 'Ốp lưng iPhone 14 Nhựa cứng viền dẻo SwitchEasy Artist', 20, 432000, 100, 4, 'Ốp lưng iPhone 14 Nhựa cứng viền dẻo SwitchEasy Artist.jpg', '', 1, 10, 540000),
(91, 'Cáp Type C 1m Ugreen 60126', 22, 128000, 100, 3, 'Cáp Type C 1m Ugreen 60126.jpg', 'Chức năng:\r\nTruyền dữ liệu\r\nSạc\r\nĐầu vào:\r\nUSB Type-A\r\nĐầu ra:\r\nType C: 5V - 3A\r\nĐộ dài dây:\r\n1 m\r\nCông suất tối đa:\r\n15 W', 1, 10, 160000),
(92, 'Cáp Lightning 1m Xmobile DR-L001X', 22, 152000, 101, 3, 'Cáp Lightning 1m Xmobile DR-L001X.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế nhỏ gọn, màu sắc nổi bật, trẻ trung, đẹp mắt.\r\nChiều dài dây cáp 1 m sử dụng tiện lợi.\r\nVỏ bọc bằng sợi nylon dai bền, hạn chế xoắn rối hay đứt gãy.\r\nDòng sạc tối đa 5V – 2.1A tương đương 10.5 W, cho tốc độ sạc nhanh, đường truyền ổn định.\r\nTương thích với các thiết bị iPhone 5, iPad 4 trở lên và các thiết bị dùng cổng Lightning.\r\nĐầu cáp USB kết nối tốt với adapter, sạc dự phòng, PC, laptop.\r\nDùng để sạc pin, sao chép, đồng bộ dữ liệu cho các thiết bị.', 1, 10, 190000),
(93, 'Cáp Type C - Lightning MFI 1m Ugreen 60759', 22, 152000, 101, 3, 'Cáp Type C - Lightning MFI 1m Ugreen 60759.jpg', 'Công nghệ/Tiện ích:\r\nHỗ trợ sạc nhanh\r\nChức năng:\r\nSạc\r\nTruyền dữ liệu\r\nĐầu vào:\r\nUSB Type-C\r\nĐầu ra:\r\nLightning: 60 W\r\nĐộ dài dây:\r\n1 m\r\nCông suất tối đa:\r\n60 W', 1, 10, 190000),
(94, 'Cáp Lightning 1m Xmobile DR-L001X', 22, 288000, 101, 3, 'Cáp Lightning 1m Xmobile DR-L001X.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế nhỏ gọn, màu sắc nổi bật, trẻ trung, đẹp mắt.\r\nChiều dài dây cáp 1 m sử dụng tiện lợi.\r\nVỏ bọc bằng sợi nylon dai bền, hạn chế xoắn rối hay đứt gãy.\r\nDòng sạc tối đa 5V – 2.1A tương đương 10.5 W, cho tốc độ sạc nhanh, đường truyền ổn định.\r\nTương thích với các thiết bị iPhone 5, iPad 4 trở lên và các thiết bị dùng cổng Lightning.\r\nĐầu cáp USB kết nối tốt với adapter, sạc dự phòng, PC, laptop.\r\nDùng để sạc pin, sao chép, đồng bộ dữ liệu cho các thiết bị.', 1, 10, 360000),
(95, 'Cáp Type C - Type C 1m Ugreen 70427', 22, 200000, 100, 3, 'Cáp Type C - Type C 1m Ugreen 70427.jpg', 'Công nghệ/Tiện ích:\r\nChip E-marker\r\nChức năng:\r\nSạc\r\nTruyền dữ liệu\r\nĐầu vào:\r\nUSB Type-C\r\nĐầu ra:\r\nType C: 100 W\r\nĐộ dài dây:\r\n1 m\r\nCông suất tối đa:\r\n100 W', 1, 10, 250000),
(96, 'Cáp Type C - Type C 1m Ugreen 50997', 22, 104000, 100, 3, 'Cáp Type C - Type C 1m Ugreen 50997.jpg', 'Chức năng:\r\nTruyền dữ liệu\r\nSạc\r\nĐầu vào:\r\nUSB Type-C\r\nĐầu ra:\r\nType C: 5V - 3A, 9V - 2A, 12V - 3A, 15V - 3A, 20V - 3A (Max 60 W)\r\nĐộ dài dây:\r\n1 m\r\nCông suất tối đa:\r\n60 W', 1, 10, 130000),
(97, 'Bộ Adapter Sạc 3 cổng Type C PD QC 4.0+ GaN 65W kèm Cáp Type', 22, 856000, 100, 2, 'Bộ Adapter Sạc 3 cổng Type C PD QC 4.0+ GaN 65W kèm Cáp Type C - Type C 1.5m Ugreen X755 25870.jpg', 'Model:\r\nX755 25870\r\nChức năng:\r\nSạc\r\nĐầu vào:\r\n100-240V~50/60Hz 1.8A\r\nĐầu ra:\r\nUSB: 5V - 3A, 9V - 2A, 12V - 1.5A, 10V - 2.25A (Max 22.5W)\r\nType C1: 5V - 3A, 9V - 3A, 12V - 3A, 15V - 3A, 20V - 3.25A, 3.3-21V - 3A (Max 65W)\r\nType C2: 5V - 3A, 9V - 3A, 12V - 3A, 15V - 3A, 20V - 3.25A, 21V - 3A (Max 65W)\r\nDòng sạc tối đa:\r\n65 W\r\nKích thước:\r\nDài 5.4 cm - Ngang 4 cm - Cao 3.2 cm\r\nCông nghệ/Tiện ích:\r\nCông nghệ GaN\r\nPower Delivery\r\nQuick Charge 4.0+', 1, 10, 1070000),
(98, 'Adapter Sạc 2 cổng USB Type C PD QC 3.0 GaN 35W Ugreen Nexod', 22, 856000, 100, 2, 'Adapter Sạc 2 cổng USB Type C PD QC 3.0 GaN 35W Ugreen Nexode CD350 15539.jpg', 'Model:\r\nCD350 15539\r\nChức năng:\r\nSạc\r\nĐầu vào:\r\n100-240V~50/60Hz, 900mA\r\nĐầu ra:\r\nUSB: 5V - 3A, 9V - 2A, 12V - 1.5A, 12V - 2.25A (Max 22.5W)\r\nType C: 5V - 3A, 9V - 3A, 12V - 2.9A, 15V - 2.33A, 20V - 1.75A (Max 35W)\r\nDòng sạc tối đa:\r\n35 W\r\nKích thước:\r\nDài 8.4 cm - Ngang 3.6 cm - Cao 3.6 cm\r\nCông nghệ/Tiện ích:\r\nCông nghệ GaN\r\nPower Delivery\r\nQuick Charge 4.0+', 1, 10, 1070000),
(99, 'Adapter Sạc Type C PD QC 4.0+ GaN 30W Ugreen Nexode CD319', 22, 280000, 100, 2, 'Adapter Sạc Type C PD QC 4.0+ GaN 30W Ugreen Nexode CD319.jpg', 'Model:\r\nCD319\r\nChức năng:\r\nSạc\r\nĐầu vào:\r\n100-240V~50/60Hz, 800mA\r\nĐầu ra:\r\nType C: 5V - 3A, 9V - 3A, 12V - 2.5A, 15V - 2A, 20V - 1.5A (Max 30W)\r\nDòng sạc tối đa:\r\n30 W\r\nCông nghệ/Tiện ích:\r\nCông nghệ GaN\r\nPower Delivery\r\nQuick Charge 4.0+', 1, 10, 350000),
(100, 'Adapter Sạc Type C PD GaN 30W Ugreen Robot Nexode 15550', 7, 480000, 100, 2, 'Adapter Sạc Type C PD GaN 30W Ugreen Robot Nexode 15550.jpg', 'Model:\r\nCD319\r\nChức năng:\r\nSạc\r\nĐầu vào:\r\n100-240V~50/60Hz, 800mA\r\nĐầu ra:\r\nType C: 5V - 3A, 9V - 3A, 12V - 2.5A, 15V - 2A, 20V - 1.5A (Max 30W)\r\nDòng sạc tối đa:\r\n30 W\r\nCông nghệ/Tiện ích:\r\nCông nghệ GaN\r\nPower Delivery\r\nQuick Charge 4.0+', 1, 19, 600000),
(101, '12345614134', 8, 123, 102, 5, '12345614134.jpg', '', 1, 0, 123),
(102, '2 vợ mới', 20, 2500, 103, 5, '479701876_632720099517391_685074965484852295_n.jpg', '', 1, 0, 2500),
(103, 'Phong Lê', 1, 1, 11, 3, 'Phong Lê.jpg', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `idTK` int(5) NOT NULL,
  `USERNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SDT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `HOTEN` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idQUYEN` int(2) NOT NULL DEFAULT 1,
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
(11, 'Xuân Cảnh Xuân Cảnh Xuân Cảnh ', '$2y$12$fMMjoSAHcsmCwQow0xGXgud6epKwXOgubFXp7ESfg006GjrKUeCO2', '0397161912', 'xuanc387911@gmail.com', 'Trương Xuân Cảnh', 1, 1),
(12, '0123456789', '$2y$12$y0XCvAmrMLui506qX75s3O7yNIQ26B5SZo0wNb61phCITFaNZxLwW', '0123456787', 'kemetao.upes@gmail.com', 'ài dố sì mà', 1, 1),
(13, 'tinhcha', '$2y$12$HcD85LlxGZg/Yg4JmCcp1u5Xiyqo04j96AjkU4QUpBw7pd6xFabZu', '0799697982', 'kememay.upes@gmail.com', 'ấy sì bà', 1, 1),
(14, '12345', '$2y$12$gwTIglcGqbd/XLvpfV0zyeHuxw1cVC3wE55ST5Nfye4YS9corNBQ6', '0799697983', 'ketiamay.upes@gmail.com', 'dồ ái mồ', 1, 1),
(15, '0123456780', '$2y$12$m9IqL/TLRksAkQ4.YRPmV.Bq2fndmuzL812j71PaNghoUf9AGaHa2', '0799697984', 'manbohiuthu2@gmail.com', 'hieu chu nhat', 1, 1),
(16, '0123456785', '$2y$12$rQoUf67jzp5fz.Fdmv8KUOKgfk/M7BRd5ns/ToglRChH8vKLdotdK', '0799697985', 'manbohiuthu3@gmail.com', 'hieu thu 7', 1, 1),
(17, '0987656764', '$2y$12$33hBtujgxAo0N9G5JRzFJuKEJsoWKNN1ARizShleyHgNaPDOGVVze', '0987656764', 'aaba@gmail.com', 'moi moi moi', 3, 1),
(18, '0858482144', '$2y$12$gYZ8DsQZHdoeH6KEAgGuBOBK2K7554FCQ1ugqjs/MtT2edPz9h8KC', '0858482144', 'thuong16052004@gmail.com', '12345', 3, 1),
(19, '0858482145', '$2y$12$PezdQLA4uILRc5ovsSwiFOdODj6ROmqtaLuK9D6swE7MT89zK6yKC', '0858482145', 'thuong16052004@gmail.com', 'www', 3, 1),
(20, '0858487778', '$2y$12$Pdphqh168riXjV.QPZEteekQzVDufTgqf.jTfLBI1sSnzaXds6gcO', '0858487778', 'thuong16052004@gmail.com', 'Võ Thị T', 2, 1),
(21, '0858482140', '$2y$12$8S/dyJ8OnIlAbrJZLqBjUunWfRfWCGJu1a.dxyEmLhSw/nZvcCOvC', '0858482140', 'thuong16052004@gmail.com', 'ttt', 2, 1),
(22, '0858482111', '$2y$12$7dTYKEaykVzLjf6T70PL0epVwRusQCJBhIb40xCl8Hkw7vqXKxcrq', '0858482111', 'aaa@gmail.com', 'Nguyễn Văn A', 2, 1),
(23, '0123333333', '$2y$12$w2rL56W8zgOxnvrRO30mYezVk6Ep3ObKc12p2EtibdJ0GPk4sN9yC', '0123333333', 'aba@gmail.com', 'Nguyễn Văn B', 2, 1),
(24, 'NV24', '$2y$12$wU/xVsT4qat07QeUsiQfwOjK4bEQj6XuGLoqQJ1F8Il4Wn3wiw2P.', '0111111111', 'acv@gmail.com', 'Mất kết lối', 2, 1),
(25, 'NV25', '$2y$12$UY7mXcsghzNyi2DbRUJqv.gLBmARkPG4hXbrMbU/l2jQXv2F7ZFU2', '0234567891', 'acv@gmail.com', 'Mất th', 2, 1),
(26, 'NV26', '$2y$12$klxL3IusLpdLTcHjjVMFdeNkY5ez59JrUovjTqGesZkSORqloLmlS', '0234567888', 'acv@gmail.com', 'Mất tttttt', 2, 1),
(27, 'NV27', '$2y$12$xYXzqCfwklMaZbBu6MFxK.j0nNzeU93SxR92oY109z1Aw8rOaXL4u', '0234567800', 'acv@gmail.com', 'Mất', 2, 1),
(28, 'NV28', '$2y$12$Gdrcq7TZ0/wYpN4LDU1Zd.DPZW8JC5frI4pBGx7QiWLe3COpF4TBG', '0234567833', 'acv@gmail.com', 'Mất não', 2, 1),
(29, 'NV29', '$2y$12$.UQAf8sFK5o3t8G/Pgom..s/5bOxgiCpwr6.ZPPQBZFZ2wx45dH8a', '0234567855', 'acv@gmail.com', 'Mất nãoo', 2, 1),
(30, 'NV30', '$2y$12$t8ZY4UDR1DOPD9YvGLbPbuZTbv26U9/36OYlCA4ncOcBOZ.x/qlJa', '0332244669', 'truongsinhcanh1910@gmail.com', 'CHQT', 5, 1),
(31, 'NV31', '$2y$12$BRvWxhW53MiCPryNuc5cbexsyoF9tVTEoraJrWjGM3VB7ctdWD1/2', '0332244668', 'aba@gmail.com', 'CHHHH', 2, 2),
(32, 'Nguoi dep trai', '$2y$12$AKvF3ISier6aVTnKs0cV9.z/2qmAXjTwr0ErG83a0TbaFOPBZWTWi', '0896727670', 'khuong@gmail.com', 'Trần Duy Khương', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trangthaidonhang`
--

CREATE TABLE `trangthaidonhang` (
  `idSTATUS` int(1) NOT NULL,
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
  ADD KEY `sp-ctgh` (`idSP`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `hd-cthd` (`idHD`),
  ADD KEY `sp-cthd` (`idSP`);

--
-- Indexes for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD KEY `tk-ctkm` (`idTK`),
  ADD KEY `km-ctkm` (`idKM`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD KEY `pn-ctpn` (`idPN`),
  ADD KEY `sp-ctpn` (`idSP`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_san_pham` (`id_san_pham`);

--
-- Indexes for table `chitietthunhap`
--
ALTER TABLE `chitietthunhap`
  ADD KEY `nv-cttn` (`idNV`),
  ADD KEY `tn-cttn` (`idTN`);

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
-- Indexes for table `khoanthunhap`
--
ALTER TABLE `khoanthunhap`
  ADD PRIMARY KEY (`idTN`);

--
-- Indexes for table `khoantruluong`
--
ALTER TABLE `khoantruluong`
  ADD PRIMARY KEY (`idTRU`);

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
  ADD PRIMARY KEY (`idNGAYLE`);

--
-- Indexes for table `ngaynghi`
--
ALTER TABLE `ngaynghi`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangchamcong`
--
ALTER TABLE `bangchamcong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `bangluong`
--
ALTER TABLE `bangluong`
  MODIFY `idLUONG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `chucnang`
--
ALTER TABLE `chucnang`
  MODIFY `idCN` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `idDM` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idHD` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `dvvanchuyen`
--
ALTER TABLE `dvvanchuyen`
  MODIFY `idVC` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hang`
--
ALTER TABLE `hang`
  MODIFY `idHANG` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `khoanthunhap`
--
ALTER TABLE `khoanthunhap`
  MODIFY `idTN` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khoantruluong`
--
ALTER TABLE `khoantruluong`
  MODIFY `idTRU` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MAKHUYENMAI` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ngayle`
--
ALTER TABLE `ngayle`
  MODIFY `idNGAYLE` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `idNCC` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `idPN` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ptthanhtoan`
--
ALTER TABLE `ptthanhtoan`
  MODIFY `idThanhToan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `idQUYEN` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `idTK` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  MODIFY `idSTATUS` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `bangluong`
--
ALTER TABLE `bangluong`
  ADD CONSTRAINT `nv-luong` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idTK`);

--
-- Constraints for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `sp-ctgh` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`),
  ADD CONSTRAINT `tk-ctgh` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `hd-cthd` FOREIGN KEY (`idHD`) REFERENCES `donhang` (`idHD`),
  ADD CONSTRAINT `sp-cthd` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`);

--
-- Constraints for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD CONSTRAINT `km-ctkm` FOREIGN KEY (`idKM`) REFERENCES `khuyenmai` (`MAKHUYENMAI`),
  ADD CONSTRAINT `tk-ctkm` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `pn-ctpn` FOREIGN KEY (`idPN`) REFERENCES `phieunhap` (`idPN`),
  ADD CONSTRAINT `sp-ctpn` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`);

--
-- Constraints for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`id_san_pham`) REFERENCES `sanpham` (`idSP`) ON DELETE CASCADE;

--
-- Constraints for table `chitietthunhap`
--
ALTER TABLE `chitietthunhap`
  ADD CONSTRAINT `nv-cttn` FOREIGN KEY (`idNV`) REFERENCES `nhanvien` (`idTK`),
  ADD CONSTRAINT `tn-cttn` FOREIGN KEY (`idTN`) REFERENCES `khoanthunhap` (`idTN`);

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
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `sp-rate` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`),
  ADD CONSTRAINT `tk-rate` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`idTK`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `DM-SP` FOREIGN KEY (`idDM`) REFERENCES `danhmuc` (`idDM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Hang-SP` FOREIGN KEY (`HANG`) REFERENCES `hang` (`idHANG`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `quyen-tk` FOREIGN KEY (`idQUYEN`) REFERENCES `quyen` (`idQUYEN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
