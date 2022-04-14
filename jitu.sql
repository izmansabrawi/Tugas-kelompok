-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 
-- Generation Time: Jun 28, 2019 at 05:16 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jitu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `foto` text NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat` longtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `foto`, `nama`, `jabatan`, `alamat`, `email`, `username`, `password`, `level`) VALUES
(6, 'FotoAdmin_1561732172.png', 'Muhammad Yusuf', 'Admin Jitu', 'Pare-pare, Makassar, Sulawesi Selatan', 'uchu.blogger@gmail.com', 'muhammadyusuf', 'uchublogger', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `tgl_berkas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_berkas` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `berkas` text NOT NULL,
  `ket` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`tgl_berkas`, `id_berkas`, `judul`, `berkas`, `ket`) VALUES
('2019-06-28 11:27:04', 4, 'Berkas Persyaratan Diklat BDI Denpasar 2019', '1561729612.zip', 'Berikut ini Berkas Persyaratan Diklat BDI Denpasar 2019. Bagi Peserta yang ingin mendaftar silahkan download Berkas Persyaratan ini. Jika ada pertanyaan silahkan menghubungi Admin Jitu. Terima Kasih.');

-- --------------------------------------------------------

--
-- Table structure for table `formulir`
--

CREATE TABLE `formulir` (
  `tgl_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_formulir` int(10) NOT NULL,
  `id_materi` int(10) NOT NULL,
  `id_daftar` int(10) NOT NULL,
  `thn_materi` varchar(4) NOT NULL,
  `angk_materi` varchar(5) NOT NULL,
  `tgl_buka` varchar(2) NOT NULL,
  `bulan_buka` varchar(15) NOT NULL,
  `tgl_akhir` varchar(2) NOT NULL,
  `bulan_akhir` varchar(15) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jns_kelamin` varchar(15) NOT NULL,
  `agm` varchar(25) NOT NULL,
  `pend` varchar(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `alamat_lengkap` longtext NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `alamat_email` varchar(60) NOT NULL,
  `software` longtext NOT NULL,
  `tujuan` longtext NOT NULL,
  `rencana` longtext NOT NULL,
  `pernah` varchar(15) NOT NULL,
  `materi_diklat` longtext NOT NULL,
  `thn_diklat` varchar(4) NOT NULL,
  `portofolio` varchar(10) NOT NULL,
  `alamat_link` longtext NOT NULL,
  `ktp` text NOT NULL,
  `surat_dokter` text NOT NULL,
  `surat_pernyataan` text NOT NULL,
  `pakta` text NOT NULL,
  `proses` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulir`
--

INSERT INTO `formulir` (`tgl_daftar`, `id_formulir`, `id_materi`, `id_daftar`, `thn_materi`, `angk_materi`, `tgl_buka`, `bulan_buka`, `tgl_akhir`, `bulan_akhir`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jns_kelamin`, `agm`, `pend`, `jurusan`, `nik`, `alamat_lengkap`, `nohp`, `alamat_email`, `software`, `tujuan`, `rencana`, `pernah`, `materi_diklat`, `thn_diklat`, `portofolio`, `alamat_link`, `ktp`, `surat_dokter`, `surat_pernyataan`, `pakta`, `proses`) VALUES
('2019-06-22 03:13:03', 10, 17, 1, '2019', '3', '18', 'Juli', '20', 'Agustus', 'Bella Claudia Emeralda', 'Palembang', '1998-06-21', 'Perempuan', 'Islam', 'SMK', 'IPA', '3789478473843234', 'Plaju, SILABERANTI, Seberang Ulu I, Palembang, Sumatera Selatan', '089692686371', 'bclaudia2106@gmail.com', 'fdfdsfsfd', 'fsdfdsfdsfsd', 'fdsfdsfs', 'Pernah', 'sdffsdf', '2018', 'Ada', 'bit.ly/portofoliobella', 'KTP_1561173183.JPG', 'SuratKeteranganSehat_1561173183.pdf', 'SuratPernyataanBelumBekerja_1561173183.pdf', 'PaktaIntegritas_1561173183.pdf', 'Proses Seleksi'),
('2019-06-26 01:33:50', 11, 17, 7, '2019', '3', '1', 'Juli', '1', 'Agustus', 'Yusuf Andika', 'Palembang', '2019-06-21', 'Laki-laki', 'Islam', 'SMA', 'IPA', '1335346346563557', 'Talang Keramat, Kenten, Banyuasin I, Palembang, Sumatera Selatan', '54543634664', 'yusufandika@gmail.com', 'ADOBE', 'MENDAPAT PENGALAMAN DAN ILMU', 'PT. Jitu Kreasi Utama', 'Belum Pern', '-', '2019', 'Ada', 'bit.lt/kjasksaf', 'KTP_1561512831.jpg', 'SuratKeteranganSehat_1561512831.png', 'SuratPernyataanBelumBekerja_1561512831.png', 'PaktaIntegritas_1561512831.jpg', 'Cadangan');

