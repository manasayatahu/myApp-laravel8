-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2022 pada 05.03
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ac`
--

CREATE TABLE `ac` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assets` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refrigerant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voltage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_maintenance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ac`
--

INSERT INTO `ac` (`id`, `user_id`, `label`, `assets`, `wing`, `lantai`, `ruangan`, `merk`, `type`, `jenis`, `kapasitas`, `refrigerant`, `product`, `current`, `voltage`, `btu`, `status`, `catatan`, `kerusakan`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_maintenance`, `user_updated`, `user_updated_time`, `is_delete`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 'a1.07', 'Telkom', 'WA', 'Lt1', 'Rg.Manager Egbis', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'ME', '2022-04-07 02:00', 'Meong', '2022-04-12 22:59:00', NULL, NULL, '2022-04-11 07:35:32', '2022-04-12 14:59:00'),
(4, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.tamu wing a', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'ME', NULL, 'Meong', '2022-04-12 22:02:39', NULL, NULL, '2022-04-11 07:39:00', '2022-04-12 14:02:39'),
(5, 1, 'A1.03', 'Telkom', 'WA', 'Lt1', 'rg.OSM Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, 'Rusak', 'sudah di lakukan perbaikan beberapa kali', 'mcb trip sekitar 3menit saat ac di onkan, kompresor mengalami overload', NULL, NULL, NULL, 'Meong', '2022-04-14 22:04:39', NULL, NULL, '2022-04-11 07:40:24', '2022-04-14 14:04:39'),
(6, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Staff Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, 'Rusak', 'Belum di lakukan perbaikan', 'MCB Trip', NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:02', NULL, NULL, '2022-04-11 07:41:58', '2022-04-12 14:03:02'),
(7, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Staff Egbis', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'ME', '2022-03-20 11:59', 'Meong', '2022-04-12 22:03:13', NULL, NULL, '2022-04-11 07:43:13', '2022-04-12 14:03:13'),
(8, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Manager Egbis', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:26', NULL, NULL, '2022-04-11 07:45:31', '2022-04-12 14:03:26'),
(9, 1, NULL, 'Telkom', 'WA', 'Lt1', 'rg.Rapat Egbis', 'Daikin', 'Cassete', 'Non-inverter', '5pk', 'R22', NULL, NULL, '380Volt', NULL, 'Rusak', 'belum di lakukan pengecekan', 'tidak dingin', NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:37', NULL, NULL, '2022-04-11 07:46:52', '2022-04-12 14:03:37'),
(10, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.OSM RWS', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', NULL, '220Volt', NULL, 'Rusak', 'unit indoor masih normal', 'Kompresor overheat', NULL, NULL, NULL, 'Meong', '2022-04-12 22:03:50', NULL, NULL, '2022-04-11 07:51:04', '2022-04-12 14:03:50'),
(11, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.OSM RWS', 'Panasonic', 'Splite', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:04:01', NULL, NULL, '2022-04-11 07:51:49', '2022-04-12 14:04:01'),
(12, 1, 'A1.11', 'Telkom', 'WA', 'Lt1', 'Rg.Sekertaris RWS', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, 'Rusak', NULL, 'Error A3', NULL, NULL, NULL, 'Meong', '2022-04-12 22:04:17', NULL, NULL, '2022-04-11 07:53:23', '2022-04-12 14:04:17'),
(13, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Staff RWS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'ME', '2022-03-10 00:54', 'Meong', '2022-04-12 22:04:33', NULL, NULL, '2022-04-11 07:55:10', '2022-04-12 14:04:33'),
(14, 1, NULL, 'RWS', 'WA', 'Lt1', 'Rg.Staff RWS', 'Panasonic', 'Splite', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, 'Rusak', 'unit indoor masih normal', 'kompresor rusak', NULL, 'ME', NULL, 'Meong', '2022-04-12 22:04:46', NULL, NULL, '2022-04-11 07:56:23', '2022-04-12 14:04:46'),
(15, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Mushola RWS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, '2022-03-01 00:57', 'Meong', '2022-04-12 22:04:59', NULL, NULL, '2022-04-11 07:58:32', '2022-04-12 14:04:59'),
(16, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Rapat RWS', 'General', 'Splite', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', 'remote kadang tidak berfungsi', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:05:12', NULL, NULL, '2022-04-11 07:59:45', '2022-04-12 14:05:12'),
(17, 1, NULL, 'Pins', 'WA', 'Lt1', 'Rg.Pins', 'Daikin', 'Splite', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'Vendor', NULL, 'Meong', '2022-04-12 22:05:26', NULL, NULL, '2022-04-11 08:35:47', '2022-04-12 14:05:26'),
(18, 1, NULL, 'Pins', 'WA', 'Lt1', 'Rg.Pins', 'Daikin', 'Splite', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'Vendor', NULL, 'Meong', '2022-04-12 22:05:38', NULL, NULL, '2022-04-11 08:36:34', '2022-04-12 14:05:38'),
(19, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.Manager Pins', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', 'Thailand', '13,4 A', '220Volt', NULL, 'Normal', 'ruangan dalam keadaan kosong', NULL, NULL, 'Vendor', NULL, 'Meong', '2022-04-12 22:05:49', NULL, NULL, '2022-04-11 08:38:19', '2022-04-12 14:05:49'),
(20, 1, NULL, 'Telkom', 'WA', 'Lt1', 'Rg.SOPP', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'ME', NULL, 'Meong', '2022-04-12 22:06:01', NULL, NULL, '2022-04-11 08:42:18', '2022-04-12 14:06:01'),
(21, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.OSM HR', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', 'sering terjadi kondensasi pada pipa ac', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:06:37', NULL, NULL, '2022-04-11 10:41:02', '2022-04-12 14:06:37'),
(22, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Rapat HR', 'Sharp', 'Splite', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', 'Kompresor sudah di ganti', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:06:49', NULL, NULL, '2022-04-11 10:42:06', '2022-04-12 14:06:49'),
(23, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager HR', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:05', NULL, NULL, '2022-04-11 10:43:13', '2022-04-12 14:07:05'),
(24, 1, NULL, 'Telkom', 'WA', 'Lt2', 'depan meja kerja Pahar', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:17', NULL, NULL, '2022-04-11 10:44:47', '2022-04-12 14:07:17'),
(25, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager HR', 'General', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, 'Rusak', NULL, 'Kompresor rusak', NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:34', NULL, NULL, '2022-04-11 10:46:33', '2022-04-12 14:07:34'),
(26, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', NULL, NULL, '220Volt', NULL, 'Rusak', 'Belum di lakukan perbaikan', 'Error A3', NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:46', NULL, NULL, '2022-04-11 10:55:37', '2022-04-12 14:07:46'),
(27, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Inverter', '5pk', 'R410', 'Thailand', '16 A', '380Volt', NULL, 'Rusak', 'sudah tidak bisa normal', 'Kompresor dan modul indoor sudah rusak', NULL, NULL, NULL, 'Meong', '2022-04-12 22:07:58', NULL, NULL, '2022-04-11 10:57:51', '2022-04-12 14:07:58'),
(28, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:08:11', NULL, NULL, '2022-04-11 10:58:44', '2022-04-12 14:08:11'),
(29, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Manager Finance', 'Daikin', 'Splite', 'Inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:08:23', NULL, NULL, '2022-04-11 10:59:56', '2022-04-12 14:08:23'),
(30, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.Staff Finance', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:08:34', NULL, NULL, '2022-04-11 11:01:18', '2022-04-12 14:08:34'),
(31, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Pantry Finance', 'Daikin', 'Splite', 'Non-inverter', '2pk', 'R410', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:08:45', NULL, NULL, '2022-04-11 11:03:07', '2022-04-12 14:08:45'),
(32, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.OBS', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, 'Normal', 'MCB ada di panel AC wing A Lt1', NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:08:56', NULL, NULL, '2022-04-11 11:03:56', '2022-04-12 14:08:56'),
(33, 1, NULL, 'Telkom', 'WA', 'Lt2', 'Rg.OSM Finance', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', '13 A', '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:10:03', NULL, NULL, '2022-04-11 11:05:57', '2022-04-12 14:10:03'),
(34, 1, NULL, 'Finance', 'WA', 'Lt2', 'Rg.OSM Finance', 'Panasonic', 'Splite', 'Non-inverter', '1pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:10:19', NULL, NULL, '2022-04-11 11:06:44', '2022-04-12 14:10:19'),
(35, 1, NULL, 'MSO', 'WA', 'Lt3', 'Rg.Staff MSO', 'Panasonic', 'Splite', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'Vendor', NULL, 'Meong', '2022-04-12 22:10:30', NULL, NULL, '2022-04-12 12:39:38', '2022-04-12 14:10:30'),
(36, 1, NULL, 'Telkom', 'WB', 'Lt1', 'Rg.Rapat GSD', 'Daikin', 'Cassete', 'Non-inverter', '3pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'Meong', '2022-04-12 22:12:41', NULL, NULL, '2022-04-12 14:12:12', '2022-04-12 14:12:41'),
(37, 1, NULL, 'Telkom', 'WD', 'Lt2', 'Rg.Osm CCM/Rg.Pak Sahwan', 'Daikin', 'Splite', 'Non-inverter', '2pk', 'R32', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, 'ME', '2022-04-13 21:44', 'Meong', '2022-04-14 21:48:47', NULL, NULL, '2022-04-14 13:46:13', '2022-04-14 13:48:47'),
(38, 1, NULL, NULL, 'WD', 'Lt2', 'Rg.Rapat CCM', 'Daikin', 'Splite', 'Non-inverter', '2pk', 'R22', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, '2022-04-13 21:47', NULL, NULL, NULL, NULL, '2022-04-14 13:47:38', '2022-04-14 13:47:38'),
(39, 1, NULL, NULL, 'Lainnya', 'Lt1', 'Forsikatel', 'LG', 'Splite', 'Non-inverter', '1,5pk', 'R22', NULL, '5,1 A', '220Volt', NULL, 'Normal', 'Telah di lakukan penggantian kapasitor tanggal 2022/04/14', NULL, NULL, NULL, NULL, 'Meong', '2022-04-14 21:54:50', NULL, NULL, '2022-04-14 13:50:47', '2022-04-14 13:54:50'),
(40, 1, NULL, NULL, 'Lainnya', 'Lt1', 'Forsikatel', 'Sharp', 'Splite', 'Non-inverter', '2pk', 'R32', NULL, '8,2 A', '220Volt', NULL, 'Normal', 'Telah dilakukan pengisian freon tanggal 2022/04/14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-14 13:53:41', '2022-04-14 13:53:41'),
(41, 1, NULL, 'Telkom', 'WC', 'Lt2', 'Depan Rg.TAM', 'Daikin', 'Cassete', 'Inverter', '3pk', 'R410', 'Thailand', NULL, '220Volt', NULL, 'Rusak', NULL, 'Error U2', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, '2022-04-14 13:59:17', '2022-04-14 13:59:17'),
(42, 6, NULL, NULL, 'WB', 'Lt1', 'fdsfds', 'Daikin', 'Splite', 'Inverter', '5pk', 'R32', NULL, NULL, '220Volt', NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, 'jen', '2022-04-17 07:30:22', 'Rinto Harahap', '2022-04-16 23:31:27', '2022-04-16 23:30:07', '2022-04-16 23:31:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv_monitor1`
--

CREATE TABLE `cctv_monitor1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandi_dvr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cctv_monitor1`
--

INSERT INTO `cctv_monitor1` (`id`, `user_id`, `lantai`, `wing`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 1, 'Lt3', 'WB', 'Rg.Binroh', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-04-15 01:04:50', NULL, '2022-04-22 11:28:08', '2022-04-14 17:04:50'),
(6, 1, 'Lt3', 'WB', 'Fiber Room', 'Hikvision', 'Analog', 'Normal', '1,5MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-04-15 01:07:01', NULL, '2022-04-11 11:29:02', '2022-04-14 17:07:01'),
(7, 1, 'Lt3', 'WA', 'Rg.Staff MSO', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Vendor', NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-04-15 02:18:06', NULL, '2022-04-11 11:30:21', '2022-04-14 18:18:06'),
(9, 1, 'Lantai 1', 'Wing D', 'cc', 'cc', 'Ip Cam', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-04-12 15:19:19', '2022-04-11 23:06:32', '2022-04-12 15:19:19'),
(10, 1, 'Lantai 2', 'Wing B', 'fdsfds', 'fdsf', 'Analog', 'Rusak', '1,5MP', NULL, NULL, NULL, NULL, NULL, NULL, 'eeeee', 'Meong', 'Meong', '2022-04-12 19:54:12', '2022-04-12 15:19:10', '2022-04-12 11:38:30', '2022-04-12 15:19:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv_monitor2`
--

CREATE TABLE `cctv_monitor2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandi_dvr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cctv_monitor2`
--

INSERT INTO `cctv_monitor2` (`id`, `user_id`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Samping Rg.Mgr SAS', 'Hikvision', 'Analog', 'Normal', '2MP', NULL, 'Raswin,Rinto,Rahmat', NULL, NULL, 'belum dilakukan pengecekan', NULL, NULL, 'Rinto Harahap', 'Meong', '2022-04-17 07:29:04', NULL, '2022-04-14 15:25:15', '2022-04-16 23:29:04'),
(2, 1, 'Indoor', 'Hikvision', 'Ip Cam', 'Normal', '2MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-04-15 17:17:25', '2022-04-15 16:28:25', '2022-04-15 17:17:25'),
(3, 1, 'dss', 'Hikvision', 'Ip Cam', 'Normal', '2MP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', NULL, '2022-04-15 17:17:20', '2022-04-15 16:31:04', '2022-04-15 17:17:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv_monitor3`
--

CREATE TABLE `cctv_monitor3` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandi_dvr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cctv_monitor3`
--

INSERT INTO `cctv_monitor3` (`id`, `user_id`, `lantai`, `wing`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'Lt1', 'WB', 'Plasa', 'Hikvision', 'Analog', 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meong', 'Meong', '2022-04-15 03:40:34', '2022-04-16 15:44:22', '2022-04-14 19:33:48', '2022-04-16 15:44:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv_monitor4`
--

CREATE TABLE `cctv_monitor4` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_pemasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandi_dvr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cctv_monitor4`
--

INSERT INTO `cctv_monitor4` (`id`, `user_id`, `lokasi`, `merk`, `type`, `status`, `resolusi`, `tgl_pemasangan`, `petugas_pemasangan`, `tgl_perbaikan`, `petugas_perbaikan`, `catatan`, `sandi_dvr`, `kerusakan`, `user_updated`, `user_delete`, `updated_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sekolah', 'Hikvision', 'Ip Cam', 'Normal', '4MP', NULL, 'ME', NULL, NULL, NULL, NULL, NULL, 'Meong', 'Meong', '2022-04-16 01:18:05', '2022-04-16 15:44:16', '2022-04-15 16:33:17', '2022-04-16 15:44:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chartac`
--

CREATE TABLE `chartac` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `chartac`
--

INSERT INTO `chartac` (`id`, `tahun`, `bulan`, `total`, `created_at`, `updated_at`) VALUES
(25, '2022', 'April', '6', '2022-04-11 08:12:25', '2022-04-14 14:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_24_085029_create_ac_table', 1),
(6, '2022_03_31_034449_create_chartac_table', 1),
(7, '2022_04_02_234633_create_session_table', 1),
(8, '2022_04_05_234839_create_cctv_monitor1_table', 1),
(9, '2022_04_14_231437_create_cctv_monitor2_table', 2),
(10, '2022_04_15_024616_create_cctv_monitor3_table', 3),
(11, '2022_04_16_002444_create_cctv_monitor4_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `session`
--

CREATE TABLE `session` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `session`
--

INSERT INTO `session` (`id`, `user_id`, `lat`, `long`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-11 06:44:14', '2022-04-16 15:38:45'),
(5, 5, NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-16 22:49:21', '2022-04-16 22:49:39'),
(6, 6, NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-16 23:21:56', '2022-04-16 23:22:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline',
  `is_login` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nik`, `image`, `is_active`, `role`, `password`, `status_login`, `is_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 15920011, 'user-images/xPPnGfkXwqE112ZMvPndxNLi25oUhTW6aWMNsl7l.png', 1, 1, '$2y$10$d/NucPTbpNp7imfUYwEfReY9h1FwSVboGoyNlne7UeYzzKoC6EV1S', 'online', '2022-04-18 02:58:37', NULL, '2022-04-11 06:44:14', '2022-04-18 02:58:37'),
(5, 'Markus', 15920001, 'user-images/Q0mq6u7hxSuOQSa9d1ScgrGjKDRLqL0eJAsljXos.png', 1, 0, '$2y$10$fEbMeZ3/l6CpnUCd.d7X2ON5nI81Etomu2egx7L.hONmZd6sggfsK', 'offline', '2022-04-16 23:21:41', NULL, '2022-04-16 22:49:15', '2022-04-16 23:21:41'),
(6, 'Jhen Doe', 15920002, 'user-images/ZP9ec8l8RaHvjWfEEK3KtjAzVXDAQ7Yzmd26wz1G.png', 1, 0, '$2y$10$391A5QBYbB3UuFycNWWk0O1TbHzqVX5i3dfgzOmFnSqOzAP8ngvSC', 'offline', '2022-04-16 23:42:09', NULL, '2022-04-16 23:21:35', '2022-04-16 23:42:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv_monitor1`
--
ALTER TABLE `cctv_monitor1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv_monitor2`
--
ALTER TABLE `cctv_monitor2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv_monitor3`
--
ALTER TABLE `cctv_monitor3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv_monitor4`
--
ALTER TABLE `cctv_monitor4`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `chartac`
--
ALTER TABLE `chartac`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ac`
--
ALTER TABLE `ac`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `cctv_monitor1`
--
ALTER TABLE `cctv_monitor1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `cctv_monitor2`
--
ALTER TABLE `cctv_monitor2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cctv_monitor3`
--
ALTER TABLE `cctv_monitor3`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cctv_monitor4`
--
ALTER TABLE `cctv_monitor4`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `chartac`
--
ALTER TABLE `chartac`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `session`
--
ALTER TABLE `session`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
