-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Feb 2024 pada 00.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_galeri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `albumid` int(20) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(1, 'Krosyaida', 'Album Card Testing Process', '2005-01-17', 1),
(2, 'aku', 'looping', '8728-02-18', 1),
(3, 'angga', 'anggaaa', '0000-00-00', 1),
(4, 'そんなデートは驚きがいっぱい', 'そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい , そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい,  そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱいv, そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい, ,そんなデートは驚きがいっぱい, そんなデートは驚きがいっぱい ,そんなデートは驚きがいっぱい', '2024-02-05', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(20) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(20) NOT NULL,
  `userid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(8, 'Programmer', 'IT', '2024-01-30', 'Programming.jpg', 2, 1),
(9, 'programmer', 'qwed', '1212-12-12', 'Programming.jpg', 2, 1),
(10, 'Genshin Impact', 'Testing', '1212-12-12', 'genshin-impact.jpg', 2, 1),
(11, 'Eldern Ring', 'Game PC', '1212-12-12', 'elden-ring-summer-game-fest-trailer-screenshots_xpee.jpg', 3, 1),
(12, 'Froza Horizon', 'game', '1212-12-12', 'Forza-Horizon-5-Xbox-Microsoft-2048x1152.jpg', 2, 1),
(13, 'Genshin Impact', 'GAME\r\n', '1212-12-12', 'genshin-impact-144234(1).jpg', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(20) NOT NULL,
  `fotoid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(1, 8, 0, 'wow menarik', '2024-02-28'),
(2, 8, 0, 'wow menarik', '2024-02-28'),
(3, 8, 0, 'wow menarik', '2024-02-28'),
(4, 8, 0, 'halooo', '2024-02-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(20) NOT NULL,
  `fotoid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(1, 'angga', 'angga', 'm.anggaranurakbar@gmail.com', 'angga', 'pare'),
(2, '', '', '', '', ''),
(3, '123', '123', '123@gmail.com', '123', '123'),
(4, 'khonsa', 'khonsa', 'khonsa@gmail.com', 'khonsa rosyaida', 'pare'),
(5, '123', '123', '123@mail.com', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
