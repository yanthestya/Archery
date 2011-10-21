-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lpjk
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `business_entity`
--

DROP TABLE IF EXISTS `business_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(18) NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL,
  `nett_value` double NOT NULL DEFAULT '0',
  `id_business_entity_association` char(2) NOT NULL,
  `id_business_entity_category` char(1) NOT NULL,
  `id_business_entity_form` char(1) NOT NULL,
  `id_business_entity_type` char(1) NOT NULL,
  `id_city` char(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_business_entity1` (`id_business_entity_association`),
  KEY `FK_business_entity2` (`id_business_entity_category`),
  KEY `FK_business_entity3` (`id_business_entity_form`),
  KEY `FK_business_entity4` (`id_business_entity_type`),
  KEY `FK_business_entity5` (`id_city`),
  CONSTRAINT `FK_business_entity1` FOREIGN KEY (`id_business_entity_association`) REFERENCES `business_entity_association` (`id`),
  CONSTRAINT `FK_business_entity2` FOREIGN KEY (`id_business_entity_category`) REFERENCES `business_entity_category` (`id`),
  CONSTRAINT `FK_business_entity3` FOREIGN KEY (`id_business_entity_form`) REFERENCES `business_entity_form` (`id`),
  CONSTRAINT `FK_business_entity4` FOREIGN KEY (`id_business_entity_type`) REFERENCES `business_entity_type` (`id`),
  CONSTRAINT `FK_business_entity5` FOREIGN KEY (`id_city`) REFERENCES `city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_entity`
--

