-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2023 pada 02.54
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_undangan_nikah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adat`
--

CREATE TABLE `adat` (
  `idAdat` int(11) NOT NULL,
  `penjelasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `adat`
--

INSERT INTO `adat` (`idAdat`, `penjelasan`) VALUES
(1, 'Pernikahan kami menggunakan adat toraja yang dipadukan dengan nuansa modern..');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cerita`
--

CREATE TABLE `cerita` (
  `idCerita` int(11) NOT NULL,
  `judulCerita` varchar(30) NOT NULL,
  `isiCerita` text NOT NULL,
  `gambarCerita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cerita`
--

INSERT INTO `cerita` (`idCerita`, `judulCerita`, `isiCerita`, `gambarCerita`) VALUES
(1, 'Pertama Bertemu', 'Aku bertemu di pinggir jalan kota Rantepao', '682906642.jpg'),
(2, 'Pertama Kali Jalan', 'Setelah pertemuan itu aku mengajak kamu jalan-jalan ke kota rantepao dengan menggunakan sepeda butut.', '7a83d66b5963c87248fd12fdd9e007bc.jpg'),
(3, 'Mulai Jatuh Cinta', 'Hari demi hari, aku makin jatuh cinta kepada wanita itu lalu aku memberanikan diri untuk pergi ke kedua orang tuamu dan melamarmu', 'cinta-hubungan-boys-ini-lho-5-inspirasi-cara-melamar-wanita-yang-romantis-111016.jpg'),
(4, 'Menikah', 'Dan pada akhirnya kaulah yang menjadi putri di hatiku dan pada hari ini aku akan menikah denganmu', 'pesona-citra-kirana-dan-rezky-aditya-di-akad-nikah-cerah-nan-elegan-3VfbMf4ata.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_wa`
--

