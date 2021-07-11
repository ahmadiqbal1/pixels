# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: pixel
# Generation Time: 2017-04-05 15:27:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,NULL,1,'Mockups','mockups','2017-02-10 14:18:17','2017-03-15 01:59:01'),
	(2,NULL,2,'PSDs','psds','2017-02-10 14:18:17','2017-03-15 01:59:30'),
	(3,NULL,3,'Icons','icons','2017-03-15 01:59:59','2017-03-15 02:00:04'),
	(4,NULL,4,'Vectors','vectors','2017-03-15 02:00:42','2017-03-15 02:00:46'),
	(5,4,6,'Sketch','sketch','2017-03-15 02:00:56','2017-03-15 02:13:09'),
	(6,NULL,7,'Other','other','2017-03-15 02:01:11','2017-03-15 02:10:44'),
	(7,2,8,'UI Kits','ui-kits','2017-03-15 02:01:50','2017-03-15 02:14:19'),
	(8,2,9,'Websites','websites','2017-03-15 02:02:06','2017-03-15 02:14:31'),
	(9,4,5,'Illustrator','illustrator','2017-03-15 02:11:33','2017-03-15 02:14:01');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_general_ci,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`)
VALUES
	(1,1,'id','PRI','ID',1,0,1,1,0,1,''),
	(2,1,'author_id','text','Author',1,0,1,1,0,1,''),
	(3,1,'title','text','Title',1,1,1,1,1,1,''),
	(4,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,''),
	(5,1,'body','rich_text_box','Body',1,0,1,1,1,1,''),
	(6,1,'image','image','Post Image',0,1,1,1,1,1,'{\n\"resize\": {\n\"width\": \"1000\",\n\"height\": \"null\"\n},\n\"quality\": \"70%\",\n\"upsize\": true,\n\"thumbnails\": [\n{\n\"name\": \"medium\",\n\"scale\": \"50%\"\n},\n{\n\"name\": \"small\",\n\"scale\": \"25%\"\n},\n{\n\"name\": \"cropped\",\n\"crop\": {\n\"width\": \"300\",\n\"height\": \"250\"\n}\n}\n]\n}'),
	(7,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\": {\"origin\": \"title\", \"forceUpdate\": true}}'),
	(8,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,''),
	(9,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,''),
	(10,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\n\"default\": \"DRAFT\",\n\"options\": {\n\"PUBLISHED\": \"published\",\n\"DRAFT\": \"draft\",\n\"PENDING\": \"pending\"\n}\n}'),
	(11,1,'created_at','timestamp','created_at',0,1,1,0,0,0,''),
	(12,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),
	(13,2,'id','checkbox','id',1,0,0,0,0,0,NULL),
	(14,2,'author_id','text','author_id',1,0,0,0,0,0,NULL),
	(15,2,'title','text','title',1,1,1,1,1,1,NULL),
	(16,2,'excerpt','text_area','excerpt',0,0,0,0,0,1,NULL),
	(17,2,'body','rich_text_box','body',0,0,1,1,1,1,NULL),
	(18,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}'),
	(19,2,'meta_description','text','meta_description',0,0,1,1,1,1,NULL),
	(20,2,'meta_keywords','text','meta_keywords',0,0,1,1,1,1,NULL),
	(21,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}'),
	(22,2,'created_at','timestamp','created_at',0,1,1,0,0,0,NULL),
	(23,2,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL),
	(24,2,'image','image','image',0,0,0,0,0,0,NULL),
	(25,3,'id','PRI','id',1,0,0,0,0,0,''),
	(26,3,'name','text','name',1,1,1,1,1,1,''),
	(27,3,'email','text','email',1,1,1,1,1,1,''),
	(28,3,'password','password','password',1,0,0,1,1,0,''),
	(29,3,'remember_token','text','remember_token',0,0,0,0,0,0,''),
	(30,3,'created_at','timestamp','created_at',0,1,1,0,0,0,''),
	(31,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),
	(32,3,'avatar','image','avatar',0,1,1,1,1,1,''),
	(33,5,'id','PRI','id',1,0,0,0,0,0,''),
	(34,5,'name','text','name',1,1,1,1,1,1,''),
	(35,5,'created_at','timestamp','created_at',0,0,0,0,0,0,''),
	(36,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),
	(37,4,'id','checkbox','id',1,0,0,0,0,0,NULL),
	(38,4,'parent_id','select_dropdown','Parent Category',0,0,1,1,1,1,'{\"default\":\"__null__\",\"null\":\"__null__\",\"options\":{\"__null__\":\"NULL\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}'),
	(39,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}'),
	(40,4,'name','text','name',1,1,1,1,1,1,NULL),
	(41,4,'slug','text','slug',1,1,1,1,1,1,NULL),
	(42,4,'created_at','timestamp','created_at',0,0,1,0,0,0,NULL),
	(43,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL),
	(44,6,'id','PRI','id',1,0,0,0,0,0,''),
	(45,6,'name','text','Name',1,1,1,1,1,1,''),
	(46,6,'created_at','timestamp','created_at',0,0,0,0,0,0,''),
	(47,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),
	(48,6,'display_name','text','Display Name',1,1,1,1,1,1,''),
	(49,1,'seo_title','text','seo_title',0,1,1,1,1,1,''),
	(50,1,'featured','checkbox','featured',1,1,1,1,1,1,''),
	(51,3,'role_id','text','role_id',1,0,0,1,1,0,''),
	(52,7,'id','checkbox','Id',1,0,0,0,0,0,NULL),
	(53,7,'name','text','Name',1,1,1,1,1,1,NULL),
	(54,7,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":false}}'),
	(55,7,'created_at','timestamp','Created At',0,0,0,0,0,1,NULL),
	(56,7,'updated_at','timestamp','Updated At',0,0,0,0,0,1,NULL),
	(57,8,'id','checkbox','Id',1,0,0,0,0,0,NULL),
	(59,8,'title','text','Title',1,1,1,1,1,1,NULL),
	(60,8,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":false}}'),
	(61,8,'description','rich_text_box','Description',1,0,1,1,1,1,NULL),
	(63,8,'image','image','Image',1,1,1,1,1,1,'{\"resize\":{\"width\":\"1500\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"640\",\"height\":\"480\"}}]}'),
	(64,8,'file','text','URL to File Download',0,0,1,1,1,1,NULL),
	(68,8,'category_id','select_dropdown','Category ID',1,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}'),
	(70,8,'created_at','timestamp','Created At',1,0,0,1,0,1,NULL),
	(71,8,'updated_at','timestamp','Updated At',1,0,0,0,0,1,NULL),
	(74,8,'active','checkbox','Is This Download Active?',1,1,1,1,1,1,NULL),
	(76,8,'time_download','timestamp','Time Download',1,0,0,0,0,1,NULL),
	(77,8,'tags_relationship','select_multiple','Tags',0,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}'),
	(78,8,'likes','checkbox','Likes',1,0,0,0,0,1,NULL),
	(79,8,'downloads','checkbox','Downloads',1,0,0,0,0,1,NULL);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`)
