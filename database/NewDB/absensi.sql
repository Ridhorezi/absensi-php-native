-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Agu 2023 pada 11.48
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, '2023-08-07', '07:31:00', 'Masuk', 22),
(2, '2023-08-07', '17:31:00', 'Pulang', 22),
(3, '2023-08-07', '07:30:00', 'Masuk', 20),
(4, '2023-08-07', '17:00:00', 'Pulang', 20),
(5, '2023-08-07', '07:30:00', 'Masuk', 19),
(6, '2023-08-07', '17:00:00', 'Pulang', 19),
(7, '2023-08-07', '07:30:00', 'Masuk', 18),
(8, '2023-08-07', '17:00:00', 'Pulang', 18),
(9, '2023-08-07', '07:30:00', 'Masuk', 17),
(10, '2023-08-07', '17:00:00', 'Pulang', 17),
(11, '2023-08-07', '07:30:00', 'Masuk', 16),
(12, '2023-08-07', '17:00:00', 'Pulang', 16),
(13, '2023-08-07', '07:30:00', 'Masuk', 15),
(14, '2023-08-07', '17:00:00', 'Pulang', 15);

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
(1, '07:00:00', '07:30:00', 'Masuk'),
(2, '17:00:00', '17:30:00', 'Pulang');

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
(15, '3604040109860001', 'Nihlawati', '083805504464', 'nihlawati12@gmail.com', 'no-foto.png', 6, 'Nihlawati', '$2y$10$oAptJ4nAKGcH/.obDYtfUexYkVJoICm8T5wltWW1C.szn1LMEG4OC', 'Karyawan'),
(16, '3604044802700095', 'Bai Sukmariah', '082217701522', 'bai12@gmail.com', 'no-foto.png', 2, 'Bai Sukmariah', '$2y$10$dtWYClMyA7nBAFYd3T0F0elkRNqMBn2aBHSzjSKElvM.IUP8fmsim', 'Karyawan'),
(17, '3604040705790085', 'Maryam', '081717837200', 'maryam12@gmail.com', 'no-foto.png', 5, 'Maryam', '$2y$10$Vmu48Oj6b/GWnhlMJEM2UOYgg8oGL0od5Wz59KGs7AtNVZiOAQRgi', 'Karyawan'),
(18, '3604045502710006', 'Ika Purwa Ambar Sari', '085960366768', 'ika12@gmail.com', 'no-foto.png', 4, 'Ika Purwa Ambar Sari', '$2y$10$/sqAcUqg9D0Q44w8b/jQgeogJl2gv3w0M4Fuk76hjE13c5AXG3XUe', 'Karyawan'),
(19, '3604042007730002', 'Naimah', '085337073027', 'naimah12@gmail.com', 'no-foto.png', 1, 'Naimah', '$2y$10$cATH3aYBv7Kjp7pRwlNhi.elVYR7nPLo0VTF3bJZLdwIB82NA4FM6', 'Karyawan'),
(20, '3604041608750018', 'Afifi', '081291598558', 'afifi12@gmail.com', 'no-foto.png', 3, 'Afifi', '$2y$10$0DWuUYo.Pq3fYkinHwgzu.dZx6jCOFebvSWmgrY9yJ2Ahw17KxiBe', 'Karyawan'),
(21, '1212121212121212', 'test', '081212121212', 'test@gmail.com', 'no-foto.png', 1, 'test', '$2y$10$I6pmz9F7dNcKkxXeptvYWeGEOhu4Ei4fBiFyB4oeB7LYcB.XDY8xa', 'Manager'),
(22, '1212121212121212', 'test', '081212121212', 'test@gmail.com', 'no-foto.png', 1, 'test2', '$2y$10$I6pmz9F7dNcKkxXeptvYWeGEOhu4Ei4fBiFyB4oeB7LYcB.XDY8xa', 'Karyawan');

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
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id_user` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
