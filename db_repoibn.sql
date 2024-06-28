-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2024 pada 09.56
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_repoibn`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(100) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `id_repo` int(25) NOT NULL,
  `ket_dokumen` varchar(100) DEFAULT NULL,
  `file_dokumen` varchar(100) DEFAULT NULL,
  `jenis_dokumen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `id_pegawai`, `id_repo`, `ket_dokumen`, `file_dokumen`, `jenis_dokumen`) VALUES
(1, 5, 0, 'Kepuasan Pasien', '1716563587_RUJUKAN WIJI.pdf', NULL),
(2, 5, 0, 'ijasah', '1716563629_ijasah.jpg', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(100) NOT NULL,
  `kode_pegawai` varchar(100) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `status_pegawai` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_pegawai` varchar(100) NOT NULL,
  `jabatan_pegawai` varchar(100) NOT NULL,
  `mulai_kerja` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `kode_pegawai`, `nama_pegawai`, `status_pegawai`, `nik`, `no_hp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `gambar`, `email`, `password`, `jenis_pegawai`, `jabatan_pegawai`, `mulai_kerja`) VALUES
(1, '7700017706', 'LAS SUNDARI', 'TETAP', '1802017003960003', '085273268254', 'SRIBASUKI', '1996-06-01', 'Perempuan', 'SRIBASUKI,9,4,SRIBASUKI,,Kab. Lampung Tengah', 'pegawai.png', 'lassundari@gmail.com', '5321c35f515471add56611f9ef365cad', 'Tenaga Kependidikan', '', '2012-02-01'),
(2, '7700017707', 'TITI DWI JAYANTI', 'TETAP', '1810024204900009', '082372967388', 'MURTIREJO', '1990-06-01', 'Perempuan', 'JL. Kh. Ahmad Dahlan,2,3,Pringsewu Barat,,Kab. Pringsewu', 'pegawai.png', 'titidj768@gmail.com', '6318de86a687b47bd9f8a276924e9143', 'Tenaga Kependidikan', '', '2012-02-01'),
(3, '7700017705', 'AHMAD ALDI SAPUTRA', 'TETAP', '1802030611980001', '085766891644', 'SENDANG AYU', '1998-11-06', 'Laki-laki', 'SENDANG AYU,9,4,SENDANG AYU,,Kec. Padang Ratu', 'pegawai.png', 'ahmadaldispt@gmail.com', '3a1d1550ac5105f528dc4766c4b11307', 'Tenaga Kependidikan', '', '2012-02-01'),
(4, '7700017708', 'MITA SARI', 'TETAP', '1810086602970001', '081368935665', 'SINAR KUMPUL', '1997-02-26', 'Perempuan', 'SINAR KUMPUL,1,4,SINARBARU,,Kab. Pringsewu', 'pegawai.png', 'mitasariava@gmail.com', '52d677f28a11192411026dfc5dea40df', 'Tenaga Kependidikan', '', '2012-02-01'),
(5, '7700017704', 'ROJANI AMSIR', 'TETAP', '1806110110940003', '085273665681', 'Umbul Baru', '1994-10-01', 'Laki-laki', 'Gadingrejo,4,9,Gading Rejo,,Kab. Pringsewu', 'pegawai.png', 'rojani94@gmail.com', 'c89e40a12541ce9a8d856978debfd650', 'Tenaga Kependidikan', '', '2012-02-01'),
(6, '0224097601', 'TAUFIK', 'TETAP', '1871132409760003', '08127960765', 'Tanjung Karang', '1976-09-24', 'Laki-laki', 'Jalan Vanili Blok V/W No. 15,11,1,Beringin Raya,35158,Kota Bandar Lampung', 'pegawai.png', 'taufiktsani@gmail.com', 'cabb377c815cf830a7aba7e0fdf447c0', 'Dosen', '', '2012-02-01'),
(7, '0209028904', 'JONI', 'TETAP', '1810010902860004', '085267602136', 'BUMI ARUM', '1989-02-09', 'Laki-laki', 'BUMI ARUM,3,3,BUMI ARUM,35373,Kab. Pringsewu', 'pegawai.png', 'jonipsw@gmail.com', 'bfa4419b91144af0d7efd874a32164e6', 'Dosen dan Tenaga Pendidik', '', '2012-02-01'),
(8, '0226128702', 'DANANG KUSNADI', 'TETAP', '1605162612870002', '087738200512', 'SUMBER MAKMUR', '1987-12-26', 'Laki-laki', 'Jl Honocoroko,3,3,Sukoharjo III,35673,Kab. Pringsewu', 'pegawai.png', 'mzdkoesnadi@gmail.com', 'b2d89997467028e6b778882921f176f7', 'Dosen', '', '2012-02-01'),
(9, '0230088901', 'WINIA WAZIANA', 'TETAP', '1809017008890002', '085279447904', 'TANJUNG KARANG', '1989-08-30', 'Perempuan', 'Jl. Bumi Manti I. Perumahan Villa Mutiara Blok F2 No.3 Kec. Labuhan Ratu,4,,Kampung Baru Raya,35143,Kota Bandar Lampung', 'pegawai.png', 'winiawaziana@gmail.com', '816132df58e937a47014b1464197f591', 'Dosen', '', '2012-02-01'),
(10, '0218028703', 'ADI PRASETIA NANDA', 'TETAP', '1810011802870002', '082184100211', 'PRINGSEWU', '1987-02-18', 'Laki-laki', 'Pringsewu,2,4,Pringsewu Barat,35373,Kab. Pringsewu', 'pegawai.png', 'adiprasetiananda.artha@gmail.com', 'bbcf690f69d8f51b493d7a3b1a1ac178', 'Dosen', '', '2012-02-01'),
(11, '0226068701', 'JIMI ALI BABA', 'TETAP', '1871132606870005', '082182141222', 'NATAR', '1987-06-26', 'Laki-laki', 'NATAR,6,4,PEMANGGILAN,35362,Kab. Lampung Selatan', 'pegawai.png', 'jimialibaba@gmail.com', '9f9f1dc744b55d5632cca452d2019a5e', 'Dosen', '', '2012-02-01'),
(12, '0217069001', 'BAYU GRENDO SIGARETE', 'TETAP', '1809051706900004', '+62 821 7686 9418', 'UMBULREJO', '1990-06-17', 'Laki-laki', 'Tlawong,4,2,Tlawong,57374,Kab. Boyolali', 'pegawai.png', 'sigaretebayu@gmail.com', 'eb32976225c9a3d14ae7c4175357e23d', 'Dosen', '', '2012-02-01'),
(13, '0208109001', 'PANJI ANDHIKA PRATOMO', 'TETAP', '1871020810900004', '082377188127', 'Bandar Lampung', '1990-10-08', 'Laki-laki', 'Jl. Mustafa Kemal,4,0,Way Urang,,Kab. Lampung Selatan', 'pegawai.png', 'panjiandhikap@gmail.com', '8a951ca02a2885caa18f6d40eab94552', 'Dosen', '', '2012-02-01'),
(14, '0208118004', 'MUHAMMAD JUNAIDI', 'TETAP', '1871130810800005', '', 'KOTA BUMI', '1980-11-08', 'Laki-laki', 'KEMILING PERMAI,1,1,KEMILING PERMAI,,Kab. Pringsewu', 'pegawai.png', '', 'f6d5a8ed8cdffc4e83840f1f82ec84cd', 'Dosen', '', '2012-02-01'),
(15, '0229128701', 'ANGGER PURWO NUGROHO', 'TETAP', '1810715291287000', '', 'sendang sari', '1987-12-29', 'Laki-laki', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '8b7fc46ea30f245341dd514ae4fe47a8', 'Dosen', '', '2012-02-01'),
(16, '0201128802', 'NOCA YOLANDA SARI', 'TETAP', '1871134112880002', '082374757080', 'LAHAT', '1988-12-01', 'Perempuan', 'Podorejo Kel.Rejosari Kec. Pringsewu Kab. Pringsewu,3,1,Rejosari,35371,Kab. Pringsewu', 'pegawai.png', 'nocayolandasaristmikpsw@gmail.com', 'fa968260959437f980d073150466f252', 'Dosen', '', '2012-02-01'),
(17, '9902709658', 'URIP APRIYANTO', 'TETAP', '1806071904880014', '', 'PURWOKEJO', '1988-07-02', 'Laki-laki', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '419ef032accb926ade90353dacd6652f', 'Dosen', '', '2012-02-01'),
(18, '0210119301', 'NOVITA ANDRIYANI', 'TETAP', '1810044511930002', '082280143375', 'SUKOREJO', '1993-11-10', 'Perempuan', 'SUKOREJO,3,3,SUKOREJO,,Kab. Pringsewu', 'pegawai.png', 'andriyaninovita222@gmail.com', 'b9a95c1164343446a6c100827e905c88', 'Dosen', '', '2012-02-01'),
(19, '8840310016', 'DIDIK KURNIAWAN', 'TETAP', '1804041003810002', '', 'RUMBIA', '1981-03-10', 'Laki-laki', 'GUNUNG SUGIH,1,1,GUNUNG SUGIH,,Kab. Pringsewu', 'pegawai.png', '', '02d9774c20d5b65d7e5f17f00b15cecc', 'Dosen', '', '2012-02-01'),
(20, '9902709648', 'YESY MERIANTY', 'TETAP', '1871135805850008', '', 'Lubuk Linggau', '1985-03-18', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '7c972fac3db10f9463068a2b40108366', 'Dosen', '', '2012-02-01'),
(21, '0207088901', 'DIAN PUSPITA', 'TETAP', '1810014708890003', '085279646000', 'BUMISARI', '1989-08-07', 'Perempuan', 'Jalan tani,4,4,Jalan Tani, Kelurahan Pringsewu Barat,35373,Kab. Pringsewu', 'pegawai.png', 'dianteapuspita@gmail.com', '06a3118f52acdec90383c7762149c9a3', 'Dosen', '', '2012-02-01'),
(22, '9990549344', 'ADE OKTAVIYANI', 'TETAP', '1802077009870002', '', 'BANDARJAYA', '1987-09-30', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', 'f271e4538b96c6bc50eb728d0ed2424d', 'Dosen', '', '2012-02-01'),
(23, '9990549346', 'EVI HARYANI', 'TETAP', '1806014803840003', '', 'GUNUNG SARI', '1984-03-08', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '0ff6e4bcf54e787ebbf861bdbc633564', 'Dosen', '', '2012-02-01'),
(24, '0205098501', 'ERLIZA SEPTIA NAGARA', 'TETAP', '1810054509850001', '085269556885', 'GUMUK MAS', '1985-09-05', 'Perempuan', 'Jln raya pagelaran,1,1,Panutan,35375,Kab. Pringsewu', 'pegawai.png', 'erlizaseptianagara.ita@gmail.com', '36547aeba58559a92149eb9838650fc3', 'Dosen', '', '2012-02-01'),
(25, '9902709646', 'HAYANE ADELINE WARGANEGARA', 'TETAP', '1871124808970001', '', 'Bandar lampug', '1987-09-08', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '613d5374a9fc0d3585451f145777bb8e', 'Dosen', '', '2012-02-01'),
(26, '0207099001', 'SUYONO', 'TETAP', '1810010709900003', '085380600060', 'PRINGSEWU', '1990-09-07', 'Laki-laki', 'Margodadi Timur,5,3,Margodadi,,Kab. Tenggamus', 'pegawai.png', 'yono.psw@gmail.com', '798eed115971a62cfdf0b8d98c5e1f45', 'Dosen', '', '2012-02-01'),
(27, '0202068702', 'YUDHISTIRA ARDANA', 'TETAP', '1810010206890003', '085729788081', 'PURBALINGGA', '1987-06-02', 'Laki-laki', 'Pringmobo II,4,2,Pringsewu Timur,35373,Kab. Pringsewu', 'pegawai.png', 'ardanayudhistira@gmail.com', 'b8ad9cce57e75c2626821e1bb1679e85', 'Dosen', '', '2012-02-01'),
(28, '9990549343', 'TRI WAHYUDI', 'TETAP', '1871132309910005', '', 'PAKUAN AJI', '1991-09-23', 'Laki-laki', 'BERINGIN RAYA,14,14,BERINGIN RAYA,,Kab. Pringsewu', 'pegawai.png', '', '9b4f35dfb18f77d8635cf0985dbf85c0', 'Dosen', '', '2012-02-01'),
(29, '0210119202', 'FIQIH SATRIA', 'TETAP', '1810011011920004', '085266689938', 'PRINGSEWU', '1992-11-10', 'Laki-laki', 'Jl. Terusan Ryacudu Gg. Payung,5,8,Marga Agung,35365,Kab. Lampung Selatan', 'pegawai.png', 'fiqihsatria@radenintan.ac.id', '7b5142239d8271f3c47d20c84bb83609', 'Dosen', '', '2012-02-01'),
(30, '0201029101', 'WIDIANTO', 'TETAP', '1804170102910001', '085841426990', 'WAY NGISON', '1991-02-01', 'Laki-laki', 'Pager Sari, RT.2/RW.3,,2,3,Fajar Agung Barat,35373,Kab. Pringsewu', 'pegawai.png', 'widiantostmik@gmail.com', '6d4a702d00c82c98d3c29ecebc377c03', 'Dosen dan Tenaga Pendidik', '', '2012-02-01'),
(31, '9902709907', 'ISNI DHANIANTO', 'TETAP', '1810051705870004', '', 'BUMIREJO', '1987-05-17', 'Laki-laki', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', 'f3590b091fa77c95e493aef7edb35b37', 'Dosen', '', '2012-02-01'),
(32, '0219038303', 'YOEYONG RAHSEL', 'TETAP', '3273071903830004', '082176702598', 'SURABAYA', '1983-03-19', 'Laki-laki', 'JALAN RUSA PERUM LESTARI JAYA BLOK D NO. 17 LK II,3,2,SUKAMENANTI,35146,Kota Bandar Lampung', 'pegawai.png', 'yrahsel@gmail.com', '86f225995251489a0053c71d6fc2fa3b', 'Dosen', '', '2012-02-01'),
(33, '0219019104', 'RICCO HERDIYAN SAPUTRA', 'TETAP', '1871121901910006', '082289896200', 'BANDAR LAMPUNG', '1991-01-19', 'Laki-laki', 'JL BUMI MANTI I PERUMAHAN VILLA MUTIARA BLOK F2 NO 03 LK I KEC. LABUHAN RATU,4,0,KAMPUNG BARU,35141,Kota Bandar Lampung', 'pegawai.png', 'saputraherdiyanricco@gmail.com', 'e853d6032422caa583296b1666b36bfe', 'Dosen', '', '2012-02-01'),
(34, '8893400016', 'SULAIMAN', 'TETAP', '1810010511670001', '082306078888', 'PAREREJO', '1967-11-05', 'Laki-laki', 'REJOSARI,1,5,REJOSARI,,Kab. Pringsewu', 'pegawai.png', '', 'b0e32e2431f1a237a35278a9ffcfaa54', 'Dosen', '', '2012-02-01'),
(35, '0230128702', 'IDA AYU PUTU ANGGIE SINTHIYA', 'TETAP', '1871017012870002', '', 'GayaBaru', '1987-12-30', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', 'idaayuanggie@gmail.com', 'd3d64c85baa1e7ae27170dceccd43d2b', 'Dosen', '', '2012-02-01'),
(36, '8845720016', 'SODIKIN', 'TETAP', '1871080908750003', '', 'PENENGAHAN', '1975-08-09', 'Laki-laki', 'TELUK BETUNG BARAT,1,1,-,,Kab. Pringsewu', 'pegawai.png', '', 'fda974e38bc73bd5ff6853cf20d02005', 'Dosen', '', '2012-02-01'),
(37, '9990549345', 'DESI HANDAYANI', 'TETAP', '1809055812900004', '', 'SIDOLUHUR', '1990-12-18', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '6546bd2fdc2c9df85bd568385deca7a9', 'Dosen', '', '2012-02-01'),
(38, '0211049101', 'WIDI ANDEWI', 'TETAP', '1802010151049100', '082269163132', 'SUKOSARI', '1991-04-11', 'Perempuan', 'SRIBASUKI,2,1,SRIBASUKI,34174,Kab. Lampung Tengah', 'pegawai.png', '', '7da3a7c6fae47a47935127b0edd0a920', 'Dosen', '', '2012-02-01'),
(39, '0206118804', 'DITA NOVITA SARI', 'TETAP', '1810024611880001', '085279552266', 'GADINGREJO', '1988-11-06', 'Perempuan', 'Gadingrejo,1,5,gadingrejo,35372,Kab. Pringsewu', 'pegawai.png', 'ditans66@gmail.com', 'e932b14fd3cb98c9216e46d8cc7a71ea', 'Dosen', '', '2012-02-01'),
(40, '0211129301', 'JEPRIANTO', 'TETAP', '1810011112930003', '', 'Pagarjati', '1993-12-11', 'Laki-laki', 'Perumahan Lucky Arya III Kelurahan Pringsewu Selatan, Kec Pringsewu, Kab. Pringsewu Lampung,7,1,Pringsewu Selatan,,Kab. Pringsewu', 'pegawai.png', 'jevkikimlingsing@gmail.com', '6d68d03df2e43cdac469db197b31b9a4', 'Dosen', '', '2012-02-01'),
(41, '0208096501', 'DWI HERINANTO', 'TETAP', '1810010809650002', '', 'Kedungjati', '1965-09-08', 'Laki-laki', 'Pajaresuk II,1,2,Pajaresuk,,Kab. Pringsewu', 'pegawai.png', '', '755d0a03731c2fc788f0d70a31cd10b0', 'Dosen', '', '2012-02-01'),
(42, '8875210016', 'YUSRIYATI', 'TETAP', '1810016811660001', '', 'PRINGSEWU', '1966-11-28', 'Perempuan', 'PRINGSEWU,1,5,REJOSARI,,Kab. Pringsewu', 'pegawai.png', '', '79610795e45ab5be6c6e71754aa6cda6', 'Dosen', '', '2012-02-01'),
(43, '0203108506', 'EKO HENDRAWAN', 'TETAP', '1810020310850003', '', 'Palembang', '1985-10-03', 'Laki-laki', 'Gadingrejo,1,2,Wonodadi,,Kab. Pringsewu', 'pegawai.png', '', '89f5d3b3b7df8913ed525f5e526cbdfb', 'Dosen', '', '2012-02-01'),
(44, '0206109101', 'MARDIYANTO', 'TETAP', '1802070610910003', '082373971991', 'Margo Mulyo', '1991-10-06', 'Laki-laki', 'Pringkumpul, RT.1/RW.2,,1,2,Pringsewu Selatan,35373,Kab. Pringsewu', 'pegawai.png', 'mardybest@gmail.com', '6b28a5991933f9ef1d514667f3bcf7d9', 'Dosen dan Tenaga Pendidik', '', '2012-02-01'),
(45, '0231128903', 'AHMAD SYARIFUDDIN', 'TETAP', '1806203112890004', '', 'Purwodadi', '1989-12-31', 'Laki-laki', 'Landbaw, Gisting, Tanggamus,13,5,Gisting,,Kab. Pringsewu', 'pegawai.png', '', 'f4c7eaf9f063b6cf177e360156d5a345', 'Dosen', '', '2012-02-01'),
(46, '0204058703', 'ARI BOWO', 'TETAP', '1806010405870001', '', 'KOTA AGUNG', '1987-05-04', 'Laki-laki', 'SRI KATON,1,0,SEMAKA,,Kab. Pringsewu', 'pegawai.png', '', '99af58be0674578c350a849d962fa922', 'Dosen', '', '2012-02-01'),
(47, '0223038904', 'PRIYONO', 'TETAP', '1810025603890002', '', 'PASIR UKIR', '1989-03-26', 'Laki-laki', 'Kelurahan Podosari, Kecamatan Pringsewu,3,3,Pringsewu,,Kab. Pringsewu', 'pegawai.png', '', '886676d1b689f62c86d7af4bdde09bfe', 'Dosen', '', '2012-02-01'),
(48, '0206049005', 'AFRIZAL MARTIN', 'TETAP', '1810080604900001', '081278854404', 'BUMI HARJO', '1990-04-06', 'Laki-laki', 'JUJUGAN,2,2,YOGYAKARTA SELATAN,35373,Kab. Pringsewu', 'pegawai.png', 'afrizalmartin.mti@gmail.com', 'fc529ae5d6739c8b3d67446afa11a3ad', 'Dosen', '', '2012-02-01'),
(49, '0203069701', 'SITI MUKODIMAH', 'TETAP', '1811024306970001', '085369869377', 'Talang Batu', '1997-06-03', 'Perempuan', 'Pringsewu Selatan,6,5,Pringsewu Selatan,35373,Kab. Pringsewu', 'pegawai.png', 'mukodimah97@gmail.com', '74101fdb2a665d4d0e82f6898f6bfca5', 'Dosen', '', '2012-02-01'),
(50, '8976180023', 'RUSTAM EFFENDI', 'TETAP', '1871012212700002', '', 'GUNUNG KATUN', '1970-12-22', 'Laki-laki', 'JL. WAY SEKAMPUNG NO.34,9,0,-,,Kab. Pringsewu', 'pegawai.png', '', '11c5d10255b64f52ca63274f7492214e', 'Dosen', '', '2012-02-01'),
(51, '2128038505', 'MARLIYANTI', 'TETAP', '1804035203850002', '081379994423', 'WALUR', '1985-03-28', 'Perempuan', 'Negeri ratu,0,0,Negeri ratu,,Kab. Pringsewu', 'pegawai.png', 'marliyanti.stebiliwa@gmail.com', '8853f505f414e567c69580b508b85f67', 'Dosen', '', '2012-02-01'),
(52, '0226118801', 'TRISNAWATI', 'TETAP', '3308156611880001', '0895376601372', 'magelang', '1988-11-26', 'Perempuan', 'Dusun IV,15,4,Kalirejo,34174,Kab. Lampung Tengah', 'pegawai.png', 'trisnawatistmikpsw@gmail.com', '0e0ae8d382627a4f53025836a65f3d37', 'Dosen', '', '2012-02-01'),
(53, '0216029202', 'PANGKY FEBRUARI', 'TETAP', '1806211602920003', '', 'Gisting', '1992-02-16', 'Laki-laki', 'Banjar Negeri, gunung alip,1,4,gisting,,Kab. Pringsewu', 'pegawai.png', '', '28bf4b5301a0ef3d802f406755bf8f13', 'Dosen', '', '2012-02-01'),
(54, '0219068404', 'EDWIN RUSSEL', 'TETAP', '1871101906840001', '085783931984', 'BANDAR LAMPUNG', '1984-06-19', 'Laki-laki', 'Jl. Cengkeh No. 44 Lk. 1,6,,Gedong Meneng,35145,Kota Bandar Lampung', 'pegawai.png', 'edwin.russel1706@feb.unila.ac.id', '09c8b04ca2797f9f1f38b9688ab46c96', 'Dosen', '', '2012-02-01'),
(55, '0424058904', 'M. HUSAIN PRAYOGA', 'TETAP', '1812012405890011', '082137009995', 'Penumangan Baru', '1989-05-24', 'Laki-laki', 'Mulya Asri,7,2,Mulyo Asri,34693,Kab. Tulang Bawang Barat', 'pegawai.png', 'm.hprayoga9@gmail.com', 'acc93429f80daa6f29157aa605269959', 'Dosen', '', '2012-02-01'),
(56, '9990549349', 'ANGGA RIANDRA SIREGAR', 'TETAP', '1802070206900002', '', 'Purwosari', '1990-06-02', 'Laki-laki', 'Bandar Jaya,11,3,-,,Kab. Pringsewu', 'pegawai.png', '', '90ca4244b808fe93697c15e34146fcb5', 'Dosen', '', '2012-02-01'),
(57, '0201089101', 'KHARISMA IDOLA ARGA', 'TETAP', '1801040108910005', '085269001142', 'NATAR', '1991-08-01', 'Laki-laki', 'Dusun I (Natar II) Desa Natar,4,2,Natar,35362,Kab. Lampung Selatan', 'pegawai.png', 'kharisma.idola.arga@stkippgribl.ac.id', '0231ded669425a62cfa6bd6af84434be', 'Dosen', '', '2012-02-01'),
(58, '0211036801', 'NURLELA', 'TETAP', '1810015103680003', '085379761769', 'Natar', '1968-03-11', 'Perempuan', 'Pringsewu Lampung,1,3,Pringsewu,,Kab. Pringsewu', 'pegawai.png', 'nurlailaajja123oke@gmail.com', '3579f5b3152ac55507ea9ca1e60ddc25', 'Dosen', '', '2012-02-01'),
(59, '8811310016', 'RUDI APRIYANTO', 'TETAP', '1804070904800001', '085273191691', 'PRINGSEWU', '1980-04-09', 'Laki-laki', 'WAY TENONG,4,3,PURA LAKSANA,,Kab. Pringsewu', 'pegawai.png', '', '8a7647d0a24a0fbbaf7d43e14da1da68', 'Dosen', '', '2012-02-01'),
(60, '0226107003', 'FAUZI', 'TETAP', '1871032610700004', '085268590515', 'PALEMBANG', '1970-10-26', 'Laki-laki', 'Jl. KH. Gholib Gg. Sakti Raya,3,2,Pringsewu Utara,35373,Kab. Pringsewu', 'pegawai.png', 'drfauzistmikpsw@gmail.com', '1458a1575ea96d74972b20123ad2f0a3', 'Dosen', '', '2012-02-01'),
(61, '0216099001', 'A.KHUMAIDI', 'TETAP', '1806201609900003', '081539272231', 'GISTING', '1990-09-16', 'Laki-laki', 'Pekon Purwodadi,1,6,Purwodadi,35378,Kab. Pringsewu', 'pegawai.png', 'ahmad.khumaidi531@gmail.com', '81411ce1647530ea64b0d4a21b20aea3', 'Dosen', '', '2012-02-01'),
(62, '0201048702', 'MARILIN KRISTINA', 'TETAP', '1871114104870007', '081271852833', 'kotabumi', '1987-04-01', 'Perempuan', 'Perum Labuhan Alam Residence No. D. 6 LK 1,15,,Labuhan Ratu Raya,,Kota Bandar Lampung', 'pegawai.png', 'marilinkristina0104@gmail.com', 'e5be9d629f5823a26d6070866ca7a4ab', 'Dosen', '', '2012-02-01'),
(63, '9902709649', 'MEDIYAWAN', 'TETAP', '1806012903850001', '', 'WAY KERAP', '1985-03-29', 'Laki-laki', 'KOTA AGUNG,10,2,-,,Kab. Pringsewu', 'pegawai.png', '', '2b0eb6990730090da0027edb9b055e1e', 'Dosen', '', '2012-02-01'),
(64, '0226048602', 'MOHAMMAD ISLAM MAHDI', 'TETAP', '1810021604860001', '081389030925', 'Wonodadi', '1986-04-26', 'Laki-laki', 'Wonodadi,1,2,Wonodadi,,Kab. Pringsewu', 'pegawai.png', 'omiisskom@gmail.com', '71e847a0be62c281e054b4f0936cae21', 'Dosen', '', '2012-02-01'),
(65, '0202056802', 'MISWAN GUMANTI', 'TETAP', '1871020205680005', '081279202503', 'pasar sukadana', '1968-05-02', 'Laki-laki', 'JL. GRIYA NIRMALA BLOK II/I NO 6 LK II, KEC. WAY HALIM,9,,WAY HALIM PERMAI,35141,Kota Bandar Lampung', 'pegawai.png', 'mgumanti0205@gmail.com', 'a9e45ecbe42071eacfdc92b179e4bc7f', 'Dosen', '', '2012-02-01'),
(66, '0211058804', 'RARA MARSELINA JUPON', 'TETAP', '1810015103880005', '', 'BENGKULU', '1988-03-11', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', 'rhahafiedz11@gmail.com', 'ac90c4d774776194d40b74803a173a6c', 'Dosen', '', '2012-02-01'),
(67, '0209059101', 'SARIYAH ASTUTI', 'TETAP', '187124905910013', '082226603928', 'TANJUNG KARANG', '1991-05-09', 'Perempuan', 'jalan belia nomor 98,8,,jagabaya II,35132,Kota Bandar Lampung', 'pegawai.png', 'ririastuti91@gmail.com', '6bc75ce23a2aef09b9e53dc3d276f870', 'Dosen', '', '2012-02-01'),
(68, '0229048902', 'DWI PUASTUTI', 'TETAP', '1810066907890003', '', 'BANYUMAS', '1989-04-29', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', 'puastutidwi29@gmail.com', 'afd126905ed396b18e97262f8c789425', 'Dosen', '', '2012-02-01'),
(69, '9990549347', 'SAKDUDDIN ATAF TAZZANI', 'TETAP', '340201028800003', '081215524933', 'Jepara', '1980-08-02', 'Laki-laki', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '03b9a131342125525c034862de09568b', 'Dosen', '', '2012-02-01'),
(70, '0221098401', 'EVY SEPTIANA RACHMAN', 'TETAP', '1871036109840006', '', 'bandar lampung', '1984-09-21', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', 'evy_arifien@yahoo.co.id', 'fe0d78eac652cfb014cb3b70b4bcbca1', 'Dosen', '', '2012-02-01'),
(71, '8844210016', 'SUTEJO', 'TETAP', '1810010906780005', '', 'WAERATE', '1978-06-09', 'Laki-laki', 'PODOSARI,5,1,PRINGSEWU,,Kab. Pringsewu', 'pegawai.png', '', '95069ce2d554ff62b6c482a9e0a81f52', 'Dosen', '', '2012-02-01'),
(72, '0207118902', 'NOVI AYU KRISTIANA DEWI', 'TETAP', '1802104711890008', '085768160325', 'SUMBER BARU', '1989-11-07', 'Perempuan', 'Perum BKP Jl. Bangsa Ratu Blok Z No. 214,11,,Kemiling Permai,35158,Kota Bandar Lampung', 'pegawai.png', 'noviayudi@gmail.com', '67fef28247b4d08b07ae486a4c20e847', 'Dosen', '', '2012-02-01'),
(73, '9990549350', 'ILA ZAKHIYA AMALIA', 'TETAP', '1802074510880008', '', 'gunung madu', '1988-10-05', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '62f1afc7507b96b5118dc2cf9051b508', 'Dosen', '', '2012-02-01'),
(74, '0212028901', 'PONIDI', 'TETAP', '3402161202890005', '085741862553', 'BUDILESTARI', '1989-02-12', 'Laki-laki', 'BUDI LESTARI,1,13,BUDI LESTARI,35361,Kab. Lampung Selatan', 'pegawai.png', 'ponidi@uinsu.ac.id', 'eb1888a3cb1a1e31df457345424e886a', 'Dosen', '', '2012-02-01'),
(75, '0230069201', 'BERNADHITA HERINDRI SAMODERA UTAMI', 'TETAP', '1810017006920004', '08197940176', 'BANTUL', '1992-06-30', 'Perempuan', 'PAJARESUK II,1,2,PAJARESUK,35373,Kab. Pringsewu', 'pegawai.png', 'bernadhita.herindri.s@mail.ugm.ac.id', 'a4718ab0dcb17b9fb3677f2dfd84fc98', 'Dosen', '', '2012-02-01'),
(76, '9990549348', 'KENI PUSPITA SARI', 'TETAP', '1871106710900001', '', 'bandar lampung', '1990-10-27', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', 'b544657e54748a1e7b17839d659b265d', 'Dosen', '', '2012-02-01'),
(77, '0211028901', 'AHMAD MUSTOFA', 'TETAP', '1810081102890005', '', 'SUKOHARJO', '1989-02-11', 'Laki-laki', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '9fff897aa00a1df7d4ec20768f9ba57b', 'Dosen', '', '2012-02-01'),
(78, '0213019101', 'RANI PRATIWI', 'TETAP', '1808125301910002', '082186392019', 'LAMPUNG UTARA', '1991-01-13', 'Perempuan', 'NEGERI BESAR,1,5,SRI BASUKI,,Kab. Way Kanan', 'pegawai.png', 'ranipratiwi.sh@gmail.com', '7e2fd6047534f97310d67dfad2e9d9f6', 'Dosen', '', '2012-02-01'),
(79, '0231088803', 'LENI ANGGRAENI', 'TETAP', '1810057108880004', '082181801616', 'Gumukmas', '1988-08-31', 'Perempuan', 'Gumuk Mas,1,1,Gumuk Mas,35375,Kab. Pringsewu', 'pegawai.png', 'leniarkananggraeni@gmail.com', '250c5eb177713fbdfd5051173c48294c', 'Dosen', '', '2012-02-01'),
(80, '0222127101', 'SUDEWI', 'TETAP', '1810056212710001', '081369429436', 'Panutan', '1971-12-22', 'Perempuan', 'P.TAMAN PRSANTI2, BLK B7 NO 06,23,,SUKARAME,35131,Kota Bandar Lampung', 'pegawai.png', 'oppodewi677@gmail.com', 'bc5a041b0c1c52a05d1f80695b3f8bd3', 'Dosen', '', '2012-02-01'),
(81, '0216128502', 'PAMUJI SETIAWAN', 'TETAP', '1802051612850002', '085783922203', 'METRO', '1985-12-16', 'Laki-laki', 'Tempuran,20,10,Tempuran 12a,34172,Kab. Lampung Tengah', 'pegawai.png', '', 'da7c2b41b7e3f89ffcc0e4efdd0da8d1', 'Dosen', '', '2012-02-01'),
(82, '9902709647', 'LYA NURAZIZAH EIFFANI', 'TETAP', '1803016407860008', '', 'SLEMAN', '1986-07-24', 'Perempuan', ',,,-,,Kab. Pringsewu', 'pegawai.png', '', '977a49d51a1c90099de259d67ae1b2fb', 'Dosen', '', '2012-02-01'),
(83, '2026097001', 'TULUS SURYANTO', 'TETAP', '1871032609700005', '081271953909', 'TANJUNG KARANG', '1970-09-26', 'Laki-laki', 'Perum Bukit Bilabong blok G2 No 9 Bandar Lampung,,,susunan baru,00000,Kec. Tanjung Karang Barat', 'pegawai.png', 'tulus@radenintan.ac.id', 'f964f4894c0f83f810d54fb6d3382fca', 'Dosen', '', '2012-02-01'),
(84, '0212087301', 'EKA RIDHAWATI', 'TETAP', '0850055208730005', '085789923267', 'JAKARTA', '1973-08-12', 'Perempuan', 'Jl. A. Cik Tunggal Gg. Mushola No. 38 Sumur Putri Teluk Betung Utara,,,-,35215,Kota Bandar Lampung', 'pegawai.png', 'ekaridhawati@gmail.com', '5b56be9446121ce55a5ccfe2d04ff873', 'Dosen', '', '2012-02-01'),
(85, '0202128103', 'DEDI IRAWAN', 'TETAP', '1810010212810002', '081369110101', 'PRINGSEWU', '1981-12-02', 'Laki-laki', 'Perumahan Golden Village Jl. Sumbawa 1, Blok F No.15,45,10,Metro Barat,34125,Kec. Metro Barat', 'pegawai.png', 'dedi.mti@gmail.com', '5348f01e665623e8dbccdcdd22af84cb', 'Dosen', '', '2012-02-01'),
(86, '0221037102', 'SRI HARTATI', 'TETAP', '1809016003710002', '', 'WAY LAYAP', '1971-03-21', 'Perempuan', 'Jln. PTPN 7 Way Berulu,5,1,Kebagusan,35371,Kab. Lampung Selatan', 'pegawai.png', 'srihartati7121@yahoo.co.id', 'b77c46c15a02167f406fccb2ddc9017d', 'Dosen', '', '2012-02-01'),
(87, '0222098401', 'GUNAYANTI KEMALASARI SIREGAR', 'TETAP', '1872056209840001', '085366183551', 'METRO', '1984-09-22', 'Perempuan', 'Metro,15,4,Margorejo,34111,Kota Metro', 'pegawai.png', 'gunayanti2017@gmail.com', '32be956d036e3de2452a688fc4f132ed', 'Dosen', '', '2012-02-01'),
(88, '9902701970', 'EKA SULISTIYORINI', 'TETAP', '1806480715071984', '', 'TAMBAHREJO', '1984-07-15', 'Perempuan', ',,,-,,tidak ada', 'pegawai.png', '', 'bcec9b12d4c65624af3c832f6c53bb12', 'Dosen', '', '2012-02-01'),
(89, '8886930017', 'ERLIAN EKA DAMAYANTI', 'TETAP', '1872047005850008', '', 'TEJOSARI', '1985-05-30', 'Perempuan', 'metro timur,11,3,tejosari,,tidak ada', 'pegawai.png', '', 'aa45a83c0ae23d2a531a0ad2624ca8a5', 'Dosen', '', '2012-02-01'),
(90, '0219028201', 'ZULKIFLI', 'TETAP', '078062019190282', '081322223418', 'LEKOR JANAPRIA', '1982-02-19', 'Laki-laki', 'Jl. HI. ABD. Mutholib No. 24,2,,Gedong Air,,Kota Bandar Lampung', 'pegawai.png', 'zulkiflist34@yahoo.co.id', '9e0831ccd75b7503af051937f24c995c', 'Dosen', '', '2012-02-01'),
(91, '0226018003', 'SATRIA ABADI', 'TETAP', '1871052601800001', '082182090959', 'DURIAN', '1980-01-26', 'Laki-laki', 'Jl.Perintis kemerdekaan no.21,4,,Tanjung Gading, Kedamaian,35128,Kota Bandar Lampung', 'pegawai.png', 'satria2601@gmail.com', '455a9cef02345923f90e56c1c28e5bce', 'Dosen', '', '2012-02-01'),
(92, '9902001702', 'LUCKY MUZAYYANAH', 'TETAP', '0404440110080419', '', 'BANDAR LAMPUNG', '1986-04-08', 'Perempuan', ',,,-,,tidak ada', 'pegawai.png', '', '0262a687a7e8622b0d2377fd20d2f751', 'Dosen', '', '2012-02-01'),
(93, '0223097201', 'RITA IRVIANI', 'TETAP', '1871036309720006', '08117911220', 'TANJUNGKARANG', '1972-09-23', 'Perempuan', 'Jl.KH.Kholib GG Sakti Raya,3,2,Pringsewu Barat,35373,Kab. Pringsewu', 'pegawai.png', 'ritairviani1@gmail.com', 'b20eb409bd89ce9b98ff424898622a2f', 'Dosen', '', '2012-02-01'),
(94, '0213098501', 'BUDI USMANTO', 'TETAP', '1810011309850005', '085357556490', 'PRINGSEWU', '1985-09-13', 'Laki-laki', 'Pringsewu Selatan,1,4,Pringsewu Selatan,35373,Kab. Pringsewu', 'pegawai.png', 'budiusmanto@gmail.com', '219a750a6f24fffca9df4426b88a319b', 'Dosen', '', '2012-02-01'),
(95, '0222127602', 'NUR AMINUDIN', 'TETAP', '1810082212760002', '081215300610', 'LUGUSARI', '1976-12-22', 'Laki-laki', 'Jl. Raya Sukoyoso,4,2,Sukoyoso,35674,Kec. Pringsewu', 'pegawai.png', 'nuraminudin.mti.ibi@gmail.com', '238822d557f0bc072a6d25e36a970781', 'Dosen', '', '2012-02-01'),
(96, '0203068901', 'RINAWATI', 'TETAP', '1806204306890002', '085366127040', 'gisting', '1989-06-03', 'Perempuan', 'Pringkumpul,3,1,Pringsewu Selatan,35373,Kab. Pringsewu', 'pegawai.png', 'rinastmik12@gmail.com', '3e64da904d851fdf2f1fc678698bb50f', 'Dosen', '', '2012-02-01'),
(97, '9902709903', 'YUDHA SETIAWAN', 'TETAP', '00281019682007', '', 'PALEMBANG', '1968-10-28', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', 'a4b98fe85f9684997cea2b0cc2a77a3f', 'Dosen', '', '2012-02-01'),
(98, '9902701688', 'SEPTI WAHYUNINGSIH', 'TETAP', '1810024409880003', '', 'parerejo', '1988-09-04', 'Perempuan', ',,,-,,tidak ada', 'pegawai.png', '', 'e566d8727f564ccc92378543951dc14c', 'Dosen', '', '2012-02-01'),
(99, '0209067002', 'ELISABET YUNAETI ANGGRAENI', 'TETAP', '1810014906700002', '082279719543', 'PRINGSEWU', '1970-06-09', 'Perempuan', 'Jl. KH. Gholib LK. IV,3,,Pringsewu Barat,35373,Kec. Pringsewu', 'pegawai.png', 'elisabet.sugianto@yahoo.co.id', '0ec8eb3ca827022a7972b8a28c3b48cd', 'Dosen', '', '2012-02-01'),
(100, '0206017201', 'AGUS SURYANA', 'TETAP', '0403308520005', '081377756502', 'BANDUNG', '1972-01-06', 'Laki-laki', 'Jl.Birgjen Katamso 78,36,,Poncowati Terbanggi Besar,34163,tidak ada', 'pegawai.png', 'suryana.suryani64@gmail.com', 'fdf9ff048373ac0e074a3e1e7b4d80ae', 'Dosen', '', '2012-02-01'),
(101, '9902701614', 'HERDIAN', 'TETAP', '1810053004860002', '', 'Palembang', '1986-04-30', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', '1bd8667c105ed0834a49c3e8aec67e60', 'Dosen', '', '2012-02-01'),
(102, '9902709906', 'SADIMIN', 'TETAP', '1810031003820000', '', 'AMBARAWA', '1982-03-10', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', 'a0b69f93d4b503a46662fe113fb80f54', 'Dosen', '', '2012-02-01'),
(103, '0230018001', 'CITRAWATI JATININGRUM', 'TETAP', '0850047001800002', '082180485538', 'BANDAR LAMPUNG', '1980-01-30', 'Perempuan', 'Jl. Perintis Kemerdekaan no.21,4,2,Kedamaian,35128,Kota Bandar Lampung', 'pegawai.png', 'citrawati1980@gmail.com', '5e506a4628f085694085dad2776db333', 'Dosen', '', '2012-02-01'),
(104, '9902701613', 'ANDI MUNANDAR', 'TETAP', '1809042403700004', '', 'pekondoh', '1970-03-24', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', '3efcf0e3968064e3c618bb80a42631a8', 'Dosen', '', '2012-02-01'),
(105, '9902701689', 'PURWANTO', 'TETAP', '1806202502860001', '', 'purwodadi', '1988-01-04', 'Perempuan', ',,,-,,tidak ada', 'pegawai.png', '', '135917d6aac1136273b953ecabf08b5d', 'Dosen', '', '2012-02-01'),
(106, '0221047202', 'IRPANGI', 'TETAP', '1810012104720002', '', 'AMBARAWA', '1972-04-21', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', '9a8bde0f99aaa1e2733371108fce1948', 'Dosen', '', '2012-02-01'),
(107, '0219049001', 'M. MUSLIHUDIN', 'TETAP', '1706101904900001', '0853-7912-3302', 'lubuk mukti', '1990-04-19', 'Laki-laki', 'Jalan Palapa, No.29, Pringsewu Selatan, Pringsewu,6,2,Pringsewu,35373,Kab. Pringsewu', 'pegawai.png', 'mmuslihudin415@gmail.com', 'e7ad59aeea3b10a1c80c5fe901bfe9fa', 'Dosen', '', '2012-02-01'),
(108, '0216098501', 'MUHAMMAD KRISTIAWAN', 'TETAP', '1802271609850001', '082180914441', 'GEDUNGSARI', '1985-09-16', 'Laki-laki', 'Desa Gedung Sari, Kec. Anak Ratu Aji, Lampung Tengah,1,3,Gedung Sari,34176,Kab. Lampung Tengah', 'pegawai.png', 'muhammadkristiawan@unib.ac.id', 'd8f15e4401ec26000b3e71f52ceb1aa5', 'Dosen', '', '2012-02-01'),
(109, '0214047701', 'DIDI SUSIANTO', 'TETAP', '1871131404770004', '081369106474', 'GUNUNG MEGANG', '1977-04-14', 'Laki-laki', 'Jl. Pulau Sanama No. 45 Way Halim Permai Bandar Lampung,,,Wayhalim Permai,35135,Kota Bandar Lampung', 'pegawai.png', 'di2.susianto@gmail.com', 'e6e1c6bf069eb058a4d6a7da0f78ad34', 'Dosen', '', '2012-02-01'),
(110, '0221068101', 'SRI IPNUWATI', 'TETAP', '1809076106810005', '087877127901', 'kedondong', '1981-06-21', 'Perempuan', 'Jl. Pasar Lama Kedondong,2,1,Kedondong,35381,Prov. Lampung', 'pegawai.png', 'nengachie@gmail.com', 'aebab27f990cc117fa83e0e4a423e234', 'Dosen', '', '2012-02-01'),
(111, '0208098301', 'RIKI RENALDO', 'TETAP', '1806010910830003', '082372662235', 'WONOSOBO', '1983-09-08', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', 'eaea3219493828eaa8db55171439bb7d', 'Dosen', '', '2012-02-01'),
(112, '9990553742', 'BHAKTI SUSILO', 'TETAP', '1809011709850004', '082180042398', 'Bagelen', '1985-09-17', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', 'aa23f231dab185ea0f48785046d84168', 'Dosen', '', '2012-02-01'),
(113, '0216107401', 'YURI FITRIAN', 'TETAP', '1871101610740002', '085783262790', 'SORONG', '1974-10-16', 'Laki-laki', 'Jl. Nunyai, Gang Tangkil No. 58, Lk. II, RT. 10, Rajabasa, Bandar Lampung.,,,-,,tidak ada', 'pegawai.png', 'yurifitrian@gmail.com', '5a1ea6a6230f11ebe48cfcb5934d434c', 'Dosen', '', '2012-02-01'),
(114, '9902709904', 'ZONICSON HARAHAP', 'TETAP', '0850102308690001', '', 'CURUP', '1969-08-23', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', '7844188fb9f70ed26a60f5af3d0eb162', 'Dosen', '', '2012-02-01'),
(115, '0210037902', 'TRI SUSILOWATI', 'TETAP', '1810015003790005', '085383018927', 'SENDANGREJO', '1979-03-10', 'Perempuan', 'Pajaresuk Pringsewu Lampung,5,3,Pajaresuk,35373,Kab. Pringsewu', 'pegawai.png', 'trisusilowati423@gmail.com', '2dcf1a72c24821a9a64803abe77e32e6', 'Dosen', '', '2012-02-01'),
(116, '0223068203', 'KASMI', 'TETAP', '1806111863068200', '081279498782', 'MERABUNG', '1982-06-23', 'Perempuan', 'Jl. Dewi Ratih III,1,1,Gading Rejo,35372,Kab. Pringsewu', 'pegawai.png', '', '97ae1d94e270fad3c7b69d13accaf8a3', 'Dosen', '', '2012-02-01'),
(117, '0226038801', 'WULANDARI', 'TETAP', '1871136603880004', '08994796611', 'TELUKBETUNG', '1988-03-26', 'Perempuan', 'jl gatot subroto gg jati baru no.35 garuntang,2,,sukaraja,35226,Kota Bandar Lampung', 'pegawai.png', 'seankoko008@gmail.com', '944c51c4f3930a86e4069e5d8ccd4460', 'Dosen', '', '2012-02-01'),
(118, '9902709901', 'RONALD HANANTO PANJAITAN', 'TETAP', '00170619702007', '', 'METRO', '1970-06-17', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', 'a0dca5cdc36b0fef80c8f658a656938b', 'Dosen', '', '2012-02-01'),
(119, '9902701886', 'ASEP SAEFUDIN', 'TETAP', '00030519832009', '', 'SENDANG ASRI', '1983-05-03', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', '2ff953a8198ee5fffc786b7a67a73b1b', 'Dosen', '', '2012-02-01'),
(120, '0407017101', 'SUCIPTO', 'TETAP', '100900701711001', '085896964546', 'BANDAR LAMPUNG', '1971-01-07', 'Laki-laki', 'Ds.Padmosari2,Kel.Haduyang,Kec.Natar Lampung Selatan,11,3,Haduyang,35362,Kab. Lampung Selatan', 'pegawai.png', 'cipto.adam71@gmail.com', '0ad6e7462a5c3b07d8f0bb6e96e0c4f3', 'Dosen', '', '2012-02-01'),
(121, '9902701692', 'MUHARUDIN', 'TETAP', '1806202502860001', '', 'baturaja', '1960-12-27', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', 'a9ae01becf0402cab7a16d615d9914a5', 'Dosen', '', '2012-02-01'),
(122, '9902709902', 'KOMARUDIN', 'TETAP', '00041019682007', '', 'WARINGIN SARI TIMUR', '1968-10-04', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', '077fecbb30a8d45f2185ea0b1bd96f63', 'Dosen', '', '2012-02-01'),
(123, '9990527132', 'OKTAFIANTO', 'TETAP', '1810031210830001', '082175332085', 'AMBARAWA', '1983-10-12', 'Laki-laki', 'PEREREJO,5,2,PAREREJO,35372,Kab. Pringsewu', 'pegawai.png', 'oxtaph@gmail.com', 'd8423553f888042b1eea6aee6c6a22a6', 'Dosen', '', '2012-02-01'),
(124, '9902701848', 'HETI KRISLIANA', 'TETAP', '1806480811111985', '', 'WONOKARTO', '1985-11-11', 'Perempuan', ',,,-,,tidak ada', 'pegawai.png', '', '642f1529f6f6ecd364fc2b4a5a7908e2', 'Dosen', '', '2012-02-01'),
(125, '0207028103', 'ANDINO MASELENO', 'TETAP', '1871020702810004', '082179769959', 'TANJUNG KARANG', '1981-02-07', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', 'ac0696363496b5db8a03423100236526', 'Dosen', '', '2012-02-01'),
(126, '0228116703', 'ANDREAS ANDOYO', 'TETAP', '1806062811674688', '081369456777', 'PRINGSEWU', '1967-11-28', 'Laki-laki', 'Pajaresuk 2,1,4,Pajaresuk,35373,Kab. Pringsewu', 'pegawai.png', 'Andreasandoyo8@gmail.com', '1dae87e48d469a5d19ae04f86fd19c70', 'Dosen', '', '2012-02-01'),
(127, '8873820016', 'AGUS IRAWAN', 'TETAP', '1810022808850001', '-', 'blitarejo', '1985-08-28', 'Laki-laki', 'Pekon Blitarejo,6,2,Blitarejo,35372,Kab. Pringsewu', 'pegawai.png', 'agusirawan814@gmail.com', '9168d10fd02eab2c7292c4386e361cef', 'Dosen', '', '2012-02-01'),
(128, '0209068801', 'NUNGSIYATI', 'TETAP', '1806124906880002', '085269964136', 'KANOMAN', '1988-06-09', 'Perempuan', 'Jl. Ir. H. Juanda,1,1,Kota Agung,35384,Kab. Tenggamus', 'pegawai.png', 'nungsiyati5@gmail.com', '4d645708b32bbaa2c90aed103c3ecb4c', 'Dosen', '', '2012-02-01'),
(129, '9902709905', 'LILIN MAWARTI', 'TETAP', '0420180153013051', '', 'WARGOMULYO', '1987-05-13', 'Perempuan', ',,,-,,tidak ada', 'pegawai.png', '', 'f28e3572b8f6c33aee52a0c25ae3242e', 'Dosen', '', '2012-02-01'),
(130, '9902701619', 'ARMAN', 'TETAP', '1810012607720001', '', 'kembang putih', '1972-07-26', 'Laki-laki', ',,,-,,tidak ada', 'pegawai.png', '', 'aed66cdc99e93a10271768f07042774e', 'Dosen', '', '2012-02-01'),
(131, '8864210016', 'SAIFUL ISNANDAR', 'TETAP', '1810020704830002', '082281602265', 'GADINGREJO', '1983-04-07', 'Laki-laki', 'GADING REJO,2,5,WONODADI,,Kab. Pringsewu', 'pegawai.png', '', 'e1570e0a7df421ba0ad4d169f9ea8a8f', 'Dosen', '', '2012-02-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(25) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`) VALUES
(1, 'Sistem Informasi'),
(2, 'Manajemen Informatika'),
(3, 'Binis Digital'),
(4, 'Manjemen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(20) NOT NULL,
  `nama_app` varchar(100) NOT NULL,
  `tahun` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `alias` varchar(350) NOT NULL,
  `alamat` text NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `akabest` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `nama_app`, `tahun`, `nama`, `alias`, `alamat`, `isi`, `gambar`, `akabest`) VALUES
(1, 'SIMPEG', '2022/2023', 'SISTEM INFORMASI PEGAWAI IBN', 'IBN LAMPUNG', 'JL Wismarini No 09 Pringsewu Lampung', '', '26122022051024.jpg', 'mardybest@gmail.com'),
(2, 're', '', 'MARDIYANTO', '19081989578978975', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `repo`
--

CREATE TABLE `repo` (
  `id_repo` int(100) NOT NULL,
  `id_pegawai` int(100) NOT NULL,
  `id_prodi` int(100) NOT NULL,
  `id_tipe` int(100) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `file_repo` varchar(200) DEFAULT NULL,
  `tanggal` varchar(200) NOT NULL,
  `tanggal_buat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tahun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `repo`
--

INSERT INTO `repo` (`id_repo`, `id_pegawai`, `id_prodi`, `id_tipe`, `judul`, `deskripsi`, `gambar`, `file_repo`, `tanggal`, `tanggal_buat`, `tahun`) VALUES
(1, 1, 2, 3, 'PENGANTAR SISTEM INFORMASI', 'Sistem informasi merupakan suatu sistem yang memiliki \r\ntujuan untuk mengolah, menyimpan, dan menyediakan \r\ninformasi untuk keperluan organisasi atau individu. Buku \r\npengantar sistem informasi ini akan memberikan pemahaman \r\ntentang konsep dan prinsip dasar sistem informasi, serta \r\nmembahas tentang bagaimana sistem informasi dapat \r\nmemberikan manfaat bagi organisasi dan individu dalam \r\nmengambil keputusan dan meningkatkan efisiensi.\r\nBuku ini juga akan membahas tentang berbagai macam jenis \r\nsistem informasi yang ada, termasuk sistem informasi \r\nmanajemen, sistem informasi transaksional, dan sistem \r\ninformasi geografis. Selain itu, buku ini juga akan membahas \r\ntentang proses pengembangan sistem informasi, termasuk \r\nidentifikasi kebutuhan, analisis kebutuhan, desain sistem, \r\nimplementasi, dan pemeliharaan.\r\nDengan membaca buku ini, diharapkan Anda dapat memahami \r\nkonsep dan prinsip dasar sistem informasi, serta dapat \r\nmengaplikasikan pengetahuan tersebut dalam pengembangan \r\nsistem informasi yang efektif dan bermanfaat bagi organisasi \r\natau individu. \r\n', 'IMG-20230108-WA0036.jpg', 'Pengantar_Sistem_Informasi_Full.pdf', '2023-02-16', '2024-06-28 07:42:15', '2023'),
(2, 2, 1, 3, 'Buku Research Methodology', 'Buku Research Methodology', '', 'Buku_Research_Methodology.pdf', '2023-02-24', '2024-06-28 07:42:15', '2023'),
(3, 2, 1, 2, 'Modul Jaringan Komputer', 'Modul Jaringan Komputer', '', 'Modul_Jaringan_Komputer.pdf', '2023-02-24', '2024-06-28 07:42:15', '2023'),
(4, 2, 1, 2, 'Buku Financial Management', 'Buku Financial Management', '', 'AndinoMaselenoandRahulChauhan-FinancialManagement(1).pdf', '2023-02-24', '2024-06-28 07:42:15', '2023'),
(5, 2, 1, 2, 'Modul Pemrograman Web', 'Modul Pemrograman Web', '', 'Modul_Pemrograman_Web.pdf', '2023-02-24', '2024-06-28 07:42:15', '2023'),
(6, 2, 1, 4, 'HAKI Fuzzy Logic and Dempster-Shafer Theory to Predict the Risk of Disease Spreading', '', '', 'HAKI_-_Fuzzy_Logic_and_Dempster-Shafer_Theory.pdf', '2018-07-30', '2024-06-28 07:42:15', '2018'),
(7, 2, 1, 3, 'Sistem Pendukung Keputusan - Konsep, Implementasi dan Pengembangan', 'Sistem Pendukung Keputusan (Decision Support Systems)\r\ndisingkat DSS merupakan bagian dalam sistem informasi berbasis\r\nkomputer (termasuk sistem berbasis pengetahuan/ manajemen\r\npengetahuan) yang dipakai untuk mendukung pengambilan\r\nkeputusan dalam suatu organisasi atau perusahaan. Sistem komputer\r\ntersebut mengolah data menjadi informasi yang digunakan untuk\r\nmengambil keputusan dari masalah semi-terstruktur yang spesifik.\r\nDSS dapat sepenuhnya terkomputerisasi atau didukung oleh manusia.\r\nDalam beberapa kasus, DSS memungkinkan untuk menggabungkan\r\nkeduanya. Sistem yang ideal menganalisis informasi dan benar-benar\r\nmembuat keputusan bagi pengguna. Setidaknya, para pengambil\r\nkeputusan memungkinkan pengguna manusia untuk membuat\r\nkeputusan yang lebih tepat dengan lebih cepat', '', 'BUKU_SISTEM_PENDUKUNG_KEPUTUSAN.pdf', '2021-02-07', '2024-06-28 07:42:15', '2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `username`, `pwd`, `url`, `created`, `modified`) VALUES
(1, '023109', 'p37sewfp3w', 'http://103.126.172.193:8200', '2024-05-27 12:38:49', '2024-05-27 12:38:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_repo`
--

CREATE TABLE `tipe_repo` (
  `id_tipe` int(25) NOT NULL,
  `nama_tipe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tipe_repo`
--

INSERT INTO `tipe_repo` (`id_tipe`, `nama_tipe`) VALUES
(1, 'JURNAL'),
(2, 'BAHAN AJAR'),
(3, 'BUKU'),
(4, 'SERTIFIKAT'),
(5, 'CHAPTER'),
(6, 'SIMILARITY CHECK'),
(7, 'DOKUMEN'),
(8, 'HAKI'),
(9, 'REVIEW Journal  & Correspondence'),
(10, 'MODUL'),
(11, 'PENGABDIAN'),
(12, 'PENDIDIKAN DAN PENGAJARAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`) VALUES
(1, 'Adminatun Jhony', 'admin', '21232f297a57a5a743894a0e4a801fc3', '482937136_avatar.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_repo` (`id_repo`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `repo`
--
ALTER TABLE `repo`
  ADD PRIMARY KEY (`id_repo`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_tipe` (`id_tipe`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tipe_repo`
--
ALTER TABLE `tipe_repo`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `repo`
--
ALTER TABLE `repo`
  MODIFY `id_repo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tipe_repo`
--
ALTER TABLE `tipe_repo`
  MODIFY `id_tipe` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `dokumen_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
