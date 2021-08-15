/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.23 : Database - interview
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`interview` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `interview`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barang_nm` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `barang` */

insert  into `barang`(`id`,`barang_nm`,`harga`,`deskripsi`,`created_at`,`updated_at`) values (1,'Rahmi Purwanti M.TI.',85,'Jr. Baik No. 496, Pagar Alam 90753, SulSel','2009-03-03 04:01:35',NULL),(2,'Hasna Fathonah Mardhiyah S.Ked',633,'Ds. Dipenogoro No. 500, Pangkal Pinang 85670, KalTeng','2013-10-02 22:16:40',NULL),(3,'Warta Kusumo S.Kom',891,'Ds. Pelajar Pejuang 45 No. 258, Bontang 23689, KalTeng','1986-12-18 04:00:56',NULL),(4,'Zelaya Aryani',890,'Jln. Baranang No. 261, Makassar 95105, KalSel','1970-10-06 09:53:41',NULL),(5,'Sadina Nasyiah M.Ak',95,'Kpg. Babakan No. 355, Tebing Tinggi 21367, DIY','2002-10-12 15:52:35',NULL),(6,'Bakti Samosir',329,'Dk. Taman No. 849, Batu 72736, Jambi','2015-07-09 22:10:21',NULL),(7,'Harsana Nugroho',341,'Dk. Wahid Hasyim No. 402, Tarakan 47877, JaTim','2011-09-17 02:13:51',NULL),(8,'Humaira Farah Pratiwi M.Ak',608,'Gg. Bagis Utama No. 848, Cimahi 74985, NTB','2007-05-26 01:45:03',NULL),(9,'Indah Palastri',954,'Psr. Bara Tambar No. 180, Kediri 10260, Lampung','2018-02-13 08:31:24',NULL),(10,'Devi Usada',824,'Dk. Moch. Ramdan No. 87, Parepare 34389, SumSel','1971-03-31 18:18:57',NULL),(11,'Dirja Joko Mangunsong',335,'Jln. Bappenas No. 210, Bandar Lampung 80026, Maluku','1971-09-17 15:18:02',NULL),(12,'Ella Eva Yuliarti',496,'Ds. Kyai Mojo No. 887, Subulussalam 78197, Riau','1970-12-07 20:45:28',NULL),(13,'Elma Winarsih',126,'Ki. Baja Raya No. 991, Bitung 73924, NTT','1998-12-19 15:40:39',NULL),(14,'Jessica Rahayu',884,'Gg. Basuki No. 978, Pariaman 45890, BaBel','2015-12-24 13:07:03',NULL),(15,'Aurora Mandasari',132,'Jln. Aceh No. 99, Samarinda 73568, Bengkulu','1999-01-04 23:12:22',NULL),(16,'Febi Lalita Uyainah',286,'Gg. Padang No. 455, Samarinda 90523, KalTim','1971-11-03 23:58:02',NULL),(17,'Julia Oktaviani S.IP',639,'Gg. Bagis Utama No. 576, Bandung 80360, KalBar','2000-04-24 20:31:55',NULL),(18,'Irsad Marbun',915,'Ki. Kebangkitan Nasional No. 739, Tasikmalaya 59213, BaBel','1974-05-04 13:47:16',NULL),(19,'Sarah Fitriani Rahmawati',663,'Jr. Sugiyopranoto No. 506, Ternate 88589, KalSel','2009-06-03 06:02:47',NULL),(20,'Unjani Eva Melani S.Kom',376,'Gg. Wahid No. 206, Parepare 79605, SulBar','1971-10-12 13:59:05',NULL),(21,'Dipa Nababan',463,'Ds. Wora Wari No. 163, Pekalongan 27668, SumUt','2007-08-18 23:34:44',NULL),(22,'Safina Raisa Winarsih',843,'Ki. Cikutra Barat No. 836, Tegal 29505, Jambi','1985-10-16 17:17:06',NULL),(23,'Zamira Hariyah',9,'Kpg. Bacang No. 172, Palembang 25183, KalSel','2015-06-21 10:33:59',NULL),(24,'Makara Pradana',341,'Gg. Bayan No. 228, Tarakan 94675, Banten','1985-03-25 01:25:15',NULL),(25,'Sidiq Rendy Setiawan',747,'Gg. Cikapayang No. 203, Tual 37683, Lampung','1971-07-21 07:24:08',NULL),(26,'Silvia Usamah',373,'Jr. Uluwatu No. 843, Probolinggo 97051, KalTeng','2020-11-30 11:15:48',NULL),(27,'Kardi Prayoga',216,'Jln. Yohanes No. 983, Pematangsiantar 85480, Aceh','1975-05-08 18:35:45',NULL),(28,'Lalita Hariyah',436,'Ki. Taman No. 204, Bontang 39262, SulTra','1993-04-20 18:31:28',NULL),(29,'Rangga Irnanto Hardiansyah',922,'Ds. Labu No. 714, Pematangsiantar 62527, Maluku','1977-05-07 00:50:08',NULL),(30,'Pia Rahimah',705,'Dk. Basmol Raya No. 100, Mataram 77518, KepR','2017-10-26 11:48:08',NULL),(31,'Gawati Hartati',37,'Jln. Gajah Mada No. 849, Tarakan 44053, Maluku','2005-04-02 00:56:22',NULL),(32,'Okto Iswahyudi',784,'Ds. Gatot Subroto No. 501, Pangkal Pinang 65675, KalBar','1977-10-27 12:46:12',NULL),(33,'Humaira Zahra Permata',946,'Dk. K.H. Maskur No. 178, Padangpanjang 71336, SumUt','1972-02-25 19:59:50',NULL),(34,'Hari Haryanto',329,'Jln. Sudirman No. 180, Administrasi Jakarta Barat 79260, Bengkulu','1986-09-02 16:18:27',NULL),(35,'Indra Santoso S.Pd',873,'Dk. Sutan Syahrir No. 805, Banjar 42908, Gorontalo','2005-10-14 08:21:45',NULL),(36,'Rahayu Prastuti',627,'Kpg. Baha No. 151, Pematangsiantar 52971, JaBar','2014-03-10 21:39:02',NULL),(37,'Caraka Damar Sitorus',385,'Ki. Tentara Pelajar No. 493, Bandar Lampung 54968, KalSel','2016-11-24 11:18:40',NULL),(38,'Elvina Anggraini',575,'Ki. Pasir Koja No. 804, Cirebon 72279, SumBar','1977-03-10 15:35:33',NULL),(39,'Rafi Gunawan S.IP',213,'Kpg. Yogyakarta No. 533, Banjarmasin 90891, Riau','2021-03-02 18:59:02',NULL),(40,'Edward Jais Dabukke',187,'Gg. Yap Tjwan Bing No. 661, Magelang 38606, JaBar','1984-03-24 18:17:53',NULL),(41,'Rachel Safitri',771,'Psr. Baranang Siang Indah No. 769, Palangka Raya 35609, DIY','2007-05-05 19:34:07',NULL),(42,'Digdaya Najmudin',801,'Jln. Perintis Kemerdekaan No. 555, Bandung 57707, BaBel','1986-11-21 19:59:49',NULL),(43,'Wakiman Rangga Rajata S.Pt',803,'Dk. Ikan No. 723, Binjai 43386, KalBar','2010-11-05 09:52:39',NULL),(44,'Asmuni Lulut Lazuardi',414,'Psr. W.R. Supratman No. 774, Padangpanjang 47618, KalSel','1979-09-20 00:16:46',NULL),(45,'Calista Yunita Puspasari',749,'Ki. Kebangkitan Nasional No. 423, Batu 36187, JaTim','1973-08-03 02:42:53',NULL),(46,'Drajat Januar',869,'Dk. Ahmad Dahlan No. 68, Tual 23806, PapBar','1981-05-09 20:50:38',NULL),(47,'Mutia Hasanah',610,'Ds. M.T. Haryono No. 84, Batam 91950, Papua','1993-01-20 15:51:55',NULL),(48,'Rosman Natsir S.IP',909,'Kpg. Taman No. 868, Cimahi 55825, Bali','2001-07-03 22:58:44',NULL),(49,'Hartana Sihombing',649,'Ds. Bahagia No. 607, Pekanbaru 64641, SumSel','2018-05-21 19:08:36',NULL),(50,'Rachel Lili Laksmiwati S.Farm',133,'Kpg. Adisumarmo No. 60, Bandar Lampung 39961, Lampung','2016-05-24 19:42:59',NULL),(51,'Catur Natsir',192,'Kpg. Baranang No. 821, Prabumulih 79016, SulSel','1994-01-25 05:48:32',NULL),(52,'Kajen Gangsa Damanik',212,'Psr. Katamso No. 167, Ambon 89837, SulUt','2002-08-11 02:59:56',NULL),(53,'Puji Lestari',752,'Jln. Orang No. 296, Sibolga 32319, Riau','2008-01-09 15:36:30',NULL),(54,'Hartaka Marsudi Haryanto S.Pd',762,'Kpg. Supomo No. 675, Cimahi 55664, DKI','1990-08-15 09:45:58',NULL),(55,'Wira Jaga Pradipta S.H.',164,'Jln. Baja No. 846, Prabumulih 72970, SulUt','2013-01-13 06:54:23',NULL),(56,'Jasmin Permata',293,'Ds. Yos No. 133, Tangerang Selatan 61383, JaBar','1995-10-04 17:30:13',NULL),(57,'Bakti Hardi Mustofa S.Ked',103,'Gg. Bappenas No. 244, Malang 30257, MalUt','1993-05-16 05:29:38',NULL),(58,'Uchita Rini Mandasari S.E.',127,'Psr. Rajiman No. 325, Metro 59236, KepR','1996-08-17 11:21:21',NULL),(59,'Umi Tiara Yuniar',340,'Jln. Haji No. 120, Solok 71425, Riau','1994-11-18 22:43:43',NULL),(60,'Edi Slamet Prabowo M.TI.',82,'Kpg. Rajawali No. 742, Cilegon 88688, KalUt','2009-07-13 18:05:18',NULL),(61,'Gabriella Almira Zulaika',701,'Jr. Perintis Kemerdekaan No. 92, Padangpanjang 64375, Aceh','2018-10-26 06:29:42',NULL),(62,'Yani Hartati',321,'Ki. Bakit  No. 607, Ambon 19167, Gorontalo','1985-09-07 05:12:05',NULL),(63,'Hendri Lantar Saputra',55,'Ki. Merdeka No. 747, Salatiga 25730, SumUt','1974-11-26 22:37:44',NULL),(64,'Laras Zulaika',981,'Psr. Bambu No. 83, Pekalongan 52482, MalUt','2011-11-06 23:10:45',NULL),(65,'Rendy Saragih',411,'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 988, Tangerang 98481, BaBel','2000-07-18 09:34:25',NULL),(66,'Artanto Sinaga',54,'Kpg. Raya Setiabudhi No. 349, Mataram 12626, KalSel','2012-04-18 00:33:17',NULL),(67,'Ulya Utami',934,'Jr. Thamrin No. 380, Administrasi Jakarta Selatan 41462, MalUt','2016-10-20 19:43:26',NULL),(68,'Oman Laksana Sirait S.Ked',976,'Ds. Astana Anyar No. 4, Solok 74080, SumSel','2007-05-28 03:07:21',NULL),(69,'Rama Widodo',951,'Ds. Banda No. 621, Palangka Raya 57002, Lampung','1983-01-26 12:54:00',NULL),(70,'Karimah Puti Uyainah',804,'Kpg. Yoga No. 451, Singkawang 55605, DIY','2014-01-22 10:41:33',NULL),(71,'Yani Rahmi Uyainah S.Sos',248,'Ki. Karel S. Tubun No. 600, Makassar 19054, Riau','2005-06-01 10:20:37',NULL),(72,'Latif Balamantri Thamrin M.Pd',294,'Psr. Casablanca No. 834, Pangkal Pinang 30125, Papua','1977-08-22 17:43:38',NULL),(73,'Cornelia Maya Suartini',721,'Dk. Padang No. 604, Pagar Alam 58571, SumSel','2015-07-23 06:36:32',NULL),(74,'Nurul Pudjiastuti',782,'Psr. Barat No. 950, Semarang 30637, Papua','2007-08-27 21:42:06',NULL),(75,'Zelaya Genta Hassanah S.Psi',483,'Ds. R.E. Martadinata No. 54, Cilegon 96533, SumSel','2021-03-18 03:20:21',NULL),(76,'Hilda Yulianti',744,'Kpg. Babah No. 527, Yogyakarta 23991, Lampung','1995-05-02 23:50:20',NULL),(77,'Ganda Kala Suryono S.E.',208,'Jr. Wahid No. 175, Padangsidempuan 80553, BaBel','1998-09-27 01:44:40',NULL),(78,'Padma Rahimah',655,'Jr. Moch. Ramdan No. 259, Bengkulu 78082, SulTeng','1982-03-17 11:18:40',NULL),(79,'Kartika Lidya Maryati S.Farm',620,'Gg. Supono No. 217, Probolinggo 53680, Jambi','1981-12-26 21:20:48',NULL),(80,'Novi Ratna Purwanti',924,'Jr. Ters. Pasir Koja No. 684, Cirebon 46606, KalSel','1988-01-07 11:24:11',NULL),(81,'Panji Mangunsong',812,'Kpg. Casablanca No. 119, Kotamobagu 97767, SumBar','2017-09-12 11:18:04',NULL),(82,'Rafid Wijaya',168,'Psr. Pacuan Kuda No. 56, Tidore Kepulauan 37361, NTT','1984-02-18 07:04:32',NULL),(83,'Cahyono Kanda Mahendra',194,'Ds. Diponegoro No. 197, Batu 25432, KepR','2001-05-08 10:46:35',NULL),(84,'Ida Elisa Hassanah',784,'Dk. Pasir Koja No. 875, Magelang 53518, DKI','2020-11-15 03:25:47',NULL),(85,'Praba Gunawan',418,'Gg. Baranang Siang No. 196, Bandung 95219, Maluku','2016-04-30 20:57:25',NULL),(86,'Jatmiko Dasa Tampubolon',844,'Jln. Barasak No. 553, Payakumbuh 83378, Banten','2012-03-03 06:37:44',NULL),(87,'Darimin Prabu Prasetyo',28,'Kpg. Baranangsiang No. 808, Palu 19908, BaBel','1981-06-11 17:21:41',NULL),(88,'Margana Mangunsong',814,'Psr. Yoga No. 939, Administrasi Jakarta Timur 48903, Maluku','2005-08-10 22:37:59',NULL),(89,'Murti Gangsar Sihotang M.Farm',886,'Gg. Baha No. 706, Administrasi Jakarta Timur 29010, KalSel','2009-04-04 19:11:00',NULL),(90,'Farhunnisa Vicky Hariyah S.Gz',710,'Psr. Sugiono No. 591, Pasuruan 35870, KalSel','1983-10-16 10:56:01',NULL),(91,'Garda Limar Adriansyah',298,'Ki. Agus Salim No. 321, Probolinggo 63463, Banten','1990-10-09 09:28:59',NULL),(92,'Salsabila Hassanah M.Farm',677,'Jr. Sutan Syahrir No. 532, Medan 59681, KalTeng','2006-10-14 19:22:03',NULL),(93,'Luthfi Gunarto',384,'Dk. Sutarjo No. 934, Samarinda 50393, Bali','2020-05-23 19:11:25',NULL),(94,'Amelia Purwanti S.T.',67,'Kpg. Abdul. Muis No. 43, Sabang 84986, JaBar','2013-07-05 06:44:18',NULL),(95,'Karsa Natsir S.Sos',964,'Gg. Wahid Hasyim No. 404, Medan 34713, Lampung','1991-06-15 03:35:17',NULL),(96,'Zahra Malika Novitasari S.E.I',565,'Ds. Adisucipto No. 309, Sibolga 13619, SumSel','1984-05-18 11:52:30',NULL),(97,'Bala Permadi',587,'Ki. Gardujati No. 414, Balikpapan 55105, Gorontalo','2016-02-21 02:38:29',NULL),(98,'Calista Rahayu S.IP',45,'Ki. Ki Hajar Dewantara No. 101, Bandar Lampung 65625, KalTeng','2010-01-31 23:24:39',NULL),(99,'Karimah Melani M.TI.',6,'Dk. Bayan No. 786, Blitar 59172, Maluku','1993-06-27 11:26:33',NULL),(100,'Adikara Marbun S.Pt',202,'Jr. Yohanes No. 819, Pagar Alam 12671, SulSel','1974-09-29 20:59:40',NULL),(101,'Warsa Latupono',436,'Jln. Gardujati No. 597, Mataram 89102, Gorontalo','1989-01-13 16:52:32',NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2021_08_12_062133_table_pembelian',1),(2,'2021_08_12_062725_table_penjualan',1),(3,'2021_08_12_062818_tabel_barang',1);

/*Table structure for table `pembelian` */

DROP TABLE IF EXISTS `pembelian`;

CREATE TABLE `pembelian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pembelian` */

insert  into `pembelian`(`id`,`barang_id`,`qty`,`created_at`,`updated_at`) values (1,80,75,'1979-06-11 10:25:30',NULL),(2,1,10,'2014-05-11 16:59:04',NULL),(3,41,27,'1991-02-18 12:29:25',NULL),(4,25,5,'1987-06-23 23:38:55',NULL),(5,69,6,'1981-08-31 14:08:02',NULL),(6,57,80,'2003-02-27 23:11:24',NULL),(7,37,55,'2002-09-04 01:14:13',NULL),(8,38,88,'2004-08-09 23:36:12',NULL),(9,42,51,'1989-03-18 07:32:35',NULL),(10,22,12,'1994-05-25 03:05:39',NULL),(11,45,12,'1988-07-13 19:16:35',NULL),(12,34,70,'2001-07-09 00:21:41',NULL),(13,77,32,'1990-01-21 22:03:30',NULL),(14,12,92,'1974-04-16 15:28:42',NULL),(15,72,93,'1979-09-26 00:30:47',NULL),(16,40,97,'2020-07-16 06:29:32',NULL),(17,39,69,'1997-05-25 11:52:32',NULL),(18,94,80,'1979-08-14 10:25:55',NULL),(19,51,21,'2005-01-05 08:10:29',NULL),(20,16,95,'2014-03-12 17:47:16',NULL),(21,85,32,'1988-06-18 13:51:28',NULL),(22,57,28,'2014-10-27 11:44:09',NULL),(23,77,82,'1993-07-03 07:47:36',NULL),(24,83,10,'1998-10-19 21:18:59',NULL),(25,58,47,'1992-01-10 04:26:37',NULL),(26,93,99,'1986-08-26 22:06:19',NULL),(27,55,94,'1984-09-02 09:16:18',NULL),(28,87,37,'1989-03-06 05:22:19',NULL),(29,52,53,'1993-01-11 23:09:48',NULL),(30,81,77,'1993-07-10 23:22:19',NULL),(31,24,22,'2020-12-07 20:07:29',NULL),(32,4,46,'1992-08-28 22:46:10',NULL),(33,17,44,'2001-12-16 08:12:19',NULL),(34,83,70,'2020-12-31 17:04:27',NULL),(35,63,100,'2011-05-29 03:26:51',NULL),(36,23,81,'2017-08-20 03:40:18',NULL),(37,33,27,'2006-05-21 15:28:18',NULL),(38,3,28,'2010-09-24 17:39:18',NULL),(39,66,75,'1997-03-29 18:52:46',NULL),(40,31,99,'1995-05-23 19:03:29',NULL),(41,28,33,'2002-06-09 20:51:26',NULL),(42,6,58,'2014-08-05 04:09:47',NULL),(43,18,83,'1999-09-07 11:20:10',NULL),(44,41,37,'1999-07-19 07:17:28',NULL),(45,13,70,'2006-05-23 21:15:47',NULL),(46,46,38,'2012-02-09 05:53:16',NULL),(47,13,53,'1983-12-23 22:16:51',NULL),(48,71,72,'2004-05-26 01:39:37',NULL),(49,82,11,'2001-08-25 09:21:13',NULL),(50,47,34,'1998-03-20 00:11:46',NULL),(51,69,48,'2001-03-16 03:28:46',NULL),(52,26,63,'1989-12-04 05:56:49',NULL),(53,50,68,'1979-06-19 09:03:17',NULL),(54,28,34,'1988-10-07 14:09:22',NULL),(55,12,72,'1971-08-01 03:37:32',NULL),(56,82,16,'1986-05-23 15:45:36',NULL),(57,76,68,'2011-08-21 03:35:12',NULL),(58,90,95,'1980-04-15 23:50:44',NULL),(59,47,12,'1991-05-09 17:24:48',NULL),(60,38,36,'2019-02-26 08:55:31',NULL),(61,19,16,'2006-07-14 16:27:30',NULL),(62,10,16,'2008-07-17 22:09:38',NULL),(63,101,83,'2010-05-01 22:08:06',NULL),(64,17,64,'2021-08-10 06:37:27',NULL),(65,101,50,'1991-06-08 20:57:15',NULL),(66,40,99,'1976-05-20 02:43:48',NULL),(67,90,68,'2019-09-02 09:43:42',NULL),(68,50,98,'2012-11-04 07:17:58',NULL),(69,76,23,'1981-08-26 10:00:59',NULL),(70,10,40,'1979-12-31 09:23:25',NULL),(71,43,41,'2003-11-21 10:06:10',NULL),(72,11,100,'1977-07-11 16:36:53',NULL),(73,89,34,'2007-07-27 06:02:08',NULL),(74,85,74,'1976-12-20 03:34:13',NULL),(75,14,57,'2017-02-16 01:53:26',NULL),(76,66,94,'2017-07-13 01:46:24',NULL),(77,24,30,'2002-06-27 04:16:03',NULL),(78,67,24,'2010-12-28 16:13:08',NULL),(79,92,68,'1994-12-06 16:22:25',NULL),(80,72,30,'2008-06-26 01:49:27',NULL),(81,4,91,'1991-07-01 00:27:30',NULL),(82,22,85,'1984-07-18 20:38:39',NULL),(83,78,92,'2017-12-24 03:30:06',NULL),(84,25,98,'2017-06-09 04:52:12',NULL),(85,72,5,'1993-01-23 06:24:08',NULL),(86,45,83,'2014-09-21 19:53:47',NULL),(87,62,25,'2019-08-28 03:17:47',NULL),(88,93,85,'2005-11-10 18:57:10',NULL),(89,74,35,'2017-05-23 01:24:33',NULL),(90,56,12,'1982-07-04 01:55:34',NULL),(91,65,57,'2011-03-07 13:48:42',NULL),(92,7,51,'2018-05-18 15:02:46',NULL),(93,56,57,'1970-12-04 03:14:53',NULL),(94,80,76,'2002-12-13 21:32:42',NULL),(95,22,64,'2007-10-07 01:13:59',NULL),(96,14,11,'1999-05-13 11:29:55',NULL),(97,95,84,'2007-07-31 04:49:49',NULL),(98,14,24,'1987-03-31 11:08:44',NULL),(99,53,50,'2011-03-03 04:05:19',NULL),(100,96,11,'2008-07-11 14:02:00',NULL);

/*Table structure for table `penjualan` */

DROP TABLE IF EXISTS `penjualan`;

CREATE TABLE `penjualan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `sales` double(20,2) NOT NULL,
  `check_out` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `del` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `penjualan_email_unique` (`email`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `penjualan` */

insert  into `penjualan`(`id`,`barang_id`,`email`,`qty`,`sales`,`check_out`,`del`,`deleted_at`,`created_at`,`updated_at`) values (1,1,'rama@gmail.com',2,170.00,'0','0',NULL,'2021-08-15 17:08:07','2021-08-15 17:08:07'),(2,1,'rama@gmail.com',4,340.00,'0','0',NULL,'2021-08-15 18:02:44','2021-08-15 18:02:44'),(3,2,'rama@gmail.com',1,633.00,'0','0',NULL,'2021-08-15 18:46:07','2021-08-15 18:46:07'),(5,2,'rama@gmail.com',1,633.00,'0','0',NULL,'2021-08-15 19:07:07','2021-08-15 19:07:07'),(6,6,'rama@gmail.com',1,329.00,'0','0',NULL,'2021-08-15 19:07:31','2021-08-15 19:07:31'),(7,6,'rama@gmail.com',1,329.00,'0','1','2021-08-16 02:56:45','2021-08-15 19:07:36','2021-08-16 02:56:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
