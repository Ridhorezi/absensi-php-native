-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Agu 2023 pada 09.35
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id_absen`, `tgl`, `waktu`, `keterangan`, `id_user`) VALUES
(4, '2019-07-25', '07:21:53', 'Masuk', 6),
(5, '2019-07-26', '09:00:47', 'Masuk', 6),
(6, '2019-07-26', '16:01:03', 'Pulang', 6),
(7, '2019-07-25', '17:01:28', 'Pulang', 6),
(8, '2023-08-10', '20:38:55', 'Masuk', 6),
(9, '2023-08-10', '20:39:11', 'Pulang', 6),
(10, '2023-08-10', '20:43:53', 'Masuk', 13),
(11, '2023-08-10', '20:44:02', 'Pulang', 13),
(12, '2023-08-10', '20:44:14', 'Masuk', 13),
(13, '2023-08-10', '20:44:19', 'Pulang', 13),
(14, '2023-08-10', '20:45:05', 'Masuk', 13),
(15, '2023-08-10', '20:45:13', 'Masuk', 13),
(16, '2023-08-10', '20:45:38', 'Masuk', 7),
(17, '2023-08-10', '20:45:44', 'Pulang', 7),
(18, '2023-08-10', '20:47:12', 'Masuk', 13),
(19, '2023-08-10', '20:47:23', 'Masuk', 13),
(20, '2023-08-10', '20:48:27', 'Masuk', 13),
(21, '2023-08-10', '20:50:20', 'Masuk', 13),
(22, '2023-08-10', '20:50:25', 'Pulang', 13),
(23, '2023-08-10', '20:55:47', 'Masuk', 14),
(24, '2023-08-10', '20:55:54', 'Pulang', 14),
(25, '2023-08-10', '20:57:08', 'Masuk', 15),
(26, '2023-08-10', '21:01:05', 'Pulang', 15),
(27, '2023-08-11', '11:44:48', 'Masuk', 18),
(28, '2023-08-11', '11:45:47', 'Masuk', 20),
(29, '2023-08-11', '12:16:21', 'Pulang', 20),
(30, '2023-08-11', '12:17:18', 'Pulang', 18),
(31, '2023-08-11', '12:28:33', 'Masuk', 16),
(32, '2023-08-11', '12:28:43', 'Pulang', 16),
(33, '2023-08-11', '12:42:33', 'Pulang', 16),
(34, '2023-08-11', '12:50:00', 'Pulang', 20),
(35, '2023-08-11', '14:07:03', 'Masuk', 19),
(36, '2023-08-11', '14:07:12', 'Pulang', 19),
(37, '2023-08-11', '14:07:26', 'Pulang', 19),
(38, '2023-08-11', '14:20:25', 'Masuk', 16),
(39, '2023-08-11', '14:20:32', 'Pulang', 16),
(40, '2023-08-11', '14:20:46', 'Masuk', 16),
(41, '2023-08-11', '14:20:51', 'Pulang', 16),
(42, '2023-08-11', '14:21:25', 'Pulang', 16),
(43, '2023-08-11', '14:23:09', 'Pulang', 16),
(44, '2023-08-11', '14:32:10', 'Masuk', 16),
(45, '2023-08-11', '14:32:21', 'Pulang', 16),
(46, '2023-08-11', '14:32:29', 'Pulang', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` smallint(3) NOT NULL,
  `nama_divisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`) VALUES
(1, 'Aqidah Akhlak'),
(2, 'SKI'),
(3, 'Nahwu Shorof'),
(4, 'Fiqih'),
(5, 'Qur\'an Hadist'),
(6, 'Bahasa Arab');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `id_jam` tinyint(1) NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`id_jam`, `start`, `finish`, `keterangan`) VALUES
(1, '14:20:00', '14:21:00', 'Masuk'),
(2, '14:48:00', '14:21:00', 'Pulang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` smallint(5) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(20) DEFAULT 'no-foto.png',
  `divisi` smallint(5) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` enum('Manager','Karyawan') NOT NULL DEFAULT 'Karyawan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nik`, `nama`, `telp`, `email`, `foto`, `divisi`, `username`, `password`, `level`) VALUES
(1, '', 'Lenahwati', '081384848059', 'lenah12@mail.com', '1691729028.jpg', NULL, 'Admin Lenah', '$2y$10$F0o5D8VA50G8yTK.8zkHGutSyH49x0gMQEm21dem3ICO/atiBMUQ6', 'Manager'),
(8, '8931289124891', 'Manager 1', '', '', 'no-foto.png', NULL, 'manager_1', '$2y$10$XtMY01KEOd5I065s8Exs0OcQ373RvRNG1JznORr6TmmBNWnZ3vjjK', 'Manager'),
(9, '1231231238900', 'Manager 2', '', '', 'no-foto.png', NULL, 'manager_2', '$2y$10$iJWUOXDznGEmxo.bqnhtmeFL51jN5130LfDlKg8VROfoEmlgC.cFW', 'Manager'),
(10, '908121310291', 'Manager 3', '', '', 'no-foto.png', NULL, 'manager_3', '$2y$10$uGsLvgl.6ji2iZ7tWkNvPelTwZdLQ6QA81Yawa20wsLairCXqV8BO', 'Manager'),
(11, '123801204012', 'Manager 4', '', '', 'no-foto.png', NULL, 'master_4', '$2y$10$Kot81WNqrho4WlcYI13kT.Y5V2sMg1ZSAXcITrp8cj3dqHpbl4vrS', 'Manager'),
(15, '3604040109860001', 'Nihlawati', '083805504464', 'nihlawati12@gmail.com', 'no-foto.png', 6, 'Nihlawati', '$2y$10$oAptJ4nAKGcH/.obDYtfUexYkVJoICm8T5wltWW1C.szn1LMEG4OC', 'Karyawan'),
(16, '3604044802700095', 'Bai Sukmariah', '082217701522', 'bai12@gmail.com', 'no-foto.png', 2, 'Bai Sukmariah', '$2y$10$dtWYClMyA7nBAFYd3T0F0elkRNqMBn2aBHSzjSKElvM.IUP8fmsim', 'Karyawan'),
(17, '3604040705790085', 'Maryam', '081717837200', 'maryam12@gmail.com', 'no-foto.png', 5, 'Maryam', '$2y$10$Vmu48Oj6b/GWnhlMJEM2UOYgg8oGL0od5Wz59KGs7AtNVZiOAQRgi', 'Karyawan'),
(18, '3604045502710006', 'Ika Purwa Ambar Sari', '085960366768', 'ika12@gmail.com', 'no-foto.png', 4, 'Ika Purwa Ambar Sari', '$2y$10$/sqAcUqg9D0Q44w8b/jQgeogJl2gv3w0M4Fuk76hjE13c5AXG3XUe', 'Karyawan'),
(19, '3604042007730002', 'Naimah', '085337073027', 'naimah12@gmail.com', 'no-foto.png', 1, 'Naimah', '$2y$10$cATH3aYBv7Kjp7pRwlNhi.elVYR7nPLo0VTF3bJZLdwIB82NA4FM6', 'Karyawan'),
(20, '3604041608750018', 'Afifi', '081291598558', 'afifi12@gmail.com', 'no-foto.png', 3, 'Afifi', '$2y$10$0DWuUYo.Pq3fYkinHwgzu.dZx6jCOFebvSWmgrY9yJ2Ahw17KxiBe', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id_jam` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
