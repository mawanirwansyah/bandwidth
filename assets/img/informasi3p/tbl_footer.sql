-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Okt 2021 pada 11.27
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ssm`
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id_footer`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id_footer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