LOCK TABLES `business_entity` WRITE;
/*!40000 ALTER TABLE `business_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `business_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_entity_association`
--

DROP TABLE IF EXISTS `business_entity_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_entity_association` (
  `id` char(2) NOT NULL,
  `short_description` varchar(25) NOT NULL,
  `long_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_entity_association`
--

LOCK TABLES `business_entity_association` WRITE;
/*!40000 ALTER TABLE `business_entity_association` DISABLE KEYS */;
INSERT INTO `business_entity_association` VALUES ('01','LPJK','Lembaga Pengembangan Jasa Konstruksi'),('02','GAPENSI',''),('03','GAPENRI',''),('04','GABPEKNAS',''),('05','AKI',''),('06','AKAINDO',''),('07','AKLI',''),('08','INKINDO',''),('09','AABI',''),('10','APPAKSI',''),('11','APSPI',''),('12','APBI',''),('13','APNATEL',''),('14','ASPEKINDO',''),('15','AKSI',''),('16','GAPEKSINDO',''),('17','ASKUMINDO',''),('18','AKSDAI',''),('19','AKMI',''),('20','AKJI',''),('21','AKGEPI',''),('22','AKTALI',''),('23','ASPEKNAS',''),('24','AKTI',''),('50','ASPERTANAS',''),('51','APPATINDO',''),('52','GAPEKNAS',''),('53','APJALIN',''),('54','GAPKAINDO',''),('58','GAKINDO',''),('59','AKSINDO',''),('60','ASKONI',''),('61','AKLANI',''),('62','APAKSINDO',''),('63','GAPKINDO',''),('65','ASKINDO',''),('85','AKBARINDO',''),('86','PERKINDO',''),('87','AKLINDO','');
/*!40000 ALTER TABLE `business_entity_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `business_entity_association_view`
--

DROP TABLE IF EXISTS `business_entity_association_view`;
/*!50001 DROP VIEW IF EXISTS `business_entity_association_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `business_entity_association_view` (
  `id` char(2),
  `short description` varchar(25),
  `long description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `business_entity_category`
--

DROP TABLE IF EXISTS `business_entity_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_entity_category` (
  `id` char(1) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_entity_category`
--

LOCK TABLES `business_entity_category` WRITE;
/*!40000 ALTER TABLE `business_entity_category` DISABLE KEYS */;
INSERT INTO `business_entity_category` VALUES ('1','Kecil'),('2','Menengah'),('3','Besar');
/*!40000 ALTER TABLE `business_entity_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `business_entity_category_view`
--

DROP TABLE IF EXISTS `business_entity_category_view`;
/*!50001 DROP VIEW IF EXISTS `business_entity_category_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `business_entity_category_view` (
  `id` char(1),
  `description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `business_entity_form`
--

DROP TABLE IF EXISTS `business_entity_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_entity_form` (
  `id` char(1) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_entity_form`
--

LOCK TABLES `business_entity_form` WRITE;
/*!40000 ALTER TABLE `business_entity_form` DISABLE KEYS */;
INSERT INTO `business_entity_form` VALUES ('1','Badan Usaha Nasional'),('3','Badan Usaha PMDN'),('4','Badan Usaha PMA');
/*!40000 ALTER TABLE `business_entity_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `business_entity_form_view`
--

DROP TABLE IF EXISTS `business_entity_form_view`;
/*!50001 DROP VIEW IF EXISTS `business_entity_form_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `business_entity_form_view` (
  `id` char(1),
  `description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `business_entity_type`
--

DROP TABLE IF EXISTS `business_entity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_entity_type` (
  `id` char(1) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_entity_type`
--

LOCK TABLES `business_entity_type` WRITE;
/*!40000 ALTER TABLE `business_entity_type` DISABLE KEYS */;
INSERT INTO `business_entity_type` VALUES ('1','Perencana'),('2','Pelaksana'),('3','Pengawas'),('4','Perencana Pengawas'),('5','Terintegrasi');
/*!40000 ALTER TABLE `business_entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `business_entity_type_view`
--

DROP TABLE IF EXISTS `business_entity_type_view`;
/*!50001 DROP VIEW IF EXISTS `business_entity_type_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `business_entity_type_view` (
  `id` char(1),
  `description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `business_entity_view`
--

DROP TABLE IF EXISTS `business_entity_view`;
/*!50001 DROP VIEW IF EXISTS `business_entity_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `business_entity_view` (
  `id` bigint(20),
  `name` varchar(255),
  `address` varchar(255),
  `postcode` varchar(18),
  `telephone` varchar(50),
  `fax` varchar(50),
  `email` varchar(255),
  `website` varchar(255),
  `npwp` varchar(50),
  `nett value` double
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` char(4) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id_province` char(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_city1` (`id_province`),
  CONSTRAINT `FK_city1` FOREIGN KEY (`id_province`) REFERENCES `province` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('1101','Kab. Simeulue','01'),('1102','Kab. Aceh Singkil','01'),('1103','Kab. Aceh Selatan','01'),('1104','Kab. Aceh Tenggara','01'),('1105','Kab. Aceh Timur','01'),('1106','Kab. Aceh Tengah','01'),('1107','Kab. Aceh Barat','01'),('1108','Kab. Aceh Besar','01'),('1109','Kab. Pidie','01'),('1110','Kab. Bireuen','01'),('1111','Kab. Aceh Utara','01'),('1112','Kab. Aceh Barat Daya','01'),('1113','Kab. Gayo Lues','01'),('1114','Kab. Aceh Tamiang','01'),('1115','Kab. Nagan Raya','01'),('1116','Kab. Aceh Jaya','01'),('1117','Kab. Bener Meriah','01'),('1118','Kab. Pidie Jaya','01'),('1171','Kota Banda Aceh','01'),('1172','Kota Sabang','01'),('1173','Kota Langsa','01'),('1174','Kota Lhokseumawe','01'),('1175','Kota Subulussalam','01'),('1201','Kab. Nias','02'),('1202','Kab. Mandailing Natal','02'),('1203','Kab. Tapanuli Selatan','02'),('1204','Kab. Tapanuli Tengah','02'),('1205','Kab. Tapanuli Utara','02'),('1206','Kab. Toba Samosir','02'),('1207','Kab. Labuhan Batu','02'),('1208','Kab. Asahan','02'),('1209','Kab. Simalungun','02'),('1210','Kab. Dairi','02'),('1211','Kab. Karo','02'),('1212','Kab. Deli Serdang','02'),('1213','Kab. Langkat','02'),('1214','Kab. Nias Selatan','02'),('1215','Kab. Humbang Hasundutan','02'),('1216','Kab. Pakpak Bharat','02'),('1217','Kab. Samosir','02'),('1218','Kab. Serdang Bedagai','02'),('1219','Kab. Batu Bara','02'),('1220','Kab. Padang Lawas Utara','02'),('1221','Kab. Padang Lawas','02'),('1222','Kab. Labuhan Batu Selatan','02'),('1223','Kab. Labuhan Batu Utara','02'),('1224','Kab. Nias Utara','02'),('1225','Kab. Nias Barat','02'),('1271','Kota Sibolga','02'),('1272','Kota Tanjung Balai','02'),('1273','Kota Pematang Siantar','02'),('1274','Kota Tebing Tinggi','02'),('1275','Kota Medan','02'),('1276','Kota Binjai','02'),('1277','Kota Padang Sidempuan','02'),('1278','Kota Gunungsitoli','02'),('1301','Kab. Kepulauan Mentawai','03'),('1302','Kab. Pesisir Selatan','03'),('1303','Kab. Solok','03'),('1304','Kab. Sawahlunto/Sijunjung','03'),('1305','Kab. Tanah Datar','03'),('1306','Kab. Padang Pariaman','03'),('1307','Kab. Agam','03'),('1308','Kab. Lima Puluh Koto','03'),('1309','Kab. Pasaman','03'),('1310','Kab. Solok Selatan','03'),('1311','Kab. Dharmas Raya','03'),('1312','Kab. Pasaman Barat','03'),('1371','Kota Padang','03'),('1372','Kota Solok','03'),('1373','Kota Sawah Lunto','03'),('1374','Kota Padang Panjang','03'),('1375','Kota Bukit Tinggi','03'),('1376','Kota Payakumbuh','03'),('1377','Kota Pariaman','03'),('1401','Kab. Kuantan Singingi','04'),('1402','Kab. Indragiri Hulu','04'),('1403','Kab. Indragiri Hilir','04'),('1404','Kab. Pelalawan','04'),('1405','Kab. Siak','04'),('1406','Kab. Kampar','04'),('1407','Kab. Rokan Hulu','04'),('1408','Kab. Bengkalis','04'),('1409','Kab. Rokan Hilir','04'),('1410','Kab. Kepulauan Meranti','04'),('1471','Kota Pekan Baru','04'),('1473','Kota Dumai','04'),('1501','Kab. Kerinci','05'),('1502','Kab. Merangin','05'),('1503','Kab. Sarolangun','05'),('1504','Kab. Batang Hari','05'),('1505','Kab. Muaro Jambi','05'),('1506','Kab. Tanjung Jabung Timur','05'),('1507','Kab. Tanjung Jabung Barat','05'),('1508','Kab. Tebo','05'),('1509','Kab. Bungo','05'),('1571','Kota Jambi','05'),('1572','Kota Sungai Penuh','05'),('1601','Kab. Ogan Komering Ulu','06'),('1602','Kab. Ogan Komering Ilir','06'),('1603','Kab. Muara Enim','06'),('1604','Kab. Lahat','06'),('1605','Kab. Musi Rawas','06'),('1606','Kab. Musi Banyu Asin','06'),('1607','Kab. Banyuasin','06'),('1608','Kab. Ogan Komering Ulu Selatan','06'),('1609','Kab. Ogan Komering Ulu Timur','06'),('1610','Kab. Ogan Ilir','06'),('1611','Kab. Empat Lawang','06'),('1671','Kota Palembang','06'),('1672','Kota Prabumulih','06'),('1673','Kota Pagar Alam','06'),('1674','Kota Lubuk Linggau','06'),('1701','Kab. Bengkulu Selatan','07'),('1702','Kab. Rejang Lebong','07'),('1703','Kab. Bengkulu Utara','07'),('1704','Kab. Kaur','07'),('1705','Kab. Seluma','07'),('1706','Kab. Mukomuko','07'),('1707','Kab. Lebong','07'),('1708','Kab. Kepahiang','07'),('1709','Kab. Bengkulu Tengah','07'),('1771','Kota Bengkulu','07'),('1801','Kab. Lampung Barat','08'),('1802','Kab. Tanggamus','08'),('1803','Kab. Lampung Selatan','08'),('1804','Kab. Lampung Timur','08'),('1805','Kab. Lampung Tengah','08'),('1806','Kab. Lampung Utara','08'),('1807','Kab. Way Kanan','08'),('1808','Kab. Tulang Bawang','08'),('1809','Kab. Pesawaran','08'),('1810','Kab. Pringsewu','08'),('1811','Kab. Mesuji','08'),('1812','Kab. Tulang Bawang Barat','08'),('1871','Kota Bandar Lampung','08'),('1872','Kota Metro','08'),('1901','Kab. Bangka','30'),('1902','Kab. Belitung','30'),('1903','Kab. Bangka Selatan','30'),('1904','Kab. Bangka Tengah','30'),('1905','Kab. Bangka Barat','30'),('1906','Kab. Belitung Timur','30'),('1971','Kota Pangkal Pinang','30'),('2001','Kab. Karimun','31'),('2002','Kab. Kepulauan Riau','31'),('2003','Kab. Natuna','31'),('2004','Kab. Lingga','31'),('2005','Kab. Kepulauan Anambas','31'),('2071','Kota. Batam','31'),('2072','Kota. Tanjung Pinang','31'),('3101','Kab. Adm. Kepulauan Seribu','09'),('3171','Kota Jakarta Selatan','09'),('3172','Kota Jakarta Timur','09'),('3173','Kota Jakarta Pusat','09'),('3174','Kota Jakarta Barat','09'),('3175','Kota Jakarta Utara','09'),('3201','Kab. Bogor','10'),('3202','Kab. Sukabumi','10'),('3203','Kab. Cianjur','10'),('3204','Kab. Bandung','10'),('3205','Kab. Garut','10'),('3206','Kab. Tasikmalaya','10'),('3207','Kab. Ciamis','10'),('3208','Kab. Kuningan','10'),('3209','Kab. Cirebon','10'),('3210','Kab. Majalengka','10'),('3211','Kab. Sumedang','10'),('3212','Kab. Indramayu','10'),('3213','Kab. Subang','10'),('3214','Kab. Purwakarta','10'),('3215','Kab. Karawang','10'),('3216','Kab. Bekasi','10'),('3217','Kab. Bandung Barat','10'),('3271','Kota Bogor','10'),('3272','Kota Sukabumi','10'),('3273','Kota Bandung','10'),('3274','Kota Cirebon','10'),('3275','Kota Bekasi','10'),('3276','Kota Depok','10'),('3277','Kota Cimahi','10'),('3278','Kota Tasikmalaya','10'),('3279','Kota Banjar','10'),('3301','Kab. Cilacap','11'),('3302','Kab. Banyumas','11'),('3303','Kab. Purbalingga','11'),('3304','Kab. Banjarnegara','11'),('3305','Kab. Kebumen','11'),('3306','Kab. Purworejo','11'),('3307','Kab. Wonosobo','11'),('3308','Kab. Magelang','11'),('3309','Kab. Boyolali','11'),('3310','Kab. Klaten','11'),('3311','Kab. Sukoharjo','11'),('3312','Kab. Wonogiri','11'),('3313','Kab. Karanganyar','11'),('3314','Kab. Sragen','11'),('3315','Kab. Grobogan','11'),('3316','Kab. Blora','11'),('3317','Kab. Rembang','11'),('3318','Kab. Pati','11'),('3319','Kab. Kudus','11'),('3320','Kab. Jepara','11'),('3321','Kab. Demak','11'),('3322','Kab. Semarang','11'),('3323','Kab. Temanggung','11'),('3324','Kab. Kendal','11'),('3325','Kab. Batang','11'),('3326','Kab. Pekalongan','11'),('3327','Kab. Pemalang','11'),('3328','Kab. Tegal','11'),('3329','Kab. Brebes','11'),('3371','Kota Magelang','11'),('3372','Kota Surakarta','11'),('3373','Kota Salatiga','11'),('3374','Kota Semarang','11'),('3375','Kota Pekalongan','11'),('3376','Kota Tegal','11'),('3401','Kab. Kulon Progo','12'),('3402','Kab. Bantul','12'),('3403','Kab. Gunung Kidul','12'),('3404','Kab. Sleman','12'),('3471','Kota Yogyakarta','12'),('3501','Kab. Pacitan','13'),('3502','Kab. Ponorogo','13'),('3503','Kab. Terenggalek','13'),('3504','Kab. Tulungagung','13'),('3505','Kab. Blitar','13'),('3506','Kab. Kediri','13'),('3507','Kab. Malang','13'),('3508','Kab. Lumajang','13'),('3509','Kab. Jember','13'),('3510','Kab. Banyuwangi','13'),('3511','Kab. Bondowoso','13'),('3512','Kab. Situbondo','13'),('3513','Kab. Probolinggo','13'),('3514','Kab. Pasuruan','13'),('3515','Kab. Sidoarjo','13'),('3516','Kab. Mojokerto','13'),('3517','Kab. Jombang','13'),('3518','Kab. Nganjuk','13'),('3519','Kab. Madiun','13'),('3520','Kab. Magetan','13'),('3521','Kab. Ngawi','13'),('3522','Kab. Bojonegoro','13'),('3523','Kab. Tuban','13'),('3524','Kab. Lamongan','13'),('3525','Kab. Gresik','13'),('3526','Kab. Bangkalan','13'),('3527','Kab. Sampang','13'),('3528','Kab. Pamekasan','13'),('3529','Kab. Sumenep','13'),('3571','Kota Kediri','13'),('3572','Kota Blitar','13'),('3573','Kota Malang','13'),('3574','Kota Probolinggo','13'),('3575','Kota Pasuruan','13'),('3576','Kota Mojokerto','13'),('3577','Kota Madiun','13'),('3578','Kota Surabaya','13'),('3579','Kota Batu','13'),('3601','Kab. Pandeglang','28'),('3602','Kab. Lebak','28'),('3603','Kab. Tangerang','28'),('3604','Kab. Serang','28'),('3671','Kota Tangerang','28'),('3672','Kota Cilegon','28'),('3673','Kota. Serang','28'),('3674','Kota Tangerang Selatan','28'),('5101','Kab. Jembrana','22'),('5102','Kab. Tabanan','22'),('5103','Kab. Badung','22'),('5104','Kab. Gianyar','22'),('5105','Kab. Klungkung','22'),('5106','Kab. Bangli','22'),('5107','Kab. Karang Asem','22'),('5108','Kab. Buleleng','22'),('5171','Kota Denpasar','22'),('5201','Kab. Lombok Barat','23'),('5202','Kab. Lombok Tengah','23'),('5203','Kab. Lombok Timur','23'),('5204','Kab. Sumbawa','23'),('5205','Kab. Dompu','23'),('5206','Kab. Bima','23'),('5207','Kab. Sumbawa Barat','23'),('5208','Kab. Lombok Utara','23'),('5271','Kota Mataram','23'),('5272','Kota Bima','23'),('5301','Kab. Sumba Barat','24'),('5302','Kab. Sumba Timur','24'),('5303','Kab. Kupang','24'),('5304','Kab. Timor Tengah Selatan','24'),('5305','Kab. Timor Tengah Utara','24'),('5306','Kab. Belu','24'),('5307','Kab. Alor','24'),('5308','Kab. Lembata','24'),('5309','Kab. Flores Timur','24'),('5310','Kab. Sikka','24'),('5311','Kab. Ende','24'),('5312','Kab. Ngada','24'),('5313','Kab. Manggarai','24'),('5314','Kota Rote Ndao','24'),('5315','Kab. Manggarai Barat','24'),('5316','Kab. Sumba Tengah','24'),('5317','Kab. Sumba Barat Daya','24'),('5318','Kab. Nagekeo','24'),('5319','Kab. Manggarai Timur','24'),('5320','Kab. Sabu Raijua','24'),('5371','Kota Kupang','24'),('6101','Kab. Sambas','14'),('6102','Kab. Bengkayang','14'),('6103','Kab. Landak','14'),('6104','Kab. Pontianak','14'),('6105','Kab. Sanggau','14'),('6106','Kab. Ketapang','14'),('6107','Kab. Sintang','14'),('6108','Kab. Kapuas Hulu','14'),('6109','Kab. Sekadau','14'),('6110','Kab. Melawi','14'),('6111','Kab. Kayong Utara','14'),('6112','Kab. Kubu Raya','14'),('6171','Kota Pontianak','14'),('6172','Kota Singkawang','14'),('6201','Kab. Kotawaringin Barat','15'),('6202','Kab. Kotawaringin Timur','15'),('6203','Kab. Kapuas','15'),('6204','Kab. Barito Selatan','15'),('6205','Kab. Barito Utara','15'),('6206','Kab. Sukamara','15'),('6207','Kab. Lamandau','15'),('6208','Kab. Seruyan','15'),('6209','Kab. Katingan','15'),('6210','Kab. Pulang Pisau','15'),('6211','Kab. Gunung Mas','15'),('6212','Kab. Barito Timur','15'),('6213','Kab. Murung Raya','15'),('6271','Kota Palangka Raya','15'),('6301','Kab. Tanah Laut','16'),('6302','Kab. Kota Baru','16'),('6303','Kab. Banjar','16'),('6304','Kab. Barito Kuala','16'),('6305','Kab. Tapin','16'),('6306','Kab. Hulu Sungai Selatan','16'),('6307','Kab. Hulu Sungai Tengah','16'),('6308','Kab. Hulu Sungai Utara','16'),('6309','Kab. Tabalong','16'),('6310','Kab. Tanah Bumbu','16'),('6311','Kab. Balangan','16'),('6371','Kota Banjarmasin','16'),('6372','Kota Banjar Baru','16'),('6401','Kab. Pasir','17'),('6402','Kab. Kutai Barat','17'),('6403','Kab. Kutai','17'),('6404','Kab. Kutai Timur','17'),('6405','Kab. Berau','17'),('6406','Kab. Malinau','17'),('6407','Kab. Bulungan','17'),('6408','Kab. Nunukan','17'),('6409','Kab. Penajem Paser Utara','17'),('6410','Kab. Tana Tidung','17'),('6471','Kota Balikpapan','17'),('6472','Kota Samarinda','17'),('6473','Kota Tarakan','17'),('6474','Kota Bontang','17'),('7101','Kab. Bolaang Mengondow','18'),('7102','Kab. Minahasa','18'),('7103','Kab. Sangihe Talaud','18'),('7104','Kab. Kepulauan Talaud','18'),('7105','Kab. Minahasa Selatan','18'),('7106','Kab. Minahasa Utara','18'),('7107','Kab. Bolaang Mongondow Utara','18'),('7108','Kab. Siau Tagulandang Biaro','18'),('7109','Kab. Minahasa Tenggara','18'),('7110','Kab. Bolaang Mongondow Selatan','18'),('7111','Kab. Bolaang Mongondow Timur','18'),('7171','Kota Manado','18'),('7172','Kota Bitung','18'),('7173','Kota Tomohon','18'),('7174','Kota. Kotamobagu','18'),('7201','Kab. Banggai Kepulauan','19'),('7202','Kab. Banggai','19'),('7203','Kab. Morowali','19'),('7204','Kab. Poso','19'),('7205','Kab. Dongala','19'),('7206','Kab. Toli-Toli','19'),('7207','Kab. Buol','19'),('7208','Kab. Parigi Moutong','19'),('7209','Kab. Tojo Una-Una','19'),('7210','Kab. Sigi','19'),('7271','Kota Palu','19'),('7301','Kab. Selayar','20'),('7302','Kab. Bulukumba','20'),('7303','Kab. Bantaeng','20'),('7304','Kab. Jeneponto','20'),('7305','Kab. Takalar','20'),('7306','Kab. Gowa','20'),('7307','Kab. Sinjai','20'),('7308','Kab. Maros','20'),('7309','Kab. Pangkajene Kepulauan','20'),('7310','Kab. Barru','20'),('7311','Kab. Bone','20'),('7312','Kab. Soppeng','20'),('7313','Kab. Wajo','20'),('7314','Kab. Sidenreng Rappang','20'),('7315','Kab. Pinrang','20'),('7316','Kab. Enrekang','20'),('7317','Kab. Luwu','20'),('7318','Kab. Tana Toraja','20'),('7322','Kab. Luwu Utara','20'),('7325','Kab. Luwu Timur','20'),('7326','Kab. Toraja Utara','20'),('7371','Kota Makassar','20'),('7372','Kota Pare-Pare','20'),('7373','Kota Palopo','20'),('7401','Kab. Buton','21'),('7402','Kab. Muna','21'),('7403','Kab. Konawe','21'),('7404','Kab. Kolaka','21'),('7405','Kab. Konawe Selatan','21'),('7406','Kab. Bombana','21'),('7407','Kab. Wakatobi','21'),('7408','Kab. Kolaka Utara','21'),('7409','Kab. Buton Utara','21'),('7410','Kab. Konawe Utara','21'),('7471','Kota Kendari','21'),('7472','Kota Baubau','21'),('7501','Kab. Boalemo','29'),('7502','Kab. Gorontalo','29'),('7503','Kab. Pohuwato','29'),('7504','Kab. Bone Bolango','29'),('7505','Kab. Gorontalo Utara','29'),('7571','Kota Gorontalo','29'),('7601','Kab. Majene','33'),('7602','Kab. Polewali Mamasa','33'),('7603','Kab. Mamasa','33'),('7604','Kab. Mamuju','33'),('7605','Kab. Mamuju Utara','33'),('8101','Kab. Maluku Tenggara Barat','25'),('8102','Kab. Maluku Tenggara','25'),('8103','Kab. Maluku Tengah','25'),('8104','Kab. Buru','25'),('8105','Kab. Kepulauan Aru','25'),('8106','Kab. Seram Bagian Barat','25'),('8107','Kab. Seram Bagian Timur','25'),('8108','Kab. Maluku Barat Daya','25'),('8109','Kab. Buru Selatan','25'),('8171','Kota Ambon','25'),('8172','Kota. Tual','25'),('8201','Kab. Maluku Utara','27'),('8202','Kab. Halmahera Tengah','27'),('8203','Kab. Kepulauan Sula','27'),('8204','Kab. Halmahera Selatan','27'),('8205','Kab. Halmahera Utara','27'),('8206','Kab. Halmahera Timur','27'),('8207','Kab. Pulau Morotai','27'),('8271','Kota Ternate','27'),('8272','Kota Tidore Kepulauan','27'),('9101','Kab. Fak-Fak','32'),('9102','Kab. Kaimana','32'),('9103','Kab. Teluk Wondama','32'),('9104','Kab. Teluk Bintuni','32'),('9105','Kab. Manokwari','32'),('9106','Kab. Sorong Selatan','32'),('9107','Kab. Sorong','32'),('9108','Kab. Raja Ampat','32'),('9109','Kab. Tambrauw','32'),('9110','Kab. Maybrat','32'),('9171','Kota Sorong','32'),('9401','Kab. Merauke','26'),('9402','Kab. Jayawijaya','26'),('9403','Kab. Jayapura','26'),('9404','Kab. Nabire','26'),('9408','Kab. Yapen Waropen','26'),('9409','Kab. Biak Numfor','26'),('9410','Kab. Paniai','26'),('9411','Kab. Puncak Jaya','26'),('9412','Kab. Mimika','26'),('9413','Kab. Boven Digoel','26'),('9414','Kab. Mappi','26'),('9415','Kab. Asmat','26'),('9416','Kab. Yahukimo','26'),('9417','Kab. Pegunungan Bintang','26'),('9418','Kab. Tolikara','26'),('9419','Kab. Sarmi','26'),('9420','Kab. Keerom','26'),('9426','Kab. Waropen','26'),('9427','Kab. Supiori','26'),('9428','Kab. Mamberamo Raya','26'),('9429','Kab. Nduga','26'),('9430','Kab. Lanny Jaya','26'),('9431','Kab. Memberamo Tengah','26'),('9432','Kab. Yalimo','26'),('9433','Kab. Puncak','26'),('9434','Kab. Dogiyai','26'),('9435','Kab. Intan Jaya','26'),('9436','Kab. Deiyai','26'),('9471','Kota Jayapura','26');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `city_view`
--

DROP TABLE IF EXISTS `city_view`;
/*!50001 DROP VIEW IF EXISTS `city_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `city_view` (
  `id` char(4),
  `description` varchar(255),
  `id province` char(2),
  `province description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `classification_field`
--

DROP TABLE IF EXISTS `classification_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification_field` (
  `id` char(4) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification_field`
--

LOCK TABLES `classification_field` WRITE;
/*!40000 ALTER TABLE `classification_field` DISABLE KEYS */;
INSERT INTO `classification_field` VALUES ('AR','Arsitektur'),('BG','Bangunan Gedung'),('EL','Instalasi Elektrikal'),('KL','Konsultansi Lainnya'),('MK','Instalasi Mekanikal'),('PL','Pelaksana Lainnya'),('PR','Penataan Ruang'),('RE','Rekayasa (Engineer)'),('SI','Sipil'),('SP','Konsultansi/Pelaksana Spesialis'),('TI','Terintegrasi');
/*!40000 ALTER TABLE `classification_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `classification_field_view`
--

DROP TABLE IF EXISTS `classification_field_view`;
/*!50001 DROP VIEW IF EXISTS `classification_field_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `classification_field_view` (
  `id` char(4),
  `description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `classification_sub_field`
--

DROP TABLE IF EXISTS `classification_sub_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification_sub_field` (
  `id` char(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id_classification_field` char(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_classification_sub_field1` (`id_classification_field`),
  CONSTRAINT `FK_classification_sub_field1` FOREIGN KEY (`id_classification_field`) REFERENCES `classification_field` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification_sub_field`
--

LOCK TABLES `classification_sub_field` WRITE;
/*!40000 ALTER TABLE `classification_sub_field` DISABLE KEYS */;
INSERT INTO `classification_sub_field` VALUES ('AR101','Jasa Nasihat dan Pra Desain Arsitektural','AR'),('AR102','Jasa Desain Arsitektural','AR');
/*!40000 ALTER TABLE `classification_sub_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `classification_sub_field_view`
--

DROP TABLE IF EXISTS `classification_sub_field_view`;
/*!50001 DROP VIEW IF EXISTS `classification_sub_field_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `classification_sub_field_view` (
  `id` char(8),
  `description` varchar(255),
  `id classification field` char(4),
  `classification field description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `words` varchar(255) NOT NULL,
  `en` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`words`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES ('account','Account',''),('account balance','Account Balance',''),('account description','Account Description',''),('account group','Account Group',''),('account group description','Account Group Description',''),('account group id','Account Group ID',''),('account id','Account ID',''),('accounting period','Accounting Period',''),('action','Action','Aksi'),('active','Active',''),('add','Add','Tambah'),('add line','Add Line','Tambah Baris'),('add picture','Add Picture','Tambah Gambar'),('address','Address',''),('address1','Address1',''),('address2','Address2',''),('application setup','Application Setup',''),('approved','Approved',''),('apr','APR',''),('area','Area',''),('aug','AUG',''),('basic data','Basic Data',''),('business entity','Business Entity','Badan Usaha'),('business entity association','Business Entity Association','Asosiasi Badan Usaha'),('business entity category','Business Entity Category','Golongan Badan Usaha'),('business entity form','Business Entity Form','Bentuk Badan Usaha'),('business entity type','Business Entity Type','Jenis Badan Usaha'),('cancel','Cancel',''),('change password','Change Password','Ubah Password'),('chart of account','Chart of Account',''),('city','City',''),('city description','City Description',''),('classification field','Classification Field','Bidang Klasifikasi'),('classification field description','Classification Field Description','Deskripsi Bidang Klasifikasi'),('classification sub field','Classification Sub Field','Sub Bidang Klasifikasi'),('client','Client',''),('client group','Client Group',''),('client name','Client Name',''),('client\'s intention and estimated sell price / rent price per year','Client\'s intention and estimated sell price / rent price per year',''),('closed','Closed',''),('community','Community',''),('counting no','Counting No',''),('country','Country',''),('country description','Country Description',''),('credit','Credit',''),('currency','Currency',''),('current password','Current Password','Password Saat Ini'),('customer relation','Customer Relation',''),('date','Date',''),('debit','Debit',''),('dec','DEC',''),('delete','Delete','Hapus'),('description','Description',''),('detail','Detail',''),('district','District',''),('district description','District Description',''),('edit','Edit','Edit'),('email','Email',''),('email blast','Email Blast',''),('email blast approval','Email Blast Approval',''),('email text','Email Text',''),('entry date','Entry Date',''),('entry type','Entry Type',''),('entry value','Entry Value',''),('error','Error',''),('expense','Expense',''),('fax','Fax',''),('fax blast','Fax Blast',''),('fax blast approval','Fax Blast Approval',''),('fax text','Fax Text',''),('feb','FEB',''),('finance/accounting','Finance/Accounting',''),('financial report','Financial Report',''),('first name','First Name',''),('full name','Full Name',''),('general ledger','General Ledger',''),('generate','Generate',''),('goods movement','Goods Movement',''),('handphone','Handphone',''),('home phone','Home Phone',''),('id','ID',''),('id account','ID Account',''),('id account group','ID Account Group',''),('id accounting period','ID Accounting Period',''),('id business entity association','ID Business Entity Association','ID Asosiasi Badan Usaha'),('id business entity category','ID Business Entity Category','ID Golongan Badan Usaha'),('id business entity form','ID Business Entity Form','ID Bentuk Badan Usaha'),('id business entity type','ID Business Entity Type','ID Jenis Badan Usaha'),('id city','ID City',''),('id classification field','ID Classification Field','ID Bidang Klasifikasi'),('id classification sub field','ID Classification Sub Field','ID Sub Bidang Klasifikasi'),('id client','ID Client',''),('id client group','ID Client Group',''),('id community','ID Community',''),('id country','ID Country',''),('id currency rent','ID Currency Rent',''),('id currency sell','ID Currency Sell',''),('id district','ID District',''),('id email blast header','ID Email Blast Header',''),('id fax blast header','ID Fax Blast Header',''),('id journal header','ID Journal Header',''),('id project','ID Project',''),('id property status','ID Property Status',''),('id property type','ID Property Type',''),('id province','ID Province',''),('id staff','ID Staff',''),('id staff group','ID Staff Group',''),('id student','ID Student',''),('id student group','ID Student Group',''),('id student payment','ID Student Payment',''),('id webuser','ID Webuser','ID Pengguna Web'),('id webuser group','Webuser Group ID','ID Grup Pengguna Web'),('income statement','Income Statement',''),('intention','Intention',''),('invalid current password','Invalid current password','Password Saat Ini tidak Valid'),('inventory','Inventory',''),('jan','JAN',''),('journal','Journal',''),('journal entry','Journal Entry',''),('journal header id','Journal Header ID',''),('journal type','Journal Type',''),('jul','JUL',''),('jun','JUN',''),('last name','Last Name',''),('ledger','Ledger',''),('ledger report','Ledger Report',''),('line','Line',''),('list of business entity','List of Business Entity','Daftar Badan Usaha'),('list of value','List of Value',''),('list of values','List of Values',''),('location','Location',''),('login','Login','Login'),('login information','Login Information','Informasi Login'),('logout','Logout','Logout'),('long description','Long Description','Deskripsi Panjang'),('manage password','Manage Password','Atur Password'),('mar','MAR',''),('master data','Master Data',''),('max rent price','Max Rent Price',''),('max sell price','Max Sell Price',''),('may','MAY',''),('min rent price','Min Rent Price',''),('min sell price','Min Sell Price',''),('month','Month',''),('move goods','Move Goods',''),('name','Name',''),('nett value','Nett Value','Kekayaan Bersih'),('new password','New Password','Password Baru'),('new password confirmation','New Password Confirmation',''),('new password not confirmed','New password not confirmed',''),('nick name','Nick Name',''),('no property','No Property',''),('nov','NOV',''),('npwp','NPWP','NPWP'),('oct','OCT',''),('ok','OK',''),('paid invoice','Paid Invoice',''),('parent handphone','Parent Handphone',''),('parent name','Parent Name',''),('password','Password','Password'),('password has been updated','Password has been updated',''),('payment list was generated','Payment list was generated!',''),('payment time','Payment Time',''),('period end','Period End',''),('period start','Period Start',''),('phone','Phone',''),('pictures','Pictures',''),('po','PO',''),('po receive','PO Receive',''),('postcode','Postcode',''),('prepared','Prepared',''),('pricing','Pricing',''),('proceed','Proceed',''),('profit/loss','Profit/Loss',''),('project','Project',''),('project description','Project Description',''),('property','Property',''),('property date','Property Date',''),('property listing','Property Listing',''),('property listing - alternate','Property Listing - Alternate',''),('property status','Property Status',''),('property type','Property Type',''),('province','Province',''),('province description','Province Description',''),('purchase goods','Purchase Goods',''),('purchase goods group','Purchase Goods Groups',''),('purchase items','Purchase Items',''),('purchase order','Purchase Order',''),('purchase order approval','Purchase Order Approval',''),('purchasing','Purchasing',''),('real name','Real Name',''),('rent','Rent',''),('report','Report',''),('revenue','Revenue',''),('rtrw','RT/RW',''),('sell','Sell',''),('sell & rent','Sell & Rent',''),('send time','Send Time',''),('sent','Sent',''),('sep','SEP',''),('short description','Short Description','Deskripsi Pendek'),('specification','Specification',''),('staff','Staff',''),('staff assignment','Staff Assignment',''),('staff group','Staff Group',''),('staff group description','Staff Group Description',''),('staff listing','Staff Listing',''),('staff management','Staff Management',''),('staff name','Staff Name',''),('staff report','Staff Report',''),('staff report - all','Staff Report - ALL',''),('staff report administration','Staff Report Administration',''),('status','Status',''),('street name','Street Name',''),('street no','Street No',''),('student','Student',''),('student administration','Student Administration',''),('student group','Student Group',''),('student group description','Student Group Description',''),('student name','Student Name',''),('student payment','Student Payment',''),('student payment generation','Student Payment Generation',''),('student payment processing','Student Payment Processing',''),('student payment report','Student Payment Report',''),('sum','Sum',''),('supplier','Supplier',''),('supplier group','Supplier Group',''),('suppliers','Suppliers',''),('telephone','Telephone','Telepon'),('total','Total',''),('transaction description','Transaction Description',''),('unpaid invoice','Unpaid Invoice',''),('update','Update',''),('username','Username','Nama User'),('warehouse','Warehouse',''),('warehouse group','Warehouse Group',''),('warehousing','Warehousing',''),('web based application','Web Based Application','Aplikasi Berbasis Web'),('website','Website','Situs Web'),('webuser','Webuser','Pengguna Web'),('webuser group','Webuser Group','Grup Pengguna Web'),('webuser group description','Webuser Group Description','Deskripsi Grup Pengguna Web'),('webuser group id','Webuser Group ID','ID Grup Pengguna Web'),('webuser setup','Webuser Setup','Atur Pengguna Web'),('welcome','Welcome!',''),('year','Year','');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `menu_override` enum('Y','N') NOT NULL DEFAULT 'N',
  `menu_act` enum('Y','N') NOT NULL DEFAULT 'N',
  `parent` bigint(20) NOT NULL,
  `menu_order` varchar(5) NOT NULL,
  `list_view` varchar(255) DEFAULT NULL,
  `add_table` varchar(255) DEFAULT NULL,
  `edit_type` enum('smpl','madt') NOT NULL DEFAULT 'smpl',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'webuser setup','N','N',0,'1',NULL,NULL,'smpl'),(2,'webuser','N','Y',1,'0','webuser_view','webuser','smpl'),(3,'webuser group','N','Y',1,'1','webuser_group_view','webuser_group','smpl'),(4,'manage password','Y','Y',1,'2',NULL,NULL,'smpl'),(5,'change password','Y','Y',0,'5',NULL,NULL,'smpl'),(6,'logout','Y','Y',0,'6',NULL,NULL,'smpl'),(7,'business entity','N','N',0,'0',NULL,NULL,'smpl'),(8,'basic data','N','N',7,'0',NULL,NULL,'smpl'),(9,'city','N','Y',8,'4','city_view','city','smpl'),(10,'province','N','Y',8,'5','province_view','province','smpl'),(11,'business entity association','N','Y',8,'0','business_entity_association_view','business_entity_association','smpl'),(12,'business entity form','N','Y',8,'1','business_entity_form_view','business_entity_form','smpl'),(13,'business entity type','N','Y',8,'2','business_entity_type_view','business_entity_type','smpl'),(14,'business entity category','N','Y',8,'3','business_entity_category_view','business_entity_category','smpl'),(15,'list of business entity','N','Y',7,'1','business_entity_view','business_entity','smpl'),(16,'classification field','N','Y',8,'6','classification_field_view','classification_field','smpl'),(17,'classification sub field','N','Y',8,'7','classification_sub_field_view','classification_sub_field','smpl');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_exception_add`
--

DROP TABLE IF EXISTS `menus_exception_add`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_exception_add` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_menus` bigint(20) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_menus_exception_add` (`id_menus`),
  CONSTRAINT `FK_menus_exception_add` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_exception_add`
--

LOCK TABLES `menus_exception_add` WRITE;
/*!40000 ALTER TABLE `menus_exception_add` DISABLE KEYS */;
INSERT INTO `menus_exception_add` VALUES (1,2,'password');
/*!40000 ALTER TABLE `menus_exception_add` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_exception_edit`
--

DROP TABLE IF EXISTS `menus_exception_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_exception_edit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_menus` bigint(20) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_menus_exception_add` (`id_menus`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_exception_edit`
--

LOCK TABLES `menus_exception_edit` WRITE;
/*!40000 ALTER TABLE `menus_exception_edit` DISABLE KEYS */;
INSERT INTO `menus_exception_edit` VALUES (1,2,'password');
/*!40000 ALTER TABLE `menus_exception_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_override`
--

DROP TABLE IF EXISTS `menus_override`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_override` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_menus` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_menus_override` (`id_menus`),
  CONSTRAINT `FK_menus_override` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_override`
--

LOCK TABLES `menus_override` WRITE;
/*!40000 ALTER TABLE `menus_override` DISABLE KEYS */;
INSERT INTO `menus_override` VALUES (1,6,'logout.php'),(2,4,'manage_password.php'),(3,5,'change_password.php');
/*!40000 ALTER TABLE `menus_override` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `id` char(2) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES ('01','Nanggroe Aceh Darussalam'),('02','Sumatera Utara'),('03','Sumatera Barat'),('04','Riau'),('05','Jambi'),('06','Sumatera Selatan'),('07','Bengkulu'),('08','Lampung'),('09','DKI Jakarta'),('10','Jawa Barat'),('11','Jawa Tengah'),('12','DI Yogyakarta'),('13','Jawa Timur'),('14','Kalimantan Barat'),('15','Kalimantan Tengah'),('16','Kalimantan Selatan'),('17','Kalimantan Timur'),('18','Sulawesi Utara'),('19','Sulawesi Tengah'),('20','Sulawesi Selatan'),('21','Sulawesi Tenggara'),('22','Bali'),('23','Nusa Tenggara Barat'),('24','Nusa Tenggara Timur'),('25','Maluku'),('26','Papua'),('27','Maluku Utara'),('28','Banten'),('29','Gorontalo'),('30','Kepulauan Bangka Belitung'),('31','Kepulauan Riau'),('32','Papua Barat'),('33','Sulawesi Barat');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `province_view`
--

DROP TABLE IF EXISTS `province_view`;
/*!50001 DROP VIEW IF EXISTS `province_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `province_view` (
  `id` char(2),
  `description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `security_matrix`
--

DROP TABLE IF EXISTS `security_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_matrix` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_menus` bigint(20) NOT NULL,
  `id_webuser_group` varchar(65) NOT NULL,
  `permission` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `FK_security_matrix` (`id_menus`),
  KEY `FK_security_matrix1` (`id_webuser_group`),
  CONSTRAINT `FK_security_matrix` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id`),
  CONSTRAINT `FK_security_matrix1` FOREIGN KEY (`id_webuser_group`) REFERENCES `webuser_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_matrix`
--

LOCK TABLES `security_matrix` WRITE;
/*!40000 ALTER TABLE `security_matrix` DISABLE KEYS */;
INSERT INTO `security_matrix` VALUES (1,1,'ADM','Y'),(2,2,'ADM','Y'),(3,3,'ADM','Y'),(4,4,'ADM','Y'),(5,5,'ADM','Y'),(6,6,'ADM','Y'),(7,7,'ADM','Y'),(8,8,'ADM','Y'),(9,9,'ADM','Y'),(10,10,'ADM','Y'),(11,11,'ADM','Y'),(12,12,'ADM','Y'),(13,13,'ADM','Y'),(14,14,'ADM','Y'),(15,15,'ADM','Y'),(16,16,'ADM','Y'),(17,17,'ADM','Y');
/*!40000 ALTER TABLE `security_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webuser`
--

DROP TABLE IF EXISTS `webuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webuser` (
  `id` varchar(65) NOT NULL,
  `password` char(32) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `id_webuser_group` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_webuser` (`id_webuser_group`),
  CONSTRAINT `FK_webuser` FOREIGN KEY (`id_webuser_group`) REFERENCES `webuser_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webuser`
--

LOCK TABLES `webuser` WRITE;
/*!40000 ALTER TABLE `webuser` DISABLE KEYS */;
INSERT INTO `webuser` VALUES ('admin','21232f297a57a5a743894a0e4a801fc3','Administrator','Pusat','ADM');
/*!40000 ALTER TABLE `webuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webuser_group`
--

DROP TABLE IF EXISTS `webuser_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webuser_group` (
  `id` varchar(65) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webuser_group`
--

LOCK TABLES `webuser_group` WRITE;
/*!40000 ALTER TABLE `webuser_group` DISABLE KEYS */;
INSERT INTO `webuser_group` VALUES ('ADM','Administrator');
/*!40000 ALTER TABLE `webuser_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `webuser_group_view`
--

DROP TABLE IF EXISTS `webuser_group_view`;
/*!50001 DROP VIEW IF EXISTS `webuser_group_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `webuser_group_view` (
  `id` varchar(65),
  `description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `webuser_view`
--

DROP TABLE IF EXISTS `webuser_view`;
/*!50001 DROP VIEW IF EXISTS `webuser_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `webuser_view` (
  `id` varchar(65),
  `real name` varchar(511),
  `id webuser group` varchar(65),
  `webuser group description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `business_entity_association_view`
--

/*!50001 DROP TABLE IF EXISTS `business_entity_association_view`*/;
/*!50001 DROP VIEW IF EXISTS `business_entity_association_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `business_entity_association_view` AS select `business_entity_association`.`id` AS `id`,`business_entity_association`.`short_description` AS `short description`,`business_entity_association`.`long_description` AS `long description` from `business_entity_association` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `business_entity_category_view`
--

/*!50001 DROP TABLE IF EXISTS `business_entity_category_view`*/;
/*!50001 DROP VIEW IF EXISTS `business_entity_category_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `business_entity_category_view` AS select `business_entity_category`.`id` AS `id`,`business_entity_category`.`description` AS `description` from `business_entity_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `business_entity_form_view`
--

/*!50001 DROP TABLE IF EXISTS `business_entity_form_view`*/;
/*!50001 DROP VIEW IF EXISTS `business_entity_form_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `business_entity_form_view` AS select `business_entity_form`.`id` AS `id`,`business_entity_form`.`description` AS `description` from `business_entity_form` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `business_entity_type_view`
--

/*!50001 DROP TABLE IF EXISTS `business_entity_type_view`*/;
/*!50001 DROP VIEW IF EXISTS `business_entity_type_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `business_entity_type_view` AS select `business_entity_type`.`id` AS `id`,`business_entity_type`.`description` AS `description` from `business_entity_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `business_entity_view`
--

/*!50001 DROP TABLE IF EXISTS `business_entity_view`*/;
/*!50001 DROP VIEW IF EXISTS `business_entity_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `business_entity_view` AS select `business_entity`.`id` AS `id`,`business_entity`.`name` AS `name`,`business_entity`.`address` AS `address`,`business_entity`.`postcode` AS `postcode`,`business_entity`.`telephone` AS `telephone`,`business_entity`.`fax` AS `fax`,`business_entity`.`email` AS `email`,`business_entity`.`website` AS `website`,`business_entity`.`npwp` AS `npwp`,`business_entity`.`nett_value` AS `nett value` from `business_entity` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `city_view`
--

/*!50001 DROP TABLE IF EXISTS `city_view`*/;
/*!50001 DROP VIEW IF EXISTS `city_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `city_view` AS select `t2`.`id` AS `id`,`t2`.`description` AS `description`,`t2`.`id_province` AS `id province`,`t1`.`description` AS `province description` from (`province` `t1` join `city` `t2`) where (`t1`.`id` = `t2`.`id_province`) order by `t1`.`id`,`t2`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `classification_field_view`
--

/*!50001 DROP TABLE IF EXISTS `classification_field_view`*/;
/*!50001 DROP VIEW IF EXISTS `classification_field_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `classification_field_view` AS select `classification_field`.`id` AS `id`,`classification_field`.`description` AS `description` from `classification_field` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `classification_sub_field_view`
--

/*!50001 DROP TABLE IF EXISTS `classification_sub_field_view`*/;
/*!50001 DROP VIEW IF EXISTS `classification_sub_field_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `classification_sub_field_view` AS select `t1`.`id` AS `id`,`t1`.`description` AS `description`,`t2`.`id` AS `id classification field`,`t2`.`description` AS `classification field description` from (`classification_sub_field` `t1` join `classification_field` `t2`) where (`t1`.`id_classification_field` = `t2`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `province_view`
--

/*!50001 DROP TABLE IF EXISTS `province_view`*/;
/*!50001 DROP VIEW IF EXISTS `province_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `province_view` AS select `province`.`id` AS `id`,`province`.`description` AS `description` from `province` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webuser_group_view`
--

/*!50001 DROP TABLE IF EXISTS `webuser_group_view`*/;
/*!50001 DROP VIEW IF EXISTS `webuser_group_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `webuser_group_view` AS select `webuser_group`.`id` AS `id`,`webuser_group`.`description` AS `description` from `webuser_group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `webuser_view`
--

/*!50001 DROP TABLE IF EXISTS `webuser_view`*/;
/*!50001 DROP VIEW IF EXISTS `webuser_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `webuser_view` AS select `t1`.`id` AS `id`,concat(`t1`.`first_name`,_latin1' ',`t1`.`last_name`) AS `real name`,`t1`.`id_webuser_group` AS `id webuser group`,`t2`.`description` AS `webuser group description` from (`webuser` `t1` join `webuser_group` `t2`) where (`t1`.`id_webuser_group` = `t2`.`id`) order by `t1`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-19 13:18:55