CREATE TABLE `data_wa` (
  `ID_MSG` bigint(255) NOT NULL,
  `NO_WA` varchar(300) NOT NULL DEFAULT '',
  `FORMAT_WA` varchar(900) DEFAULT NULL,
  `ISI_WA` varchar(900) DEFAULT NULL,
  `TGL_INPUT` datetime DEFAULT NULL,
  `TGL_KIRIM` datetime DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `VAR_1` varchar(300) DEFAULT NULL,
  `VAR_2` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_wa`
--

INSERT INTO `data_wa` (`ID_MSG`, `NO_WA`, `FORMAT_WA`, `ISI_WA`, `TGL_INPUT`, `TGL_KIRIM`, `STATUS`, `VAR_1`, `VAR_2`) VALUES
(2147483736, '+6282120191493', '  Hallo [Var_1]', '  Hallo Angga Fantiyaaaa || Untuk Info Lebih Lanjut Klik http://weddinginvitation.masuk.web.id/ || Pesan dikirim Oleh Wedding Invitation || Develop By Angga & Devi & Fandi || Tubes Tekweb', '2020-06-11 19:00:48', '2020-06-11 19:01:31', 'SENT', 'Angga Fantiyaaaa', 'Padalarang'),
(2147483737, '+6281809121771', '  Hallo [Var_1]', '  Hallo Fantiya || Untuk Info Lebih Lanjut Klik http://weddinginvitation.masuk.web.id/ || Pesan dikirim Oleh Wedding Invitation || Develop By Angga & Devi & Fandi || Tubes Tekweb', '2020-06-11 19:01:11', '2020-06-11 19:01:32', 'SENT', 'Fantiya', 'Bandung Bagian Barat'),
(2147483738, '+6282120191493', '  Kepada YTH. [VAR_1], yang berada di [VAR_2] kami mengundang ke acara pernikahan kami yang dilaksanakan di Gedung Sasana Krida Unjani. Terima Kasih.', '  Kepada YTH. Fantiya, yang berada di Cimahi kami mengundang ke acara pernikahan kami yang dilaksanakan di Gedung Sasana Krida Unjani. Terima Kasih. || Untuk Info Lebih Lanjut Klik http://weddinginvitation.masuk.web.id/ || Pesan dikirim Oleh Wedding Invitation || Develop By Angga & Devi & Fandi || Tubes Tekweb', '2020-06-11 19:05:03', '2020-06-11 19:05:18', 'SENT', 'Fantiya', 'Cimahi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `idGalery` int(11) NOT NULL,
  `judulPhoto` text NOT NULL,
  `namaFile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galery`
--

INSERT INTO `galery` (`idGalery`, `judulPhoto`, `namaFile`) VALUES
(11, '', 'curhat-adik-cut-meyriska-soal-kakaknya.jpg'),
(12, '', '032558700_1574336639-74659547_806379023156200_5794764663790060496_n.jpg'),
(13, '', '009205300_1573652810-71181402_175706466948972_2141264900446734172_n.jpg'),
(14, '', '5dd4b88ba388660564749b79.jpg'),
(15, '', 'images.jpg'),
(16, '', 'Citra-Kirana-696x392.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `idPesan` int(11) NOT NULL,
  `namaPengirim` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `resepsi`
--

CREATE TABLE `resepsi` (
  `idResepsi` int(11) NOT NULL,
  `namaPria` varchar(30) NOT NULL,
  `namaWanita` varchar(30) NOT NULL,
  `tglResepsi` date NOT NULL,
  `jamResepsi` time NOT NULL,
  `alamatResepsi` text NOT NULL,
  `namaGedung` text NOT NULL,
  `fileGambar` text NOT NULL,
  `gambarGedung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `resepsi`
--

INSERT INTO `resepsi` (`idResepsi`, `namaPria`, `namaWanita`, `tglResepsi`, `jamResepsi`, `alamatResepsi`, `namaGedung`, `fileGambar`, `gambarGedung`) VALUES
(1, 'asdfasdf', 'dfasdfaa', '2022-12-31', '08:03:22', 'Jl. Poros Makale Rantepao                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 'Hotel Misliana', 'img_0140-1588044288.jpg', 'img_0140-1588044288.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sambutan`
--

CREATE TABLE `sambutan` (
  `idSambutan` int(11) NOT NULL,
  `pembukaSambutan` text NOT NULL,
  `isiSambutan` text NOT NULL,
  `penutupSambutan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sambutan`
--

INSERT INTO `sambutan` (`idSambutan`, `pembukaSambutan`, `isiSambutan`, `penutupSambutan`) VALUES
(1, 'Shalom', 'Puji syukur                                                                     ', 'Sekian dari saya, kurang lebihnya mohon maaf. Atas perhatiannya saya ucapkan terima kasih. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosmed`
--

CREATE TABLE `sosmed` (
  `idSosmed` int(11) NOT NULL,
  `ig` text NOT NULL,
  `twitter` text NOT NULL,
  `fb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sosmed`
--

INSERT INTO `sosmed` (`idSosmed`, `ig`, `twitter`, `fb`) VALUES
(1, 'https://www.instagram.com', 'https://twitter.com/', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamuundangan`
--

CREATE TABLE `tamuundangan` (
  `idTamu` int(11) NOT NULL,
  `nama` varchar(90) NOT NULL,
  `noTelp` varchar(14) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `tamuundangan`
--
DELIMITER $$
CREATE TRIGGER `insertDataWa` AFTER INSERT ON `tamuundangan` FOR EACH ROW INSERT INTO data_wa 
SET
NO_WA = NEW.noTelp,
TGL_INPUT = CURRENT_TIMESTAMP(),
VAR_1 = NEW.nama,
VAR_2 = NEW.alamat
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenisKelamin` varchar(1) NOT NULL,
  `alamat` text NOT NULL,
  `noTelp` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `nama`, `jenisKelamin`, `alamat`, `noTelp`, `email`, `password`) VALUES
(1, 'Admin', 'L', 'toraja', '085361273485', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adat`
--
ALTER TABLE `adat`
  ADD PRIMARY KEY (`idAdat`);

--
-- Indeks untuk tabel `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`idCerita`);

--
-- Indeks untuk tabel `data_wa`
--
ALTER TABLE `data_wa`
  ADD PRIMARY KEY (`ID_MSG`);

--
-- Indeks untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`idGalery`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`idPesan`);

--
-- Indeks untuk tabel `resepsi`
--
ALTER TABLE `resepsi`
  ADD PRIMARY KEY (`idResepsi`);

--
-- Indeks untuk tabel `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`idSambutan`);

--
-- Indeks untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`idSosmed`);

--
-- Indeks untuk tabel `tamuundangan`
--
ALTER TABLE `tamuundangan`
  ADD PRIMARY KEY (`idTamu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `adat`
--
ALTER TABLE `adat`
  MODIFY `idAdat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cerita`
--
ALTER TABLE `cerita`
  MODIFY `idCerita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `data_wa`
--
ALTER TABLE `data_wa`
  MODIFY `ID_MSG` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483739;

--
-- AUTO_INCREMENT untuk tabel `galery`
--
ALTER TABLE `galery`
  MODIFY `idGalery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `idPesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `resepsi`
--
ALTER TABLE `resepsi`
  MODIFY `idResepsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `idSambutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `idSosmed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tamuundangan`
--
ALTER TABLE `tamuundangan`
  MODIFY `idTamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
