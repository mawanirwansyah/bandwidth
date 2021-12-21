-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2021 pada 10.15
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bandwidth`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id_footer` int(11) NOT NULL,
  `namasingkatan` varchar(32) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `negara` varchar(32) NOT NULL,
  `pobox` varchar(32) NOT NULL,
  `kodepos` varchar(32) NOT NULL,
  `telepon` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `namapenuh` varchar(255) NOT NULL,
  `nama_aplikasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_footer`
--

INSERT INTO `tbl_footer` (`id_footer`, `namasingkatan`, `alamat`, `negara`, `pobox`, `kodepos`, `telepon`, `email`, `twitter`, `facebook`, `instagram`, `youtube`, `linkedin`, `namapenuh`, `nama_aplikasi`) VALUES
(1, 'PT INALUM', 'Kuala Tanjung, Kecamatan Sei Suka, Kabupaten Batu Bara. Sumatera Utara', 'Indonesia', 'P.O. BOX 1 Kuala Tanjung', '21657', '( 0622 ) 31311', 'sit@inalum.id', 'https://twitter.com/INALUM_Official', 'https://www.facebook.com/PT-Indonesia-Asahan-Aluminium-Persero-1179421115414571', 'https://www.instagram.com/inalum/', 'https://www.youtube.com/channel/UCrPnI_rPzOuuKk1jEhYERpA', 'https://www.linkedin.com/company/pt-indonesia-asahan-aluminium-persero/', 'PT Indonesia Asahan Aluminium (Persero)', 'Information Bandwidth');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_home`
--

CREATE TABLE `tbl_home` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `link` text NOT NULL,
  `linky` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(34, 'Manager', 'inalum@gmail.com', NULL, 'qwesdsad', '2021-11-04 04:43:21', 0),
(35, 'ADI NUGROHO', 'adinugroho101294@gmail.com', NULL, 'sadsadsadsad', '2021-11-04 04:44:06', 0),
(36, 'MANAGER', 'adinugroho101294@gmail.com', NULL, 'sdadasfasf', '2021-11-04 04:56:10', 0),
(37, 'INSPEKTOR', 'inspektor@gmail.com', NULL, 'JOKES', '2021-11-04 08:24:59', 0),
(38, 'MANAGER', 'manager@gmail.com', NULL, 'JOKESS', '2021-11-04 08:25:40', 0),
(39, 'Kucing', 'Kucing@inalum.id', NULL, 'salam kucing', '2021-11-08 01:44:08', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inventori`
--

CREATE TABLE `tbl_inventori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_inventori`
--

