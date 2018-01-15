-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: kalevala
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `kalevala_collections`
--

DROP TABLE IF EXISTS `kalevala_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_collections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `public` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 22:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 22:00:00',
  `owner_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `public` (`public`),
  KEY `featured` (`featured`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_collections`
--

LOCK TABLES `kalevala_collections` WRITE;
/*!40000 ALTER TABLE `kalevala_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `kalevala_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_element_sets`
--

DROP TABLE IF EXISTS `kalevala_element_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_element_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `record_type` (`record_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_element_sets`
--

LOCK TABLES `kalevala_element_sets` WRITE;
/*!40000 ALTER TABLE `kalevala_element_sets` DISABLE KEYS */;
INSERT INTO `kalevala_element_sets` VALUES (1,NULL,'Dublin Core','The Dublin Core metadata element set is common to all Omeka records, including items, files, and collections. For more information see, http://dublincore.org/documents/dces/.'),(3,'Item','Item Type Metadata','The item type metadata element set, consisting of all item type elements bundled with Omeka and all item type elements created by an administrator.');
/*!40000 ALTER TABLE `kalevala_element_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_element_texts`
--

DROP TABLE IF EXISTS `kalevala_element_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_element_texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) unsigned NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) unsigned NOT NULL,
  `html` tinyint(4) NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `record_type_record_id` (`record_type`,`record_id`),
  KEY `element_id` (`element_id`),
  KEY `text` (`text`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_element_texts`
--

LOCK TABLES `kalevala_element_texts` WRITE;
/*!40000 ALTER TABLE `kalevala_element_texts` DISABLE KEYS */;
INSERT INTO `kalevala_element_texts` VALUES (1,1,'Item',50,0,'Kalevalan 3. runo');
/*!40000 ALTER TABLE `kalevala_element_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_elements`
--

DROP TABLE IF EXISTS `kalevala_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `element_set_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_element_set_id` (`element_set_id`,`name`),
  UNIQUE KEY `order_element_set_id` (`element_set_id`,`order`),
  KEY `element_set_id` (`element_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_elements`
--

LOCK TABLES `kalevala_elements` WRITE;
/*!40000 ALTER TABLE `kalevala_elements` DISABLE KEYS */;
INSERT INTO `kalevala_elements` VALUES (1,3,NULL,'Text','Any textual data included in the document',NULL),(2,3,NULL,'Interviewer','The person(s) performing the interview',NULL),(3,3,NULL,'Interviewee','The person(s) being interviewed',NULL),(4,3,NULL,'Location','The location of the interview',NULL),(5,3,NULL,'Transcription','Any written text transcribed from a sound',NULL),(6,3,NULL,'Local URL','The URL of the local directory containing all assets of the website',NULL),(7,3,NULL,'Original Format','The type of object, such as painting, sculpture, paper, photo, and additional data',NULL),(10,3,NULL,'Physical Dimensions','The actual physical size of the original image',NULL),(11,3,NULL,'Duration','Length of time involved (seconds, minutes, hours, days, class periods, etc.)',NULL),(12,3,NULL,'Compression','Type/rate of compression for moving image file (i.e. MPEG-4)',NULL),(13,3,NULL,'Producer','Name (or names) of the person who produced the video',NULL),(14,3,NULL,'Director','Name (or names) of the person who produced the video',NULL),(15,3,NULL,'Bit Rate/Frequency','Rate at which bits are transferred (i.e. 96 kbit/s would be FM quality audio)',NULL),(16,3,NULL,'Time Summary','A summary of an interview given for different time stamps throughout the interview',NULL),(17,3,NULL,'Email Body','The main body of the email, including all replied and forwarded text and headers',NULL),(18,3,NULL,'Subject Line','The content of the subject line of the email',NULL),(19,3,NULL,'From','The name and email address of the person sending the email',NULL),(20,3,NULL,'To','The name(s) and email address(es) of the person to whom the email was sent',NULL),(21,3,NULL,'CC','The name(s) and email address(es) of the person to whom the email was carbon copied',NULL),(22,3,NULL,'BCC','The name(s) and email address(es) of the person to whom the email was blind carbon copied',NULL),(23,3,NULL,'Number of Attachments','The number of attachments to the email',NULL),(24,3,NULL,'Standards','',NULL),(25,3,NULL,'Objectives','',NULL),(26,3,NULL,'Materials','',NULL),(27,3,NULL,'Lesson Plan Text','',NULL),(28,3,NULL,'URL','',NULL),(29,3,NULL,'Event Type','',NULL),(30,3,NULL,'Participants','Names of individuals or groups participating in the event',NULL),(31,3,NULL,'Birth Date','',NULL),(32,3,NULL,'Birthplace','',NULL),(33,3,NULL,'Death Date','',NULL),(34,3,NULL,'Occupation','',NULL),(35,3,NULL,'Biographical Text','',NULL),(36,3,NULL,'Bibliography','',NULL),(37,1,8,'Contributor','An entity responsible for making contributions to the resource',NULL),(38,1,15,'Coverage','The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant',NULL),(39,1,4,'Creator','An entity primarily responsible for making the resource',NULL),(40,1,7,'Date','A point or period of time associated with an event in the lifecycle of the resource',NULL),(41,1,3,'Description','An account of the resource',NULL),(42,1,11,'Format','The file format, physical medium, or dimensions of the resource',NULL),(43,1,14,'Identifier','An unambiguous reference to the resource within a given context',NULL),(44,1,12,'Language','A language of the resource',NULL),(45,1,6,'Publisher','An entity responsible for making the resource available',NULL),(46,1,10,'Relation','A related resource',NULL),(47,1,9,'Rights','Information about rights held in and over the resource',NULL),(48,1,5,'Source','A related resource from which the described resource is derived',NULL),(49,1,2,'Subject','The topic of the resource',NULL),(50,1,1,'Title','A name given to the resource',NULL),(51,1,13,'Type','The nature or genre of the resource',NULL);
/*!40000 ALTER TABLE `kalevala_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_files`
--

DROP TABLE IF EXISTS `kalevala_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `has_derivative_image` tinyint(1) NOT NULL,
  `authentication` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 22:00:00',
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_files`
--

LOCK TABLES `kalevala_files` WRITE;
/*!40000 ALTER TABLE `kalevala_files` DISABLE KEYS */;
INSERT INTO `kalevala_files` VALUES (5,1,NULL,254563,1,'604f630f2504c648b4f4966c2844a99b','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_031.jpg','page_031.jpg','2018-01-09 07:04:10','2018-01-09 06:00:38',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.055650214019946}}'),(6,1,NULL,271792,1,'5dea522b56199092dd84654de4c42148','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_032.jpg','page_032.jpg','2018-01-09 07:04:10','2018-01-09 06:00:39',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.05941665901529}}'),(7,1,NULL,275012,1,'03572c5b3ed76247474a680fef34ff0d','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_033.jpg','page_033.jpg','2018-01-09 07:04:10','2018-01-09 06:00:39',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.060120585701981}}'),(8,1,NULL,282203,1,'5c5ba99cfdb9f23d7310aab0da3db1a9','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_034.jpg','page_034.jpg','2018-01-09 07:04:10','2018-01-09 06:00:40',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.061692615765334}}'),(9,1,NULL,284587,1,'88b01d3633c27e214a25dcff7edf79ce','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_035.jpg','page_035.jpg','2018-01-09 07:04:10','2018-01-09 06:00:40',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.062213783846413}}'),(10,1,NULL,277098,1,'2a587f68c4bae90f1bd43724af54cc62','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_036.jpg','page_036.jpg','2018-01-09 07:04:10','2018-01-09 06:00:41',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.060576607772925}}'),(11,1,NULL,270269,1,'d5d5c09fd239b21837e55591789302c7','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_037.jpg','page_037.jpg','2018-01-09 07:04:10','2018-01-09 06:00:41',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.059083714809131}}'),(12,1,NULL,275943,1,'8dc38a626e410701e8391dd548218f31','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_038.jpg','page_038.jpg','2018-01-09 07:04:11','2018-01-09 06:00:42',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.060324112330959}}'),(13,1,NULL,265025,1,'fbee7b2342d0f70d1b7aa514da41bddc','image/jpeg','JPEG image data, JFIF standard 1.01, resolution (DPI), density 200x200, segment length 16, baseline, precision 8, 985x1548, frames 1','1/page_039.jpg','page_039.jpg','2018-01-09 07:04:11','2018-01-09 06:00:43',1,'{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":985,\"resolution_y\":1548,\"compression_ratio\":0.057937319919376}}'),(16,1,NULL,28668,0,'15275c1df44826d5b9c06f42c3b473e7','application/xml','XML 1.0 document, UTF-8 Unicode text','1/kolmas_runo.xml','kolmas_runo.xml','2018-01-09 07:04:11','2018-01-09 07:04:09',1,'[]');
/*!40000 ALTER TABLE `kalevala_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_item_types`
--

DROP TABLE IF EXISTS `kalevala_item_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_item_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_item_types`
--

LOCK TABLES `kalevala_item_types` WRITE;
/*!40000 ALTER TABLE `kalevala_item_types` DISABLE KEYS */;
INSERT INTO `kalevala_item_types` VALUES (1,'Text','A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.'),(3,'Moving Image','A series of visual representations imparting an impression of motion when shown in succession. Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation.'),(4,'Oral History','A resource containing historical information obtained in interviews with persons having firsthand knowledge.'),(5,'Sound','A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.'),(6,'Still Image','A static visual representation. Examples include paintings, drawings, graphic designs, plans and maps. Recommended best practice is to assign the type Text to images of textual materials.'),(7,'Website','A resource comprising of a web page or web pages and all related assets ( such as images, sound and video files, etc. ).'),(8,'Event','A non-persistent, time-based occurrence. Metadata for an event provides descriptive information that is the basis for discovery of the purpose, location, duration, and responsible agents associated with an event. Examples include an exhibition, webcast, conference, workshop, open day, performance, battle, trial, wedding, tea party, conflagration.'),(9,'Email','A resource containing textual messages and binary attachments sent electronically from one person to another or one person to many people.'),(10,'Lesson Plan','A resource that gives a detailed description of a course of instruction.'),(11,'Hyperlink','A link, or reference, to another resource on the Internet.'),(12,'Person','An individual.'),(13,'Interactive Resource','A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.'),(14,'Dataset','Data encoded in a defined structure. Examples include lists, tables, and databases. A dataset may be useful for direct machine processing.'),(15,'Physical Object','An inanimate, three-dimensional object or substance. Note that digital representations of, or surrogates for, these objects should use Moving Image, Still Image, Text or one of the other types.'),(16,'Service','A system that provides one or more functions. Examples include a photocopying service, a banking service, an authentication service, interlibrary loans, a Z39.50 or Web server.'),(17,'Software','A computer program in source or compiled form. Examples include a C source file, MS-Windows .exe executable, or Perl script.');
/*!40000 ALTER TABLE `kalevala_item_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_item_types_elements`
--

DROP TABLE IF EXISTS `kalevala_item_types_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_item_types_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_type_id` int(10) unsigned NOT NULL,
  `element_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_type_id_element_id` (`item_type_id`,`element_id`),
  KEY `item_type_id` (`item_type_id`),
  KEY `element_id` (`element_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_item_types_elements`
--

LOCK TABLES `kalevala_item_types_elements` WRITE;
/*!40000 ALTER TABLE `kalevala_item_types_elements` DISABLE KEYS */;
INSERT INTO `kalevala_item_types_elements` VALUES (1,1,7,NULL),(2,1,1,NULL),(3,6,7,NULL),(6,6,10,NULL),(7,3,7,NULL),(8,3,11,NULL),(9,3,12,NULL),(10,3,13,NULL),(11,3,14,NULL),(12,3,5,NULL),(13,5,7,NULL),(14,5,11,NULL),(15,5,15,NULL),(16,5,5,NULL),(17,4,7,NULL),(18,4,11,NULL),(19,4,15,NULL),(20,4,5,NULL),(21,4,2,NULL),(22,4,3,NULL),(23,4,4,NULL),(24,4,16,NULL),(25,9,17,NULL),(26,9,18,NULL),(27,9,20,NULL),(28,9,19,NULL),(29,9,21,NULL),(30,9,22,NULL),(31,9,23,NULL),(32,10,24,NULL),(33,10,25,NULL),(34,10,26,NULL),(35,10,11,NULL),(36,10,27,NULL),(37,7,6,NULL),(38,11,28,NULL),(39,8,29,NULL),(40,8,30,NULL),(41,8,11,NULL),(42,12,31,NULL),(43,12,32,NULL),(44,12,33,NULL),(45,12,34,NULL),(46,12,35,NULL),(47,12,36,NULL);
/*!40000 ALTER TABLE `kalevala_item_types_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_items`
--

DROP TABLE IF EXISTS `kalevala_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_type_id` int(10) unsigned DEFAULT NULL,
  `collection_id` int(10) unsigned DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 22:00:00',
  `owner_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_type_id` (`item_type_id`),
  KEY `collection_id` (`collection_id`),
  KEY `public` (`public`),
  KEY `featured` (`featured`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_items`
--

LOCK TABLES `kalevala_items` WRITE;
/*!40000 ALTER TABLE `kalevala_items` DISABLE KEYS */;
INSERT INTO `kalevala_items` VALUES (1,NULL,NULL,0,1,'2018-01-09 07:04:10','2018-01-03 04:57:38',1);
/*!40000 ALTER TABLE `kalevala_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_keys`
--

DROP TABLE IF EXISTS `kalevala_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_keys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_keys`
--

LOCK TABLES `kalevala_keys` WRITE;
/*!40000 ALTER TABLE `kalevala_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `kalevala_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_options`
--

DROP TABLE IF EXISTS `kalevala_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_options`
--

LOCK TABLES `kalevala_options` WRITE;
/*!40000 ALTER TABLE `kalevala_options` DISABLE KEYS */;
INSERT INTO `kalevala_options` VALUES (1,'omeka_version','2.5.1'),(7,'thumbnail_constraint','200'),(8,'square_thumbnail_constraint','200'),(9,'fullsize_constraint','800'),(10,'per_page_admin','20'),(11,'per_page_public','20'),(12,'show_empty_elements','0'),(14,'admin_theme','default'),(20,'display_system_info','1'),(26,'search_record_types','a:3:{s:4:\"Item\";s:4:\"Item\";s:4:\"File\";s:4:\"File\";s:10:\"Collection\";s:10:\"Collection\";}'),(27,'api_enable',''),(28,'api_per_page','50'),(29,'show_element_set_headings','1'),(30,'use_square_thumbnail','1'),(40,'public_navigation_main','[{\"uid\":\"\\/kalevala\\/items\\/browse\",\"can_delete\":false,\"label\":\"Selaa aineistoja\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/kalevala\\/items\\/browse\"},{\"uid\":\"\\/kalevala\\/collections\\/browse\",\"can_delete\":false,\"label\":\"Selaa kokoelmia\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/kalevala\\/collections\\/browse\"}]'),(41,'homepage_uri','/'),(43,'simple_pages_filter_page_content','0'),(64,'universalviewer_append_collections_show','1'),(65,'universalviewer_append_items_show','1'),(66,'universalviewer_max_dynamic_size','50000000'),(67,'universalviewer_licence','http://www.example.org/license.html'),(68,'universalviewer_attribution','Provided by Example Organization'),(69,'universalviewer_class',''),(70,'universalviewer_width','95%'),(71,'universalviewer_height','600px'),(72,'universalviewer_locale','en-GB:English (GB),fr-FR:French'),(73,'universalviewer_iiif_creator','Auto'),(88,'archive_repertory_collection_names','a:0:{}'),(99,'archive_repertory_collection_folder','id'),(100,'archive_repertory_collection_prefix',''),(101,'archive_repertory_collection_convert','full'),(102,'archive_repertory_item_folder','id'),(103,'archive_repertory_item_prefix',''),(104,'archive_repertory_item_convert','full'),(105,'archive_repertory_file_convert','keep'),(106,'archive_repertory_file_base_original_name','0'),(108,'archive_repertory_move_process','internal'),(109,'archive_repertory_download_max_free_download','30000000'),(110,'archive_repertory_legal_text','<p>I agree with terms of use.</p>'),(115,'theme_default_options','a:17:{s:10:\"text_color\";s:7:\"#444444\";s:16:\"background_color\";s:7:\"#FFFFFF\";s:10:\"link_color\";s:7:\"#888888\";s:12:\"button_color\";s:7:\"#000000\";s:17:\"button_text_color\";s:7:\"#FFFFFF\";s:18:\"header_title_color\";s:7:\"#000000\";s:4:\"logo\";N;s:17:\"header_background\";N;s:11:\"footer_text\";s:0:\"\";s:24:\"display_footer_copyright\";s:1:\"0\";s:21:\"display_featured_item\";s:1:\"0\";s:27:\"display_featured_collection\";s:1:\"0\";s:24:\"display_featured_exhibit\";s:1:\"0\";s:21:\"homepage_recent_items\";s:1:\"5\";s:13:\"homepage_text\";s:2253:\"<p><em>Kalevalan Aino</em> on kommentoitu julkaisu Uuden Kalevalan (1849) 4. runon säkeistä 1–30. Digitaalinen editio esittelee Kalevalaa niin tutkijoille kuin suuremmalle yleisölle. Julkaisu havainnollistaa Aino-runoa ja sen taustoja sekä Lönnrotin toimitusperiaatteita kansanrunoaineiston suhteen. Aino-runo (4. runon ensimmäiset 30 säettä) on toimitettu tekstikriittisesti painetun Uuden Kalevalan pohjalta, mutta lisäksi editiosta voi tarkastella käsikirjoituksen tekstimuotoja ja katsella käsikirjoitusta digitaalisina kuvina.</p>\n<p>Aino-runon sanoista on laadittu kommentaareja. Sananselitykset avaavat nykylukijalle vieraita Kalevalan sanoja. Kommentaarit sisältävät myös joitakin laajempia selityksiä sanojen tutkimushistoriasta tai käytöstä kansanrunoaineistossa.</p>\n<p>Lisäksi editiossa on esitelty Väinö Kaukosen Uuden Kalevalan säetutkimusta (1956). Säetutkimuksen analysointi avaa lukijoille sekä Kaukosen tutkimuksen periaatteita että Kalevalan säkeiden taustoja; sitä, minkälaisia tekstiaineistoja Lönnrotilla oli mahdollisesti käytössään ja minkälaisia valintoja hän teki Kalevalaa toimittaessaan. (ks. <a style=\"color:#607a9e;\" href=\"http://aino.finlit.fi/omeka/ohjeet/ohjeita\">ohjeet</a>)</p>\n<p>Kalevalasta ei ole aiemmin toimitettu tämänkaltaista työtä. Suomalaisen Kirjallisuuden Seuran Edith-yksikössä toimitetut Aleksis Kiven kriittiset editiot ovat olleet julkaisun mallina.</p>\n<p>Nyt julkaistava <em>Kalevalan Aino</em> pohjautuu Niina Hämäläisen työhön Kalevalaseurassa ja Suomalaisen Kirjallisuuden Seurassa keväällä 2016. Hämäläinen on toimittanut sananselitykset koko 4. runon sanoista sekä analysoinut runon 518 säettä Väinö Kaukosen säetutkimuksen pohjalta. <em>Kalevalan Aino</em> -julkaisussa esitetään tästä työstä näytteenä Aino-runon ensimmäiset 30 säettä ja niihin liittyvät analyysit. Lisäksi Sakari Katajamäki on tehnyt nyt julkaistavan runokatkelman tekstikriittisen toimitustyön sekä analysoinut runokäsikirjoituksen tekstikerrostumat. Maria Niku on vastannut julkaisun teknisestä toteutuksesta Omeka-julkaisualustalle. Julkaisun tarkoituksena on havainnollistaa myöhemmin toteutettavaa kriittistä editiota koko Kalevalasta.</p>\";s:17:\"item_file_gallery\";s:1:\"1\";s:19:\"use_advanced_search\";s:1:\"1\";}'),(116,'site_title','Avoin Kalevala'),(117,'description',''),(118,'administrator_email','mr.wisty@gmail.com'),(119,'copyright',''),(120,'author',''),(121,'tag_delimiter',','),(122,'path_to_convert','/usr/bin'),(123,'public_theme','kalevala'),(130,'theme_kalevala_options','a:17:{s:10:\"text_color\";s:7:\"#444444\";s:16:\"background_color\";s:7:\"#FFFFFF\";s:10:\"link_color\";s:7:\"#888888\";s:12:\"button_color\";s:7:\"#000000\";s:17:\"button_text_color\";s:7:\"#FFFFFF\";s:18:\"header_title_color\";s:7:\"#444444\";s:4:\"logo\";N;s:17:\"header_background\";N;s:11:\"footer_text\";s:0:\"\";s:24:\"display_footer_copyright\";s:1:\"0\";s:21:\"display_featured_item\";s:1:\"0\";s:27:\"display_featured_collection\";s:1:\"0\";s:24:\"display_featured_exhibit\";s:1:\"0\";s:21:\"homepage_recent_items\";s:1:\"5\";s:13:\"homepage_text\";s:2160:\"<p><em>Kalevalan Aino</em> on kommentoitu julkaisu Uuden Kalevalan (1849) 4. runon säkeistä 1–30. Digitaalinen editio esittelee Kalevalaa niin tutkijoille kuin suuremmalle yleisölle. Julkaisu havainnollistaa Aino-runoa ja sen taustoja sekä Lönnrotin toimitusperiaatteita kansanrunoaineiston suhteen. Aino-runo (4. runon ensimmäiset 30 säettä) on toimitettu tekstikriittisesti painetun Uuden Kalevalan pohjalta, mutta lisäksi editiosta voi tarkastella käsikirjoituksen tekstimuotoja ja katsella käsikirjoitusta digitaalisina kuvina.</p>\n<p>Aino-runon sanoista on laadittu kommentaareja. Sananselitykset avaavat nykylukijalle vieraita Kalevalan sanoja. Kommentaarit sisältävät myös joitakin laajempia selityksiä sanojen tutkimushistoriasta tai käytöstä kansanrunoaineistossa.</p>\n<p>Lisäksi editiossa on esitelty Väinö Kaukosen Uuden Kalevalan säetutkimusta (1956). Säetutkimuksen analysointi avaa lukijoille sekä Kaukosen tutkimuksen periaatteita että Kalevalan säkeiden taustoja; sitä, minkälaisia tekstiaineistoja Lönnrotilla oli mahdollisesti käytössään ja minkälaisia valintoja hän teki Kalevalaa toimittaessaan.</p>\n<p>Kalevalasta ei ole aiemmin toimitettu tämänkaltaista työtä. Suomalaisen Kirjallisuuden Seuran Edith-yksikössä toimitetut Aleksis Kiven kriittiset editiot ovat olleet julkaisun mallina.</p>\n<p>Nyt julkaistava <em>Kalevalan Aino</em> pohjautuu Niina Hämäläisen työhön Kalevalaseurassa ja Suomalaisen Kirjallisuuden Seurassa keväällä 2016. Hämäläinen on toimittanut sananselitykset koko 4. runon sanoista sekä analysoinut runon 518 säettä Väinö Kaukosen säetutkimuksen pohjalta. <em>Kalevalan Aino</em> -julkaisussa esitetään tästä työstä näytteenä Aino-runon ensimmäiset 30 säettä ja niihin liittyvät analyysit. Lisäksi Sakari Katajamäki on tehnyt nyt julkaistavan runokatkelman tekstikriittisen toimitustyön sekä analysoinut runokäsikirjoituksen tekstikerrostumat. Maria Niku on vastannut julkaisun teknisestä toteutuksesta Omeka-julkaisualustalle. Julkaisun tarkoituksena on havainnollistaa myöhemmin toteutettavaa kriittistä editiota koko Kalevalasta.</p>\";s:17:\"item_file_gallery\";s:1:\"1\";s:19:\"use_advanced_search\";s:1:\"1\";}'),(131,'disable_default_file_validation','0'),(132,'file_extension_whitelist','aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,m4v,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg,opus,pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt,wav,wax,webm,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip,xml'),(133,'file_mime_type_whitelist','application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-m4a,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/webm,video/x-m4v,video/x-ms-wmv,video/x-msvideo,application/xml'),(134,'recaptcha_public_key',''),(135,'recaptcha_private_key',''),(136,'html_purifier_is_enabled','1'),(137,'html_purifier_allowed_html_elements','p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),(138,'html_purifier_allowed_html_attributes','*.style,*.class,a.href,a.title,a.target,id'),(143,'archive_repertory_derivative_folders','');
/*!40000 ALTER TABLE `kalevala_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_plugins`
--

DROP TABLE IF EXISTS `kalevala_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `active_idx` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_plugins`
--

LOCK TABLES `kalevala_plugins` WRITE;
/*!40000 ALTER TABLE `kalevala_plugins` DISABLE KEYS */;
INSERT INTO `kalevala_plugins` VALUES (1,'SimplePages',1,'3.0.8'),(3,'UniversalViewer',1,'2.2.1'),(4,'ArchiveRepertory',1,'2.15.2');
/*!40000 ALTER TABLE `kalevala_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_processes`
--

DROP TABLE IF EXISTS `kalevala_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_processes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned DEFAULT NULL,
  `status` enum('starting','in progress','completed','paused','error','stopped') COLLATE utf8_unicode_ci NOT NULL,
  `args` text COLLATE utf8_unicode_ci NOT NULL,
  `started` timestamp NOT NULL DEFAULT '1999-12-31 22:00:00',
  `stopped` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `pid` (`pid`),
  KEY `started` (`started`),
  KEY `stopped` (`stopped`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_processes`
--

LOCK TABLES `kalevala_processes` WRITE;
/*!40000 ALTER TABLE `kalevala_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `kalevala_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_records_tags`
--

DROP TABLE IF EXISTS `kalevala_records_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_records_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) unsigned NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_id` int(10) unsigned NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`record_type`,`record_id`,`tag_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_records_tags`
--

LOCK TABLES `kalevala_records_tags` WRITE;
/*!40000 ALTER TABLE `kalevala_records_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `kalevala_records_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_schema_migrations`
--

DROP TABLE IF EXISTS `kalevala_schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_schema_migrations` (
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_schema_migrations`
--

LOCK TABLES `kalevala_schema_migrations` WRITE;
/*!40000 ALTER TABLE `kalevala_schema_migrations` DISABLE KEYS */;
INSERT INTO `kalevala_schema_migrations` VALUES ('20100401000000'),('20100810120000'),('20110113000000'),('20110124000001'),('20110301103900'),('20110328192100'),('20110426181300'),('20110601112200'),('20110627223000'),('20110824110000'),('20120112100000'),('20120220000000'),('20120221000000'),('20120224000000'),('20120224000001'),('20120402000000'),('20120516000000'),('20120612112000'),('20120623095000'),('20120710000000'),('20120723000000'),('20120808000000'),('20120808000001'),('20120813000000'),('20120914000000'),('20121007000000'),('20121015000000'),('20121015000001'),('20121018000001'),('20121110000000'),('20121218000000'),('20130422000000'),('20130426000000'),('20130429000000'),('20130701000000'),('20130809000000'),('20140304131700'),('20150211000000'),('20150310141100'),('20150814155100'),('20151118214800'),('20151209103299'),('20151209103300'),('20161209171900'),('20170331084000'),('20170405125800');
/*!40000 ALTER TABLE `kalevala_schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_search_texts`
--

DROP TABLE IF EXISTS `kalevala_search_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_search_texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) unsigned NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_name` (`record_type`,`record_id`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_search_texts`
--

LOCK TABLES `kalevala_search_texts` WRITE;
/*!40000 ALTER TABLE `kalevala_search_texts` DISABLE KEYS */;
INSERT INTO `kalevala_search_texts` VALUES (1,'SimplePagesPage',1,1,'Avoin Kalevala','Avoin Kalevala <div class=\"container-fluid\">\r\n<p>&nbsp;</p>\r\n</div> '),(4,'Item',1,1,'Kalevalan 3. runo','Kalevalan 3. runo '),(5,'SimplePagesPage',2,1,'Tekstit','Tekstit <div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-3\">\r\n<ul id=\"tekstit-nav\" class=\"navbar-nav\">\r\n<li id=\"esipuhe-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Kalevalan esipuhe</a></li>\r\n<li id=\"tekstit-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Tekstit</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Linkki 3</a></li>\r\n</ul>\r\n</div>\r\n<div id=\"tekstit-content\" class=\"col-9\">\r\n<p id=\"esipuhe-content\">T&auml;h&auml;n tulee Kalevalan toisen painoksen esipuhe, kuvat ja kommentteja esipuheeseen.</p>\r\n<p id=\"tekstit-list\" style=\"display: none;\">T&auml;h&auml;n tulee luettelo teksteist&auml;.</p>\r\n</div>\r\n</div>\r\n</div> '),(6,'SimplePagesPage',3,1,'Toimitustasot','Toimitustasot <div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-3\">\r\n<ul id=\"toimitus-nav\" class=\"navbar-nav\">\r\n<li id=\"geneettinen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Geneettinen toimitustaso</a></li>\r\n<li id=\"traditio-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Traditio-analyyttinen toimitustaso (SKVR)</a></li>\r\n<li id=\"kielellinen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Kielellinen toimitustaso</a></li>\r\n<li id=\"temaattinen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Temaattinen toimitustaso (L&ouml;nnrotin tekstualisaatio</a></li>\r\n<li id=\"aatehistoriallinen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Aatehistoriallinen toimitustaso</a></li>\r\n<li id=\"kaukonen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Kaukosen s&auml;etutkimus</a></li>\r\n</ul>\r\n</div>\r\n<div id=\"toimitus-content\" class=\"col-9\">\r\n<div id=\"geneettinen-content\">\r\n<p><em>Niina H&auml;m&auml;l&auml;inen</em></p>\r\n<p>Mik&auml; on Elias L&ouml;nnrotin k&auml;denj&auml;lki Kalevalassa, ent&auml; mik&auml; osa eepoksesta on aitoa kansanrunoutta? Kalevalan suhde sen l&auml;hdeaineistoon, suullisena runoutena el&auml;neeseen, kalevalamitalla laulettuun runouteen, on kiinnostanut Kalevalan lukijoita eepoksen ilmestymisest&auml; (1835) l&auml;htien (ks. Apo 2008: 360). Jo Kaarle Krohn, kansanranrunoudentutkimuksen oppituolin ensimm&auml;inen haltija, katsoi t&auml;rke&auml;ksi tutkia kansanrunon ja Kalevalan suhdetta, jotta saataisin selville L&ouml;nnrotin runojen koostamistavat (Krohn 1896: 157&minus;158). Kalevala on kansanrunoutta ja L&ouml;nnrotin tulkintaa, se sis&auml;lt&auml;&auml; sek&auml; myyttisen maailmankuvan aineksia ett&auml; 1800-luvun yhteiskunnan ajatusrakennelmia. Kalevalassa kaikuvat samanaikaisesti mennyt ja moderni aika. Yksi tapa l&auml;hesty&auml; t&auml;t&auml; Kalevalan monikerroksellisuutta on tarkastella L&ouml;nnrotin toimitustapoja; sit&auml; miten ja mill&auml; periaatteilla L&ouml;nnrot muokkasi ja valikoi runos&auml;keit&auml; kehitellen niit&auml; eteenp&auml;in eri ty&ouml;vaiheissa. Erittelen seuraavaksi muutamia keskeisi&auml; toimitusty&ouml;n piirteit&auml; <a id=\"geneettinen-more\" href=\"#\">N&auml;yt&auml; lis&auml;&auml;...</a></p>\r\n</div>\r\n<div id=\"geneettinen-content-2\">\r\n<h5>Runokielen ja esitystavan yhten&auml;ist&auml;minen</h5>\r\n<p>L&ouml;nnrotin edelt&auml;j&auml;t, kansanrunokokoelmia julkaisseet Carl Axel Gottlund ja Zacharias Topelius, katsoivat runojen arvon olevan niiden historiallisessa sis&auml;ll&ouml;ss&auml;. Molemmat pyrkiv&auml;t julkaisemaan runot sellaisenaan, vaikka stilisoivatkin niiden kieliasua. L&ouml;nnrotin toimitusty&ouml; oli monitasoisempaa. Murteellisen kieliasun yhten&auml;ist&auml;misen lis&auml;ksi L&ouml;nnrotia ohjasi sis&auml;ll&ouml;llinen yhten&auml;isyys. H&auml;n lis&auml;si uusia s&auml;keit&auml;, yhdisteli eri aihelmia, runoja ja henkil&ouml;hahmoja sek&auml; esitti samasta runosta useita versioita (ks. L&ouml;nnrotin kielellisist&auml; muutoksista kohdassa Aino-runon tekstikriittiset toimitusperiaatteet). Runon sis&auml;lt&ouml; ja poetiikka venyiv&auml;t my&ouml;s kansanrunoa runsaamman toiston ja alliteraation johdosta. (Kaukonen 1979: 34&minus;35; 1984; Apo 1995: 78.) Seikka, josta L&ouml;nnrotia my&ouml;s kritisoitiin.</p>\r\n<p>Kielellisill&auml; ja poeettisilla muutoksilla L&ouml;nnrot pyrki esitt&auml;m&auml;&auml;n kansanrunoja mahdollisimman t&auml;ydellisesti. K&auml;sitys &rsquo;aidosta&rsquo; kansanrunosta oli L&ouml;nnrotin aikaan toinen kuin nyky&auml;&auml;n. Koska asianmukaisia arkistoja ei viel&auml; ollut, ker&auml;ttiin kansanrunoja julkaisemista varten ja niiden muokkaamiseen suhtauduttiin k&auml;yt&auml;nn&ouml;llisesti. Runot pyrittiin esitt&auml;m&auml;&auml;n luettavassa muodossa. L&ouml;nnrot ker&auml;si, kirjoitti ja esitti kansanrunoja tavoitellen el&auml;v&auml;&auml; kuvaa menneisyydest&auml; kirjoitetun kielen v&auml;lityksell&auml; (Karkama 2001: 179). Jo ensimm&auml;isess&auml; kansanrunojulkaisussa, Kantele-vihkoissa (1829&minus;1831), toimitusvalintoja ohjasi parhaimman toisinnon periaate: &rdquo;N&auml;ist&auml; olen min&auml; valinnut pr&auml;nt&auml;tt&auml;v&auml;ksi sen, joka mielest&auml;ni on paras ja t&auml;ydellisin, sill&auml; jokaisellen min&auml; en ole saanut tilaa&rdquo; (<em>VT</em> 5: 166).</p>\r\n<h5>Valistuksellinen tavoite ja tekijyys</h5>\r\n<p>T&auml;ydellisen ja puhtaan runon lis&auml;ksi L&ouml;nnrotia ohjasi valistuksellinen p&auml;&auml;m&auml;&auml;r&auml; edist&auml;&auml; suomen kielen kehityst&auml; ja lis&auml;t&auml; tietoa esivanhempien ajoista (ks. Kaukonen 1979: 35). L&ouml;nnrotin toimitustapaa on t&auml;lt&auml; osin nimitetty my&ouml;s ensyklopediseksi (Hyv&ouml;nen 2008: 344). Edelleen Kantele-vihkon esipuheessa L&ouml;nnrot m&auml;&auml;rittelee tavoitteensa seuraavasti:</p>\r\n<p>-- ensiksi soisin, ett&auml; yhteinen kansa, n&auml;hty&auml;ns&auml; heid&auml;n runonsa olevan suuremmasta arvosta, kuin he itte niit&auml; ovat tottuneet pit&auml;m&auml;&auml;n, ei en&auml;&auml;n kuin t&auml;h&auml;n asti on tapahtunna, heitt&auml;isi niit&auml;, tahi vaihettaisi Ruotille murtaviin lauluin; toiseksi toivoisin niist&auml; ei ainoastansa voittoa ja etua Suomen kielelle, vaan my&ouml;skin jonkunlaista tiedonlis&auml;nt&ouml;&auml; esivanhempainme menneist&auml; ajoista,-- (<em>VT</em> 5: 165).</p>\r\n<p>L&ouml;nnrotin keruuty&ouml; ja julkaisu pyrkiv&auml;t todistamaan suomen kielen runollista arvoa ja suomalaisten menneisyytt&auml;. Taustalla oli herderil&auml;inen n&auml;kemys kansasta autenttisen kulttuurin ja luonnollisen kielen edustajana, ja kansanrunosta t&auml;m&auml;n kielen luonnollisimpana v&auml;lineen&auml; (Karkama 2001: 178&minus;181). Niin ik&auml;&auml;n romanttinen oli L&ouml;nnrotin ajatus kansanrunosta ihmisen toisena, pyh&auml;n&auml; kielen&auml; (Kantelettaren esipuhe, 1840). Erityisen&auml; kielen&auml; kansanruno oli kollektiivisesti syntynytt&auml; ja yhteisi&auml; tunteita ilmaisevaa runoutta. Kalevalaa laatiessa L&ouml;nnrot h&auml;ivytti omaa tekijyytt&auml;&auml;n asemoiden itsens&auml; runonlaulajien kaltaiseksi (Borenius ja Krohn 1895: 2&minus;3; <em>VT</em> 5: 408).</p>\r\n<h5>Sivistyneist&ouml;yleis&ouml;</h5>\r\n<p>L&ouml;nnrotin suhde suulliseen perinteeseen ja perinneyhteis&ouml;&ouml;n oli runonlaulajia v&auml;ljempi ja et&auml;isempi. Teosten vastaanotto ja tulkinta koskivat suomea heikosti taitavaa sivistyneist&ouml;&auml;, ei runoperinteen tuntijaa ja k&auml;ytt&auml;j&auml;&auml;, rahvasta. L&ouml;nnrotin tavoitteena oli yleissuomalaistaa eri alueilta tallennettuja kansanrunoja ja niiden heijastamaa todellisuutta, jotta sivistyneist&ouml; kykeni ymm&auml;rt&auml;m&auml;&auml;n runojen kielt&auml; ja merkityksi&auml;. (Honko 1987: 126.) L&ouml;nnrotin k&auml;sitys runojen julkaisemisesta oli samansuuntainen kuin h&auml;nen eurooppalaisilla edelt&auml;jill&auml;&auml;n ja aikalaisillaan. J.G. Herder, Grimmin veljekset, James MacPherson ja Thomas Percy muokkasivat runoja ja tarinoita sivistyneiden lukijoiden k&auml;sityksi&auml; vastaavaksi (Apo 2007).</p>\r\n<p>L&ouml;nnrot pyrki esitt&auml;m&auml;&auml;n kansanrunoja niin ett&auml; ne olisivat luettavissa ja ymm&auml;rrett&auml;viss&auml; yleis&ouml;lle, joka ei tuntenut kansanrunon kielt&auml; ja sen takana avautuvaa el&auml;mysmaailmaa. Yksi Kalevalaa luonnehtiva piirre on eettinen tendenssi (ks. Kaukonen 1956: 461), jonka avulla L&ouml;nnrot puhutteli lukijoitaan. Esimerkiksi Aino-runon opetus, etteiv&auml;t vanhemmat saisi naittaa tytt&auml;ri&auml;&auml;n vastoin heid&auml;n omaa tahtoaan (UK 4: 439-446), ei esiinny kansanrunoissa. Uudessa Kalevalassa L&ouml;nnrot varmisti runojen sis&auml;ll&ouml;llisen ymm&auml;rryksen laatimalla proosamuotoiset lyhennelm&auml;t kunkin runon alkuun (Apo 2008: 366).</p>\r\n<h5>Ty&ouml;n prosessuaalisuus</h5>\r\n<p>Mit&auml; enemm&auml;n keruumatkoilla saatuja runoja kertyi, sit&auml; runsaammin L&ouml;nnrot uudestaan kirjoitti, muokkasi, poisti, lis&auml;si aiemmin tehtyyn. Ero runoja laulaneisiin miehiin ja naisiin n&auml;kyi kirjallisessa ty&ouml;skentelyss&auml; ja julkaisuymp&auml;rist&ouml;ss&auml;. L&ouml;nnrotin runos&auml;keiden tuntemus oli suuri, ja kirjallisesti esitt&auml;en h&auml;n pystyi palaamaan s&auml;keisiin yh&auml; uudestaan (Kaukonen 1984: 39).</p>\r\n<p>Kalevalan ensimm&auml;isi&auml;, k&auml;sikirjoituksina s&auml;ilyneit&auml; versioita, niin kutsuttuja Alku-Kalevalaa (1833) ja Sikerm&auml;-Kalevalaa (1833), seurasi suunnitelma runoelman laajentamista varten: oli l&ouml;ydett&auml;v&auml; hyvi&auml; runonlaulajia sek&auml; saatava uusia runoaineksia (<em>VT</em> 1, kirje 43). Vanhan Kalevalan (1835) j&auml;lkeen L&ouml;nnrot teki suuret keruumatkansa (1836&minus;1837, 1838), joiden aineisto kartutti erityisesti lyyrisen runon kokoelmaa, Kanteletarta. Kalevalan toimitusty&ouml;h&ouml;n vaikuttivat my&ouml;s muut kansarunoty&ouml;t; mm. Kantelettaren merkitys Uuden Kalevalan kokonaisuudessa on ollut merkitt&auml;v&auml; (Kaukonen 1984).</p>\r\n<p>Kalevalaa ryhdyttiin tutkimaan 1980&minus;1990-luvuilla yh&auml; uudestaan muotoutuvana prosessina. Matti Kuusi (1984) ja Lauri Honko (1987, 1999) puhuivat viisikerroksisesta Kalevalasta, Kalevalan eri versioista ja L&ouml;nnrotin ty&ouml;st&auml; Kalevala-prosessina. Kuusen ja Hongon kirjoitusten pohjalta Kalevala-tutkimus koki uuden tulemisen. Viime vuosikymmenin&auml; Kalevalaa on tutkittu L&ouml;nnrotin ty&ouml;prosessin n&auml;k&ouml;kulmasta (Hyv&ouml;nen 2001; 2008; H&auml;m&auml;l&auml;inen 2012; 2013) sek&auml; tarkasteltu L&ouml;nnrotin tekijyyden problematiikkaa (Apo 2002) ja Kalevalaa moderniteetin tuottamisen v&auml;lineen&auml; (Anttonen 2004; 2005).</p>\r\n</div>\r\n<div id=\"kaukonen-content\">\r\n<p><em>Niina H&auml;m&auml;l&auml;inen</em></p>\r\n<p>Seuraavassa havainnollistetaan s&auml;etutkimuksen viitteit&auml; ja niiden taustalla olevia runotekstej&auml; sek&auml; joissakin tapauksissa osoitetaan laajemmin, mink&auml;laisia muita runotekstej&auml; L&ouml;nnrotilla oli mahdollisesti k&auml;yt&ouml;ss&auml;&auml;n.</p>\r\n<p>Kussakin kohdassa on ensin Kalevalan s&auml;e ja t&auml;m&auml;n j&auml;lkeen V&auml;in&ouml; Kaukosen s&auml;eviite kokonaisuudessaan. Kunkin s&auml;keen vieress&auml; olevaa nuolipainiketta painamalla saa esiin Niina H&auml;m&auml;l&auml;isen kommentaarin s&auml;eviitteeseen.</p>\r\n<p>AK = Alku-Kalevala. K&auml;sikirjoituksena s&auml;ilynyt toinen ensimm&auml;isist&auml; Kalevalan versioista valmistui vuonna 1833 nimell&auml; Runokokous V&auml;in&auml;m&ouml;isest&auml;. Runokokousta ennen L&ouml;nnrot oli jo saanut valmiiksi Sikerm&auml;-Kalevalan, joka sis&auml;lsi kolme teosta: Lemmink&auml;inen, V&auml;in&auml;m&ouml;inen ja Naimakansan virsi&auml;.</p>\r\n<p>VK = Vanha Kalevala. Kalevalan ensimm&auml;inen painettu versio ilmestyi 1835.</p>\r\n<p>VKL = V&auml;lilehditetty Vanha Kalevala. L&ouml;nnrot teetti itselleen v&auml;lilehdill&auml; varustetun Kalevalan l&auml;htiess&auml;&auml;n seitsem&auml;nnelle keruumatkalle vuonna 1836.</p>\r\n<p>UK = Uusi Kalevala. Vuoden 1849 Kalevala, joka on saanut Suomen kansalliseepoksen aseman.</p>\r\n<p class=\"Body\">Runoviitteet, kuten I1&nbsp;234 viittaavat<em> SKVR</em>-julkaisun I1-osan numeroon 234.</p>\r\n<p class=\"Body\">&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\">Tuopa Aino neito nuori,</span> <strong><a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></strong></p>\r\n<p>VKL 31:1&minus;2 Kapo kaunis, neito nuori, Anni tytti, aino tytti. Vrt. VII1 217,1 Kapo kaunis, neiti nuori, I1 234,1 Anni tytti, aino tytti ja l1 213,1 Aino tytti, aino nei[ti] sek&auml; esim. 22:111.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukonen antaa ensisijaiseksi viitteeksi V&auml;lilehditetyn Kalevalan (=VKL) s&auml;keet. Idean Aino-nimest&auml; L&ouml;nnrot sai vienalaisista toisinnoista, joissa sanottiin &ldquo;annan ainoan sisareni&rdquo;, adjektiivista &ldquo;ainoa&rdquo; tuli aino (Kuusi 1963: 220; Kaukonen 1987: 181). Ks. SKVR I1 234: anni sikko, aino neiti. Ks. Sananselitys Aino. VKL:n Kapo kaunis on Uudessa Kalevalassa (=UK) Tuopa Aino. Kapo tarkoittaa tytt&ouml;&auml; (KKSK), ja sopii alkusoinnullisuudenkin vuoksi yhteen kauniin kanssa. Toisaalta UK:ssa ei ole en&auml;&auml; kyse mist&auml; tahansa tyt&ouml;st&auml;, vaan Ainosta, Joukahaisen sisaresta.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Sisar nuoren Joukahaisen</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:1. Vrt. 5:126.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukonen viittaa Vanhan Kalevalan (=VK) ensimm&auml;iseen s&auml;keeseen: Sisar nuoren Joukahaisen. Ks. Kaukosen Vanhan Kalevalan s&auml;etutkimus, jossa h&auml;n viittaa Kalevalan ensimm&auml;iseen versioon, ns. Alku-Kalevalaan (Runokokous V&auml;in&auml;m&ouml;isest&auml;, 1833); RV, XV,199 \"Tuopa\" --. (Kaukonen 1945: 442.)</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">L&auml;ksi luutoa lehosta,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:3 - vastoa mets&auml;st&auml;, I1 234,2. Vrt. VII1 208,1&minus;2 Anni tytt&ouml;, kauno tytt&ouml; Taitto luutoa lehosta.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>Mallirunossa SKVR I1 234 (Hirtt&auml;ytynyt neito) s&auml;e on: \"L&auml;ksi vastoa mets&auml;st&auml;\". S&auml;e luutoa lehosta on toisesta Hirtt&auml;ytyneen neidon toisinnosta, jonka L&ouml;nnrot merkitsi muistiin kahdeksannella keruumatkallaan 1838. Runon SKVR VII1 208 loppu on eroottinen:</p>\r\n<p>Anni tytt&ouml;, kauno tytt&ouml;<br /> Taitto luutoa lehosta,<br /> Vastap&auml;&auml;t&auml; varvikosta,<br /> Verev&auml;lle veiolleen.<br /> 5 Kuin olin ennen nuori neito#1,<br /> Nuori neinn&auml; kasvavana,<br /> Niin mun keikku kellarini,<br /> Kun veikon venehen kokka,<br /> Niin mun v-ni vihotti,<br /> 10 Kun is&auml;ni nurminiittu.</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Vastaksia varvikosta;</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31 r.a. 8, IV1 83,3.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">V&auml;lilehditetyss&auml; Kalevalassa on marginaalimerkint&auml;: Vastaksia varvikosta. Runoviite SKVR IV1 83 on D.E.D. Europaeuksen tallentamasta runosta, joka sis&auml;lt&auml;&auml; runot Luutaan lehosta ja Myydyn neidon -runon. Sama s&auml;e l&ouml;ytyy my&ouml;s kolmesta muusta toisinnosta (SKVR IV1 95, 152, 329). Tallenteet ovat Europaeuksen keruumatkalta Keski-Inkerist&auml; vuosilta 1847&minus;1848. Runotekstit kertovat Valpuri-neidosta (ks. Marketta: SKVR IV1 329). T&auml;m&auml; l&auml;htee mets&auml;&auml;n hakemaan vastatarpeita, nuori mies varoittaa ker&auml;&auml;m&auml;st&auml; vastaksia, sill&auml; neito on myyty h&auml;nelle. Runotoisinnossa SKVR IV1 329 miehen kohtaaminen johtaa Marketan raskauteen, syntyy poika, josta yritet&auml;&auml;n p&auml;&auml;st&auml; eroon heitt&auml;m&auml;ll&auml; t&auml;m&auml; veteen, mutta poika pilkkaa muita. Ks. runossa on yhtym&auml;kohtia Kalervon ja Untamon runoon sek&auml; Kalevanpoikaan, joka syntyess&auml;&auml;n omaa yliluonnollisia voimia, t&auml;t&auml; yritet&auml;&auml;n tappaa tuloksetta (ks. SKVR XIII1 458, 459, 464, 472).</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Taittoi vastan taatollensa,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:5 Taitto &mdash; &mdash;, I1 234,4 &mdash; vassan taatollase&lceil;k&rceil;.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">L&ouml;nnrot seuraa Vanhan Kalevalan runoa sek&auml; vienalaista toisintoa SKVR I1 234. Muutokset Aino-runossa ovat kielellisi&auml;. L&ouml;nnrot yhdenmukaistaa murteellista kieliasua.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Toisen taittoi maammollensa,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:6 &mdash; taitto maamollensa, I1 234,5 &mdash; &mdash; maammollahek].</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen viite.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kokoeli kolmannenki</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:7 Kolmatta kohotteleksen, I1 234,6 &mdash; kokoelo[o]. Vrt. 19:249.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Vrt-viite viittaa Kalevalan 19. runon s&auml;keeseen 249: \"Niin kokko kohotteleikse\". Kyseess&auml; on Ilmarisen ansioty&ouml;t Pohjolassa, eik&auml; runolla ole varsinaista yhteytt&auml; Ainon tarinaan. Vanhassa Kalevalassa Aino kohottelee (nostelee) vastaksia, mutta Uudessa Kalevalassa sana on kokoella eli ker&auml;ill&auml; kansanrunoviitteen mukaisesti.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Verev&auml;lle veiollensa.</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:50, VII1 208,4 &mdash; veiolleen.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">V&auml;lilehditetyss&auml; Kalevalassa s&auml;e on &ldquo;Verev&auml;lle [veiollensa]\", Uudessa Kalevassa vain j-kirjain veio-sanassa erottaa n&auml;m&auml; kaksi versiota. L&ouml;nnrotin tallentamassa runotekstiss&auml; my&ouml;s verev&auml;lle veiolleen (SKVR VII1 208). V&auml;lilehdille on merkattu toisintos&auml;e: &ldquo;Vanhimmalle [veiollensa]\". Ks. VK:ssa verev&auml;n tilalla on nuori: &ldquo;nuorimmalle veiollensa\" (VK 31: 8) Vienalaisissa toisinnoissa s&auml;e kuuluu: &ldquo;Nuorimmalle veiolle\" (SKVR I1 233, 234). Vrt. Vanhan Kalevalan toisinnot (my&ouml;s VLK), jossa lis&auml;s&auml;e: &ldquo;Perehen parahimmalle\" (ks. SKVR I1 233). S&auml;e ei esiinny Aino-runon versioissa.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Jo astui kohin kotia,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:53 Jo kohen kotia kulki, II 27,28 &mdash; kohti &mdash; meni.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">S&auml;e ei esiinny Hirtt&auml;ytyneen neidon runotallenteissa. Kaukonen viittaa Kilpalaulanta-runoon SKVR II 27, jossa s&auml;e: &ldquo;Jo kohti kotia meni\". Runossa Joukamo l&auml;htee kohti kotia h&auml;vitty&auml;&auml;n V&auml;in&auml;m&ouml;iselle. Aino-runossa s&auml;e on L&ouml;nnrotin kerronnallinen ratkaisu. Ensin kuvataan Aino ker&auml;&auml;m&auml;ss&auml; vastatarpeita, sitten t&auml;m&auml;n l&auml;hteneen kotia kohti ja tavanneen V&auml;in&auml;m&ouml;isen.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\"> Lepikk&ouml;&auml; leuhautti,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:55, I1 222,4.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">V&auml;lilehditetyss&auml; Kalevassa sek&auml; L&ouml;nnrotin tallenteessa vuodelta 1837 tyt&ouml;n l&auml;ht&ouml; kotiin kuvataan kahdella s&auml;keell&auml;: &ldquo;Astuvi ahosta l&auml;pi, / Lepikk&ouml;&auml; leuhautti\" (SKVR I1 222) (VLK: \"Astuvi l&auml;pi ahosta\"). Kansanrunon ensimm&auml;inen s&auml;e &ldquo;Astuvi ahosta l&auml;pi\" on kuitenkin pudotettu pois UK:n runosta.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Tuli vanha W&auml;in&auml;m&ouml;inen,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:9. Vrt. 17:67.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Yksi keskeinen muutos kansanrunotoisintojen ja L&ouml;nnrotin Aino-runon v&auml;lill&auml;: Kalevalassa Aino kohtaa V&auml;in&auml;m&ouml;isen, runotoisinnoissa kosija on Osmoinen. Ks. kuitenkin my&ouml;hemmin Aino kertoo &auml;idilleen kosijasta: \"Osmoinen orosta virkkoi, Kalevainen kaskesmaalta:\" (UK 4: 93&minus;94).</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">N&auml;ki neitosen lehossa,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. V1 215,9 *L&ouml;ys neitos[en] lehost* ja VII2 2012,1 L&ouml;ysin neitosen lehosta.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>Kaukonen ei anna suoraa kansanrunoviitett&auml;. Kuitenkin skvr-tietokannasta www.skvr.fi l&ouml;ytyy useita runotoisintoja, jotka sis&auml;lt&auml;v&auml;t saman s&auml;keen, ja jotka on tallennettu ennen Uuden Kalevalan ilmestymist&auml; eli ovat olleet L&ouml;nnrotilla k&auml;yt&ouml;ss&auml; Kalevalan uuden version toimitusty&ouml;ss&auml;. Runot liittyv&auml;t Hirtt&auml;ytyneen neidon kosintatematiikkaan (ks. Varkaalle menij&auml;, Konnusta kosinta, L&ouml;ysin neitosen lehosta). Neito tai kosija menee mets&auml;&auml;n, kosija l&ouml;yt&auml;&auml; neitosen lehosta, hienohelman heinikosta (SKVR V1 215, 1019, 1020; VII2 1287, 1288, 2012; XIII1 1324-1327, 1330; Vrt. XIII1 787 Marketan runo; ks. my&ouml;s Gottlundin <em>Pieni&auml; Runoja</em> I, 1818.) Ks. L&ouml;nnrotin muistiinpano SKVR XIII1 1330 vuodelta 1837:</p>\r\n<p>Etsin neitt&auml; vellolleni,<br /> Kumppalia kullalleni.<br /> L&ouml;ysin neitosen lehosta,<br /> Hienohelman heinik&ouml;st&auml;.<br /> --<br /> Vrt. verbi \'n&auml;hd&auml;\' Kalevalassa ja \'l&ouml;yt&auml;&auml;\' kansanrunoissa.</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Hienohelmen heinik&ouml;ss&auml;,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Esim. VII2 2012,3 Hienohelman &mdash;. Vrt. 25:168 ja V1 215,10 *Hienohelman heinikost*.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen viite ja selitys.<br /> S&auml;eviite on Z. Sireliuksen tallenteesta Impilahdelta vuodelta 1847. Kyseess&auml; on lyyrinen huoliruno, joka alkaa laulajamin&auml;n ja neidon kohtaamisen kuvauksella. Runo jatkuu neidon huolten kuvauksella. (SKVR VII2 2012.)</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Sanan virkkoi, noin nimesi:</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:10 &mdash; virkko &mdash; &mdash;. Yl.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">S&auml;e on yleisesti k&auml;yt&ouml;ss&auml; eeppisiss&auml; runoissa kertomassa suorasta lainauksesta. Lyhenne yl. tarkoittaa yleist&auml; s&auml;ett&auml;, jolle Kaukonen ei osoita erillist&auml; s&auml;eviitett&auml;.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">\"El&auml;p&auml; muille neiti nuori</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:73 Elek&auml; &mdash; &mdash; &mdash;, VII1 212,26 El&auml;p&auml; &mdash; kaunis Kaisa. Vrt. s. 1.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukonen viittaa Kalevalan V&auml;lilehdille. Vanhassa Kalevalassa ei ole V&auml;in&auml;m&ouml;isen kieltoa, vaan t&auml;m&auml; kehoittaa tytt&ouml;&auml; mielistym&auml;&auml;n vain h&auml;neen (VK 31:11&minus;16). Kansanrunoviite SKVR VII1 212 on L&ouml;nnrotin vuodelta 1838. Pitk&auml; runo sis&auml;lt&auml;&auml; mm. Hirtt&auml;ytyneen neidon runoa, p&auml;&auml;henkil&ouml;n&auml; Katri, joka kohtaa Riio-nimisen kosijan. Usein Hirtt&auml;ytyneen neidon runossa kosija kehoittaa neitoa ajattelemaan t&auml;t&auml; ja / tai kielt&auml;&auml; mielistym&auml;st&auml; muihin: \"kasva neiti miussa mielin, / el&auml; muissa nuorisoissa\" (SKVR I1 234, ks. my&ouml;s I1 233; ks. I1 208, 222). Ks. my&ouml;s Katrin ja Riion poika: VII1 210, 215. Vrt.-viite: Kaukonen viittaa Aino-runon ensimm&auml;iseen s&auml;keeseen &ldquo;Tuopa Aino neito nuori\".</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kun minulle neiti nuori</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:74 Kun &mdash; &mdash; &mdash; , VII1 212,29 Kaisa kaunis. Vrt. ss. 1 ja 15.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen viite ja selitys. Vrt.-viitteet ovat Aino-runon s&auml;keit&auml;, joissa toistuvat neito / neiti nuori.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kanna kaulan helmil&ouml;it&auml;,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:77 Kanna\' kaulan helmil&ouml;it&auml;. Vrt. s. 313, 14:134, 25:640 ja 29:167.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>Ks. edell&auml;.<br /> Hirtt&auml;ytyneen neidon runo: neidon kertoessa kotona tapahtuneesta, k&auml;y ilmi, ett&auml; t&auml;ll&auml; on ollut korut kaulassa vastantaittomatkalla:</p>\r\n<p>Kirpo risti rinnalt[ani],<br /> Kirpo sorm[us] sorm[estani],<br /> *Kauniseni vy&ouml;ni p&auml;&auml;st&auml;,*<br /> 25 Simpsukais[et] silm[ilt&auml;ni],<br /> Kulta ripsut#3 kulmilt[ani].\"<br /> (SKVR I1 233)<br /> Ks. my&ouml;s I1 208, 221, 234; II 47.</p>\r\n<p>L&ouml;nnrotin oma tulkinta lienee se, ett&auml; Kalevalassa juuri V&auml;in&auml;m&ouml;inen kehoittaa Ainoa olemaan koristautumatta muille.</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Rinnan risti&auml; rakenna,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:78 Rinnan risti&auml; rakenna\'. Vrt. s. 47 ja 18:235.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edelliset selitykset.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Pane p&auml;&auml;t&auml; palmikolle,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:75, VII1 212,27</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edell&auml;.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Sio silkill&auml; hivusta!\"</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31 r.a. 76, VII1 212,28</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edell&auml;.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Neiti tuon sanoiksi virkki:</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:62 (Katri varsin vastaeli), VII1 210,11. VKL 31 r.a. 62 Neiti [varsin vastaeli].</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Yleisesti k&auml;yt&ouml;ss&auml; oleva s&auml;e eri runoissa. Kaukonen olisi voinut merkata t&auml;m&auml;n yleiseksi s&auml;keeksi.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">\"En sinulle, enk&auml; muille</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31 r.a. 631/2 En sinussa enk&auml; muissa, II 47,11 Enk&auml; si[ussa], &mdash; muiss[a].</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. V&auml;lilehditetyn Kalevalan merkinn&auml;t on tehty 1840-luvun loppupuolella, jolloin L&ouml;nnrot ty&ouml;skenteli Uuden Kalevalan version kanssa. Siit&auml; my&ouml;s Kaukosen viite Europaeuksen tallentamaan runnon vuodelta 1845 (SKVR II 47).</p>\r\n<p><span style=\"text-decoration: underline;\">Kanna rinnan ristil&ouml;it&auml;,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. ss. 17&minus;18.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukonen viittaa aikaisempiin Kalevalan runon s&auml;keisiin: &ldquo;Kanna kaulan helmil&ouml;it&auml;, / Rinnan risti&auml; rakenna\".</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">P&auml;&auml;t&auml; silkill&auml; sitaise,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. s. 20.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Huoli en haahen haljakoista,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:83 Ole\' haahen haljakoissa, I1 234,80 *Ole &mdash; &mdash; *.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kansanrunoviitteess&auml; (SKVR I1 234) s&auml;e esiintyy Ainon kertoessa &auml;idilleen todellisen syyn itkuunsa. Haahti tarkoittaa laivaa, haljakka verkakangasta, hienoa vaatetta (ks. sananselitys: haahen haljakoista). S&auml;e ei esiinny yleisesti runoissa. Muutamassa vienalaisessa h&auml;&auml;virress&auml; morsian saapuu veneell&auml;, jossa &ldquo;Puoli on punaista purtta, / Toinen haahen haljakkoa\" (SKVR I3 1713; 1710).</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Wehn&auml;n viploista valita,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. I1 217,4 Veny vehn&auml; viiploisilla.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>Kaukosen viitemerkint&auml; on L&ouml;nnrotin lyhyest&auml; Hirtt&auml;ytyneen neidon runotekstist&auml;, joka sis&auml;lt&auml;&auml; vain muutamia irrallisia s&auml;keit&auml; runosta:</p>\r\n<p>Anni tytt&ouml;, aini neiti<br /> L&auml;ksi vassan taitantan.<br /> 3:tta korotteleksen.<br /> \"Veny vehn&auml; viiploisilla.\"<br /> 5 Sano em&auml;:<br /> \"Anni t[ytti], ain[i] t[ytti],<br /> Mene aittah m&auml;ell&auml;,<br /> Avaos parahin arkku,<br /> Kirjakansi kimmahuta.<br /> (SKVR I1&nbsp;217)</p>\r\n<p>Ks. L&ouml;nnrotin tallentama toinen runoteksti sis&auml;lt&auml;&auml; tarkemman s&auml;eyhteyden:<br /> --<br /> Osmotar orosta [nousi],<br /> 45 Kalevat[ar] [kaskesmaasta]:<br /> \"Kasva neiti [miussa mielin],<br /> Kasva leiv[&auml;n] kan[nikoilla],<br /> Veny vehn&auml; vipl[oisilla].\"<br /> (SKVR I1 208)</p>\r\n<p>Ks. my&ouml;s I1 234: Veny leiv&auml;n viploisilla!</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Asun kaioissa sovissa,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. II 47,7 K[asva] kaioissa sovi[ssa].</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. Aino-runon perustana olevissa vienalaisissa Hirtt&auml;ytyneen neidon teksteiss&auml;: &ldquo;Kasva kaioissa somissa\" (SKVR I1 234; 233, 208). Vrt. Meren kosijat: &ldquo;Neitonen norolla kasvo, / kasvo kaloissa somissa, / veny verkavaattehissa\" --- &ldquo;Kasvoin [kaioissa somissa], / Venyin [verka vaattehissa]\" (L&ouml;nnrot 1834, SKVR I2 1139; my&ouml;s I1 erill. Aino 1.) Viel&auml; Vanhassa Kalevalassa s&auml;e on: kaioissa somissa. T&auml;m&auml; johtunee siit&auml;, ett&auml; L&ouml;nnrot sai Europaeuksen runotekstin SKVR II 47 vasta vuonna 1845.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kasvan leiv&auml;n kannikoissa</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:65 &mdash; leip&auml;kannikoissa, VII1 210,14.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukosen antama kansanrunoviite on Katrin ja Riion pojan runosta: &ldquo;Kasvan leip&auml;kannikoissa\". F. Pol&eacute;nin tallentama, huomattavasti laajempi toisinto sis&auml;lt&auml;&auml; tarkemman vastaavuuden Kalevalan s&auml;keeseen: &ldquo;Kasva leiv&auml;n kannikoissa\" (SKVR VII1 215). Ero on puhujassa. Kalevalassa &auml;&auml;ness&auml; on Aino, kansanrunossa Riion poika. Vastaavasti vienalaiset runot (SKVR I1 208, 234) sis&auml;lt&auml;v&auml;t samaisen s&auml;keen, joka toistuu sek&auml; Osmoisen ett&auml; Anni-tyt&ouml;n kertomana.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Tyk&ouml;n&auml; hyv&auml;n isoni,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:67. Vrt. 36:60.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>S&auml;e ei esiinny Hirtt&auml;ytyneen neidon tallenteissa. S&auml;e l&ouml;ytyy mm. L&ouml;nnrotin tallentamasta Mataleenan runosta, jota laulettiin Ritvalan Helkajuhlassa:</p>\r\n<p>Matalena neito nuori<br /> Kauan ſe kotona kasvo<br /> Kauan kasvo, kauas kuulu<br /> Tyk&ouml;n&auml; hyv&auml;n iſ&auml;nſ&auml;<br /> 5 Kansſa armaan emonſa<br /> ---<br /> (SKVR IX1 89; ks. my&ouml;s SKVR IX1 77, 81, 85, 89, 93, 96)</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kanssa armahan emoni.\"</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:68. Vrt. 3:487.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen viite: Mataleenan runo.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div> '),(7,'SimplePagesPage',4,1,'Julkaisut','Julkaisut  '),(8,'SimplePagesPage',5,1,'Linkit','Linkit <div class=\"container-fluid\">\r\n<p><a style=\"color: #607a9e;\" href=\"http://neba.finlit.fi/tietopalvelu/elias/index.htm\">Tietopaketti Elias L&ouml;nnrotista</a></p>\r\n<p><a style=\"color: #607a9e;\" href=\"http://www.kalevalaseura.fi/kaku/index.php\">Kalevalaseuran sivuilla</a> on koosteita Kalevalan kulttuurihistorian (2008) artikkeleista.</p>\r\n<p>Tietoa Kalevalan ja kansanrunoudentutkimuksen syntyyn liittyv&auml;st&auml; historiasta: Anttonen, Pertti 2005: <a style=\"color: #607a9e;\" href=\"http://www.oapen.org/search?keyword=Tradition+Through+Modernity\"><em>Tradition Through Modernity. Postmodernism and the Nation-State in Folklore Scholarship</em></a>. (Studia Fennica Folkloristica.) Helsinki: Finnish Literature Society.</p>\r\n</div> ');
/*!40000 ALTER TABLE `kalevala_search_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_sessions`
--

DROP TABLE IF EXISTS `kalevala_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `modified` bigint(20) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_sessions`
--

LOCK TABLES `kalevala_sessions` WRITE;
/*!40000 ALTER TABLE `kalevala_sessions` DISABLE KEYS */;
INSERT INTO `kalevala_sessions` VALUES ('0s3gljb77b2ffb8gd90cfejh74',1514878207,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"80ceeafe2590b72f8cec732d6b4d352b\";}'),('1040f8m5thc7rd4d84n754kud2',1515139626,1209600,''),('2m6gfdbhjdtm2hc6d2gue9to67',1511872921,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}__ZF|a:5:{s:41:\"Zend_Form_Element_Hash_salt_security_csrf\";a:2:{s:4:\"ENNH\";i:1;s:3:\"ENT\";i:1511876123;}s:41:\"Zend_Form_Element_Hash_salt_settings_csrf\";a:2:{s:4:\"ENNH\";i:1;s:3:\"ENT\";i:1511876151;}s:45:\"Zend_Form_Element_Hash_salt_theme_config_csrf\";a:2:{s:4:\"ENNH\";i:1;s:3:\"ENT\";i:1511876197;}s:43:\"Zend_Form_Element_Hash_salt_navigation_csrf\";a:2:{s:4:\"ENNH\";i:1;s:3:\"ENT\";i:1511876224;}s:14:\"FlashMessenger\";a:1:{s:4:\"ENNH\";i:1;}}Zend_Form_Element_Hash_salt_security_csrf|a:1:{s:4:\"hash\";s:32:\"5b56ab10e16a6679cd21204ff5f763f9\";}Zend_Form_Element_Hash_salt_settings_csrf|a:1:{s:4:\"hash\";s:32:\"9a84f3ce9c1eda5c76691aadaf7c5dee\";}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"a2d6d3b251cd858671295171b273a0f6\";}Zend_Form_Element_Hash_salt_theme_config_csrf|a:1:{s:4:\"hash\";s:32:\"18004ac8561f9b03a07e8ca2726faa8b\";}Zend_Form_Element_Hash_salt_navigation_csrf|a:1:{s:4:\"hash\";s:32:\"e38dabeaad8368a742e3251988bc6cfa\";}'),('36cek1gl9nv72q8sjcinedqt80',1512035487,1209600,''),('439qgubatbohvsludmvl5vrl57',1516022158,1209600,'Default|a:1:{s:8:\"redirect\";s:29:\"/simple-pages/index/edit/id/3\";}'),('7orv12idpt1m1d403bfef8e5o3',1512035250,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"70e6db09587519d60ef4041ad729ebd8\";}__ZF|a:1:{s:45:\"Zend_Form_Element_Hash_salt_theme_config_csrf\";a:2:{s:4:\"ENNH\";i:1;s:3:\"ENT\";i:1512035287;}}Zend_Form_Element_Hash_salt_theme_config_csrf|a:1:{s:4:\"hash\";s:32:\"4592f8f66851211e82727b2d16f5a553\";}'),('8d8riu8tfcgrrnkvf9ktc3fsd0',1516022782,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"ca2febc066264b292c4b5f45e10ba691\";}'),('dappovu64p258oc5ivhh140ij5',1515505198,1209600,'Default|a:1:{s:8:\"redirect\";s:29:\"/simple-pages/index/edit/id/3\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"fa92909dde7feff2645260114023a2e8\";}'),('empe298r0hff2ko3e2ftgm85j6',1512024800,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}'),('h8g2q4lk0ku3qdp8poerj2png0',1512025947,1209600,''),('i7gblqro4911rvaepaqj9ijp35',1514980331,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"154a1bd8263abce15851d6fcaddaee66\";}'),('k9dbmg1skdpscrs56ekqa9ckp5',1515496009,1209600,''),('l8ut77qlproi6k0d6mqu00uu85',1512031629,1209600,''),('na5omls6c6m5h329h9nti0nt43',1515481105,1209600,''),('nih73buicho5sm7daf15v5v1c0',1515139243,1209600,''),('o52n3505040ibssdolduihetm6',1516022163,1209600,''),('o58htogolsfojdae727lokr493',1512024836,1209600,''),('pn24bb39cj1i6grrhh8l016lc0',1512037975,1209600,''),('r4090o8lhpr94oseefqb32k6p7',1512037000,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"9b36431b86db760ff45020091880e7c6\";}__ZF|a:2:{s:45:\"Zend_Form_Element_Hash_salt_theme_config_csrf\";a:2:{s:4:\"ENNH\";i:1;s:3:\"ENT\";i:1512039960;}s:41:\"Zend_Form_Element_Hash_salt_settings_csrf\";a:2:{s:4:\"ENNH\";i:1;s:3:\"ENT\";i:1512040581;}}Zend_Form_Element_Hash_salt_theme_config_csrf|a:1:{s:4:\"hash\";s:32:\"437120bf9a1ad95178345d79f138da3a\";}Zend_Form_Element_Hash_salt_settings_csrf|a:1:{s:4:\"hash\";s:32:\"23cbd24d637f5053b8e1a31eba16055c\";}'),('rkchk3nu2lscruek88dc9d3ut1',1515492025,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"59bd57e2236c3d833570f6998ebc226b\";}'),('s5qejrv50cngjac6qem4sm3bb6',1514890876,1209600,''),('u6n24r4ghs2g7aa0bac8cunm60',1515504680,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"5ca6093e32415175c1563351755426c4\";}'),('uad545n6s1ed0ce6sutd8pkbp0',1512035266,1209600,''),('ueb68cr4o4omonf04h564caug1',1512026243,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}'),('vukk32h0r6hbhlfp796j089ua5',1514983172,1209600,'Default|a:1:{s:8:\"redirect\";s:1:\"/\";}Zend_Auth|a:1:{s:7:\"storage\";i:1;}OmekaSessionCsrfToken|a:1:{s:5:\"token\";s:32:\"eff3a167af1817e9cae68166726ed58c\";}');
/*!40000 ALTER TABLE `kalevala_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_simple_pages_pages`
--

DROP TABLE IF EXISTS `kalevala_simple_pages_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_simple_pages_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modified_by_user_id` int(10) unsigned NOT NULL,
  `created_by_user_id` int(10) unsigned NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted` timestamp NOT NULL DEFAULT '1999-12-31 22:00:00',
  `order` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `template` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `use_tiny_mce` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_published` (`is_published`),
  KEY `inserted` (`inserted`),
  KEY `updated` (`updated`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `modified_by_user_id` (`modified_by_user_id`),
  KEY `order` (`order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_simple_pages_pages`
--

LOCK TABLES `kalevala_simple_pages_pages` WRITE;
/*!40000 ALTER TABLE `kalevala_simple_pages_pages` DISABLE KEYS */;
INSERT INTO `kalevala_simple_pages_pages` VALUES (1,1,1,1,'Avoin Kalevala','esittely','<div class=\"container-fluid\">\r\n<p>&nbsp;</p>\r\n</div>','2018-01-03 09:12:45','2017-11-28 10:38:39',0,0,'',1),(2,1,1,1,'Tekstit','tekstit','<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-3\">\r\n<ul id=\"tekstit-nav\" class=\"navbar-nav\">\r\n<li id=\"esipuhe-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Kalevalan esipuhe</a></li>\r\n<li id=\"tekstit-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Tekstit</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Linkki 3</a></li>\r\n</ul>\r\n</div>\r\n<div id=\"tekstit-content\" class=\"col-9\">\r\n<p id=\"esipuhe-content\">T&auml;h&auml;n tulee Kalevalan toisen painoksen esipuhe, kuvat ja kommentteja esipuheeseen.</p>\r\n<p id=\"tekstit-list\" style=\"display: none;\">T&auml;h&auml;n tulee luettelo teksteist&auml;.</p>\r\n</div>\r\n</div>\r\n</div>','2018-01-03 07:42:27','2018-01-03 06:27:56',0,0,'',1),(3,1,1,1,'Toimitustasot','toimitustasot','<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-3\">\r\n<ul id=\"toimitus-nav\" class=\"navbar-nav\">\r\n<li id=\"geneettinen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Geneettinen toimitustaso</a></li>\r\n<li id=\"traditio-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Traditio-analyyttinen toimitustaso (SKVR)</a></li>\r\n<li id=\"kielellinen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Kielellinen toimitustaso</a></li>\r\n<li id=\"temaattinen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Temaattinen toimitustaso (L&ouml;nnrotin tekstualisaatio</a></li>\r\n<li id=\"aatehistoriallinen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Aatehistoriallinen toimitustaso</a></li>\r\n<li id=\"kaukonen-link\" class=\"nav-item\"><a class=\"nav-link\" href=\"#\">Kaukosen s&auml;etutkimus</a></li>\r\n</ul>\r\n</div>\r\n<div id=\"toimitus-content\" class=\"col-9\">\r\n<div id=\"geneettinen-content\">\r\n<p><em>Niina H&auml;m&auml;l&auml;inen</em></p>\r\n<p>Mik&auml; on Elias L&ouml;nnrotin k&auml;denj&auml;lki Kalevalassa, ent&auml; mik&auml; osa eepoksesta on aitoa kansanrunoutta? Kalevalan suhde sen l&auml;hdeaineistoon, suullisena runoutena el&auml;neeseen, kalevalamitalla laulettuun runouteen, on kiinnostanut Kalevalan lukijoita eepoksen ilmestymisest&auml; (1835) l&auml;htien (ks. Apo 2008: 360). Jo Kaarle Krohn, kansanranrunoudentutkimuksen oppituolin ensimm&auml;inen haltija, katsoi t&auml;rke&auml;ksi tutkia kansanrunon ja Kalevalan suhdetta, jotta saataisin selville L&ouml;nnrotin runojen koostamistavat (Krohn 1896: 157&minus;158). Kalevala on kansanrunoutta ja L&ouml;nnrotin tulkintaa, se sis&auml;lt&auml;&auml; sek&auml; myyttisen maailmankuvan aineksia ett&auml; 1800-luvun yhteiskunnan ajatusrakennelmia. Kalevalassa kaikuvat samanaikaisesti mennyt ja moderni aika. Yksi tapa l&auml;hesty&auml; t&auml;t&auml; Kalevalan monikerroksellisuutta on tarkastella L&ouml;nnrotin toimitustapoja; sit&auml; miten ja mill&auml; periaatteilla L&ouml;nnrot muokkasi ja valikoi runos&auml;keit&auml; kehitellen niit&auml; eteenp&auml;in eri ty&ouml;vaiheissa. Erittelen seuraavaksi muutamia keskeisi&auml; toimitusty&ouml;n piirteit&auml; <a id=\"geneettinen-more\" href=\"#\">N&auml;yt&auml; lis&auml;&auml;...</a></p>\r\n</div>\r\n<div id=\"geneettinen-content-2\">\r\n<h5>Runokielen ja esitystavan yhten&auml;ist&auml;minen</h5>\r\n<p>L&ouml;nnrotin edelt&auml;j&auml;t, kansanrunokokoelmia julkaisseet Carl Axel Gottlund ja Zacharias Topelius, katsoivat runojen arvon olevan niiden historiallisessa sis&auml;ll&ouml;ss&auml;. Molemmat pyrkiv&auml;t julkaisemaan runot sellaisenaan, vaikka stilisoivatkin niiden kieliasua. L&ouml;nnrotin toimitusty&ouml; oli monitasoisempaa. Murteellisen kieliasun yhten&auml;ist&auml;misen lis&auml;ksi L&ouml;nnrotia ohjasi sis&auml;ll&ouml;llinen yhten&auml;isyys. H&auml;n lis&auml;si uusia s&auml;keit&auml;, yhdisteli eri aihelmia, runoja ja henkil&ouml;hahmoja sek&auml; esitti samasta runosta useita versioita (ks. L&ouml;nnrotin kielellisist&auml; muutoksista kohdassa Aino-runon tekstikriittiset toimitusperiaatteet). Runon sis&auml;lt&ouml; ja poetiikka venyiv&auml;t my&ouml;s kansanrunoa runsaamman toiston ja alliteraation johdosta. (Kaukonen 1979: 34&minus;35; 1984; Apo 1995: 78.) Seikka, josta L&ouml;nnrotia my&ouml;s kritisoitiin.</p>\r\n<p>Kielellisill&auml; ja poeettisilla muutoksilla L&ouml;nnrot pyrki esitt&auml;m&auml;&auml;n kansanrunoja mahdollisimman t&auml;ydellisesti. K&auml;sitys &rsquo;aidosta&rsquo; kansanrunosta oli L&ouml;nnrotin aikaan toinen kuin nyky&auml;&auml;n. Koska asianmukaisia arkistoja ei viel&auml; ollut, ker&auml;ttiin kansanrunoja julkaisemista varten ja niiden muokkaamiseen suhtauduttiin k&auml;yt&auml;nn&ouml;llisesti. Runot pyrittiin esitt&auml;m&auml;&auml;n luettavassa muodossa. L&ouml;nnrot ker&auml;si, kirjoitti ja esitti kansanrunoja tavoitellen el&auml;v&auml;&auml; kuvaa menneisyydest&auml; kirjoitetun kielen v&auml;lityksell&auml; (Karkama 2001: 179). Jo ensimm&auml;isess&auml; kansanrunojulkaisussa, Kantele-vihkoissa (1829&minus;1831), toimitusvalintoja ohjasi parhaimman toisinnon periaate: &rdquo;N&auml;ist&auml; olen min&auml; valinnut pr&auml;nt&auml;tt&auml;v&auml;ksi sen, joka mielest&auml;ni on paras ja t&auml;ydellisin, sill&auml; jokaisellen min&auml; en ole saanut tilaa&rdquo; (<em>VT</em> 5: 166).</p>\r\n<h5>Valistuksellinen tavoite ja tekijyys</h5>\r\n<p>T&auml;ydellisen ja puhtaan runon lis&auml;ksi L&ouml;nnrotia ohjasi valistuksellinen p&auml;&auml;m&auml;&auml;r&auml; edist&auml;&auml; suomen kielen kehityst&auml; ja lis&auml;t&auml; tietoa esivanhempien ajoista (ks. Kaukonen 1979: 35). L&ouml;nnrotin toimitustapaa on t&auml;lt&auml; osin nimitetty my&ouml;s ensyklopediseksi (Hyv&ouml;nen 2008: 344). Edelleen Kantele-vihkon esipuheessa L&ouml;nnrot m&auml;&auml;rittelee tavoitteensa seuraavasti:</p>\r\n<p>-- ensiksi soisin, ett&auml; yhteinen kansa, n&auml;hty&auml;ns&auml; heid&auml;n runonsa olevan suuremmasta arvosta, kuin he itte niit&auml; ovat tottuneet pit&auml;m&auml;&auml;n, ei en&auml;&auml;n kuin t&auml;h&auml;n asti on tapahtunna, heitt&auml;isi niit&auml;, tahi vaihettaisi Ruotille murtaviin lauluin; toiseksi toivoisin niist&auml; ei ainoastansa voittoa ja etua Suomen kielelle, vaan my&ouml;skin jonkunlaista tiedonlis&auml;nt&ouml;&auml; esivanhempainme menneist&auml; ajoista,-- (<em>VT</em> 5: 165).</p>\r\n<p>L&ouml;nnrotin keruuty&ouml; ja julkaisu pyrkiv&auml;t todistamaan suomen kielen runollista arvoa ja suomalaisten menneisyytt&auml;. Taustalla oli herderil&auml;inen n&auml;kemys kansasta autenttisen kulttuurin ja luonnollisen kielen edustajana, ja kansanrunosta t&auml;m&auml;n kielen luonnollisimpana v&auml;lineen&auml; (Karkama 2001: 178&minus;181). Niin ik&auml;&auml;n romanttinen oli L&ouml;nnrotin ajatus kansanrunosta ihmisen toisena, pyh&auml;n&auml; kielen&auml; (Kantelettaren esipuhe, 1840). Erityisen&auml; kielen&auml; kansanruno oli kollektiivisesti syntynytt&auml; ja yhteisi&auml; tunteita ilmaisevaa runoutta. Kalevalaa laatiessa L&ouml;nnrot h&auml;ivytti omaa tekijyytt&auml;&auml;n asemoiden itsens&auml; runonlaulajien kaltaiseksi (Borenius ja Krohn 1895: 2&minus;3; <em>VT</em> 5: 408).</p>\r\n<h5>Sivistyneist&ouml;yleis&ouml;</h5>\r\n<p>L&ouml;nnrotin suhde suulliseen perinteeseen ja perinneyhteis&ouml;&ouml;n oli runonlaulajia v&auml;ljempi ja et&auml;isempi. Teosten vastaanotto ja tulkinta koskivat suomea heikosti taitavaa sivistyneist&ouml;&auml;, ei runoperinteen tuntijaa ja k&auml;ytt&auml;j&auml;&auml;, rahvasta. L&ouml;nnrotin tavoitteena oli yleissuomalaistaa eri alueilta tallennettuja kansanrunoja ja niiden heijastamaa todellisuutta, jotta sivistyneist&ouml; kykeni ymm&auml;rt&auml;m&auml;&auml;n runojen kielt&auml; ja merkityksi&auml;. (Honko 1987: 126.) L&ouml;nnrotin k&auml;sitys runojen julkaisemisesta oli samansuuntainen kuin h&auml;nen eurooppalaisilla edelt&auml;jill&auml;&auml;n ja aikalaisillaan. J.G. Herder, Grimmin veljekset, James MacPherson ja Thomas Percy muokkasivat runoja ja tarinoita sivistyneiden lukijoiden k&auml;sityksi&auml; vastaavaksi (Apo 2007).</p>\r\n<p>L&ouml;nnrot pyrki esitt&auml;m&auml;&auml;n kansanrunoja niin ett&auml; ne olisivat luettavissa ja ymm&auml;rrett&auml;viss&auml; yleis&ouml;lle, joka ei tuntenut kansanrunon kielt&auml; ja sen takana avautuvaa el&auml;mysmaailmaa. Yksi Kalevalaa luonnehtiva piirre on eettinen tendenssi (ks. Kaukonen 1956: 461), jonka avulla L&ouml;nnrot puhutteli lukijoitaan. Esimerkiksi Aino-runon opetus, etteiv&auml;t vanhemmat saisi naittaa tytt&auml;ri&auml;&auml;n vastoin heid&auml;n omaa tahtoaan (UK 4: 439-446), ei esiinny kansanrunoissa. Uudessa Kalevalassa L&ouml;nnrot varmisti runojen sis&auml;ll&ouml;llisen ymm&auml;rryksen laatimalla proosamuotoiset lyhennelm&auml;t kunkin runon alkuun (Apo 2008: 366).</p>\r\n<h5>Ty&ouml;n prosessuaalisuus</h5>\r\n<p>Mit&auml; enemm&auml;n keruumatkoilla saatuja runoja kertyi, sit&auml; runsaammin L&ouml;nnrot uudestaan kirjoitti, muokkasi, poisti, lis&auml;si aiemmin tehtyyn. Ero runoja laulaneisiin miehiin ja naisiin n&auml;kyi kirjallisessa ty&ouml;skentelyss&auml; ja julkaisuymp&auml;rist&ouml;ss&auml;. L&ouml;nnrotin runos&auml;keiden tuntemus oli suuri, ja kirjallisesti esitt&auml;en h&auml;n pystyi palaamaan s&auml;keisiin yh&auml; uudestaan (Kaukonen 1984: 39).</p>\r\n<p>Kalevalan ensimm&auml;isi&auml;, k&auml;sikirjoituksina s&auml;ilyneit&auml; versioita, niin kutsuttuja Alku-Kalevalaa (1833) ja Sikerm&auml;-Kalevalaa (1833), seurasi suunnitelma runoelman laajentamista varten: oli l&ouml;ydett&auml;v&auml; hyvi&auml; runonlaulajia sek&auml; saatava uusia runoaineksia (<em>VT</em> 1, kirje 43). Vanhan Kalevalan (1835) j&auml;lkeen L&ouml;nnrot teki suuret keruumatkansa (1836&minus;1837, 1838), joiden aineisto kartutti erityisesti lyyrisen runon kokoelmaa, Kanteletarta. Kalevalan toimitusty&ouml;h&ouml;n vaikuttivat my&ouml;s muut kansarunoty&ouml;t; mm. Kantelettaren merkitys Uuden Kalevalan kokonaisuudessa on ollut merkitt&auml;v&auml; (Kaukonen 1984).</p>\r\n<p>Kalevalaa ryhdyttiin tutkimaan 1980&minus;1990-luvuilla yh&auml; uudestaan muotoutuvana prosessina. Matti Kuusi (1984) ja Lauri Honko (1987, 1999) puhuivat viisikerroksisesta Kalevalasta, Kalevalan eri versioista ja L&ouml;nnrotin ty&ouml;st&auml; Kalevala-prosessina. Kuusen ja Hongon kirjoitusten pohjalta Kalevala-tutkimus koki uuden tulemisen. Viime vuosikymmenin&auml; Kalevalaa on tutkittu L&ouml;nnrotin ty&ouml;prosessin n&auml;k&ouml;kulmasta (Hyv&ouml;nen 2001; 2008; H&auml;m&auml;l&auml;inen 2012; 2013) sek&auml; tarkasteltu L&ouml;nnrotin tekijyyden problematiikkaa (Apo 2002) ja Kalevalaa moderniteetin tuottamisen v&auml;lineen&auml; (Anttonen 2004; 2005).</p>\r\n</div>\r\n<div id=\"kaukonen-content\">\r\n<p><em>Niina H&auml;m&auml;l&auml;inen</em></p>\r\n<p>Seuraavassa havainnollistetaan s&auml;etutkimuksen viitteit&auml; ja niiden taustalla olevia runotekstej&auml; sek&auml; joissakin tapauksissa osoitetaan laajemmin, mink&auml;laisia muita runotekstej&auml; L&ouml;nnrotilla oli mahdollisesti k&auml;yt&ouml;ss&auml;&auml;n.</p>\r\n<p>Kussakin kohdassa on ensin Kalevalan s&auml;e ja t&auml;m&auml;n j&auml;lkeen V&auml;in&ouml; Kaukosen s&auml;eviite kokonaisuudessaan. Kunkin s&auml;keen vieress&auml; olevaa nuolipainiketta painamalla saa esiin Niina H&auml;m&auml;l&auml;isen kommentaarin s&auml;eviitteeseen.</p>\r\n<p>AK = Alku-Kalevala. K&auml;sikirjoituksena s&auml;ilynyt toinen ensimm&auml;isist&auml; Kalevalan versioista valmistui vuonna 1833 nimell&auml; Runokokous V&auml;in&auml;m&ouml;isest&auml;. Runokokousta ennen L&ouml;nnrot oli jo saanut valmiiksi Sikerm&auml;-Kalevalan, joka sis&auml;lsi kolme teosta: Lemmink&auml;inen, V&auml;in&auml;m&ouml;inen ja Naimakansan virsi&auml;.</p>\r\n<p>VK = Vanha Kalevala. Kalevalan ensimm&auml;inen painettu versio ilmestyi 1835.</p>\r\n<p>VKL = V&auml;lilehditetty Vanha Kalevala. L&ouml;nnrot teetti itselleen v&auml;lilehdill&auml; varustetun Kalevalan l&auml;htiess&auml;&auml;n seitsem&auml;nnelle keruumatkalle vuonna 1836.</p>\r\n<p>UK = Uusi Kalevala. Vuoden 1849 Kalevala, joka on saanut Suomen kansalliseepoksen aseman.</p>\r\n<p class=\"Body\">Runoviitteet, kuten I1&nbsp;234 viittaavat<em> SKVR</em>-julkaisun I1-osan numeroon 234.</p>\r\n<p class=\"Body\">&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\">Tuopa Aino neito nuori,</span> <strong><a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></strong></p>\r\n<p>VKL 31:1&minus;2 Kapo kaunis, neito nuori, Anni tytti, aino tytti. Vrt. VII1 217,1 Kapo kaunis, neiti nuori, I1 234,1 Anni tytti, aino tytti ja l1 213,1 Aino tytti, aino nei[ti] sek&auml; esim. 22:111.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukonen antaa ensisijaiseksi viitteeksi V&auml;lilehditetyn Kalevalan (=VKL) s&auml;keet. Idean Aino-nimest&auml; L&ouml;nnrot sai vienalaisista toisinnoista, joissa sanottiin &ldquo;annan ainoan sisareni&rdquo;, adjektiivista &ldquo;ainoa&rdquo; tuli aino (Kuusi 1963: 220; Kaukonen 1987: 181). Ks. SKVR I1 234: anni sikko, aino neiti. Ks. Sananselitys Aino. VKL:n Kapo kaunis on Uudessa Kalevalassa (=UK) Tuopa Aino. Kapo tarkoittaa tytt&ouml;&auml; (KKSK), ja sopii alkusoinnullisuudenkin vuoksi yhteen kauniin kanssa. Toisaalta UK:ssa ei ole en&auml;&auml; kyse mist&auml; tahansa tyt&ouml;st&auml;, vaan Ainosta, Joukahaisen sisaresta.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Sisar nuoren Joukahaisen</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:1. Vrt. 5:126.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukonen viittaa Vanhan Kalevalan (=VK) ensimm&auml;iseen s&auml;keeseen: Sisar nuoren Joukahaisen. Ks. Kaukosen Vanhan Kalevalan s&auml;etutkimus, jossa h&auml;n viittaa Kalevalan ensimm&auml;iseen versioon, ns. Alku-Kalevalaan (Runokokous V&auml;in&auml;m&ouml;isest&auml;, 1833); RV, XV,199 \"Tuopa\" --. (Kaukonen 1945: 442.)</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">L&auml;ksi luutoa lehosta,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:3 - vastoa mets&auml;st&auml;, I1 234,2. Vrt. VII1 208,1&minus;2 Anni tytt&ouml;, kauno tytt&ouml; Taitto luutoa lehosta.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>Mallirunossa SKVR I1 234 (Hirtt&auml;ytynyt neito) s&auml;e on: \"L&auml;ksi vastoa mets&auml;st&auml;\". S&auml;e luutoa lehosta on toisesta Hirtt&auml;ytyneen neidon toisinnosta, jonka L&ouml;nnrot merkitsi muistiin kahdeksannella keruumatkallaan 1838. Runon SKVR VII1 208 loppu on eroottinen:</p>\r\n<p>Anni tytt&ouml;, kauno tytt&ouml;<br /> Taitto luutoa lehosta,<br /> Vastap&auml;&auml;t&auml; varvikosta,<br /> Verev&auml;lle veiolleen.<br /> 5 Kuin olin ennen nuori neito#1,<br /> Nuori neinn&auml; kasvavana,<br /> Niin mun keikku kellarini,<br /> Kun veikon venehen kokka,<br /> Niin mun v-ni vihotti,<br /> 10 Kun is&auml;ni nurminiittu.</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Vastaksia varvikosta;</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31 r.a. 8, IV1 83,3.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">V&auml;lilehditetyss&auml; Kalevalassa on marginaalimerkint&auml;: Vastaksia varvikosta. Runoviite SKVR IV1 83 on D.E.D. Europaeuksen tallentamasta runosta, joka sis&auml;lt&auml;&auml; runot Luutaan lehosta ja Myydyn neidon -runon. Sama s&auml;e l&ouml;ytyy my&ouml;s kolmesta muusta toisinnosta (SKVR IV1 95, 152, 329). Tallenteet ovat Europaeuksen keruumatkalta Keski-Inkerist&auml; vuosilta 1847&minus;1848. Runotekstit kertovat Valpuri-neidosta (ks. Marketta: SKVR IV1 329). T&auml;m&auml; l&auml;htee mets&auml;&auml;n hakemaan vastatarpeita, nuori mies varoittaa ker&auml;&auml;m&auml;st&auml; vastaksia, sill&auml; neito on myyty h&auml;nelle. Runotoisinnossa SKVR IV1 329 miehen kohtaaminen johtaa Marketan raskauteen, syntyy poika, josta yritet&auml;&auml;n p&auml;&auml;st&auml; eroon heitt&auml;m&auml;ll&auml; t&auml;m&auml; veteen, mutta poika pilkkaa muita. Ks. runossa on yhtym&auml;kohtia Kalervon ja Untamon runoon sek&auml; Kalevanpoikaan, joka syntyess&auml;&auml;n omaa yliluonnollisia voimia, t&auml;t&auml; yritet&auml;&auml;n tappaa tuloksetta (ks. SKVR XIII1 458, 459, 464, 472).</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Taittoi vastan taatollensa,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:5 Taitto &mdash; &mdash;, I1 234,4 &mdash; vassan taatollase&lceil;k&rceil;.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">L&ouml;nnrot seuraa Vanhan Kalevalan runoa sek&auml; vienalaista toisintoa SKVR I1 234. Muutokset Aino-runossa ovat kielellisi&auml;. L&ouml;nnrot yhdenmukaistaa murteellista kieliasua.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Toisen taittoi maammollensa,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:6 &mdash; taitto maamollensa, I1 234,5 &mdash; &mdash; maammollahek].</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen viite.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kokoeli kolmannenki</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:7 Kolmatta kohotteleksen, I1 234,6 &mdash; kokoelo[o]. Vrt. 19:249.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Vrt-viite viittaa Kalevalan 19. runon s&auml;keeseen 249: \"Niin kokko kohotteleikse\". Kyseess&auml; on Ilmarisen ansioty&ouml;t Pohjolassa, eik&auml; runolla ole varsinaista yhteytt&auml; Ainon tarinaan. Vanhassa Kalevalassa Aino kohottelee (nostelee) vastaksia, mutta Uudessa Kalevalassa sana on kokoella eli ker&auml;ill&auml; kansanrunoviitteen mukaisesti.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Verev&auml;lle veiollensa.</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:50, VII1 208,4 &mdash; veiolleen.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">V&auml;lilehditetyss&auml; Kalevalassa s&auml;e on &ldquo;Verev&auml;lle [veiollensa]\", Uudessa Kalevassa vain j-kirjain veio-sanassa erottaa n&auml;m&auml; kaksi versiota. L&ouml;nnrotin tallentamassa runotekstiss&auml; my&ouml;s verev&auml;lle veiolleen (SKVR VII1 208). V&auml;lilehdille on merkattu toisintos&auml;e: &ldquo;Vanhimmalle [veiollensa]\". Ks. VK:ssa verev&auml;n tilalla on nuori: &ldquo;nuorimmalle veiollensa\" (VK 31: 8) Vienalaisissa toisinnoissa s&auml;e kuuluu: &ldquo;Nuorimmalle veiolle\" (SKVR I1 233, 234). Vrt. Vanhan Kalevalan toisinnot (my&ouml;s VLK), jossa lis&auml;s&auml;e: &ldquo;Perehen parahimmalle\" (ks. SKVR I1 233). S&auml;e ei esiinny Aino-runon versioissa.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Jo astui kohin kotia,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:53 Jo kohen kotia kulki, II 27,28 &mdash; kohti &mdash; meni.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">S&auml;e ei esiinny Hirtt&auml;ytyneen neidon runotallenteissa. Kaukonen viittaa Kilpalaulanta-runoon SKVR II 27, jossa s&auml;e: &ldquo;Jo kohti kotia meni\". Runossa Joukamo l&auml;htee kohti kotia h&auml;vitty&auml;&auml;n V&auml;in&auml;m&ouml;iselle. Aino-runossa s&auml;e on L&ouml;nnrotin kerronnallinen ratkaisu. Ensin kuvataan Aino ker&auml;&auml;m&auml;ss&auml; vastatarpeita, sitten t&auml;m&auml;n l&auml;hteneen kotia kohti ja tavanneen V&auml;in&auml;m&ouml;isen.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\"> Lepikk&ouml;&auml; leuhautti,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:55, I1 222,4.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">V&auml;lilehditetyss&auml; Kalevassa sek&auml; L&ouml;nnrotin tallenteessa vuodelta 1837 tyt&ouml;n l&auml;ht&ouml; kotiin kuvataan kahdella s&auml;keell&auml;: &ldquo;Astuvi ahosta l&auml;pi, / Lepikk&ouml;&auml; leuhautti\" (SKVR I1 222) (VLK: \"Astuvi l&auml;pi ahosta\"). Kansanrunon ensimm&auml;inen s&auml;e &ldquo;Astuvi ahosta l&auml;pi\" on kuitenkin pudotettu pois UK:n runosta.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Tuli vanha W&auml;in&auml;m&ouml;inen,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:9. Vrt. 17:67.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Yksi keskeinen muutos kansanrunotoisintojen ja L&ouml;nnrotin Aino-runon v&auml;lill&auml;: Kalevalassa Aino kohtaa V&auml;in&auml;m&ouml;isen, runotoisinnoissa kosija on Osmoinen. Ks. kuitenkin my&ouml;hemmin Aino kertoo &auml;idilleen kosijasta: \"Osmoinen orosta virkkoi, Kalevainen kaskesmaalta:\" (UK 4: 93&minus;94).</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">N&auml;ki neitosen lehossa,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. V1 215,9 *L&ouml;ys neitos[en] lehost* ja VII2 2012,1 L&ouml;ysin neitosen lehosta.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>Kaukonen ei anna suoraa kansanrunoviitett&auml;. Kuitenkin skvr-tietokannasta www.skvr.fi l&ouml;ytyy useita runotoisintoja, jotka sis&auml;lt&auml;v&auml;t saman s&auml;keen, ja jotka on tallennettu ennen Uuden Kalevalan ilmestymist&auml; eli ovat olleet L&ouml;nnrotilla k&auml;yt&ouml;ss&auml; Kalevalan uuden version toimitusty&ouml;ss&auml;. Runot liittyv&auml;t Hirtt&auml;ytyneen neidon kosintatematiikkaan (ks. Varkaalle menij&auml;, Konnusta kosinta, L&ouml;ysin neitosen lehosta). Neito tai kosija menee mets&auml;&auml;n, kosija l&ouml;yt&auml;&auml; neitosen lehosta, hienohelman heinikosta (SKVR V1 215, 1019, 1020; VII2 1287, 1288, 2012; XIII1 1324-1327, 1330; Vrt. XIII1 787 Marketan runo; ks. my&ouml;s Gottlundin <em>Pieni&auml; Runoja</em> I, 1818.) Ks. L&ouml;nnrotin muistiinpano SKVR XIII1 1330 vuodelta 1837:</p>\r\n<p>Etsin neitt&auml; vellolleni,<br /> Kumppalia kullalleni.<br /> L&ouml;ysin neitosen lehosta,<br /> Hienohelman heinik&ouml;st&auml;.<br /> --<br /> Vrt. verbi \'n&auml;hd&auml;\' Kalevalassa ja \'l&ouml;yt&auml;&auml;\' kansanrunoissa.</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Hienohelmen heinik&ouml;ss&auml;,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Esim. VII2 2012,3 Hienohelman &mdash;. Vrt. 25:168 ja V1 215,10 *Hienohelman heinikost*.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen viite ja selitys.<br /> S&auml;eviite on Z. Sireliuksen tallenteesta Impilahdelta vuodelta 1847. Kyseess&auml; on lyyrinen huoliruno, joka alkaa laulajamin&auml;n ja neidon kohtaamisen kuvauksella. Runo jatkuu neidon huolten kuvauksella. (SKVR VII2 2012.)</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Sanan virkkoi, noin nimesi:</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VK 31:10 &mdash; virkko &mdash; &mdash;. Yl.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">S&auml;e on yleisesti k&auml;yt&ouml;ss&auml; eeppisiss&auml; runoissa kertomassa suorasta lainauksesta. Lyhenne yl. tarkoittaa yleist&auml; s&auml;ett&auml;, jolle Kaukonen ei osoita erillist&auml; s&auml;eviitett&auml;.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">\"El&auml;p&auml; muille neiti nuori</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:73 Elek&auml; &mdash; &mdash; &mdash;, VII1 212,26 El&auml;p&auml; &mdash; kaunis Kaisa. Vrt. s. 1.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukonen viittaa Kalevalan V&auml;lilehdille. Vanhassa Kalevalassa ei ole V&auml;in&auml;m&ouml;isen kieltoa, vaan t&auml;m&auml; kehoittaa tytt&ouml;&auml; mielistym&auml;&auml;n vain h&auml;neen (VK 31:11&minus;16). Kansanrunoviite SKVR VII1 212 on L&ouml;nnrotin vuodelta 1838. Pitk&auml; runo sis&auml;lt&auml;&auml; mm. Hirtt&auml;ytyneen neidon runoa, p&auml;&auml;henkil&ouml;n&auml; Katri, joka kohtaa Riio-nimisen kosijan. Usein Hirtt&auml;ytyneen neidon runossa kosija kehoittaa neitoa ajattelemaan t&auml;t&auml; ja / tai kielt&auml;&auml; mielistym&auml;st&auml; muihin: \"kasva neiti miussa mielin, / el&auml; muissa nuorisoissa\" (SKVR I1 234, ks. my&ouml;s I1 233; ks. I1 208, 222). Ks. my&ouml;s Katrin ja Riion poika: VII1 210, 215. Vrt.-viite: Kaukonen viittaa Aino-runon ensimm&auml;iseen s&auml;keeseen &ldquo;Tuopa Aino neito nuori\".</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kun minulle neiti nuori</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:74 Kun &mdash; &mdash; &mdash; , VII1 212,29 Kaisa kaunis. Vrt. ss. 1 ja 15.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen viite ja selitys. Vrt.-viitteet ovat Aino-runon s&auml;keit&auml;, joissa toistuvat neito / neiti nuori.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kanna kaulan helmil&ouml;it&auml;,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:77 Kanna\' kaulan helmil&ouml;it&auml;. Vrt. s. 313, 14:134, 25:640 ja 29:167.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>Ks. edell&auml;.<br /> Hirtt&auml;ytyneen neidon runo: neidon kertoessa kotona tapahtuneesta, k&auml;y ilmi, ett&auml; t&auml;ll&auml; on ollut korut kaulassa vastantaittomatkalla:</p>\r\n<p>Kirpo risti rinnalt[ani],<br /> Kirpo sorm[us] sorm[estani],<br /> *Kauniseni vy&ouml;ni p&auml;&auml;st&auml;,*<br /> 25 Simpsukais[et] silm[ilt&auml;ni],<br /> Kulta ripsut#3 kulmilt[ani].\"<br /> (SKVR I1 233)<br /> Ks. my&ouml;s I1 208, 221, 234; II 47.</p>\r\n<p>L&ouml;nnrotin oma tulkinta lienee se, ett&auml; Kalevalassa juuri V&auml;in&auml;m&ouml;inen kehoittaa Ainoa olemaan koristautumatta muille.</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Rinnan risti&auml; rakenna,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:78 Rinnan risti&auml; rakenna\'. Vrt. s. 47 ja 18:235.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edelliset selitykset.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Pane p&auml;&auml;t&auml; palmikolle,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:75, VII1 212,27</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edell&auml;.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Sio silkill&auml; hivusta!\"</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31 r.a. 76, VII1 212,28</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edell&auml;.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Neiti tuon sanoiksi virkki:</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:62 (Katri varsin vastaeli), VII1 210,11. VKL 31 r.a. 62 Neiti [varsin vastaeli].</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Yleisesti k&auml;yt&ouml;ss&auml; oleva s&auml;e eri runoissa. Kaukonen olisi voinut merkata t&auml;m&auml;n yleiseksi s&auml;keeksi.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">\"En sinulle, enk&auml; muille</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31 r.a. 631/2 En sinussa enk&auml; muissa, II 47,11 Enk&auml; si[ussa], &mdash; muiss[a].</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. V&auml;lilehditetyn Kalevalan merkinn&auml;t on tehty 1840-luvun loppupuolella, jolloin L&ouml;nnrot ty&ouml;skenteli Uuden Kalevalan version kanssa. Siit&auml; my&ouml;s Kaukosen viite Europaeuksen tallentamaan runnon vuodelta 1845 (SKVR II 47).</p>\r\n<p><span style=\"text-decoration: underline;\">Kanna rinnan ristil&ouml;it&auml;,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. ss. 17&minus;18.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukonen viittaa aikaisempiin Kalevalan runon s&auml;keisiin: &ldquo;Kanna kaulan helmil&ouml;it&auml;, / Rinnan risti&auml; rakenna\".</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">P&auml;&auml;t&auml; silkill&auml; sitaise,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. s. 20.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Huoli en haahen haljakoista,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:83 Ole\' haahen haljakoissa, I1 234,80 *Ole &mdash; &mdash; *.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kansanrunoviitteess&auml; (SKVR I1 234) s&auml;e esiintyy Ainon kertoessa &auml;idilleen todellisen syyn itkuunsa. Haahti tarkoittaa laivaa, haljakka verkakangasta, hienoa vaatetta (ks. sananselitys: haahen haljakoista). S&auml;e ei esiinny yleisesti runoissa. Muutamassa vienalaisessa h&auml;&auml;virress&auml; morsian saapuu veneell&auml;, jossa &ldquo;Puoli on punaista purtta, / Toinen haahen haljakkoa\" (SKVR I3 1713; 1710).</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Wehn&auml;n viploista valita,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. I1 217,4 Veny vehn&auml; viiploisilla.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>Kaukosen viitemerkint&auml; on L&ouml;nnrotin lyhyest&auml; Hirtt&auml;ytyneen neidon runotekstist&auml;, joka sis&auml;lt&auml;&auml; vain muutamia irrallisia s&auml;keit&auml; runosta:</p>\r\n<p>Anni tytt&ouml;, aini neiti<br /> L&auml;ksi vassan taitantan.<br /> 3:tta korotteleksen.<br /> \"Veny vehn&auml; viiploisilla.\"<br /> 5 Sano em&auml;:<br /> \"Anni t[ytti], ain[i] t[ytti],<br /> Mene aittah m&auml;ell&auml;,<br /> Avaos parahin arkku,<br /> Kirjakansi kimmahuta.<br /> (SKVR I1&nbsp;217)</p>\r\n<p>Ks. L&ouml;nnrotin tallentama toinen runoteksti sis&auml;lt&auml;&auml; tarkemman s&auml;eyhteyden:<br /> --<br /> Osmotar orosta [nousi],<br /> 45 Kalevat[ar] [kaskesmaasta]:<br /> \"Kasva neiti [miussa mielin],<br /> Kasva leiv[&auml;n] kan[nikoilla],<br /> Veny vehn&auml; vipl[oisilla].\"<br /> (SKVR I1 208)</p>\r\n<p>Ks. my&ouml;s I1 234: Veny leiv&auml;n viploisilla!</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Asun kaioissa sovissa,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>Vrt. II 47,7 K[asva] kaioissa sovi[ssa].</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. Aino-runon perustana olevissa vienalaisissa Hirtt&auml;ytyneen neidon teksteiss&auml;: &ldquo;Kasva kaioissa somissa\" (SKVR I1 234; 233, 208). Vrt. Meren kosijat: &ldquo;Neitonen norolla kasvo, / kasvo kaloissa somissa, / veny verkavaattehissa\" --- &ldquo;Kasvoin [kaioissa somissa], / Venyin [verka vaattehissa]\" (L&ouml;nnrot 1834, SKVR I2 1139; my&ouml;s I1 erill. Aino 1.) Viel&auml; Vanhassa Kalevalassa s&auml;e on: kaioissa somissa. T&auml;m&auml; johtunee siit&auml;, ett&auml; L&ouml;nnrot sai Europaeuksen runotekstin SKVR II 47 vasta vuonna 1845.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kasvan leiv&auml;n kannikoissa</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:65 &mdash; leip&auml;kannikoissa, VII1 210,14.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Kaukosen antama kansanrunoviite on Katrin ja Riion pojan runosta: &ldquo;Kasvan leip&auml;kannikoissa\". F. Pol&eacute;nin tallentama, huomattavasti laajempi toisinto sis&auml;lt&auml;&auml; tarkemman vastaavuuden Kalevalan s&auml;keeseen: &ldquo;Kasva leiv&auml;n kannikoissa\" (SKVR VII1 215). Ero on puhujassa. Kalevalassa &auml;&auml;ness&auml; on Aino, kansanrunossa Riion poika. Vastaavasti vienalaiset runot (SKVR I1 208, 234) sis&auml;lt&auml;v&auml;t samaisen s&auml;keen, joka toistuu sek&auml; Osmoisen ett&auml; Anni-tyt&ouml;n kertomana.</p>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Tyk&ouml;n&auml; hyv&auml;n isoni,</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:67. Vrt. 36:60.</p>\r\n<div class=\"kaukonen-comm\" style=\"display: none;\">\r\n<p>S&auml;e ei esiinny Hirtt&auml;ytyneen neidon tallenteissa. S&auml;e l&ouml;ytyy mm. L&ouml;nnrotin tallentamasta Mataleenan runosta, jota laulettiin Ritvalan Helkajuhlassa:</p>\r\n<p>Matalena neito nuori<br /> Kauan ſe kotona kasvo<br /> Kauan kasvo, kauas kuulu<br /> Tyk&ouml;n&auml; hyv&auml;n iſ&auml;nſ&auml;<br /> 5 Kansſa armaan emonſa<br /> ---<br /> (SKVR IX1 89; ks. my&ouml;s SKVR IX1 77, 81, 85, 89, 93, 96)</p>\r\n</div>\r\n<br />\r\n<p><span style=\"text-decoration: underline;\">Kanssa armahan emoni.\"</span> <a class=\"kaukonen-btn\" style=\"cursor: pointer; font-size: 20px; color: #607a9e !important; border-bottom: none !important;\">&rarr;</a></p>\r\n<p>VKL 31:68. Vrt. 3:487.</p>\r\n<p class=\"kaukonen-comm\" style=\"display: none;\">Ks. edellinen viite: Mataleenan runo.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2018-01-15 11:22:25','2018-01-03 08:03:48',0,0,'',1),(4,1,1,1,'Julkaisut','julkaisut','','2018-01-09 09:49:14','2018-01-03 08:07:43',0,0,'',0),(5,1,1,1,'Linkit','linkit','<div class=\"container-fluid\">\r\n<p><a style=\"color: #607a9e;\" href=\"http://neba.finlit.fi/tietopalvelu/elias/index.htm\">Tietopaketti Elias L&ouml;nnrotista</a></p>\r\n<p><a style=\"color: #607a9e;\" href=\"http://www.kalevalaseura.fi/kaku/index.php\">Kalevalaseuran sivuilla</a> on koosteita Kalevalan kulttuurihistorian (2008) artikkeleista.</p>\r\n<p>Tietoa Kalevalan ja kansanrunoudentutkimuksen syntyyn liittyv&auml;st&auml; historiasta: Anttonen, Pertti 2005: <a style=\"color: #607a9e;\" href=\"http://www.oapen.org/search?keyword=Tradition+Through+Modernity\"><em>Tradition Through Modernity. Postmodernism and the Nation-State in Folklore Scholarship</em></a>. (Studia Fennica Folkloristica.) Helsinki: Finnish Literature Society.</p>\r\n</div>','2018-01-03 08:11:05','2018-01-03 08:07:59',0,0,'',1);
/*!40000 ALTER TABLE `kalevala_simple_pages_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_tags`
--

DROP TABLE IF EXISTS `kalevala_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_tags`
--

LOCK TABLES `kalevala_tags` WRITE;
/*!40000 ALTER TABLE `kalevala_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `kalevala_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_users`
--

DROP TABLE IF EXISTS `kalevala_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `active_idx` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_users`
--

LOCK TABLES `kalevala_users` WRITE;
/*!40000 ALTER TABLE `kalevala_users` DISABLE KEYS */;
INSERT INTO `kalevala_users` VALUES (1,'maniku','Super User','mr.wisty@gmail.com','2ee2776ff5386f7ca9d69481812ab98abf036c15','21482fe3aa248390',1,'super');
/*!40000 ALTER TABLE `kalevala_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kalevala_users_activations`
--

DROP TABLE IF EXISTS `kalevala_users_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalevala_users_activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kalevala_users_activations`
--

LOCK TABLES `kalevala_users_activations` WRITE;
/*!40000 ALTER TABLE `kalevala_users_activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `kalevala_users_activations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-15 15:26:40
