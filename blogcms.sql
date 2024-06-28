-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 09:45 AM
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
-- Database: `blogcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin`
--

CREATE TABLE `cms_admin` (
  `id` int(11) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `added_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cms_admin`
--

INSERT INTO `cms_admin` (`id`, `date_time`, `username`, `password`, `added_by`) VALUES
(10, '2024-06-21 14:39:57 ', 'admin', 'admin123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cms_category`
--

CREATE TABLE `cms_category` (
  `cat_id` int(11) NOT NULL,
  `cat_datetime` date NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_creator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cms_category`
--

INSERT INTO `cms_category` (`cat_id`, `cat_datetime`, `cat_name`, `cat_creator`) VALUES
(29, '2024-06-21', 'olahraga', 'admin'),
(30, '2024-06-21', 'transportasi', 'admin'),
(31, '2024-06-21', 'pendidikan', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cms_post`
--

CREATE TABLE `cms_post` (
  `post_id` int(11) NOT NULL,
  `post_date_time` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cms_post`
--

INSERT INTO `cms_post` (`post_id`, `post_date_time`, `title`, `category`, `author`, `image`, `post`) VALUES
(13, '2024-06-21', 'Manfaat Olahraga untuk Kesehatan ', 'olahraga', 'admin', 'download.jpeg', 'Olahraga bukan hanya sekadar aktivitas fisik yang dilakukan untuk menjaga bentuk tubuh. Lebih dari itu, olahraga memiliki banyak manfaat yang luar biasa bagi kesehatan dan kualitas hidup kita. Berikut adalah beberapa alasan mengapa olahraga penting dan bagaimana kita bisa mulai menerapkannya dalam rutinitas sehari-hari.\r\n\r\n 1. Meningkatkan Kesehatan Jantung\r\n\r\nOlahraga secara teratur dapat membantu meningkatkan kesehatan jantung. Aktivitas seperti berlari, bersepeda, atau berenang dapat memperkuat otot jantung, meningkatkan sirkulasi darah, dan mengurangi risiko penyakit jantung. Studi menunjukkan bahwa orang yang rutin berolahraga memiliki tekanan darah yang lebih stabil dan kadar kolesterol yang lebih baik.\r\n\r\n 2. Membantu Mengontrol Berat Badan\r\n\r\nSalah satu manfaat paling jelas dari olahraga adalah kemampuannya untuk membantu mengontrol berat badan. Dengan berolahraga, kalori yang masuk dan keluar dapat seimbang. Ini sangat penting untuk mencegah obesitas, yang dapat menyebabkan berbagai penyakit seperti diabetes tipe 2 dan tekanan darah tinggi.\r\n\r\n 3. Meningkatkan Kesehatan Mental\r\n\r\nOlahraga tidak hanya bermanfaat bagi tubuh, tetapi juga bagi pikiran. Aktivitas fisik dapat meningkatkan produksi hormon endorfin yang dikenal sebagai \"hormon kebahagiaan\". Hal ini dapat membantu mengurangi stres, kecemasan, dan depresi. Banyak orang melaporkan merasa lebih berenergi dan memiliki mood yang lebih baik setelah berolahraga.\r\n\r\n 4. Memperkuat Tulang dan Otot\r\n\r\nSeiring bertambahnya usia, kita rentan terhadap penurunan kepadatan tulang dan massa otot. Olahraga, terutama latihan beban seperti angkat beban dan yoga, dapat membantu menjaga kekuatan tulang dan otot. Ini penting untuk mencegah osteoporosis dan cedera.\r\n\r\n 5. Meningkatkan Kualitas Tidur\r\n\r\nBanyak penelitian menunjukkan bahwa orang yang berolahraga secara teratur cenderung memiliki kualitas tidur yang lebih baik. Olahraga membantu mengatur pola tidur dan mengurangi gejala insomnia. Namun, penting untuk tidak berolahraga terlalu dekat dengan waktu tidur karena bisa membuat tubuh terlalu terjaga.\r\n\r\n 6. Meningkatkan Fungsi Kognitif\r\n\r\nOlahraga juga memiliki dampak positif pada fungsi otak. Aktivitas fisik meningkatkan aliran darah ke otak, yang dapat membantu meningkatkan konsentrasi, memori, dan kemampuan belajar. Ini sangat penting bagi pelajar dan orang tua yang ingin menjaga kesehatan otak mereka.\r\n\r\n Bagaimana Memulai Rutinitas Olahraga?\r\n\r\nMemulai rutinitas olahraga tidak harus sulit. Berikut adalah beberapa tips untuk memulai:\r\n\r\n1. Pilih Aktivitas yang Anda Nikmati: Temukan jenis olahraga yang Anda sukai, apakah itu berlari, bersepeda, berenang, atau yoga. Ini akan membuat Anda lebih termotivasi untuk melakukannya secara konsisten.\r\n\r\n2. Mulai dengan Perlahan: Jangan langsung memaksakan diri dengan latihan yang berat. Mulailah dengan aktivitas ringan dan tingkatkan intensitasnya secara bertahap.\r\n\r\n3. Jadwalkan Waktu Olahraga: Tentukan waktu tertentu dalam sehari untuk berolahraga dan jadikan itu sebagai bagian dari rutinitas harian Anda.\r\n\r\n4. Bergabung dengan Komunitas: Bergabung dengan klub olahraga atau kelompok kebugaran bisa menjadi cara yang bagus untuk mendapatkan dukungan dan motivasi.\r\n\r\n5. Pantau Kemajuan Anda: Gunakan aplikasi atau catatan untuk memantau kemajuan Anda. Ini bisa membantu Anda melihat pencapaian dan tetap termotivasi.\r\n\r\n Kesimpulan\r\n\r\nOlahraga adalah investasi jangka panjang untuk kesehatan dan kualitas hidup yang lebih baik. Dengan memahami manfaatnya dan memulai dengan langkah kecil, kita bisa membuat perubahan besar dalam hidup kita. Jadi, mari kita bergerak dan mulai hidup lebih sehat dan bahagia!'),
(14, '2024-06-21', 'Pentingnya Pendidikan', 'pendidikan', 'admin', 'download (1).jpeg', 'Pendidikan adalah fondasi utama dalam membentuk individu dan masyarakat yang cerdas, kreatif, dan bertanggung jawab. Melalui pendidikan, kita tidak hanya memperoleh pengetahuan dan keterampilan, tetapi juga nilai-nilai moral dan etika yang penting. Berikut adalah beberapa alasan mengapa pendidikan sangat penting dan bagaimana kita bisa terus mendukungnya.\r\n\r\n 1. Meningkatkan Peluang Ekonomi\r\n\r\nPendidikan adalah kunci untuk membuka peluang ekonomi yang lebih baik. Dengan pendidikan yang memadai, seseorang dapat memperoleh keterampilan dan pengetahuan yang diperlukan untuk mendapatkan pekerjaan yang baik. Ini berkontribusi pada peningkatan pendapatan dan standar hidup. Studi menunjukkan bahwa tingkat pendidikan yang lebih tinggi seringkali berhubungan dengan tingkat pengangguran yang lebih rendah dan gaji yang lebih tinggi.\r\n\r\n 2. Membangun Kemampuan Berpikir Kritis\r\n\r\nSalah satu tujuan utama pendidikan adalah untuk mengembangkan kemampuan berpikir kritis. Melalui pendidikan, kita diajarkan untuk menganalisis informasi, membuat keputusan yang bijaksana, dan memecahkan masalah dengan efektif. Kemampuan berpikir kritis sangat penting dalam kehidupan sehari-hari, baik dalam konteks pribadi maupun profesional.\r\n\r\n 3. Meningkatkan Kualitas Hidup\r\n\r\nPendidikan berperan besar dalam meningkatkan kualitas hidup. Dengan pengetahuan yang diperoleh melalui pendidikan, kita dapat membuat keputusan yang lebih baik terkait kesehatan, keuangan, dan hubungan sosial. Pendidikan juga memungkinkan kita untuk memahami dan menghargai berbagai budaya dan perspektif, yang penting dalam dunia yang semakin global dan terhubung.\r\n\r\n 4. Membentuk Karakter dan Etika\r\n\r\nPendidikan tidak hanya tentang pengetahuan akademis, tetapi juga tentang pembentukan karakter. Melalui pendidikan, kita diajarkan nilai-nilai seperti integritas, kerja keras, tanggung jawab, dan empati. Nilai-nilai ini penting untuk membentuk individu yang berperilaku baik dan bertanggung jawab dalam masyarakat.\r\n\r\n 5. Mendorong Inovasi dan Kreativitas\r\n\r\nPendidikan yang baik dapat mendorong inovasi dan kreativitas. Di lingkungan yang mendukung dan mendorong eksplorasi, siswa dapat mengembangkan ide-ide baru dan solusi kreatif untuk berbagai tantangan. Inovasi dan kreativitas ini penting untuk kemajuan teknologi dan sosial.\r\n\r\n 6. Memperkuat Demokrasi dan Keterlibatan Sosial\r\n\r\nPendidikan juga penting untuk memperkuat demokrasi dan keterlibatan sosial. Melalui pendidikan, individu dapat memahami hak dan kewajiban mereka sebagai warga negara, serta pentingnya partisipasi dalam proses demokrasi. Pendidikan yang baik juga mendorong keterlibatan dalam berbagai kegiatan sosial dan komunitas.\r\n\r\n Cara Mendukung Pendidikan\r\n\r\nAda banyak cara untuk mendukung pendidikan dan memastikan akses yang lebih luas bagi semua orang:\r\n\r\n1. Mendukung Kebijakan Pendidikan: Berpartisipasi dalam advokasi untuk kebijakan pendidikan yang adil dan inklusif.\r\n2. Menyumbang untuk Pendidikan: Menyumbangkan waktu, uang, atau sumber daya lain untuk mendukung program pendidikan, terutama di daerah yang kurang terlayani.\r\n3. Mengajar dan Membimbing: Berkontribusi dengan mengajar atau membimbing siswa secara sukarela.\r\n4. Mempromosikan Pendidikan Berkelanjutan: Mendorong pembelajaran sepanjang hayat melalui program pelatihan dan pendidikan bagi orang dewasa.\r\n5. Menggunakan Teknologi untuk Pendidikan: Mendukung penggunaan teknologi untuk meningkatkan akses dan kualitas pendidikan, terutama di daerah terpencil.\r\n\r\n Kesimpulan\r\n\r\nPendidikan adalah investasi terbaik yang dapat kita berikan kepada diri kita sendiri dan generasi mendatang. Dengan memahami pentingnya pendidikan dan berkontribusi untuk mendukungnya, kita dapat membangun masa depan yang lebih cerah dan berkelanjutan. Mari kita bersama-sama memperjuangkan pendidikan yang berkualitas untuk semua!\r\n\r\n								'),
(15, '2024-06-21', 'Transportasi: Kunci Mobilitas dan Pembangunan', 'transportasi', 'admin', 'images.jpeg', 'Transportasi adalah salah satu elemen paling vital dalam kehidupan modern. Dengan adanya sistem transportasi yang efisien, kita dapat bergerak dengan mudah dari satu tempat ke tempat lain, baik untuk bekerja, belajar, atau bersosialisasi. Transportasi juga memainkan peran penting dalam ekonomi, lingkungan, dan kualitas hidup. Berikut adalah beberapa aspek penting tentang transportasi dan bagaimana kita bisa meningkatkan sistem transportasi kita.\r\n\r\n 1. Pentingnya Transportasi dalam Ekonomi\r\n\r\nTransportasi adalah tulang punggung ekonomi modern. Tanpa transportasi yang efektif, barang dan jasa tidak dapat dikirimkan tepat waktu, yang dapat menghambat pertumbuhan ekonomi. Sistem transportasi yang baik memungkinkan perdagangan yang lebih efisien, mengurangi biaya logistik, dan membuka akses ke pasar yang lebih luas. Selain itu, transportasi yang andal dapat menarik investasi dan mendukung industri pariwisata.\r\n\r\n 2. Transportasi dan Lingkungan\r\n\r\nTransportasi juga memiliki dampak besar terhadap lingkungan. Kendaraan bermotor adalah salah satu sumber utama emisi gas rumah kaca yang berkontribusi terhadap perubahan iklim. Oleh karena itu, penting untuk mengembangkan sistem transportasi yang ramah lingkungan. Ini termasuk mendorong penggunaan transportasi umum, bersepeda, berjalan kaki, serta mengembangkan teknologi kendaraan listrik dan hibrida.\r\n\r\n 3. Transportasi Umum: Solusi untuk Kemacetan\r\n\r\nTransportasi umum adalah solusi yang efektif untuk mengurangi kemacetan di kota-kota besar. Dengan menggunakan transportasi umum seperti bus, kereta api, dan metro, kita dapat mengurangi jumlah kendaraan pribadi di jalan, yang akan mengurangi kemacetan dan polusi udara. Selain itu, transportasi umum seringkali lebih ekonomis dan dapat diakses oleh berbagai lapisan masyarakat.\r\n\r\n 4. Inovasi dalam Transportasi\r\n\r\nTeknologi telah membawa banyak inovasi dalam sektor transportasi. Dari kendaraan otonom hingga aplikasi berbagi perjalanan seperti Uber dan Grab, teknologi terus mengubah cara kita bepergian. Penerapan sistem transportasi pintar (smart transportation) juga dapat meningkatkan efisiensi lalu lintas dan keselamatan di jalan raya. Misalnya, penggunaan sensor dan data untuk mengatur lalu lintas dapat mengurangi kemacetan dan mempercepat waktu perjalanan.\r\n\r\n 5. Infrastruktur Transportasi\r\n\r\nInfrastruktur yang baik adalah kunci untuk sistem transportasi yang efisien. Ini termasuk jalan raya, jembatan, bandara, pelabuhan, dan jalur kereta api yang terawat dengan baik. Pemerintah dan sektor swasta harus bekerja sama untuk memastikan bahwa infrastruktur ini dibangun dan dipelihara dengan baik. Investasi dalam infrastruktur transportasi tidak hanya meningkatkan mobilitas tetapi juga mendorong pertumbuhan ekonomi.\r\n\r\n 6. Transportasi dan Kualitas Hidup\r\n\r\nTransportasi juga mempengaruhi kualitas hidup kita. Akses ke transportasi yang baik memungkinkan kita untuk menjangkau tempat kerja, sekolah, fasilitas kesehatan, dan tempat rekreasi dengan mudah. Transportasi yang aman dan nyaman juga dapat meningkatkan kesejahteraan sosial dan kesehatan mental. Oleh karena itu, penting untuk merancang sistem transportasi yang inklusif dan aksesibel bagi semua orang, termasuk mereka yang memiliki kebutuhan khusus.								');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `status` varchar(50) NOT NULL,
  `approve_by` varchar(50) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_admin`
--
ALTER TABLE `cms_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_category`
--
ALTER TABLE `cms_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cms_post`
--
ALTER TABLE `cms_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_admin`
--
ALTER TABLE `cms_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_category`
--
ALTER TABLE `cms_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cms_post`
--
ALTER TABLE `cms_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
