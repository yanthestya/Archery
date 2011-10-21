-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: web
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
INSERT INTO `menus` VALUES (1,'webuser setup','N','N',0,'1',NULL,NULL,'smpl'),(2,'webuser','N','Y',1,'0','webuser_view','webuser','smpl'),(3,'webuser group','N','Y',1,'1','webuser_group_view','webuser_group','smpl'),(4,'manage password','Y','Y',1,'2',NULL,NULL,'smpl'),(5,'change password','Y','Y',0,'5',NULL,NULL,'smpl'),(6,'logout','Y','Y',0,'6',NULL,NULL,'smpl');
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
  KEY `FK_menus_exception_add` (`id_menus`),
  CONSTRAINT `FK_menus_exception_edit` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_matrix`
--

LOCK TABLES `security_matrix` WRITE;
/*!40000 ALTER TABLE `security_matrix` DISABLE KEYS */;
INSERT INTO `security_matrix` VALUES (1,1,'ADM','Y'),(2,2,'ADM','Y'),(3,3,'ADM','Y'),(4,4,'ADM','Y'),(5,5,'ADM','Y'),(6,6,'ADM','Y');
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

-- Dump completed on 2011-10-21 15:24:41