-- --------------------------------------------------------

--
-- Table structure for table `info_jadwal`
--

CREATE TABLE `info_jadwal` (
  `tgl_info` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_info` int(10) NOT NULL,
  `judul_info` varchar(100) NOT NULL,
  `file_info` text NOT NULL,
  `ket_info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_jadwal`
--

INSERT INTO `info_jadwal` (`tgl_info`, `id_info`, `judul_info`, `file_info`, `ket_info`) VALUES
('2019-06-28 11:39:30', 2, 'Jadwal dan Materi Diklat BDI Denpasar 2019', 'InformasiJadwalDiklat_1561730115.pdf', 'Berikut ini Jadwal dan Materi Diklat BDI Denpasar 2019 yang terbaru. Jika ada perubahan tanggal atau penambahan materi diklat dan lain sebagainya, akan di update atau diperbaharui oleh Admin Jitu. Jika ada Pertanyaan terkait diklat, silahkan menghubungi Admin Jitu. Terima Kasih.');

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `id_instruktur` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_materi` int(10) NOT NULL,
  `jabatan` varchar(18) NOT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `file_ktp` text,
  `no_npwp` varchar(20) DEFAULT NULL,
  `file_npwp` text,
  `cv` text,
  `alamat` longtext,
  `portofolio1` longtext,
  `portofolio2` longtext,
  `portofolio3` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instruktur`
--

INSERT INTO `instruktur` (`id_instruktur`, `id_user`, `id_materi`, `jabatan`, `no_ktp`, `file_ktp`, `no_npwp`, `file_npwp`, `cv`, `alamat`, `portofolio1`, `portofolio2`, `portofolio3`) VALUES
(1, 6, 17, 'Asisten Instruktur', '1213423434234331', 'KTP_1561266981.JPG', '42335235235', 'NPWP_1561266981.JPG', 'CV_1561266981.jpg', 'Jl. Ahmad Yani Lorong Manggis No.63 Palembang, Sumatera Selatan', 'bit.ly/bellaclaudia', 'bit.ly/portofoliobella', '');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(10) NOT NULL,
  `materi` varchar(100) NOT NULL,
  `jpl` varchar(5) NOT NULL,
  `angkatan` varchar(5) NOT NULL,
  `tgl_pembukaan` varchar(2) NOT NULL,
  `bulan_pembukaan` varchar(15) NOT NULL,
  `tgl_penutupan` varchar(2) NOT NULL,
  `bulan_penutupan` varchar(15) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `jumlah` varchar(15) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `materi`, `jpl`, `angkatan`, `tgl_pembukaan`, `bulan_pembukaan`, `tgl_penutupan`, `bulan_penutupan`, `tahun`, `jumlah`, `status`) VALUES
(6, 'Pembuatan Layout Animasi 3D', '146', '1', '14', '01', '31', '01', '2019', '24', 'Selesai'),
(7, 'Pembuatan Aset Animasi 3D', '283', '1', '15', '01', '18', '02', '2019', '24', 'Selesai'),
(9, 'Desainer Grafis Muda', '187', '1', '18', '03', '9', '04', '2019', '24', 'Selesai'),
(10, 'Pembuatan Gambar Penceritaan Animasi', '67', '1', '26', '01', '6', '02', '2019', '24', 'Selesai'),
(11, '3D Character Setup', '196', '1', '28', '02', '20', '03', '2019', '24', 'Selesai'),
(13, 'Pembuatan Gambar Penceritaan Animasi', '67', '3', '22', '02', '2', '03', '2019', '24', 'Selesai'),
(14, 'Pembuatan Gerak Animasi 3D', '221', '10', '14', '03', '10', '04', '2019', '24', 'Selesai'),
(16, 'Desainer Grafis Muda', '187', '2', '22', '04', '12', '05', '2019', '24', 'Selesai'),
(17, 'Desainer Grafis Muda', '187', '3', '6', '05', '27', '05', '2019', '24', 'Selesai'),
(19, 'Pembuatan Gerak Animasi 3D', '221', '16', '21', '06', '17', '07', '2019', '24', 'Selesai'),
(20, 'Junior Web Programmer', '177', '1', '17', '07', '7', '08', '2019', '24', 'Pendaftaran'),
(21, 'Desainer Grafis Muda', '187', '4', '31', '07', '22', '08', '2019', '24', 'Pendaftaran'),
(22, 'Pembuatan Aset Animasi 3D', '283', '10', '9', '08', '13', '09', '2019', '24', 'Pendaftaran'),
(23, 'Pembuatan Gerak Animasi 3D', '221', '21', '28', '08', '23', '09', '2019', '24', 'Pendaftaran'),
(24, 'Pembuatan Latar Animasi 2D', '104', '7', '6', '09', '17', '09', '2019', '24', 'Pendaftaran'),
(25, 'Pembuatan Layout Animasi 3D', '146', '9', '23', '09', '9', '10', '2019', '24', 'Pendaftaran'),
(26, 'Pembuatan Latar Animasi 2D', '104', '8', '30', '09', '10', '10', '2019', '24', 'Pendaftaran'),
(27, 'Pembuatan Aset Animasi 3D', '283', '13', '15', '10', '6', '11', '2019', '24', 'Pendaftaran'),
(28, 'Pembuatan Layout Animasi 3D', '146', '3', '13', '02', '1', '03', '2019', '24', 'Selesai'),
(29, 'Pembuatan Gerak Animasi 3D', '221', '14', '3', '05', '29', '05', '2019', '24', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_daftar` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tempat` varchar(40) NOT NULL,
  `tanggal` date NOT NULL,
  `jk` varchar(10) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikan` varchar(5) NOT NULL,
  `alamat` longtext NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `desa` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL,
  `foto` text NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_daftar`, `nama`, `username`, `password`, `email`, `tempat`, `tanggal`, `jk`, `agama`, `pendidikan`, `alamat`, `provinsi`, `kota`, `kecamatan`, `desa`, `status`, `foto`, `level`) VALUES
(1, 'Bella Claudia', 'bellaclaudia', 'bella2121', 'bclaudia2106@gmail.com', 'Palembang', '1998-06-21', 'Perempuan', 'Islam', 'SMK', 'Plaju', 'Sumatera Selatan', 'Palembang', 'Seberang Ulu I', 'SILABERANTI', 'Belum Bekerja', 'user.png', 'Peserta'),
(7, 'Yusuf Andika', 'yusuf123', '12345678', 'yusufandika@gmail.com', 'Palembang', '2019-06-21', 'Laki-laki', 'Islam', 'SMA', 'Talang Keramat', 'Sumatera Selatan', 'Palembang', 'Banyuasin I', 'Kenten', 'Sudah Bekerja', 'user.png', 'Peserta');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `tgl_pengumuman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pengumuman` int(10) NOT NULL,
  `materi` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `file` text NOT NULL,
  `keterangan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`tgl_pengumuman`, `id_pengumuman`, `materi`, `gambar`, `file`, `keterangan`) VALUES
