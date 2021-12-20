-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Okt 2021 pada 11.30
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
-- Struktur dari tabel `tbl_assessor`
--

CREATE TABLE `tbl_assessor` (
  `id_assessor` int(11) NOT NULL,
  `nama_assessor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_informasi3p`
--

CREATE TABLE `tbl_informasi3p` (
  `id_informasi3p` int(11) NOT NULL,
  `no3p` int(11) NOT NULL,
  `image3p` varchar(255) NOT NULL,
  `title3p` varchar(255) NOT NULL,
  `filter_kategori3p` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_informasi3p`
--

INSERT INTO `tbl_informasi3p` (`id_informasi3p`, `no3p`, `image3p`, `title3p`, `filter_kategori3p`) VALUES
(32, 1, '2e8d49b700155b39f58632af69048cf8.jpg', 'kucing', 'kucing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_informasi5r`
--

CREATE TABLE `tbl_informasi5r` (
  `id_informasi5r` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title5r` varchar(255) NOT NULL,
  `filter_kategori5r` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_informasi5r`
--

INSERT INTO `tbl_informasi5r` (`id_informasi5r`, `no`, `image`, `title5r`, `filter_kategori5r`) VALUES
(1, 1, 'resik.jpg', 'resik', 'resik'),
(2, 2, 'rajin.jpg', 'rajin', 'rajin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal_assessment`
--

CREATE TABLE `tbl_jadwal_assessment` (
  `id_jadwal_assessment` int(11) NOT NULL,
  `nama_assessor` varchar(100) NOT NULL,
  `seksi_terkait` varchar(32) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jadwal_assessment`
--

INSERT INTO `tbl_jadwal_assessment` (`id_jadwal_assessment`, `nama_assessor`, `seksi_terkait`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, 'Bobby', 'SIT', '2021-10-22', '2021-10-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jobdesk`
--

CREATE TABLE `tbl_jobdesk` (
  `id_jobdesk` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tittlejobdesk` varchar(255) NOT NULL,
  `filter_kategorijobdesk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jobdesk`
--

INSERT INTO `tbl_jobdesk` (`id_jobdesk`, `no`, `image`, `tittlejobdesk`, `filter_kategorijobdesk`) VALUES
(1, 1, 'jobdesk1.jpg', 'Ketua Tim', 'ketua'),
(2, 2, 'jobdesk2.jpg', 'Sekretaris Tim', 'sekretaris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori3p`
--

CREATE TABLE `tbl_kategori3p` (
  `id_kategori3p` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `kategori3p` varchar(255) NOT NULL,
  `filter_kategori3p` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori3p`
--

INSERT INTO `tbl_kategori3p` (`id_kategori3p`, `no`, `kategori3p`, `filter_kategori3p`) VALUES
(1, 1, '1 PILAR', 'pilar-1'),
(2, 2, '2 PILAR', 'pilar-2'),
(4, 3, 'kucing', 'kucing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori5r`
--

CREATE TABLE `tbl_kategori5r` (
  `id_kategori5r` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `kategori5r` varchar(255) NOT NULL,
  `filter_kategori5r` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori5r`
--

INSERT INTO `tbl_kategori5r` (`id_kategori5r`, `no`, `kategori5r`, `filter_kategori5r`) VALUES
(1, 1, 'resik', 'resik'),
(2, 2, 'rajin', 'rajin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategorijobdesk`
--

CREATE TABLE `tbl_kategorijobdesk` (
  `id_kategorijobdesk` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `kategorijobdesk` varchar(255) NOT NULL,
  `filter_kategorijobdesk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategorijobdesk`
--

INSERT INTO `tbl_kategorijobdesk` (`id_kategorijobdesk`, `no`, `kategorijobdesk`, `filter_kategorijobdesk`) VALUES
(1, 1, 'ketua ', 'ketua'),
(2, 2, 'sekretaris', 'sekretaris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategoristruktur`
--

CREATE TABLE `tbl_kategoristruktur` (
  `id_kategoristruktur` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `kategoristruktur` varchar(255) NOT NULL,
  `filter_kategoristruktur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategoristruktur`
--

INSERT INTO `tbl_kategoristruktur` (`id_kategoristruktur`, `no`, `kategoristruktur`, `filter_kategoristruktur`) VALUES
(1, 1, 'Struktur Tim Shopfloor', 'struktur-tim'),
(2, 2, 'Struktur Organisasi', 'struktur-organisasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profileassessor`
--

CREATE TABLE `tbl_profileassessor` (
  `id_profileassessor` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `image` varchar(40) NOT NULL,
  `nama_assessor` varchar(255) NOT NULL,
  `jabatan_assessor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_profileassessor`
--

INSERT INTO `tbl_profileassessor` (`id_profileassessor`, `no`, `image`, `nama_assessor`, `jabatan_assessor`) VALUES
(1, 1, 'firmanashad.jpg', 'Firman Ashad', 'Kepala Departemen SRC'),
(2, 3, 'nasrunnasution.jpg', 'Nasrun Nasution ', 'Kepala Seksi SMT'),
(3, 2, 'dwiagusyuwono.jpg', 'Dwi Agus Yuwono', 'Kepala Seksi SCA'),
(4, 4, 'ferdyrahadian.jpg', 'Ferdy Rahadian', 'Kepala Seksi SRO'),
(5, 5, 'yudiabdillah.jpg', 'Yudi Abdillah', 'Junior Manager SCA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_score`
--

CREATE TABLE `tbl_score` (
  `id_score` int(11) NOT NULL,
  `seksi` varchar(32) NOT NULL,
  `score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_score`
--

INSERT INTO `tbl_score` (`id_score`, `seksi`, `score`) VALUES
(1, 'SIT', 4.3),
(2, 'SIT', 4.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_struktur`
--

CREATE TABLE `tbl_struktur` (
  `id_struktur` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tittlestruktur` varchar(255) NOT NULL,
  `filter_kategoristruktur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_struktur`
--

INSERT INTO `tbl_struktur` (`id_struktur`, `no`, `image`, `tittlestruktur`, `filter_kategoristruktur`) VALUES
(1, 1, 'struktur1.jpg', 'Struktur Tim Shopfloor', 'struktur-tim'),
(2, 2, 'struktur2.jpg', 'Struktur Organisasi', 'struktur-organisasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_assessor`
--
ALTER TABLE `tbl_assessor`
  ADD PRIMARY KEY (`id_assessor`);

--
-- Indeks untuk tabel `tbl_informasi3p`
--
ALTER TABLE `tbl_informasi3p`
  ADD PRIMARY KEY (`id_informasi3p`);

--
-- Indeks untuk tabel `tbl_informasi5r`
--
ALTER TABLE `tbl_informasi5r`
  ADD PRIMARY KEY (`id_informasi5r`);

--
-- Indeks untuk tabel `tbl_jadwal_assessment`
--
ALTER TABLE `tbl_jadwal_assessment`
  ADD PRIMARY KEY (`id_jadwal_assessment`);

--
-- Indeks untuk tabel `tbl_jobdesk`
--
ALTER TABLE `tbl_jobdesk`
  ADD PRIMARY KEY (`id_jobdesk`);

--
-- Indeks untuk tabel `tbl_kategori3p`
--
ALTER TABLE `tbl_kategori3p`
  ADD PRIMARY KEY (`id_kategori3p`);

--
-- Indeks untuk tabel `tbl_kategori5r`
--
ALTER TABLE `tbl_kategori5r`
  ADD PRIMARY KEY (`id_kategori5r`);

--
-- Indeks untuk tabel `tbl_kategorijobdesk`
--
ALTER TABLE `tbl_kategorijobdesk`
  ADD PRIMARY KEY (`id_kategorijobdesk`);

--
-- Indeks untuk tabel `tbl_kategoristruktur`
--
ALTER TABLE `tbl_kategoristruktur`
  ADD PRIMARY KEY (`id_kategoristruktur`);

--
-- Indeks untuk tabel `tbl_profileassessor`
--
ALTER TABLE `tbl_profileassessor`
  ADD PRIMARY KEY (`id_profileassessor`);

--
-- Indeks untuk tabel `tbl_score`
--
ALTER TABLE `tbl_score`
  ADD PRIMARY KEY (`id_score`);

--
-- Indeks untuk tabel `tbl_struktur`
--
ALTER TABLE `tbl_struktur`
  ADD PRIMARY KEY (`id_struktur`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_assessor`
--
ALTER TABLE `tbl_assessor`
  MODIFY `id_assessor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_informasi3p`
--
ALTER TABLE `tbl_informasi3p`
  MODIFY `id_informasi3p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tbl_informasi5r`
--
ALTER TABLE `tbl_informasi5r`
  MODIFY `id_informasi5r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_jadwal_assessment`
--
ALTER TABLE `tbl_jadwal_assessment`
  MODIFY `id_jadwal_assessment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_jobdesk`
--
ALTER TABLE `tbl_jobdesk`
  MODIFY `id_jobdesk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori3p`
--
ALTER TABLE `tbl_kategori3p`
  MODIFY `id_kategori3p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori5r`
--
ALTER TABLE `tbl_kategori5r`
  MODIFY `id_kategori5r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategorijobdesk`
--
ALTER TABLE `tbl_kategorijobdesk`
  MODIFY `id_kategorijobdesk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategoristruktur`
--
ALTER TABLE `tbl_kategoristruktur`
  MODIFY `id_kategoristruktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_profileassessor`
--
ALTER TABLE `tbl_profileassessor`
  MODIFY `id_profileassessor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_score`
--
ALTER TABLE `tbl_score`
  MODIFY `id_score` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_struktur`
--
ALTER TABLE `tbl_struktur`
  MODIFY `id_struktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