INSERT INTO `tbl_inventori` (`id`, `kategori`, `model`, `serial_number`, `kondisi`, `lokasi`, `keterangan`, `status`, `nama_peminjam`) VALUES
(7, 'CCTV', 'ACER P166HQL', 'PC0F4KT2', 'BAGUS', 'Bengkel', 'OK', 'READY', ''),
(8, 'CCTV', 'ACER P166HQL', 'V9-01RL17', 'BAGUS', 'IMO', 'OK', 'READY', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Monitor'),
(2, 'CPU'),
(3, 'Printer'),
(4, 'Scanner'),
(5, 'HDMI'),
(6, 'Mouse'),
(7, 'Keyboard'),
(8, 'CCTV'),
(9, 'UDP'),
(10, 'V.con'),
(11, 'Tools'),
(12, 'Mini PC'),
(13, 'Network');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kondisi`
--

CREATE TABLE `tbl_kondisi` (
  `id_kondisi` int(11) NOT NULL,
  `kondisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kondisi`
--

INSERT INTO `tbl_kondisi` (`id_kondisi`, `kondisi`) VALUES
(1, 'BAGUS'),
(3, 'RUSAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lokasi`
--

CREATE TABLE `tbl_lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_lokasi`
--

INSERT INTO `tbl_lokasi` (`id_lokasi`, `lokasi`) VALUES
(1, 'Main Office Lama'),
(2, 'Bengkel'),
(3, 'IMO'),
(4, 'IJO'),
(5, 'IPP'),
(6, 'Gudang Lt.6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_model`
--

CREATE TABLE `tbl_model` (
  `id_model` int(11) NOT NULL,
  `model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_model`
--

INSERT INTO `tbl_model` (`id_model`, `model`) VALUES
(1, 'ThinkVision E1922s'),
(3, 'HP V194'),
(4, 'ACER P166HQL'),
(5, 'LENOVO M700 TWR'),
(6, 'LENOVO ThinkCentre'),
(7, 'ACER VERITON'),
(8, 'HP PRO'),
(9, 'HP 280 G4 MT BUSINESS'),
(10, 'EPSON L311'),
(11, 'EPSON L11'),
(12, 'EPSON 6100'),
(13, 'CANON LBP 6030'),
(14, 'CANON IP2770'),
(15, 'CANON IP1880'),
(16, 'BROTHER ADS-2200');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Administrator', 'Just do it', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', '-', 'ssm@inalum.id', '085371117246', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', 'c0899ee4b6f6616179b44a39f48e540c.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(947, '2021-11-04 01:48:37', '::1', 'Chrome'),
(948, '2021-11-04 12:16:04', '127.0.0.1', 'Firefox'),
(949, '2021-11-04 23:55:19', '::1', 'Chrome'),
(950, '2021-11-05 02:02:09', '192.168.0.222', 'Chrome'),
(951, '2021-11-05 03:05:07', '172.17.2.225', 'Chrome'),
(952, '2021-11-05 09:04:05', '172.17.2.252', 'Chrome'),
(953, '2021-11-08 00:43:46', '172.17.2.252', 'Chrome'),
(954, '2021-11-08 01:41:12', '172.17.2.225', 'Chrome'),
(955, '2021-11-15 00:56:37', '172.17.2.225', 'Opera'),
(956, '2021-11-15 02:30:18', '172.17.2.142', 'Chrome'),
(957, '2021-11-16 02:25:55', '172.17.2.225', 'Opera'),
(958, '2021-11-17 01:20:57', '172.17.2.225', 'Opera'),
(959, '2021-11-18 01:10:40', '172.17.2.225', 'Opera'),
(960, '2021-11-22 07:53:43', '::1', 'Chrome'),
(961, '2021-11-23 13:48:02', '::1', 'Chrome'),
(962, '2021-11-29 08:11:33', '::1', 'Chrome'),
(963, '2021-11-30 00:59:04', '::1', 'Chrome'),
(964, '2021-11-30 02:37:20', '192.168.0.109', 'Opera'),
(965, '2021-12-01 01:14:10', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_score`
--

CREATE TABLE `tbl_score` (
  `id_score` int(11) NOT NULL,
  `download` float NOT NULL,
  `upload` float NOT NULL,
  `tanggal` text NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_score`
--

INSERT INTO `tbl_score` (`id_score`, `download`, `upload`, `tanggal`, `nama`) VALUES
(1, 3.9, 3.07, '2021-11-17', 'Astinet_IJO'),
(2, 4.98, 1, '2021-11-17', 'Astinet_IJO'),
(3, 9.08, 1, '2021-11-17', 'Astinet_IJO'),
(4, 12.2, 1, '2021-11-17', 'Astinet_IJO'),
(5, 4.29, 1, '2021-11-17', 'Astinet_IJO'),
(6, 2.98, 1, '2021-11-17', 'Astinet_IJO'),
(7, 2.38, 1, '2021-11-17', 'Astinet_IJO'),
(8, 4.37, 1, '2021-11-17', 'Astinet_IJO'),
(9, 1.15, 1, '2021-11-17', 'Astinet_IJO'),
(10, 1.28, 1, '2021-11-17', 'Astinet_IJO'),
(11, 3.9, 1, '2021-11-18', 'Astinet_IJO'),
(12, 4.18, 1, '2021-11-18', 'Astinet_IJO'),
(13, 4.8, 1, '2021-11-18', 'Astinet_IJO'),
(14, 6.08, 1, '2021-11-18', 'Astinet_IJO'),
(15, 5.87, 1, '2021-11-18', 'Astinet_IJO'),
(16, 5.08, 1, '2021-11-18', 'Astinet_IJO'),
(17, 4.07, 1, '2021-11-18', 'Astinet_IJO'),
(18, 2.44, 1, '2021-11-18', 'Astinet_IJO'),
(19, 3.85, 1, '2021-11-18', 'Astinet_IJO'),
(20, 6.99, 1, '2021-11-18', 'Astinet_IJO'),
(21, 4.75, 1, '2021-11-19', 'Astinet_IJO'),
(22, 6.21, 2.14, '2021-11-19', 'Astinet_IJO'),
(23, 7.78, 8.04, '2021-11-19', 'Astinet_IJO'),
(24, 5.7, 4.28, '2021-11-19', 'Astinet_IJO'),
(25, 6.8, 6.08, '2021-11-19', 'Astinet_IJO'),
(26, 15.64, 1, '2021-11-19', 'Astinet_IJO'),
(27, 6.6, 1, '2021-11-19', 'Astinet_IJO'),
(28, 6.69, 10.03, '2021-11-19', 'Astinet_IJO'),
(29, 6.25, 2.75, '2021-11-19', 'Astinet_IJO'),
(30, 5.94, 1.11, '2021-11-19', 'Astinet_IJO'),
(31, 1, 1, '2021-11-20', 'Astinet_IJO'),
(32, 1, 1, '2021-11-20', 'Astinet_IJO'),
(33, 1, 1, '2021-11-20', 'Astinet_IJO'),
(34, 1, 1, '2021-11-20', 'Astinet_IJO'),
(35, 1, 1, '2021-11-20', 'Astinet_IJO'),
(36, 1.46, 1, '2021-11-20', 'Astinet_IJO'),
(37, 1, 1, '2021-11-20', 'Astinet_IJO'),
(38, 1.8, 1, '2021-11-20', 'Astinet_IJO'),
(39, 1, 1, '2021-11-20', 'Astinet_IJO'),
(40, 1, 1, '2021-11-20', 'Astinet_IJO'),
(41, 1, 1, '2021-11-21', 'Astinet_IJO'),
(42, 1, 1, '2021-11-21', 'Astinet_IJO'),
(43, 1, 1, '2021-11-21', 'Astinet_IJO'),
(44, 1, 1, '2021-11-21', 'Astinet_IJO'),
(45, 1, 1, '2021-11-21', 'Astinet_IJO'),
(46, 1, 1, '2021-11-21', 'Astinet_IJO'),
(47, 1, 1, '2021-11-21', 'Astinet_IJO'),
(48, 1, 1, '2021-11-21', 'Astinet_IJO'),
(49, 1, 1, '2021-11-21', 'Astinet_IJO'),
(50, 1, 1, '2021-11-21', 'Astinet_IJO'),
(51, 7.33, 1, '2021-11-22', 'Astinet_IJO'),
(52, 11.52, 1, '2021-11-22', 'Astinet_IJO'),
(53, 10.93, 1, '2021-11-22', 'Astinet_IJO'),
(54, 6.89, 1, '2021-11-22', 'Astinet_IJO'),
(55, 6.07, 1, '2021-11-22', 'Astinet_IJO'),
(56, 4.89, 1, '2021-11-22', 'Astinet_IJO'),
(57, 3.85, 1, '2021-11-22', 'Astinet_IJO'),
(58, 3.25, 1, '2021-11-22', 'Astinet_IJO'),
(59, 11.26, 1, '2021-11-22', 'Astinet_IJO'),
(60, 2.89, 8.17, '2021-11-22', 'Astinet_IJO'),
(61, 3.52, 1, '2021-11-23', 'Astinet_IJO'),
(62, 3.9, 1.14, '2021-11-23', 'Astinet_IJO'),
(63, 3.26, 1.25, '2021-11-23', 'Astinet_IJO'),
(64, 2.59, 1, '2021-11-23', 'Astinet_IJO'),
(65, 6.2, 1, '2021-11-23', 'Astinet_IJO'),
(66, 5.09, 1, '2021-11-23', 'Astinet_IJO'),
(67, 4.53, 1, '2021-11-23', 'Astinet_IJO'),
(68, 2.57, 1, '2021-11-23', 'Astinet_IJO'),
(69, 3.33, 1.1, '2021-11-23', 'Astinet_IJO'),
(70, 2.74, 1, '2021-11-23', 'Astinet_IJO'),
(71, 3.43, 1, '2021-11-24', 'Astinet_IJO'),
(72, 3.82, 2.2, '2021-11-24', 'Astinet_IJO'),
(73, 3.56, 2.14, '2021-11-24', 'Astinet_IJO'),
(74, 5.04, 1.37, '2021-11-24', 'Astinet_IJO'),
(75, 4.55, 1, '2021-11-24', 'Astinet_IJO'),
(76, 8.12, 1.56, '2021-11-24', 'Astinet_IJO'),
(77, 12.02, 1, '2021-11-24', 'Astinet_IJO'),
(78, 4.26, 1, '2021-11-24', 'Astinet_IJO'),
(79, 4.19, 1, '2021-11-24', 'Astinet_IJO'),
(80, 2.43, 1, '2021-11-24', 'Astinet_IJO'),
(81, 8.29, 1, '2021-11-25', 'Astinet_IJO'),
(82, 4.31, 1, '2021-11-25', 'Astinet_IJO'),
(83, 5.68, 1, '2021-11-25', 'Astinet_IJO'),
(84, 6.69, 1, '2021-11-25', 'Astinet_IJO'),
(85, 9.59, 1, '2021-11-25', 'Astinet_IJO'),
(86, 4.53, 1, '2021-11-25', 'Astinet_IJO'),
(87, 5.08, 1, '2021-11-25', 'Astinet_IJO'),
(88, 6.12, 1, '2021-11-25', 'Astinet_IJO'),
(89, 6.05, 1.46, '2021-11-25', 'Astinet_IJO'),
(90, 4.53, 1.32, '2021-11-25', 'Astinet_IJO'),
(91, 3.84, 1, '2021-11-26', 'Astinet_IJO'),
(92, 6.86, 1, '2021-11-26', 'Astinet_IJO'),
(93, 7.25, 1, '2021-11-26', 'Astinet_IJO'),
(94, 8.87, 1, '2021-11-26', 'Astinet_IJO'),
(95, 5.48, 1, '2021-11-26', 'Astinet_IJO'),
(96, 4.01, 1.01, '2021-11-26', 'Astinet_IJO'),
(97, 9, 2.16, '2021-11-26', 'Astinet_IJO'),
(98, 6.74, 1, '2021-11-26', 'Astinet_IJO'),
(99, 3.74, 1.56, '2021-11-26', 'Astinet_IJO'),
(100, 1.56, 1, '2021-11-26', 'Astinet_IJO'),
(101, 1, 1, '2021-11-27', 'Astinet_IJO'),
(102, 1, 1, '2021-11-27', 'Astinet_IJO'),
(103, 1, 1, '2021-11-27', 'Astinet_IJO'),
(104, 1, 1, '2021-11-27', 'Astinet_IJO'),
(105, 1, 1, '2021-11-27', 'Astinet_IJO'),
(106, 1, 1, '2021-11-27', 'Astinet_IJO'),
(107, 1, 1, '2021-11-27', 'Astinet_IJO'),
(108, 1, 1, '2021-11-27', 'Astinet_IJO'),
(109, 1, 1, '2021-11-27', 'Astinet_IJO'),
(110, 1, 1, '2021-11-27', 'Astinet_IJO'),
(111, 1, 1, '2021-11-28', 'Astinet_IJO'),
(112, 1, 1, '2021-11-28', 'Astinet_IJO'),
(113, 1, 1, '2021-11-28', 'Astinet_IJO'),
(114, 1, 1, '2021-11-28', 'Astinet_IJO'),
(115, 1, 1, '2021-11-28', 'Astinet_IJO'),
(116, 1, 1, '2021-11-28', 'Astinet_IJO'),
(117, 1, 1, '2021-11-28', 'Astinet_IJO'),
(118, 1, 1, '2021-11-28', 'Astinet_IJO'),
(119, 1, 1, '2021-11-28', 'Astinet_IJO'),
(120, 1, 1, '2021-11-28', 'Astinet_IJO'),
(121, 2.75, 1, '2021-11-29', 'Astinet_IJO'),
(122, 4.47, 1.5, '2021-11-29', 'Astinet_IJO'),
(123, 8.24, 2.57, '2021-11-29', 'Astinet_IJO'),
(124, 6.17, 1.91, '2021-11-29', 'Astinet_IJO'),
(125, 12.13, 2.11, '2021-11-29', 'Astinet_IJO'),
(126, 5.12, 1.45, '2021-11-29', 'Astinet_IJO'),
(127, 9.72, 1.82, '2021-11-29', 'Astinet_IJO'),
(128, 7.2, 1.5, '2021-11-29', 'Astinet_IJO'),
(129, 8.56, 1.68, '2021-11-29', 'Astinet_IJO'),
(130, 4.21, 2.22, '2021-11-29', 'Astinet_IJO'),
(131, 1.82, 1, '2021-11-30', 'Astinet_IJO'),
(132, 3.24, 1.3, '2021-11-30', 'Astinet_IJO'),
(133, 3.08, 2.63, '2021-11-30', 'Astinet_IJO'),
(134, 4.91, 1.5, '2021-11-30', 'Astinet_IJO'),
(135, 5.61, 1.27, '2021-11-30', 'Astinet_IJO'),
(136, 7.93, 1, '2021-11-30', 'Astinet_IJO'),
(137, 5.64, 1.43, '2021-11-30', 'Astinet_IJO'),
(138, 7.06, 1.9, '2021-11-30', 'Astinet_IJO'),
(139, 7.74, 2.28, '2021-11-30', 'Astinet_IJO'),
(140, 3.97, 1, '2021-11-30', 'Astinet_IJO'),
(141, 1, 1, '2021-11-17', 'Astinet_IMO'),
(142, 1, 1, '2021-11-17', 'Astinet_IMO'),
(143, 1, 1, '2021-11-17', 'Astinet_IMO'),
(144, 1, 1, '2021-11-17', 'Astinet_IMO'),
(145, 1, 1, '2021-11-17', 'Astinet_IMO'),
(146, 1, 1, '2021-11-17', 'Astinet_IMO'),
(147, 1, 1, '2021-11-17', 'Astinet_IMO'),
(148, 1, 1, '2021-11-17', 'Astinet_IMO'),
(149, 1, 1, '2021-11-17', 'Astinet_IMO'),
(150, 1, 1, '2021-11-17', 'Astinet_IMO'),
(151, 1, 1, '2021-11-18', 'Astinet_IMO'),
(152, 1, 1, '2021-11-18', 'Astinet_IMO'),
(153, 1, 1, '2021-11-18', 'Astinet_IMO'),
(154, 1, 1, '2021-11-18', 'Astinet_IMO'),
(155, 1, 1, '2021-11-18', 'Astinet_IMO'),
(156, 1, 1, '2021-11-18', 'Astinet_IMO'),
(157, 1, 1, '2021-11-18', 'Astinet_IMO'),
(158, 1, 1, '2021-11-18', 'Astinet_IMO'),
(159, 1, 1, '2021-11-18', 'Astinet_IMO'),
(160, 1, 1, '2021-11-18', 'Astinet_IMO'),
(161, 1, 1, '2021-11-19', 'Astinet_IMO'),
(162, 1, 1, '2021-11-19', 'Astinet_IMO'),
(163, 1, 1, '2021-11-19', 'Astinet_IMO'),
(164, 1, 1, '2021-11-19', 'Astinet_IMO'),
(165, 1, 1, '2021-11-19', 'Astinet_IMO'),
(166, 1, 1, '2021-11-19', 'Astinet_IMO'),
(167, 1, 1.1, '2021-11-19', 'Astinet_IMO'),
(168, 1.02, 1.06, '2021-11-19', 'Astinet_IMO'),
(169, 1.6, 1.16, '2021-11-19', 'Astinet_IMO'),
(170, 1, 1, '2021-11-19', 'Astinet_IMO'),
(171, 1, 1, '2021-11-20', 'Astinet_IMO'),
(172, 1, 1, '2021-11-20', 'Astinet_IMO'),
(173, 1, 1, '2021-11-20', 'Astinet_IMO'),
(174, 1, 1, '2021-11-20', 'Astinet_IMO'),
(175, 1, 1, '2021-11-20', 'Astinet_IMO'),
(176, 1, 1, '2021-11-20', 'Astinet_IMO'),
(177, 1, 1, '2021-11-20', 'Astinet_IMO'),
(178, 1, 1, '2021-11-20', 'Astinet_IMO'),
(179, 1, 1, '2021-11-20', 'Astinet_IMO'),
(180, 1, 1, '2021-11-20', 'Astinet_IMO'),
(181, 1, 1, '2021-11-21', 'Astinet_IMO'),
(182, 1.5, 1, '2021-11-21', 'Astinet_IMO'),
(183, 1.57, 2.89, '2021-11-21', 'Astinet_IMO'),
(184, 2.34, 1, '2021-11-21', 'Astinet_IMO'),
(185, 1.47, 1, '2021-11-21', 'Astinet_IMO'),
(186, 1, 1, '2021-11-21', 'Astinet_IMO'),
(187, 1, 1, '2021-11-21', 'Astinet_IMO'),
(188, 1, 1, '2021-11-21', 'Astinet_IMO'),
(189, 1, 1, '2021-11-21', 'Astinet_IMO'),
(190, 1, 1, '2021-11-21', 'Astinet_IMO'),
(191, 1, 1, '2021-11-22', 'Astinet_IMO'),
(192, 1, 1.16, '2021-11-22', 'Astinet_IMO'),
(193, 1, 1.15, '2021-11-22', 'Astinet_IMO'),
(194, 3.64, 1.22, '2021-11-22', 'Astinet_IMO'),
(195, 1.94, 1.19, '2021-11-22', 'Astinet_IMO'),
(196, 2.48, 1.23, '2021-11-22', 'Astinet_IMO'),
(197, 1.07, 1.22, '2021-11-22', 'Astinet_IMO'),
(198, 1, 1, '2021-11-22', 'Astinet_IMO'),
(199, 1, 1.5, '2021-11-22', 'Astinet_IMO'),
(200, 1, 1.16, '2021-11-22', 'Astinet_IMO'),
(201, 1.39, 1.34, '2021-11-23', 'Astinet_IMO'),
(202, 1, 1.09, '2021-11-23', 'Astinet_IMO'),
(203, 3.45, 1.23, '2021-11-23', 'Astinet_IMO'),
(204, 8.9, 1.28, '2021-11-23', 'Astinet_IMO'),
(205, 11.66, 1.27, '2021-11-23', 'Astinet_IMO'),
(206, 10.61, 1.2, '2021-11-23', 'Astinet_IMO'),
(207, 10.8, 1.13, '2021-11-23', 'Astinet_IMO'),
(208, 1, 1, '2021-11-23', 'Astinet_IMO'),
(209, 1, 1, '2021-11-23', 'Astinet_IMO'),
(210, 1, 1, '2021-11-23', 'Astinet_IMO'),
(211, 1, 1, '2021-11-24', 'Astinet_IMO'),
(212, 1, 1, '2021-11-24', 'Astinet_IMO'),
(213, 1.84, 1, '2021-11-24', 'Astinet_IMO'),
(214, 1.84, 1, '2021-11-24', 'Astinet_IMO'),
(215, 1, 1, '2021-11-24', 'Astinet_IMO'),
(216, 1, 1, '2021-11-24', 'Astinet_IMO'),
(217, 1, 1.23, '2021-11-24', 'Astinet_IMO'),
(218, 1, 1.05, '2021-11-24', 'Astinet_IMO'),
(219, 1, 1.1, '2021-11-24', 'Astinet_IMO'),
(220, 1, 1, '2021-11-24', 'Astinet_IMO'),
(221, 1, 1, '2021-11-25', 'Astinet_IMO'),
(222, 1, 1, '2021-11-25', 'Astinet_IMO'),
(223, 2.05, 1.17, '2021-11-25', 'Astinet_IMO'),
(224, 1.85, 1.08, '2021-11-25', 'Astinet_IMO'),
(225, 1.89, 1.99, '2021-11-25', 'Astinet_IMO'),
(226, 1.14, 1.41, '2021-11-25', 'Astinet_IMO'),
(227, 1, 1, '2021-11-25', 'Astinet_IMO'),
(228, 2.38, 1.8, '2021-11-25', 'Astinet_IMO'),
(229, 1.35, 1.36, '2021-11-25', 'Astinet_IMO'),
(230, 1, 1.09, '2021-11-25', 'Astinet_IMO'),
(231, 1, 1, '2021-11-26', 'Astinet_IMO'),
(232, 1, 1, '2021-11-26', 'Astinet_IMO'),
(233, 1, 1, '2021-11-26', 'Astinet_IMO'),
(234, 1.05, 1, '2021-11-26', 'Astinet_IMO'),
(235, 1, 1, '2021-11-26', 'Astinet_IMO'),
(236, 1, 1, '2021-11-26', 'Astinet_IMO'),
(237, 1, 1, '2021-11-26', 'Astinet_IMO'),
(238, 1, 1, '2021-11-26', 'Astinet_IMO'),
(239, 1, 1, '2021-11-26', 'Astinet_IMO'),
(240, 1, 1, '2021-11-26', 'Astinet_IMO'),
(241, 1, 1, '2021-11-27', 'Astinet_IMO'),
(242, 1, 1, '2021-11-27', 'Astinet_IMO'),
(243, 1, 1, '2021-11-27', 'Astinet_IMO'),
(244, 1, 1, '2021-11-27', 'Astinet_IMO'),
(245, 1, 1, '2021-11-27', 'Astinet_IMO'),
(246, 1, 1, '2021-11-27', 'Astinet_IMO'),
(247, 1.21, 1, '2021-11-27', 'Astinet_IMO'),
(248, 1.71, 1, '2021-11-27', 'Astinet_IMO'),
(249, 1, 1, '2021-11-27', 'Astinet_IMO'),
(250, 2.14, 1, '2021-11-27', 'Astinet_IMO'),
(251, 1, 1, '2021-11-28', 'Astinet_IMO'),
(252, 1, 1, '2021-11-28', 'Astinet_IMO'),
(253, 1, 1, '2021-11-28', 'Astinet_IMO'),
(254, 1, 1, '2021-11-28', 'Astinet_IMO'),
(255, 1, 1, '2021-11-28', 'Astinet_IMO'),
(256, 1, 1, '2021-11-28', 'Astinet_IMO'),
(257, 1, 1, '2021-11-28', 'Astinet_IMO'),
(258, 1, 1, '2021-11-28', 'Astinet_IMO'),
(259, 1, 1, '2021-11-28', 'Astinet_IMO'),
(260, 1, 1, '2021-11-28', 'Astinet_IMO'),
(261, 1, 1, '2021-11-29', 'Astinet_IMO'),
(262, 1, 1.18, '2021-11-29', 'Astinet_IMO'),
(263, 1.02, 1.17, '2021-11-29', 'Astinet_IMO'),
(264, 1.77, 1.04, '2021-11-29', 'Astinet_IMO'),
(265, 1.36, 1, '2021-11-29', 'Astinet_IMO'),
(266, 1, 1.12, '2021-11-29', 'Astinet_IMO'),
(267, 1, 1.11, '2021-11-29', 'Astinet_IMO'),
(268, 1, 1.11, '2021-11-29', 'Astinet_IMO'),
(269, 1, 1.15, '2021-11-29', 'Astinet_IMO'),
(270, 1, 1, '2021-11-29', 'Astinet_IMO'),
(271, 1, 1, '2021-11-30', 'Astinet_IMO'),
(272, 1, 1.04, '2021-11-30', 'Astinet_IMO'),
(273, 1, 1, '2021-11-30', 'Astinet_IMO'),
(274, 1, 1, '2021-11-30', 'Astinet_IMO'),
(275, 1, 1.05, '2021-11-30', 'Astinet_IMO'),
(276, 1, 1.06, '2021-11-30', 'Astinet_IMO'),
(277, 1.52, 1.19, '2021-11-30', 'Astinet_IMO'),
(278, 1.54, 1.22, '2021-11-30', 'Astinet_IMO'),
(279, 1.07, 1.15, '2021-11-30', 'Astinet_IMO'),
(280, 1, 1, '2021-11-30', 'Astinet_IMO'),
(281, 28.42, 8.49, '2021-11-17', 'Astinet_IPP'),
(282, 23.33, 25.26, '2021-11-17', 'Astinet_IPP'),
(283, 41.76, 13.44, '2021-11-17', 'Astinet_IPP'),
(284, 36.67, 7.36, '2021-11-17', 'Astinet_IPP'),
(285, 24.53, 7.4, '2021-11-17', 'Astinet_IPP'),
(286, 27.88, 5.06, '2021-11-17', 'Astinet_IPP'),
(287, 21.65, 3.55, '2021-11-17', 'Astinet_IPP'),
(288, 35.44, 2.84, '2021-11-17', 'Astinet_IPP'),
(289, 21.7, 5.63, '2021-11-17', 'Astinet_IPP'),
(290, 30.83, 4.37, '2021-11-17', 'Astinet_IPP'),
(291, 25.09, 9.23, '2021-11-18', 'Astinet_IPP'),
(292, 23.95, 3.11, '2021-11-18', 'Astinet_IPP'),
(293, 39.37, 2.37, '2021-11-18', 'Astinet_IPP'),
(294, 43.95, 4.28, '2021-11-18', 'Astinet_IPP'),
(295, 50.57, 4.52, '2021-11-18', 'Astinet_IPP'),
(296, 22.87, 3.05, '2021-11-18', 'Astinet_IPP'),
(297, 49.14, 4.68, '2021-11-18', 'Astinet_IPP'),
(298, 53.06, 3.25, '2021-11-18', 'Astinet_IPP'),
(299, 19.21, 1.16, '2021-11-18', 'Astinet_IPP'),
(300, 39.8, 3.54, '2021-11-18', 'Astinet_IPP'),
(301, 35.76, 8.08, '2021-11-19', 'Astinet_IPP'),
(302, 33.86, 2.18, '2021-11-19', 'Astinet_IPP'),
(303, 36.96, 3.64, '2021-11-19', 'Astinet_IPP'),
(304, 27.57, 2.46, '2021-11-19', 'Astinet_IPP'),
(305, 15.19, 1, '2021-11-19', 'Astinet_IPP'),
(306, 23.64, 2.05, '2021-11-19', 'Astinet_IPP'),
(307, 33.29, 4.27, '2021-11-19', 'Astinet_IPP'),
(308, 34.83, 2.98, '2021-11-19', 'Astinet_IPP'),
(309, 19.58, 1.23, '2021-11-19', 'Astinet_IPP'),
(310, 23.69, 1, '2021-11-19', 'Astinet_IPP'),
(311, 25.19, 1.38, '2021-11-20', 'Astinet_IPP'),
(312, 36.21, 1.21, '2021-11-20', 'Astinet_IPP'),
(313, 27.02, 1.14, '2021-11-20', 'Astinet_IPP'),
(314, 27.58, 2.46, '2021-11-20', 'Astinet_IPP'),
(315, 20.37, 2.74, '2021-11-20', 'Astinet_IPP'),
(316, 18.09, 2.6, '2021-11-20', 'Astinet_IPP'),
(317, 23.3, 4.88, '2021-11-20', 'Astinet_IPP'),
(318, 39.52, 3.02, '2021-11-20', 'Astinet_IPP'),
(319, 34.43, 8.44, '2021-11-20', 'Astinet_IPP'),
(320, 30.97, 1.92, '2021-11-20', 'Astinet_IPP'),
(321, 12.05, 1, '2021-11-21', 'Astinet_IPP'),
(322, 13.27, 1, '2021-11-21', 'Astinet_IPP'),
(323, 11.71, 1, '2021-11-21', 'Astinet_IPP'),
(324, 14.1, 2.44, '2021-11-21', 'Astinet_IPP'),
(325, 10.31, 1, '2021-11-21', 'Astinet_IPP'),
(326, 8.44, 1.36, '2021-11-21', 'Astinet_IPP'),
(327, 8.05, 1, '2021-11-21', 'Astinet_IPP'),
(328, 11.65, 1, '2021-11-21', 'Astinet_IPP'),
(329, 12, 1, '2021-11-21', 'Astinet_IPP'),
(330, 18.29, 1, '2021-11-21', 'Astinet_IPP'),
(331, 46.4, 3.25, '2021-11-22', 'Astinet_IPP'),
(332, 30.08, 2.3, '2021-11-22', 'Astinet_IPP'),
(333, 41.33, 4.79, '2021-11-22', 'Astinet_IPP'),
(334, 44.83, 7.15, '2021-11-22', 'Astinet_IPP'),
(335, 29.08, 2.41, '2021-11-22', 'Astinet_IPP'),
(336, 38.29, 2.26, '2021-11-22', 'Astinet_IPP'),
(337, 40.2, 3.26, '2021-11-22', 'Astinet_IPP'),
(338, 45.46, 3.78, '2021-11-22', 'Astinet_IPP'),
(339, 18.21, 1.47, '2021-11-22', 'Astinet_IPP'),
(340, 21.09, 1.1, '2021-11-22', 'Astinet_IPP'),
(341, 34.8, 4.06, '2021-11-23', 'Astinet_IPP'),
(342, 28.38, 3.33, '2021-11-23', 'Astinet_IPP'),
(343, 50.56, 5.93, '2021-11-23', 'Astinet_IPP'),
(344, 48.83, 2.74, '2021-11-23', 'Astinet_IPP'),
(345, 38.1, 1.67, '2021-11-23', 'Astinet_IPP'),
(346, 35.87, 2.72, '2021-11-23', 'Astinet_IPP'),
(347, 41.42, 2.92, '2021-11-23', 'Astinet_IPP'),
(348, 50.64, 4.15, '2021-11-23', 'Astinet_IPP'),
(349, 37.88, 1.99, '2021-11-23', 'Astinet_IPP'),
(350, 31.36, 1.6, '2021-11-23', 'Astinet_IPP'),
(351, 30.66, 10.4, '2021-11-24', 'Astinet_IPP'),
(352, 29.62, 2.19, '2021-11-24', 'Astinet_IPP'),
(353, 48.85, 3.44, '2021-11-24', 'Astinet_IPP'),
(354, 28.66, 2.24, '2021-11-24', 'Astinet_IPP'),
(355, 31.22, 1.58, '2021-11-24', 'Astinet_IPP'),
(356, 36.69, 2.44, '2021-11-24', 'Astinet_IPP'),
(357, 37.55, 3.01, '2021-11-24', 'Astinet_IPP'),
(358, 43.62, 5.13, '2021-11-24', 'Astinet_IPP'),
(359, 26.79, 1.37, '2021-11-24', 'Astinet_IPP'),
(360, 27.52, 1.64, '2021-11-24', 'Astinet_IPP'),
(361, 31.03, 2.02, '2021-11-25', 'Astinet_IPP'),
(362, 28.07, 2.26, '2021-11-25', 'Astinet_IPP'),
(363, 39.32, 5.6, '2021-11-25', 'Astinet_IPP'),
(364, 37.36, 3.29, '2021-11-25', 'Astinet_IPP'),
(365, 40.27, 2.29, '2021-11-25', 'Astinet_IPP'),
(366, 35.69, 7.12, '2021-11-25', 'Astinet_IPP'),
(367, 31.67, 27.53, '2021-11-25', 'Astinet_IPP'),
(368, 42.79, 2.17, '2021-11-25', 'Astinet_IPP'),
(369, 34.31, 3.97, '2021-11-25', 'Astinet_IPP'),
(370, 44.75, 4.51, '2021-11-25', 'Astinet_IPP'),
(371, 30.85, 2.26, '2021-11-26', 'Astinet_IPP'),
(372, 37.41, 1.96, '2021-11-26', 'Astinet_IPP'),
(373, 42.18, 3.14, '2021-11-26', 'Astinet_IPP'),
(374, 26.24, 6.27, '2021-11-26', 'Astinet_IPP'),
(375, 17.7, 2.35, '2021-11-26', 'Astinet_IPP'),
(376, 42.82, 6.64, '2021-11-26', 'Astinet_IPP'),
(377, 37.46, 3.14, '2021-11-26', 'Astinet_IPP'),
(378, 32.25, 2.69, '2021-11-26', 'Astinet_IPP'),
(379, 18.17, 1.4, '2021-11-26', 'Astinet_IPP'),
(380, 30.33, 1.44, '2021-11-26', 'Astinet_IPP'),
(381, 26.03, 1.65, '2021-11-27', 'Astinet_IPP'),
(382, 21.91, 1, '2021-11-27', 'Astinet_IPP'),
(383, 33.85, 1.36, '2021-11-27', 'Astinet_IPP'),
(384, 33.61, 1.12, '2021-11-27', 'Astinet_IPP'),
(385, 26.2, 1.19, '2021-11-27', 'Astinet_IPP'),
(386, 17.81, 1, '2021-11-27', 'Astinet_IPP'),
(387, 14.57, 1, '2021-11-27', 'Astinet_IPP'),
(388, 23.24, 1.68, '2021-11-27', 'Astinet_IPP'),
(389, 25.35, 1.22, '2021-11-27', 'Astinet_IPP'),
(390, 32.25, 1.55, '2021-11-27', 'Astinet_IPP'),
(391, 2.22, 1, '2021-11-28', 'Astinet_IPP'),
(392, 7.06, 1, '2021-11-28', 'Astinet_IPP'),
(393, 2.57, 1, '2021-11-28', 'Astinet_IPP'),
(394, 6.54, 1, '2021-11-28', 'Astinet_IPP'),
(395, 3.41, 1, '2021-11-28', 'Astinet_IPP'),
(396, 10.02, 1, '2021-11-28', 'Astinet_IPP'),
(397, 4.93, 1, '2021-11-28', 'Astinet_IPP'),
(398, 2.83, 1, '2021-11-28', 'Astinet_IPP'),
(399, 3.94, 1, '2021-11-28', 'Astinet_IPP'),
(400, 3.83, 1, '2021-11-28', 'Astinet_IPP'),
(401, 23.04, 1.59, '2021-11-29', 'Astinet_IPP'),
(402, 23.83, 2.55, '2021-11-29', 'Astinet_IPP'),
(403, 45.62, 3.46, '2021-11-29', 'Astinet_IPP'),
(404, 28.28, 19.17, '2021-11-29', 'Astinet_IPP'),
(405, 21.89, 10.18, '2021-11-29', 'Astinet_IPP'),
(406, 34.49, 4.7, '2021-11-29', 'Astinet_IPP'),
(407, 33.33, 4.81, '2021-11-29', 'Astinet_IPP'),
(408, 40.1, 5.55, '2021-11-29', 'Astinet_IPP'),
(409, 26.67, 1.46, '2021-11-29', 'Astinet_IPP'),
(410, 32.47, 1.82, '2021-11-29', 'Astinet_IPP'),
(411, 28.35, 4.4, '2021-11-30', 'Astinet_IPP'),
(412, 28.66, 2.18, '2021-11-30', 'Astinet_IPP'),
(413, 41.03, 2.34, '2021-11-30', 'Astinet_IPP'),
(414, 46.99, 2.15, '2021-11-30', 'Astinet_IPP'),
(415, 37.39, 1.75, '2021-11-30', 'Astinet_IPP'),
(416, 24.81, 11.84, '2021-11-30', 'Astinet_IPP'),
(417, 33.87, 29.85, '2021-11-30', 'Astinet_IPP'),
(418, 20.37, 20.12, '2021-11-30', 'Astinet_IPP'),
(419, 28.43, 2.37, '2021-11-30', 'Astinet_IPP'),
(420, 27.47, 4.59, '2021-11-30', 'Astinet_IPP'),
(421, 6.07, 1, '2021-11-17', 'Astinet_TG'),
(422, 3.3, 1, '2021-11-17', 'Astinet_TG'),
(423, 4.59, 1, '2021-11-17', 'Astinet_TG'),
(424, 4.75, 1, '2021-11-17', 'Astinet_TG'),
(425, 3.56, 1, '2021-11-17', 'Astinet_TG'),
(426, 10.66, 1, '2021-11-17', 'Astinet_TG'),
(427, 3.84, 1.08, '2021-11-17', 'Astinet_TG'),
(428, 8.46, 1, '2021-11-17', 'Astinet_TG'),
(429, 2.61, 1, '2021-11-17', 'Astinet_TG'),
(430, 1.63, 1, '2021-11-17', 'Astinet_TG'),
(431, 6.74, 1, '2021-11-18', 'Astinet_TG'),
(432, 6.86, 1.07, '2021-11-18', 'Astinet_TG'),
(433, 6.72, 1, '2021-11-18', 'Astinet_TG'),
(434, 7.38, 2.15, '2021-11-18', 'Astinet_TG'),
(435, 3.82, 1, '2021-11-18', 'Astinet_TG'),
(436, 6.21, 1, '2021-11-18', 'Astinet_TG'),
(437, 6.89, 1.78, '2021-11-18', 'Astinet_TG'),
(438, 5.88, 1.03, '2021-11-18', 'Astinet_TG'),
(439, 3.11, 1, '2021-11-18', 'Astinet_TG'),
(440, 4.47, 1, '2021-11-18', 'Astinet_TG'),
(441, 7.07, 1.07, '2021-11-19', 'Astinet_TG'),
(442, 4.91, 1, '2021-11-19', 'Astinet_TG'),
(443, 9.91, 1.43, '2021-11-19', 'Astinet_TG'),
(444, 7.16, 3.06, '2021-11-19', 'Astinet_TG'),
(445, 2.59, 1, '2021-11-19', 'Astinet_TG'),
(446, 4.42, 1, '2021-11-19', 'Astinet_TG'),
(447, 4.94, 1.17, '2021-11-19', 'Astinet_TG'),
(448, 6.63, 1.28, '2021-11-19', 'Astinet_TG'),
(449, 4.03, 1, '2021-11-19', 'Astinet_TG'),
(450, 2.55, 1, '2021-11-19', 'Astinet_TG'),
(451, 3.3, 1, '2021-11-20', 'Astinet_TG'),
(452, 1.73, 1, '2021-11-20', 'Astinet_TG'),
(453, 1.79, 1, '2021-11-20', 'Astinet_TG'),
(454, 3.5, 1, '2021-11-20', 'Astinet_TG'),
(455, 1, 1, '2021-11-20', 'Astinet_TG'),
(456, 1.08, 1, '2021-11-20', 'Astinet_TG'),
(457, 5.08, 4.41, '2021-11-20', 'Astinet_TG'),
(458, 2.14, 1, '2021-11-20', 'Astinet_TG'),
(459, 2.46, 1, '2021-11-20', 'Astinet_TG'),
(460, 2.21, 1, '2021-11-20', 'Astinet_TG'),
(461, 1.2, 1, '2021-11-21', 'Astinet_TG'),
(462, 1, 1, '2021-11-21', 'Astinet_TG'),
(463, 1.43, 1, '2021-11-21', 'Astinet_TG'),
(464, 1.66, 1, '2021-11-21', 'Astinet_TG'),
(465, 1.72, 1, '2021-11-21', 'Astinet_TG'),
(466, 1.7, 1, '2021-11-21', 'Astinet_TG'),
(467, 1.41, 1, '2021-11-21', 'Astinet_TG'),
(468, 1, 1, '2021-11-21', 'Astinet_TG'),
(469, 2.04, 1, '2021-11-21', 'Astinet_TG'),
(470, 2.28, 1, '2021-11-21', 'Astinet_TG'),
(471, 7.5, 3.68, '2021-11-22', 'Astinet_TG'),
(472, 2.55, 1, '2021-11-22', 'Astinet_TG'),
(473, 6.04, 1, '2021-11-22', 'Astinet_TG'),
(474, 7.02, 1, '2021-11-22', 'Astinet_TG'),
(475, 2.66, 1, '2021-11-22', 'Astinet_TG'),
(476, 7.21, 1, '2021-11-22', 'Astinet_TG'),
(477, 12.48, 1, '2021-11-22', 'Astinet_TG'),
(478, 5.18, 1, '2021-11-22', 'Astinet_TG'),
(479, 2.91, 1, '2021-11-22', 'Astinet_TG'),
(480, 1.31, 1, '2021-11-22', 'Astinet_TG'),
(481, 9.74, 3.58, '2021-11-23', 'Astinet_TG'),
(482, 4.61, 1, '2021-11-23', 'Astinet_TG'),
(483, 6.24, 1, '2021-11-23', 'Astinet_TG'),
(484, 6.66, 1.03, '2021-11-23', 'Astinet_TG'),
(485, 5.43, 1, '2021-11-23', 'Astinet_TG'),
(486, 8, 1, '2021-11-23', 'Astinet_TG'),
(487, 6.51, 1, '2021-11-23', 'Astinet_TG'),
(488, 7.53, 1.2, '2021-11-23', 'Astinet_TG'),
(489, 3.71, 1, '2021-11-23', 'Astinet_TG'),
(490, 2.62, 1, '2021-11-23', 'Astinet_TG'),
(491, 10.14, 1, '2021-11-24', 'Astinet_TG'),
(492, 4.32, 1, '2021-11-24', 'Astinet_TG'),
(493, 5.75, 1, '2021-11-24', 'Astinet_TG'),
(494, 5.95, 1, '2021-11-24', 'Astinet_TG'),
(495, 4.68, 1, '2021-11-24', 'Astinet_TG'),
(496, 3.46, 1, '2021-11-24', 'Astinet_TG'),
(497, 5.02, 1, '2021-11-24', 'Astinet_TG'),
(498, 4.2, 1, '2021-11-24', 'Astinet_TG'),
(499, 3.75, 1, '2021-11-24', 'Astinet_TG'),
(500, 1.06, 1, '2021-11-24', 'Astinet_TG'),
(501, 5.61, 1, '2021-11-25', 'Astinet_TG'),
(502, 5.18, 1, '2021-11-25', 'Astinet_TG'),
(503, 3.65, 1, '2021-11-25', 'Astinet_TG'),
(504, 6.68, 1, '2021-11-25', 'Astinet_TG'),
(505, 5.99, 1, '2021-11-25', 'Astinet_TG'),
(506, 7.26, 1, '2021-11-25', 'Astinet_TG'),
(507, 14.46, 1, '2021-11-25', 'Astinet_TG'),
(508, 11.74, 1, '2021-11-25', 'Astinet_TG'),
(509, 3.72, 1, '2021-11-25', 'Astinet_TG'),
(510, 2.52, 1, '2021-11-25', 'Astinet_TG'),
(511, 4.88, 1, '2021-11-26', 'Astinet_TG'),
(512, 3.46, 1, '2021-11-26', 'Astinet_TG'),
(513, 4.61, 1, '2021-11-26', 'Astinet_TG'),
(514, 2.78, 1, '2021-11-26', 'Astinet_TG'),
(515, 1.11, 1, '2021-11-26', 'Astinet_TG'),
(516, 3.36, 1, '2021-11-26', 'Astinet_TG'),
(517, 10.45, 1, '2021-11-26', 'Astinet_TG'),
(518, 7.06, 1.08, '2021-11-26', 'Astinet_TG'),
(519, 4.51, 1.06, '2021-11-26', 'Astinet_TG'),
(520, 3.33, 1, '2021-11-26', 'Astinet_TG'),
(521, 4.6, 1, '2021-11-27', 'Astinet_TG'),
(522, 7.15, 1, '2021-11-27', 'Astinet_TG'),
(523, 12.72, 1, '2021-11-27', 'Astinet_TG'),
(524, 9.21, 1, '2021-11-27', 'Astinet_TG'),
(525, 3.85, 1, '2021-11-27', 'Astinet_TG'),
(526, 2.88, 1, '2021-11-27', 'Astinet_TG'),
(527, 4.26, 1, '2021-11-27', 'Astinet_TG'),
(528, 5.34, 1, '2021-11-27', 'Astinet_TG'),
(529, 2.37, 1, '2021-11-27', 'Astinet_TG'),
(530, 1.61, 1, '2021-11-27', 'Astinet_TG'),
(531, 1, 1, '2021-11-28', 'Astinet_TG'),
(532, 1, 1, '2021-11-28', 'Astinet_TG'),
(533, 1, 2.78, '2021-11-28', 'Astinet_TG'),
(534, 1, 1, '2021-11-28', 'Astinet_TG'),
(535, 2.65, 1, '2021-11-28', 'Astinet_TG'),
(536, 1.84, 1, '2021-11-28', 'Astinet_TG'),
(537, 1.04, 1, '2021-11-28', 'Astinet_TG'),
(538, 1, 1, '2021-11-28', 'Astinet_TG'),
(539, 0.35, 1, '2021-11-28', 'Astinet_TG'),
(540, 0.14, 1, '2021-11-28', 'Astinet_TG'),
(541, 5.01, 1, '2021-11-29', 'Astinet_TG'),
(542, 4.38, 1, '2021-11-29', 'Astinet_TG'),
(543, 6.59, 1, '2021-11-29', 'Astinet_TG'),
(544, 3.55, 1, '2021-11-29', 'Astinet_TG'),
(545, 4.72, 1, '2021-11-29', 'Astinet_TG'),
(546, 6.39, 1, '2021-11-29', 'Astinet_TG'),
(547, 6.89, 1, '2021-11-29', 'Astinet_TG'),
(548, 4.93, 1, '2021-11-29', 'Astinet_TG'),
(549, 1.65, 1, '2021-11-29', 'Astinet_TG'),
(550, 1.3, 1, '2021-11-29', 'Astinet_TG'),
(551, 3.76, 1, '2021-11-30', 'Astinet_TG'),
(552, 3.45, 1, '2021-11-30', 'Astinet_TG'),
(553, 5.64, 1, '2021-11-30', 'Astinet_TG'),
(554, 5.99, 1.45, '2021-11-30', 'Astinet_TG'),
(555, 3.37, 1, '2021-11-30', 'Astinet_TG'),
(556, 3.91, 1, '2021-11-30', 'Astinet_TG'),
(557, 3.96, 1, '2021-11-30', 'Astinet_TG'),
(558, 7.26, 1, '2021-11-30', 'Astinet_TG'),
(559, 3.08, 1, '2021-11-30', 'Astinet_TG'),
(560, 4.23, 1, '2021-11-30', 'Astinet_TG'),
(561, 69.53, 10.38, '2021-11-17', 'Astinet_ISP'),
(562, 90, 13.49, '2021-11-17', 'Astinet_ISP'),
(563, 77.53, 14.4, '2021-11-17', 'Astinet_ISP'),
(564, 90.88, 11.05, '2021-11-17', 'Astinet_ISP'),
(565, 61.34, 4.71, '2021-11-17', 'Astinet_ISP'),
(566, 79.64, 8.09, '2021-11-17', 'Astinet_ISP'),
(567, 75.4, 8.14, '2021-11-17', 'Astinet_ISP'),
(568, 97.13, 8.68, '2021-11-17', 'Astinet_ISP'),
(569, 48.11, 6.41, '2021-11-17', 'Astinet_ISP'),
(570, 33.04, 3.48, '2021-11-17', 'Astinet_ISP'),
(571, 53.6, 16.06, '2021-11-18', 'Astinet_ISP'),
(572, 64.19, 15.26, '2021-11-18', 'Astinet_ISP'),
(573, 66.49, 15.69, '2021-11-18', 'Astinet_ISP'),
(574, 52.47, 7.83, '2021-11-18', 'Astinet_ISP'),
(575, 44.94, 4.15, '2021-11-18', 'Astinet_ISP'),
(576, 64.01, 8.01, '2021-11-18', 'Astinet_ISP'),
(577, 61.15, 13.48, '2021-11-18', 'Astinet_ISP'),
(578, 44.52, 8.59, '2021-11-18', 'Astinet_ISP'),
(579, 49.36, 6.3, '2021-11-18', 'Astinet_ISP'),
(580, 35.32, 6.26, '2021-11-18', 'Astinet_ISP'),
(581, 61.43, 8.56, '2021-11-19', 'Astinet_ISP'),
(582, 52.75, 21.67, '2021-11-19', 'Astinet_ISP'),
(583, 76.88, 18.6, '2021-11-19', 'Astinet_ISP'),
(584, 70.16, 18.83, '2021-11-19', 'Astinet_ISP'),
(585, 43.38, 14.64, '2021-11-19', 'Astinet_ISP'),
(586, 67.55, 15.68, '2021-11-19', 'Astinet_ISP'),
(587, 85.91, 13.61, '2021-11-19', 'Astinet_ISP'),
(588, 70.64, 9.97, '2021-11-19', 'Astinet_ISP'),
(589, 52.94, 9.88, '2021-11-19', 'Astinet_ISP'),
(590, 23.92, 6.22, '2021-11-19', 'Astinet_ISP'),
(591, 13.94, 1, '2021-11-20', 'Astinet_ISP'),
(592, 22.64, 3.34, '2021-11-20', 'Astinet_ISP'),
(593, 20.82, 3.14, '2021-11-20', 'Astinet_ISP'),
(594, 20.58, 1.69, '2021-11-20', 'Astinet_ISP'),
(595, 8.52, 2.42, '2021-11-20', 'Astinet_ISP'),
(596, 14.75, 7.24, '2021-11-20', 'Astinet_ISP'),
(597, 11.92, 7.25, '2021-11-20', 'Astinet_ISP'),
(598, 11.06, 8.1, '2021-11-20', 'Astinet_ISP'),
(599, 7.67, 6.45, '2021-11-20', 'Astinet_ISP'),
(600, 11.18, 4.45, '2021-11-20', 'Astinet_ISP'),
(601, 6.9, 1, '2021-11-21', 'Astinet_ISP'),
(602, 8.59, 1, '2021-11-21', 'Astinet_ISP'),
(603, 4.66, 1, '2021-11-21', 'Astinet_ISP'),
(604, 7.19, 1, '2021-11-21', 'Astinet_ISP'),
(605, 5.98, 1.56, '2021-11-21', 'Astinet_ISP'),
(606, 5.22, 1.73, '2021-11-21', 'Astinet_ISP'),
(607, 10.5, 1.09, '2021-11-21', 'Astinet_ISP'),
(608, 13.47, 1, '2021-11-21', 'Astinet_ISP'),
(609, 11.65, 1.43, '2021-11-21', 'Astinet_ISP'),
(610, 11.1, 1.15, '2021-11-21', 'Astinet_ISP'),
(611, 64.19, 11.03, '2021-11-22', 'Astinet_ISP'),
(612, 77.52, 10.85, '2021-11-22', 'Astinet_ISP'),
(613, 83.96, 17.77, '2021-11-22', 'Astinet_ISP'),
(614, 82.45, 13.84, '2021-11-22', 'Astinet_ISP'),
(615, 58.15, 12.08, '2021-11-22', 'Astinet_ISP'),
(616, 59.8, 14.45, '2021-11-22', 'Astinet_ISP'),
(617, 68.46, 16.69, '2021-11-22', 'Astinet_ISP'),
(618, 59.39, 15.26, '2021-11-22', 'Astinet_ISP'),
(619, 62.65, 11.4, '2021-11-22', 'Astinet_ISP'),
(620, 38.4, 9.47, '2021-11-22', 'Astinet_ISP'),
(621, 55.57, 14.41, '2021-11-23', 'Astinet_ISP'),
(622, 80.09, 25.12, '2021-11-23', 'Astinet_ISP'),
(623, 75.6, 30.29, '2021-11-23', 'Astinet_ISP'),
(624, 63.59, 26.09, '2021-11-23', 'Astinet_ISP'),
(625, 35.96, 22.02, '2021-11-23', 'Astinet_ISP'),
(626, 64.59, 27.78, '2021-11-23', 'Astinet_ISP'),
(627, 63.65, 23.25, '2021-11-23', 'Astinet_ISP'),
(628, 58.14, 21.02, '2021-11-23', 'Astinet_ISP'),
(629, 61.87, 18.12, '2021-11-23', 'Astinet_ISP'),
(630, 36.65, 4.45, '2021-11-23', 'Astinet_ISP'),
(631, 46.48, 5.2, '2021-11-24', 'Astinet_ISP'),
(632, 62.19, 13.72, '2021-11-24', 'Astinet_ISP'),
(633, 72.54, 13.73, '2021-11-24', 'Astinet_ISP'),
(634, 90.79, 18.34, '2021-11-24', 'Astinet_ISP'),
(635, 58.11, 13.46, '2021-11-24', 'Astinet_ISP'),
(636, 54.52, 33.23, '2021-11-24', 'Astinet_ISP'),
(637, 55.85, 25.81, '2021-11-24', 'Astinet_ISP'),
(638, 50.43, 28.85, '2021-11-24', 'Astinet_ISP'),
(639, 33.77, 20.71, '2021-11-24', 'Astinet_ISP'),
(640, 25.23, 3.57, '2021-11-24', 'Astinet_ISP'),
(641, 44.27, 10.42, '2021-11-25', 'Astinet_ISP'),
(642, 64.34, 24.45, '2021-11-25', 'Astinet_ISP'),
(643, 55.41, 15.97, '2021-11-25', 'Astinet_ISP'),
(644, 68.65, 14.9, '2021-11-25', 'Astinet_ISP'),
(645, 39.82, 13.63, '2021-11-25', 'Astinet_ISP'),
(646, 70.32, 18.63, '2021-11-25', 'Astinet_ISP'),
(647, 59.84, 21.69, '2021-11-25', 'Astinet_ISP'),
(648, 50.8, 20.57, '2021-11-25', 'Astinet_ISP'),
(649, 43.85, 18.67, '2021-11-25', 'Astinet_ISP'),
(650, 28.52, 10.95, '2021-11-25', 'Astinet_ISP'),
(651, 52.7, 9.89, '2021-11-26', 'Astinet_ISP'),
(652, 74.69, 19.06, '2021-11-26', 'Astinet_ISP'),
(653, 76.23, 18.29, '2021-11-26', 'Astinet_ISP'),
(654, 82.42, 20.24, '2021-11-26', 'Astinet_ISP'),
(655, 57.97, 9.28, '2021-11-26', 'Astinet_ISP'),
(656, 74.64, 12.94, '2021-11-26', 'Astinet_ISP'),
(657, 63.12, 20.88, '2021-11-26', 'Astinet_ISP'),
(658, 51.54, 13.44, '2021-11-26', 'Astinet_ISP'),
(659, 51.55, 14.41, '2021-11-26', 'Astinet_ISP'),
(660, 37.07, 9.56, '2021-11-26', 'Astinet_ISP'),
(661, 12.5, 1.9, '2021-11-27', 'Astinet_ISP'),
(662, 16.41, 1.63, '2021-11-27', 'Astinet_ISP'),
(663, 29.69, 2.2, '2021-11-27', 'Astinet_ISP'),
(664, 20.35, 1.57, '2021-11-27', 'Astinet_ISP'),
(665, 19.25, 1.63, '2021-11-27', 'Astinet_ISP'),
(666, 11.91, 1.87, '2021-11-27', 'Astinet_ISP'),
(667, 11.84, 1.07, '2021-11-27', 'Astinet_ISP'),
(668, 11.16, 1, '2021-11-27', 'Astinet_ISP'),
(669, 9.09, 1, '2021-11-27', 'Astinet_ISP'),
(670, 6.69, 1, '2021-11-27', 'Astinet_ISP'),
(671, 4.62, 1, '2021-11-28', 'Astinet_ISP'),
(672, 6.95, 1, '2021-11-28', 'Astinet_ISP'),
(673, 7.39, 1.3, '2021-11-28', 'Astinet_ISP'),
(674, 7.97, 2.34, '2021-11-28', 'Astinet_ISP'),
(675, 8.29, 1, '2021-11-28', 'Astinet_ISP'),
(676, 4.7, 1, '2021-11-28', 'Astinet_ISP'),
(677, 4.76, 1, '2021-11-28', 'Astinet_ISP'),
(678, 7.97, 1.36, '2021-11-28', 'Astinet_ISP'),
(679, 10.86, 1.52, '2021-11-28', 'Astinet_ISP'),
(680, 10.24, 2.29, '2021-11-28', 'Astinet_ISP'),
(681, 43.41, 8.56, '2021-11-29', 'Astinet_ISP'),
(682, 57.98, 14.16, '2021-11-29', 'Astinet_ISP'),
(683, 67.1, 16.71, '2021-11-29', 'Astinet_ISP'),
(684, 78.48, 12.07, '2021-11-29', 'Astinet_ISP'),
(685, 52.49, 8.2, '2021-11-29', 'Astinet_ISP'),
(686, 69.71, 9.01, '2021-11-29', 'Astinet_ISP'),
(687, 74.78, 10.61, '2021-11-29', 'Astinet_ISP'),
(688, 58.6, 10.51, '2021-11-29', 'Astinet_ISP'),
(689, 59.01, 13.68, '2021-11-29', 'Astinet_ISP'),
(690, 40.19, 6.67, '2021-11-29', 'Astinet_ISP'),
(691, 64.24, 15.49, '2021-11-30', 'Astinet_ISP'),
(692, 69.99, 19.43, '2021-11-30', 'Astinet_ISP'),
(693, 74.32, 20.6, '2021-11-30', 'Astinet_ISP'),
(694, 84.97, 22.29, '2021-11-30', 'Astinet_ISP'),
(695, 59.15, 15.17, '2021-11-30', 'Astinet_ISP'),
(696, 79.72, 17.78, '2021-11-30', 'Astinet_ISP'),
(697, 74.85, 17.52, '2021-11-30', 'Astinet_ISP'),
(698, 65.55, 25.44, '2021-11-30', 'Astinet_ISP'),
(699, 57.07, 14.06, '2021-11-30', 'Astinet_ISP'),
(700, 25.75, 6.18, '2021-11-30', 'Astinet_ISP'),
(701, 34.09, 6.87, '2021-11-17', 'Indosat_ISP'),
(702, 34.93, 7.86, '2021-11-17', 'Indosat_ISP'),
(703, 34.32, 6.95, '2021-11-17', 'Indosat_ISP'),
(704, 30.82, 4.19, '2021-11-17', 'Indosat_ISP'),
(705, 25.44, 2.29, '2021-11-17', 'Indosat_ISP'),
(706, 37.42, 4.29, '2021-11-17', 'Indosat_ISP'),
(707, 41.63, 4.51, '2021-11-17', 'Indosat_ISP'),
(708, 30.57, 3.79, '2021-11-17', 'Indosat_ISP'),
(709, 12.46, 1.05, '2021-11-17', 'Indosat_ISP'),
(710, 15.95, 1.12, '2021-11-17', 'Indosat_ISP'),
(711, 27.88, 11.38, '2021-11-18', 'Indosat_ISP'),
(712, 41.25, 4.59, '2021-11-18', 'Indosat_ISP'),
(713, 46.19, 4.32, '2021-11-18', 'Indosat_ISP'),
(714, 32.51, 4.19, '2021-11-18', 'Indosat_ISP'),
(715, 34.5, 2.53, '2021-11-18', 'Indosat_ISP'),
(716, 32.56, 3.64, '2021-11-18', 'Indosat_ISP'),
(717, 31.02, 11.64, '2021-11-18', 'Indosat_ISP'),
(718, 23.86, 8.86, '2021-11-18', 'Indosat_ISP'),
(719, 17.26, 3.91, '2021-11-18', 'Indosat_ISP'),
(720, 10.6, 1.03, '2021-11-18', 'Indosat_ISP'),
(721, 30.76, 6.66, '2021-11-19', 'Indosat_ISP'),
(722, 26.97, 4.45, '2021-11-19', 'Indosat_ISP'),
(723, 24.86, 4.92, '2021-11-19', 'Indosat_ISP'),
(724, 41.95, 14.93, '2021-11-19', 'Indosat_ISP'),
(725, 17.14, 3.5, '2021-11-19', 'Indosat_ISP'),
(726, 30.38, 8.12, '2021-11-19', 'Indosat_ISP'),
(727, 32.64, 6.5, '2021-11-19', 'Indosat_ISP'),
(728, 27.32, 3.77, '2021-11-19', 'Indosat_ISP'),
(729, 15.79, 1.89, '2021-11-19', 'Indosat_ISP'),
(730, 15.35, 2.53, '2021-11-19', 'Indosat_ISP'),
(731, 21.93, 4.14, '2021-11-20', 'Indosat_ISP'),
(732, 19.36, 2.73, '2021-11-20', 'Indosat_ISP'),
(733, 19.65, 1.98, '2021-11-20', 'Indosat_ISP'),
(734, 25.5, 2.14, '2021-11-20', 'Indosat_ISP'),
(735, 24.4, 1.22, '2021-11-20', 'Indosat_ISP'),
(736, 30.56, 1.51, '2021-11-20', 'Indosat_ISP'),
(737, 28.68, 1.78, '2021-11-20', 'Indosat_ISP'),
(738, 24.03, 1.51, '2021-11-20', 'Indosat_ISP'),
(739, 13.18, 1, '2021-11-20', 'Indosat_ISP'),
(740, 15.11, 1, '2021-11-20', 'Indosat_ISP'),
(741, 10.47, 1, '2021-11-21', 'Indosat_ISP'),
(742, 10.23, 1, '2021-11-21', 'Indosat_ISP'),
(743, 12.81, 1.13, '2021-11-21', 'Indosat_ISP'),
(744, 14, 1, '2021-11-21', 'Indosat_ISP'),
(745, 20.83, 1, '2021-11-21', 'Indosat_ISP'),
(746, 15.31, 1, '2021-11-21', 'Indosat_ISP'),
(747, 13.08, 1, '2021-11-21', 'Indosat_ISP'),
(748, 10.26, 1, '2021-11-21', 'Indosat_ISP'),
(749, 10.91, 1, '2021-11-21', 'Indosat_ISP'),
(750, 19.96, 1, '2021-11-21', 'Indosat_ISP'),
(751, 39.78, 5.3, '2021-11-22', 'Indosat_ISP'),
(752, 36.11, 5.76, '2021-11-22', 'Indosat_ISP'),
(753, 28.35, 5.72, '2021-11-22', 'Indosat_ISP'),
(754, 25.9, 4.4, '2021-11-22', 'Indosat_ISP'),
(755, 23.83, 3.19, '2021-11-22', 'Indosat_ISP'),
(756, 27.85, 4.34, '2021-11-22', 'Indosat_ISP'),
(757, 36.61, 5.17, '2021-11-22', 'Indosat_ISP'),
(758, 32.35, 3.54, '2021-11-22', 'Indosat_ISP'),
(759, 12.33, 1.39, '2021-11-22', 'Indosat_ISP'),
(760, 20.13, 1.03, '2021-11-22', 'Indosat_ISP'),
(761, 34.41, 9.44, '2021-11-23', 'Indosat_ISP'),
(762, 29.16, 5.03, '2021-11-23', 'Indosat_ISP'),
(763, 29.15, 3.59, '2021-11-23', 'Indosat_ISP'),
(764, 36.85, 5.54, '2021-11-23', 'Indosat_ISP'),
(765, 28.75, 2.74, '2021-11-23', 'Indosat_ISP'),
(766, 29.29, 10.35, '2021-11-23', 'Indosat_ISP'),
(767, 36.08, 4.68, '2021-11-23', 'Indosat_ISP'),
(768, 33.15, 3.29, '2021-11-23', 'Indosat_ISP'),
(769, 12.21, 1.18, '2021-11-23', 'Indosat_ISP'),
(770, 11.52, 1, '2021-11-23', 'Indosat_ISP'),
(771, 31.1, 9.86, '2021-11-24', 'Indosat_ISP'),
(772, 37.5, 5.84, '2021-11-24', 'Indosat_ISP'),
(773, 28.3, 4.16, '2021-11-24', 'Indosat_ISP'),
(774, 29.77, 5.14, '2021-11-24', 'Indosat_ISP'),
(775, 25.09, 2.21, '2021-11-24', 'Indosat_ISP'),
(776, 33.4, 4.08, '2021-11-24', 'Indosat_ISP'),
(777, 31.61, 13.1, '2021-11-24', 'Indosat_ISP'),
(778, 35.67, 17.55, '2021-11-24', 'Indosat_ISP'),
(779, 18.53, 9.4, '2021-11-24', 'Indosat_ISP'),
(780, 11.73, 1.03, '2021-11-24', 'Indosat_ISP'),
(781, 25.38, 4.86, '2021-11-25', 'Indosat_ISP'),
(782, 26.98, 3.39, '2021-11-25', 'Indosat_ISP'),
(783, 29.3, 5.04, '2021-11-25', 'Indosat_ISP'),
(784, 34.32, 4.25, '2021-11-25', 'Indosat_ISP'),
(785, 25.02, 2.42, '2021-11-25', 'Indosat_ISP'),
(786, 25.05, 3.29, '2021-11-25', 'Indosat_ISP'),
(787, 26.45, 4.78, '2021-11-25', 'Indosat_ISP'),
(788, 22.9, 3.73, '2021-11-25', 'Indosat_ISP'),
(789, 13.41, 1.2, '2021-11-25', 'Indosat_ISP'),
(790, 13.43, 1, '2021-11-25', 'Indosat_ISP'),
(791, 23.39, 4.55, '2021-11-26', 'Indosat_ISP'),
(792, 32.84, 5.98, '2021-11-26', 'Indosat_ISP'),
(793, 35.73, 5.75, '2021-11-26', 'Indosat_ISP'),
(794, 29.04, 18.56, '2021-11-26', 'Indosat_ISP'),
(795, 20.84, 1.49, '2021-11-26', 'Indosat_ISP'),
(796, 34.29, 2.96, '2021-11-26', 'Indosat_ISP'),
(797, 36.88, 4.84, '2021-11-26', 'Indosat_ISP'),
(798, 28.34, 4.66, '2021-11-26', 'Indosat_ISP'),
(799, 13.24, 3.26, '2021-11-26', 'Indosat_ISP'),
(800, 13.18, 1, '2021-11-26', 'Indosat_ISP'),
(801, 27.6, 1.67, '2021-11-27', 'Indosat_ISP'),
(802, 39.23, 2.37, '2021-11-27', 'Indosat_ISP'),
(803, 50.63, 2.54, '2021-11-27', 'Indosat_ISP'),
(804, 50.07, 2.39, '2021-11-27', 'Indosat_ISP'),
(805, 25.7, 2.49, '2021-11-27', 'Indosat_ISP'),
(806, 25.83, 1.55, '2021-11-27', 'Indosat_ISP'),
(807, 22.13, 1.6, '2021-11-27', 'Indosat_ISP'),
(808, 20.71, 1.51, '2021-11-27', 'Indosat_ISP'),
(809, 14.41, 1, '2021-11-27', 'Indosat_ISP'),
(810, 17.73, 1, '2021-11-27', 'Indosat_ISP'),
(811, 10.11, 1, '2021-11-28', 'Indosat_ISP'),
(812, 9.92, 1, '2021-11-28', 'Indosat_ISP'),
(813, 13.12, 1, '2021-11-28', 'Indosat_ISP'),
(814, 14.11, 1, '2021-11-28', 'Indosat_ISP'),
(815, 7.99, 1, '2021-11-28', 'Indosat_ISP'),
(816, 14.47, 1, '2021-11-28', 'Indosat_ISP'),
(817, 12.11, 1, '2021-11-28', 'Indosat_ISP'),
(818, 16.35, 1, '2021-11-28', 'Indosat_ISP'),
(819, 14.92, 1.84, '2021-11-28', 'Indosat_ISP'),
(820, 17.1, 1, '2021-11-28', 'Indosat_ISP'),
(821, 43.04, 6.84, '2021-11-29', 'Indosat_ISP'),
(822, 32.16, 7.62, '2021-11-29', 'Indosat_ISP'),
(823, 35.44, 4.78, '2021-11-29', 'Indosat_ISP'),
(824, 45.56, 5.87, '2021-11-29', 'Indosat_ISP'),
(825, 7.98, 7.61, '2021-11-29', 'Indosat_ISP'),
(826, 28.64, 4.34, '2021-11-29', 'Indosat_ISP'),
(827, 22.96, 5.4, '2021-11-29', 'Indosat_ISP'),
(828, 19.44, 6.14, '2021-11-29', 'Indosat_ISP'),
(829, 23.29, 2.89, '2021-11-29', 'Indosat_ISP'),
(830, 18.15, 3.3, '2021-11-29', 'Indosat_ISP'),
(831, 32.61, 7.57, '2021-11-30', 'Indosat_ISP'),
(832, 36.95, 7.44, '2021-11-30', 'Indosat_ISP'),
(833, 35.75, 8.99, '2021-11-30', 'Indosat_ISP'),
(834, 42.95, 7.1, '2021-11-30', 'Indosat_ISP'),
(835, 45.77, 3.82, '2021-11-30', 'Indosat_ISP'),
(836, 49.37, 6.24, '2021-11-30', 'Indosat_ISP'),
(837, 26.23, 4.33, '2021-11-30', 'Indosat_ISP'),
(838, 35.34, 4.2, '2021-11-30', 'Indosat_ISP'),
(839, 43.78, 2.69, '2021-11-30', 'Indosat_ISP'),
(840, 30.41, 1.68, '2021-11-30', 'Indosat_ISP');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id_footer`);

--
-- Indeks untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_score`
--
ALTER TABLE `tbl_score`
  ADD PRIMARY KEY (`id_score`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id_footer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=966;

--
-- AUTO_INCREMENT untuk tabel `tbl_score`
--
ALTER TABLE `tbl_score`
  MODIFY `id_score` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=841;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
