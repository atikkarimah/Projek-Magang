-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 05:05 AM
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
-- Database: `puskesmas_promkes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'promkescilut1', 'AdminPROMKEScilut1');

-- --------------------------------------------------------

--
-- Table structure for table `beritahome`
--

CREATE TABLE `beritahome` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beritahome`
--

INSERT INTO `beritahome` (`id`, `title`, `content`, `image`) VALUES
(7, '17 FEBRUARI 2023 PELAKSANAAN KESEHATAN MASJID & MUSHOLA', 'Pelaksanaan Kegiatan Upaya Kesehatan Masjid dan Mushola (UKMM) di Kelurahan Mertasinga  adalah kegiatan pemeriksaan tekanan darah, cek gula darah, kolesterol dan asam urat bagi jamaah Masjid dan masyarakat umum di wilayah sekitar masjid.', '1700628910.jpeg'),
(8, '13 FEBRUARI 2023 PEMANTAUAN PEMBERIAN MAKANAN TAMBAHAN ', 'Kegiatan pemantauan pada balita stunting di wilayah kerja UPTD Puskesmas Cilacap Utara I yang telah diberikan Makanan Tambahan selama 4 minggu. Balita yang datang terlebih dahulu diukur BB dan TB-nya, kemudian pengukuran tersebut dibandingkan dengan pengukuran awal sebelum diberi makanan tambahan, apakah ada kenaikan berat badan atau tidak.', '1700622057.jpeg'),
(9, '10 FEBRUARI 2023 KELAS IBU HAMIL TAHUN 2023 di Kelurahan Mertasinga', 'Pelaksanaan Kelas Ibu Hamil yang diikuti oleh ibu hamil di Kelurahan Mertasinga diawali dengan Edukasi/Penyuluhan terkait Kesehatan Ibu Hamil dan dilanjutkan dengan kegiatan senam ibu hamil yang dipimpim oleh bidan dari UPTD Puskesmas Cilacap Utara I.', '1700622149.jpeg'),
(10, 'PENIMBANGAN SERENTAK <br>\r\n50 Posyandu Balita TAHUN 2023\r\n', 'Kegiatan Penimbangan Serentak Tahun 2023 dilaksanakan oleh 50 Posyandu Balita di Kelurahan Kebonmanis, Gumilir, dan Mertasinga.', 'berita4.jpeg'),
(11, '8 NOVEMBER 2022 <br>\r\nKEGIATAN GERMAS <br> \r\nTINGKAT KECAMATAN', 'Kegiatan GERMAS yang dilaksanakan di Kelurahan Mertasinga berpedoman pada point-point GERMAS yang dicanangkan oleh Kemenkes RI. Kegiatan diawali dengan aktivitas fisik yakni senam bersama selama 1-1,5 jam dipandu oleh instruktur senam.<br>\r\nAcara inti yakni diisi oleh kader-kader Forum Kesehatan Kelurahan terkait diskusi kelanjutan kegiatan Forum Kesehatan Kelurahan dan permasalahan-permasalahan yang dihadapi oleh masing-masing pos pelayanan kesehatan yang termasuk dalam Upaya Kesehatan Berbasis Masyarakat (UKBM) seperti posyandu balita, posyandu lansia, posbindu dan UKMM.\r\n', 'berita6.jpeg'),
(12, 'Kegiatan Edukasi STUNTING<br>\r\nSelama bulan Juli di Wilayah Kerja Puskesmas Cilut I', 'Kegiatan Edukasi Stunting bagi kader kesehatan sekaligus evaluasi terkait pemberian PMT 90 hari bagi balita Stunting di Wilayah Kerja UPTD PUSKESMAS CILACAP UTARA I', 'beritastunting.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `content`, `image`, `type`) VALUES
(1, '', '', '', ''),
(2, 'Visi', '“Mewujudkan Mitra Terpercaya Menuju Kecamatan Sehat”', '1699702316.jpeg', 'isivisi'),
(3, 'Misi', '1. Meningkatkan perilaku masyarakat untuk hidup bersih dan sehat \r\n    secara<br> mandiri. <br>\r\n2. Meningkatkan mutu pelayanan kesehatan. <br>\r\n3. Pengelolaan manajemen yang efektif dan efesien. <br>\r\n4. Menggerakan pembangunan berwawasan kesehatan.', '', 'isimisi'),
(4, 'PPDB', 'Informasi Pendaftaran Peserta Didik Baru', 'lapangan.jpg', 'beritahome'),
(5, 'Olimpiade', 'Informasi Olimpiade ', 'olahraga.jpg', 'beritahome'),
(6, 'Beasiswa', 'Informasi Beasiswa', 'drumband.jpg', 'beritahome'),
(7, 'Kelurahan', 'Wilayah Kerja UPTD Puskesmas Cilacap Utara I antara lain : <br>\r\n1. Kelurahan Gumilir <br>\r\n2. Kelurahan Kebonmanis <br>\r\n3. Kelurahan Mertasinga ', '1699702942.jpeg', 'isikelurahan'),
(8, 'Motto', '\"KESEHATAN ANDA PRIORITAS KAMI\"', '', 'isimotto'),
(9, 'headerkelurahan', '', 'headwilayah_kerja.JPG', 'headkelurahan'),
(10, 'headdesasiaga', '', 'headdesa.JPG', 'headerdesa'),
(11, 'headerposyandu', '', 'headposyan.JPG', 'headerposyandu'),
(12, 'headsehatanak', '', 'headsehatanak.JPG', 'headkesehatananak'),
(13, 'visimisi', '', 'headvisimisi.jpg', 'headvisimisi'),
(14, 'headstruktur', '', 'headstruktur.jpg', 'headstruktur'),
(15, 'Maklumat', '\r\n', 'maklumat.jpg', 'isimaklumat'),
(16, 'About', 'Website ini adalah sebuah media yang memberikan informasi tentang promosi kesehatan UPTD Puskesmas Cilacap Utara I. Memberikan informasi yang terkini melalui berbagai content yang berstrategi dalam bidang digital', '', 'footer_about'),
(17, 'struktur', '', '1.1.png', 'isistruktur'),
(18, 'struktur', '', '2.2.png', 'isistruktur2'),
(19, 'struktur', '', '3.3.png', 'isistruktur3'),
(20, 'struktur', '', '4.4.png', 'isistruktur4'),
(21, 'struktur', '', '5.5.png', 'isistruktur5'),
(22, 'struktur', '', '6.6.png', 'isistruktur6'),
(23, 'banner', '', '1700628819.jpg', 'isifoto'),
(24, 'struktur', '', '7.7.png', 'isistruktur7'),
(25, 'struktur', '', '8.8.png', 'isistruktur8'),
(26, 'struktur', '', '9.9.jpeg', 'isistruktur9'),
(27, 'maklumat', '', 'headmaklumat.jpg', 'headmaklumat'),
(28, 'Desa', 'Desa Siaga adalah desa yang penduduknya memiliki kesiapan sumber daya dan kemampuan serta kemauan untuk mencegah dan mengatasi masalah kesehatan, bencana, dan kegawatdaruratan, kesehatan secara mandiri.\r\n\r\nDesa yang dimaksud di sini adalah kelurahan atau istilah lain bagi kesatuan masyarakat hukum yang memiliki batas-batas wilayah, yang berwenang untuk mengatur dan mengurus kepentingan yang diakui dan dihormati dalam Pemerintah Negara Kesatuan Republik Indonesia.', 'desafix.jpg', 'isidesa'),
(29, 'banner', '', '1700628859.jpg', 'isifoto'),
(30, 'banner', '', '1699702171.jpeg', 'isifoto'),
(31, '', 'Posyandu adalah (Pos Pelayanan Terpadu) merupakan salah satu bentuk Upaya Kesehatan Bersumberdaya Masyarakat (UKBM) yang dilaksanakan oleh, dari dan bersama masyarakat, untuk memberdayakan dan memberikan kemudahan kepada masyarakat guna memperoleh pelayanan kesehatan bagi ibu, bayi dan anak balita.', 'posyandufix.jpg', 'isiposyandu'),
(32, '', 'Penyelenggaraan upaya kesehatan mempunyai tujuan untuk mencapai kemampuan hidup sehat bagi setiap manusia.<br>\r\nPenjaringan Kesehatan Anak Sekolah (Screening) merupakan salah satu bentuk dari pelayanan kesehatan yang bertujuan untuk mendeteksi dini siswa yang memiliki masalah kesehatan agar segera \r\nmendapatkan penanganan sedini mungkin serta tersedianya data atau informasi untuk menilai perkembangan kesehatan peserta didik.<br>\r\nPemeriksaan kesehatan anak sekolah meliputi pemeriksaan Berat Badan (BB), Tinggi Badan (TB), Pemeriksaan Gigi, Mulut, Telinga, Kulit, Kuku, Kesehatan Reproduksi, Kesehatan Mental, Kesehatan Intelegensia.', 'pemeriksaan_kesehatan_anak.png', 'isikesehatananak'),
(33, 'headerphbs', '', 'headphbs.JPG', 'headerphbs'),
(34, '', 'PHBS - merupakan kependekan dari Perilaku Hidup Bersih dan Sehat. Sedangkan pengertian PHBS adalah semua perilaku kesehatan yang dilakukan karena kesadaran pribadi sehingga keluarga dan seluruh anggotanya mampu menolong diri sendiri pada bidang kesehatan serta memiliki peran aktif dalam aktivitas masyarakat.', 'phbsfix.jpg', 'isiphbs'),
(35, 'headgermas', '', 'headgermas.JPG', 'headergermas'),
(36, '', '<strong>GERMAS</strong> - Perubahan polah hidup masyarakat yang makin modern menjadi salah satu dasar GERMAS atau Gerakan Masyarakat Hidup Sehat dicanangkan oleh Kementrian Kesehatan Republik Indonesia. Penyakit menular seperti diare, tuberkulosa hingga demam berarah \r\nGERMAS adalah sebuah gerakan yang bertujuan untuk memasyarakatkan budaya hidup sehat serta meninggalkan kebiasaan dan perilaku masyarakat yang kurang sehat. Aksi GERMAS ini juga diikuti dengan memasyarakatkan perilaku hidup bersih sehat dan dukungan untuk program infrastruktur dengan basis masyarakat.\r\nProgram ini memiliki beberapa fokus seperti membangun akses untuk memenuhi kebutuhan air minum, instalasi kesehatan masyarakat serta pembangunan pemukiman yang layak huni. Ketiganya merupakan infrastruktur dasar yang menjadi pondasi dari gerakan masyarakat hidup sehat.', 'germasfix.jpg', 'isigermas'),
(37, 'headlapislegit', '', 'headlapis.JPG', 'headerlapis'),
(38, '', '<h3>LAPIS LEGIT</h3>\r\n<p class=\"justify\">Pelayanan Prima Secara Lengkap Digital dan Terpadu, memanfaatkan fasilitas digital untuk memecahkan berbagai permasalahan pada masing-masing upaya pada puskesmas. Upaya kesehatan perorangan memanfaatkan lapis legit, dimana masyarakat tidak perlu datang ke puskesmas melainkan berkomunikasi dengan dokter kami melalui telepon yang nantinya keluarga pasien atau menggunakan aplikasi gojek atau grab untuk mengambil obat.<p>', 'lapislegit1.png', 'isilapislegit'),
(39, 'headpinisi', '', 'headpinisi.JPG', 'headerpinisi'),
(40, '', 'PINISI - merupakan program kependekan dari Pijat Nikmat Sehat Alami. Program tersebut bermanfaat bagi pasien yang tidak dapat berobat langsung ke puskesmas, mereka dapat berobat melalui daringdengan dokter dari puskesmas. kemudia pasien dapat mengambil obat yang telah diresepkan dengan menggunakan seperti aplikasi gojek atau semacamnya.', 'pinisifix.png', 'isipinisi'),
(41, 'headlambor', '', 'headlamborghini.JPG', 'headlamborghini'),
(42, '', 'Di Indonesia terdapat puluhan ribu Industri Rumah Tangga (IRT) tahu yang berkembang, di wilayah kerja UPTD Puskesmas Cilacap Utara sendiri memiliki satu produsen tahun  dan tempe yakni di RW 06 Kelurahan Gumilir, Kecamatan Cilacap Utara.<br>\r\nProduksi tahu menghasilhan 2 jenis limbah yaitu limbah padat dan limbah cair, pada umumnya limbah padat dimanfaatkan untuk makanan ternak, namun untuk limbah cair langsung dibuang ke lingkungan yang dapat mencemari air, dan udara. <br>\r\nPadahal limbah cair produsen tahu memiliki kandungan senyawa Organik tinggi, yang memiliki potensi untuk menghasilkan BIOGAS melalui proses an-aerobik, namun masih banyak industri tahu dan tempe yang belum memiliki proses pengelolaan limbah cair sendiri. Ketidak mauan produsen tahu dan tempe untuk mengolah limbah cairnya, di sebabkan karena kompleks dan tidak efisiennya proses pengolahan limbah, ditambah lagi biaya yang cukup besar diawal pembuatannya. <br>\r\nMaka dari itu, UPTD Puskesmas Cilacap Utara I di tahun 2018 mencanangkan program inovasi <strong>Lamborghini (Limbah Air Membawa Berkah Ekonomi Hari Ini)</strong> dengan sasaran produsen tahu di RW 06 Kelurahan Gumilir, Kecamatan Cilacap Utara dapat mandiri mengolah hasil limbah produksi tahu dan tempe dan dengan harapan dapat menekan pencemaran lingkungan di wilayah produsen tahu dan tempe tersebut serta membawa manfaat bagi warga sekitar.', 'Limbah Tahu.png', 'isilamborghini'),
(43, 'headpromkes', '', 'headpromkes.JPG', 'headerpromkes'),
(44, '', 'Promosi Kesehatan , pemberdayaan masyarakat dan Ilmu Perilaku merupakan program esensial dari Upaya Kesehatan Masyarakat yang wajib dimiliki Puskesmas. Fungsinya sebagai penggerak pemberdayaan kepada masyarakat untuk mencegah penyakit dan meningkatkan kesehatan setiap individu, keluarga serta lingkungannya secara mandiri dan mengembangkan upaya kesehatan bersumber masyarakat. Adapun Tugas dan fungsi bidang ini adalah:<br>\r\n1. Edukasi/ Penyuluhan Kesehatan \r\n   komunitas dan individu<br>\r\n2. Pembinaan UKBM (Upaya Kesehatan \r\n   Berbasis Masyarakat), Desa Siaga, \r\n   PHBS<br>\r\n3. Melakukan Advokasi, Bina susana, \r\n   Pemberdayaan masyarakat dan kemitraan \r\n   di bidang kesehatan<br>\r\n4. Melakukan kegiatan promosi kesehatan/ \r\n   membuat konten berbasis media online \r\n   (Web, Instagram, Facebok, WA, dll).', '', 'isipromkes'),
(45, 'headkesehatanlingkungan', '', 'headlingkungan.JPG', 'headerlingkungan'),
(46, '', 'Pelayanan Kesehatan Lingkungan adalah kegiatan atau serangkaian kegiatan yang ditujukan untuk mewujudkan kualitas lingkungan yang sehat baik dari aspek fisik, kimia, biologi, maupun sosial guna mencegah penyakit dan/atau gangguan kesehatan yang diakibatkan oleh faktor risiko lingkungan.<br>\r\nKegiatan Pelayanan Kesehatan Lingkungan dilakukan dalam bentuk:<br>\r\n1. Konseling terhadap Pasien yang \r\n   menderita penyakit dan/atau gangguan \r\n   kesehatan yang diakibatkan oleh Faktor \r\n   Risiko Lingkungan.<br>\r\n2. Inspeksi Kesehatan Lingkungan<br>\r\n   - Pengamatan fisik media \r\n     lingkungan<br>\r\n   - Pengukuran media lingkungan di \r\n     tempat<br>\r\n   - Uji laboratorium<br>\r\n   - Analisis risiko kesehatan \r\n     lingkungan<br>\r\n3. Intervensi Kesehatan Lingkungan<br>\r\n   - Komunikasi, informasi, dan edukasi, \r\n     serta penggerakan/pemberdayaan \r\n     masyarakat<br>\r\n   - Perbaikan dan pembangunan sarana<br>\r\n   - Pengembangan teknologi tepat \r\n     guna<br>\r\n   - Rekayasa lingkungan.', '', 'isikesehatanlingkungan'),
(47, 'headgizimas', '', 'headgizi.JPG', 'headergizimasyarakat'),
(48, '', 'Pelayanan gizi masyarakat adalah suatu kegiatan atau pelayanan yang bertujuan untuk meningkatkan mutu gizi perorangan dan masyarakat, antara lain melalui perbaikan pola konsumsi makanan, perbaikan perilaku sadar gizi dan peningkatan akses dan mutu pelayanan gizi dan kesehatan sesuai dengan kemajuan ilmu dan teknologi.<br>\r\nDi masyarakat, upaya perbaikan gizi dilakukan oleh para petugas gizi Puskesmas bersama sama dengan masyarakat setempat. Kegiatannya dilakukan didalam gedung maupun diluar gedung dan bekerja sama dengan lintas program maupun lintas sektor.<br>\r\nPelayanan Gizi Masyarakat dibagi dalam 2 macam kegiatan, yaitu :<br>\r\n1. Kegiatan dalam gedung puskesmas, \r\n   meliputi :<br>\r\n  - Pengkajian gizi<br>\r\n  - Penentuan diagnosa gizi<br>\r\n  - Intervensi gizi<br>\r\n  - Monitoring dan evaluasi<br>\r\n2. Kegiatan luar gedung puskesmas, \r\n   meliputi :<br>\r\n  - Edukasi gizi<br>\r\n  - Konseling ASI Eklusif dan PMBA<br>\r\n  - Konseling gizi melalui Pos Pembinaan \r\n    Terpadu Penyakit Tidak Menular \r\n    (POSBINDU PTM)<br>\r\n  - Pengelolaan Pemberian Vitamin A pada \r\n    anak<br>\r\n  - Pengelolaan pemberian Tablet Tambah \r\n    Darah(TTD) untuk ibu hamil, remaja \r\n    putri dan Ibu nifas<br>\r\n  - Edukasi pencegahan Anemia pada remaja \r\n    putri dan WUS<br>\r\n  - Pengelolaan pemberian MP-ASI dan PMT \r\n    Pemulihan<br>\r\n  - Pemantauan garam beryodium<br>\r\n  - Posyandu Balita BGM<br>\r\n  - Surveilans Gizi<br>\r\n  - Pembinaan Gizi Institusi<br>\r\n  - Kerjasama lintas sektor dan lintas \r\n    program.', '', 'isigizimasyarakat'),
(49, 'headpencegahan', '', 'headpencegahan.JPG', 'headerpencegahan'),
(50, '', 'Pencegahan dan Pengendalian Penyakit merupakan salah satu kegiatan pelayanan kesehatan di masyarakat. Program ini terdiri dari pencegahan terhadap penyakit menular , pencegahan tidak menular, imunisasi dan surveilans kesehatan.\r\n<br>\r\nTujuan dari program P2P diantaranya adalah meningkatkan upaya pencegahan dan pemberantasan penyakit menular dan tidak menular, meningkatkan deteksi dini dan respon cepat terhadap penanggulangan KLB, meningkatkan perilaku sehat dan upaya kesehatan bersumber daya masyarakat, menemukan dan mengobati penderita penyakit menular sedini mungkin agar tidak meluas atau menimbulkan wabah.<br>\r\nJenis kegiatan P2P:<br>\r\n1. Surveilans :<br>', '', 'isipencegahan'),
(51, 'headkeskeluarga', '', 'headkeluarga.JPG', 'headerkeskeluarga'),
(52, '', 'Pelayanan kesehatan keluarga meliputi :\r\n<br>\r\n1. Pelayanan Kesehatan Remaja<br>\r\n   Jenis Kegiatan : Posyandu Remaja, \r\n   Penyuluhan, Screening kunjungan ke \r\n   Sekolah-Sekolah<br>\r\n2. Pelayanan Kesehatan Ibu hamil<br>\r\n   Jenis Kegiatan : PHN / Kunjungan rumah \r\n   ibu hamil risiko tinggi<br>\r\n3. Pelayanan kesehatan ibu dan balita \r\n   (KIA-KB)<br>\r\n   Jenis Kegiatan : Posyandu Balita<br>\r\n4. Pelayanan Kesehatan Calon Pengantin\r\n   Jenis Kegiatan: Edukasi calon \r\n   pengantin bekerjasama dengan KUA<br>\r\n5. Pelayanan kesehatan Lansia<br>\r\n   Jenis Kegiatan : Posyandu Lansia\r\n   PERKESMAS (Pelayanan Keperawatan pada \r\n   Masyarakat)<br>\r\n   Jenis Kegiatan : Kunjungan rumah<br>\r\n6. Program Indonesia Sehat dengan \r\n   Pendekatan Keluarga (PIS-PK)<br>\r\n   Jenis Kegiatan : Kunjungan rumah<br>\r\n7. Program Pengelolaan Penyakit \r\n   Kronis<br>\r\n   Jenis Kegiatan : Mendorong peserta \r\n   BPJS penyandang penyakit kronis \r\n   mencapai kualitas hidup optimal.', '', 'isikesehatankeluarga'),
(53, 'headupayakeskerja', '', 'headukk.JPG', 'headerkeskerja'),
(54, '', 'Setiap jenis dan tempat pekerjaan baik pada pekerja formal maupun informal memiliki risiko yang dapat menyebabkan gangguan kesehatan. Adapun mata pencaharian masyarakat di wilayah kerja Puskesmas Cilacap Utara I yang beragam dari petani, nelayan, pariwisata sampai industri rumahan dan kesemua sektor tersebut memiliki risiko gangguan kesehatan masing-masing.<br>\r\n\r\nMaka dibentuklah Pos Upaya Kesehatan Kerja (UKK), wadah dari serangkaian upaya pemeliharaan kesehatan pekerja informal yang bersumberdaya dari, oleh dan untuk masyarakat pekerja itu sendiri. Pos UKK dibentuk untuk meningkatkan kesehatan pekerja sehingga dapat meningkatkan produktivitas kerja.<br>\r\nPuskesmas Cilacap Utara I saat ini memiliki 3 Binaan Pos Upaya Kesehatan Kerja (POS UKK), diantaranya:<br>\r\n', '', 'isiukk1'),
(55, '', 'Pos UKK (Upaya Kesehatan Kerja) merupakan bentuk Upaya Kesehatan Bersumberdaya Masyarakat (UKBM) yang memberikan Pelayanan Kesehatan Dasar bagi masyarakat pekerja terutama pekerja informal serta merupakan wadah dari serangkaian upaya pemeliharaan kesehatan pekerja yang terencana, teratur, dan berkesinambungan yang diselenggarakan oleh dan untuk masyarakat pekerja. Pos UKK (Upaya Kesehata Kerja) NGUPOYO WALUYO – LENGKONG Kelurahan mertasinga kecamatan Cilacap Utara bekerja sama dengan UPTD Puskesmas Cilacap Utara I Mengadakan pengobatan dan pemeriksaan laboratorium setiap hari Jumat Kliwon.<br>\r\n\r\nPada awalnya POS UKK NGUPOYO WALUYO – LENGKONG ini ditujukan utk pelayanan kesehatan bagi Nelayan dan keluarganya, tetapi seiring kebutuhan masyarakat tentang pentingnya kesehatan, sekarang masyarakat umum pun ikut berbondong – bondong memeriksakan kesehatan ke pos UKK Ngupoyo Waluyo Lengkong Mertasinga. Untuk Pemeriksaan yang dilaksanakan di POS UKK NGUPOYO WALUYO – LENGKONG meliputi, pemeriksaan umum, pengobatan, dan cek three in one gula darah, asam urat, dan kolesterol.<br>\r\nDengan dukungan dari Kader kesehatan wilayah setempat, RT, RW, kelurahan kecamatan dan semua pihak sekarang kegiatan sudah bisa berjalan dgn baik dan lancar.', 'ngupowaluyo1.jpeg', 'isiukk2'),
(56, 'headupayakestardisional', '', 'headukt.JPG', 'headeruktradisional'),
(57, '', 'Indonesia memiliki aset keanekaragaman hayati yang sangat besar, sehingga perlu upaya untuk merawat dan melestarikan.<br>\r\nFungsi Puskesmas sebagai pembina wilayah salah satunya terkait obat tradisional yang berasal dari tanaman yang memilki fungsi untuk pemeliharaan kesehatan. Tanaman Obat Keluarga (TOGA) dapat memenuhi upaya kesehatan preventif (pencegahan penyakit), promotif (peningkatan derajat kesehatan), kuratif (penyembuhan penyakit) dan rehabilitatif (pemulihan kesehatan). Selain itu TOGA juga berfungsi untuk meningkatkan kesejahteraan keluarga antara lain sebagai sarana untuk :<br>\r\n1. Memperbaiki status gizi keluarga<br>\r\n2. Menambah penghasilan keluarga<br>\r\n3. Meningkatkan kesehatan lingkungan \r\n   pemukiman<br>\r\n4. Melestarikan tanaman obat dan budaya \r\n   bangsa<br>', '', 'isiuktradisional'),
(58, 'headukgigisekolah', '', 'headukgs.JPG', 'headerukgs'),
(59, '', 'Pelayanan kesehatan keluarga meliputi :<br>\r\n\r\na. Pelayanan Kesehatan Remaja<br>\r\n   Jenis Kegiatan : Posyandu Remaja, \r\n   Penyuluhan, Screening kunjungan ke \r\n   sekolah-sekolah<br>\r\nb. Pelayanan Kesehatan Ibu hamil<br>\r\n   Jenis Kegiatan : PHN / Kunjungan rumah \r\n   ibu hamil risiko tinggi<br>\r\nc. Pelayanan kesehatan ibu dan balita \r\n   (KIA-KB)<br>\r\n   Jenis Kegiatan : Posyandu Balita<br>\r\nd. Pelayanan Kesehatan Calon \r\n   Pengantin<br>\r\n   Jenis Kegiatan: Edukasi calon \r\n   pengantin bekerjasama dengan KUA<br>\r\ne. Pelayanan kesehatan Lansia<br>\r\n   Jenis Kegiatan : Posyandu Lansia<br>\r\nf. PERKESMAS (Pelayanan Keperawatan pada \r\n   Masyarakat)<br>\r\n   Jenis Kegiatan : Kunjungan rumah<br>\r\ng. Program Indonesia Sehat dengan \r\n   Pendekatan Keluarga (PIS-PK)<br>\r\n   Jenis Kegiatan : Kunjungan rumah<br>\r\nh. Program Pengelolaan Penyakit \r\n   Kronis<br>\r\n   Jenis Kegiatan : Mendorong peserta \r\n   BPJS penyandang penyakit kronis \r\n   mencapai kualitas hidup optimal<br>', '', 'isiukgs'),
(60, 'kuisposyandu', '', 'kuis1fix.JPG', 'fotoisikuis'),
(61, 'kuisposyandu', '', 'kuis2fix.jpg', 'fotoisikuis'),
(62, 'kuisposyandu', '', 'kuis3fix.jpg', 'fotoisikuis'),
(63, 'kuisposyandu', '', 'kuis4fix.jpg', 'fotoisikuis'),
(64, 'kuisposyandu', '', 'kuis5fix.jpg', 'fotoisikuis'),
(65, 'KUALITAS INOVASI DAERAH PROGRAM INOVASI LAPIS LEGIT TAHUN 2023', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PUa6P5SKjSA?si=gkfiC-4YbsbRu5s0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', 'videolapislegit'),
(66, 'profile', 'Nama    : Nofi Kuniasih, SKM<br>\r\nNIPPPK  : <br>\r\nTelepon : 0813-9024-0285<br>\r\nJabatan : Ahli Penyuluh Kesehatan Masyarakat (2019 - sekarang)\r\n', 'bunofi.jpeg', 'profilpengelola'),
(67, 'headprofilepengelola', '', 'headprofilbunofi.jpg', 'headprofilbunofi'),
(68, 'headsugesti', '', 'headsugesti.jpg', 'headersugesti'),
(69, '', '<strong>suGEsti</strong>(selalu upayakan GERMAS setiap hari) sosialisasi senam GERMAS kepada Kader Kesehatan', 'sugestifix.jpg', 'isisugesti'),
(70, 'Desa Siaga survey mawas diri', '', 'desa_smdutamafix.jpeg', 'foto smd'),
(71, 'Desa siaga smd', '', 'desa_smd1fix.jpeg', 'smd2'),
(72, 'PHBS', '', 'phbs1fix.jpeg', 'fotophbs'),
(73, 'PHBS', '', 'bukuphbsfix.jpeg', 'fotophbs2'),
(74, 'GERMAS', '', 'germas1.jpeg', 'fotogermas'),
(75, 'germas', '', 'germas2.jpeg', 'fotogermas'),
(76, 'DesaSiaga_mmd', '', 'desasiaga_mmddix.jpeg', 'desasiaga_mmd'),
(77, 'desasiaga_perencanaan', '', 'perencanaan_desa.jpeg', 'desa_siaga_perencanaan'),
(78, 'desa_siaga_forum', '', 'forum_desasiaga.jpeg', 'desasiaga_forum'),
(79, 'pemeriksa_kes_anak', '', 'periksa_kesanak.jpeg', 'pemeriksaan_kesanak'),
(80, 'periksa_kesehatananak', '', 'periksaanak.jpeg', 'cek_kesanak'),
(81, 'lamborghini', '', 'lambor1.jpeg', 'fotolambor'),
(82, 'lambor', '', 'lambor3.jpeg', 'fotolambor');

-- --------------------------------------------------------

--
-- Table structure for table `ekskul`
--

CREATE TABLE `ekskul` (
  `id` int(11) NOT NULL,
  `title` varchar(900) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ekskul`
--

INSERT INTO `ekskul` (`id`, `title`, `image`) VALUES
(1, 'drumband', 'drumband.jpg'),
(2, 'Pramuka', 'pramuka.jpg'),
(4, 'title', '1611752913.jpg'),
(5, 'Basket', '1611753204.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id` int(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id`, `nama`, `image`, `keterangan`, `type`) VALUES
(2, 'Gizi Masyarakat', 'gizi2.jpeg', 'Kegiatan Bebas Stunting', 'Gizi'),
(3, 'Gizi Sekolah', 'gizi1.jpeg', 'Edukasi Gizi ke Sekolah', 'Gizi'),
(4, 'Gizi Balita', 'gizi3.jpeg', 'Kegiatan Pemberian Gizi kepada Balita', 'Gizi'),
(5, 'Gizi Balita', 'gizi4.jpeg', 'Gizi Terhadap Balita', 'Gizi'),
(7, 'Upaya Kesehatan Gigi Sekolah', 'kesgigi1.jpeg', 'Edukasi Menjaga Kesehatan Gigi Kepada Anak Sekolah', 'KesehatanGigi'),
(8, 'Upaya Kesehatan Gigi Sekolah', 'kesgigi4.jpeg', 'Praktik Sikat Gigi kepada Anak Sekolah', 'KesehatanGigi'),
(9, 'Upaya Kesehatan Gigi Skeolah', 'kesgigi2.jpeg', 'Praktek Sikat Gigi Kepada Anak Sekolah', 'KesehatanGigi'),
(10, 'Upaya Kesehatan Gigi Sekolah', 'kesgigi3.jpeg', 'Praktek Sikat Gigi Kepada Anak Sekolah', 'KesehatanGigi'),
(11, 'Upaya Kesehatan Lingkungan ', 'kesling2.jpeg', 'Kegiatan Upaya Kesehatan Lingkungan Pada Wilayah Kerja Puskesmas Cilacap Utara I', 'KesLingkungan'),
(12, 'Upaya Kesehatan Lingkungan ', 'kesling1.jpeg', 'Kegiatan Upaya Kesehatan Lingkungan Pada Wilayah Kerja Puskesmas Cilacap Utara I', 'KesLingkungan'),
(13, 'Upaya Kesehatan Lingkungan', 'kesling3.jpeg', 'Kegiatan Upaya Kesehatan Lingkungan di Wilayah Kerja Puskesmas Cilacap Utara I', 'KesLingkungan'),
(15, 'Upaya Kesehatan Keluarga', 'keskel1.jpeg', 'Kegiatan Pemeriksaan Kesehtan Keluarga', 'KesKeluarga'),
(16, 'Upaya Kesehatan Keluarga', 'keskel2.jpeg', 'Kegiatan Pemeriksaan Kesehtan Keluarga', 'KesKeluarga'),
(17, 'Upaya Kesehatan Keluarga', 'keskel4.jpeg', 'Kegiatan Pemeriksaan Kesehatan Keluarga', 'KesKeluarga'),
(18, 'Upaya Kesehatan Keluarga Terhadap Ibu Hamil', 'keskel5.jpeg', 'Kegiatan Kelas Kesehatan Keluarga Terhadap Ibu Hamil', 'KesKeluarga'),
(19, 'Upaya Kesehatan Keluarga Terhadap Ibu Hamil', 'keskel7.jpeg', 'Kegiatan Kelas Kesehatan Terhadap Ibu Hamil', 'KesKeluarga'),
(20, 'Upaya Kesehatan Keluarga Terhadap Ibu Hamil', 'keskel6.jpeg', 'Kegiatan Kelas Kesehatan Keluarga Terhadap Ibu Hamil', 'KesKeluarga'),
(21, 'Promosi Kesehatan', 'promkes1.jpeg', 'Kegiatan Promosi Kesehatan ', 'Promkes'),
(22, 'Promosi Kesehatan', 'promkes2.jpeg', 'Kegiatan Promosi Kesehatan', 'Promkes'),
(23, 'Promosi Kesehatan', 'promkes3.jpeg', 'Kegiatan Promosi Kesehatan', 'Promkes'),
(24, 'Promosi Kesehatan', 'promkes4.jpeg', 'Kegiatan Promosi Kesehatan', 'Promkes'),
(25, 'Promosi Kesehatan', 'promkes5.jpeg', 'Kegiatan Promosi Kesehatan', 'Promkes'),
(26, 'Desa Siaga SMD', 'desa_smdutamafix.jpeg', 'Kegiatan Desa Siaga Survey Mawas Diri', 'DesaSiaga'),
(27, 'Desa Siaga ', 'forum_desasiaga.jpeg', 'Kegiatan Forum Desa Siaga', 'DesaSiaga'),
(28, 'Desa Siaga ', 'desa_smd1fix.jpeg', 'Kegiatan Desa Siaga', 'DesaSiaga'),
(29, 'Desa Siaga MMD', 'desasiaga_mmddix.jpeg', 'Kegiatan Desa Siaga Musyawarah Masyarakat Desa', 'DesaSiaga'),
(30, 'Desa Siaga', 'desa_smd2.jpeg', 'Kegiatan Forum Desa Siaga', 'DesaSiaga');

-- --------------------------------------------------------

--
-- Table structure for table `fotokegiatan`
--

CREATE TABLE `fotokegiatan` (
  `id` int(11) NOT NULL,
  `id_foto` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fotokegiatan`
--

INSERT INTO `fotokegiatan` (`id`, `id_foto`, `image`) VALUES
(2, 4, '1611763621.jpg'),
(7, 1, '1611993768.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guru_staff`
--

CREATE TABLE `guru_staff` (
  `id` int(11) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `lahir` varchar(200) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nuptk` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `kepsek` tinyint(1) NOT NULL,
  `guru` tinyint(1) NOT NULL,
  `staff` tinyint(1) NOT NULL,
  `bidang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru_staff`
--

INSERT INTO `guru_staff` (`id`, `nama`, `lahir`, `nip`, `nuptk`, `image`, `kepsek`, `guru`, `staff`, `bidang`) VALUES
(4, 'Nofi Kurniasih, SKM.', '', '32323323232332332', '424244242442424242', 'bunofi.jpeg', 0, 0, 1, 'Promotor Kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `informasi` text NOT NULL,
  `tgl` varchar(200) NOT NULL,
  `jam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `informasi`, `tgl`, `jam`) VALUES
(2, 'pembagian rapot', 'senin, 22 maret 2020', '08.00-09.00');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `tingkat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id`, `image`, `nama`, `kelas`, `jenis`, `tingkat`) VALUES
(1, 'fls2n.jpg', 'Ana Distia', '4a', 'FLS2N', 'kecamatan'),
(3, '1611752378.jpg', 'Rini Fajarwati', 'V-C', 'fls2n', 'provinsi');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarana`
--

CREATE TABLE `sarana` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL,
  `jumlah_ruangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sarana`
--

INSERT INTO `sarana` (`id`, `nama_ruangan`, `jumlah_ruangan`) VALUES
(1, 'Ruang Kepala Sekolah', 12),
(2, 'Ruang Guru', 1),
(3, 'Ruang Kelas', 12),
(4, 'Ruang Perpustakaan', 1),
(6, 'Perpus', 4),
(7, 'PERPUS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text NOT NULL,
  `content` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link`, `content`) VALUES
(3, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/524oPWg_K-0?si=qRO-pWNw59c9d2Zz\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Penyebab dan Perawatan Gigi Kuning'),
(5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rclSioCE-24?si=4ky2JS7mhRME60wI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Pencanangan Aksi Bergizi di SMP N 5 Cilacap Bersama Dinas Kesehatan Kabupaten Cilacap'),
(6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kS8YxFj5DsE?si=sDluFhzz4ZoP3oXe\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'SENAM GERMAS UPTD PUSKESMAS CILACAP UTARA I'),
(8, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/renxU0475F4?si=v6-FiVXEseJa2Zh6\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'GERTAM GERAKAN TANAM CABAI DAN BAWANG MERAH UPTD PUSKESMAS CILACAP UTARA I'),
(10, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zmgDqLFM_ek?si=ZBuDkwoc81mWbNLx\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'CEGAH STUNTING walau banyak hal penting'),
(11, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kgSUb_k0cmE?si=kNm7iEVHhAWxrxzX\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'INOVASI PUSKESMAS LAPIS LEGIT PELAYANAN PRIMA SECARA LENGKAP DIGITAL DAN TERPADU UPTD PUSKESMAS CILACAP I'),
(12, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PUa6P5SKjSA?si=wxXeOo1hsw2itwqb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'KUALITAS INOVASI DAERAH PROGRAM INOVASI LAPIS LEGIT TAHUN 2023'),
(13, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/100zFv8uL_E?si=RHpGXNKyD3fTPjOx\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'INOVASI PUSKESMAS CILACAP UTARA I (LAPIS LEGIT) Pelayanan Prima Secara Lengkap Digital Dan Terpadu.'),
(14, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sr0Uc605syg?si=dQoKV_-CRqRcw3KB\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Kegiatan Promosi Kesehatan Tahun 2022'),
(15, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ljLaw3NUdQk?si=j06kNAMwv-Kw61xg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'PINISI (Pijat Nikmat Sehat Alami) UPTD Puskesmas Cilacap Utara I'),
(16, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/D70V7M0kwGQ?si=anAacuWe5KUzQM5S\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Kesehatan Tradisional (PINISI) Podcast UPTD Puskesmas Cilacap Utara I'),
(17, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zzIjXMa9wag?si=zwbbWTqOHMOL8DU_\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'PROGRAM INOVASI LAMBORGHINI UPTD PUSKESMAS CILACAP UTARA I'),
(18, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kS8YxFj5DsE?si=_Fh8KbTASKFp1AL4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'SENAM GERMAS UPTD PUSKESMAS CILACAP UTARA I'),
(19, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/75dJZcn6ADo?si=d-HNbbz42u7hCPRF\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Senam Peregangan saat Pelayanan di Puskesmas (suGEsti) selalu upayakan GERMAS setiap hari'),
(20, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jABJSHSB6P8?si=IW8e9IXe2CCDlNo6\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Kunjungan Kader Kesehatan Dari 38 Puskesmas di Kabupaten Cilacap ke Pos UKK Ngupoyo Waluyo Lengkong'),
(21, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OTyUqyAwS8o?si=9xgu3q9X-tmhT7YH\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'suGEsti (selalu upayakan GERMAS setiap hari) sosialisasi senam GERMAS kepada Kader Kesehatan'),
(22, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/75dJZcn6ADo?si=sNGbFFhkITX48Mt5\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Senam Peregangan saat Pelayanan di Puskesmas (suGEsti) selalu upayakan GERMAS setiap hari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritahome`
--
ALTER TABLE `beritahome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekskul`
--
ALTER TABLE `ekskul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fotokegiatan`
--
ALTER TABLE `fotokegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru_staff`
--
ALTER TABLE `guru_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sarana`
--
ALTER TABLE `sarana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `beritahome`
--
ALTER TABLE `beritahome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `ekskul`
--
ALTER TABLE `ekskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `fotokegiatan`
--
ALTER TABLE `fotokegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `guru_staff`
--
ALTER TABLE `guru_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sarana`
--
ALTER TABLE `sarana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
