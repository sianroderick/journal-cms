# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.15-0ubuntu0.16.04.1-log)
# Database: journal_cms
# Generation Time: 2016-10-04 09:12:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table file_managed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `file_managed`;

CREATE TABLE `file_managed` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `uid` int(10) unsigned DEFAULT NULL COMMENT 'The ID of the target entity.',
  `filename` varchar(255) DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `filemime` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `filesize` bigint(20) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `changed` int(11) NOT NULL,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `file_field__uuid__value` (`uuid`),
  KEY `file_field__uid__target_id` (`uid`),
  KEY `file_field__uri` (`uri`(191)),
  KEY `file_field__status` (`status`),
  KEY `file_field__changed` (`changed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for file entities.';

LOCK TABLES `file_managed` WRITE;
/*!40000 ALTER TABLE `file_managed` DISABLE KEYS */;

INSERT INTO `file_managed` (`fid`, `uuid`, `langcode`, `uid`, `filename`, `uri`, `filemime`, `filesize`, `status`, `created`, `changed`)
VALUES
	(1,'36501984-55df-4211-8c64-4264ca8852c5','en',NULL,'plant-biology_1.png',X'7075626C69633A2F2F706C616E742D62696F6C6F67795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(2,'688800d5-8a02-44a1-bfe0-c6b24ff7b7f1','en',NULL,'neuroscience_1.png',X'7075626C69633A2F2F6E6575726F736369656E63655F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(3,'1f6e6804-a603-4400-8ac9-16bc2bdc2148','en',NULL,'microbiology-and-infectious-disease_1.png',X'7075626C69633A2F2F6D6963726F62696F6C6F67792D616E642D696E66656374696F75732D646973656173655F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(4,'8ac3d29e-0b53-4bc0-82fc-a53fead487cc','en',NULL,'immunology_1.png',X'7075626C69633A2F2F696D6D756E6F6C6F67795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(5,'6c03a060-d096-4b4a-9f9f-704a223d3e7c','en',NULL,'human-biology-and-medicine_1.png',X'7075626C69633A2F2F68756D616E2D62696F6C6F67792D616E642D6D65646963696E655F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(6,'16f888f0-59b2-4138-ac9a-6b4b4bf57dae','en',NULL,'genomics-and-evolutionary-biology_1.png',X'7075626C69633A2F2F67656E6F6D6963732D616E642D65766F6C7574696F6E6172792D62696F6C6F67795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(7,'2b86d897-2e0d-4e60-9950-8a80701ab43d','en',NULL,'genes-and-chromosomes_1.png',X'7075626C69633A2F2F67656E65732D616E642D6368726F6D6F736F6D65735F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(8,'6d4983e8-2ed1-4d46-89fe-7c86bc99a95f','en',NULL,'epidemiology-and-global-health_1.png',X'7075626C69633A2F2F65706964656D696F6C6F67792D616E642D676C6F62616C2D6865616C74685F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(9,'b0ee4ca4-c5d0-4067-af0e-ef5332ff5c81','en',NULL,'ecology_1.png',X'7075626C69633A2F2F65636F6C6F67795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(10,'fce8f434-ba9d-4ece-8f40-36603f0819f5','en',NULL,'developmental-biology-and-stem-cells_1.png',X'7075626C69633A2F2F646576656C6F706D656E74616C2D62696F6C6F67792D616E642D7374656D2D63656C6C735F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(11,'8d16c0f7-c224-480f-8ffa-f4a4098757db','en',NULL,'computational-and-systems-biology_1.png',X'7075626C69633A2F2F636F6D7075746174696F6E616C2D616E642D73797374656D732D62696F6C6F67795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(12,'2ffa9a29-9fad-4063-bad1-366f83e8b1a0','en',NULL,'cell-biology_1.png',X'7075626C69633A2F2F63656C6C2D62696F6C6F67795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(13,'4460d3c3-9059-46e3-b4b5-b9049143c4e5','en',NULL,'cancer-biology_1.png',X'7075626C69633A2F2F63616E6365722D62696F6C6F67795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(14,'05d61f72-4b71-4ee8-899d-5f4db9acba75','en',NULL,'biophysics-and-structural-biology_1.png',X'7075626C69633A2F2F62696F706879736963732D616E642D7374727563747572616C2D62696F6C6F67795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(15,'aebe94d3-be9c-45d9-a86a-7c6383d73173','en',NULL,'biochemistry_1.png',X'7075626C69633A2F2F62696F6368656D69737472795F312E706E67','image/png',3118010,1,1474380963,1474380963),
	(16,'02c3df03-a394-4149-a8cc-47a4c036dd47','en',NULL,'plant-biology_2.png',X'7075626C69633A2F2F706C616E742D62696F6C6F67795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(17,'2421f04c-5b23-4c8c-9f66-b855acc95089','en',NULL,'neuroscience_2.png',X'7075626C69633A2F2F6E6575726F736369656E63655F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(18,'c3501c99-d369-4b2c-aaa6-b683936aa3d6','en',NULL,'microbiology-and-infectious-disease_2.png',X'7075626C69633A2F2F6D6963726F62696F6C6F67792D616E642D696E66656374696F75732D646973656173655F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(19,'4551ebac-782b-4a4a-bbdc-fca6ce3da09e','en',NULL,'immunology_2.png',X'7075626C69633A2F2F696D6D756E6F6C6F67795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(20,'d1ae43bd-3e90-4676-8c6b-25d7b700633e','en',NULL,'human-biology-and-medicine_2.png',X'7075626C69633A2F2F68756D616E2D62696F6C6F67792D616E642D6D65646963696E655F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(21,'de271a6c-16f4-451f-aa15-51604a9b3b20','en',NULL,'genomics-and-evolutionary-biology_2.png',X'7075626C69633A2F2F67656E6F6D6963732D616E642D65766F6C7574696F6E6172792D62696F6C6F67795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(22,'ec272d2c-c422-4e42-bc2e-27d9ce72b96f','en',NULL,'genes-and-chromosomes_2.png',X'7075626C69633A2F2F67656E65732D616E642D6368726F6D6F736F6D65735F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(23,'723e9285-d8f5-476d-bbc5-8a61472e57f7','en',NULL,'epidemiology-and-global-health_2.png',X'7075626C69633A2F2F65706964656D696F6C6F67792D616E642D676C6F62616C2D6865616C74685F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(24,'a0e5564d-4245-4a1f-b04a-744cee3bb712','en',NULL,'ecology_2.png',X'7075626C69633A2F2F65636F6C6F67795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(25,'ff94ae2a-0bbf-47e1-b9c2-15cbb7269945','en',NULL,'developmental-biology-and-stem-cells_2.png',X'7075626C69633A2F2F646576656C6F706D656E74616C2D62696F6C6F67792D616E642D7374656D2D63656C6C735F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(26,'7700a398-e49d-4c12-8028-fda07dd9f417','en',NULL,'computational-and-systems-biology_2.png',X'7075626C69633A2F2F636F6D7075746174696F6E616C2D616E642D73797374656D732D62696F6C6F67795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(27,'cfb85fc4-d476-4a69-9f54-582e1fe7b0a0','en',NULL,'cell-biology_2.png',X'7075626C69633A2F2F63656C6C2D62696F6C6F67795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(28,'86b6f897-8994-48fa-9aac-fc56c0add793','en',NULL,'cancer-biology_2.png',X'7075626C69633A2F2F63616E6365722D62696F6C6F67795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(29,'58b4f6e4-2cee-454b-8121-9e13d8f10448','en',NULL,'biophysics-and-structural-biology_2.png',X'7075626C69633A2F2F62696F706879736963732D616E642D7374727563747572616C2D62696F6C6F67795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(30,'0556812d-26c9-4c7a-9ef8-c817d9661f07','en',NULL,'biochemistry_2.png',X'7075626C69633A2F2F62696F6368656D69737472795F322E706E67','image/png',3118010,1,1475526547,1475526547),
	(31,'3b5eaa1d-e635-4f80-afb7-42c90d07d960','en',NULL,'plant-biology_3.png',X'7075626C69633A2F2F706C616E742D62696F6C6F67795F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(32,'8b5e1cc0-2a2c-4731-8784-38e95a5817e5','en',NULL,'neuroscience_3.png',X'7075626C69633A2F2F6E6575726F736369656E63655F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(33,'bd2e10c4-e818-4305-89ac-f9aafd6bb2fa','en',NULL,'microbiology-and-infectious-disease_3.png',X'7075626C69633A2F2F6D6963726F62696F6C6F67792D616E642D696E66656374696F75732D646973656173655F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(34,'186d8a87-8fbf-4104-b428-41d9db508be1','en',NULL,'immunology_3.png',X'7075626C69633A2F2F696D6D756E6F6C6F67795F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(35,'21bcd72d-3c2c-40c5-b7a2-c56101762621','en',NULL,'human-biology-and-medicine_3.png',X'7075626C69633A2F2F68756D616E2D62696F6C6F67792D616E642D6D65646963696E655F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(36,'3343a9d2-5ebe-42f8-95aa-ffe7ab82d671','en',NULL,'genomics-and-evolutionary-biology_3.png',X'7075626C69633A2F2F67656E6F6D6963732D616E642D65766F6C7574696F6E6172792D62696F6C6F67795F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(37,'fbf0a269-a2ac-438e-ad6f-d87afb21961f','en',NULL,'genes-and-chromosomes_3.png',X'7075626C69633A2F2F67656E65732D616E642D6368726F6D6F736F6D65735F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(38,'a1fd2efa-d068-43dc-87a0-5cbf5e8510f9','en',NULL,'epidemiology-and-global-health_3.png',X'7075626C69633A2F2F65706964656D696F6C6F67792D616E642D676C6F62616C2D6865616C74685F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(39,'77d9d739-a750-46b1-ae91-c4972d974c1b','en',NULL,'ecology_3.png',X'7075626C69633A2F2F65636F6C6F67795F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(40,'41666497-9b08-49ae-9d84-67bb813d470f','en',NULL,'developmental-biology-and-stem-cells_3.png',X'7075626C69633A2F2F646576656C6F706D656E74616C2D62696F6C6F67792D616E642D7374656D2D63656C6C735F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(41,'0b731be3-6762-45c5-bbbc-d7caa57d3e51','en',NULL,'computational-and-systems-biology_3.png',X'7075626C69633A2F2F636F6D7075746174696F6E616C2D616E642D73797374656D732D62696F6C6F67795F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(42,'6176e64c-7e35-42b8-937d-d6c5334f3741','en',NULL,'cell-biology_3.png',X'7075626C69633A2F2F63656C6C2D62696F6C6F67795F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(43,'bb56e475-9bd6-4726-8d01-9ae3e30823f7','en',NULL,'cancer-biology_3.png',X'7075626C69633A2F2F63616E6365722D62696F6C6F67795F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(44,'7c0fe424-03b7-46f4-ae01-2cb1ea649226','en',NULL,'biophysics-and-structural-biology_3.png',X'7075626C69633A2F2F62696F706879736963732D616E642D7374727563747572616C2D62696F6C6F67795F332E706E67','image/png',3118010,1,1475527071,1475527071),
	(45,'7a9cf1cb-79d7-4acc-946a-82821d47734f','en',NULL,'biochemistry_3.png',X'7075626C69633A2F2F62696F6368656D69737472795F332E706E67','image/png',3118010,1,1475527071,1475527071);

/*!40000 ALTER TABLE `file_managed` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table file_usage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `file_usage`;

CREATE TABLE `file_usage` (
  `fid` int(10) unsigned NOT NULL COMMENT 'File ID.',
  `module` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the module that is using the file.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the object type in which the file is used.',
  `id` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '0' COMMENT 'The primary key of the object using the file.',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The number of times this file is used by this object.',
  PRIMARY KEY (`fid`,`type`,`id`,`module`),
  KEY `type_id` (`type`,`id`),
  KEY `fid_count` (`fid`,`count`),
  KEY `fid_module` (`fid`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Track where a file is used.';

LOCK TABLES `file_usage` WRITE;
/*!40000 ALTER TABLE `file_usage` DISABLE KEYS */;

INSERT INTO `file_usage` (`fid`, `module`, `type`, `id`, `count`)
VALUES
	(1,'file','taxonomy_term','1',1),
	(2,'file','taxonomy_term','2',1),
	(3,'file','taxonomy_term','3',1),
	(4,'file','taxonomy_term','4',1),
	(5,'file','taxonomy_term','5',1),
	(6,'file','taxonomy_term','6',1),
	(7,'file','taxonomy_term','7',1),
	(8,'file','taxonomy_term','8',1),
	(9,'file','taxonomy_term','9',1),
	(10,'file','taxonomy_term','10',1),
	(11,'file','taxonomy_term','11',1),
	(12,'file','taxonomy_term','12',1),
	(13,'file','taxonomy_term','13',1),
	(14,'file','taxonomy_term','14',1),
	(15,'file','taxonomy_term','15',1),
	(16,'file','taxonomy_term','1',1),
	(17,'file','taxonomy_term','2',1),
	(18,'file','taxonomy_term','3',1),
	(19,'file','taxonomy_term','4',1),
	(20,'file','taxonomy_term','5',1),
	(21,'file','taxonomy_term','6',1),
	(22,'file','taxonomy_term','7',1),
	(23,'file','taxonomy_term','8',1),
	(24,'file','taxonomy_term','9',1),
	(25,'file','taxonomy_term','10',1),
	(26,'file','taxonomy_term','11',1),
	(27,'file','taxonomy_term','12',1),
	(28,'file','taxonomy_term','13',1),
	(29,'file','taxonomy_term','14',1),
	(30,'file','taxonomy_term','15',1),
	(31,'file','taxonomy_term','1',1),
	(32,'file','taxonomy_term','2',1),
	(33,'file','taxonomy_term','3',1),
	(34,'file','taxonomy_term','4',1),
	(35,'file','taxonomy_term','5',1),
	(36,'file','taxonomy_term','6',1),
	(37,'file','taxonomy_term','7',1),
	(38,'file','taxonomy_term','8',1),
	(39,'file','taxonomy_term','9',1),
	(40,'file','taxonomy_term','10',1),
	(41,'file','taxonomy_term','11',1),
	(42,'file','taxonomy_term','12',1),
	(43,'file','taxonomy_term','13',1),
	(44,'file','taxonomy_term','14',1),
	(45,'file','taxonomy_term','15',1);

/*!40000 ALTER TABLE `file_usage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taxonomy_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomy_index`;

CREATE TABLE `taxonomy_index` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The node.nid this record tracks.',
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The term ID.',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'Boolean indicating whether the node is published (visible to non-administrators).',
  `sticky` tinyint(4) DEFAULT '0' COMMENT 'Boolean indicating whether the node is sticky.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp when the node was created.',
  PRIMARY KEY (`nid`,`tid`),
  KEY `term_node` (`tid`,`status`,`sticky`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maintains denormalized information about node/term…';



# Dump of table taxonomy_term__field_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomy_term__field_image`;

CREATE TABLE `taxonomy_term__field_image` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_image_target_id` int(10) unsigned NOT NULL COMMENT 'The ID of the file entity.',
  `field_image_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `field_image_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `field_image_width` int(10) unsigned DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_image_height` int(10) unsigned DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_image_target_id` (`field_image_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for taxonomy_term field field_image.';

LOCK TABLES `taxonomy_term__field_image` WRITE;
/*!40000 ALTER TABLE `taxonomy_term__field_image` DISABLE KEYS */;

INSERT INTO `taxonomy_term__field_image` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_image_target_id`, `field_image_alt`, `field_image_title`, `field_image_width`, `field_image_height`)
VALUES
	('subjects',0,1,1,'en',0,31,'Plant Biology alt',NULL,1800,1350),
	('subjects',0,2,2,'en',0,32,'Neuroscience alt',NULL,1800,1350),
	('subjects',0,3,3,'en',0,33,'Microbiology and Infectious Disease alt',NULL,1800,1350),
	('subjects',0,4,4,'en',0,34,'Immunology alt',NULL,1800,1350),
	('subjects',0,5,5,'en',0,35,'Human Biology and Medicine alt',NULL,1800,1350),
	('subjects',0,6,6,'en',0,36,'Genomics and Evolutionary Biology alt',NULL,1800,1350),
	('subjects',0,7,7,'en',0,37,'Genes and Chromosomes alt',NULL,1800,1350),
	('subjects',0,8,8,'en',0,38,'Epidemiology and Global Health alt',NULL,1800,1350),
	('subjects',0,9,9,'en',0,39,'Ecology alt',NULL,1800,1350),
	('subjects',0,10,10,'en',0,40,'Developmental Biology and Stem Cells alt',NULL,1800,1350),
	('subjects',0,11,11,'en',0,41,'Computational and Systems Biology alt',NULL,1800,1350),
	('subjects',0,12,12,'en',0,42,'Cell Biology alt',NULL,1800,1350),
	('subjects',0,13,13,'en',0,43,'Cancer Biology alt',NULL,1800,1350),
	('subjects',0,14,14,'en',0,44,'Biophysics and Structural Biology alt',NULL,1800,1350),
	('subjects',0,15,15,'en',0,45,'Biochemistry alt',NULL,1800,1350);

/*!40000 ALTER TABLE `taxonomy_term__field_image` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taxonomy_term__field_impact_statement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomy_term__field_impact_statement`;

CREATE TABLE `taxonomy_term__field_impact_statement` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_impact_statement_value` longtext NOT NULL,
  `field_impact_statement_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_impact_statement_format` (`field_impact_statement_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for taxonomy_term field field_impact_statement.';

LOCK TABLES `taxonomy_term__field_impact_statement` WRITE;
/*!40000 ALTER TABLE `taxonomy_term__field_impact_statement` DISABLE KEYS */;

INSERT INTO `taxonomy_term__field_impact_statement` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_impact_statement_value`, `field_impact_statement_format`)
VALUES
	('subjects',0,1,1,'en',0,'Plant Biology impact statement','basic_html'),
	('subjects',0,2,2,'en',0,'Neuroscience impact statement','basic_html'),
	('subjects',0,3,3,'en',0,'Microbiology and Infectious Disease impact statement','basic_html'),
	('subjects',0,4,4,'en',0,'Immunology impact statement','basic_html'),
	('subjects',0,5,5,'en',0,'Human Biology and Medicine impact statement','basic_html'),
	('subjects',0,6,6,'en',0,'Genomics and Evolutionary Biology impact statement','basic_html'),
	('subjects',0,7,7,'en',0,'Genes and Chromosomes impact statement','basic_html'),
	('subjects',0,8,8,'en',0,'Epidemiology and Global Health impact statement','basic_html'),
	('subjects',0,9,9,'en',0,'Ecology impact statement','basic_html'),
	('subjects',0,10,10,'en',0,'Developmental Biology and Stem Cells impact statement','basic_html'),
	('subjects',0,11,11,'en',0,'Computational and Systems Biology impact statement','basic_html'),
	('subjects',0,12,12,'en',0,'Cell Biology impact statement','basic_html'),
	('subjects',0,13,13,'en',0,'Cancer Biology impact statement','basic_html'),
	('subjects',0,14,14,'en',0,'Biophysics and Structural Biology impact statement','basic_html'),
	('subjects',0,15,15,'en',0,'Biochemistry impact statement','basic_html');

/*!40000 ALTER TABLE `taxonomy_term__field_impact_statement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taxonomy_term__field_subject_id
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomy_term__field_subject_id`;

CREATE TABLE `taxonomy_term__field_subject_id` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_subject_id_value` varchar(255) NOT NULL,
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for taxonomy_term field field_subject_id.';

LOCK TABLES `taxonomy_term__field_subject_id` WRITE;
/*!40000 ALTER TABLE `taxonomy_term__field_subject_id` DISABLE KEYS */;

INSERT INTO `taxonomy_term__field_subject_id` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_subject_id_value`)
VALUES
	('subjects',0,1,1,'en',0,'plant-biology'),
	('subjects',0,2,2,'en',0,'neuroscience'),
	('subjects',0,3,3,'en',0,'microbiology-and-infectious-disease'),
	('subjects',0,4,4,'en',0,'immunology'),
	('subjects',0,5,5,'en',0,'human-biology-and-medicine'),
	('subjects',0,6,6,'en',0,'genomics-and-evolutionary-biology'),
	('subjects',0,7,7,'en',0,'genes-and-chromosomes'),
	('subjects',0,8,8,'en',0,'epidemiology-and-global-health'),
	('subjects',0,9,9,'en',0,'ecology'),
	('subjects',0,10,10,'en',0,'developmental-biology-and-stem-cells'),
	('subjects',0,11,11,'en',0,'computational-and-systems-biology'),
	('subjects',0,12,12,'en',0,'cell-biology'),
	('subjects',0,13,13,'en',0,'cancer-biology'),
	('subjects',0,14,14,'en',0,'biophysics-and-structural-biology'),
	('subjects',0,15,15,'en',0,'biochemistry');

/*!40000 ALTER TABLE `taxonomy_term__field_subject_id` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taxonomy_term_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomy_term_data`;

CREATE TABLE `taxonomy_term_data` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vid` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `taxonomy_term_field__uuid__value` (`uuid`),
  KEY `taxonomy_term_field__vid__target_id` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for taxonomy_term entities.';

LOCK TABLES `taxonomy_term_data` WRITE;
/*!40000 ALTER TABLE `taxonomy_term_data` DISABLE KEYS */;

INSERT INTO `taxonomy_term_data` (`tid`, `vid`, `uuid`, `langcode`)
VALUES
	(1,'subjects','220b81c1-4407-4032-a53b-ecb80abca8fa','en'),
	(2,'subjects','18bfc223-015b-4b85-9b86-47b49fd117b9','en'),
	(3,'subjects','32b5cb85-5828-4a90-a452-cbe3895f0c19','en'),
	(4,'subjects','87018efd-0b20-49f0-acdd-939fd9d2584b','en'),
	(5,'subjects','d2b6b9a0-f3a6-4368-beb5-d1c723cfa740','en'),
	(6,'subjects','0d65f7b1-21e6-43cf-87f6-275713be26bd','en'),
	(7,'subjects','0742ca64-cca7-46b5-be5c-32a8afcef0e5','en'),
	(8,'subjects','770dd109-2bb1-497e-804e-6b3e326963ef','en'),
	(9,'subjects','6d2abf26-160c-4b64-8972-4351b682cd29','en'),
	(10,'subjects','2f042f4d-1caa-49ae-b364-1784f3a5004d','en'),
	(11,'subjects','ab1e5780-7312-4043-841b-9aa5f43ce7d8','en'),
	(12,'subjects','837fdc93-3007-4317-a744-ea042d82580d','en'),
	(13,'subjects','d2d917f3-07fa-4868-9f09-dfa1553d6bbc','en'),
	(14,'subjects','be0edc4f-7c23-429b-83b8-47eb5d7ba003','en'),
	(15,'subjects','cbefe652-2aa1-445b-abb1-d8f8af272acf','en');

/*!40000 ALTER TABLE `taxonomy_term_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taxonomy_term_field_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomy_term_field_data`;

CREATE TABLE `taxonomy_term_field_data` (
  `tid` int(10) unsigned NOT NULL,
  `vid` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) NOT NULL,
  `description__value` longtext,
  `description__format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  PRIMARY KEY (`tid`,`langcode`),
  KEY `taxonomy_term__id__default_langcode__langcode` (`tid`,`default_langcode`,`langcode`),
  KEY `taxonomy_term_field__name` (`name`(191)),
  KEY `taxonomy_term__tree` (`vid`,`weight`,`name`(191)),
  KEY `taxonomy_term__vid_name` (`vid`,`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for taxonomy_term entities.';

LOCK TABLES `taxonomy_term_field_data` WRITE;
/*!40000 ALTER TABLE `taxonomy_term_field_data` DISABLE KEYS */;

INSERT INTO `taxonomy_term_field_data` (`tid`, `vid`, `langcode`, `name`, `description__value`, `description__format`, `weight`, `changed`, `default_langcode`)
VALUES
	(1,'subjects','en','Plant Biology',NULL,NULL,0,1475527071,1),
	(2,'subjects','en','Neuroscience',NULL,NULL,0,1475527071,1),
	(3,'subjects','en','Microbiology and Infectious Disease',NULL,NULL,0,1475527071,1),
	(4,'subjects','en','Immunology',NULL,NULL,0,1475527071,1),
	(5,'subjects','en','Human Biology and Medicine',NULL,NULL,0,1475527071,1),
	(6,'subjects','en','Genomics and Evolutionary Biology',NULL,NULL,0,1475527071,1),
	(7,'subjects','en','Genes and Chromosomes',NULL,NULL,0,1475527071,1),
	(8,'subjects','en','Epidemiology and Global Health',NULL,NULL,0,1475527071,1),
	(9,'subjects','en','Ecology',NULL,NULL,0,1475527071,1),
	(10,'subjects','en','Developmental Biology and Stem Cells',NULL,NULL,0,1475527071,1),
	(11,'subjects','en','Computational and Systems Biology',NULL,NULL,0,1475527071,1),
	(12,'subjects','en','Cell Biology',NULL,NULL,0,1475527071,1),
	(13,'subjects','en','Cancer Biology',NULL,NULL,0,1475527071,1),
	(14,'subjects','en','Biophysics and Structural Biology',NULL,NULL,0,1475527071,1),
	(15,'subjects','en','Biochemistry',NULL,NULL,0,1475527071,1);

/*!40000 ALTER TABLE `taxonomy_term_field_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taxonomy_term_hierarchy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomy_term_hierarchy`;

CREATE TABLE `taxonomy_term_hierarchy` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Primary Key: The taxonomy_term_data.tid of the term.',
  `parent` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Primary Key: The taxonomy_term_data.tid of the term''s parent. 0 indicates no parent.',
  PRIMARY KEY (`tid`,`parent`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores the hierarchical relationship between terms.';

LOCK TABLES `taxonomy_term_hierarchy` WRITE;
/*!40000 ALTER TABLE `taxonomy_term_hierarchy` DISABLE KEYS */;

INSERT INTO `taxonomy_term_hierarchy` (`tid`, `parent`)
VALUES
	(1,0),
	(2,0),
	(3,0),
	(4,0),
	(5,0),
	(6,0),
	(7,0),
	(8,0),
	(9,0),
	(10,0),
	(11,0),
	(12,0),
	(13,0),
	(14,0),
	(15,0);

/*!40000 ALTER TABLE `taxonomy_term_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
