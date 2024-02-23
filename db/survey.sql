-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2022 pada 12.51
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_pelanggan`
--

CREATE TABLE `db_pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `wa` int(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban1`
--

CREATE TABLE `jawaban1` (
  `jwb1` varchar(20) NOT NULL,
  `jwb2` varchar(20) NOT NULL,
  `jwb3` varchar(20) NOT NULL,
  `jwb4` varchar(20) NOT NULL,
  `jwb5` varchar(20) NOT NULL,
  `jwb6` varchar(20) NOT NULL,
  `jwb7` varchar(20) NOT NULL,
  `jwb8` varchar(20) NOT NULL,
  `jwb9` varchar(20) NOT NULL,
  `jwb10` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jawaban1`
--

INSERT INTO `jawaban1` (`jwb1`, `jwb2`, `jwb3`, `jwb4`, `jwb5`, `jwb6`, `jwb7`, `jwb8`, `jwb9`, `jwb10`) VALUES
('CUKUP', 'CUKUP', 'CUKUP', 'CUKUP', 'CUKUP', 'CUKUP', 'CUKUP', 'CUKUP', 'CUKUP', 'CUKUP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `owner`
--

CREATE TABLE `owner` (
  `id_owner` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `owner`
--

INSERT INTO `owner` (`id_owner`, `username`, `password`) VALUES
('0001', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `username`, `password`) VALUES
('0001', 'user', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan1`
--

CREATE TABLE `pertanyaan1` (
  `kode_pertanyaan` varchar(20) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pertanyaan1`
--

INSERT INTO `pertanyaan1` (`kode_pertanyaan`, `pertanyaan`, `kategori`) VALUES
('K0001', 'Suasana Bengkel?', 'primary'),
('K0002', 'Kenyamanan di bengkel?', 'primary'),
('K0003', 'Kebersihan dalam bengkel', 'primary'),
('K0004', 'Respon Petugas?', 'primary'),
('K0005', 'Pelayanan CS?', 'primary'),
('K0006', 'Bantuan Pendukung?', 'primary'),
('K0007', 'Kesigapan Petugas?', 'primary'),
('K0008', '1+1?', 'primary'),
('K0009', 'Dari Semua Pelayanan Berapa Tingkat Kepuasan Anda?', 'primary'),
('K0010', '2+2?', 'primary');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan2`
--

CREATE TABLE `pertanyaan2` (
  `kode_pertanyaan` varchar(20) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan3`
--

CREATE TABLE `pertanyaan3` (
  `kode_pertanyaan` varchar(20) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_pelanggan`
--
ALTER TABLE `db_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `wa` (`wa`),
  ADD UNIQUE KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id_owner`),
  ADD UNIQUE KEY `id_owner` (`id_owner`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `pertanyaan1`
--
ALTER TABLE `pertanyaan1`
  ADD PRIMARY KEY (`kode_pertanyaan`),
  ADD UNIQUE KEY `kode_pertanyaan` (`kode_pertanyaan`);

--
-- Indeks untuk tabel `pertanyaan2`
--
ALTER TABLE `pertanyaan2`
  ADD PRIMARY KEY (`kode_pertanyaan`),
  ADD UNIQUE KEY `kode_pertanyaan` (`kode_pertanyaan`);

--
-- Indeks untuk tabel `pertanyaan3`
--
ALTER TABLE `pertanyaan3`
  ADD PRIMARY KEY (`kode_pertanyaan`),
  ADD UNIQUE KEY `kode_pertanyaan` (`kode_pertanyaan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
