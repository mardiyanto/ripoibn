-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Jun 2024 pada 14.08
-- Versi server: 10.6.16-MariaDB-cll-lve
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1732927_repo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` int(10) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `author`) VALUES
(1, 'MARDIYANTO, S.Kom., M.T.I'),
(2, 'Andino Maseleno, Ph.D.'),
(4, 'Dian Puspita, M.Pd.'),
(5, 'Citrawati Jatiningrum, SE, MSi, PhD'),
(6, 'Rina Wati, M.T.I.'),
(7, 'Leni Anggraeni, M.T.I.'),
(8, 'Didi Susianto, ST., M.Kom'),
(9, 'Dr. Syaiful Bakhri, S.Sos., M.M.'),
(10, 'Pamuji Setiawan,S.Kom.,M.T.I'),
(11, 'Susi Sulastri, S.P., M.M'),
(12, 'Misubargo, S.E., M.M'),
(13, 'Sugiono, S.E., M.M'),
(14, 'Nurlela, M.Pd.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` int(10) NOT NULL,
  `program_studi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `program_studi`) VALUES
(1, 'Sistem Informasi'),
(2, 'Manajemen Informatika'),
(4, 'Manjemen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `repo`
--

CREATE TABLE `repo` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `year` int(4) NOT NULL,
  `id_author` int(10) NOT NULL,
  `id_type` int(10) NOT NULL,
  `id_prodi` int(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `file_repo` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `repo`
--

INSERT INTO `repo` (`id`, `date`, `year`, `id_author`, `id_type`, `id_prodi`, `title`, `description`, `file_repo`, `thumbnail`) VALUES
(1, '2023-02-16', 2023, 1, 3, 2, 'PENGANTAR SISTEM INFORMASI', 'Sistem informasi merupakan suatu sistem yang memiliki \r\ntujuan untuk mengolah, menyimpan, dan menyediakan \r\ninformasi untuk keperluan organisasi atau individu. Buku \r\npengantar sistem informasi ini akan memberikan pemahaman \r\ntentang konsep dan prinsip dasar sistem informasi, serta \r\nmembahas tentang bagaimana sistem informasi dapat \r\nmemberikan manfaat bagi organisasi dan individu dalam \r\nmengambil keputusan dan meningkatkan efisiensi.\r\nBuku ini juga akan membahas tentang berbagai macam jenis \r\nsistem informasi yang ada, termasuk sistem informasi \r\nmanajemen, sistem informasi transaksional, dan sistem \r\ninformasi geografis. Selain itu, buku ini juga akan membahas \r\ntentang proses pengembangan sistem informasi, termasuk \r\nidentifikasi kebutuhan, analisis kebutuhan, desain sistem, \r\nimplementasi, dan pemeliharaan.\r\nDengan membaca buku ini, diharapkan Anda dapat memahami \r\nkonsep dan prinsip dasar sistem informasi, serta dapat \r\nmengaplikasikan pengetahuan tersebut dalam pengembangan \r\nsistem informasi yang efektif dan bermanfaat bagi organisasi \r\natau individu. \r\n', 'Pengantar_Sistem_Informasi_Full.pdf', 'IMG-20230108-WA0036.jpg'),
(2, '2023-02-24', 2023, 2, 3, 1, 'Buku Research Methodology', 'Buku Research Methodology', 'Buku_Research_Methodology.pdf', ''),
(3, '2023-02-24', 2023, 2, 2, 1, 'Modul Jaringan Komputer', 'Modul Jaringan Komputer', 'Modul_Jaringan_Komputer.pdf', ''),
(4, '2023-02-24', 2023, 2, 2, 1, 'Buku Financial Management', 'Buku Financial Management', 'AndinoMaselenoandRahulChauhan-FinancialManagement(1).pdf', ''),
(5, '2023-02-24', 2023, 2, 2, 1, 'Modul Pemrograman Web', 'Modul Pemrograman Web', 'Modul_Pemrograman_Web.pdf', ''),
(6, '2018-07-30', 2018, 2, 4, 1, 'HAKI Fuzzy Logic and Dempster-Shafer Theory to Predict the Risk of Disease Spreading', '', 'HAKI_-_Fuzzy_Logic_and_Dempster-Shafer_Theory.pdf', ''),
(7, '2021-02-07', 2021, 2, 3, 1, 'Sistem Pendukung Keputusan - Konsep, Implementasi dan Pengembangan', 'Sistem Pendukung Keputusan (Decision Support Systems)\r\ndisingkat DSS merupakan bagian dalam sistem informasi berbasis\r\nkomputer (termasuk sistem berbasis pengetahuan/ manajemen\r\npengetahuan) yang dipakai untuk mendukung pengambilan\r\nkeputusan dalam suatu organisasi atau perusahaan. Sistem komputer\r\ntersebut mengolah data menjadi informasi yang digunakan untuk\r\nmengambil keputusan dari masalah semi-terstruktur yang spesifik.\r\nDSS dapat sepenuhnya terkomputerisasi atau didukung oleh manusia.\r\nDalam beberapa kasus, DSS memungkinkan untuk menggabungkan\r\nkeduanya. Sistem yang ideal menganalisis informasi dan benar-benar\r\nmembuat keputusan bagi pengguna. Setidaknya, para pengambil\r\nkeputusan memungkinkan pengguna manusia untuk membuat\r\nkeputusan yang lebih tepat dengan lebih cepat', 'BUKU_SISTEM_PENDUKUNG_KEPUTUSAN.pdf', ''),
(8, '2021-02-07', 2021, 2, 5, 1, 'Chapter 7  - Fuzzy Logic, Buku Sistem Pendukung Keputusan', '', 'Chapter_7_-_Fuzzy_Logic,_Buku_Sistem_Pendukung_Keputusan.pdf', ''),
(9, '2022-02-07', 2022, 2, 6, 1, 'Pattern recognition and features selection for speech emotion recognition model using deep learning', 'Similarity Check - Pattern recognition and features selection for speech emotion recognition model using deep learning', '2_-_Pattern_Recognition_Report1.pdf', ''),
(10, '2023-02-07', 2023, 2, 6, 1, 'Clustering and Indexing of Multiple Documents Using Feature Extraction through Apache Hadoop on Big Data', 'Similarity Check - Clustering and Indexing of Multiple Documents Using Feature Extraction through Apache Hadoop on Big Data', '3_-_Clustering_and_Indexing_of_Multiple_Documents_using_Feature_Extraction.pdf', ''),
(11, '2023-03-15', 2023, 2, 6, 1, 'Web-Based Sales Information System of Sengon and Chocolate Seeds', 'SIMILARITY CHECK - Web-Based Sales Information System of Sengon and Chocolate Seeds', '37_-_Web-Based_Sales_Information_System_of_Sengon_and_Chocolate_Seeds.pdf', ''),
(12, '2023-03-06', 2023, 2, 6, 1, 'Impact of COVID-19 on Fintech with Reference to Youngster', 'SIMILARITY CHECK - Impact of COVID-19 on Fintech with Reference to Youngster', '39_-_Impact_of_COVID-19_on_Fintech_with_Reference_to_Youngster.pdf', ''),
(13, '2023-03-16', 2023, 2, 6, 1, 'Research Study on impact of Fintech on Youngsters', 'Similarity Check - Research Study on impact of Fintech on Youngsters', '38_-_Research_Study_on_impact_of_Fintech_on_Youngsters.pdf', ''),
(14, '2023-03-16', 2023, 2, 6, 1, 'The Best Public Health Center Selection Decision Support System', 'Similarity Check - The Best Public Health Center Selection Decision Support System', '32_-_The_Best_Public_Health_Center_Selection_Decision_Support_System.pdf', ''),
(15, '2023-03-16', 2023, 2, 6, 1, 'The Best Student Decision Support System &#40;Basketball&#41;', 'Similarity Check - The Best Student Decision Support System &#40;Basketball&#41;', '36_-_The_Best_Student_Decision_Support_System_(Basketball).pdf', ''),
(16, '2023-03-16', 2023, 2, 6, 1, 'The Design of Goods Data Storage Application Based on Android', 'Similarity Check - The Design of Goods Data Storage Application Based on Android', '30_-_The_Design_of_Goods_Data_Storage_Application_Based_on_Android.pdf', ''),
(17, '2023-03-18', 2023, 2, 6, 1, 'A Bayesian Hau-Kashyap Approach for Hepatitis Disease Detection', 'SIMILARITY CHECK - A Bayesian Hau-Kashyap Approach for Hepatitis Disease Detection', '19_-_A_Bayesian_Hau-Kashyap_Approach_for_Hepatitis_Disease_Detection.pdf', ''),
(18, '2023-03-18', 2023, 2, 6, 1, 'IoT-Based Automated Skin Lesion Detection and Classification Using Gray Wolf Optimization with Deep Neural Network', 'SIMILARITY CHECK - IoT-Based Automated Skin Lesion Detection and Classification Using Gray Wolf Optimization with Deep Neural Network', '9_-_IoT-Based_Automated_Skin_Lesion_Detection_and_Classification_Using_Gray_Wolf_Optimization_with_Deep_Neural_Network(1).pdf', ''),
(19, '2023-03-18', 2023, 2, 6, 1, 'Analysis of Smart Home Recommendation System from Natural Language Processing Services with Clustering Technique', 'SIMILARITY CHECK - Analysis of Smart Home Recommendation System from Natural Language Processing Services with Clustering Technique', '8_-_Analysis_of_Smart_Home_Recommendation_System_from_Natural_Language_Processing_Services_with_Clustering_Technique.pdf', ''),
(20, '2023-03-18', 2023, 2, 6, 1, 'Bat optimization algorithm', '', '13_-_Bat_optimization_algorithm.pdf', ''),
(21, '2023-03-18', 2023, 2, 6, 1, 'Big Data Emerging Technology - Insights into Innovative Environment for Online Learning Resources', 'Similarity Check - Big Data Emerging Technology - Insights into Innovative Environment for Online Learning Resources', '16_-_Big_Data_Emerging_Technology_-_Insights_into_Innovative_Environment_for_Online_Learning_Resources.pdf', ''),
(22, '2023-03-18', 2023, 2, 6, 1, 'Combining Fuzzy Logic and Dempster-Shafer Theory', 'Similarity Check - Combining Fuzzy Logic and Dempster-Shafer Theory', '22_-_Combining_Fuzzy_Logic_and_Dempster-Shafer_Theory.pdf', 'thumbnail_3.jpg'),
(23, '2023-03-18', 2023, 2, 6, 1, 'Combining the Previous Measure of Evidence to Educational Entrance Examination', 'Similarity Check - Combining the Previous Measure of Evidence to Educational Entrance Examination', '26_-_Combining_the_Previous_Measure_of_Evidence_to_Educational_Entrance_Examination.pdf', ''),
(24, '2023-03-18', 2023, 2, 6, 1, 'Demystifying Learning Analytics in Personalised Learning', 'Similarity Check - Demystifying Learning Analytics in Personalised Learning', '24_-_Demystifying_Learning_Analytics_in_Personalised_Learning.pdf', ''),
(25, '2023-03-18', 2023, 2, 6, 1, 'Design Restful Web Service of National Population Database for Supporting E-Health Interoperability Service', 'Similarity Check - Design Restful Web Service of National Population Database for Supporting E-Health Interoperability Service', '15_-_Design_Restful_Web_Service_of_National_Population_Database_for_Supporting_E-Health_Interoperability_Service.pdf', ''),
(26, '2023-03-20', 2023, 2, 6, 1, 'Development of Web Mobile Applications Schedule of Village', 'Similarity Check - Development of Web Mobile Applications Schedule of Village', '10_-_Development_of_Web_Mobile_Applications_Schedule_of_Village.pdf', ''),
(27, '2023-03-19', 2023, 2, 6, 1, 'Ebola virus disease detection using Dempster-Shafer evidence theory', 'Similarity Check - Ebola virus disease detection using Dempster-Shafer evidence theory', '34_-_Ebola_virus_disease_detection_using_Dempster-Shafer_evidence_theory.pdf', ''),
(28, '2023-03-19', 2023, 2, 6, 1, 'Fuzzy Logic and Dempster-Shafer belief theory to detect the risk of disease spreading of African Trypanosomiasis', 'Similarity Check - Fuzzy Logic and Dempster-Shafer belief theory to detect the risk of disease spreading of African Trypanosomiasis', '35_-_Fuzzy_Logic_and_Dempster-Shafer_belief_theory_to_detect_the_risk_of_disease_spreading_of_African_Trypanosomiasis(2).pdf', ''),
(29, '2023-03-19', 2023, 2, 6, 1, 'CEL - Citizen Economic Level using SAW', 'Similarity Check - CEL - Citizen Economic Level using SAW', '12a_-_CEL_-_Citizen_Economic_Level_using_SAW.pdf', ''),
(30, '2023-03-19', 2023, 2, 6, 1, 'Opinion Mining Analysis', 'Similarity Check - Opinion Mining Analysis', '12b_-_Opinion_Mining_Analysis.pdf', ''),
(31, '2023-03-19', 2023, 2, 6, 1, 'Finding Kicking Range of Sepak Takraw Game - A Fuzzy Logic Approach', 'Similarity Check - Finding Kicking Range of Sepak Takraw Game - A Fuzzy Logic Approach', '33_-_Finding_Kicking_Range_of_Sepak_Takraw_Game_-_A_Fuzzy_Logic_Approach.pdf', 'thumbnail2.jpg'),
(32, '2023-03-19', 2023, 2, 6, 1, 'Finding Kicking Range of Sepak Takraw Game - Fuzzy Logic and Dempster-Shafer Theory Approach', 'Similarity Check - Finding Kicking Range of Sepak Takraw Game - Fuzzy Logic and Dempster-Shafer Theory Approach', '23_-_Finding_Kicking_Range_of_Sepak_Takraw_Game_-_Fuzzy_Logic_and_Dempster-Shafer_Theory_Approach.pdf', 'thumbnail_2.jpg'),
(33, '2023-03-19', 2023, 2, 6, 1, 'Fuzzy Logic and Dempster-Shafer Theory to Predict HPAI H5N1', 'Similarity Check - Fuzzy Logic and Dempster-Shafer Theory to Predict HPAI H5N1', '27_-_Fuzzy_Logic_and_Dempster-Shafer_Theory_to_Predict_HPAI_H5N1.pdf', ''),
(34, '2023-03-19', 2023, 2, 6, 1, 'Hau-Kashyap approach for student\'s level of expertise', 'Similarity Check - Hau-Kashyap approach for student\'s level of expertise', '4_-_Hau-Kashyap_approach_for_students_level_of_expertise.pdf', 'thumbnail_4.jpg'),
(35, '2023-03-19', 2023, 2, 6, 1, 'Pattern Recognition Report', 'Similarity Check - Pattern Recognition Report', '2_-_Pattern_Recognition_Report2.pdf', ''),
(36, '2023-03-19', 2023, 2, 6, 1, 'Perancangan Sistem Pengolahan Data Penyuluh Agama', 'Similarity Check - Perancangan Sistem Pengolahan Data Penyuluh Agama', '14_-_Perancangan_Sistem_Pengolahan_Data_Penyuluh_Agama.pdf', ''),
(37, '2023-03-20', 2023, 2, 6, 1, 'Malaria Detection', 'Similarity Check- Malaria Detection', '5_-_Malaria_Detection.pdf', 'thumbnail11.jpg'),
(38, '2023-03-20', 2023, 2, 6, 1, 'MTSE', 'Similarity Check - MTSE', '6_-_MTSE.pdf', 'thumbnail_5.jpg'),
(39, '2023-03-20', 2023, 2, 6, 1, 'Futuristic Trends in Artificial Intelligence', 'Futuristic Trends in Artificial Intelligence', 'Book_-_Futuristic_Trends_in_AI.pdf', ''),
(40, '2023-03-20', 2023, 2, 6, 1, 'Prototype Decision Support System to Detect Disaster Prone Areas', 'Prototype Decision Support System to Detect Disaster Prone Areas', '31_-_Prototype_Decision_Support_System_to_Detect_Disaster_Prone_Areas.pdf', ''),
(41, '2023-03-20', 2023, 2, 6, 1, 'Revolutionizing Education through Artificial Intelligence', 'Similarity Check - Revolutionizing Education through Artificial Intelligence', '28_-_Revolutionizing_Education_through_Artificial_Intelligence.pdf', ''),
(42, '2023-03-21', 2023, 2, 6, 1, 'Prediction of strength and analysis in self-compacting concrete using machine learning', 'Similarity Check - Prediction of strength and analysis in self-compacting concrete using machine learning', '29_-_Prediction_of_strength_and_analysis_in_self-compacting_concrete_using_machine_learning.pdf', ''),
(43, '2023-03-21', 2023, 2, 6, 1, 'Hash Function Based Optimal Block Chain Model for the Internet of Things (IoT)', 'Similarity Check - Hash Function Based Optimal Block Chain Model for the Internet of Things (IoT)', '20_-_Hash_Function_Based_Optimal_Block_Chain_Model_for_the_Internet_of_Things_(IoT).pdf', ''),
(44, '2023-03-21', 2023, 2, 7, 1, 'Alat Monitoring dan Otomatisasi Rumah Burung Walet', 'Dokumen Paten - Alat Monitoring dan Otomatisasi Rumah Burung Walet', 'Dokumen_Paten_-_Alat_Monitoring_dan_Otomatisasi_Rumah_Burung_Walet.pdf', ''),
(45, '2023-03-21', 2023, 2, 6, 1, 'An Intelligent Intrusion Detection for Smart Cities Application', 'Similarity Check - An Intelligent Intrusion Detection for Smart Cities Application', 'LAST_-_An_Intelligent_Intrusion_Detection_for_Smart_Cities_Application.pdf', ''),
(46, '2023-03-21', 2023, 2, 6, 1, 'An Artificial Intelligence-Based Improved Grasshopper Optimization Algorithm for Attack and Anomaly Detection in Smart Societies', 'Similarity Check - An Artificial Intelligence-Based Improved Grasshopper Optimization Algorithm for Attack and Anomaly Detection in Smart Societies', 'LAST_-_An_Artificial_Intelligence-Based_Improved_Grasshopper_Optimization_Algorithm.pdf', ''),
(47, '2023-03-21', 2023, 2, 6, 1, 'Exploring Adaptive Teaching Competencies in Big Data Era', 'Similarity Check - Exploring Adaptive Teaching Competencies in Big Data Era', '17_-_Exploring_Adaptive_Teaching_Competencies_in_Big_Data_Era.pdf', ''),
(48, '2023-03-22', 2023, 2, 3, 1, 'Artificial Intelligence Techniques in IoT Sensor Networks', '', 'Artificial_Intelligence_Techniques_in_IoT_Sensor_Networks.pdf', ''),
(49, '2023-03-22', 2023, 2, 6, 1, 'Access control and classifier-based blockchain technology in e-healthcare applications', 'Similarity Check - Access control and classifier-based blockchain technology in e-healthcare applications', '21_-_Access_control_and_classifier-based_blockchain_technology_in_e-healthcare_applications.pdf', ''),
(50, '2023-03-22', 2023, 2, 3, 1, 'Intelligent Data Security Solutions for e-Health Applications', 'BOOK - Intelligent Data Security Solutions for e-Health Applications', 'BOOK_-_Intelligent_Data_Security_Solutions_for_e-Health_Applications.pdf', ''),
(51, '2022-09-02', 2022, 4, 2, 1, 'Modul Pembelajaran Etika Profesi', 'Bahan Ajar Modul Pembelajaran Etika Profesi', 'Modul_Etika.pdf', 'cover_etika_page-0001.jpg'),
(53, '2022-01-25', 2022, 4, 2, 1, 'Modul Pengenalan Sistem Informasi', 'Modul Pengenalan Sistem Informasi', 'Modul_PSI.pdf', 'cover_psi_page-0001.jpg'),
(54, '2020-12-19', 2020, 4, 2, 1, 'Modul Pemakaian Huruf, Kata, dan Tanda Baca', 'Bahan Ajar Modul Pemakaian Huruf, Kata, dan Tanda Baca', 'Modul_EyD1.pdf', 'cover_eyd_page-00011.jpg'),
(55, '2021-02-08', 2021, 5, 1, 1, 'Similarity Check AN INVESTIGATION ON THE EFFECT OF AUDIT COMMITTEE ON  FINANCIAL REPORTING QUALITY IN PRE AND POST IFRS ADOPTION: EVIDENCE FROM MALAYSIAN COMPANIES', 'Purpose of study: This study sought to investigate the effect of the audit committee on Financial Reporting Quality \r\n(FRQ), explicitly focuses on the period pre- and post-mandatory IFRS adoption in Malaysia. The Financial Reporting \r\nQuality in this study proxied by earnings management. Malaysian.\r\nMethodology: The sample study has covered 81 listed companies on Bursa Malaysia, with 567 observations, which \r\nexamined the time of 2009 to 2015. The relationship was analyzed by statistical multiple regression linear methods and \r\nalso examined the significance of differences between pre and post IFRS adoption by paired sample t-test.\r\nResult: The main finding reveals that the relationship between the audit committee and financial reporting quality after \r\nIFRS adoption in Malaysia has more significant. However, empirical evidence showed that the post period of mandatory \r\nIFRS evidently no significant difference level of earnings management practice. This result indicates that the IFRS \r\nadoption cannot reduce managerial discretion yet and the possibility for EM manipulation for Malaysian companies.', 'Turnitin_Paper_ImranQureshi_29_docx.pdf', 'Turnitin_An_Investigation_on_the_Effect_of_AC.pdf'),
(56, '2020-08-07', 2020, 6, 2, 1, 'Modul Rekayasa Perangkat Lunak', '', 'MODUL_RPL.pdf', ''),
(57, '2021-01-02', 2021, 6, 2, 1, 'Modul Jaringan Komputer', '', 'MODUL_JARKOM(Autosaved).pdf', ''),
(58, '2021-09-10', 2021, 6, 2, 1, 'Modul Bahasa Pemrograman Java', '', 'MODUL_PEMROGRAMAN_JAVA.pdf', ''),
(59, '2020-01-10', 2020, 6, 2, 1, 'Modul Sistem Pendukung Keputusan', '', 'MODUL_SPK.pdf', ''),
(60, '2022-08-10', 2022, 8, 10, 1, 'MODUL SISTEM BASIS DATA', 'Modul Sistem Basis Data dibuat berdasarkan sumber-sumber yang sudah banyak digunakan. Pada modul inimembahas mengenai konsep Sistem Basis Data secara umum. Modul ini membahas mengenai Konsep Dasar Basis Data (Database), DBMS & Perancangan Basis Data, Model Data, Entity Relationship Diagram (ERD), Normalisasi, Bahasa Query Formal,Bahasa Query Terapan, Bahasa Query Terapan lanjutan, Basis Data Terdistribusi, Perancangan dan Implementasi Basisdata Menggunakan DB Designer, Lingkungan Basis Data.', 'Modul_SBD.pdf', 'Screen_Shot_2023-03-31_at_11.28.07.png'),
(61, '2022-01-10', 2022, 8, 10, 1, 'MODUL JARINGAN KOMPUTER', 'Pada Modul Jaringan Komputer akan dibahas mengenai Konsep Dasar Jaringan, Model Referensi, Topologi Jaringan Komputer, IP Address, Subnetting, Protocol, Bridging, Switching, Routing, dan Routing Protocol.', 'Modul_jaringan_komputer.pdf', 'Jenis-Jenis-Jaringan-Komputer.webp'),
(62, '2021-02-08', 2021, 5, 9, 1, 'Revision & Correspondent HSSR Journal', 'Correspondence & Revison HSSR Journal', 'Correspondent_HSSR_Journal.pdf', ''),
(63, '2019-08-13', 2019, 6, 2, 1, 'Modul Interaksi Manusia dan Komputer', '', 'MODUL_IMK.pdf', ''),
(64, '2021-10-14', 2021, 5, 2, 1, 'Modeul Akuntansi Dasar', '', 'MODUL_AKUNTANSI_DASAR_(Citrawati_JN).pdf', ''),
(65, '2023-11-02', 2023, 5, 8, 1, 'HAKI Good Corporate  Governance dan Entreprise Risk Management', 'HAKI Buku Monograf Corporate Governance dan Entreprise Risk Management', 'sertifikat_EC00202220210-3.pdf', ''),
(66, '2021-02-11', 2021, 5, 8, 1, 'HAKI Buku Referensi Pendidikan Kewirausahaan di Indonesia', '', 'sertifikat_Buku_Kewirausahaan_EC00202246297.pdf', ''),
(67, '2021-03-22', 2021, 5, 8, 1, 'HAKI Buku Digital Kewirausahaan', '', 'sertifikat__Buku_Digital_UMKM_EC00202228022.pdf', ''),
(68, '2020-02-13', 2020, 5, 8, 1, 'HAKI Model Penelitian Pendidikan Kewirausahaan 4.0', '', 'sertifikat_EC002020594201.pdf', ''),
(69, '2020-06-22', 2020, 5, 8, 1, 'HAKI Buku Manajemen Keuangan', '', 'sertifikat_HAKI_Buku_Manajemen_Keuangan.pdf', ''),
(70, '2020-02-28', 2020, 5, 8, 1, 'HAKI Buku Bisnis Online', '', 'sertifikat_HAKI_Buku_Bisnis_Online.pdf', ''),
(71, '2021-07-12', 2021, 5, 10, 1, 'Modul Metode Penelitian', '', 'MODUL_METODE_PENELITIAN_(Citrawati_JN).pdf', ''),
(72, '2020-01-03', 2020, 5, 10, 1, 'Modul Statistika', '', 'Modul_Statistik_(CITRAWATI_JN).pdf', ''),
(73, '2020-09-12', 2020, 5, 6, 1, 'The Mediating of Organizational Commitment on Work Motivation and Lecturer Performance: The Four-Dimensional Model of Organizational Commitment', '', 'Turnitin_WOS_Citrawati_OK.pdf', ''),
(74, '2022-11-02', 2022, 5, 6, 1, 'The Investigation of Ownership Concentration and Board Composition on Disclosure Quality in the Context of Minority Expropriation', '', 'Turnitin_Linguitics_CITRA.pdf', ''),
(75, '2022-12-07', 2022, 5, 3, 1, 'Buku Teknologi Kewirausahaan Digital dan UMKM', '', 'FullBook_Teknologi_Digital_Kewirausahaan_dan_UMKM_.pdf', ''),
(76, '2021-05-02', 2021, 5, 3, 1, 'Buku Manajemen Keuangan', '', 'Buku_Manajemen_Keuangan-compressed.pdf', ''),
(77, '2022-12-06', 2022, 5, 3, 1, 'Buku Monograf Corporate Governance and Enterprise Risk Management di Indonesia', '', 'Full_Book_Good_Corporate_Governance.pdf', ''),
(78, '2023-04-02', 2023, 2, 9, 1, 'Korespondensi Artikel Malaria Detection using Mathematical Theory of Evidence', 'Korespondensi Artikel Malaria Detection using Mathematical Theory of Evidence', 'Korespondensi_SJST_-_Final.pdf', 'thumbnail1.jpg'),
(79, '2023-04-02', 2023, 2, 9, 1, 'Korespondensi Artikel Finding Kicking Range of Sepak Takraw Game - A Fuzzy Logic Approach ', 'Korespondensi Artikel Finding Kicking Range of Sepak Takraw Game - A Fuzzy Logic Approach ', 'Korespondensi_Finding_Kicking_Range_of_Sepak_Takraw_Game_-_A_Fuzzy_Logic_Approach_-_Final.pdf', 'thumbnail.jpg'),
(80, '2023-04-02', 2023, 2, 9, 1, 'Korespondensi Artikel  Finding Kicking Range of Sepak Takraw Game - A Fuzzy Logic and Dempster-Shafer Theory Approach', 'Korespondensi Artikel Finding Kicking Range of Sepak Takraw Game - A Fuzzy Logic and Dempster-Shafer Theory Approach', 'Korespondensi_Finding_Kicking_Range_of_Sepak_Takraw_Game_-_A_Fuzzy_Logic_and_Dempster-Shafer_Theory_Approach.pdf', 'thumbnail_21.jpg'),
(81, '2020-02-03', 2020, 5, 6, 1, 'The Impact of Disclosure Quality on Corporate Governance and Earnings Management: Evidence from Companies in Indonesia', '', 'Turnitin_The_Impact_DQ_(Citrawati).pdf', ''),
(82, '2023-04-02', 2023, 2, 9, 1, 'Korespondensi Artikel Combining Fuzzy Logic and Dempster-Shafer Theory', 'Korespondensi Artikel Combining Fuzzy Logic and Dempster-Shafer Theory', 'Korespondensi_Combining_Fuzzy_Logic_and_Dempster-Shafer_Theory.pdf', 'thumbnail_31.jpg'),
(83, '2023-04-02', 2023, 2, 9, 1, 'Korespondensi Artikel Hau-Kashyap Approach for Student\'s Level of Expertise', 'Korespondensi Artikel Hau-Kashyap Approach for Student\'s Level of Expertise', 'Korespondensi_Hau-Kashyap-approach-for-student-s-level-of-expertise.pdf', 'thumbnail_41.jpg'),
(84, '2023-04-03', 2023, 2, 9, 1, 'Korespondensi Artikel MTSE', 'Korespondensi Artikel MTSE', 'Korespondensi_MTSE.pdf', 'thumbnail_51.jpg'),
(85, '2023-04-06', 2023, 2, 4, 1, 'Best Researcher Award', '', 'ST_+_Certificate_Best_Researcher_Award.pdf', ''),
(86, '2023-04-06', 2023, 2, 4, 1, 'Honourary Doctor of Science', '', 'ST_+_Certificate_Honourary_Doctor_of_Science.pdf', ''),
(87, '2023-04-06', 2023, 2, 4, 1, 'Honourary Professor of Computer Science', '', 'ST_+_Certificate_Honourary_Professor.pdf', ''),
(88, '2023-04-06', 2023, 2, 4, 1, 'Bright Researcher Award', '', 'ST_+_Certificate_Bright_Researcher_Award.pdf', ''),
(89, '2023-04-07', 2023, 2, 4, 1, 'Chief Guest pada Internet of Thing, Next Generation Networks and Cloud Computing 2020 (ICINC-2020)', '', 'ST_+_Certificate_ICINC_2020.pdf', ''),
(90, '2023-04-07', 2023, 2, 4, 1, 'Keynote Speaker pada International Conference on Perpasive Computing -2020 (ICPC-2020)', '', 'ST_+_Certificate_ICPC_2020.pdf', ''),
(91, '2023-04-07', 2023, 2, 4, 1, 'Keynote Speaker pada International Conference on Current Trends in Advanced Computing', '', 'ST_+_Certificate_Kristu_Jayanti.pdf', ''),
(92, '2023-04-07', 2023, 2, 4, 1, 'Coaching Penulisan Jurnal', '', 'ST_+_Certificate_Coaching_Penulisan_Jurnal.pdf', ''),
(93, '2023-04-07', 2023, 2, 4, 1, 'Seminar Penulisan Buku dan Workshop Registrasi Sinta dan Google Scholar', '', 'ST_+_Certificate_Penulisan_Buku_dan_Workshop_Registrasi_Sinta_dan_Google_Scholar.pdf', ''),
(94, '2023-04-07', 2023, 2, 4, 1, 'Pelatihan Penulisan Karya Ilmiah dan Publikasi Internasional', '', 'ST_+_Certificate_Pelatihan_Penulisan_Karya_Ilmiah.pdf', ''),
(95, '2023-04-07', 2023, 2, 4, 1, 'Webinar Cerdas dan Bijak Menggunakan Media Sosial', '', 'ST_+_Certificate_Webinar_Cerdas_dan_Bijak_Menggunakan_Media_Sosial.pdf', ''),
(96, '2023-04-07', 2023, 2, 4, 1, 'Webinar Common Mistakes in Literature Review Writing', '', 'ST_+_Certificate_Webinar_Common_Mistakes_in_Literature_Review_Writing.pdf', ''),
(97, '2023-04-07', 2023, 2, 4, 1, '1st Quadrennial ADRI Jatim meeting', '', 'ST_+_Certificate_1st_Quadrennial_ADRI_Jatim_meeting.pdf', ''),
(98, '2023-04-07', 2023, 2, 4, 1, 'Table Manner\'s Course', '', 'ST_+_Certificate_Table_Manners_Course.pdf', ''),
(99, '2023-04-07', 2023, 2, 4, 1, 'Workshop Penyusunan Proposal Hibah Penelitian', '', 'ST_+_Certificate_Workshop_Penyusunan_Proposal_Hibah_Penelitian.pdf', ''),
(100, '2023-04-07', 2023, 2, 4, 1, 'Coaching Clinic Research Series', '', 'ST_+_Certificate_Coaching_Clinic_Research_Series.pdf', ''),
(101, '2023-04-07', 2023, 2, 4, 1, 'Konferensi Nasional Informatika 2015', '', 'ST_+_Certificate_Konferensi_Nasional_Informatika_2015.pdf', ''),
(102, '2023-04-07', 2023, 2, 4, 1, 'Munas Ke-2 Asosiasi Penerbit Perguruan Tinggi Indonesia - APPTI', '', 'ST_+_Certificate_Munas_Ke-2_Asosiasi_Penerbit_Perguruan_Tinggi_Indonesia_-_APPTI.pdf', ''),
(103, '2023-04-07', 2023, 2, 4, 1, 'Indonesian Youth Summit 2015', '', 'ST_+_Certificate_Indonesian_Youth_Summit_2015.pdf', ''),
(104, '2023-04-07', 2023, 2, 4, 1, 'Seminar Nasional Informatika 2015', '', 'ST_+_Certificate_Seminar_Nasional_Informatika_2015.pdf', ''),
(105, '2023-04-07', 2023, 2, 4, 1, 'Seminar Nasional Teknologi Terapan 2015', '', 'ST_+_Certificate_Seminar_Nasional_Teknologi_Terapan_2015.pdf', ''),
(106, '2023-04-07', 2023, 2, 4, 1, 'Seminar Persiapan Mahasiswa Dalam Rangka Menghadapi MEA', '', 'ST_+_Certificate_Seminar_Persiapan_Mahasiswa_Dalam_Rangka_Menghadapi_MEA.pdf', ''),
(107, '2023-04-07', 2023, 2, 4, 1, 'Seminar dan Workshop Penulisan Buku                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', '', 'ST_+_Certificate_Seminar_dan_Workshop_Penulisan_Buku.pdf', ''),
(108, '2023-04-07', 2023, 2, 4, 1, 'Technology Enriched Instruction Workshop for Faculty', '', 'ST_+_Certificate_Technology_Enriched_Instruction_Workshop_for_Faculty.pdf', ''),
(109, '2023-04-07', 2023, 2, 4, 1, 'Effective Planning and Teaching to Enhance Learning Outcomes for University Students', '', 'ST_+_Certificate_Effective_Planning_and_Teaching_to_Enhance_Learning_Outcomes_for_University_Students.pdf', ''),
(110, '2023-04-07', 2023, 2, 4, 1, 'Linking Learning Outcomes of A Module With The Types of Assessment', '', 'ST_+_Certificate_Linking_Learning_Outcomes_of_A_Module_With_The_Types_of_Assessment.pdf', ''),
(111, '2023-04-07', 2023, 2, 4, 1, 'Delivering Blended Learning Designing e-Portfolios for Work Based Learning', '', 'ST_+_Certificate_Delivering_Blended_Learning_Designing_e-Portfolios_for_Work_Based_Learning.pdf', ''),
(112, '2023-04-07', 2023, 2, 4, 1, 'Adapting Contextual Analysis, Phenomenography and Variation Theory in The Higher Education Teaching and Learning Settings', '', 'ST_+_Certificate_Adapting_Contextual_Analysis,_Phenomenography.pdf', ''),
(113, '2023-04-07', 2023, 2, 4, 1, 'Using Communicative Approaches in Analysing Classroom Talk', '', 'ST_+_Certificate_Using_Communicative_Approaches_in_Analysing_Classroom_Talk.pdf', ''),
(114, '2023-04-07', 2023, 2, 4, 1, 'Dimensions of 21st Century Learning Design', '', 'ST_+_Certificate_Dimensions_of_21st_Century_Learning_Design.pdf', ''),
(115, '2023-04-07', 2023, 2, 4, 1, 'Traversing the Faculties: How Do We Teach Across Disciplines?', '', 'ST_+_Certificate_Traversing_the_Faculties.pdf', ''),
(116, '2023-04-07', 2023, 2, 4, 1, 'Feedback and Assessment Enhanced Pedagogy', '', 'ST_+_Certificate_Feedback_and_Assessment_Enhanced_Pedagogy.pdf', ''),
(117, '2023-04-07', 2023, 2, 4, 1, 'ASEAN Emerging Researchers Conference 2018', '', 'ST_+_Certificate_ASEAN_Emerging_Researchers_Conference_2018.pdf', ''),
(118, '2023-04-07', 2023, 2, 4, 1, 'Webinar Bedah Pedoman Perhitungan Angka Kredit (PAK) Lektor Kepala', '', 'ST_+_Certificate_Webinar_Bedah_Pedoman_Perhitungan_Angka_Kredit_(PAK)_Lektor_Kepala.pdf', ''),
(119, '2023-04-07', 2023, 2, 4, 1, '1st Global Conference on Digital Technology and Information Systems', '', 'ST_+_Certificate_1st_GCoDTIS.pdf', ''),
(120, '2023-04-08', 2023, 2, 11, 1, 'Pelatihan Relawan dan Pengelolaan Keuangan Cluster Kabupaten Pringsewu Tahun 2017', '', '', ''),
(121, '2023-04-08', 2023, 2, 11, 1, ' Pelatihan Komputer dan Operasional Pemeliharaan Cluster Kabupaten Pringsewu Tahun 2016', ' Pelatihan Komputer dan Operasional Pemeliharaan Cluster Kabupaten Pringsewu Tahun 2016', '', ''),
(122, '0000-00-00', 2023, 2, 11, 1, 'Peningkatan Kualitas Sekolah Digital Melalui Aplikasi Absensi Guru Sekolah Berbasis Android Pada SMA Negeri 1 Sukoharjo', 'Peningkatan Kualitas Sekolah Digital Melalui Aplikasi Absensi Guru Sekolah Berbasis Android Pada SMA Negeri 1 Sukoharjo', '', ''),
(123, '2023-04-08', 2023, 2, 11, 1, 'Pemanfaatan E-Commerce Berbasis Web Mobile Pada Pemasaran Produk UMKM Kerajinan Batok Kelapa di Kecamatan Adiluwih', 'Pemanfaatan E-Commerce Berbasis Web Mobile Pada Pemasaran Produk UMKM Kerajinan Batok Kelapa di Kecamatan Adiluwih', '', ''),
(124, '2023-04-08', 2023, 2, 11, 1, 'Elektronik Arsip Perguruan Tinggi Berbasis Web Mobile', '', '', ''),
(125, '2023-04-09', 2023, 2, 11, 1, 'Aplikasi Media Pembelajaran Online untuk SMK Negeri', 'Aplikasi Media Pembelajaran Online untuk SMK Negeri', '', ''),
(126, '2023-04-09', 2023, 2, 11, 1, 'Editor Technology Acceptance Model, 2017-2018', 'Editor Technology Acceptance Model, 2017-2018', 'SK_Editor_Jurnal_TAM_2017-2018.pdf', ''),
(127, '2023-04-09', 2023, 2, 11, 1, 'Editor Technology Acceptance Model, 2019-2020', 'Editor Technology Acceptance Model, 2019-2020', 'SK_Editor_Jurnal_TAM_2019-2020.pdf', ''),
(128, '2023-04-09', 2023, 2, 11, 1, 'Editor Dinasti International Journal of Management Science, Ganjil 2019/2020', '', 'DIJMS,_Ganjil_2019-2020.pdf', ''),
(129, '2023-04-09', 2023, 2, 11, 1, 'Editor Dinasti International Journal of Management Science, Genap 2019/2020', 'Editor Dinasti International Journal of Management Science, Genap 2019/2020', 'DIJMS,_Genap_2019-2020.pdf', ''),
(130, '2023-04-09', 2023, 2, 11, 1, 'Editor Dinasti International Journal of Management Science, Ganjil 2020/2021', 'Editor Dinasti International Journal of Management Science, Ganjil 2020/2021', 'DIJMS,_Ganjil_2020_-_20211.pdf', ''),
(131, '2023-04-09', 2023, 2, 11, 1, 'Editor Dinasti International Journal of Management Science, Genap 2020/2021', 'Editor Dinasti International Journal of Management Science, Genap 2020/2021', 'DIJMS,_Genap_2020_-_2021.pdf', ''),
(132, '2023-04-09', 2023, 2, 11, 1, 'Editor Dinasti International Journal of Management Science, Ganjil 2021/2022', 'Editor Dinasti International Journal of Management Science, Ganjil 2021/2022', 'DIJMS,_Ganjil_2021_-_2022.pdf', ''),
(133, '2023-04-09', 2023, 2, 11, 1, 'Editor Dinasti International Journal of Management Science, Genap 2021/2022', 'Editor Dinasti International Journal of Management Science, Genap 2021/2022', 'DIJMS,_Genap_2021_-_2022.pdf', ''),
(134, '2023-04-09', 2023, 2, 11, 1, 'Editor International Journal of Information System and Computer Science (IJISCS), 2020 - 2021', 'Editor International Journal of Information System and Computer Science (IJISCS), 2020 - 2021', 'SK_Editor_Jurnal_IJISCS_2020-2021.pdf', ''),
(135, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting Applied Soft Computing Journal, Semester Ganjil 2018/2019', 'Dewan Penyunting Applied Soft Computing Journal, Semester Ganjil 2018/2019', 'Ganjil_2018-_2019,_ST_Applied_Soft_Computing_Journal.pdf', ''),
(136, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting Applied Soft Computing Journal, Semester Genap 2018/2019', 'Dewan Penyunting Applied Soft Computing Journal, Semester Genap 2018/2019', 'Genap_2018-_2019,_ST_Applied_Soft_Computing_Journal.pdf', ''),
(137, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting Computers and Electrical Engineering, Semester Genap 2017/2018', 'Dewan Penyunting Computers and Electrical Engineering, Semester Genap 2017/2018', 'Genap_2017_-_2018,_ST_Computers_and_Electrical_Engineering.pdf', ''),
(138, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting Computers and Electrical Engineering, Semester Ganjil 2018/2019', 'Dewan Penyunting Computers and Electrical Engineering, Semester Ganjil 2018/2019', 'Ganjil_2018_-_2019,_ST_Computers_and_Electrical_Engineering.pdf', ''),
(139, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting Cognitive Systems Research, 2018 - 2019', 'Dewan Penyunting Cognitive Systems Research, 2018 - 2019', 'Genap_2017_-_2018,_ST_Cognitive_Systems_Research.pdf', ''),
(140, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting Measurement Journal, 2018 - 2019', '', 'Ganjil_2018-2019,_ST_Measurement_Journal.pdf', ''),
(141, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting Future Generation Computer Systems, 2018 - 2019', '', 'Genap_2017_-_2018_-_ST_Future_Generation_Computer_Systems.pdf', ''),
(142, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting International Journal of Information Management, 2018 - 2019', '', 'Ganjil_2018-2019,_ST_International_Journal_of_Information_Management.pdf', ''),
(143, '2023-04-09', 2023, 2, 11, 1, 'Dewan Penyunting Mechanical Systems and Signal Processing, 2018 - 2019', '', 'Ganjil_2018-2019,_ST_Mechanical_Systems_and_Signal_Processing.pdf', ''),
(144, '2023-04-09', 2023, 2, 11, 1, 'Design Instrumen Untuk Mengidentifikasi Kreatifitas Siswa dalam Menyelesaikan Pembelajaran Dasar Komputer', '', 'Ganjil_2016_-_DESIGN_INSTRUMEN_UNTUK_MENGIDENTIFIKASI_KREATIFITAS_SISWA_DALAM_MENYELESAIKAN_PEMBELAJARAN_DASAR_KOMPUTER.pdf', ''),
(145, '2023-04-09', 2023, 2, 11, 1, 'Pengembangan Model Pendidikan Berbasis Teknologi Informasi dan Karakter di Sekolah Dasar di Pringsewu', '', 'Ganjil_2016_-_PENGEMBANGAN_MODEL_PENDIDIKAN_BERBASIS_TEKNOLOGI_INFORMASI_DAN_KARAKTER_DI_SEKOLAH_DASAR_DI_PRINGSEWU.pdf', ''),
(146, '2023-04-09', 2023, 2, 11, 1, 'Peningkatan Kinerja Guru Melalui Penguatan Teknologi Informasi Dalam Budaya Organisasi', '', 'Ganjil_2017_-_PENINGKATAN_KINERJA_GURU_MELALUI_PENGUATAN_TEKNOLOGI_INFORMASI_DALAM_BUDAYA_ORGANISASI.pdf', ''),
(147, '2023-04-09', 2023, 2, 11, 1, 'Perencanaan Program Madrasah Berbasis Teknologi Informasi yang Bersih dan Sehat', '', 'Ganjil_2017_-_PERENCANAAN_PROGRAM_MADRASAH_BERBASIS_TEKNOLOGI_INFORMASI_YANG_BERSIH_DAN_SEHAT.pdf', ''),
(148, '2023-04-09', 2023, 2, 11, 1, 'Hasil Belajar Siswa Sekolah Menengah Kejuruan Dengan Memorization Learning Model Berbasis Teknologi Informasi', '', 'Ganjil_2018_-_HASIL_BELAJAR_SISWA_SEKOLAH_MENENGAH_KEJURUAN_DENGAN_MEMORIZATION_LEARNING_MODEL_BERBASIS_TEKNOLOGI_INFORMASI.pdf', ''),
(149, '2023-04-09', 2023, 2, 11, 1, 'Penggunaan Media Sosial Dalam Pendidikan Seks Anak Usia Sekolah Dasar', '', 'Ganjil_2018_-_PENGGUNAAN_MEDIA_SOSIAL_DALAM_PENDIDIKAN_SEKS_ANAK_USIA_SEKOLAH_DASAR.pdf', ''),
(150, '2023-04-09', 2023, 2, 11, 1, 'Studi Tentang Pengaruh Media Sosial Terhadap Kekerasan Verbal Orangtua Kepada Anak', '', 'Ganjil_2019_-_STUDI_TENTANG_PENGARUH_MEDIA_SOSIAL_TERHADAP_KEKERASAN_VERBAL_ORANGTUA_KEPADA_ANAK.pdf', ''),
(151, '2023-04-09', 2023, 2, 11, 1, 'Zakat Online dan Peraturan Daerah Tentang Pengelolaan Zakat', '', 'Ganjil_2019_-_ZAKAT_ONLINE_DAN_PERATURAN_DAERAH_TENTANG_PENGELOLAAN_ZAKAT.pdf', ''),
(152, '2023-04-09', 2023, 2, 11, 1, 'Komunikasi Antar Agama dan Interaksi Media Sosial', '', 'Ganjil_2020_-_KOMUNIKASI_ANTAR_AGAMA_DAN_INTERAKSI_MEDIA_SOSIAL.pdf', ''),
(153, '2023-04-09', 2023, 2, 11, 1, 'Pengaruh Teknologi Informasi Terhadap Kualitas Layanan, Etika Karyawan, dan Kepercayaan Nasabah Bank', '', 'Ganjil_2020_-_PENGARUH_TEKNOLOGI_INFORMASI_TERHADAP_KUALITAS_LAYANAN,_ETIKA_KARYAWAN,_DAN_KEPERCAYAAN_NASABAH_BANK.pdf', ''),
(154, '2023-04-09', 2023, 2, 11, 1, 'Proses Rekonstruksi Dan Makna Belajar Media Sosial Berbasis Lingkungan Etnik Jawa Di Pringsewu', '', 'Ganjil_2021_-_PROSES_REKONSTRUKSI_DAN_MAKNA_BELAJAR_MEDIA_SOSIAL_BERBASIS_LINGKUNGAN_ETNIK_JAWA_DI_PRINGSEWU.pdf', ''),
(155, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Wiwik Setriyeni', '', 'Wiwik_Setriyeni_merged.pdf', ''),
(156, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Nur Rahmawati', '', 'Nur_Rahmawati_merged.pdf', ''),
(157, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi M. Mursahid Ubady', '', 'M_Mursahid_Ubady.pdf', ''),
(158, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Nuril Huda', '', 'Nuril_Huda_merged.pdf', ''),
(159, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Ferdi Aprianto', '', 'Ferdi_Aprianto_merged.pdf', ''),
(160, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Aviv Fitria Yulia', '', 'Aviv_Fitria_Yulia.pdf', ''),
(161, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Ina Priawala', '', 'Ina_Priawala_merged.pdf', ''),
(162, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Aprilia Anggraeni', '', 'Aprilia_Anggraeni.pdf', ''),
(163, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi David Triyanto', '', 'David_Triyanto_merged.pdf', ''),
(164, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Mei Listriani', '', 'Mei_Listiarini_merged1.pdf', ''),
(165, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Meli Suwantono', '', 'Meli_Suwantono_merged.pdf', ''),
(166, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Oktariana Ekawati', '', 'Oktariana_Ekawati.pdf', ''),
(167, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Slamet Hidayat', '', 'Slamet_Hidayat_merged.pdf', ''),
(168, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Indri Purnamasari', '', 'Indri_Purnamasari.pdf', ''),
(169, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Jauharotun Jamilah', '', 'Jauharotun_Jamilah.pdf', ''),
(170, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Nuril Fitriyono', '', 'Nuril_Fitriyono_merged.pdf', ''),
(171, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Rendy Rinaldy', '', 'Rendi_Rinaldy_merged.pdf', ''),
(172, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Supriyani', '', 'Supriyani_merged.pdf', ''),
(173, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Wisma Judin', '', 'Wisma_Judin_merged.pdf', ''),
(174, '0000-00-00', 2023, 2, 12, 1, 'Pembimbing Skripsi Muwarni', '', 'sk_muwarni_2019_merged.pdf', ''),
(175, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Galih Nur Adityo', '', 'sk_galih_2019_merged.pdf', ''),
(176, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Desi Novita Sari', '', 'sk_Desi_2019_merged.pdf', ''),
(177, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Ricky Aria Sandy', '', 'sk_Rizki_2019_merged1.pdf', ''),
(178, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Eko Ari Candra', '', 'sk_Eko_2019_merged.pdf', ''),
(179, '2023-04-09', 2023, 2, 12, 1, 'Pembimbing Skripsi Dwi Aprilian Fahmi Pamuji', '', 'sk_Dwi_2019_merged.pdf', ''),
(180, '2023-04-09', 2023, 2, 12, 1, 'SK Ketua LPPM', '', 'SK_Ketua_LPPM.pdf', ''),
(181, '2023-04-09', 2023, 2, 12, 1, 'Online Postdoctoral Researcher di Universiti Pendidikan Sultan Idris, Malaysia', '', 'Bukti_Kinerja_Postdoc_UPSI_-_final.pdf', ''),
(182, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Analisa dan Perancangan Sistem Informasi, Semester Ganjil 2015/2016 ', '', 'Analisa_dan_Perancangan_Sistem_Informasi,_Ganjil_2015_-_2016.pdf', ''),
(183, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Pengenalan Pengolahan Data Elektronik, Semester Ganjil 2015/2016 ', '', 'Ganjil_2015_pengenalan_pengolahan_data_elektronik.pdf', ''),
(184, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Informasi Manajemen, Semester Ganjil 2015/2016', '', 'Ganjil_2015_SIM.pdf', ''),
(185, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Logika dan Algoritma, Semester Genap 2015/2016', '', 'Bukti_Kinerja_Genap_2015_logika_dan_algoritma.pdf', ''),
(186, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Metodologi Penelitian SI, Semester Genap 2015/2016', '', 'Bukti_Kinerja_Genap_2015_metodologi_penelitian_si.pdf', ''),
(187, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Pengenalan Sistem Informasi, Semester Genap 2015/2016', '', 'Bukti_Kinerja_Genap_2015_pengenalan_si.pdf', ''),
(188, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Operasi, Semester Genap 2015/2016', '', 'Bukti_Kinerja_Genap_2015_sistem_operasi.pdf', ''),
(189, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Analisa dan Perancangan Sistem Informasi, Semester Ganjil 2016/2017', '', 'Bukti_Kinerja_Ganjil_2016_analisa_dan_perancangan_sistem.pdf', ''),
(190, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Interaksi Manusia dan Komputer, Semester Ganjil 2016/ 2017', '', 'Bukti_Kinerja_Ganjil_2016_imk.pdf', ''),
(191, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Organisasi Komputer, Semester Ganjil 2016/ 2017', '', 'Bukti_Kinerja_Ganjil_2016_organisasi_komputer.pdf', ''),
(192, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Paket Program Aplikasi, Semester Ganjil 2016/ 2017', '', 'Bukti_Kinerja_Ganjil_2016_paket_program_aplikasi.pdf', ''),
(193, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Bahasa Pemrograman I, Semester Genap 2016/2017     ', '', 'Bukti_Kinerja_Genap_bahasa_pemrograman_1_2016.2017.pdf', ''),
(194, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Jaringan Komputer, Semester Genap 2016/2017', '', 'Bukti_Kinerja_Genap_jaringan_komputer_2016.2017.pdf', ''),
(195, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Metodologi Penelitian SI, Semester Genap 2016/2017', '', 'Bukti_Kinerja_Genap_metodologi_penelitian_si_2016.2017.pdf', ''),
(196, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Pengenalan Sistem Informasi, Semester Genap 2016/2017', '', 'Bukti_Kinerja_Genap_pengenalan_si_2016.2017.pdf', ''),
(197, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Analisa dan Perancangan Sistem Informasi, Semester Ganjil 2017/2018', '', 'Bukti_Kinerja_Ganjil_2017_analisa_dan_perancangan_si.pdf', ''),
(198, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Metodologi Penelitian Sistem Informasi II, Semester Ganjil 2017/2018', '', 'Bukti_Kinerja_Ganjil_2017_metode_penelitian_si.pdf', ''),
(199, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Shooting dan Editing, Semester Ganjil 2017/2018', '', 'Bukti_Kinerja_Ganjil_2017_shooting_editing1.pdf', ''),
(200, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Jaringan Komputer, Semester Genap 2017/2018', '', 'Bukti_Kinerja_Genap_2017_jaringan_komputer.pdf', ''),
(201, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Komunikasi Data, Semester Genap 2017/2018', '', 'Bukti_Kinerja_Genap_2017_komunikasi_data.pdf', ''),
(202, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Organisasi Komputer, Semester Genap 2017/2018', '', 'Bukti_Kinerja_Genap_2017_organisasi_komputer2.pdf', ''),
(203, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Pengolahan Instalasi Komputer, Semester Genap 2017/2018', '', 'Bukti_Kinerja_Genap_2017_pengolahan_instalasi_komputer.pdf', ''),
(204, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Paket Program Aplikasi, Semester Ganjil 2018/ 2019', '', 'Bukti_kinerja_Ganjil_2018_paket_program_aplikasi.pdf', ''),
(205, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Rekayasa Perangkat Lunak, Semester Ganjil 2018/2019', '', 'Bukti_kinerja_Ganjil_2018_rekayasa_perangkat_lunak.pdf', ''),
(206, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Informasi Manajemen, Semester Ganjil 2018/2019', '', 'Bukti_kinerja_Ganjil_2018_sim1.pdf', ''),
(207, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Pendukung Keputusan, Semester Ganjil 2018/2019', '', 'Bukti_kinerja_Ganjil_2018_spk.pdf', ''),
(208, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Organisasi Komputer, Semester Genap 2018/2019', '', 'Bukti_kinerja_Genap_2018_organisasi_komputer1.pdf', ''),
(209, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Pengolahan Instalasi Komputer, Semester Genap 2018/2019', '', 'Bukti_kinerja_Genap_2018_pengolahan_instalasi_komputer1.pdf', ''),
(210, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Security System, Semester Genap 2018/2019', '', 'Bukti_kinerja_Genap_2018_Security_System.pdf', ''),
(211, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Operasi, Semester Genap 2018/2019', '', 'Bukti_kinerja_Genap_2018_sistem_operasi1.pdf', ''),
(212, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Interaksi Manusia dan Komputer, Semester Ganjil 2019/ 2020', '', 'Bukti_kinerja_Ganjil_2019_imk.pdf', ''),
(213, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Metodologi Penelitian II, Semester Ganjil 2019/2020', '', 'Bukti_kinerja_Ganjil_2019_metodologi_penelitian_2.pdf', ''),
(214, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Basis Data, Semester Ganjil 2019/2020', '', 'Bukti_kinerja_Ganjil_2019_sistem_basis_data1.pdf', ''),
(215, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Pendukung Keputusan, Semester Ganjil 2019/2020', '', 'Bukti_kinerja_Ganjil_2019_spk.pdf', ''),
(216, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Metodologi Penelitian I, Semester Genap 2019/2020', '', '', ''),
(217, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Bahasa Pemrograman I, Semester Genap 2019/2020', '', '', ''),
(218, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Praktikum Bahasa Pemrograman I, Semester Genap 2019/2020', '', '', ''),
(219, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Jaringan Komputer, Semester Genap 2019/2020', '', '', ''),
(220, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Pengolahan Citra, Semester Genap 2019/2020', '', 'Bukti_Kinerja_Pengolahan_Citra,_3_SKS,_2019-2020_Genap.pdf', ''),
(221, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Interaksi Manusia dan Komputer, Semester Ganjil 2020/2021', '', '', ''),
(222, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Basis Data, Semester Ganjil 2020/2021', '', '', ''),
(223, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Informasi Manajemen, Semester Ganjil 2020/2021', '', 'Bukti_Kinerja_SIM_2020-2021_Ganjil1.pdf', ''),
(224, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Komunikasi Data, Semester Genap 2020/2021', '', '', ''),
(225, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Operasi, Semester Genap 2020/2021', '', '', ''),
(226, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah E-Business & E-Commerce, Semester Genap 2020/2021', '', 'Bukti_Kinerja_e-business_e-commerce_2020-2021_Genap.pdf', ''),
(227, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Logika dan Algoritma, Semester Genap 2020/2021', '', 'Bukti_Kinerja_logika_algoritma_2020-2021_Genap.pdf', ''),
(228, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Desain Grafis, Semester Ganjil 2021/2022', '', '', ''),
(229, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Basis Data, Semester Ganjil 2021/2022', '', '', ''),
(230, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Pendukung Keputusan, Semester Ganjil 2021/2022', '', '', ''),
(231, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Rekayasa Perangkat Lunak, Semester Ganjil 2021/2022', '', '', ''),
(232, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Analisa dan Perancangan Sistem Informasi, Semester Genap 2021/2022', '', '', ''),
(233, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Komunikasi Data, Semester Genap 2021/2022', '', '', ''),
(234, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Sistem Operasi, Semester Genap 2021/2022', '', '', ''),
(235, '2023-04-10', 2023, 2, 12, 1, 'Mengajar Mata Kuliah Technopreneurship, Semester Genap 2021/2022', '', '', ''),
(236, '2023-04-10', 2023, 2, 12, 1, 'Keynote Speaker pada International Conference on Current Trends in Advanced Computing', '', 'Keynote_Speaker_International_Conference_on_Current_Trends.pdf', ''),
(237, '2023-04-10', 2023, 2, 12, 1, 'Ketua Penguji Skripsi Bella Cahya Juwita', '', 'SK_+_BA_Bella1.pdf', ''),
(238, '2023-04-10', 2023, 2, 12, 1, 'Ketua Penguji Skripsi Gunanjar', '', 'SK_+_BA_Gunanjar.pdf', ''),
(239, '2023-02-07', 2023, 2, 10, 1, 'Modul Analisa dan Perancangan Sistem Informasi', 'Modul Analisa dan Perancangan Sistem Informasi', 'Modul_Analisis_Perancangan_Sistem_Informasi.pdf', ''),
(240, '2023-02-07', 2023, 2, 10, 1, 'Modul Logika dan Algoritma', 'Modul Logika dan Algoritma', 'Modul_Logika_dan_Algoritma.pdf', ''),
(241, '2023-02-07', 2023, 2, 10, 1, 'Modul Pengenalan Pengolahan Data Elektronik', 'Modul Pengenalan Pengolahan Data Elektronik', 'Modul_PPDE.pdf', ''),
(242, '2023-02-07', 2023, 2, 10, 1, 'Modul Metodologi Penelitian', '', 'Modul_Metodologi_Penelitian.pdf', ''),
(243, '2023-02-07', 2023, 2, 10, 1, 'Modul Sistem Informasi Manajemen', 'Modul Sistem Informasi Manajemen', 'Modul_Sistem_Informasi_Manajemen.pdf', ''),
(244, '2023-02-07', 2023, 2, 10, 1, 'Modul Pengenalan Sistem Informasi', 'Modul Pengenalan Sistem Informasi', 'Modul_Pengenalan_Sistem_Informasi.pdf', ''),
(245, '2023-02-07', 2023, 2, 10, 1, 'Modul Interaksi Manusia dan Komputer', 'Modul Interaksi Manusia dan Komputer', 'Modul_Interaksi_Manusia_dan_Komputer.pdf', ''),
(246, '2023-02-07', 2023, 2, 10, 1, 'Modul Sistem Operasi ', 'Modul Sistem Operasi ', 'Modul_Sistem_Operasi.pdf', ''),
(247, '2023-02-07', 2023, 2, 10, 1, 'Modul Rekayasa Perangkat Lunak ', 'Modul Rekayasa Perangkat Lunak ', 'Modul_Rekayasa_Perangkat_Lunak.pdf', ''),
(248, '2023-02-07', 2023, 2, 10, 1, 'Modul Sistem Pendukung Keputusan', 'Modul Sistem Pendukung Keputusan', 'Modul_Sistem_Pendukung_Keputusan.pdf', ''),
(249, '2023-02-07', 2023, 2, 10, 1, 'Modul Sistem Basis Data', 'Modul Sistem Basis Data', 'Modul_Basis_Data.pdf', ''),
(250, '2023-02-07', 2023, 2, 10, 1, 'Modul Organisasi Komputer', 'Modul Organisasi Komputer', 'Modul_Organisasi_Komputer.pdf', ''),
(251, '2023-02-07', 2023, 2, 10, 1, 'Modul Security System', 'Modul Security System', 'Modul_Security_System.pdf', ''),
(252, '2023-02-07', 2023, 2, 10, 1, 'Modul Komunikasi Data', 'Modul Komunikasi Data', 'Modul_Komunikasi_Data.pdf', ''),
(253, '2023-02-07', 2023, 2, 3, 1, 'Ontological Analyses in Science, Technology and Informatics', 'Buku Ontological Analyses in Science, Technology and Informatics', 'Buku_Ontological_Analyses_in_Science,_Technology_and_Informatics.pdf', ''),
(254, '2023-02-07', 2023, 2, 3, 1, 'Futuristic Trends in Artificial Intelligence', 'Buku Futuristic Trends in Artificial Intelligence', 'Book_-_Futuristic_Trends_in_AI1.pdf', '');
INSERT INTO `repo` (`id`, `date`, `year`, `id_author`, `id_type`, `id_prodi`, `title`, `description`, `file_repo`, `thumbnail`) VALUES
(255, '2023-02-07', 2023, 2, 3, 1, 'Sistem Pendukung Keputusan - Konsep, Implementasi dan Pengembangan', 'Sistem Pendukung Keputusan (Decision Support Systems) disingkat DSS merupakan bagian dalam sistem informasi berbasis komputer (termasuk sistem berbasis pengetahuan/ manajemen pengetahuan) yang dipakai untuk mendukung pengambilan keputusan dalam suatu organisasi atau perusahaan. Sistem komputer tersebut mengolah data menjadi informasi yang digunakan untuk mengambil keputusan dari masalah semi-terstruktur yang spesifik. DSS dapat sepenuhnya terkomputerisasi atau didukung oleh manusia. Dalam beberapa kasus, DSS memungkinkan untuk menggabungkan keduanya. Sistem yang ideal menganalisis informasi dan benar-benar membuat keputusan bagi pengguna. Setidaknya, para pengambil keputusan memungkinkan pengguna manusia untuk membuat keputusan yang lebih tepat dengan lebih cepat.', 'BUKU_SISTEM_PENDUKUNG_KEPUTUSAN1.pdf', ''),
(256, '2023-02-07', 2023, 2, 3, 1, 'A Bayesian Hau-Kashyap Approach for Hepatitis Disease Detection', 'A Bayesian Hau-Kashyap Approach for Hepatitis Disease Detection', '11_A_Bayesian_Hau-Kashyap_Approach_for_Hepatitis_Disease_Detection.pdf', ''),
(257, '2023-08-01', 2023, 10, 10, 1, 'Modul Pengenalan Sistem Informasi', '', 'MODUL_PENGENALAN_SISTEM_INFORMASI_(Pamuji_Setiawan).pdf', 'Modul_PSI.jpg'),
(258, '2023-08-26', 2023, 10, 10, 1, 'Modul Logika Algoritma', '', 'MODUL_LOGIKA_DAN_ALGORITMA.pdf', 'cover_modul_Algoritma1.jpg'),
(259, '2021-11-11', 2021, 11, 11, 4, 'LAPORAN KEGIATAN KULIAH KERJA NYATA (KKN) DESA BUMI TINGGI', 'KKN merupakan program yang diselenggarakan oleh Lembaga Penelitian dan Pengabdian kepada Masyarakat dan Institut Teknologi dan Bisnis Bakti Nusantara, yang menuntut mahasiswa untuk mampu menerapkan ilmu yang diperoleh dari mata kuliah tersebut untuk mendukung pembangunan daerah sebagai wujud pengabdian pada lapangan kerja dan masyarakat, dan sebagai wujud peran pendidikan dalam melaksanakan pemberdayaan.', 'LAPORAN_KKN_KEL_4_BUMI_TINGGI.pdf', ''),
(260, '2021-09-08', 2021, 12, 11, 4, 'RELAWAN APLIKASI PERIZINAN UMKM KECAMATAN BUMI AGUNG DESA CATUR SWAKO  KABUPATEN LAMPUNG TIMUR', 'Lokasi KKN kami bertempatan di desa Catur Swako kecamatan bumi agung, kabupaten lampung timur, provinsi lampung. Ecara administratif desa Catur Swako terbagi dalam lima dusun dan 18 RT. Luas wilayah Desa catur Swako 1005 Ha dengan penggunaan lahan terbagi atas lahan pemukiman 215 Ha, tanah peladangan 162 Ha, tanah perkebunan 608 Ha, dan tanah lain-lain 20 Ha. Beriklim tropis dengan pembagian dua musim setiap tahunnya yakni musim kemarau pada bulan april sampai dengan september dan musim hujan pada bulan oktober sampai dengan maret.', 'LAPORAN_KKN_KELOMPOK_6.pdf', ''),
(261, '2021-11-11', 2021, 13, 11, 4, 'LAPORAN KEGIATAN KULIAH KERJA NYATA (KKN) DESA MULYOASRI', 'Kuliah Kerja Nyata (KKN) merupakan bentuk pengabdian nyata mahasiswa kepada masyarakat. Setelah mendapatkan materi perkuliahan yang senantiasanya dapat berguna didalam lingkungan masyarakat itu sendiri.Dalam kegiatan pengabdiannya pada masyarakat, mahasiswa memberikan pengalaman ilmu pengetahuan, teknologi, seni, dan agama untuk memberikan pengarahan agar dapat memecahkan masalah dan menanggulanginya secara tepat. Selain itu, pembenahan sarana dan prasarana merupakan kegiatan yang dilakukan serta menjadi program kerja bagi mahasiswa. Dengan kata lain, melalui KKN ini, mahasiswa membantu pembangunan dalam masyarakat/ pemberdayaan masyarakat yang terletak di Desa Mulyo Asri.', 'Isi_KKN.pdf', ''),
(262, '2023-12-04', 2023, 10, 10, 1, 'Modul Sistem Basis Data', 'Modul Sistem Basis Data', 'Modul_Sistem_Basis_Data.pdf', 'cover.jpg'),
(263, '2023-10-06', 2023, 14, 10, 1, 'MODUL PENDIDIKAN AGAMA ISLAM', '', 'MODUL_PENDIDIKAN_AGAMA_ISLAM.pdf', 'COVER_MODUL_AGAMA_ISLAM.pdf'),
(264, '2023-09-07', 2023, 4, 2, 1, 'Pembinaan Bahasa Indonesia', '', 'PEMBINAAN_BAHASA_INDONESIA.pdf', ''),
(265, '2023-09-10', 2023, 14, 10, 1, 'BAHAN AJAR PENDIDIKAN AGAMA', '', 'BAHAN_AJAR_PENDIDIKAN_AGAMA.pdf', ''),
(268, '2016-09-05', 2016, 2, 7, 1, 'Laporan Penelitian I 2016 - Design Instrumen Untuk Mengidentifikasi Kreatifitas Siswa Dalam Menyelesaikan Pembelajaran Dasar Komputer', '', 'Laporan_Penelitian_I_2016_-_Design_Instrumen_Untuk_Mengidentifikasi_Kreatifitas_Siswa_Dalam_Menyelesaikan_Pembelajaran_Dasar_Komputer.pdf', ''),
(269, '2016-09-05', 2016, 2, 7, 1, 'Laporan Penelitian II 2016 - Pengembangan Model Pendidikan Berbasis Teknologi Informasi dan Karakter di Sekolah Dasar di Pringsewu', '', 'Laporan_Penelitian_II_2016_-_Pengembangan_Model_Pendidikan_Berbasis_Teknologi_Informasi_dan_Karakter_di_Sekolah_Dasar_di_Pringsewu.pdf', ''),
(270, '2017-09-05', 2017, 2, 7, 1, 'Laporan Penelitian I 2017 - Peningkatan Kinerja Guru Melalui Penguatan Teknologi Informasi Dalam Budaya Organisasi', '', 'Laporan_Penelitian_I_2017_-_Peningkatan_Kinerja_Guru_Melalui_Penguatan_Teknologi_Informasi_Dalam_Budaya_Organisasi.pdf', ''),
(271, '2017-09-05', 2017, 2, 7, 1, 'Laporan Penelitian II 2017 - Perencanaan Program Madrasah Berbasis Teknologi Informasi yang Bersih dan Sehat', '', 'Laporan_Penelitian_II_2017_-_Perencanaan_Program_Madrasah_Berbasis_Teknologi_Informasi_yang_Bersih_dan_Sehat.pdf', ''),
(272, '2018-09-05', 2018, 2, 7, 1, 'Laporan Penelitian I 2018 - Hasil Belajar Siswa Sekolah Menengah Kejuruan Dengan Memorization Learning Model Berbasis Teknologi Informasi', '', 'Laporan_Penelitian_I_2018_-_Hasil_Belajar_Siswa_Sekolah_Menengah_Kejuruan_Dengan_Memorization_Learning_Model_Berbasis_Teknologi_Informasi.pdf', ''),
(273, '2018-09-05', 2018, 2, 7, 1, 'Laporan Penelitian II 2018 - Penggunaan Media Sosial Dalam Pendidikan Seks Anak Usia Sekolah Dasar', '', 'Laporan_Penelitian_II_2018_-_Penggunaan_Media_Sosial_Dalam_Pendidikan_Seks_Anak_Usia_Sekolah_Dasar.pdf', ''),
(274, '2019-09-05', 2019, 2, 7, 1, 'Laporan Penelitian I 2019 - Studi Tentang Pengaruh Media Sosial Terhadap Kekerasan Verbal Orangtua Kepada Anak', '', 'Laporan_Penelitian_I_2019_-_Studi_Tentang_Pengaruh_Media_Sosial_Terhadap_Kekerasan_Verbal_Orangtua_Kepada_Anak.pdf', ''),
(275, '2019-09-05', 2019, 2, 7, 1, 'Laporan Penelitian II 2019 - Zakat Online dan Peraturan Daerah Tentang Pengelolaan Zakat', '', 'Laporan_Penelitian_II_2019_-_Zakat_Online_dan_Peraturan_Daerah_Tentang_Pengelolaan_Zakat.pdf', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `types`
--

CREATE TABLE `types` (
  `id` int(10) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '8ea8ef92fa7cf4860277eb2a4e91445f', 'master');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `repo`
--
ALTER TABLE `repo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `repo`
--
ALTER TABLE `repo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT untuk tabel `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
