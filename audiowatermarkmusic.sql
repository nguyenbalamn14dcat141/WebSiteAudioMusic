-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2018 lúc 03:48 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `audiowatermarkdemo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multimedia`
--

CREATE TABLE `multimedia` (
  `id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `song` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `multimedia`
--

INSERT INTO `multimedia` (`id`, `parentid`, `song`, `singer`, `url`, `type`, `owner`) VALUES
('1bQ2iZjjSF2EQeR4o6injkzPBTCmgnAIl', '1bQ2iZjjSF2EQeR4o6injkzPBTCmgnAIl', 'Cho Anh Quay Về', 'Trịnh Đình Quang', 'https://drive.google.com/file/d/1bQ2iZjjSF2EQeR4o6injkzPBTCmgnAIl/view', 'music', 'administrator'),
('1eFIvF3ZNxyid8rAYKH5gXhY_kmCyjn9w', '1eFIvF3ZNxyid8rAYKH5gXhY_kmCyjn9w', 'Gọi Tên Em Trong Đêm', 'The Men', 'https://drive.google.com/file/d/1eFIvF3ZNxyid8rAYKH5gXhY_kmCyjn9w/view', 'music', 'administrator'),
('1JfJu16351HdyiwgFeWQLZ-VUeuQ6Nq13', '1JfJu16351HdyiwgFeWQLZ-VUeuQ6Nq13', 'Chúng Ta Không Thuộc Về Nhau', 'Sơn Tùng MTP', 'https://drive.google.com/file/d/1JfJu16351HdyiwgFeWQLZ-VUeuQ6Nq13/view', 'music', 'administrator'),
('1WZ07ajMZD4D8SLtu17m2cOdm-hJ9p3ji', '1WZ07ajMZD4D8SLtu17m2cOdm-hJ9p3ji', 'Nơi Đây Anh Chờ Em', 'Lee Minh Huy', 'https://drive.google.com/file/d/1WZ07ajMZD4D8SLtu17m2cOdm-hJ9p3ji/view', 'music', 'administrator'),
('1zWG-s5NxtpG87fBU55mkOuS13u2q0BBv', '1zWG-s5NxtpG87fBU55mkOuS13u2q0BBv', 'Giả Vờ Thương Anh Được Không', 'Chu Bin', 'https://drive.google.com/file/d/1zWG-s5NxtpG87fBU55mkOuS13u2q0BBv/view', 'music', 'administrator'),
('logo', 'logo', NULL, NULL, 'http://localhost/WebSiteMusicAudio/picture/logo.png', 'picture', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multimediatype`
--

CREATE TABLE `multimediatype` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `multimediatype`
--

INSERT INTO `multimediatype` (`id`) VALUES
('music'),
('picture'),
('video');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`) VALUES
('admin'),
('user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `siteinfo`
--

CREATE TABLE `siteinfo` (
  `companyname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seokeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seodescription` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `copyright_ln2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `siteinfo`
--

INSERT INTO `siteinfo` (`companyname`, `slogan`, `seokeywords`, `seodescription`, `facebook`, `logo`, `copyright`, `copyright_ln2`) VALUES
('Audio Watermark Music Demo', 'Nguyen Ba Lam | N14DCAT141 | PTITHCM', 'audio, watermark,music, demo', 'Audio Watermark Music Demo', 'https://www.facebook.com/profile.php?id=100005349435126', 'logo', '{companyname} © 2018', 'From Ho Chi Minh city with <span id=\"heart\">❤</span>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `password`, `permission`) VALUES
('administrator', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `owner` (`owner`);

--
-- Chỉ mục cho bảng `multimediatype`
--
ALTER TABLE `multimediatype`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`companyname`),
  ADD KEY `logo` (`logo`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission` (`permission`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`type`) REFERENCES `multimediatype` (`id`),
  ADD CONSTRAINT `multimedia_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD CONSTRAINT `siteinfo_ibfk_1` FOREIGN KEY (`logo`) REFERENCES `multimedia` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`permission`) REFERENCES `permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
