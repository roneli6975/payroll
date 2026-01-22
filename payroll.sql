-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2026 at 08:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `asetId` int(11) NOT NULL,
  `asetNo` varchar(128) NOT NULL,
  `asetNama` varchar(128) NOT NULL,
  `asetGrup` varchar(128) NOT NULL,
  `identifikasi` varchar(128) NOT NULL,
  `spesifikasi` varchar(256) NOT NULL,
  `date_created` int(11) NOT NULL,
  `log` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`asetId`, `asetNo`, `asetNama`, `asetGrup`, `identifikasi`, `spesifikasi`, `date_created`, `log`) VALUES
(1, '10011', 'Mobil Operasional ', 'Kendaraan', 'Merek Honda BRV 1480cc Coklat Metalic', 'No.Rangka : BCDE4536JIK98 | No.Mesin : WE328OIEGY6H | No.Polisi : L 4567 GIH', 20251219, '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '639f71dd548b9763f9c3ef7c7082611f', '2026-01-20 10:41:34'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '639f71dd548b9763f9c3ef7c7082611f', '2026-01-21 01:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'administrator area'),
(2, 'user', 'user area');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 5),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'roneli6975@yahoo.com', NULL, '2026-01-20 10:39:08', 0),
(2, '::1', 'roneli6975@yahoo.com', 5, '2026-01-20 10:39:20', 0),
(3, '::1', 'roneli6975@yahoo.com', 5, '2026-01-20 10:41:45', 1),
(4, '::1', 'roneli6975@yahoo.com', 5, '2026-01-21 01:37:40', 1),
(5, '::1', 'roneli6975@gmail.com', 8, '2026-01-21 03:29:01', 1),
(6, '::1', 'roneli6975@gmail.com', 8, '2026-01-21 04:42:36', 1),
(7, '::1', 'roneli6975@gmail.com', 8, '2026-01-21 07:36:14', 1),
(8, '::1', 'roneli6975@gmail.com', 8, '2026-01-21 08:45:02', 1),
(9, '::1', 'roneli6975@gmail.com', 8, '2026-01-22 01:10:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'user management', 'manage all user profile'),
(2, 'user profile', 'manage user profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nik` varchar(128) NOT NULL,
  `nama_karyawan` varchar(256) NOT NULL,
  `grup` varchar(128) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_resign` date DEFAULT NULL,
  `ket_resign` varchar(256) DEFAULT NULL,
  `ektp` varchar(128) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `kota` varchar(256) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(256) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `kelamin` varchar(50) NOT NULL,
  `sts_kawin` varchar(50) NOT NULL,
  `anak` int(11) DEFAULT NULL,
  `sts_pajak` varchar(20) NOT NULL,
  `pendidikan` varchar(128) DEFAULT NULL,
  `studi` varchar(128) DEFAULT NULL,
  `lulusan` int(4) DEFAULT NULL,
  `npwp` varchar(50) NOT NULL,
  `jamsostek` varchar(50) NOT NULL,
  `bpjs` varchar(50) NOT NULL,
  `bank` varchar(128) NOT NULL,
  `rek_no` varchar(50) NOT NULL,
  `rek_nama` varchar(128) DEFAULT NULL,
  `foto` varchar(256) NOT NULL DEFAULT 'default.svg',
  `telpon` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `ts_requestor_name` varchar(128) DEFAULT NULL,
  `ts_requestor_jabatan` varchar(128) DEFAULT NULL,
  `ts_requestor_nik` varchar(50) DEFAULT NULL,
  `ts_approval_name` varchar(128) DEFAULT NULL,
  `ts_approval_jabatan` varchar(128) DEFAULT NULL,
  `ts_approval_nik` varchar(50) DEFAULT NULL,
  `ts_name` varchar(256) DEFAULT NULL,
  `impor_ts` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nik`, `nama_karyawan`, `grup`, `tgl_masuk`, `tgl_resign`, `ket_resign`, `ektp`, `alamat`, `kota`, `tgl_lahir`, `tempat_lahir`, `agama`, `kelamin`, `sts_kawin`, `anak`, `sts_pajak`, `pendidikan`, `studi`, `lulusan`, `npwp`, `jamsostek`, `bpjs`, `bank`, `rek_no`, `rek_nama`, `foto`, `telpon`, `email`, `ts_requestor_name`, `ts_requestor_jabatan`, `ts_requestor_nik`, `ts_approval_name`, `ts_approval_jabatan`, `ts_approval_nik`, `ts_name`, `impor_ts`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2998, '80008168', 'ASEP HIDAYAT', 'Local', '2015-02-14', NULL, '', '357403110275001', 'Jl. KPT Patimura Gg. Tajungan Rt/Rw:002/008 - Mangun Harjo - Mayangan - Probolinggo - Jatim', 'PROBOLINGGO', '1975-02-11', 'Probolinggo', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '733943948953000', '15031918772', '1585625872', 'Mandiri', '1400014353131', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(2999, '80008167', 'ALI MAHROM', 'Local', '2015-02-14', NULL, '', '330102300785001', 'Jl. Merpati No.44 Rt/Rw:004/002 - Slarang - Kesugihan - Cilacap', 'CILACAP', '1985-07-30', 'Cilacap', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '786198143522000', '15031918764', '1585709436', 'Mandiri', '1540011838251', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3000, '80006999', 'ABDUL KODIR', 'Local', '2016-02-15', NULL, '', '350718170590001', 'Dusun Tegal Pasangan Rt/Rw.001/008 - Pakis Kembar - Malang', 'MALANG', '1990-05-17', 'Malang', 'ISLAM', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '732352265953000', '15027272424', '1867791104', 'Mandiri', '9000022613088', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3001, '80015170', 'ADI HIDAYATULLAH', 'Local', '2017-07-29', NULL, '', '3513151210920002', 'Dusun Kuripan Rt/Rw:005/004-Jatiurip-Krejengan-Probolinggo-Jatim', 'PROBOLINGGO', '1992-10-12', 'Probolinggo', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '848348637625000', '17034953640', '2062650688', 'Mandiri', '1430012994016', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3002, '80023863', 'ASEP URIP MULYA', 'Local', '2019-07-27', NULL, '', '3217061111820010', 'Kp. Ciburial RT.05 RW.06 Ds. Marga Jaya Kec. Ngamprah Kab. Bandung Barat-Jabar', 'BANDUNG', '1982-11-11', 'BANDUNG', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '922088455421000', '19054896196', '1519254066', 'Mandiri', '1320022242052', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3003, '80008122', 'BAWONO', 'Local', '2015-04-18', NULL, '', '320104071067008', 'Cijujung Blodes Rt/Rw:005/002 - Sukaraja - Bogor - Jabar', 'BOGOR', '1967-10-07', 'Cilacap', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '775141104403000', '13013273225', '1585709447', 'Mandiri', '1330013049838', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3004, '80015177', 'DIMAS BAGUS WIRAWAN', 'Local', '2017-07-29', NULL, '', '3505210701930001', 'Dusun Pohgajih Rt/RW:001/001 Pohgajih-Selorejo-Blitar-Jatim', 'BLITAR', '1993-01-07', 'Tangerang', 'ISLAM', 'L', 'Belum Kawin', 0, 'K/0', NULL, NULL, NULL, '858379829653000', '17034953624', '2278422808', 'Mandiri', '1440016787431', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3005, '80019719', 'DODY JORKAIF MUHAMAD', 'Local', '2018-03-31', NULL, '', '7106011412940002', 'JAGA IX - KEMA III -MINAHASA UTARA', 'Manado', '1994-12-14', 'Manado', 'ISLAM', 'L', 'Belum Kawin', 0, 'K/0', NULL, NULL, NULL, '0', '18030434650', '2453503342', 'Mandiri', '1540014886489', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3006, '80000301', 'KUSNANTO', 'Local', '2017-07-29', NULL, '', '350709220187002', 'Jl. Sawah Bokor Rt/Rw.:025/011 Pagedangan - Turen - Malang', 'MALANG', '1987-01-22', 'Malang', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '732234554953000', '17034953566', '680625472', 'Mandiri', '1540012434258', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3007, '80020850', 'MOCHAMAD IMAM MUCHOYIN', 'Local', '2018-06-02', NULL, '', '3623151312810001', 'Rt/Rw:002/008-Gedong Ombo-Semanding-Tuban-Jatim', 'TUBAN', '1981-12-16', 'TUBAN', 'ISLAM', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '849742655648000', '18037864321', '2467614429', 'Mandiri', '1540014984474', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3008, '80008987', 'MOCHAMAD YUSUF', 'Local', '2016-02-15', NULL, '', '3513163004810003', 'Dusun Ibrak Rt/Rw:001/005 Karang Panti - Pajarakan -Probolinggo -Jatim', 'PROBOLINGGO', '1981-04-30', 'Surabaya', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '662189752625000', '13043483414', '1311595929', 'Mandiri', '1400013437695', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3009, '80015179', 'MOHAMMAD AFRIZAL AZIZI', 'Local', '2017-07-29', NULL, '', '3517181004950001', 'Dusun Manisrenggo Rt/Rw:002/008-Gondang Manis-Bandar Kedung Mulyo-Jombang-Jatim', 'JOMBANG', '1995-04-10', 'Jombang', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '663798460602000', '17034953657', '2278424755', 'Mandiri', '1420015839706', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3010, '80008186', 'MUHAMMAD LUTFI ROHMAN', 'Local', '2015-02-14', NULL, '', '332014081188001', 'Balong Rt/Rw:003/002 Balong - Kembang - Jepara - Jateng', 'JEPARA', '1988-11-08', 'Jepara', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '708304563516000', '14036005321', '1422168401', 'Mandiri', '1540014944288', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3011, '80023580', 'NUGROHO MUKTI WIBOWO', 'Local', '2019-05-11', NULL, '', '3301181804960004', 'Jl. Kol. Sugiyono no.80 rt/rw:003/004, Kel. Cipari, Kec. Cipari', 'CILACAP', '1996-04-18', 'CILACAP', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '914287214522000', '19034721340', '2383522716', 'Mandiri', '1390016889036', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3012, '80023581', 'NURCAHYONO', 'Local', '2019-05-11', NULL, '', '3201242710690002', 'Perum Adiwira Persada Blok B. No.1 Rt/Rw:001/013-Nanggewer-Cibinong-Bogor-Jabar', 'BOGOR', '1969-10-27', 'CILACAP', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '570372276434000', '19034721357', '1651234768', 'Mandiri', '1330016273153', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3013, '80041881', 'RIVALDI DWI YOHANA', 'Local', '2025-02-27', NULL, '', '3301130807000002', 'Sindanghaji RT/Rw : 004/005 - Bantarpanjang-Cimanggu-Cilacap-Jateng', 'CILACAP', '2000-07-08', 'CILACAP', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '25022618356', '2938864015', 'Mandiri', '1540020048330', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3014, '80007066', 'ANTONIUS NUGROHO', 'Local', '2017-07-22', NULL, '', '3573021101750002', 'Jl. MGR S. Pranoto II/7 Rt/Rw:001/002 Kidul Dalem - Klojen - Malang', 'DENPASAR', '1975-01-11', 'Malang', 'KRISTEN', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '87280087623000', '17034953699', '1585625747', 'Mandiri', '9000010838085', NULL, 'default.svg', NULL, 'roneli6975@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3015, '80010732', 'PUJI ASMORO', 'Local', '2016-04-04', NULL, '', '3515130508930002', 'Jl. Sawunggaling IV Rt/Rw:009/001 Jemundo Taman Sidoarjo - Jatim', 'SIDOARJO', '1993-08-05', 'Sidoarjo', 'ISLAM', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '740356928953000', '14018057837', '1258904193', 'Mandiri', '1410015155195', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3016, '80007000', 'ADIP ZUHRI', 'Local', '2017-07-22', NULL, '', '3507102009730006', 'Dusun Krajan Rt/Rw:024/004 Urek-urek - Gondang Legi - Malang', 'MALANG', '1973-09-20', 'Malang', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '732352489953000', '17034953707', '1585709425', 'Mandiri', '1540011031915', NULL, 'default.svg', NULL, 'rony.suharinurdjaja@faznet.co.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3017, '80020643', 'ALTER JOKSAN LAHENGKO', 'Local', '2018-05-04', NULL, '', '7105171904910001', 'Jaga VI Desa Teep Kec. Amurang Barat', 'Manado', '1991-04-19', 'Teep', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '847764024824000', '18043675406', '1823954477', 'Mandiri', '1500013479629', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3018, '80016561', 'DONO WAHYUDI', 'Local', '2017-09-16', NULL, '', '3506062501880005', 'Jl. Epo Rt/Rw:014/000 Koprapoka-Mimika Baru ', 'Kediri', '1988-01-25', 'Kediri', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '899133879655000', '17042225304', '2383553766', 'Mandiri', '1540016940367', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3019, '80018147', 'FAJAR FATKURAHMAN', 'Local', '2018-01-06', NULL, '', '3301231512890001', 'Jl. Munggur barat No. 238 Rt/Rw : 001/008 Mertasinga-Cilacap Utara-Cilacap-Jateng', 'CILACAP', '1989-12-15', 'Cilacap', 'ISLAM', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '849423678522000', '18000983884', '2424319918', 'Mandiri', '9000043074849', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3020, '80007149', 'IMAM SYAIFUL', 'Local', '2017-07-22', NULL, '', '3573031807770002', 'Jl. H.Ali Nasrudin Rt.005 Rw.002 Kel. Kedung Kandang - Malang', 'MALANG', '1977-07-18', 'Trenggalek', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '732385620953000', '17034953582', '1585625782', 'Mandiri', '1540016584462', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3021, '910572', 'NATAN PASAMBE', 'Local', '2017-08-12', NULL, '', '9109012512850001', 'Jl. Komodo Rt/Rw:028/-, Kwamki - Mimika Baru-Timika', 'TIMIKA', '1985-12-25', 'Tokesan', 'KRISTEN', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '542822226953000', '17034953673', '1584939633', 'Mandiri', '1540014066728', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3022, '80018145', 'RAHMAD KALAU', 'Local', '2018-05-19', NULL, '', '9103010102890004', 'Jl. Poros SP3 Timika - Karang Senang - Kuala Kencana', 'Timika', '1989-02-01', 'Sentani', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '848720009953000', '17063244986', '2467614374', 'Mandiri', '1540014611325', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3023, '80023583', 'RELLY AFRIADI', 'Local', '2019-05-11', NULL, '', '3273201304830001', 'Jl. Sukanegla No.74 Antapani-Bandung', 'BANDUNG', '1983-04-13', 'GARUT', 'ISLAM', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '914335567444000', '19034721308', '1907216875', 'Mandiri', '1310016147680', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3024, '80023626', 'ROYKE ROLLY LAMPENGAN', 'Local', '2019-06-01', NULL, '', '7105170810870001', 'Teep Jaga III Rt/Rw:000/000-Amurang Barat-Minahasa Selatan-Sulut', 'MINAHASA', '1987-10-08', 'TEEP', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '913801007824000', '19047127287', '2239602052', 'Mandiri', '1500014787681', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3025, '80015654', 'TOMMY HOMBA HOMBA', 'Local', '2017-08-12', NULL, '', '9109010404800010', 'Jl. Epo Rt/Rw:014/000 Koprapoka-Mimika Baru ', 'TIMIKA', '1980-04-04', 'Fak-Fak', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '825504749953000', '17034953632', '1585793586', 'Mandiri', '1540016737755', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3026, '80015172', 'BAMBANG HERIYANTO', 'Local', '2017-07-22', NULL, '', '1671102610780003', 'Jl. Taqwa Lr Jakarta No.41 Rt.042/006-Sei Selincah-Kalidoni-Palembang', 'PALEMBANG', '1978-10-26', 'Pangkal Pinang', 'ISLAM', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '678658683301000', '17034953681', '1817060692', 'Mandiri', '1540017010475', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3027, '80008119', 'LIM MUSTOFA', 'Local', '2018-04-14', NULL, '', '3573050711670002', 'JL. Ikan Tombro Barat No13 Rt/Rw:005/004 - Tunjung Sekar - Lowokwaru - Malang - Jatim', 'MALANG', '1967-11-07', 'Malang', 'ISLAM', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '734084312953000', '15031918897', '1585625894', 'Mandiri', '1540012456368', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3028, '80020821', 'DENY HOSIO', 'Local', '2018-05-26', NULL, '', '9109010802940008', 'Jl. Budi Utomo Rt/Rw:007/- Inauga- Mimika Baru', 'TIMIKA', '1994-02-08', 'Ransiki', 'KRISTEN', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '849589403953000', '18037864339', '2467614418', 'Mandiri', '1540014921286', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3029, '80018120', 'DONNY WAHYUDI', 'Local', '2017-12-02', NULL, '', '3574030807940001', 'Jl. Sunan Kalijogo III/59 Rt/RW:002/001 Jati-Mayangan-Probolinggo-Jatim', 'PROBOLINGGO', '1994-07-08', 'Probolinggo', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '833785165625000', '18000983876', '113217502', 'Mandiri', '1540014646651', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3030, '80024045', 'IRFAN DARMA MAULANA', 'Local', '2019-08-24', NULL, '', '3374060605970001', 'Plamongansari rt/rw: 002/004, Kel. Plamongan Sari, Kec. Pedurungan', 'SEMARANG', '1997-05-06', 'SEMARANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '925385486518000', '19063786305', '1651404262', 'Mandiri', '1350016743344', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3031, '80007001', 'MOCHAMAD FITRI', 'Local', '2017-07-29', NULL, '', '3573012107850004', 'Jl. Abimanyu Rt/RwL014/003 Poleman - Blimbing - Malang', 'MALANG', '1985-07-22', 'Malang', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '732234851953000', '17034953558', '1585698941', 'Mandiri', '1540012432658', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3032, '80023645', 'NAGES PASANDE', 'Local', '2019-05-25', NULL, '', '7317215212940002', 'Tarra Matekkeng Rt/Rw:002/001 - Pinrang Selatan-Luwu-Sulsel', 'LUWU', '1994-12-12', 'TARRAMATEKKENG', 'KRISTEN', 'L', 'Belum Kawin', 1, 'K/1', NULL, NULL, NULL, '916168131801000', '19039750252', '940723143', 'Mandiri', '1520017734506', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3033, '80007147', 'NANANG SUTRISNO', 'Local', '2017-07-22', NULL, '', '3507091406750002', 'Jl. Tendean Rt/Rw:001/008 Tanggung - Turen - Malang', 'MALANG', '1975-06-14', 'Malang', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '732235379953000', '17034953590', '1585625804', 'Mandiri', '1540012435008', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3034, '80024044', 'RAYMOND KAROHO', 'Local', '2019-08-19', NULL, '', '7106021405930001', 'Jl. Ahmad Yani Rt/Rw:001/-Mimika Baru', 'MIMIKA', '1993-05-14', 'LEMBEAN', 'KRISTEN', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '752600346823000', '19063786297', '2624671179', 'Mandiri', '1540015879756', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3035, '80018146', 'RONALD MARYEN', 'Local', '2018-04-07', NULL, '', '9103012212870005', 'Mapurujaya Rt/Rw:002/000 Wania-Mimika Timur - Timika', 'Timika', '1987-12-22', 'Argapura', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '826530289953000', '17063244994', '606608054', 'Mandiri', '1540014611440', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3036, '80007238', 'SUTRISNO', 'Local', '2018-04-28', NULL, '', '350731121068001', 'Dusun Krantil Rt/Rw:007/003 Karang Rejo - Kromengan -Malang', 'MALANG', '1968-10-12', 'Malang', 'ISLAM', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '733660963953000', '17055294411', '1421750261', 'Mandiri', '1540011840240', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3037, '80012626', 'TIGOR H. PANGARIBUAN', 'Local', '2019-06-15', NULL, '', '1212032410940002', 'JL. Kasuari rt/rw: 006/000, Kel. Kuala Kencana, Kec. Kuala Kencana', 'MIMIKA', '1994-10-24', 'PINTU BATU', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '823158100953000', '19047127295', '1979200585', 'Mandiri', '1540015744182', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3038, '80029059', 'MANDO OYAITOU', 'Local', '2022-01-10', NULL, '', '9103191607980001', 'Kantumilena, kampung endoksi RT/RW:001/002 distrik Yokari', 'JAYAPURA', '1998-07-16', 'KANTUMILENA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '433435351952000', '22003525239', '2829726584', 'Mandiri', '1540014395432', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3039, '80036416', 'RAYNAL SUMULE', 'Local', '2023-10-23', NULL, '', '7326102008000002', 'JL. Kelapa II Rt/Rw:019/000-Mimika Baru-Timika', 'Timika', '2000-08-25', 'TONDON', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '397028580801000', '23164673362', '3507794256', 'Mandiri', '1540018903199', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3040, '80010733', 'DEDDY ARIFIYANTO', 'Local', '2018-02-03', NULL, '', '3374050204820003', 'Jl. Jomblang Perbalan No.795 Rt/Rw:001 Candisari - Semarang - Jateng', 'SEMARANG', '1982-04-02', 'Jepara', 'ISLAM', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '754520930953000', '18006160818', '1385367906', 'Mandiri', '1350020194617', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3041, '80020644', 'RIZKY ALIF RENDIKA', 'Local', '2018-05-04', NULL, '', '3301221606890003', 'Jl. Kendeng no.24 rt/rw: 007/014, Kel. Sidanegara, Kec. Cilacap Tengah', 'Cilacap', '1989-06-16', 'Cilacap', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '847740214522000', '17049302296', '2467614339', 'Mandiri', '1390004929794', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3042, '80032714', 'TRI RAHAYU PEPI HARYANTO', 'Local', '2023-02-09', NULL, '', '3301220202830004', 'Jl. Kendeng Gg.Kusuma III Rw/Rt:004/014-Sidanegara-Cilacap-Jateng', 'CILACAP', '1983-02-02', 'CILACAP', 'ISLAM', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '678833294522000', '23011888395', '2092462931', 'Mandiri', '1380013804625', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3043, '80006962', 'YUSUF WARDONO', 'Local', '2013-05-18', NULL, '', '3507240211660001', 'Perum Bumi Ardi Mulyo DD.05 Candi Renggo Singosari Malang - Jatim', 'MALANG', '1966-11-02', 'Malang', 'ISLAM', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '732237052953000', '1832255763', '1832255763', 'Mandiri', '1540012434316', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3044, '80009405', 'SODIKIN', 'Local', '2017-10-30', NULL, '', '3322061203720003', 'Banjaran, Rt/Rw:004/008 Kesongo-Tuntang-Kab.Semarang', 'SEMARANG', '1972-03-12', 'Kab. Semarang', 'ISLAM', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '854476132505000', '18006160784', '1774281385', 'Mandiri', '1540014611168', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3045, '80028760', 'FERRY DWI CAHYA', 'Local', '2021-12-06', NULL, '', '3507240902990002', 'PERUM BUMI ARDIMULYO BLOK DD-5RT/RW 007/012 KEL CANDI RENGGO KEC SINGOSARI ', 'MALANG', '1999-02-09', 'MALANG', 'ISLAM', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '531410850657000', '22003525171', '1832258619', 'Mandiri', '1440024025915', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3046, '80027559', 'BRILLIANT ASHA PRATAMA', 'Local', '2021-08-16', NULL, '', '5171030705980023', 'Jl. Subur Merah Delima no.23 DPSBr/link Munang-M RT/RW 000/000 Kel denpasar Kec Pemecutan Kelod', 'DENPASAR', '1998-05-07', 'Malang', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '', '21060693328', '2694988574', 'Mandiri', '1450013437781', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3047, '80033981', 'AANI ACHMAD DACHLAN', 'Local', '2022-11-01', NULL, '', '3576011012890002', 'JL. KEDUNG KWALI GG. TELADAN 61 RT/RW 001/003 KELURAHAN MIJI KECAMATAN KRANGGAN', 'KOTA MOJOKERTO', '1989-12-10', 'JOMBANG', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '', '23001159450', '1585625602', 'Mandiri', '1420020783857', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3048, '80031316', 'ROMY FARIZ NABILAH', 'Local', '2022-08-20', NULL, '', '3573032805000007', 'JL. Sawojajar V / 58 - Malang', 'MALANG', '2000-05-28', 'MALANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '655966240623000', '22096914332', '1789766818', 'Mandiri', '1440022485178', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3049, '80031500', 'MARULAM BUTAR BUTAR', 'Local', '2022-09-12', NULL, '', '3217010404740015', 'JL. IR.H.JUANDA NO.472 RT02 RW01 KEL.DAGO KEC.COBLONG KOTA BANDUNG', 'KOTA BANDUNG', '1974-04-04', 'ASAHAN', 'KRISTEN', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '136292224421000', '22096914456', '2327503836', 'Mandiri', '1540017969860', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3050, '80032874', 'ELITUA LUMBANTORUAN', 'Local', '2023-04-07', NULL, '', '1212241207930001', 'Dolok Nauli, Kec. Parmaksian, Kab. Tobasa', 'TOBA SAMOSIR', '1993-07-12', 'DOLOK NAULI', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '869908400127000', '23042470668', '1081902925', 'Mandiri', '1070012906006', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3051, '80006952', 'BASUKI', 'Local', '2014-08-16', NULL, '', '330123061170001', 'Jl. Perintis Kemerdekaan RT/RW:004/006 - Kebon Manis - Cilacap Utara', 'CILACAP', '1970-11-06', 'Cilacap', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '733660914953000', '15027272655', '524398566', 'Mandiri', '1540012433136', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3052, '80006992', 'LUDWIG FRANSISCO RICHARD PAUL NANTHI', 'Local', '2014-09-11', NULL, '', '9104012309830003', 'Kompleks BLK/VTC Pasir II Rt/Rw:002/001 Tanjung Ria-Jayapura Utara ', 'JAYAPURA', '1983-09-23', 'JAYAPURA', 'KRISTEN', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '732234646953000', '15027272754', '1585625635', 'Mandiri', '1540007771318', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3053, '80010199', 'SAIFUL BACHRI', 'Local', '2017-10-30', NULL, '', '3322061103830001', 'Banjaran, Rt/Rw:006/008', 'SEMARANG', '1983-03-11', 'Kab. Semarang', 'ISLAM', 'L', 'Belum Kawin', 2, 'K/2', NULL, NULL, NULL, '854540549505000', '18006160693', '1601758067', 'Mandiri', '1540014611606', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3054, '80010198', 'POYO', 'Local', '2017-11-04', NULL, '', '3322011312790002', 'Sidomukti, Rt/Rw:002/005 Kopeng-Getasan-Kab Semarang', 'SEMARANG', '1979-12-13', 'Kab. Semarang', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '854483260505000', '18006160826', '2433457405', 'Mandiri', '1540014611408', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3055, '80025600', 'JATMIKO', 'Local', '2019-04-10', NULL, '', '3322061606970003', 'Banjaran, Rt/Rw:003/008-Kesongo-Tuntang-Kab. Semarang', 'SEMARANG', '1997-06-16', 'Kab. Semarang', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '965602816953000', '19034721290', '1693189607', 'Mandiri', '1540015727286', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3056, '80006997', 'AGUNG WAHONO', 'Local', '2021-03-23', NULL, '', '332206101275001', 'Banjaran Rt/Rw:001/008 Kesongo - Tuntang - Semarang', 'KAB.SEMARANG', '1975-12-10', 'Semarang', 'ISLAM', 'L', 'Belum Kawin', 3, 'K/3', NULL, NULL, NULL, '732352661953000', '15027272457', '1585625793', 'Mandiri', '1540012452664', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3057, '80026517', 'RIYANTO', 'Local', '2021-03-23', NULL, '', '3322061407730001', 'Banjaran, Rt/Rw:003/009 Kesongo-Tuntang-Kab. Semarang', 'KAB.SEMARANG', '1973-07-14', 'Kab. Semarang', 'ISLAM', 'L', 'Belum Kawin', 2, 'K/2', NULL, NULL, NULL, '854430659505000', '18006160685', '601537667', 'Mandiri', '9000010907401', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:03', '2026-01-22 03:48:03', NULL),
(3058, '80028918', 'TOIF MUSTOFA', 'Local', '2021-12-20', NULL, '', '3322062510790003', 'Banjaran, Rt/Rw:006/008 Kesongo-Tuntang-Kab.Semarang', 'JATENG', '1979-10-25', 'Kab.Semarang', 'ISLAM', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '854479805505000', '18006160750', '2433457449', 'Mandiri', '1540014611309', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3059, '80030394', 'MUHAMMAD WIDIYANTO', 'Local', '2022-11-10', NULL, '', '3322061107930001', 'BANJARAN, RT/RW 003/009 DESA KESONGO,  KECAMATAN TUNTANG ', 'KAB. SEMARANG', '1993-07-11', 'KAB. SEMARANG', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '', '22127269227', '2169938463', 'Mandiri', '1360030800236', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3060, '80032256', 'MUJIONO', 'Local', '2022-11-24', NULL, '', '3507100512860002', 'DUSUN ALAS GEDE RT019 RW005 KEL.NGITNGIT KEC.TUMPANG KABUPATEN MALANG', 'KABUPATEN MALANG', '1986-12-05', 'MALANG', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '617351093657000', '22144333634', '2842811087', 'Mandiri', '1440023149708', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3061, '80029419', 'RIYO PRAYOGI', 'Local', '2022-11-24', NULL, '', '3301081004030002', 'JL. JATI RT/RW 01/02 KARANGTALUN KECAMATAN CILACAP UTARA', 'KAB. CILACAP', '2003-04-10', 'PURWO AGUNG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '', '22144333659', '2646781503', 'Mandiri', '1800012115525', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3062, '80029417', 'RIYAN PRAYOGA', 'Local', '2022-12-07', NULL, '', '3301081004030003', 'JL. JATI RT/RW 01/02 KARANGTALUN KECAMATAN CILACAP UTARA', 'KAB. CILACAP', '2003-04-10', 'PURWO AGUNG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '', '22144333675', '2646781492', 'Mandiri', '1800012115319', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3063, '80030578', 'MUSTOFA', 'Local', '2023-01-13', NULL, '', '3322062205860001', 'BANJARAN, RT/RW 003/008 DESA KESONGO,  KECAMATAN TUNTANG ', 'KAB. SEMARANG', '1986-03-14', 'KAB. SEMARANG', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '639963420505000', '23011888361', '3503010137', 'Mandiri', '1360031693895', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3064, '80031419', 'ANAS KHUDRI', 'Local', '2023-01-13', NULL, '', '3322061702880004', 'BANJARAN RT.03/RW.09 KEL.KESONGO KEC.TUNTANG', 'KABUPATEN SEMARANG', '1988-02-17', 'KABUPATEN SEMARANG', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '623651817505000', '23011888379', '3503010396', 'Mandiri', '1360031184986', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3065, '80006986', 'MUNAWIR', 'Local', '2023-01-17', NULL, '', '3322051704730001', 'Dusun Ploso Rt/Rw:003/003 - Pabelan-Semarang', 'JATENG', '1973-04-17', 'Semarang', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '732235213953000', '23026559775', '1585625703', 'Mandiri', '1540012426346', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3066, '80030562', 'FAIZIN', 'Local', '2023-04-15', NULL, '', '3322061303790003', 'NGENTAKSARI, RT/RW 007/002 DESA KESONGO,  KECAMATAN TUNTANG ', 'KAB. SEMARANG', '1979-03-13', 'KAB. SEMARANG', 'ISLAM', 'L', 'Belum Kawin', 3, 'K/3', NULL, NULL, NULL, '637852708505000', '23042470718', '2636984362', 'Mandiri', '1360030799230', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3067, '80029420', 'MIFTAKUDHIN', 'Local', '2023-04-29', NULL, '', '3322062904890003', 'BANJARAN, RT/RW 004/009 DESA KESONGO,  KECAMATAN TUNTANG ', 'KAB. SEMARANG', '1989-04-29', 'KAB. SEMARANG', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '0', '23055938619', '2383522694', 'Mandiri', '1540015727260', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3068, '80030547', 'GUNADI', 'Local', '2023-11-13', NULL, '', '3322061406780001', 'BANJARAN, RT/RW 002/009 DESA KESONGO,  KECAMATAN TUNTANG ', 'KAB. SEMARANG', '1978-06-14', 'KAB. SEMARANG', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '', '23164673370', '2423008517', 'Mandiri', '1540017889415', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3069, '80024585', 'JIM JOHOSUA JUSAK MANITIK', 'Local', '2018-08-09', NULL, '', '7173020711830001', 'KEL.KAMASI LINK V RT/RW:- TOMOHON TENGAH-SULUT', 'TOMOHON', '1983-11-07', 'Sorong', 'KRISTEN', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '931685275953000', '18059446676', '1447969454', 'Mandiri', '1540015098811', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3070, '80026521', 'BENNY YEREMIA LUMEMPOUW', 'Local', '2021-03-23', NULL, '', '7173041107020001', 'Kel.Paslaten Dua Lingk.V-Tomohon Timur', 'TOMOHON', '2002-07-11', 'Tomohon', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '421607409821000', '21020576332', '1566221297', 'Mandiri', '1540017048681', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3071, '80027558', 'SAMPEUAI', 'Local', '2021-06-28', NULL, '', '7326103006960001', 'Jln. Sadaan, Lingk.Dengen Pa`padanunan Tagari', 'Toraja', '1996-06-30', 'Mangkallang', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '7,32610300696E+15', '21042722278', '1563067934', 'Mandiri', '1700006973717', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3072, '80028767', 'OKTA BATI SAPUTRA', 'Local', '2021-12-06', NULL, '', '3301232110020001', 'JL. PERINTIS KEMERDEKAAN  RT/RW 04/06 KEBONMANIS, CILACAP UTARA', 'CILACAP', '2002-10-21', 'CILACAP', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '22003525155', '524401086', 'Mandiri', '1800010074872', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3073, '80024549', 'LUQNI MAULANA', 'Local', '2018-02-03', NULL, '', '3322061501880002', 'BANJARAN RT/RW 006/008 KEL KESONGO KEC TUNTANG SEMARANG', 'SEMARANG', '1988-01-01', 'SEMARANG', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '854528205505000', '18006160701', '2433457337', 'Mandiri', '1360016737162', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3074, '80037501', 'MARENZHA DENAS ENDRA PRADHANA', 'Local', '2024-03-18', NULL, '', '5103052003050003', 'LINGK WISMA NUSA PERMAI A.40', 'BADUNG', '2005-03-20', 'MADIUN', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '24047254164', '1576991373', 'Mandiri', '1540019295207', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3075, '260034', 'SYARIPUDIN', 'Local', '2022-11-21', NULL, '', '3208140604670002', 'DUSUN PAHING RT03 RW01 KEL KERTAWINANGUN KEC MANDIRANCAN', 'KAB KUNINGAN', '1967-04-06', 'PALEMBANG', 'ISLAM', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '', '23001159435', '1626024971', 'Mandiri', '1340023384729', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3076, '80031321', 'ALEXANDER ELDO PRABOWO', 'Local', '2022-08-28', NULL, '', '6472062704990001', 'Jl. Prigen No.12 RT.03 RW.01 Lowokwaru Malang', 'KOTA MALANG', '1999-04-27', 'SAMARINDA', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '861360071652000', '22096914290', '2259536567', 'Mandiri', '1440022641127', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3077, '80031046', 'MUHAMMAD MAROZI EFFENDI', 'Local', '2022-09-29', NULL, '', '3573022901980001', 'Jl. Semeru Gang I No. 1026 Kota Malang', 'KOTA MALANG', '1998-01-29', 'KOTA MALANG', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '', '22106846821', '3064475643', 'Mandiri', '1440020152291', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3078, '888578', 'YOHANIS IMBIR', 'Local', '2022-11-20', NULL, '', '9109012808860009', 'JL. YOS SUDARSO DEPAN SAR BLOK GG.18 RT28 RW 08 KEL KAMORO JAYA KEC WANIA', 'KAB MIMIKA', '1986-08-28', 'DOREHKAR', 'ISLAM', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '', '23001159427', '1584846652', 'Mandiri', '1540017010061', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3079, '80039154', 'SYAHRIAL ALFAWZY PURNOMO', 'Local', '2024-07-21', '2025-03-31', '', '3507181505000007', 'GRAHA GARDENIA I-5 RT001 RW014 DESA SAPTORENGGO KECAMATAN PAKIS KABUPATEN MALANG', 'KABUPATEN MALANG', '2000-05-15', 'MALANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '1893471052', '1893471052', 'Mandiri', '9000030887096', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3080, '80022153', 'ARDY RIANTO', 'Local', '2019-06-17', NULL, '', '9109012212930003', 'JL. MAMBRUK RT.024 KEL. KWAMKI KEC. MIMIKA BARU', 'Timika', '1993-12-22', 'RANTEPANGLI', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '853157360953000', '19047127386', '848427423', 'Mandiri', '1540015741113', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3081, '80023799', 'BASTIAN LAZARO ZYEVOY KOBE', 'Local', '2019-06-17', NULL, '', '9103021508900002', 'JL. YOS SUDARSO RT/RW 050/000 KEL. KAMORO JAYA DISTRIK WANIA', 'Timika', '1990-08-15', 'SENTANI', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '853321040953000', '19047127378', '2383527598', 'Mandiri', '1540015813003', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3082, '80022148', 'FILEP JHON DEMENA', 'Local', '2019-06-17', NULL, '', '9171040301920001', 'JL. BARU HARAPAN RT/RW 004/000 KEL. HARAOAN DISTRIK KWAMKI NARAMA', 'Timika', '1992-01-03', 'JAYAPURA', 'KRISTEN', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '852774561953000', '19047127360', '667627749', 'Mandiri', '1540015741329', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3083, '80027444', 'MEKITHA RINALDO TENDUR', 'Local', '2021-06-21', NULL, '', '9109010405940006', 'RANOIAPO - AMURANG-MINAHASA SELATAN-MANADO', 'MINAHASA', '1994-05-04', 'MANADO', 'KRISTEN', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '530981547953000', '21042722237', '1586757857', 'Mandiri', '1540016285961', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3084, '80027445', 'ERVIANUS IRVAN', 'Local', '2021-06-21', NULL, '', '9109011804940001', 'JL.FREEPORT LAMA RT/RW:010/000 MIMIKA BARU-TIMIKA', 'TIMIKA', '1994-04-18', 'MAROS', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '945905990953000', '21042722203', '1319807373', 'Mandiri', '1540017017033', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3085, '80031590', 'RESKY ANDREAS KAFIAR', 'Local', '2022-09-12', NULL, '', '9106010911980001', 'JL Budi Utomo RT/RW 012/000 Kel Inauga Kec Wania', 'MIMIKA', '1998-11-09', 'MOKMER', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '947171369953000', '22096914407', '3023878217', 'Mandiri', '1540017973425', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3086, '80032074', 'EDWARD JEFRI', 'Local', '2022-11-07', NULL, '', '9109012106880011', 'JL Jambu Jalur 4 RT/RW 008/000 Kel Timika Jaya Kec Mimika Baru', 'MIMIKA', '1988-07-21', 'LHOKSUMAWE', 'KRISTEN', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '530851179953000', '22127269201', '2941465015', 'Mandiri', '1540018104657', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3087, '80026319', 'RONI GWIJANGGE', 'Local', '2022-11-07', NULL, '', '9109094803000002', 'SP3 Jl Sadewa Karang Senang RT/RW 020/005 Kel Karang Senang Kec Mimika Baru', 'TIMIKA', '1997-03-08', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '962958286953000', '22127269151', '1586063068', 'Mandiri', '1540015703279', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3088, '80031589', 'RAYNOLD TEKO', 'Local', '2023-04-10', NULL, '', '7318273003960001', 'JL MENTE RT/RW 018/000 KEL SEMPAN KEC MIMIKA BARU', 'MIMIKA', '1996-03-30', 'UJUNG PANDANG', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '900532482803000', '23042470692', '2738570095', 'Mandiri', '1540018474589', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3089, '80022154', 'DEFVY GEORGE TOMASOA', 'Local', '2019-06-17', NULL, '', '9109012412920020', 'JL. HASANUDDIN RT/RW 019/000 KEL. INAUGA DISTRIK MIMIKA BARU', 'Timika', '1992-12-24', 'AMBON', 'KRISTEN', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '852768571953000', '19047127394', '2907439582', 'Mandiri', '1540015741345', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3090, '80023899', 'KENNETH JONES POEI', 'Local', '2019-07-15', NULL, '', '9171011101970004', 'JL. TANJUNG RIA RT/RW 001/003 KEL. TANJUNG RIA DISTRIK JAYAPURA UTARA', 'Timika', '1997-01-11', 'JAYAPURA', 'KRISTEN', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '853055713953000', '19047127329', '2082133642', 'Mandiri', '1540015060829', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3091, '80027443', 'ANDRE JORGI STEVANO TENGKER', 'Local', '2021-06-21', NULL, '', '9109011103900021', 'JL.PENDIDIKAN RT/RW:023/00 OTOMONA-MIMIKA BARU', 'TIMIKA', '1996-03-11', 'TOMOHON', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '427429154953000', '21042722260', '1584862525', 'Mandiri', '1540017016209', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3092, '80025368', 'JECKEL TOKORO', 'Local', '2021-06-21', NULL, '', '9103121912900001', 'KWAMKI - MIMIKA BARU', 'TIMIKA', '1985-12-19', 'BABRONGKO', 'KRISTEN', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '818933665952000', '21042722195', '2939404083', 'Mandiri', '1540017017496', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3093, '80029326', 'GIAN ROMBE', 'Local', '2022-01-17', NULL, '', '7371111005940004', 'Komp.YPPKG Block K-9 No.10 RT/RW:005/001Paccerakang-Biringkanaya', 'MAKASSAR', '1994-05-10', 'UJUNGPANDANG', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '539566497953000', '22003525312', '2092221775', 'Mandiri', '1540017447545', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3094, '80031591', 'ALFIAN DANIEL TODING', 'Local', '2022-09-12', NULL, '', '9109010404980005', 'JL Samratulangi RT/RW 012/000 Kel Inauga Kec Wania', 'MIMIKA', '1998-04-04', 'KUALA KENCANA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '632205365953000', '22096914415', '839834706', 'Mandiri', '1540017966833', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3095, '80027294', 'GLEINY YULIEN PICARIMA', 'Local', '2023-04-10', NULL, '', '7371115707960006', 'JL LANRAKI LR 2A NO 01 A RT/RW 001/004 KEL BERUA KEC BIRING KANAYA', 'MAKASSAR', '1996-07-17', 'UJUNG PANDANG', 'KRISTEN', 'P', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '941335549801000', '23042470676', '2071910485', 'Mandiri', '9000025275398', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3096, '80011912', 'RIZALDI', 'Local', '2019-06-17', NULL, '', '9109012504920002', 'JL. AHMAD YANI NO.14b Depan RS.Herlina - Timika', 'Timika', '1992-04-25', 'SURABAYA', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '765639729953000', '19047127337', '1891897457', 'Mandiri', '1540015811866', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3097, '80029475', 'ITA GOMBO', 'Local', '2022-01-31', NULL, '', '9103012407959005', 'Jl. Youmakhe Sentani RT/RW:001/012 Hine Kombe-Sentani-Jayapura', 'JAYAPURA', '1995-06-24', 'Eragayam', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '630641710953000', '22010626301', '3132553599', 'Mandiri', '1540014395903', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3098, '80032693', 'REYNALDO ALESSANDRI MAMEYAO', 'Local', '2024-02-05', NULL, '', '9109012605970006', 'Perumahan PEMDA Rt/Rw:000/000 Kel. Wanago - Mimika Baru - Timika', 'TIMIKA', '1997-05-26', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '24015338841', '845469663', 'Mandiri', '1540019187511', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3099, '80037335', 'ALDI', 'Local', '2024-02-26', NULL, '', '\'9109011004000003', 'Jl. Kamboja, Rt/Rw: 009/002 Koperapoka-Mimika Baru-Timika', 'TIMIKA', '2000-04-10', 'TIMIKA', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '624995536953000', '24047254156', '1963322886', 'Mandiri', '1540019207434', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3100, '80039497', 'MUHAMMAD RIZKY LUTHFY', 'Local', '2024-08-19', NULL, '', '1671041006970007', 'Jl. Tanah Merah RT/RW:039/011 - Demang Lebar Daun -Ilir Barat 1 -Palembang', 'PALEMBANG', '1997-06-10', 'PALEMBANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '403993066953000', '24123250417', '1098620831', 'Mandiri', '1540019603566', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3101, '80023973', 'KORNELIS TAPU', 'Local', '2021-11-01', NULL, '', '9118010701940001', 'Cemenes Rt/Rw:008/000 Agats-Kab.Asmat', 'ASMAT', '1994-01-07', 'AGATS', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '530647437953000', '21079865131', '917199448', 'Mandiri', '1540015880788', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3102, '80029347', 'KEVIN BRAVO LATUASAN', 'Local', '2022-01-17', NULL, '', '9109010112980001', 'Jl. Kalimutu Rt/Rw:008/000 Kwamki Baru', 'MIMIKA', '1998-12-01', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '418086690953000', '22003525148', '831611711', 'Mandiri', '1540014476034', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3103, '80032073', 'HERSON HALUK', 'Local', '2022-11-07', NULL, '', '9109011609960006', 'Jl. Freeport Lama Rt/Rw:021/000 Kebun Sirih - Mimika Baru', 'TIMIKA', '1996-09-16', 'WAMENA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '615162518953000', '22127269169', '3304363601', 'Mandiri', '1540018117410', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3104, '80021165', 'RATNO PARORRONGAN', 'Local', '2022-01-31', NULL, '', '9109012607950004', 'Cambajawaya Rt/Rw:009/007 Tello Baru-Panakukkang-Makasar', 'MAKASSAR', '1995-07-26', 'PALOPO', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '939901237805000', '22010626319', '2296011251', 'Mandiri', '1540014976850', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3105, '80026516', 'IRMAWAN', 'Local', '2022-01-31', '2025-03-31', '', '3322060609810002', 'Banjaran, Rt/Rw:001/009-Kesongo-Tuntang-Kab. Semarang', 'KAB.SEMARANG', '1981-09-06', 'Kab. Semarang', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '854533593505000', '18006160834', '1899013241', 'Mandiri', '1540014610889', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3106, '80031669', 'MARIZ APHRESY', 'Local', '2022-09-19', NULL, '', '7371100204960002', 'Karang Senang Rt/RW:012/000-Kuala Kencana', 'TIMIKA', '1996-04-02', 'UJUNG PANDANG', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '412217267804000', '22096914472', '2442797447', 'Mandiri', '1540017980339', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3107, '80029111', 'TRI YULVIANUS', 'Local', '2022-12-05', NULL, '', '7318190701950001', 'JL Baru RT/RW 003/000 Kel Kwamki Kec Mimika Baru', 'TIMIKA', '1995-01-07', 'MAKALE', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '416788917953000', '22144333667', '2059531176', 'Mandiri', '1520016255040', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL);
INSERT INTO `karyawan` (`id_karyawan`, `nik`, `nama_karyawan`, `grup`, `tgl_masuk`, `tgl_resign`, `ket_resign`, `ektp`, `alamat`, `kota`, `tgl_lahir`, `tempat_lahir`, `agama`, `kelamin`, `sts_kawin`, `anak`, `sts_pajak`, `pendidikan`, `studi`, `lulusan`, `npwp`, `jamsostek`, `bpjs`, `bank`, `rek_no`, `rek_nama`, `foto`, `telpon`, `email`, `ts_requestor_name`, `ts_requestor_jabatan`, `ts_requestor_nik`, `ts_approval_name`, `ts_approval_jabatan`, `ts_approval_nik`, `ts_name`, `impor_ts`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3108, '80033568', 'YOHANES PAPEI RUMERE', 'Local', '2023-03-13', NULL, '', '9109011212000012', 'JL GORONG GORONG RT/RW 016/002 KEL KEBUN SIRIH KEC MIMIKA BARU', 'MIMIKA', '2000-12-12', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '955970280953000', '23026559817', '2054770964', 'Mandiri', '1540018386213', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3109, '80028140', 'CHARLY WILLIAM OLIKASA', 'Local', '2021-10-04', NULL, '', '9171033004910001', 'Jalur 4 Perum Honanai No.27/28 type 72 Rt/Rw:030/002 Wanagon-Mimika Baru', 'TIMIKA', '1991-04-30', 'NABIRE', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '946473717953000', '21069396063', '2245971115', 'Mandiri', '1540017208772', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3110, '80033673', 'CHRISTO KEVIN BINGO', 'Local', '2023-03-27', NULL, '', '7171092103970001', 'LINGK VII RT/RW 000/007 KEL BAHU KEC MALALAYANG', 'MANADO', '1997-03-21', 'JAKARTA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '400837035821000', '23042470734', '2276420321', 'Mandiri', '15400030461501', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3111, '80029214', 'JAMEZ ALFERO TAMBUNAN', 'Local', '2022-01-10', NULL, '', '9109012805960002', 'JL. PEJUANG RT:0025-PERINTIS-MIMIKA BARU-TIMIKA', 'TIMIKA', '1996-05-28', 'JAYAPURA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '532062429953000', '22003525197', '830133415', 'Mandiri', '1540017321864', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3112, '80026065', 'AGUSTINUS FREDDY ANDREAS MOFU', 'Local', '2023-04-24', NULL, '', '9109011608970004', 'BAMBU KUNING RT/RW 003/001 KEL KEBUN SIRIH KEC MIMIKA BARU', 'MIMIKA', '1996-08-16', 'BIAK', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '946989159953000', '23055938635', '2299144217', 'Mandiri', '1540016854287', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3113, '80033231', 'PATRASHA PUTRI PERMANA', 'Local', '2023-03-27', NULL, '', '1671046211990010', 'Perum Bukit Sejahtera Blok AS-08 Rt/Rw:067/021-Bukit Lama-Ilir Barat I - Palembang-Sumsel', 'PALEMBANG', '1999-11-22', 'JAKARTA', 'ISLAM', 'P', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '602400277042000', '23026559809', '2625258881', 'Mandiri', '9000027345561', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3114, '80036581', 'ROFINA DEWI KHUMAIRO', 'Local', '2023-12-09', NULL, '', '3573026101000002', 'JL. Aris Munandar IVC/1253 Rt/Rw:005/003-Kidul Dalem-Klojen-Malang', 'MALANG', '2000-01-21', 'MALANG', 'ISLAM', 'P', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '654818301623000', '24001116664', '1403163865', 'Mandiri', '1440024514728', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3115, '80033567', 'ALFAT YANUAR FITRIYANSYAH', 'Local', '2023-03-13', NULL, '', '9109010901000004', 'PESONA BENER REGENCY C2 RT/RW 012/007 KEL BENER KEC TEGALREJO', 'YOGYAKARTA', '2000-01-09', 'SRAGEN', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '402274963541000', '23026559734', '2034419736', 'Mandiri', '1370021906181', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3116, '80033525', 'ADHIKA SETYOBHAKTI', 'Local', '2023-03-13', NULL, '', '3573012211990003', 'JL TELUK MANADO 15 RT/RW 006/005 KEL ARJOSARI KEC BLIMBING -MALANG', 'MALANG', '1999-11-22', 'MALANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '401043955652000', '23026559791', '1833707619', 'Mandiri', '1440021050072', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3117, '80032677', 'RICKI ARDHI WARA', 'Local', '2023-04-03', NULL, '', '3302261909870002', 'JL MARTADIREJA II NO 57 RT/RW 004/001 KEL PURWOKERJA WETAN KEC PURWEKERTO TIMUR', 'BANYUMAS', '1987-09-19', 'BANYUMAS', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '849820543521000', '23042470726', '2321635836', 'Mandiri', '1760000327708', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3118, '80026573', 'ALFIN EKA YAUSEPH', 'Local', '2021-06-01', NULL, '', '9109091207960001', 'Jl. Enggang No.68-Kuala Kencana', 'TIMIKA', '1996-07-12', 'UJUNGPANDANG', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '420779936953000', '21020576357', '1907338195', 'Mandiri', '1540013602754', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3119, '80025912', 'LANANG GALIH GUMILANG', 'Local', '2022-01-17', NULL, '', '9102010503960004', 'Jl.Mahoni V Blok B No.56 Perumnas IV Padang Bulan Rt/Rw:003/008-Hedam-Heram-Jayapura', 'JAYAPURA', '1996-03-05', 'WAMENA', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '913005047952000', '22003525288', '1868423398', 'Mandiri', '1540017176433', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3120, '80012421', 'RIZKY WARANEY SUMONDAK MANUS', 'Local', '2022-03-07', NULL, '', '7173021702920001', 'Kel.Talete II Link.III-Talete Dua-Tomohon Tengah-SULUT', 'KOTA TOMOHON', '1992-02-17', 'TOMOHON', 'KRISTEN', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '761995331821000', '22019306657', '2765468553', 'Mandiri', '1540017655352', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3121, '80029345', 'PRAYOGIE JUNAIDY', 'Local', '2022-01-17', NULL, '', '9109010503960001', 'Buana Gardenia B1/26 Rt/RW:007/004 -Pinang -Tangerang', 'TANGERANG', '1996-03-05', 'PADANG', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '419717285416000', '22003525262', '1873828563', 'Mandiri', '1640004184851', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3122, '80008135', 'IMANUEL NAA', 'Local', '2023-02-06', NULL, '', '9171031206910001', 'Setta-Ayamaru Utara Kab. Maybrat - Papua Barat', 'MAYBRAT', '1992-04-20', 'YUKASE', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '804082352951000', '23011888353', '3503010508', 'Mandiri', '1540018301691', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3123, '80034538', 'WILDANSYAH MAULANA RAHMAT', 'Local', '2023-06-06', NULL, '', '3573040912970005', 'jl janti barat blok c dalam iii no 16 rt/rw 004/011 kel bandungrejosari kec sukun', 'KOTA MALANG', '1997-12-09', 'MALANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '391256906623000', '23068371980', '2730230649', 'Mandiri', '1440016030139', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3124, '80029329', 'ENDINU YIKWA', 'Local', '2022-01-17', NULL, '', '9102010107950245', 'SP III Rt/Rw:022/005 Karang Senang - Kuala Kencana', 'PAPUA', '1995-07-01', 'AYEKI', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '538261934953000', '22003525189', '2862082991', 'Mandiri', '1540017423819', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3125, '80033297', 'WILSON REYNOLD SELVANUS DEDA', 'Local', '2023-02-27', NULL, '', '9112012511990001', 'Mabilabol Kec. Oksibil Kab. Pegunungan Bintang - Papua', 'Pegunungan Bintang', '1999-11-25', 'ABEPURA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '401841309953000', '23026559767', '2434816754', 'Mandiri', '1540018361604', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3126, '80029331', 'VICTOR ARBITER PURWANTO', 'Local', '2022-01-17', NULL, '', '9109090501990001', 'Pondok Amor Indah Blok A-12 Rt/Rw:00/00-Karang Senang -Kuala Kencana', 'MIMIKA', '1999-01-05', 'SURABAYA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '630053684953000', '22003525304', '830417106', 'Mandiri', '1440016552553', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3127, '80024764', 'MARTINUS KLAFLE', 'Local', '2020-02-03', NULL, '', '9109011402930002', 'Jl. Kartini Rt/Rw:005/- Inauga Wania-Mimika', 'Timika', '1994-02-14', 'SORONG', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '937034361953000', '19034721324', '2921948662', 'Mandiri', '1540015727328', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3128, '80023963', 'ADOLUS ASEMKI', 'Local', '2021-06-21', NULL, '', '9171030905930004', 'JL.BISOKA KOTARAJA DALAM RT/RW:003/007', 'JAYAPURA', '1993-05-09', 'SERAMKATOP', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '427490909953000', '21042722187', '581785716', 'Mandiri', '1540015880671', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3129, '898718', 'ALBERTH BERNARD KAFIAR', 'Local', '2024-04-08', NULL, '', '9109011802820002', 'Jl. C.Heatubun Lorong Musafir Rt/Rw:011/005 Kwamki -Mimika Baru-Timika', 'TIMIKA', '1982-02-18', 'MANGILU', 'KRISTEN', 'L', 'Kawin', 3, 'K/3', NULL, NULL, NULL, '0', '24058018995', '1584774944', 'Mandiri', '1540019351257', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3130, '80039957', 'BATASINDRO', 'Local', '2024-09-30', NULL, '', '9109011001000001', 'Dsn Manyaran Rt/Rw:003/003-Banyakan - Kediri-Jatim', 'KEDIRI', '2000-01-10', 'TIMIKA', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '206876054953000', '24138898879', '153928473', 'Mandiri', '1540019690944', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3131, '80027442', 'FRITS SADA NATIKAPEREYAU', 'Local', '2021-06-21', NULL, '', '9109013103020002', 'JL. KH. DEWANTARA, RT/RW:002/00-DINGO NARAMA -KOMPLEX TIMUR, TIMIKA', 'TIMIKA', '2002-03-31', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '427491204953000', '21042722245', '2925669982', 'Mandiri', '1540017017546', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3132, '80027447', 'REDRICHO R. MANENGKEY', 'Local', '2021-06-21', NULL, '', '7371090809960001', 'ASPOL TELLO RT/RW:007/001 PANAIKANG-PANAKUKANG - MAKASAR', 'MAKASAR', '1996-09-08', 'MAKASSAR', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '533096848953000', '21042722229', '2273913314', 'Mandiri', '1540017021985', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3133, '80029330', 'HANIEL RIANT SUGIANTO', 'Local', '2022-01-17', NULL, '', '7371142202980001', 'Jl. Nakula Jalur II Rt/Rw:019/005 Karang Senang - Kuala Kencana', 'MIMIKA', '1998-02-22', 'UJUNGPANDANG', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '435494570953000', '22003525270', '1303339421', 'Mandiri', '1540017070107', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3134, '80029343', 'RIVAI RIVALDO SEPTINO NAIBAHO', 'Local', '2022-01-17', NULL, '', '1217081909990003', 'Kuala Kencana -Timika', 'MIMIKA', '1999-09-19', 'PASARSILENGGE', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '538643941953000', '22003525247', '1493205039', 'Mandiri', '1540017614482', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3135, '80039958', 'OMARI RANTE SALU', 'Local', '2024-09-30', NULL, '', '7326170211970001', 'Jl. Baru RT/RW:003/000 - Kwamki - Mimika Baru ', 'TIMIKA', '1997-11-02', 'TALLUNGLIPU', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '652967050953000', '24138898887', '3541366945', 'Mandiri', '1540019691025', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3136, '80023968', 'FASKALIUS ZONGGONAU', 'Local', '2021-10-18', NULL, '', '9109091612010001', 'SPIII RT/RW:005/000 Karang Senang - Timika', 'TIMIKA', '1999-04-01', 'NABIRE', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '428727481953000', '21079865123', '2502675988', 'Mandiri', '1540015880713', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3137, '80031644', 'DAMIANUS MANI', 'Local', '2022-09-19', NULL, '', '5308051504940001', 'JL Maleo RT/RW 012/006 Kel Kamoro Jaya Kec Wania', 'TIMIKA', '1994-04-15', 'ENDE', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '606480879953000', '22096914399', '1061095847', 'Mandiri', '1540017986872', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3138, '80031780', 'SANGBUA DINSOL PIRADE', 'Local', '2022-10-03', NULL, '', '7271032401970002', 'JL Budi Utomo RT/RW 009/000 Kel Koprapoka Kec Mimika Baru', 'TIMIKA', '1997-01-24', 'UJUNG PANDANG', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '721865319831000', '22106846839', '136032322', 'Mandiri', '1540018027882', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3139, '80029431', 'CHRISTO ALEXANDER AUFEY', 'Local', '2022-01-24', NULL, '', '9109011812990003', 'Jl. Kebun Sirih Rt/Rw:010/000 Jlr 2 Kanan - Mimika Baru', 'MIMIKA', '1999-12-18', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '632744199953000', '22010626285', '1079670914', 'Mandiri', '1540017458658', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3140, '80024722', 'MA`RUF', 'Local', '2022-01-31', NULL, '', '3322061410820002', 'Banjaran, Rt/Rw:003/009 Kesongo-Tuntang-Kab. Semarang', 'KAB.SEMARANG', '1982-10-14', 'Kab. Semarang', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '854529815505000', '18006160883', '2433457359', 'Mandiri', '1540014376200', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3141, '80039719', 'JOHN JACHSON YOHANIS UKAGO', 'Local', '2024-09-02', NULL, '', '9104011406990001', 'Jl. Perintis KPR POLRI Rt/Rw:001/004 - GiriMulyo -Nabire', 'NABIRE', '1999-06-14', 'NABIRE', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '128447158954000', '24123250409', '2896241051', 'Mandiri', '1410017863481', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3142, '80039862', 'SAHID PANGAMPE', 'Local', '2024-09-16', NULL, '', '9109010507010002', 'Jl. Matoa Rt/Rw:001/000 Kebun Sirih - Mimika Baru', 'TIMIKA', '2001-07-05', 'TIMIKA', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '202476669953000', '24138898853', '1585076815', 'Mandiri', '1540019662380', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3143, '80024718', 'ABDUL RAHIM', 'Local', '2020-02-03', NULL, '', '737111081070016', 'Jl. Perintis Kemerdekaan Km.14 No.5A Rt.002 Rw.003 Kel. Daya Kec. Biringkanaya Makasar', 'MAKASSAR', '1977-10-08', 'MAKASSAR', 'ISLAM', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '685245185801000', '19100119692', '2921946895', 'Mandiri', '1740007604408', NULL, 'default.svg', NULL, 'roneli6975@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3144, '80033999', 'NGURAH GATOT SAGUNA WIJAYA', 'Local', '2023-05-08', NULL, '', '5103062611980005', 'JL PANJI GANG BOUGENVILLE NO 4 BR KWANJI RT/RW : 000/000 KEL DALUNG KEC KUTA UTARA', 'BADUNG', '1998-11-26', 'MOJOKERTO', 'HINDU', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '538759986906000', '23055938627', '1431667574', 'Mandiri', '1750001915775', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3145, '80024864', 'ISMAIL KAPITARAUW', 'Local', '2020-03-02', NULL, '', '9109010311930002', 'Jl. Gorong-Gorong Rt/Rw:005/001 Otomona - Mimika Baru', 'Timika', '1993-11-05', 'TIMIKA', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '941492688953000', '20016044180', '1585796984', 'Mandiri', '1540016283321', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3146, '80029341', 'BOY RICKY ANDREAS SIMANJUNTAK', 'Local', '2022-01-17', NULL, '', '1271041010900008', 'Pondok Amor - Timika', 'MIMIKA', '1992-05-04', 'MEDAN', 'KRISTEN', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '767634843122000', '22003525296', '2756266211', 'Mandiri', '1540017433255', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3147, '80029327', 'DAUD RAMBU LAMBA', 'Local', '2022-01-17', NULL, '', '9109011608950001', 'Jl. Kesehatan No.20A Rt/Rw:011/000 Timika Indah Mimika Baru', 'MIMIKA', '1995-08-16', 'TEMBAGAPURA', 'KRISTEN', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '416975381953000', '22003525361', '3132553408', 'Mandiri', '1540017447164', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3148, '80023990', 'NIKODEMUS PILIGAME', 'Local', '2022-01-24', NULL, '', '9109011711900003', 'Jl.Baru Rt/Rw:0028/000 Kwamki - Mimika Baru', 'MIMIKA', '1990-11-17', 'TIMIKA', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '852798131953000', '22010626327', '1424187178', 'Mandiri', '1540015880960', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3149, '80022584', 'SYAMSIR', 'Local', '2023-04-24', NULL, '', '9171013010900008', 'JL. Tugu I Apo Kalimati Rt/Rw:001/002 Bhayangkara-Jayapura Utara-Papua', 'JAYAPURA', '1990-10-30', 'JAYAPURA', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '666020003952000', '23055938643', '1851934871', 'Mandiri', '1540015240876', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3150, '80037334.', 'JHON BENI KUDIAI', 'Local', '2024-02-19', NULL, '', '\'9109010101990013', 'JL. Nangka Rt/Rw:011/000 Timika Jaya -Mimika Baru', 'TIMIKA', '2000-01-10', 'ENAROTALI', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '24047254149', '845194926', 'Mandiri', '1540019197288', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3151, '80030519', 'BYRON PETHERSON DAWIR', 'Local', '2022-05-16', NULL, '', '9171021902970001', 'Jl Merpati No 60 RT/RW:003/000 Kel Kuala Kencana Kec Kuala Kencana', 'MIMIKA', '1997-02-19', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '638528836953000', '22051951220', '830723758', 'Mandiri', '1540017748363', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3152, '80030516', 'ROBERTH CALVIN OHEE', 'Local', '2022-05-16', NULL, '', '9109012210990012', 'Jl Bougenville RT/RW:012/000 Kel Koperapoka Kec Mimika Baru ', 'MIMIKA', '1999-10-22', 'BIAK', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '653125633953000', '22051951261', '3023877611', 'Mandiri', '1540017749221', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3153, '80030517', 'ARIF ABRIANTO PUTRA', 'Local', '2022-05-16', NULL, '', '3507011304010002', 'Kel Donomulyo Kec Donomulyo RT/RW:017/004 Malang', 'MALANG', '2001-04-13', 'MALANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '653004234654000', '22051951238', '678041638', 'Mandiri', '1540017748736', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3154, '80030518', 'UMAR DIDIK SANJAYA', 'Local', '2022-05-16', NULL, '', '9109012712960001', 'Jl KH Dewantara RT/RW:014/000 Kel Dingo Narama Kec Mimika Baru', 'MIMIKA', '1996-12-27', 'TIMIKA', 'ISLAM', 'L', 'Kawin', 2, 'K/2', NULL, NULL, NULL, '652927260953000', '22051951253', '844706136', 'Mandiri', '1540017747845', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3155, '80030581', 'HARLEN TITO RANTETAMPANG', 'Local', '2022-05-23', NULL, '', '9109013009960009', 'Jl serui Mekar Gang Markisa RT/RW:018/002 Kel Otomona Kec Mimika Baru', 'MIMIKA', '1996-09-30', 'UJUNG PANDANG', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '634930234953000', '22051951287', '825275171', 'Mandiri', '1540017748918', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3156, '80032071', 'FRANSISCUS RIO MASE', 'Local', '2022-11-07', NULL, '', '9109013007980002', 'Jl Samratulangi Lorong Veteran RT/RW 011/000 Kel Pasar Sentral Mimika Baru', 'MIMIKA', '1998-07-30', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '630519312953000', '22127269177', '1584866711', 'Mandiri', '1540018062863', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3157, '80023983', 'FREDY HINDOM', 'Local', '2022-11-07', NULL, '', '9109011409000007', 'Jl Sektoral RT/RW 012/000 Kel Dingo Narama Kec Mimika Baru', 'MIMIKA', '2000-09-14', 'FAK FAK', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '835947656953000', '22127269243', '2384691276', 'Mandiri', '1540018110928', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3158, '80032077', 'I KOMANG MAHARDIKA', 'Local', '2022-11-07', NULL, '', '9109012508970002', 'Jl Samratulagi Perum Samsat RT/RW 004/000 Kel Inauga Kec Wania', 'MIMIKA', '1997-08-25', 'JAYAPURA', 'HINDU', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '613354174953000', '22127269193', '3304347851', 'Mandiri', '1540012258137', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3159, '80032076', 'ISRAEL MAKADADA', 'Local', '2022-11-07', NULL, '', '9109010508990004', 'Jl Rambutan RT/RW 002/000 Kel Timika Jaya Kec Mimika Baru ', 'MIMIKA', '1999-08-05', 'MANADO', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '613734433953000', '22127269250', '209283581', 'Mandiri', '1540018076210', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3160, '80032088', 'JAMES DOOM', 'Local', '2022-11-07', NULL, '', '9106120510960002', 'Jl Nuri Sektoral No 44 RT/RW 010/000 Kel Dingo Narama Kec Mimika Baru', 'MIMIKA', '1996-10-05', 'BIAK', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '939099800951000', '22127269235', '725159777', 'Mandiri', '1600003324411', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3161, '80032127', 'YOPPY WILTANTO WAYANGKAU', 'Local', '2022-11-07', NULL, '', '9171032507960004', 'Komp Gorong Gorong RT/RW 003/000 Kel Koperapoka Kec Mimika Baru', 'MIMIKA', '1996-07-25', 'RSUD BIAK', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '411314453952000', '22127269219', '3032516169', 'Mandiri', '1540018134563', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3162, '80032457', 'ABIMAS SETYAWAN GULTOM', 'Local', '2022-12-11', NULL, '', '9109011007960003', 'Jl C Heatubun RT/RW 003/003 Kel Kwamki Kec Mimika Baru', 'MIMIKA', '1996-04-10', 'TUBAN', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '620047878953000', '23001159468', '2999926585', 'Mandiri', '1540018206288', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3163, '80035178', 'SONNI F AMAMITIKU', 'Local', '2023-07-24', NULL, '', '9109071010960001', 'PULAU KARAKA RT 002/000 KEL AMAMAPARE KEC MIMIKA TIMUR JAUH ', 'MIMIKA', '1998-04-03', 'PULAU KARAKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '395648108953000', '23106004577', '2384703808', 'Mandiri', '15400186779911', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3164, '80036029', 'ADI PRAKOSO', 'Local', '2023-10-02', NULL, '', '9271021404980002', 'JL MELATI RAYA KM 9.5 RT/RW 004/003 KEL KLASABI KEC SORONG MANOI', 'SORONG', '1998-04-14', 'SORONG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '505099119953000', '23141651432', '458392994', 'Mandiri', '1540018860688', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3165, '80036580', 'ISAK SEMUEL KEYNE SAWAKI', 'Local', '2023-11-13', NULL, '', '9115041602000001', 'BELAKANG SMAN 4 JAYAPURA RT/RW 005/005 KEL ENTROP KEC JAYAPURA SELATAN', 'JAYAPURA', '2001-02-16', 'UREI FAISEI', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '509467593952000', '23164673388', '3032351651', 'Mandiri', '1540018947469', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3166, '80031003', 'GOIFANI KALE NAHAYAT', 'Local', '2024-02-01', NULL, '', '3574021803990001', 'JL. Sunan Drajad RT/RW 001/005 Desa Kedung Galeng, Kec Wonoasih', ' PROBOLINGGO', '1999-03-12', 'PROBOLINGGO', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '438674772625000', '22085508178', '1196651158', 'Mandiri', '1430019768363', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3167, '80032665', 'YASON STEVANUS WANIA', 'Local', '2024-02-05', NULL, '', '9109012810030004', 'Jl. Perintis Rt/RW:027/000 Kel. Perintis - Mimika Baru - Timika', 'TIMIKA', '2003-10-28', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '24015338858', '1584945292', 'Mandiri', '1540019187552', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3168, '80037454', 'IVAN MAULANA', 'Local', '2024-03-11', NULL, '', '\'3573020404010002', 'Jl. J.A Suprapto I/78 Rt/Rw:002/002-Klojen-Malang-Jatim', 'MALANG', '2001-04-04', 'MALANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '24047254115', '1601511647', 'Mandiri', '1540019283542', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3169, '80037864', 'CATLEN UKE PRASDYNATA', 'Local', '2024-04-22', NULL, '', '\'9109010505000012', 'Jl. Abdul Gani Atas Rt/Rw:004/014 Ngaglik-Batu-JATIM', 'MALANG', '2000-05-05', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '24064944655', '1896872141', 'Mandiri', '1540019351356', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3170, '80037453', 'IRFAN RAHMAN', 'Local', '2024-03-11', NULL, '', '\'3573051903010001', 'Dsn Cerme Rt/Rw:001/007 - Kalipucung -Sanankulon-Blitar-Jatim', 'BLITAR', '2001-03-19', 'MALANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '0', '24047254172', '', 'Mandiri', '1540019245467', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3171, '80029328', 'ANUGRAH MACHMUD', 'Local', '2022-01-17', NULL, '', '7313061606980006', 'Jl. Lembu Rt/RW:00/00 Tempe-Wajo-Sulsel', 'WAJO', '1998-06-16', 'SENGKANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '963861125808000', '22003525353', '166519462', 'Mandiri', '1700010822363', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3172, '80029213', 'REFAIN MENTU', 'Local', '2022-01-10', NULL, '', '7102042203920001', 'Jl. Pendidikan Rt/Rw:019/000 Otomona - Mimika Baru', 'MIMIKA', '1992-03-22', 'KOMBI', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '735302390823000', '22003525213', '137210106', 'Mandiri', '1540017423967', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3173, '80029335', 'ALEXANDER GIBAN', 'Local', '2022-01-17', NULL, '', '9102150510940001', 'Jl. Belibis RT/RW:021/000 Timika Indah-Mimika Baru', 'MIMIKA', '1994-10-05', 'SILIMO', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '932282668952000', '22003525254', '1674164485', 'Mandiri', '1540017432646', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3174, '80029476', 'ALFIAN INDRA PRASETYA', 'Local', '2022-01-31', NULL, '', '3507220509980001', 'Jl. Raya Sidomakmur 78-A Rt/RW:002/002 Dau - Malang', 'MALANG', '1998-09-05', 'MALANG', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '630703619652000', '22010626277', '1907357354', 'Mandiri', '1440014501313', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3175, '80029339', 'CHRISTIAN JOSUA SAWAKI', 'Local', '2022-01-17', NULL, '', '9109032202000001', 'Mapurujaya Rt/Rw:002/000-Wania-Mimika Timur', 'MIMIKA', '2000-02-22', 'TIMIKA', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '417602539953000', '22003525338', '819206853', 'Mandiri', '1540017432547', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3176, '80029210', 'CHRISTIAN REXY RAMBITAN', 'Local', '2022-01-10', NULL, '', '7102041205980001', 'Jaga III-Rerer-Kombi-Minahasa-Sulut', 'MINAHASA', '1998-05-18', 'TONDANO', 'KRISTEN', 'L', 'Kawin', 0, 'K/0', NULL, NULL, NULL, '538214891953000', '22003525205', '137343385', 'Mandiri', '1540017424056', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3177, '80030515', 'CHRISTIAN FREDERIK LASUT', 'Local', '2022-05-16', NULL, '', '7102040906980001', 'Jaga IV RT/RW 000/000 Kel Kombi Kec Kombi', 'MINAHASA', '1998-06-09', 'TONDANO', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '653166488953000', '22051951246', '1648500906', 'Mandiri', '1540017749288', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3178, '80030579', 'MAKSI KALAKMABIN', 'Local', '2022-05-23', NULL, '', '9103010311960004', 'Jl Yahim sentani RT/RW 001/001 Kel Dobongsolo Kec Sentani', 'JAYAPURA', '1996-11-03', 'MIPOL', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '653012286952000', '22051951295', '3266377817', 'Mandiri', '1540017747795', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3179, '80029451', 'ADE HILMAN PRASETYA MAULANA', 'Local', '2022-01-24', NULL, '', '3578181205030003', 'Kebraon Manis Utara 1/16 Rt/Rw:006/003-Karang Pilang - Surabaya', 'SURABAYA', '2003-05-12', 'SURABAYA', 'ISLAM', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '630539930953000', '22010626293', '1398027339', 'Mandiri', '1540017458567', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3180, '80022493', 'NELSON INITIYU', 'Local', '2022-01-10', '2025-06-10', '', '9109032501980001', 'Mapurujaya Rt/Rw:002/000 Wania - Mimika Timur', 'MIMIKA', '1998-01-25', 'KAUGAPU', 'KRISTEN', 'L', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '410233407953000', '22003525221', '819057047', 'Mandiri', '1540017428941', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3181, '881610', 'YUKE ERLIANA', 'Local', '2014-06-09', NULL, '', '910901480581007', 'Jl. Yos Sudarso Rt/Rw:021/000 Sempan - Mimika Baru - Timika', 'Timika', '1981-05-08', 'Jember', 'ISLAM', 'P', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '876812637953000', '15027269065', '1585625815', 'Mandiri', '1540012585570', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3182, '80029233', 'LEYDI PANDELAKI', 'Local', '2021-07-08', NULL, '', '7171075704890005', 'Lingkungan VII Rt/Rw:000/007-Karombasan Utara-Wanea-Kota Manado', 'Timika', '1989-04-17', 'Manado', 'KRISTEN', 'P', 'Belum Kawin', 0, 'TK/0', NULL, NULL, NULL, '162859524821000', '21052481450', '2423473018', 'Mandiri', '1540017069232', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3183, '80018526', 'RISLI OKLY WALANGITAN', 'Local', '2018-01-06', '2025-04-30', 'PHK karena pelanggaran menyerahkan kunci ke pihak ke-3', '7102020110940001', 'LINKUNGAN IV-KATINGGOLAN-TONDANO TIMUR', 'Manado', '1994-10-01', 'Cilacap', 'KRISTEN', 'L', 'Kawin', 1, 'K/1', NULL, NULL, NULL, '836454025953000', '18000983900', '2424319997', 'Mandiri', '1500011903968', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL),
(3184, '80043307', 'ROFIK ROFANDRA', 'Local', '2025-05-19', NULL, '', '3314041604970001', 'PURWOREJO RT 026, KEL. CELEP, KEC. KEDAWUNG, KAB. SRAGEN', 'SRAGEN', '1997-04-16', 'SRAGEN', 'ISLAM', 'L', 'Tidak Kawin', 0, 'TK/0', NULL, NULL, NULL, '355097918649000', '0', '3057115105', 'MANDIRI', '1540020219964', NULL, 'default.svg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-22 03:48:04', '2026-01-22 03:48:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1768875341, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `modulId` int(11) NOT NULL,
  `modulNama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `id_timesheet` int(11) NOT NULL,
  `fk_karyawan` int(11) NOT NULL,
  `periode` char(6) NOT NULL,
  `d1` int(11) NOT NULL,
  `d2` int(11) NOT NULL,
  `d3` int(11) NOT NULL,
  `d4` int(11) NOT NULL,
  `d5` int(11) NOT NULL,
  `d6` int(11) NOT NULL,
  `d7` int(11) NOT NULL,
  `d8` int(11) NOT NULL,
  `d9` int(11) NOT NULL,
  `d10` int(11) NOT NULL,
  `d11` int(11) NOT NULL,
  `d12` int(11) NOT NULL,
  `d13` int(11) NOT NULL,
  `d14` int(11) NOT NULL,
  `d15` int(11) NOT NULL,
  `d16` int(11) NOT NULL,
  `d17` int(11) NOT NULL,
  `d18` int(11) NOT NULL,
  `d19` int(11) NOT NULL,
  `d20` int(11) NOT NULL,
  `d21` int(11) NOT NULL,
  `d22` int(11) NOT NULL,
  `d23` int(11) NOT NULL,
  `d24` int(11) NOT NULL,
  `d25` int(11) NOT NULL,
  `d26` int(11) NOT NULL,
  `d27` int(11) NOT NULL,
  `d28` int(11) NOT NULL,
  `d29` int(11) NOT NULL,
  `d30` int(11) NOT NULL,
  `d31` int(11) NOT NULL,
  `k1` varchar(5) NOT NULL,
  `k2` varchar(5) NOT NULL,
  `k3` varchar(5) NOT NULL,
  `k4` varchar(5) NOT NULL,
  `k5` varchar(5) NOT NULL,
  `k6` varchar(5) NOT NULL,
  `k7` varchar(5) NOT NULL,
  `k8` varchar(5) NOT NULL,
  `k9` varchar(5) NOT NULL,
  `k10` varchar(5) NOT NULL,
  `k11` varchar(5) NOT NULL,
  `k12` varchar(5) NOT NULL,
  `k13` varchar(5) NOT NULL,
  `k14` varchar(5) NOT NULL,
  `k15` varchar(5) NOT NULL,
  `k16` varchar(5) NOT NULL,
  `k17` varchar(5) NOT NULL,
  `k18` varchar(5) NOT NULL,
  `k19` varchar(5) NOT NULL,
  `k20` varchar(5) NOT NULL,
  `k21` varchar(5) NOT NULL,
  `k22` varchar(5) NOT NULL,
  `k23` varchar(5) NOT NULL,
  `k24` varchar(5) NOT NULL,
  `k25` varchar(5) NOT NULL,
  `k26` varchar(5) NOT NULL,
  `k27` varchar(5) NOT NULL,
  `k28` varchar(5) NOT NULL,
  `k29` varchar(5) NOT NULL,
  `k30` varchar(5) NOT NULL,
  `k31` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'roneli6975@yahoo.com', 'admin', NULL, 'default.svg', '$2y$10$QBtgQGVkaT34jGvAF63tk.p02y9UMKsvkvpJIK3SbLPrmGo2UkWcO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2026-01-20 07:58:27', '2026-01-21 01:37:40', NULL),
(8, 'roneli6975@gmail.com', 'rony', NULL, 'default.svg', '$2y$10$9xH3h5Z0CpcbDBceeF6sx.6ugTF9kmHP/h5uVT9kWrjyqdJFeRdvO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2026-01-21 03:26:30', '2026-01-22 01:10:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`asetId`);

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`modulId`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`id_timesheet`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `asetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3185;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `modulId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheet`
--
ALTER TABLE `timesheet`
  MODIFY `id_timesheet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