VALUES
	(1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post',NULL,'',1,0,'2017-02-10 14:18:17','2017-02-10 14:18:17'),
	(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,NULL,1,0,'2017-02-10 14:18:17','2017-03-19 13:41:36'),
	(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User',NULL,'',1,0,'2017-02-10 14:18:17','2017-02-10 14:18:17'),
	(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,NULL,1,0,'2017-02-10 14:18:17','2017-03-15 02:13:34'),
	(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'',1,0,'2017-02-10 14:18:17','2017-02-10 14:18:17'),
	(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'',1,0,'2017-02-10 14:18:17','2017-02-10 14:18:17'),
	(7,'tags','tags','Tag','Tags','voyager-tag','App\\Tag',NULL,NULL,1,0,'2017-02-10 14:36:51','2017-02-10 14:36:51'),
	(8,'downloads','downloads','Download','Downloads','voyager-cloud-download','App\\Download',NULL,NULL,1,0,'2017-02-10 15:00:12','2017-02-10 15:00:12');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table download_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `download_tag`;

CREATE TABLE `download_tag` (
  `download_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`download_id`,`tag_id`),
  KEY `download_tag_download_id_index` (`download_id`),
  KEY `download_tag_tag_id_index` (`tag_id`),
  CONSTRAINT `download_tag_download_id_foreign` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `download_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `download_tag` WRITE;
/*!40000 ALTER TABLE `download_tag` DISABLE KEYS */;

INSERT INTO `download_tag` (`download_id`, `tag_id`)
VALUES
	(23,1),
	(23,2),
	(23,3),
	(24,4),
	(24,5),
	(24,6),
	(24,7),
	(25,4),
	(25,8),
	(25,9),
	(26,7),
	(26,10),
	(26,11),
	(26,25),
	(26,35),
	(26,40),
	(27,4),
	(27,5),
	(27,8),
	(27,10),
	(27,11),
	(27,12),
	(27,13),
	(28,2),
	(28,4),
	(28,7),
	(28,15),
	(28,32),
	(29,4),
	(29,7),
	(29,14),
	(29,17),
	(29,18),
	(29,19),
	(30,4),
	(30,7),
	(30,8),
	(30,14),
	(30,20),
	(31,4),
	(31,7),
	(31,35),
	(32,4),
	(32,8),
	(32,14),
	(32,20),
	(32,21),
	(33,11),
	(33,23),
	(33,24),
	(33,25),
	(34,4),
	(34,7),
	(34,8),
	(34,27),
	(34,28),
	(35,6),
	(35,8),
	(35,25),
	(36,4),
	(36,7),
	(36,8),
	(36,23),
	(36,25),
	(36,35),
	(37,4),
	(37,6),
	(37,7),
	(37,8),
	(37,11),
	(37,24),
	(37,29),
	(38,11),
	(38,23),
	(38,30),
	(38,31),
	(39,2),
	(39,4),
	(39,15),
	(39,32),
	(40,2),
	(40,4),
	(40,15),
	(40,32),
	(41,4),
	(41,5),
	(41,14),
	(41,33),
	(42,4),
	(42,5),
	(42,14),
	(43,4),
	(43,25),
	(43,34),
	(44,4),
	(44,11),
	(44,14),
	(44,24),
	(45,8),
	(45,20),
	(45,24),
	(45,35),
	(45,36),
	(46,4),
	(46,14),
	(46,23),
	(46,24),
	(46,25),
	(47,2),
	(47,4),
	(47,7),
	(47,37),
	(48,2),
	(48,4),
	(48,7),
	(48,14),
	(49,2),
	(49,4),
	(49,7),
	(49,15),
	(49,39),
	(50,5),
	(50,7),
	(50,8),
	(50,14),
	(51,7),
	(51,14),
	(51,40),
	(51,41),
	(51,44),
	(52,4),
	(52,7),
	(52,10),
	(52,14),
	(52,27),
	(52,40),
	(52,43),
	(53,4),
	(53,5),
	(53,7),
	(53,8),
	(53,10),
	(53,11),
	(53,12),
	(53,14),
	(54,4),
	(54,7),
	(54,8),
	(54,20),
	(54,24),
	(54,27),
	(54,40),
	(54,41),
	(55,5),
	(55,7),
	(55,8),
	(55,18),
	(56,40),
	(57,40),
	(58,45),
	(58,46),
	(59,8),
	(59,28),
	(60,25),
	(60,28),
	(61,5),
	(61,8),
	(61,44),
	(62,2),
	(62,35),
	(63,4),
	(63,7),
	(63,27);

/*!40000 ALTER TABLE `download_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table downloads
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloads`;

CREATE TABLE `downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tags_relationship` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `time_download` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `downloads` WRITE;
/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;

INSERT INTO `downloads` (`id`, `title`, `image`, `slug`, `description`, `file`, `tags_relationship`, `active`, `likes`, `downloads`, `category_id`, `time_download`, `created_at`, `updated_at`)
VALUES
	(23,'Designer Desk Essentials','downloads/March2017/download-039.jpg','designer-desk-essentials','<p>We\'re happy to offer you this awesome PSD mock-up that you can use to create custom hero images for your portfolio page, profile cover and more. All objects, shadows and background are separated so you can build your own composition with ease.</p>\r\n<p>The package also includes 4 ready-made PSD scenes and 2 seamless wooden textures.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-039.zip','',1,0,0,6,'0000-00-00 00:00:00','2015-09-13 16:02:00','2017-03-15 02:25:59'),
	(24,'Free PSD: Ui Kit','downloads/March2017/download-001.jpg','free-psd-ui-kit','<p>Here\'s a UI Kit brought to you by&nbsp;David Minty. This UI Kit features a video player, graphs, forms, maps, and so much more. Feel free to download and use as you wish :)</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-001.zip','',1,0,1,7,'2015-10-20 13:27:21','2015-09-13 15:22:00','2017-03-17 06:51:35'),
	(25,'Stream UI PSD','downloads/March2017/download-002.jpg','stream-ui-psd','<p>Stream PSD theme for a video/episode type of website. Please download and use as needed. Looks best if you have the \"Gotham\" font family installed.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-002.zip','',1,0,0,2,'0000-00-00 00:00:00','2015-09-13 16:34:00','2017-03-15 02:49:04'),
	(26,'40 Flat Icon Pack','downloads/March2017/download-003.jpg','40-flat-icon-pack','<p>40 free flat Icons.&nbsp;They are part of Squid.ink Flat Icon Pack which are consistent pixel perfect icons ready to use. These&nbsp;icons have been specially built to match the current design trends and to help you expand on your projects.These beautiful icons are perfect to create a unique design experience.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-003.zip','',1,0,0,3,'0000-00-00 00:00:00','2015-09-13 16:45:00','2017-03-15 02:16:02'),
	(27,'Flat & Clean UI Kit','downloads/March2017/download-004.jpg','flat-clean-ui-kit','<p>A free retina ready UI Kit. Contains Calendars, Graphs, and a bunch of other cool looking cards to make an awesome dashboard.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-004.zip','',1,0,0,7,'0000-00-00 00:00:00','2015-09-13 16:53:00','2017-03-15 02:30:43'),
	(28,'Macbook Air Mockup','downloads/March2017/download-005.png','macbook-air-mockup','<p>Free Macbook air PSD mockup. This one is more summertime inspired, the mockup is fully editable and everything is on its own layer, from the effects to some of the details!</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-005.zip','',1,0,0,1,'0000-00-00 00:00:00','2015-09-13 16:56:00','2017-03-15 02:39:29'),
	(29,'Freelancer Site PSD','downloads/March2017/download-006.png','freelancer-site-psd','<p>Need to create a freelance site or something similar. Feel free to use this freelancer PSD in your project.</p>\r\n<p>Feel free to download .psd file!</p>\r\n<p>Enjoy!</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-006.zip','',1,0,0,2,'0000-00-00 00:00:00','2015-09-13 16:59:00','2017-03-15 02:35:21'),
	(30,'Startup Framework Presentation','downloads/March2017/download-007.png','startup-framework-presentation','<p>This file contains a lot of designs that you can use for your personal site, blog site, or any other site you can think of. Download and use these site designs for free.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-007.zip','',1,0,0,6,'0000-00-00 00:00:00','2015-09-14 00:17:00','2017-03-15 02:48:44'),
	(31,'Free Dashboard PSD','downloads/March2017/download-008.png','free-dashboard-psd','<p>Download this free dashboard. This dashboard design is built to display conversions. You can feel free to use this design for any kind of dashboard you would like.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-008.zip','',1,0,0,2,'0000-00-00 00:00:00','2015-09-14 00:24:00','2017-03-15 02:31:26'),
	(32,'E-commerce Free PSD','downloads/March2017/download-009.jpg','e-commerce-free-psd','<p>This is a clean and simple PSD design. You can download this file for free and use it on any site you would like.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-001.zip','',1,0,0,2,'0000-00-00 00:00:00','2015-09-14 00:26:00','2017-03-15 02:28:31'),
	(33,'Creative Portfolio Template','downloads/March2017/download-010.jpg','creative-portfolio-template','<p>This FREE PSD Resource comes from a&nbsp;Creative Portfolio Bootstrap 3 Template &ndash; REEN! It is pixel perfect (nearly ;), well organized in layers, based on the Bootstrap 3 Grid System and includes hover and on scroll states as well!</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-010.zip','',1,0,0,2,'0000-00-00 00:00:00','2015-09-14 00:34:00','2017-03-15 02:25:09'),
	(34,'Free Google Watch PSD','downloads/March2017/download-011.jpg','free-google-watch-psd','<p>Checkout this awesome Google watch. Download the free PSD and use as you wish :)</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-011.zip','',1,0,0,2,'0000-00-00 00:00:00','2015-09-14 00:36:00','2017-03-15 02:32:20'),
	(35,'Movie Store PSD','downloads/March2017/download-012.jpg','movie-store-psd','<p>Checkout this awesome movie store PSD. All the movies from Marvel studio and here is UI / UX of MovieStore for free PSD!</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-012.zip','',1,0,4,8,'0000-00-00 00:00:00','2015-09-14 00:37:00','2017-03-15 02:40:25'),
	(36,'Simple Admin Dashboard UI','downloads/March2017/download-013.jpg','simple-admin-dashboard-ui','<p>Checkout this awesome simple Dashboard UI. The fonts used are Melbourne and Montserat.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-013.zip','',1,0,0,2,'0000-00-00 00:00:00','2015-09-20 16:58:00','2017-03-15 02:47:58'),
	(37,'Gaming Landing Page','downloads/March2017/download-014.jpg','gaming-landing-page','<p>A really nice template that you can you use for gaming websites. This freebie was created by Aleksandar Nikcevic.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-014.zip','',1,0,1,8,'2015-10-13 19:33:35','2015-09-20 16:59:00','2017-03-15 02:36:05'),
	(38,'Dingole Web App','downloads/March2017/download-015.jpg','dingole-web-app','<p>Awesome free website PSD design that you can use for any web project. Please feel free to download and use as you wish.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-015.zip','',1,0,0,2,'0000-00-00 00:00:00','2015-09-20 17:00:00','2017-03-15 02:27:33'),
	(39,'Clean Macbook Air Mockup','downloads/March2017/download-016.jpg','clean-macbook-air-mockup','<p>Checkout this clean macbook air mockup. Simply open up the file, edit the smart object, save the smart object and you are good to go. Feel free to use as you wish.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-016.zip','',1,0,1,1,'2015-10-13 19:31:28','2015-09-22 01:05:00','2017-03-15 02:18:16'),
	(40,'2 Macbook Pro Mockups','downloads/March2017/download-017.jpg','2-macbook-pro-mockups','<p>Download these free macbook mockups. Here are 2 clean and ready to use macbook mockups to use for your design.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-017.zip','',1,0,2,1,'2015-10-13 19:29:10','2015-09-22 01:06:00','2017-03-15 02:15:49'),
	(41,'Fire UI Kit','downloads/March2017/download-018.jpg','fire-ui-kit','<p>Download this free UI Kit. Use any of these elements in your design. This UI kit will go nicely with any website.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-018.zip','',1,1,3,7,'2017-03-18 12:01:38','2015-09-22 01:07:00','2017-03-18 12:01:38'),
	(42,'Clean UI Kit','downloads/March2017/download-020.jpg','clean-ui-kit','<p>This is an awesome free, flat UI Kit that you can use for any of your projects.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-020.zip','',1,0,0,7,'0000-00-00 00:00:00','2015-10-14 01:27:00','2017-03-15 02:22:56'),
	(43,'Free Masonry PSD','downloads/March2017/download-019.jpg','free-masonry-psd','<p>You can use this masony PSD design to build your own website. Use this design for any project you would like.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-019.zip','',1,0,0,8,'0000-00-00 00:00:00','2015-10-14 01:29:00','2017-03-15 02:32:51'),
	(44,'Olivia Landing Page Template','downloads/March2017/download-021.jpg','olivia-landing-page-template','<p>Olivia is a vibrant landing page template that can be used for both your personal and client webpage. Many thanks to Shahin Srowar for this freebie.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-021.zip','',1,0,0,8,'0000-00-00 00:00:00','2015-10-14 14:30:00','2017-03-15 02:40:53'),
	(45,'Roady – Traveler Dashboard','downloads/March2017/download-022.jpg','roady-traveler-dashboard','<p>Roady is a vibrant dashboard made for travel statistics. The author of this resource is Max Dmytriv.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-022.zip','',1,0,0,8,'0000-00-00 00:00:00','2015-10-14 14:32:00','2017-03-15 02:42:30'),
	(46,'Arkenea Template','downloads/March2017/download-023.jpg','arkenea-template','<p>Arkenea is a template great for creating a website for a creative agency or for even a personal one. This freebie was created by Prashant Dwivedi.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-023.zip','',1,0,1,8,'2015-10-20 13:28:21','2015-10-14 14:33:00','2017-03-15 02:16:40'),
	(47,'Realistic iMac Mockup','downloads/March2017/download-024.jpg','realistic-imac-mockup','<p>This is a realistic iMac mockup in a warm environment. This resource was released by Kaushal Panchal.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-024.zip','',1,1,1,1,'2017-03-23 16:26:44','2015-10-21 04:00:00','2017-03-30 02:07:29'),
	(48,'Web Browser Mockup','downloads/March2017/download-025.jpg','web-browser-mockup','<p>Here is a great Safari browser mockup that you can use to display your apps or designs. Big thanks to Mats-Peter Forss for this freebie.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-025.zip','',1,0,0,1,'0000-00-00 00:00:00','2015-10-21 04:02:00','2017-03-15 02:50:45'),
	(49,'MacBook Workspace Mockup','downloads/March2017/download-026.jpg','macbook-workspace-mockup','<p>A high resolution Macbook mock-up that helps you showcase your apps and web design projects in a photorealistic environment. In order to display your design on the screen of the Macbook, just place it inside the smart object.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-026.zip','',1,0,0,1,'0000-00-00 00:00:00','2015-10-21 04:04:00','2017-03-15 02:40:00'),
	(50,'UI Kit Based On Bootstrap','downloads/March2017/download-027.jpg','ui-kit-based-on-bootstrap','<p>This UI Kit based on bootstrap 3 can be implemented into any web app or web project. Feel free to download it and use as you wish</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-027.zip','',1,1,3,7,'2017-03-24 12:38:59','2015-10-22 13:48:00','2017-03-24 12:38:59'),
	(51,'Craftyicons','downloads/March2017/download-028.jpg','craftyicons','<p>Craftyicons is a free set of line icons that you can use in any web app or web project</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-028.zip','',1,0,0,3,'0000-00-00 00:00:00','2015-10-22 13:49:00','2017-03-15 02:23:44'),
	(52,'Kvasir 180+ Icons','downloads/March2017/download-029.png','kvasir-180-icons','<p>Set of free flat icons. These awesome flat icons will add a nice touch to any project.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-029.zip','',1,0,1,3,'2015-10-23 01:45:12','2015-10-22 13:51:00','2017-03-15 02:38:34'),
	(53,'Just Another UI Kit','downloads/March2017/download-030.jpg','just-another-ui-kit','<p>Another clean UI Kit. This is a clean flat UI Kit PSD Download. This UI Kit has buttons, graphs, calendars, and much more.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-030.zip','',1,0,1,7,'2017-03-18 12:28:22','2015-10-22 14:18:00','2017-03-18 12:28:22'),
	(54,'170 Line Icons','downloads/March2017/download-031.png','170-line-icons','<p>Gorgeous set of 170 diverse line icons. This resource was handcrafted by Creative Boxx.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-031.zip','',1,0,0,3,'0000-00-00 00:00:00','2015-10-22 14:18:00','2017-03-15 02:14:44'),
	(55,'Uzers UI Kit','downloads/March2017/download-032.jpg','uzers-ui-kit','<p>This free UI Kit comes with many beatiful designs and elements for you to use in your next web project.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-032.zip','',1,0,1,7,'2017-03-18 21:00:29','2015-10-22 14:20:00','2017-03-18 21:00:29'),
	(56,'Birply icons set','downloads/March2017/download-033.jpg','birply-icons-set','<p>Birply is a set of 28 minimal but elegant icons created with Adobe Illustrator. Free Ai and SVG designed and released by Davide Pacilio.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-033.zip','',1,0,1,9,'2017-03-24 12:40:43','2015-10-22 15:29:00','2017-03-24 12:40:43'),
	(57,'Geometric weather icons','downloads/March2017/download-034.jpg','geometric-weather-icons','<p>A small set including 8 animated geometric weather icons created with Illustrator. Free AI and AEP (After Effects animation) by Hanna Jung.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-034.zip','',1,1,2,9,'2017-03-18 16:22:44','2015-10-22 15:30:00','2017-03-18 16:22:44'),
	(58,'6 vintage logo kit','downloads/March2017/download-035.jpg','6-vintage-logo-kit','<p>A vintage starter kit including 6 Logo / Insignias (AI), 12 Icons (AI), an ABR brush file for Photoshop to add texture to your final piece using the Eraser Tool.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-035.zip','',1,1,1,9,'2017-03-17 15:33:30','2015-10-22 15:31:00','2017-03-18 13:17:20'),
	(59,'Land.io – Landing page UI kit','downloads/March2017/download-036.jpg','landio-landing-page-ui-kit','<p>Land.io is a beautiful UI kit designed in Sketch for creating landing pages. It includes many useful elements ready to be reused in your projects. Freebie created and released by Peter Finlan.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-036.zip','',1,0,1,5,'2017-03-20 14:14:02','2015-10-22 15:36:00','2017-03-20 14:14:02'),
	(60,'Sedna – One page website template','downloads/March2017/download-037.jpg','sedna-one-page-website-template','<p>Sedna is a responsive one page website template designed with Sketch and coded with the latest web technologies (HTML5/CSS3). Freebie released by Peter Finlan.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-037.zip','',1,2,5,5,'2017-03-20 14:06:29','2015-10-22 15:37:00','2017-03-20 14:06:29'),
	(61,'Free UI kit for Sketch','downloads/March2017/download-038.jpg','free-ui-kit-for-sketch','<p>A free UI kit for Sketch including some generic, widget looking, components you can use for your next project. A freebie released by Apostol Voicu.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-038.zip','',1,1,1,5,'2017-03-20 14:10:49','2015-10-22 15:38:00','2017-03-24 17:23:41'),
	(62,'Instant Message Chat Dashboard','downloads/March2017/NQGD0YaC0Itk8Af7zdqr.png','instant-message-chat-dashboard','<p>Checkout this awesome freebie PSD of an instant message chat dashboard.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-040.zip',NULL,1,0,1,1,'2017-03-24 17:44:40','2017-03-24 17:44:13','2017-03-24 17:44:40'),
	(63,'Pex Free PSD Template','downloads/March2017/Mwkfi3RuACN6zAqD8NdW.jpg','pex-free-psd-template','<p>This awesome website design is called Plex. You can download this design for free and use it in any web application or web project.</p>','https://s3-us-west-1.amazonaws.com/getpixelapp/downloads/download-041.zip',NULL,1,0,0,2,'2017-03-24 11:17:37','2017-03-24 18:17:37','2017-03-24 18:17:37');

/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_general_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','/admin','_self','voyager-boat',NULL,NULL,1,'2017-02-10 14:18:17','2017-02-10 14:18:17',NULL,NULL),
	(2,1,'Media','/admin/media','_self','voyager-images',NULL,NULL,7,'2017-02-10 14:18:17','2017-02-10 15:00:40',NULL,NULL),
	(3,1,'Posts','/admin/posts','_self','voyager-news',NULL,NULL,5,'2017-02-10 14:18:17','2017-03-15 01:53:14',NULL,NULL),
	(4,1,'Users','/admin/users','_self','voyager-person',NULL,NULL,8,'2017-02-10 14:18:17','2017-02-10 15:00:40',NULL,NULL),
	(5,1,'Categories','/admin/categories','_self','voyager-categories',NULL,NULL,3,'2017-02-10 14:18:17','2017-03-15 01:53:14',NULL,NULL),
	(6,1,'Pages','/admin/pages','_self','voyager-file-text',NULL,NULL,6,'2017-02-10 14:18:17','2017-03-15 01:53:14',NULL,NULL),
	(7,1,'Roles','/admin/roles','_self','voyager-lock',NULL,NULL,9,'2017-02-10 14:18:17','2017-02-10 15:00:40',NULL,NULL),
	(8,1,'Tools','','_self','voyager-tools',NULL,NULL,10,'2017-02-10 14:18:17','2017-02-10 15:00:40',NULL,NULL),
	(9,1,'Menu Builder','/admin/menus','_self','voyager-list',NULL,8,1,'2017-02-10 14:18:17','2017-02-10 14:52:56',NULL,NULL),
	(10,1,'Database','/admin/database','_self','voyager-data',NULL,8,2,'2017-02-10 14:18:17','2017-02-10 14:52:56',NULL,NULL),
	(11,1,'Settings','/admin/settings','_self','voyager-settings',NULL,NULL,11,'2017-02-10 14:18:17','2017-02-10 15:00:40',NULL,NULL),
	(12,1,'Tags','/admin/tags','_self','voyager-tag','#000000',NULL,4,'2017-02-10 14:52:48','2017-03-15 01:53:14',NULL,NULL),
	(13,1,'Downloads','/admin/downloads','_self','voyager-cloud-download','#000000',NULL,2,'2017-02-10 15:00:35','2017-02-10 15:00:40',NULL,NULL),
	(14,2,'Home','/','_self',NULL,'#000000',NULL,1,'2017-03-16 16:20:06','2017-03-16 16:21:39',NULL,''),
	(15,2,'Mockups','/category/mockups','_self',NULL,'#000000',NULL,2,'2017-03-16 16:20:22','2017-03-16 16:21:39',NULL,''),
	(16,2,'PSDs','/category/psds','_self',NULL,'#000000',NULL,3,'2017-03-16 16:21:00','2017-03-16 16:21:39',NULL,''),
	(17,2,'UI Kits','/category/ui-kits','_self',NULL,'#000000',16,1,'2017-03-16 16:21:21','2017-03-16 16:21:39',NULL,''),
	(18,2,'Websites','/category/websites','_self',NULL,'#000000',16,2,'2017-03-16 16:21:34','2017-03-16 16:21:42',NULL,''),
	(19,2,'Icons','/category/icons','_self',NULL,'#000000',NULL,4,'2017-03-16 16:22:04','2017-03-16 16:24:06',NULL,''),
	(20,2,'Vectors','/category/vectors','_self',NULL,'#000000',NULL,5,'2017-03-16 16:22:43','2017-03-16 16:24:06',NULL,''),
	(21,2,'Illustrator','/category/illustrator','_self',NULL,'#000000',20,1,'2017-03-16 16:23:36','2017-03-16 16:24:06',NULL,''),
	(22,2,'Sketch','/category/sketch','_self',NULL,'#000000',20,2,'2017-03-16 16:23:47','2017-03-16 16:24:09',NULL,''),
	(23,2,'Other','/category/other','_self',NULL,'#000000',NULL,6,'2017-03-16 16:23:59','2017-03-16 16:24:07',NULL,''),
	(24,3,'Latest','/latest','_self','fa fa-calendar','#000000',NULL,1,'2017-03-22 23:35:18','2017-03-23 16:05:42',NULL,''),
	(25,3,'Popular','/popular','_self','fa fa-star','#000000',NULL,2,'2017-03-22 23:35:35','2017-03-23 16:05:42',NULL,''),
	(26,3,'About','/page/about','_self','fa fa-question-circle','#000000',NULL,4,'2017-03-22 23:37:16','2017-03-23 16:05:42',NULL,''),
	(27,3,'Contact','/page/contact','_self','fa fa-envelope','#000000',NULL,5,'2017-03-22 23:37:57','2017-03-23 16:05:42',NULL,''),
	(28,4,'Admin','/admin','_self',NULL,'#000000',NULL,16,'2017-03-22 23:57:57','2017-03-22 23:57:57',NULL,''),
	(29,4,'About','/page/about','_self',NULL,'#000000',NULL,17,'2017-03-22 23:58:05','2017-03-22 23:58:05',NULL,''),
	(30,4,'Contact','/page/contact','_self',NULL,'#000000',NULL,18,'2017-03-22 23:58:15','2017-03-22 23:58:15',NULL,''),
	(31,3,'Blog','/blog','_self','fa fa-newspaper-o','#000000',NULL,3,'2017-03-23 16:05:37','2017-03-23 16:05:42',NULL,'');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2017-02-10 14:18:17','2017-02-10 14:18:17'),
	(2,'main','2017-03-16 16:13:46','2017-03-16 16:13:46'),
	(3,'top_bar','2017-03-22 23:34:05','2017-03-22 23:34:05'),
	(4,'footer_menu','2017-03-22 23:56:50','2017-03-22 23:56:50');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `excerpt` text COLLATE utf8_general_ci,
  `body` text COLLATE utf8_general_ci,
  `image` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `meta_description` text COLLATE utf8_general_ci,
  `meta_keywords` text COLLATE utf8_general_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_general_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`)
VALUES
	(2,1,'Contact','Learn how to get ahold of us in the contact page.','<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\">Thanks for visiting the contact page. We love hearing from our users and we love to help out in any way that we can. If you have any general questions about your account or even issues that you may have with the site please contact us below:</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #337ab7; text-decoration-line: none;\" href=\"mailto:email@email.com\">email@email.com</a></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\">On the other hand if you would like to contact us with a suggested product that you think would be amazing on our site, please contact us by sending an email to:</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #337ab7; text-decoration-line: none;\" href=\"mailto:suggestions@email.com\">suggestions@email.com</a></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\">If you have any legal matter that you would like to contact us about, please send an email to:</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #337ab7; text-decoration-line: none;\" href=\"mailto:legal@email.com\">legal@email.com</a></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\">Thanks again and we look forward to hearing from you.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;\">- The Team</p>',NULL,'contact','Contact Us','contact, contact us page','ACTIVE','2017-03-19 13:40:44','2017-03-19 13:40:44'),
	(3,1,'About',NULL,'<p>Pixel Premium Download script is a script that you can install on your server and offer downloads including PSD\'s, Vector Files, Illustrator Files, Sketch Files, Icons, and any other kind of download content. You can even use Pixel as a wallpaper site or any other download site you can think of.</p>\r\n<p><img src=\"/storage/settings/March2017/pg8F0yPyOFqAsimH60eTa5fWYibCLv165R4ywZBW.jpeg\" alt=\"\" width=\"1500\" height=\"1213\" /></p>',NULL,'about','About Us','about','ACTIVE','2017-03-19 13:55:25','2017-03-19 13:55:25');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



# Dump of table permission_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_groups`;

CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`)
VALUES
	(1,'browse_admin','admin','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(2,'browse_database','admin','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(3,'browse_media','admin','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(4,'browse_settings','admin','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(5,'browse_menus','menus','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(6,'read_menus','menus','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(7,'edit_menus','menus','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(8,'add_menus','menus','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(9,'delete_menus','menus','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(10,'browse_pages','pages','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(11,'read_pages','pages','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(12,'edit_pages','pages','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(13,'add_pages','pages','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(14,'delete_pages','pages','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(15,'browse_roles','roles','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(16,'read_roles','roles','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(17,'edit_roles','roles','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(18,'add_roles','roles','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(19,'delete_roles','roles','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(20,'browse_users','users','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(21,'read_users','users','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(22,'edit_users','users','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(23,'add_users','users','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(24,'delete_users','users','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(25,'browse_posts','posts','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(26,'read_posts','posts','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(27,'edit_posts','posts','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(28,'add_posts','posts','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(29,'delete_posts','posts','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(30,'browse_categories','categories','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(31,'read_categories','categories','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(32,'edit_categories','categories','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(33,'add_categories','categories','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(34,'delete_categories','categories','2017-02-10 14:18:17','2017-02-10 14:18:17',NULL),
	(35,'browse_tags','tags','2017-02-10 14:36:51','2017-02-10 14:36:51',NULL),
	(36,'read_tags','tags','2017-02-10 14:36:51','2017-02-10 14:36:51',NULL),
	(37,'edit_tags','tags','2017-02-10 14:36:51','2017-02-10 14:36:51',NULL),
	(38,'add_tags','tags','2017-02-10 14:36:51','2017-02-10 14:36:51',NULL),
	(39,'delete_tags','tags','2017-02-10 14:36:51','2017-02-10 14:36:51',NULL),
	(40,'browse_downloads','downloads','2017-02-10 15:00:12','2017-02-10 15:00:12',NULL),
	(41,'read_downloads','downloads','2017-02-10 15:00:12','2017-02-10 15:00:12',NULL),
	(42,'edit_downloads','downloads','2017-02-10 15:00:12','2017-02-10 15:00:12',NULL),
	(43,'add_downloads','downloads','2017-02-10 15:00:12','2017-02-10 15:00:12',NULL),
	(44,'delete_downloads','downloads','2017-02-10 15:00:12','2017-02-10 15:00:12',NULL);

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_general_ci NOT NULL,
  `body` text COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `meta_description` text COLLATE utf8_general_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_general_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_general_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,'Cool 8-bit Designs','Cool 8-bit Designs','Checkout these awesome 8-bit designs.','<p>It\'s always fun looking at some retro 8-bit designs. Hopefully these designs will help inspire you to create the next greatest 8-bit designs. The 8-bit designs can take us back to a simpler time.</p>\r\n<p>Checkout these awesome and cool looking 8-bit design inspirations.</p>\r\n<p><img src=\"/storage/posts/March2017/IxbiLGyPT5Bg2tFmD6pQ.png\" alt=\"\" width=\"800\" height=\"600\" /></p>\r\n<p><img src=\"/storage/posts/March2017/RqN7cspjD2XatKJfdZnw.jpg\" alt=\"\" width=\"800\" height=\"600\" /></p>\r\n<p><img src=\"/storage/posts/March2017/HZB1oAvYOhpam4BZKDzT.png\" alt=\"\" width=\"800\" height=\"600\" /></p>\r\n<p><img src=\"/storage/posts/March2017/B368lE6i3an5gUll74YITToso4kBLKHQZfGs4qBc.gif\" alt=\"\" width=\"924\" height=\"350\" /></p>\r\n<p><img src=\"/storage/posts/March2017/bF76tV9AGZoqg7sPjQ6r.png\" alt=\"\" width=\"100%\" height=\"auto\" /></p>\r\n<p>Hope you enjoyed this 8bit design roundup :)</p>','posts/March2017/bE9xDEocN7Le4DwbDkAD.jpg','cool-8-bit-designs','8-bit designs','8-bit, 8bit designs','PUBLISHED',0,'2017-02-10 14:18:18','2017-03-24 16:12:10'),
	(3,1,NULL,'Awesome Designs','Awesome Designs','This is a sample post to show you a bit of how pixel posts work.','<p>This is just a sample post to show you some of the functionality of the pixel app. You can include any number of pictures and content in the post of your body. You can also include Gifs or videos :)</p>\r\n<p><img src=\"http://media0.giphy.com/media/QIebXZSiWhgwE/200w.gif\" /></p>','posts/March2017/2WdhTqq06yQa7kgDtprg.jpg','awesome-designs','This is the meta description for the post','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-02-10 14:18:18','2017-03-24 15:56:54'),
	(6,1,NULL,'PSD Perspectives','PSD Perspectives','Checkout this awesome PSD perspective plugin.','<p>Have you ever wanted to create those awesome perspective mockups. Well, luckily enough this can be accomplished really easy by using this Photoshop plugin. Check it out at:&nbsp;<a href=\"http://perspectivemockups.com/\" target=\"_blank\" rel=\"noopener noreferrer\">http://perspectivemockups.com/</a></p>\r\n<p>Using this mockup plugin you can easily select an action or a perspective you want to use and easily apply that to any design. This tool makes it easy to show your designs in a crisp and clean perspective.</p>\r\n<p><img src=\"/storage/posts/March2017/RFSsLPxCEZEhn18nZOHm.jpg\" width=\"1180\" height=\"711\" /></p>\r\n<p>So make sure to head over to&nbsp;<a href=\"http://perspectivemockups.com/\" target=\"_blank\" rel=\"noopener noreferrer\">http://perspectivemockups.com/</a>&nbsp;and show off your designs in a&nbsp;beautiful perspective layout.</p>','posts/March2017/P5S7q4ooGAY1HpHdCYUN.jpg','psd-perspectives','PSD Persepctives','psd perspectives','PUBLISHED',0,'2017-03-24 13:16:18','2017-03-24 13:16:18'),
	(7,1,NULL,'5 Awesome Macbook pro Mockups','Macbook Pro Mockups','Checkout these awesome Macbook Pro Mockup Freebies','<p>We\'ve got a round up of some awesome and FREE Macbook pro Mockups. Be sure to checkout each of these free downloads. You can download the mockup and put your design in the Macbook screen. Now you can display your beautiful designs in a beautiful Macbook Pro Mockup.</p>\r\n<hr />\r\n<h3>1. <a href=\"https://dribbble.com/shots/3225331-Elegant-Mockup-Freebie\" target=\"_blank\" rel=\"noopener noreferrer\">Elegant Mockup Freebie</a></h3>\r\n<p><a href=\"https://dribbble.com/shots/3225331-Elegant-Mockup-Freebie\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"/storage/posts/March2017/eoENQXSLoVjYiQr9OVSQ.jpg\" alt=\"\" width=\"800\" height=\"600\" /></a></p>\r\n<h3>2. <a href=\"https://dribbble.com/shots/1178502-Home-Page-WIP\" target=\"_blank\" rel=\"noopener noreferrer\">Clean Homepage Mockup</a></h3>\r\n<p><a href=\"https://dribbble.com/shots/1178502-Home-Page-WIP\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"/storage/posts/March2017/YgebqnO52OGm03iub66W.png\" alt=\"\" width=\"800\" height=\"600\" /></a></p>\r\n<h3>3. <a href=\"https://dribbble.com/shots/2747917-Free-mockup-MacBook-pro-Retina-on-wooden-table\" target=\"_blank\" rel=\"noopener noreferrer\">Macbook Pro Retina on Wooden Table</a></h3>\r\n<p><a href=\"https://dribbble.com/shots/2747917-Free-mockup-MacBook-pro-Retina-on-wooden-table\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"/storage/posts/March2017/ZHfEcaYDKkcyW0k169cu.jpg\" alt=\"\" width=\"800\" height=\"600\" /></a></p>\r\n<h3>4. <a href=\"https://dribbble.com/shots/3164657-Freebie-Macbook-On-Table-Mockup\" target=\"_blank\" rel=\"noopener noreferrer\">Macbook on Table Mockup</a></h3>\r\n<p><a href=\"https://dribbble.com/shots/3164657-Freebie-Macbook-On-Table-Mockup\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"/storage/posts/March2017/mg6gUlabmiHgKtAeqzKv.jpg\" alt=\"\" width=\"800\" height=\"600\" /></a></p>\r\n<h3>5. <a href=\"https://dribbble.com/shots/2520819-FREE-Macbook-Pro-Mock-Up\" target=\"_blank\" rel=\"noopener noreferrer\">Macbook Pro Mockup Free</a></h3>\r\n<p><a href=\"https://dribbble.com/shots/2520819-FREE-Macbook-Pro-Mock-Up\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"/storage/posts/March2017/iuIzLVkuputlmcs66mp8.jpg\" alt=\"\" width=\"800\" height=\"600\" /></a></p>\r\n<p>Hope you\'ve enjoyed this round up of Macbook Pro freebies.</p>','posts/March2017/iuTUtqGixCwaCGRJg6Wn.jpg','5-awesome-macbook-pro-mockups','Macbook Pro Mockup Freebies','Macbook Pro Mockup Freebies','PUBLISHED',0,'2017-03-24 13:24:12','2017-03-24 13:31:27'),
	(8,1,NULL,'Flat Browser Mockups','Flat Browser Mockup','Checkout these awesome Flat Browser Mockups.','<p>Here is a list of some flat browser mockups that you can use for your next project. Sometimes the cleanest designs need a nice flat browser presentation. Checkout these awesome Free mockups that you can use below:</p>\r\n<h3>1. <a href=\"https://dribbble.com/shots/1516555-Flat-Browser-Mockup\" target=\"_blank\" rel=\"noopener noreferrer\">Flat Browser Mockup</a></h3>\r\n<p><a href=\"https://dribbble.com/shots/1516555-Flat-Browser-Mockup\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"/storage/posts/March2017/VvFrmIDAEhbYfIjNmjqU.jpg\" alt=\"\" width=\"800\" height=\"600\" /></a></p>\r\n<h3>2. <a href=\"https://dribbble.com/shots/2642270-Browser-Mockup\" target=\"_blank\" rel=\"noopener noreferrer\">Browser Mockup</a></h3>\r\n<p><a href=\"https://dribbble.com/shots/2642270-Browser-Mockup\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"/storage/posts/March2017/trd4jYAVwLD6hqYcQSr5.png\" alt=\"\" width=\"800\" height=\"600\" /></a></p>\r\n<h3>3. <a href=\"https://dribbble.com/shots/1718011-Freebie-Flat-Browser-Mockup\" target=\"_blank\" rel=\"noopener noreferrer\">Freebie - Flat Browser Mockup</a></h3>\r\n<p><a href=\"https://dribbble.com/shots/1718011-Freebie-Flat-Browser-Mockup\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"/storage/posts/March2017/l7B301v5J7POd4BMtqug.png\" alt=\"\" width=\"800\" height=\"600\" /></a></p>\r\n<p>Hope you found this list useful :) Thanks.</p>','posts/March2017/l364YJt13wiDvxaatJEW.jpg','flat-browser-mockups','Flat Browser Mockup','Flat Browser Mockup','PUBLISHED',0,'2017-03-24 15:51:01','2017-03-24 15:51:01');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2017-02-10 14:18:17','2017-02-10 14:18:17'),
	(2,'user','Normal User','2017-02-10 14:18:17','2017-02-10 14:18:17');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `value` text COLLATE utf8_general_ci NOT NULL,
  `details` text COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`)
VALUES
	(1,'title','Site Title','Pixel','','text',1),
	(2,'description','Site Description','Premium Download Script','','text',2),
	(3,'logo','Site Logo','settings/March2017/zeP9ue72q0eUVn9gSyiN.png','','image',3),
	(4,'admin_bg_image','Admin Background Image','settings/March2017/N0NkFcptuoTD6BtnEfUT.jpg','','image',9),
	(5,'admin_title','Admin Title','Pixel','','text',4),
	(6,'admin_description','Admin Description','Premium Download Script','','text',5),
	(7,'admin_loader','Admin Loader','settings/March2017/9WEZgxLhvw8PYFuqWE2i.png','','image',6),
	(8,'admin_icon_image','Admin Icon Image','settings/March2017/FXNpBnDqMWPltKiRatTn.png','','image',7),
	(9,'google_analytics_client_id','Google Analytics Client ID','','','text',9),
	(10,'homepage_headline','Homepage Headline','Your Headline for your Site Here','{}','text',10),
	(11,'homepage_subheadline','Homepage Subheadline','And your sub-headline will go right here. Perhaps a short slogan','{}','text',11),
	(12,'disqus','Disqus Comments Website Name (ex. website.disqus.com)','pixel2','{}','text',12),
	(13,'download_wait','How long should the user wait before the download begins (in seconds)','5','{}','text',13),
	(14,'seo_keywords','SEO keywords for your site (comma separated)','downloads, psd, vectors, mockups, icons, ui kits, web design, design files, logos, graphics, file downloads','{}','text',14),
	(15,'twitter','Twitter Username','thedevdojo','{}','text',24),
	(16,'og_image','Social Share Image (this will be the image that will be shown when users share your homepage)','','{}','image',15),
	(17,'og_image_width','Social Share Image Width (in pixels)','','{}','text',16),
	(18,'og_image_height','Social Share Image Height (in pixels)','','{}','text',17),
	(19,'demo_mode','Demo Mode','0','{}','checkbox',18),
	(20,'theme','Theme','default','{\"options\":{\"default\":\"default\",\"material\":\"material\"}}','select_dropdown',19),
	(21,'favicon','Favicon','settings/March2017/DeIfKXcuemggFu6hOOSR.png','{}','image',22),
	(22,'material_header_bg','Theme Material (Header Image Background)','settings/March2017/FXdmZjgPe6tQfmpkfTYK.jpg','{}','image',21),
	(23,'facebook','Facebook page (don\'t include https://www.facebook.com/, just the name)','thedevdojo','{}','text',23),
	(24,'googleplus','Google Plus Page (example \'+devdojo\')','+devdojo','{}','text',25),
	(25,'color_scheme','Color Scheme','dark','{\r\n    \"default\": \"light\",\r\n    \"options\": {\r\n        \"light\": \"Light\",\r\n        \"dark\": \"Dark\"\r\n    }\r\n}','select_dropdown',20);

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'hero image','hero-image','2017-03-14 16:47:13','2017-03-14 16:50:47'),
	(2,'mock-up','mock-up','2017-03-14 16:51:12','2017-03-14 16:51:12'),
	(3,'photo','photo','2017-03-14 16:51:26','2017-03-14 16:51:26'),
	(4,'psd','psd','2017-03-14 16:51:52','2017-03-14 16:51:52'),
	(5,'ui kit','ui-kit','2017-03-14 16:52:42','2017-03-14 16:52:42'),
	(6,'interface','interface','2017-03-14 16:52:58','2017-03-14 16:52:58'),
	(7,'freebie','freebie','2017-03-14 16:53:14','2017-03-14 16:53:14'),
	(8,'ui','ui','2017-03-14 16:53:30','2017-03-14 16:53:30'),
	(9,'stream','stream','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(10,'flat','flat','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(11,'web','web','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(12,'mobile','mobile','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(13,'profile','profile','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(14,'free','free','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(15,'macbook','macbook','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(16,'work','work','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(17,'clean','clean','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(18,'minimal','minimal','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(19,'freelancer','freelancer','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(20,'ux','ux','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(21,'e-commerce','e-commerce','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(22,'shop','shop','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(23,'webdesign','webdesign','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(24,'design','design','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(25,'website','website','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(26,'bootstrap','bootstrap','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(27,'download','download','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(28,'template','template','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(29,'game','game','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(30,'events','events','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(31,'activities','activities','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(32,'macbook air','macbook-air','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(33,'fire','fire','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(34,'masonry','masonry','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(35,'dashboard','dashboard','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(36,'app design','app-design','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(37,'imac','imac','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(38,'photoshop','photoshop','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(39,'desktop','desktop','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(40,'icons','icons','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(41,'icon set','icon-set','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(43,'ios','ios','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(44,'vector','vector','2017-03-14 16:53:50','2017-03-14 16:53:50'),
	(45,'logo','logo','2017-03-15 01:50:15','2017-03-15 01:50:15'),
	(46,'vintage','vintage','2017-03-15 01:50:24','2017-03-15 01:50:24');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `value` text COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_general_ci DEFAULT 'users/default.png',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `role_id`)
VALUES
	(1,'Admin','admin@admin.com','$2y$10$wg8WKccnIPSbpVGentAXSeBrdGpIoDGk6/Gdq0/wLLQKNECP5yy/K','kRLFqF8zm9D76N7Z3IiuKHEoIErEbaEbE47kYlG5zXMhzOSTDYLtBeCQSKeQ','2017-02-10 14:18:17','2017-02-10 14:18:17','users/default.png',1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
