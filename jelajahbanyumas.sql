-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 03:15 PM
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
-- Database: `jelajahbanyumas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`foto`)),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `telepon`, `password`, `foto`, `create_at`, `update_at`) VALUES
(1, 'christvaldo kurnia putra', 'christvaldo46@gmail.com', '083844136761', 'valdo123', NULL, '2021-01-29 14:14:46', '2021-01-29 14:14:46'),
(2, 'eko susilo', 'susilo10@gmail.com', '085601771828', 'susilo123', NULL, '2021-01-29 14:19:01', '2021-01-29 14:19:01'),
(3, 'haidar jundi', 'haidar02@gmail.com', '081391655363', 'haidar123', NULL, '2021-01-29 14:20:30', '2021-01-29 14:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `id_kec` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `id_kec`, `desa`) VALUES
(1, 1, 'Ajibarang Kulon'),
(2, 1, 'Ajibarang Wetan'),
(3, 1, 'Banjarsari'),
(4, 1, 'Ciberung'),
(5, 1, 'Darmakradenan'),
(6, 1, 'Jingkang'),
(7, 1, 'Kalibenda'),
(8, 1, 'Karangbawang'),
(9, 1, 'Kracak'),
(10, 1, 'Lesmana'),
(11, 1, 'Pancasan'),
(12, 1, 'Pancurendang'),
(13, 1, 'Pandansari'),
(14, 1, 'Sawangan'),
(15, 1, 'Tipar Kidul'),
(16, 2, 'Binangun'),
(17, 2, 'Danaraja'),
(18, 2, 'Dawuhan'),
(19, 2, 'Kalisube'),
(20, 2, 'Karangrau'),
(21, 2, 'Kedunggede'),
(22, 2, 'Kedunguter'),
(23, 2, 'Kejawar'),
(24, 2, 'Papringan'),
(25, 2, 'Pasinggangan'),
(26, 2, 'Pekunden'),
(27, 2, 'Sudagaran'),
(28, 3, 'Karangmangu'),
(29, 3, 'Karangsalam'),
(30, 3, 'Karangtengah'),
(31, 3, 'Kebumen'),
(32, 3, 'Kemutug Kidul'),
(33, 3, 'Kemutug Lor'),
(34, 3, 'Ketenger'),
(35, 3, 'Kutasari'),
(36, 3, 'Pamijen'),
(37, 3, 'Pandak'),
(38, 3, 'Purwosari'),
(39, 3, 'Rempoah'),
(40, 4, 'Batuanten'),
(41, 4, 'Cikidang'),
(42, 4, 'Cilongok'),
(43, 4, 'Cipete'),
(44, 4, 'Gununglurah'),
(45, 4, 'Jatisaba'),
(46, 4, 'Kalisari'),
(47, 4, 'Karanglo'),
(48, 4, 'Karangtengah'),
(49, 4, 'Kasegeran'),
(50, 4, 'Langgongsari'),
(51, 4, 'Pageraji'),
(52, 4, 'Panembangan'),
(53, 4, 'Panusupan'),
(54, 4, 'Pejogol'),
(55, 4, 'Pernasidi'),
(56, 4, 'Rancamaya'),
(57, 4, 'Sambirata'),
(58, 4, 'Sokawera'),
(59, 4, 'Sudimara'),
(60, 5, 'Cihonje'),
(61, 5, 'Cilangkap'),
(62, 5, 'Gancang'),
(63, 5, 'Gumelar'),
(64, 5, 'Karangkemojing'),
(65, 5, 'Kedungurang'),
(66, 5, 'Paningkaban'),
(67, 5, 'Samudra'),
(68, 5, 'Samudra Kulon'),
(69, 5, 'Tiaga'),
(70, 6, 'Adisari'),
(71, 6, 'Bantar'),
(72, 6, 'Gentawangi'),
(73, 6, 'Gunung Wetan'),
(74, 6, 'Karanganyar'),
(75, 6, 'Karanglewas'),
(76, 6, 'Kedungwringin'),
(77, 6, 'Margasana'),
(78, 6, 'Pekuncen'),
(79, 6, 'Tinggarjaya'),
(80, 6, 'Tunjung'),
(81, 7, 'Kalibagor'),
(82, 7, 'Kalicupak Kidul'),
(83, 7, 'Kalicupak Lor'),
(84, 7, 'Kaliori'),
(85, 7, 'Kalisogra Wetan'),
(86, 7, 'Karangdadap'),
(87, 7, 'Pajerukan'),
(88, 7, 'Pekaja'),
(89, 7, 'Petir'),
(90, 7, 'Srowot'),
(91, 7, 'Suro'),
(92, 7, 'Wlahar Wetan'),
(93, 8, 'Babakan'),
(94, 8, 'Jipang'),
(95, 8, 'Karanggude Kulon'),
(96, 8, 'Karangkemiri'),
(97, 8, 'Karanglewas Kidul'),
(98, 8, 'Kediri'),
(99, 8, 'Pangebatan'),
(100, 8, 'Pasir Kulon'),
(101, 8, 'Pasir Lor'),
(102, 8, 'Pasir Wetan'),
(103, 8, 'Singasari'),
(104, 8, 'Sunyalangu'),
(105, 8, 'Tamansari'),
(106, 9, 'Adisana'),
(107, 9, 'Bangsa'),
(108, 9, 'Cindaga'),
(109, 9, 'Gambarsari'),
(110, 9, 'Kalisalak'),
(111, 9, 'Kaliwedi'),
(112, 9, 'Karangsari'),
(113, 9, 'Kebasen'),
(114, 9, 'Mandirancan'),
(115, 9, 'Randegan'),
(116, 9, 'Sawangan'),
(117, 9, 'Tumiyang'),
(118, 10, 'Baseh'),
(119, 10, 'Beji'),
(120, 10, 'Dawuhan Kulon'),
(121, 10, 'Dawuhan Wetan'),
(122, 10, 'Kalikesur'),
(123, 10, 'Kalisalak'),
(124, 10, 'Karangnangka'),
(125, 10, 'Karangsalam Kidul'),
(126, 10, 'Kebocoran'),
(127, 10, 'Kedungbanteng'),
(128, 10, 'Keniten'),
(129, 10, 'Kutaliman'),
(130, 10, 'Melung'),
(131, 10, 'Windujaya'),
(132, 11, 'Bantarwuni'),
(133, 11, 'Bojongsari'),
(134, 11, 'Dukuhwaluh'),
(135, 11, 'Karangsari'),
(136, 11, 'Karangsoka'),
(137, 11, 'Karangtengah'),
(138, 11, 'Kembaran'),
(139, 11, 'Kramat'),
(140, 11, 'Ledug'),
(141, 11, 'Linggasari'),
(142, 11, 'Pliken'),
(143, 11, 'Pubadana'),
(144, 11, 'Purwodadi'),
(145, 11, 'Sambeng Kulon'),
(146, 11, 'Sambeng Wetan'),
(147, 11, 'Tambaksari Kidul'),
(148, 12, 'Alasmalang'),
(149, 12, 'Grujugan'),
(150, 12, 'Karanggintung'),
(151, 12, 'Karangjati'),
(152, 12, 'Karangsalam'),
(153, 12, 'Kebarongan'),
(154, 12, 'Kecila'),
(155, 12, 'Kedungpring'),
(156, 12, 'Nusamangir'),
(157, 12, 'Pageralang'),
(158, 12, 'Petarangan'),
(159, 12, 'Sibalung'),
(160, 12, 'Sibrama'),
(161, 12, 'Sidamulya'),
(162, 12, 'Sirau'),
(163, 13, 'Besuki'),
(164, 13, 'Canduk'),
(165, 13, 'Cidora'),
(166, 13, 'Cingebul'),
(167, 13, 'Cirahab'),
(168, 13, 'Dermaji'),
(169, 13, 'Karanggayam'),
(170, 13, 'Kedunggede'),
(171, 13, 'Lumbir'),
(172, 13, 'Parungkamal'),
(173, 14, 'Karangayar'),
(174, 14, 'Karangendep'),
(175, 14, 'Karangrandu'),
(176, 14, 'Kedungwringin'),
(177, 14, 'Kedungwuluh Kidul'),
(178, 14, 'Kedungwuluh Lor'),
(179, 14, 'Notog'),
(180, 14, 'Patikraja'),
(181, 14, 'Pegalongan'),
(182, 14, 'Sawangan Wetan'),
(183, 14, 'Sidabowa'),
(184, 14, 'Sokawera Kidul'),
(185, 14, 'Wlahar Kulon'),
(186, 15, 'Banjaranyar'),
(187, 15, 'Candinegara'),
(188, 15, 'Cibangkong'),
(189, 15, 'Cikawung'),
(190, 15, 'Cikembulan'),
(191, 15, 'Glempang'),
(192, 15, 'Karangkemiri'),
(193, 15, 'Karangklesem'),
(194, 15, 'Krajan'),
(195, 15, 'Kranggan'),
(196, 15, 'Pasiraman Kidul'),
(197, 15, 'Pasiraman Lor'),
(198, 15, 'Pekuncen'),
(199, 15, 'Petahunan'),
(200, 15, 'Semedo'),
(201, 15, 'Tumiyang'),
(202, 16, 'Gerduren'),
(203, 16, 'Kaliputih'),
(204, 16, 'Kalitapen'),
(205, 16, 'Kaliurip'),
(206, 16, 'Kaliwangi'),
(207, 16, 'Karangmangu'),
(208, 16, 'Karangtalun Kidul'),
(209, 16, 'Karangtalun Lor'),
(210, 16, 'Klapasawit'),
(211, 16, 'Purwojati'),
(212, 17, 'Bantarsoka'),
(213, 17, 'Karanglewas Lor'),
(214, 17, 'Kedungwuluh'),
(215, 17, 'Kober'),
(216, 17, 'Pasir Kidul'),
(217, 17, 'Pasirmuncang'),
(218, 17, 'Rejasari'),
(219, 18, 'Berkoh'),
(220, 18, 'Karangklesem'),
(221, 18, 'Karangpucung'),
(222, 18, 'Purwokerto Kidul'),
(223, 18, 'Purwokerto Kulon'),
(224, 18, 'Tanjung'),
(225, 18, 'Teluk'),
(226, 19, 'Arcawinangun'),
(227, 19, 'Kranji'),
(228, 19, 'Mersi'),
(229, 19, 'Purwokerto Lor'),
(230, 19, 'Purwokerto Wetan'),
(231, 19, 'Sokanegara'),
(232, 20, 'Bancarkembar'),
(233, 20, 'Bobosan'),
(234, 20, 'Grendeng'),
(235, 20, 'Karangwangkal'),
(236, 20, 'Pabuaran'),
(237, 20, 'Purwanegara'),
(238, 20, 'Sumampir'),
(239, 21, 'Banjarparakan'),
(240, 21, 'Losari'),
(241, 21, 'Menganti'),
(242, 21, 'Pesawahan'),
(243, 21, 'Rawalo'),
(244, 21, 'Sanggreman'),
(245, 21, 'Sidamulih'),
(246, 21, 'Tambaknegara'),
(247, 21, 'Tipar'),
(248, 22, 'Banjaranyar'),
(249, 22, 'Banjarsari Kidul'),
(250, 22, 'Jompo Kulon'),
(251, 22, 'Kalikidang'),
(252, 22, 'Karangduren'),
(253, 22, 'Karangkedawung'),
(254, 22, 'Karangnanas'),
(255, 22, 'Karangrau'),
(256, 22, 'Kedondong'),
(257, 22, 'Klahang'),
(258, 22, 'Lemberang'),
(259, 22, 'Pamijen'),
(260, 22, 'Sokaraja Kidul'),
(261, 22, 'Sokaraja Kulon'),
(262, 22, 'Sokaraja Lor'),
(263, 22, 'Sokaraja Tengah'),
(264, 22, 'Sokaraja Wetan'),
(265, 22, 'Wiradadi'),
(266, 23, 'Kanding'),
(267, 23, 'Kemawi'),
(268, 23, 'Klinting'),
(269, 23, 'Piasa Kulon'),
(270, 23, 'Piana'),
(271, 23, 'Sokawera'),
(272, 23, 'Somagede'),
(273, 23, 'Somakaton'),
(274, 23, 'Tanggeran'),
(275, 24, 'Banjarsari Kulon'),
(276, 24, 'Banjarsari Wetan'),
(277, 24, 'Banteran'),
(278, 24, 'Ciberem'),
(279, 24, 'Datar'),
(280, 24, 'Gandatapa'),
(281, 24, 'Karangcegak'),
(282, 24, 'Karanggintung'),
(283, 24, 'Karangturi'),
(284, 24, 'Kawungcarang'),
(285, 24, 'Kebanggan'),
(286, 24, 'Kedungmalang'),
(287, 24, 'Kotayasa'),
(288, 24, 'Limpakuwus'),
(289, 24, 'Sikapat'),
(290, 24, 'Silado'),
(291, 24, 'Sumbang'),
(292, 24, 'Susukan'),
(293, 24, 'Tambaksogra'),
(294, 26, 'Banjarpanepen'),
(295, 26, 'Bogangin'),
(296, 26, 'Karanggedang'),
(297, 26, 'Kemiri'),
(298, 26, 'Ketanda'),
(299, 26, 'Kuntili'),
(300, 26, 'Lebeng'),
(301, 26, 'Nusadadi'),
(302, 26, 'Pandak'),
(303, 26, 'Selandaka'),
(304, 26, 'Selanegara'),
(305, 26, 'Kebokura'),
(306, 26, 'Kradenan'),
(307, 26, 'Sumpiuh'),
(308, 27, 'Karangpetir'),
(309, 27, 'Karangpucung'),
(310, 27, 'Kamulyan'),
(311, 27, 'Gebangsari'),
(312, 27, 'Pesantren'),
(313, 27, 'Prembun'),
(314, 27, 'Buniayu'),
(315, 27, 'Purwodadi'),
(316, 27, 'Watuagung'),
(317, 27, 'Gumelar Lor'),
(318, 27, 'Gumelar Kidul'),
(319, 27, 'Plangkapan'),
(320, 28, 'Banteran'),
(321, 28, 'Cikakak'),
(322, 28, 'Jambu'),
(323, 28, 'Jurangbahas'),
(324, 28, 'Klapagading'),
(325, 28, 'Klapagading Kulon'),
(326, 28, 'Pangadegan'),
(327, 28, 'Randegan'),
(328, 28, 'Rawaheng'),
(329, 28, 'Wangon'),
(330, 28, 'Windunegara'),
(331, 28, 'Wlahar');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Edukasi'),
(2, 'Kuliner'),
(3, 'Wisata Alam');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` int(11) NOT NULL,
  `kecamatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `kecamatan`) VALUES
(1, 'Ajibarang'),
(2, 'Banyumas'),
(3, 'Baturraden'),
(4, 'Cilongok'),
(5, 'Gumelar'),
(6, 'Jatilawang'),
(7, 'Kalibagor'),
(8, 'Karanglewas'),
(9, 'Kebasen'),
(10, 'Kedungbanteng'),
(11, 'Kembaran'),
(12, 'Kemranjen'),
(13, 'Lumbir'),
(14, 'Patikraja'),
(15, 'Pekuncen'),
(16, 'Purwojati'),
(17, 'Purwokerto Barat'),
(18, 'Purwokerto Selatan'),
(19, 'Purwokerto Timur'),
(20, 'Purwokerto Utara'),
(21, 'Rawalo'),
(22, 'Sokaraja'),
(23, 'Somagede'),
(24, 'Sumbang'),
(26, 'Sumpiuh'),
(27, 'Tambak'),
(28, 'Wangon');

-- --------------------------------------------------------

--
-- Table structure for table `objek_wisata`
--

CREATE TABLE `objek_wisata` (
  `id_wisata` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`foto`)),
  `alamat` text NOT NULL,
  `deskripsi` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`foto`)),
  `deskripsi` text NOT NULL,
  `like` int(255) NOT NULL,
  `komentar` int(11) NOT NULL,
  `bookmark` tinyint(1) NOT NULL,
  `upload_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`foto`)),
  `bio` text DEFAULT 'Ayo tuliskan bio anda'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`),
  ADD KEY `desa_ibfk_1` (`id_kec`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kec`);

--
-- Indexes for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `id_desa` (`id_desa`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_wisata` (`id_wisata`),
  ADD KEY `postingan_ibfk_3` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `desa`
--
ALTER TABLE `desa`
  ADD CONSTRAINT `desa_ibfk_1` FOREIGN KEY (`id_kec`) REFERENCES `kecamatan` (`id_kec`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  ADD CONSTRAINT `objek_wisata_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `desa` (`id_desa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `objek_wisata_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `postingan`
--
ALTER TABLE `postingan`
  ADD CONSTRAINT `postingan_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postingan_ibfk_2` FOREIGN KEY (`id_wisata`) REFERENCES `objek_wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postingan_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
