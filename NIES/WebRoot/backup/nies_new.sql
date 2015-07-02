-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: nies_new
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `area_m_details`
--

DROP TABLE IF EXISTS `area_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` varchar(45) NOT NULL,
  `area_name` varchar(45) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `area_id_UNIQUE` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_m_details`
--

LOCK TABLES `area_m_details` WRITE;
/*!40000 ALTER TABLE `area_m_details` DISABLE KEYS */;
INSERT INTO `area_m_details` VALUES (1,'AR001','Emissions',NULL,NULL,'nksingh','2015-03-25'),(2,'AR002','Energy',NULL,NULL,NULL,NULL),(3,'AR003','Economy',NULL,NULL,NULL,NULL),(4,'AR004','Demography',NULL,NULL,NULL,NULL),(5,'AR005','Climate',NULL,NULL,NULL,NULL),(6,'AR006','Land Use',NULL,NULL,NULL,NULL),(7,'AR007','Service',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `area_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_m_details`
--

DROP TABLE IF EXISTS `country_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` varchar(45) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `country_id_UNIQUE` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_m_details`
--

LOCK TABLES `country_m_details` WRITE;
/*!40000 ALTER TABLE `country_m_details` DISABLE KEYS */;
INSERT INTO `country_m_details` VALUES (1,'AFG','AFGANISTAN',NULL,NULL,'nksingh',NULL),(2,'ALB','ALBANIA',NULL,NULL,NULL,NULL),(3,'DZA','ALGERIA',NULL,NULL,NULL,NULL),(4,'ASM','AMERICAN SAMOA',NULL,NULL,NULL,NULL),(5,'AND','ANDORRA',NULL,NULL,NULL,NULL),(6,'AGO','ANGOLA',NULL,NULL,NULL,NULL),(7,'AIA','ANGUILLA',NULL,NULL,NULL,NULL),(8,'ATG','ANTIGUA AND BARBUDA',NULL,NULL,NULL,NULL),(9,'ARG','ARGENTINA',NULL,NULL,NULL,NULL),(10,'ARM','ARMENIA',NULL,NULL,NULL,NULL),(11,'ABW','ARUBA',NULL,NULL,'Toshi Masui','2015-03-26'),(12,'AUS','AUSTRALIA',NULL,NULL,NULL,NULL),(13,'AUT','AUSTRIA',NULL,NULL,NULL,NULL),(14,'AZE','AZERBAIJAN',NULL,NULL,NULL,NULL),(15,'BHS','BAHAMAS',NULL,NULL,NULL,NULL),(16,'BHR','BAHRAIN',NULL,NULL,NULL,NULL),(17,'BGD','BANGLADESH',NULL,NULL,NULL,NULL),(18,'BRB','BARBADOS',NULL,NULL,NULL,NULL),(19,'BLR','BELARUS',NULL,NULL,NULL,NULL),(20,'BEL','BELGIUM',NULL,NULL,NULL,NULL),(21,'BLZ','BELIZE',NULL,NULL,NULL,NULL),(22,'BEN','BENIN',NULL,NULL,NULL,NULL),(23,'BMU','BERMUDA',NULL,NULL,NULL,NULL),(24,'BTN','BHUTAN',NULL,NULL,NULL,NULL),(25,'BOL','BOLIVIA',NULL,NULL,NULL,NULL),(26,'BIH','BOSNIA AND HERZEGOVINA',NULL,NULL,NULL,NULL),(27,'BWA','BOTSWANA',NULL,NULL,NULL,NULL),(28,'BVT','BOUVET ISLAND',NULL,NULL,NULL,NULL),(29,'BRA','BRAZIL',NULL,NULL,NULL,NULL),(30,'IOT','BRITISH INDIAN OCEAN TERRITORY',NULL,NULL,NULL,NULL),(31,'BRN','BRUNEI DARUSSALAM',NULL,NULL,NULL,NULL),(32,'BGR','BULGARIA',NULL,NULL,NULL,NULL),(33,'BFA','BURKINA FASO',NULL,NULL,NULL,NULL),(34,'BDI','BURUNDI',NULL,NULL,NULL,NULL),(35,'KHM','CAMBODIA',NULL,NULL,NULL,NULL),(36,'CMR','CAMEROON',NULL,NULL,NULL,NULL),(37,'CAN','CANADA',NULL,NULL,NULL,NULL),(38,'CPV','CAPE VERDE',NULL,NULL,NULL,NULL),(39,'CYM','CAYMAN ISLANDS',NULL,NULL,NULL,NULL),(40,'CAF','CENTRAL AFRICAN REPUBLIC',NULL,NULL,NULL,NULL),(41,'TCD','CHAD',NULL,NULL,NULL,NULL),(42,'CHL','CHILE',NULL,NULL,NULL,NULL),(43,'CHN','CHINA',NULL,NULL,NULL,NULL),(44,'CXR','CHRISTMAS ISLAND',NULL,NULL,NULL,NULL),(45,'CCK','COCOS (KEELING) ISLANDS',NULL,NULL,NULL,NULL),(46,'COL','COLOMBIA',NULL,NULL,NULL,NULL),(47,'COM','COMOROS',NULL,NULL,NULL,NULL),(48,'COG','CONGO',NULL,NULL,NULL,NULL),(49,'COD','CONGO, THE DEMOCRATIC REPUBLIC OF THE',NULL,NULL,NULL,NULL),(50,'COK','COOK ISLANDS',NULL,NULL,NULL,NULL),(51,'CRI','COSTA RICA',NULL,NULL,NULL,NULL),(52,'CIV','CÔTE D\'IVOIRE',NULL,NULL,NULL,NULL),(53,'HRV','CROATIA',NULL,NULL,NULL,NULL),(54,'CUB','CUBA',NULL,NULL,NULL,NULL),(55,'CYP','CYPRUS',NULL,NULL,NULL,NULL),(56,'CZE','CZECH REPUBLIC',NULL,NULL,NULL,NULL),(57,'DNK','DENMARK',NULL,NULL,NULL,NULL),(58,'DJI','DJIBOUTI',NULL,NULL,NULL,NULL),(59,'DMA','DOMINICA',NULL,NULL,NULL,NULL),(60,'DOM','DOMINICAN REPUBLIC',NULL,NULL,NULL,NULL),(61,'TLS','EAST TIMOR',NULL,NULL,NULL,NULL),(62,'ECU','ECUADOR',NULL,NULL,NULL,NULL),(63,'EGY','EGYPT',NULL,NULL,NULL,NULL),(64,'SLV','EL SALVADOR',NULL,NULL,NULL,NULL),(65,'GNQ','EQUATORIAL GUINEA',NULL,NULL,NULL,NULL),(66,'ERI','ERITREA',NULL,NULL,NULL,NULL),(67,'EST','ESTONIA',NULL,NULL,NULL,NULL),(68,'ETH','ETHIOPIA',NULL,NULL,NULL,NULL),(69,'FLK','FALKLANDS ISLANDS (MALVINAS)',NULL,NULL,NULL,NULL),(70,'FRO','FAROE ISLANDS',NULL,NULL,NULL,NULL),(71,'FJI','FIJI',NULL,NULL,NULL,NULL),(72,'FIN','FINLAND',NULL,NULL,NULL,NULL),(73,'FRA','FRANCE',NULL,NULL,NULL,NULL),(74,'GUF','FRENCH GUIANA',NULL,NULL,NULL,NULL),(75,'PYF','FRENCH POLYNESIA',NULL,NULL,NULL,NULL),(76,'ATF','FRENCH SOUTHERN TERRITORIES',NULL,NULL,NULL,NULL),(77,'GAB','GABON',NULL,NULL,NULL,NULL),(78,'GMB','GAMBIA',NULL,NULL,NULL,NULL),(79,'GEO','GEORGIA',NULL,NULL,NULL,NULL),(80,'DEU','GERMANY',NULL,NULL,NULL,NULL),(81,'GHA','GHANA',NULL,NULL,NULL,NULL),(82,'GIB','GIBRALTAR',NULL,NULL,NULL,NULL),(83,'GRC','GREECE',NULL,NULL,NULL,NULL),(84,'GRL','GREENLAND',NULL,NULL,NULL,NULL),(85,'GRD','GRENADA',NULL,NULL,NULL,NULL),(86,'GLP','GUADELOUPE',NULL,NULL,NULL,NULL),(87,'GUM','GUAM',NULL,NULL,NULL,NULL),(88,'GTM','GUATEMALA',NULL,NULL,NULL,NULL),(89,'GIN','GUINEA',NULL,NULL,NULL,NULL),(90,'GNB','GUINEA-BISSAU',NULL,NULL,NULL,NULL),(91,'GUY','GUYANA',NULL,NULL,NULL,NULL),(92,'HTI','HAITI',NULL,NULL,NULL,NULL),(93,'HMD','HEARD ISLAND AND MCDONALD ISLANDS',NULL,NULL,NULL,NULL),(94,'VAT','HOLY SEE (VATICAN CITY STATE)',NULL,NULL,NULL,NULL),(95,'HND','HONDURAS',NULL,NULL,NULL,NULL),(96,'HKG','HONG KONG',NULL,NULL,NULL,NULL),(97,'HUN','HUNGARY',NULL,NULL,NULL,NULL),(98,'ISL','ICELAND',NULL,NULL,NULL,NULL),(99,'IND','INDIA',NULL,NULL,NULL,NULL),(100,'IDN','INDONESIA',NULL,NULL,NULL,NULL),(101,'IRN','IRAN, ISLAMIC REPUBLIC OF',NULL,NULL,NULL,NULL),(102,'IRQ','IRAQ',NULL,NULL,NULL,NULL),(103,'IRL','IRELAND',NULL,NULL,NULL,NULL),(104,'ISR','ISRAEL',NULL,NULL,NULL,NULL),(105,'ITA','ITALY',NULL,NULL,NULL,NULL),(106,'JAM','JAMAICA',NULL,NULL,NULL,NULL),(107,'JPN','JAPAN',NULL,NULL,NULL,NULL),(108,'JOR','JORDAN',NULL,NULL,NULL,NULL),(109,'KAZ','KAZAKSTAN',NULL,NULL,NULL,NULL),(110,'KEN','KENYA',NULL,NULL,NULL,NULL),(111,'KIR','KIRIBATI',NULL,NULL,NULL,NULL),(112,'PRK','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF',NULL,NULL,NULL,NULL),(113,'KOR','KOREA, REPUBLIC OF',NULL,NULL,NULL,NULL),(114,'KWT','KUWAIT',NULL,NULL,NULL,NULL),(115,'KGZ','KYRGYZSTAN',NULL,NULL,NULL,NULL),(116,'LAO','LAO PEOPLE\'S DEMOCRATIC REPUBLIC',NULL,NULL,NULL,NULL),(117,'LVA','LATVIA',NULL,NULL,NULL,NULL),(118,'LBN','LEBANON',NULL,NULL,NULL,NULL),(119,'LSO','LESOTHO',NULL,NULL,NULL,NULL),(120,'LBR','LIBERIA',NULL,NULL,NULL,NULL),(121,'LBY','LIBYAN ARAB JAMAHIRIYA',NULL,NULL,NULL,NULL),(122,'LIE','LIECHTENSTEIN',NULL,NULL,NULL,NULL),(123,'LTU','LITHUANIA',NULL,NULL,NULL,NULL),(124,'LUX','LUXEMBOURG',NULL,NULL,NULL,NULL),(125,'MKD','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF',NULL,NULL,NULL,NULL),(126,'MDG','MADAGASCAR',NULL,NULL,NULL,NULL),(127,'MWI','MALAWI',NULL,NULL,NULL,NULL),(128,'MYS','MALAYSIA',NULL,NULL,NULL,NULL),(129,'MDV','MALDIVES',NULL,NULL,NULL,NULL),(130,'MLI','MALI',NULL,NULL,NULL,NULL),(131,'MLT','MALTA',NULL,NULL,NULL,NULL),(132,'MHL','MARSHALL ISLANDS',NULL,NULL,NULL,NULL),(133,'MTQ','MARTINIQUE',NULL,NULL,NULL,NULL),(134,'MRT','MAURITANIA',NULL,NULL,NULL,NULL),(135,'MUS','MAURITIUS',NULL,NULL,NULL,NULL),(136,'MYT','MAYOTTE',NULL,NULL,NULL,NULL),(137,'MEX','MEXICO',NULL,NULL,NULL,NULL),(138,'FSM','MICRONESIA, FEDERATED STATES OF',NULL,NULL,NULL,NULL),(139,'MDA','MOLDOVA, REPUBLIC OF',NULL,NULL,NULL,NULL),(140,'MCO','MONACO',NULL,NULL,NULL,NULL),(141,'MNG','MONGOLIA',NULL,NULL,NULL,NULL),(142,'MNE','MONTENEGRO',NULL,NULL,NULL,NULL),(143,'MSR','MONTSERRAT',NULL,NULL,NULL,NULL),(144,'MAR','MOROCCO',NULL,NULL,NULL,NULL),(145,'MOZ','MOZAMBIQUE',NULL,NULL,NULL,NULL),(146,'MMR','MYANMAR',NULL,NULL,NULL,NULL),(147,'NAM','NAMIBIA',NULL,NULL,NULL,NULL),(148,'NRU','NAURU',NULL,NULL,NULL,NULL),(149,'NPL','NEPAL',NULL,NULL,NULL,NULL),(150,'NLD','NETHERLANDS',NULL,NULL,NULL,NULL),(151,'ANT','NETHERLANDS ANTILLES',NULL,NULL,NULL,NULL),(152,'NCL','NEW CALEDONIA',NULL,NULL,NULL,NULL),(153,'NZL','NEW ZEALAND',NULL,NULL,NULL,NULL),(154,'NIC','NICARAGUA',NULL,NULL,NULL,NULL),(155,'NER','NIGER',NULL,NULL,NULL,NULL),(156,'NGA','NIGERIA',NULL,NULL,NULL,NULL),(157,'NIU','NIUE',NULL,NULL,NULL,NULL),(158,'NFK','NORFOLK ISLAND',NULL,NULL,NULL,NULL),(159,'MNP','NORTHERN MARIANA ISLANDS',NULL,NULL,NULL,NULL),(160,'NOR','NORWAY',NULL,NULL,NULL,NULL),(161,'OMN','OMAN',NULL,NULL,NULL,NULL),(162,'PAK','PAKISTAN',NULL,NULL,NULL,NULL),(163,'PLW','PALAU',NULL,NULL,NULL,NULL),(164,'PAN','PANAMA',NULL,NULL,NULL,NULL),(165,'PNG','PAPUA NEW GUINEA',NULL,NULL,NULL,NULL),(166,'PRY','PARAGUAY',NULL,NULL,NULL,NULL),(167,'PER','PERU',NULL,NULL,NULL,NULL),(168,'PHL','PHILIPPINES',NULL,NULL,NULL,NULL),(169,'PCN','PITCAIRN',NULL,NULL,NULL,NULL),(170,'POL','POLAND',NULL,NULL,NULL,NULL),(171,'PRT','PORTUGAL',NULL,NULL,NULL,NULL),(172,'PRI','PUERTO RICO',NULL,NULL,NULL,NULL),(173,'QAT','QATAR',NULL,NULL,NULL,NULL),(174,'REU','RÉUNION',NULL,NULL,NULL,NULL),(175,'ROU','ROMANIA',NULL,NULL,NULL,NULL),(176,'RUS','RUSSIAN FEDERATION',NULL,NULL,NULL,NULL),(177,'RWA','RWANDA',NULL,NULL,NULL,NULL),(178,'SHN','SAINT HELENA',NULL,NULL,NULL,NULL),(179,'KNA','SAINT KITTS AND NEVIS',NULL,NULL,NULL,NULL),(180,'LCA','SAINT LUCIA',NULL,NULL,NULL,NULL),(181,'SPM','SAINT PIERRE AND MIQUELON',NULL,NULL,NULL,NULL),(182,'VCT','SAINT VINCENT AND THE GRENADINES',NULL,NULL,NULL,NULL),(183,'WSM','SAMOA',NULL,NULL,NULL,NULL),(184,'SMR','SAN MARINO',NULL,NULL,NULL,NULL),(185,'STP','SAO TOME AND PRINCIPE',NULL,NULL,NULL,NULL),(186,'SAU','SAUDI ARABIA',NULL,NULL,NULL,NULL),(187,'SEN','SENEGAL',NULL,NULL,NULL,NULL),(188,'SRB','SERBIA',NULL,NULL,NULL,NULL),(189,'SYC','SEYCHELLES',NULL,NULL,NULL,NULL),(190,'SLE','SIERRA LEONE',NULL,NULL,NULL,NULL),(191,'SGP','SINGAPORE',NULL,NULL,NULL,NULL),(192,'SVK','SLOVAKIA',NULL,NULL,NULL,NULL),(193,'SVN','SLOVENIA',NULL,NULL,NULL,NULL),(194,'SLB','SOLOMON ISLANDS',NULL,NULL,NULL,NULL),(195,'SOM','SOMALIA',NULL,NULL,NULL,NULL),(196,'ZAF','SOUTH AFRICA',NULL,NULL,NULL,NULL),(197,'SGS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS',NULL,NULL,NULL,NULL),(198,'ESP','SPAIN',NULL,NULL,NULL,NULL),(199,'LKA','SRI LANKA',NULL,NULL,NULL,NULL),(200,'SDN','SUDAN',NULL,NULL,NULL,NULL),(201,'SUR','SURINAME',NULL,NULL,NULL,NULL),(202,'SJM','SVALBARD AND JAN MAYEN',NULL,NULL,NULL,NULL),(203,'SWZ','SWAZILAND',NULL,NULL,NULL,NULL),(204,'SWE','SWEDEN',NULL,NULL,NULL,NULL),(205,'CHE','SWITZERLAND',NULL,NULL,NULL,NULL),(206,'SYR','SYRIAN ARAB REPUBLIC',NULL,NULL,NULL,NULL),(207,'TWN','TAIWAN, PROVINCE OF CHINA',NULL,NULL,NULL,NULL),(208,'TJK','TAJIKISTAN',NULL,NULL,NULL,NULL),(209,'TZA','TANZANIA, UNITED REPUBLIC OF',NULL,NULL,NULL,NULL),(210,'THA','THAILAND',NULL,NULL,NULL,NULL),(211,'TGO','TOGO',NULL,NULL,NULL,NULL),(212,'TKL','TOKELAU',NULL,NULL,NULL,NULL),(213,'TON','TONGA',NULL,NULL,NULL,NULL),(214,'TTO','TRINIDAD AND TOBAGO',NULL,NULL,NULL,NULL),(215,'TUN','TUNISIA',NULL,NULL,NULL,NULL),(216,'TUR','TURKEY',NULL,NULL,NULL,NULL),(217,'TKM','TURKMENISTAN',NULL,NULL,NULL,NULL),(218,'TCA','TURKS AND CAICOS ISLANDS',NULL,NULL,NULL,NULL),(219,'TUV','TUVALU',NULL,NULL,NULL,NULL),(220,'UGA','UGANDA',NULL,NULL,NULL,NULL),(221,'UKR','UKRAINE',NULL,NULL,NULL,NULL),(222,'ARE','UNITED ARAB EMIRATES',NULL,NULL,NULL,NULL),(223,'GBR','UNITED KINGDOM',NULL,NULL,NULL,NULL),(224,'USA','UNITED STATES',NULL,NULL,NULL,NULL),(225,'UMI','UNITED STATES MINOR OUTLYING ISLANDS',NULL,NULL,NULL,NULL),(226,'URY','URUGUAY',NULL,NULL,NULL,NULL),(227,'UZB','UZBEKISTAN',NULL,NULL,NULL,NULL),(228,'VUT','VANUATU',NULL,NULL,NULL,NULL),(229,'VEN','VENEZUELA',NULL,NULL,NULL,NULL),(230,'VNM','VIET NAM',NULL,NULL,NULL,NULL),(231,'VGB','VIRGIN ISLANDS, BRITISH',NULL,NULL,NULL,NULL),(232,'VIR','VIRGIN ISLANDS, U.S.',NULL,NULL,NULL,NULL),(233,'WLF','WALLIS AND FUTUNA',NULL,NULL,NULL,NULL),(234,'ESH','WESTERN SAHARA',NULL,NULL,NULL,NULL),(235,'YEM','YEMEN',NULL,NULL,NULL,NULL),(236,'ZMB','ZAMBIA',NULL,NULL,NULL,NULL),(237,'ZWE','ZIMBABWE',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `country_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_m_details`
--

DROP TABLE IF EXISTS `institution_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `institution_id` varchar(45) NOT NULL,
  `institution_name` varchar(45) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `institution_id_UNIQUE` (`institution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_m_details`
--

LOCK TABLES `institution_m_details` WRITE;
/*!40000 ALTER TABLE `institution_m_details` DISABLE KEYS */;
INSERT INTO `institution_m_details` VALUES (1,'I001','National Institute for Environmental Studies','nksingh','2015-03-25',NULL,NULL),(2,'I002','NIES-1I','nksingh','2015-03-25','nksingh','2015-03-25');
/*!40000 ALTER TABLE `institution_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_m_details`
--

DROP TABLE IF EXISTS `login_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_m_details` (
  `idlogin` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` varchar(45) NOT NULL,
  PRIMARY KEY (`idlogin`,`login_id`),
  UNIQUE KEY `idlogin_UNIQUE` (`idlogin`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_m_details`
--

LOCK TABLES `login_m_details` WRITE;
/*!40000 ALTER TABLE `login_m_details` DISABLE KEYS */;
INSERT INTO `login_m_details` VALUES (1,'fujimori','12345','R001'),(2,'masui','12345','R001'),(3,'hasegawa','12345','R001'),(4,'mikiko','12345','R003'),(5,'guest','guest','R004');
/*!40000 ALTER TABLE `login_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_m_details`
--

DROP TABLE IF EXISTS `model_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` varchar(45) NOT NULL,
  `version` varchar(45) DEFAULT NULL,
  `current_version` varchar(45) DEFAULT NULL,
  `version_status` varchar(2) DEFAULT NULL,
  `person_name` varchar(45) DEFAULT NULL,
  `entry_date` varchar(45) DEFAULT NULL,
  `model_documentation` text,
  `model_solution_concept` varchar(45) DEFAULT NULL,
  `model_solution_horizon` varchar(45) DEFAULT NULL,
  `model_solution_method` varchar(45) DEFAULT NULL,
  `model_exogenous_growth_drivers` varchar(45) DEFAULT NULL,
  `cost_measure` varchar(5) DEFAULT NULL,
  `base_year` varchar(5) DEFAULT NULL,
  `time_horizon` varchar(5) DEFAULT NULL,
  `time_step` varchar(45) DEFAULT NULL,
  `regional_coverage` varchar(45) DEFAULT NULL,
  `number_of_regions` varchar(45) DEFAULT NULL,
  `trade` varchar(45) DEFAULT NULL,
  `number_of_sectors` varchar(45) DEFAULT NULL,
  `energy_service_sectors` varchar(45) DEFAULT NULL,
  `economic_sectors` varchar(45) DEFAULT NULL,
  `number_of_technologios` varchar(45) DEFAULT NULL,
  `energy_technologies` varchar(45) DEFAULT NULL,
  `energy_technology_substitution` varchar(45) DEFAULT NULL,
  `greenhouse_gas_emissions` varchar(45) DEFAULT NULL,
  `climate_change` varchar(45) DEFAULT NULL,
  `co_linkages` varchar(45) DEFAULT NULL,
  `resource_use` varchar(45) DEFAULT NULL,
  `land_use` varchar(45) DEFAULT NULL,
  `development` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `model_ID_UNIQUE` (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_m_details`
--

LOCK TABLES `model_m_details` WRITE;
/*!40000 ALTER TABLE `model_m_details` DISABLE KEYS */;
INSERT INTO `model_m_details` VALUES (1,'AIM/CGE','1.6','1.4','-1','Rajat','Jan 2015','Model Documentation d sdf sdsd ','-1','-1','-1','-1','-1','2014','9 PM','10 PM','-1','18','-1','nestora ','-1','-1','33','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nksingh','2015-03-25','nksingh','2015-03-25');
/*!40000 ALTER TABLE `model_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_m_details`
--

DROP TABLE IF EXISTS `region_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` varchar(45) NOT NULL,
  `region_name` varchar(45) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `region_id_UNIQUE` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_m_details`
--

LOCK TABLES `region_m_details` WRITE;
/*!40000 ALTER TABLE `region_m_details` DISABLE KEYS */;
INSERT INTO `region_m_details` VALUES (1,'USA','USA',NULL,NULL,NULL,NULL),(2,'XE25','EU',NULL,NULL,NULL,NULL),(3,'XER','Rest of Europe',NULL,NULL,NULL,NULL),(4,'TUR','Turkey',NULL,NULL,NULL,NULL),(5,'XOC','New Zealand and Australia',NULL,NULL,NULL,NULL),(6,'CHN','China',NULL,NULL,NULL,NULL),(7,'IND','India',NULL,NULL,NULL,NULL),(8,'JPN','Japan',NULL,NULL,NULL,NULL),(9,'XSE','Rest of East and South East Asia',NULL,NULL,NULL,NULL),(10,'XSA','Rest of Asia',NULL,NULL,NULL,NULL),(11,'CAN','Canada',NULL,NULL,NULL,NULL),(12,'BRA','Brazil',NULL,NULL,'nksingh','2015-03-25'),(13,'XLM','Rest of Brazil',NULL,NULL,NULL,NULL),(14,'CIS','Former USSR',NULL,NULL,NULL,NULL),(15,'XME','Middle East',NULL,NULL,NULL,NULL),(16,'XNF','North Africa',NULL,NULL,NULL,NULL),(17,'XAF','Other Africa',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `region_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regional_definition_t_details`
--

DROP TABLE IF EXISTS `regional_definition_t_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regional_definition_t_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` varchar(45) NOT NULL,
  `region_id` varchar(45) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `unique` (`country_id`,`region_id`),
  UNIQUE KEY `unique_region_def` (`country_id`,`region_id`),
  KEY `country_reg_id_idx` (`country_id`),
  KEY `regionId_country_idx` (`region_id`),
  CONSTRAINT `countryId` FOREIGN KEY (`country_id`) REFERENCES `country_m_details` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `regionId` FOREIGN KEY (`region_id`) REFERENCES `region_m_details` (`region_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regional_definition_t_details`
--

LOCK TABLES `regional_definition_t_details` WRITE;
/*!40000 ALTER TABLE `regional_definition_t_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `regional_definition_t_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_m_details`
--

DROP TABLE IF EXISTS `role_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(45) NOT NULL,
  `role_name` varchar(45) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `role_id_UNIQUE` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_m_details`
--

LOCK TABLES `role_m_details` WRITE;
/*!40000 ALTER TABLE `role_m_details` DISABLE KEYS */;
INSERT INTO `role_m_details` VALUES (1,'R001','Administrator','nksingh','2015-03-25','nksingh','2015-03-25'),(2,'R002','Master','nksingh','2015-03-25',NULL,NULL),(3,'R003','User','nksingh','2015-03-25','master','2015-03-25'),(4,'R004','Guest','master','2015-03-25',NULL,NULL);
/*!40000 ALTER TABLE `role_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_m_details`
--

DROP TABLE IF EXISTS `unit_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` varchar(45) NOT NULL,
  `unit_name` varchar(45) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `unit_id_UNIQUE` (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_m_details`
--

LOCK TABLES `unit_m_details` WRITE;
/*!40000 ALTER TABLE `unit_m_details` DISABLE KEYS */;
INSERT INTO `unit_m_details` VALUES (1,'U001','Mt CO2/yr',NULL,NULL,'nksingh','2015-03-25'),(2,'U002','EJ/yr',NULL,NULL,NULL,NULL),(3,'U003','billion US$2005/yr',NULL,NULL,NULL,NULL),(4,'U004','million',NULL,NULL,NULL,NULL),(5,'U005','US$2005/t CO2',NULL,NULL,NULL,NULL),(6,'U006','US$2005/GJ',NULL,NULL,NULL,NULL),(7,'U007','ppm',NULL,NULL,NULL,NULL),(8,'U008','Mt CH4/yr',NULL,NULL,NULL,NULL),(9,'U009','Mt CO2/yr',NULL,NULL,NULL,NULL),(10,'U010','Mt CO2-equiv/yr',NULL,NULL,NULL,NULL),(11,'U011','kt N2O/yr',NULL,NULL,NULL,NULL),(12,'U012','W/m2',NULL,NULL,NULL,NULL),(13,'U013','million Ha/yr',NULL,NULL,NULL,NULL),(14,'U014','°C',NULL,NULL,NULL,NULL),(15,'U015','ppb',NULL,NULL,NULL,NULL),(16,'U016','Mt BC/yr',NULL,NULL,NULL,NULL),(17,'U017','Mt CO/yr',NULL,NULL,NULL,NULL),(18,'U018','Mt NO2/yr',NULL,NULL,NULL,NULL),(19,'U019','Mt OC/yr',NULL,NULL,NULL,NULL),(20,'U020','Mt SO2/yr',NULL,NULL,NULL,NULL),(21,'U021','bn m2/yr',NULL,NULL,NULL,NULL),(22,'U022','bn tkm/yr',NULL,NULL,NULL,NULL),(23,'U023','bn pkm/yr',NULL,NULL,NULL,NULL),(24,'U024','EJ',NULL,NULL,NULL,NULL),(25,'U025','ktU',NULL,NULL,NULL,NULL),(26,'U026','t/ha/yr',NULL,NULL,NULL,NULL),(27,'U027','mio m3/yr',NULL,NULL,NULL,NULL),(28,'U028','Tg Nr/yr',NULL,NULL,NULL,NULL),(29,'U029','Tg P/yr',NULL,NULL,NULL,NULL),(30,'U030','Index (2005 = 1)',NULL,NULL,NULL,NULL),(31,'U031','Mt NH3/yr',NULL,NULL,NULL,NULL),(32,'U032','Mt VOC/yr',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `unit_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_m_details`
--

DROP TABLE IF EXISTS `user_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `institution_id` varchar(45) DEFAULT NULL,
  `country_id` varchar(45) DEFAULT NULL,
  `model_id` varchar(45) NOT NULL,
  `address` text,
  `view` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `update` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `activation_code` varchar(20) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `tblid_UNIQUE` (`tblid`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `country_id_idx` (`country_id`),
  KEY `institution_id_idx` (`institution_id`),
  KEY `model_id_idx` (`model_id`),
  CONSTRAINT `country_id` FOREIGN KEY (`country_id`) REFERENCES `country_m_details` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institution_id` FOREIGN KEY (`institution_id`) REFERENCES `institution_m_details` (`institution_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `model_id` FOREIGN KEY (`model_id`) REFERENCES `model_m_details` (`model_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_m_details`
--

LOCK TABLES `user_m_details` WRITE;
/*!40000 ALTER TABLE `user_m_details` DISABLE KEYS */;
INSERT INTO `user_m_details` VALUES (1,'fujimori','Shinichiro Fujimori','fujimori.shinichiro@nies.go.jp','I001','JPN','AIM/CGE','16-2 Onogawa Tsukuba Ibaraki, 305-8506 Japan','NO','NO','Y',NULL,NULL,NULL,NULL),(2,'masui','Toshi Masui','masui@nies.go.jp','I001','JPN','AIM/CGE','16-2 Onogawa Tsukuba Ibaraki, 305-8506 Japan','NO','NO','Y',NULL,NULL,NULL,NULL),(3,'hasegawa','Tomoko Hasegawa','hasegawa.tomoko@nies.go.jp','I001','JPN','AIM/CGE','16-2 Onogawa Tsukuba Ibaraki, 305-8506 Japan','NO','NO','Y',NULL,NULL,NULL,NULL),(4,'mikiko','Mikiko Kainuma','mikiko@nies.go.jp','I001','JPN','AIM/CGE','16-2 Onogawa Tsukuba Ibaraki, 305-8506 Japan','NO','NO','Y',NULL,NULL,NULL,NULL),(5,'guest','Guest','guest@nies.go.jp','I001','JPN','AIM/CGE','16-2 Onogawa Tsukuba Ibaraki, 305-8506 Japan','NO','NO','Y',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_m_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verable_m_details`
--

DROP TABLE IF EXISTS `verable_m_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verable_m_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `variable_id` varchar(45) NOT NULL,
  `variable_name` varchar(45) NOT NULL,
  `area_id` varchar(45) NOT NULL,
  `unit_id` varchar(45) NOT NULL,
  `defnition` text,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`tblid`),
  UNIQUE KEY `variable_id_UNIQUE` (`variable_id`),
  KEY `area_id_idx` (`area_id`),
  KEY `unit_id_idx` (`unit_id`),
  CONSTRAINT `area_id` FOREIGN KEY (`area_id`) REFERENCES `area_m_details` (`area_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `unit_id` FOREIGN KEY (`unit_id`) REFERENCES `unit_m_details` (`unit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verable_m_details`
--

LOCK TABLES `verable_m_details` WRITE;
/*!40000 ALTER TABLE `verable_m_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `verable_m_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-26 10:21:48





CREATE TABLE `data_t_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` varchar(45) DEFAULT NULL,
  `scenario` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `variable` varchar(45) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `uploaded_by` varchar(45) DEFAULT NULL,
  `date_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tblid`)
);


CREATE TABLE `data_value_t_details` (
  `tblid` int(11) NOT NULL AUTO_INCREMENT,
  `tblid_fk` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`tblid`)
);
