-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2021 pada 02.12
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
(1, 'PT INALUM', 'Kuala Tanjung, Kecamatan Sei Suka, Kabupaten Batu Bara. Sumatera Utara', 'Indonesia', 'P.O. BOX 1 Kuala Tanjung', '21657', '( 0622 ) 31311', 'ssm@inalum.id', 'https://twitter.com/INALUM_Official', 'https://www.facebook.com/PT-Indonesia-Asahan-Aluminium-Persero-1179421115414571', 'https://www.instagram.com/inalum/', 'https://www.youtube.com/channel/UCrPnI_rPzOuuKk1jEhYERpA', 'https://www.linkedin.com/company/pt-indonesia-asahan-aluminium-persero/', 'PT Indonesia Asahan Aluminium (Persero)', 'Information SSM');

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
-- Struktur dari tabel `tbl_score`
--

CREATE TABLE `tbl_score` (
  `id_score` int(11) NOT NULL,
  `seksi` float NOT NULL,
  `score` float NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_score`
--

INSERT INTO `tbl_score` (`id_score`, `seksi`, `score`, `tanggal`) VALUES
(9, 4.8, 55.1, '2021-12-07'),
(10, 2.2, 5.1, '2021-12-22'),
(11, 20, 1, '2021-12-22'),
(12, 25, 2, '2021-12-23');

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
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

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
-- AUTO_INCREMENT untuk tabel `tbl_score`
--
ALTER TABLE `tbl_score`
  MODIFY `id_score` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