('2019-06-28 14:01:20', 6, 'Desainer Grafis Muda Angkatan 2', 'GambarDepan1561730481.jpg', 'FilePengumuman1561730481.pdf', 'Berikut ini nama-nama Peserta yang Dinyatakan Lulus Seleksi Diklat BDI Denpasar 2019. Silahkan cek email masing-masing untuk Registrasi Ulang di Website BDI Denpasar dan mendapatkan Undangan Resmi dari Jitu Kreasi Utama. Terima Kasih.'),
('2019-06-28 14:05:20', 7, 'Desainer Grafis Muda Angkatan 3', 'GambarDepan_1561730721.jpg', 'FilePengumuman_1561730721.pdf', 'Berikut ini nama-nama Peserta yang Dinyatakan Lulus Seleksi Diklat BDI Denpasar 2019. Silahkan cek email masing-masing untuk Registrasi Ulang di Website BDI Denpasar dan mendapatkan Undangan Resmi dari Jitu Kreasi Utama. Terima Kasih.'),
('2019-06-28 14:23:50', 8, 'Pembuatan Gerak Animasi 3D Angkatan 14', 'GambarDepan_1561731830.jpg', 'FilePengumuman_1561731830.pdf', 'Berikut ini nama-nama Peserta yang Dinyatakan Lulus Seleksi Diklat BDI Denpasar 2019. Silahkan cek email masing-masing untuk Registrasi Ulang di Website BDI Denpasar dan mendapatkan Undangan Resmi dari Jitu Kreasi Utama. Terima Kasih.');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_saran` int(10) NOT NULL,
  `nama_depan` varchar(30) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `isi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_instruktur`
--

CREATE TABLE `user_instruktur` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_instruktur`
--

INSERT INTO `user_instruktur` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(9, 'Bella Claudia', 'bellaclaudia', 'bella2106', 'Instruktur'),
(10, 'Muhammad Dinar Aulia Rahman', 'dinaraulia', 'dinarsukses', 'Instruktur'),
(11, 'Bilyan Putra Sari', 'bilyanputra', 'bilyansukses', 'Instruktur'),
(12, 'Zara Trimurti Sayojanagandi', 'zaratrimurti', 'zarasukses', 'Instruktur'),
(13, 'Muh Syamharto Maksubalma Rayisu', 'syamharto', 'syamsukses', 'Instruktur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id_berkas`);

--
-- Indexes for table `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`id_formulir`);

--
-- Indexes for table `info_jadwal`
--
ALTER TABLE `info_jadwal`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`id_instruktur`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `user_instruktur`
--
ALTER TABLE `user_instruktur`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id_berkas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `formulir`
--
ALTER TABLE `formulir`
  MODIFY `id_formulir` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `info_jadwal`
--
ALTER TABLE `info_jadwal`
  MODIFY `id_info` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `id_instruktur` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_daftar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_instruktur`
--
ALTER TABLE `user_instruktur`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
