-- MySQL dump 10.11
--
-- Host: localhost    Database: teresapi_12all
-- ------------------------------------------------------
-- Server version	5.0.96-community

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
-- Table structure for table `acp_authinfo`
--

DROP TABLE IF EXISTS `acp_authinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acp_authinfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `absid` int(10) unsigned NOT NULL default '0',
  `product` varchar(64) NOT NULL default '',
  `portable` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `absid` (`absid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acp_authinfo`
--

LOCK TABLES `acp_authinfo` WRITE;
/*!40000 ALTER TABLE `acp_authinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `acp_authinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acp_globalauth`
--

DROP TABLE IF EXISTS `acp_globalauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acp_globalauth` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(64) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `first_name` text,
  `last_name` text,
  `email` text,
  `last_login` timestamp NULL default NULL,
  `sourceid` int(10) unsigned NOT NULL default '0',
  `sourceupdated` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acp_globalauth`
--

LOCK TABLES `acp_globalauth` WRITE;
/*!40000 ALTER TABLE `acp_globalauth` DISABLE KEYS */;
INSERT INTO `acp_globalauth` VALUES (1,'admin','b0bc6d0fbb54e9986d61c4bde01ee330','Teresa','Piacentino','consultas@teresapiacentino.com','2009-09-30 16:48:17',0,NULL);
/*!40000 ALTER TABLE `acp_globalauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_backend`
--

DROP TABLE IF EXISTS `em_backend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_backend` (
  `id` tinyint(1) NOT NULL auto_increment,
  `lang` varchar(25) NOT NULL default 'english',
  `serial` varchar(250) NOT NULL default '',
  `av` text,
  `avo` text,
  `ac` text,
  `acu` text,
  `acec` text,
  `acar` text,
  `acad` text,
  `acff` text,
  `p_link` varchar(250) NOT NULL default '',
  `emfrom` varchar(250) NOT NULL default '',
  `version` varchar(25) NOT NULL default '',
  `updatecheck` tinyint(1) NOT NULL default '1',
  `updatedate` date NOT NULL default '0000-00-00',
  `updateversion` varchar(250) NOT NULL default '',
  `t_offset` tinyint(2) NOT NULL default '0',
  `t_offset_o` enum('-','+') NOT NULL default '+',
  `datetimeformat` varchar(128) NOT NULL default '%m/%d/%Y %H:%M',
  `dateformat` varchar(128) NOT NULL default '%m/%d/%Y',
  `timeformat` varchar(128) NOT NULL default '%H:%M',
  `local_zoneid` varchar(64) NOT NULL default 'America/Chicago',
  `local_dst` tinyint(1) unsigned NOT NULL default '0',
  `stype` tinyint(1) NOT NULL default '0',
  `maxuploadfilesize` int(5) NOT NULL default '3',
  `export_pdf` tinyint(1) NOT NULL default '0',
  `export_htm` tinyint(1) NOT NULL default '0',
  `general_maint` tinyint(1) unsigned NOT NULL default '0',
  `general_maint_message` text,
  `general_passprotect` tinyint(1) unsigned NOT NULL default '0',
  `general_url_rewrite` tinyint(1) NOT NULL default '0',
  `general_allow_rss` tinyint(1) unsigned NOT NULL default '1',
  `general_passvars` tinyint(1) unsigned NOT NULL default '1',
  `general_public` tinyint(1) unsigned NOT NULL default '1',
  `design_logo_admin` varchar(250) NOT NULL default '',
  `design_logo_public` varchar(250) NOT NULL default '',
  `design_header_html` mediumtext,
  `design_header_url` varchar(250) NOT NULL default '',
  `design_footer_html` mediumtext,
  `design_footer_url` varchar(250) NOT NULL default '',
  `admin_editor` enum('html','text') default NULL,
  `sdfreq` int(10) NOT NULL default '50',
  `sdnum` int(10) NOT NULL default '5',
  `sdlim` int(10) NOT NULL default '0',
  `sdspan` enum('hour','day') NOT NULL default 'hour',
  `sdord` enum('rand','asc','desc') NOT NULL default 'asc',
  `message_attachments_location` enum('db','fs') NOT NULL default 'db',
  `mailer_log_file` tinyint(1) NOT NULL default '0',
  `stream_set_blocking` tinyint(1) NOT NULL default '0',
  `log_error_source` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_backend`
--

LOCK TABLES `em_backend` WRITE;
/*!40000 ALTER TABLE `em_backend` DISABLE KEYS */;
INSERT INTO `em_backend` VALUES (1,'english','TRIAL-12ALL-5TJ1DCEW663P94F2EUYMB1YQ62O0C1R8E49','YWEwODJmZTk5OWI2MDgxNTRhNWIyODNmOTQ1YzdkNTg3ZjBlMmE0NjZlOGRkNzNhM2U4ZjAzNDUzNGUxZWJjZTY4ZmZjZWI5MTgwNzZiYzRjMTM0YTRhYzY0MDYyMDY1NDNjMTVjMzM1NmUzMWZmZGM0NmVlODQ4ZmMyNzAxOTI=','TWpBd09TMHhNUzB3TkE9PQ==','c6558f7bec677d78c78d1e7b734fd036','','9778ED4C6D802BC5B2113C92B0F39BD5ECFB3D9EBD70A878083B6F5F1E5A1FA6C6EB31CEDB4256F2ADC5BDC6AE4DC2D5','AAAFFC5A3D3123D1765D88072E00238EAF9069A09388DBD18386AF78B9FEF6CBE5ED030D7E8DB73B13EBFC1DDDA10EE0','BF7832BE250A785F10E0021C1533FBDB82DE2119DA768544F7678BBC19C0FDEBBC4B82CCDFD50E1961263A229EC49D7B','BFD45FE8201E9064E474BB777284206A8888028FFE7CB08A9A634CFB46050041E27B0C49D4D66E07C9D538E693F309A8','http://www.teresapiacentino.com/list','novedades@teresapiacentino.com','5.0.13',1,'2009-11-02','5.0.19',1,'+','%m/%d/%Y %H:%M','%m/%d/%Y','%H:%M','America/Buenos_Aires',0,0,8,0,0,0,NULL,0,0,1,1,1,'','',NULL,'',NULL,'',NULL,50,5,0,'hour','asc','db',0,0,0);
/*!40000 ALTER TABLE `em_backend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_bounce`
--

DROP TABLE IF EXISTS `em_bounce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_bounce` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) NOT NULL default '0',
  `type` enum('none','pop3','pipe') NOT NULL default 'none',
  `email` varchar(250) default NULL,
  `host` varchar(250) default NULL,
  `port` int(10) NOT NULL default '110',
  `user` varchar(250) default NULL,
  `pass` varchar(250) default NULL,
  `method` varchar(32) NOT NULL default '',
  `limit_hard` int(10) NOT NULL default '3',
  `limit_soft` int(10) NOT NULL default '6',
  `emails_per_batch` int(10) NOT NULL default '120',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_bounce`
--

LOCK TABLES `em_bounce` WRITE;
/*!40000 ALTER TABLE `em_bounce` DISABLE KEYS */;
INSERT INTO `em_bounce` VALUES (1,1,'none',NULL,NULL,110,NULL,NULL,'none',3,6,120);
/*!40000 ALTER TABLE `em_bounce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_bounce_code`
--

DROP TABLE IF EXISTS `em_bounce_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_bounce_code` (
  `id` int(10) NOT NULL auto_increment,
  `code` varchar(250) NOT NULL default '',
  `match` varchar(250) NOT NULL default '',
  `type` enum('hard','soft') NOT NULL default 'soft',
  `descript` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_bounce_code`
--

LOCK TABLES `em_bounce_code` WRITE;
/*!40000 ALTER TABLE `em_bounce_code` DISABLE KEYS */;
INSERT INTO `em_bounce_code` VALUES (1,'5.1.0','5.1.0','hard','Other address status'),(2,'5.1.1','5.1.1','hard','Bad destination mailbox address'),(3,'5.1.2','5.1.2','hard','Bad destination system address'),(4,'5.1.3','5.1.3','hard','Bad destination mailbox address syntax'),(5,'5.1.4','5.1.4','hard','Destination mailbox address ambiguous'),(6,'5.1.5','5.1.5','hard','Destination mailbox address valid'),(7,'5.1.6','5.1.6','hard','Mailbox has moved'),(8,'5.1.7','5.1.7','hard','Bad sender\\\'s mailbox address syntax'),(9,'5.1.8','5.1.8','hard','Bad sender\'s system address'),(10,'5.2.0','5.2.0','soft','Other or undefined mailbox status'),(11,'5.2.1','5.2.1','soft','Mailbox disabled, not accepting messages'),(12,'5.2.2','5.2.2','soft','Mailbox full'),(13,'5.2.3','5.2.3','hard','Message length exceeds administrative limit.'),(14,'5.2.4','5.2.4','hard','Mailing list expansion problem'),(15,'5.3.0','5.3.0','hard','Other or undefined mail system status'),(16,'5.3.1','5.3.1','soft','Mail system full'),(17,'5.3.2','5.3.2','hard','System not accepting network messages'),(18,'5.3.3','5.3.3','hard','System not capable of selected features'),(19,'5.3.4','5.3.4','hard','Message too big for system'),(20,'5.4.0','5.4.0','hard','Other or undefined network or routing status'),(21,'5.4.1','5.4.1','hard','No answer from host'),(22,'5.4.2','5.4.2','hard','Bad connection'),(23,'5.4.3','5.4.3','hard','Routing server failure'),(24,'5.4.4','5.4.4','hard','Unable to route'),(25,'5.4.5','5.4.5','soft','Network congestion'),(26,'5.4.6','5.4.6','hard','Routing loop detected'),(27,'5.4.7','5.4.7','hard','Delivery time expired'),(28,'5.5.0','5.5.0','hard','Other or undefined protocol status'),(29,'5.5.1','5.5.1','hard','Invalid command'),(30,'5.5.2','5.5.2','hard','Syntax error'),(31,'5.5.3','5.5.3','soft','Too many recipients'),(32,'5.5.4','5.5.4','hard','Invalid command arguments'),(33,'5.5.5','5.5.5','hard','Wrong protocol version'),(34,'5.6.0','5.6.0','hard','Other or undefined media error'),(35,'5.6.1','5.6.1','hard','Media not supported'),(36,'5.6.2','5.6.2','hard','Conversion required and prohibited'),(37,'5.6.3','5.6.3','hard','Conversion required but not supported'),(38,'5.6.4','5.6.4','hard','Conversion with loss performed'),(39,'5.6.5','5.6.5','hard','Conversion failed'),(40,'5.7.0','5.7.0','hard','Other or undefined security status'),(41,'5.7.1','5.7.1','hard','Delivery not authorized, message refused'),(42,'5.7.2','5.7.2','hard','Mailing list expansion prohibited'),(43,'5.7.3','5.7.3','hard','Security conversion required but not possible'),(44,'5.7.4','5.7.4','hard','Security features not supported'),(45,'5.7.5','5.7.5','hard','Cryptographic failure'),(46,'5.7.6','5.7.6','hard','Cryptographic algorithm not supported'),(47,'5.7.7','5.7.7','hard','Message integrity failure'),(48,'5.0.0','5.0.0','hard','Address does not exist'),(49,'9.1.1','This is a permanent error.','hard','Permanent error');
/*!40000 ALTER TABLE `em_bounce_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_bounce_data`
--

DROP TABLE IF EXISTS `em_bounce_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_bounce_data` (
  `id` int(10) NOT NULL auto_increment,
  `email` varchar(250) NOT NULL default '',
  `subscriberid` int(10) NOT NULL default '0',
  `listid` int(10) NOT NULL default '0',
  `campaignid` int(10) NOT NULL default '0',
  `messageid` int(10) NOT NULL default '0',
  `tstamp` date default NULL,
  `type` enum('hard','soft') NOT NULL default 'hard',
  `code` varchar(250) default NULL,
  `counted` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `email` (`email`),
  KEY `campaignid` (`campaignid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_bounce_data`
--

LOCK TABLES `em_bounce_data` WRITE;
/*!40000 ALTER TABLE `em_bounce_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_bounce_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_bounce_list`
--

DROP TABLE IF EXISTS `em_bounce_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_bounce_list` (
  `id` int(10) NOT NULL auto_increment,
  `bounceid` int(10) unsigned NOT NULL default '0',
  `listid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `bounceid` (`bounceid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_bounce_list`
--

LOCK TABLES `em_bounce_list` WRITE;
/*!40000 ALTER TABLE `em_bounce_list` DISABLE KEYS */;
INSERT INTO `em_bounce_list` VALUES (1,1,1);
/*!40000 ALTER TABLE `em_bounce_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_bounce_log`
--

DROP TABLE IF EXISTS `em_bounce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_bounce_log` (
  `id` int(10) NOT NULL auto_increment,
  `tstamp` datetime default NULL,
  `bounceid` int(10) NOT NULL default '0',
  `subscriberid` int(10) NOT NULL default '0',
  `campaignid` int(10) NOT NULL default '0',
  `messageid` int(10) NOT NULL default '0',
  `codeid` int(10) NOT NULL default '0',
  `email` varchar(128) NOT NULL default '',
  `error` varchar(32) NOT NULL default '',
  `source` longtext,
  PRIMARY KEY  (`id`),
  KEY `bounceid` (`bounceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_bounce_log`
--

LOCK TABLES `em_bounce_log` WRITE;
/*!40000 ALTER TABLE `em_bounce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_bounce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_branding`
--

DROP TABLE IF EXISTS `em_branding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_branding` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `groupid` int(10) unsigned NOT NULL default '0',
  `site_name` varchar(250) NOT NULL default '',
  `site_logo` text,
  `header_text` tinyint(1) NOT NULL default '0',
  `header_text_value` text,
  `header_html` tinyint(1) NOT NULL default '0',
  `header_html_value` text,
  `footer_text` tinyint(1) NOT NULL default '0',
  `footer_text_value` text,
  `footer_html` tinyint(1) NOT NULL default '0',
  `footer_html_value` text,
  `copyright` tinyint(1) NOT NULL default '1',
  `version` tinyint(1) NOT NULL default '1',
  `license` tinyint(1) NOT NULL default '1',
  `links` tinyint(1) NOT NULL default '1',
  `demo` tinyint(1) NOT NULL default '0',
  `help` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_branding`
--

LOCK TABLES `em_branding` WRITE;
/*!40000 ALTER TABLE `em_branding` DISABLE KEYS */;
INSERT INTO `em_branding` VALUES (1,3,'Teresa Piacentino','http://www.teresapiacentino.com/list/admin/images/logo.gif',0,NULL,0,NULL,0,NULL,0,NULL,1,1,1,1,0,1);
/*!40000 ALTER TABLE `em_branding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_campaign`
--

DROP TABLE IF EXISTS `em_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_campaign` (
  `id` int(10) NOT NULL auto_increment,
  `type` enum('single','recurring','split','responder','reminder','special','activerss') NOT NULL default 'single',
  `userid` int(10) NOT NULL default '0',
  `filterid` int(10) NOT NULL default '0',
  `bounceid` int(10) NOT NULL default '-1',
  `realcid` int(10) NOT NULL default '0',
  `processid` int(10) NOT NULL default '0',
  `name` varchar(250) NOT NULL default '',
  `cdate` datetime default NULL,
  `sdate` datetime default NULL,
  `ldate` datetime default NULL,
  `send_amt` int(10) NOT NULL default '0',
  `total_amt` int(10) NOT NULL default '0',
  `opens` int(10) NOT NULL default '0',
  `uniqueopens` int(10) NOT NULL default '0',
  `linkclicks` int(10) NOT NULL default '0',
  `uniquelinkclicks` int(10) NOT NULL default '0',
  `subscriberclicks` int(10) unsigned NOT NULL default '0',
  `forwards` int(10) NOT NULL default '0',
  `uniqueforwards` int(10) NOT NULL default '0',
  `hardbounces` int(10) NOT NULL default '0',
  `softbounces` int(10) NOT NULL default '0',
  `unsubscribes` int(10) NOT NULL default '0',
  `unsubreasons` int(10) NOT NULL default '0',
  `updates` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `public` tinyint(1) NOT NULL default '1',
  `mail_transfer` tinyint(1) NOT NULL default '0',
  `mail_send` tinyint(1) NOT NULL default '0',
  `mail_cleanup` tinyint(1) NOT NULL default '0',
  `mailer_log_file` tinyint(1) NOT NULL default '0',
  `tracklinks` enum('mime','html','text','none') default NULL,
  `tracklinksanalytics` tinyint(1) NOT NULL default '1',
  `trackreads` tinyint(1) NOT NULL default '1',
  `trackreadsanalytics` tinyint(1) NOT NULL default '1',
  `analytics_campaign_name` varchar(250) NOT NULL default '',
  `embed_images` tinyint(1) NOT NULL default '0',
  `htmlunsub` tinyint(1) NOT NULL default '1',
  `textunsub` tinyint(1) NOT NULL default '1',
  `htmlunsubdata` text,
  `textunsubdata` text,
  `recurring` varchar(16) NOT NULL default 'day1',
  `split_type` enum('even','read','click') NOT NULL default 'even',
  `split_offset` int(10) NOT NULL default '2',
  `split_offset_type` enum('hour','day','week','month') NOT NULL default 'day',
  `split_winner_messageid` int(10) NOT NULL default '0',
  `split_winner_awaiting` tinyint(1) NOT NULL default '0',
  `responder_offset` int(10) NOT NULL default '0',
  `responder_type` enum('subscribe','unsubscribe') NOT NULL default 'subscribe',
  `reminder_field` varchar(25) NOT NULL default 'sdate',
  `reminder_format` varchar(100) default NULL,
  `reminder_type` enum('month_day','year_month_day') NOT NULL default 'month_day',
  `reminder_offset` int(10) NOT NULL default '0',
  `reminder_offset_type` enum('day','week','month','year') NOT NULL default 'day',
  `reminder_offset_sign` enum('+','-') NOT NULL default '+',
  `reminder_last_cron_run` date default NULL,
  `activerss_interval` varchar(16) NOT NULL default 'day1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_campaign`
--

LOCK TABLES `em_campaign` WRITE;
/*!40000 ALTER TABLE `em_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_campaign_list`
--

DROP TABLE IF EXISTS `em_campaign_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_campaign_list` (
  `id` int(10) NOT NULL auto_increment,
  `campaignid` int(10) NOT NULL default '0',
  `listid` int(10) NOT NULL default '0',
  `userid` int(10) NOT NULL default '0',
  `list_amt` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `campaignid` (`campaignid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_campaign_list`
--

LOCK TABLES `em_campaign_list` WRITE;
/*!40000 ALTER TABLE `em_campaign_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_campaign_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_campaign_mailer`
--

DROP TABLE IF EXISTS `em_campaign_mailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_campaign_mailer` (
  `id` int(10) NOT NULL auto_increment,
  `campaignid` int(10) NOT NULL default '0',
  `listid` int(10) NOT NULL default '0',
  `mailerid` int(10) NOT NULL default '0',
  `corder` int(10) NOT NULL default '0',
  `threshold` int(10) NOT NULL default '50',
  `frequency` int(10) NOT NULL default '50',
  `pause` int(10) NOT NULL default '5',
  `limit` int(10) NOT NULL default '0',
  `limitspan` enum('hour','day') NOT NULL default 'hour',
  `dotfix` tinyint(1) NOT NULL default '0',
  `current` tinyint(1) NOT NULL default '0',
  `sent` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `campaignid` (`campaignid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_campaign_mailer`
--

LOCK TABLES `em_campaign_mailer` WRITE;
/*!40000 ALTER TABLE `em_campaign_mailer` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_campaign_mailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_campaign_message`
--

DROP TABLE IF EXISTS `em_campaign_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_campaign_message` (
  `id` int(10) NOT NULL auto_increment,
  `messageid` int(10) NOT NULL default '0',
  `campaignid` int(10) NOT NULL default '0',
  `percentage` tinyint(1) NOT NULL default '100',
  `sourcesize` int(10) NOT NULL default '0',
  `send_amt` int(10) NOT NULL default '0',
  `total_amt` int(10) NOT NULL default '0',
  `opens` int(10) NOT NULL default '0',
  `uniqueopens` int(10) NOT NULL default '0',
  `linkclicks` int(10) NOT NULL default '0',
  `uniquelinkclicks` int(10) NOT NULL default '0',
  `subscriberclicks` int(10) unsigned NOT NULL default '0',
  `forwards` int(10) NOT NULL default '0',
  `uniqueforwards` int(10) NOT NULL default '0',
  `hardbounces` int(10) NOT NULL default '0',
  `softbounces` int(10) NOT NULL default '0',
  `unsubscribes` int(10) NOT NULL default '0',
  `unsubreasons` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `campaignid` (`campaignid`),
  KEY `messageid` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_campaign_message`
--

LOCK TABLES `em_campaign_message` WRITE;
/*!40000 ALTER TABLE `em_campaign_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_campaign_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_cron`
--

DROP TABLE IF EXISTS `em_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_cron` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `stringid` varchar(250) NOT NULL default '',
  `name` varchar(250) NOT NULL default '',
  `descript` text,
  `active` tinyint(1) NOT NULL default '1',
  `filename` varchar(250) NOT NULL default '',
  `loglevel` tinyint(1) NOT NULL default '0',
  `minute` varchar(100) NOT NULL default '',
  `hour` tinyint(1) NOT NULL default '0',
  `day` tinyint(1) NOT NULL default '0',
  `weekday` tinyint(1) NOT NULL default '0',
  `lastrun` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `stringid` (`stringid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_cron`
--

LOCK TABLES `em_cron` WRITE;
/*!40000 ALTER TABLE `em_cron` DISABLE KEYS */;
INSERT INTO `em_cron` VALUES (1,'process','Stalled Processes Pickup Tool','This picks up stalled processes triggered by the application.  Will ensure that your mailings continue to be sent.',1,'./admin/process.php',1,'a:1:{i:0;i:5;}',-1,-1,-1,'2009-11-04 15:00:47'),(2,'sendingengine','Sending Engine','This will initiate scheduled mailings and enables the system to check if any message in a Split is a \"winner\"',1,'./admin/functions/crons/sendingengine.php',1,'a:1:{i:0;i:5;}',-1,-1,-1,'2009-11-04 15:00:48'),(3,'autoresponder','Auto-Responder','This sends campaigns to subscribers scheduled against the subscription date.',1,'./admin/functions/crons/autoresponder.php',1,'a:2:{i:0;i:-2;i:1;i:15;}',-1,-1,-1,'2009-11-04 15:00:48'),(4,'autoreminder','Auto-Reminder','Auto-Reminder should run only once a day, since it uses dates only, not times. It sends campaigns scheduled against the anniversary of the date stored in subscriber\'s subscription date/custom field.',1,'./admin/functions/crons/autoreminder.php',1,'a:2:{i:0;i:-2;i:1;i:0;}',0,-1,-1,'2009-11-04 08:55:29'),(5,'bounceparser','Bounce Management','This collects bounced emails via POP3 protocol. This cron job can be turned off if you can use email piping (preferred option).',1,'./admin/functions/crons/bounceparser.php',1,'a:2:{i:0;i:-2;i:1;i:45;}',-1,-1,-1,'2009-11-04 15:00:48'),(6,'emailparser','Email (Un)Subscriptions Parser','This will read all incoming emails via POP3 protocol, parse them and adds/remove senders from/to lists.',1,'./admin/functions/crons/emailparser.php',1,'a:2:{i:0;i:-2;i:1;i:30;}',-1,-1,-1,'2009-11-04 15:00:49'),(7,'dbsync','Database Synchronization','This will start a sync for all setup synchronization jobs in the system.',1,'./admin/functions/crons/dbsync.php',1,'a:2:{i:0;i:-2;i:1;i:0;}',2,-1,-1,'2009-11-04 08:55:31'),(8,'dbbackup','Database Backup','Database Backup (a part of Database Utilities) saves a database backup to a location specified.',0,'./admin/functions/crons/dbbackup.php',1,'a:2:{i:0;i:-2;i:1;i:0;}',3,-1,-1,NULL),(9,'utilities','Utilities','This will cleanup redundant data (such as old logs), perform timed utility actions and optimize the tables.',1,'./admin/functions/crons/utilities.php',1,'a:2:{i:0;i:-2;i:1;i:0;}',4,-1,-1,'2009-11-04 08:55:31');
/*!40000 ALTER TABLE `em_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_cron_log`
--

DROP TABLE IF EXISTS `em_cron_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_cron_log` (
  `id` int(10) NOT NULL auto_increment,
  `relid` int(10) NOT NULL default '0',
  `file` varchar(250) NOT NULL default '',
  `sdate` datetime default NULL,
  `edate` datetime default NULL,
  `errors` text,
  PRIMARY KEY  (`id`),
  KEY `relid` (`relid`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_cron_log`
--

LOCK TABLES `em_cron_log` WRITE;
/*!40000 ALTER TABLE `em_cron_log` DISABLE KEYS */;
INSERT INTO `em_cron_log` VALUES (70,1,'process','2009-10-30 16:12:31','2009-10-30 16:12:31',''),(71,1,'process','2009-11-01 09:20:25','2009-11-01 09:20:25',''),(72,1,'process','2009-11-01 19:40:22','2009-11-01 19:40:22',''),(73,1,'process','2009-11-02 09:58:02','2009-11-02 09:58:02',''),(74,1,'process','2009-11-04 08:44:57','2009-11-04 08:44:57',''),(75,1,'process','2009-11-04 08:55:28','2009-11-04 08:55:28',''),(76,2,'sendingengine','2009-11-04 08:55:29','2009-11-04 08:55:29',''),(77,3,'autoresponder','2009-11-04 08:55:29','2009-11-04 08:55:29',''),(78,4,'autoreminder','2009-11-04 08:55:30','2009-11-04 08:55:30',''),(79,5,'bounceparser','2009-11-04 08:55:30','2009-11-04 08:55:30',''),(80,6,'emailparser','2009-11-04 08:55:31','2009-11-04 08:55:31',''),(81,7,'dbsync','2009-11-04 08:55:31','2009-11-04 08:55:31',''),(82,9,'utilities','2009-11-04 08:55:31','2009-11-04 08:55:31',''),(83,1,'process','2009-11-04 08:56:07','2009-11-04 08:56:07',''),(84,1,'process','2009-11-04 09:43:59','2009-11-04 09:43:59',''),(85,1,'process','2009-11-04 09:54:04','2009-11-04 09:54:04',''),(86,2,'sendingengine','2009-11-04 09:54:04','2009-11-04 09:54:04',''),(87,3,'autoresponder','2009-11-04 09:54:05','2009-11-04 09:54:05',''),(88,5,'bounceparser','2009-11-04 09:54:05','2009-11-04 09:54:05',''),(89,6,'emailparser','2009-11-04 09:54:05','2009-11-04 09:54:05',''),(90,1,'process','2009-11-04 10:00:54','2009-11-04 10:00:54',''),(91,1,'process','2009-11-04 10:15:57','2009-11-04 10:15:57',''),(92,2,'sendingengine','2009-11-04 10:15:57','2009-11-04 10:15:57',''),(93,3,'autoresponder','2009-11-04 10:15:57','2009-11-04 10:15:57',''),(94,1,'process','2009-11-04 10:19:34','2009-11-04 10:19:34',''),(95,1,'process','2009-11-04 11:50:47','2009-11-04 11:50:47',''),(96,1,'process','2009-11-04 12:06:04','2009-11-04 12:06:04',''),(97,2,'sendingengine','2009-11-04 12:06:04','2009-11-04 12:06:04',''),(98,3,'autoresponder','2009-11-04 12:06:04','2009-11-04 12:06:04',''),(99,5,'bounceparser','2009-11-04 12:06:04','2009-11-04 12:06:04',''),(100,6,'emailparser','2009-11-04 12:06:05','2009-11-04 12:06:05',''),(101,1,'process','2009-11-04 12:15:17','2009-11-04 12:15:17',''),(102,1,'process','2009-11-04 13:28:28','2009-11-04 13:28:28',''),(103,1,'process','2009-11-04 13:35:27','2009-11-04 13:35:27',''),(104,1,'process','2009-11-04 13:48:52','2009-11-04 13:48:52',''),(105,2,'sendingengine','2009-11-04 13:48:52','2009-11-04 13:48:52',''),(106,3,'autoresponder','2009-11-04 13:48:52','2009-11-04 13:48:52',''),(107,5,'bounceparser','2009-11-04 13:48:52','2009-11-04 13:48:52',''),(108,6,'emailparser','2009-11-04 13:48:53','2009-11-04 13:48:53',''),(109,1,'process','2009-11-04 13:54:51','2009-11-04 13:54:51',''),(110,1,'process','2009-11-04 14:41:14','2009-11-04 14:41:14',''),(111,1,'process','2009-11-04 14:44:36','2009-11-04 14:44:36',''),(112,1,'process','2009-11-04 15:00:48','2009-11-04 15:00:48',''),(113,2,'sendingengine','2009-11-04 15:00:48','2009-11-04 15:00:48',''),(114,3,'autoresponder','2009-11-04 15:00:48','2009-11-04 15:00:48',''),(115,5,'bounceparser','2009-11-04 15:00:49','2009-11-04 15:00:49',''),(116,6,'emailparser','2009-11-04 15:00:49','2009-11-04 15:00:49','');
/*!40000 ALTER TABLE `em_cron_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_emailaccount`
--

DROP TABLE IF EXISTS `em_emailaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_emailaccount` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) NOT NULL default '0',
  `action` enum('sub','unsub') NOT NULL default 'sub',
  `type` enum('pop3','pipe') NOT NULL default 'pop3',
  `email` varchar(250) NOT NULL default '',
  `host` varchar(250) NOT NULL default '',
  `port` varchar(250) NOT NULL default '',
  `user` varchar(250) NOT NULL default '',
  `pass` varchar(250) NOT NULL default '',
  `method` varchar(32) NOT NULL default '',
  `emails_per_batch` int(10) NOT NULL default '120',
  `filteruse` tinyint(1) NOT NULL default '0',
  `filterfield` enum('subject','body') NOT NULL default 'subject',
  `filtercond` enum('contains','notcontains','equals','notequals') NOT NULL default 'contains',
  `filterval` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_emailaccount`
--

LOCK TABLES `em_emailaccount` WRITE;
/*!40000 ALTER TABLE `em_emailaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_emailaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_emailaccount_list`
--

DROP TABLE IF EXISTS `em_emailaccount_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_emailaccount_list` (
  `id` int(10) NOT NULL auto_increment,
  `emailid` int(10) unsigned NOT NULL default '0',
  `listid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `emailid` (`emailid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_emailaccount_list`
--

LOCK TABLES `em_emailaccount_list` WRITE;
/*!40000 ALTER TABLE `em_emailaccount_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_emailaccount_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_emailaccount_log`
--

DROP TABLE IF EXISTS `em_emailaccount_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_emailaccount_log` (
  `id` int(10) NOT NULL auto_increment,
  `tstamp` datetime default NULL,
  `emailid` int(10) NOT NULL default '0',
  `email` varchar(128) NOT NULL default '',
  `error` varchar(32) NOT NULL default '',
  `source` longtext,
  PRIMARY KEY  (`id`),
  KEY `emailid` (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_emailaccount_log`
--

LOCK TABLES `em_emailaccount_log` WRITE;
/*!40000 ALTER TABLE `em_emailaccount_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_emailaccount_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_error_source`
--

DROP TABLE IF EXISTS `em_error_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_error_source` (
  `id` int(10) NOT NULL auto_increment,
  `tstamp` date default NULL,
  `action` varchar(32) NOT NULL default '',
  `error` varchar(32) NOT NULL default '',
  `source` longtext,
  PRIMARY KEY  (`id`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_error_source`
--

LOCK TABLES `em_error_source` WRITE;
/*!40000 ALTER TABLE `em_error_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_error_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_exclusion`
--

DROP TABLE IF EXISTS `em_exclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_exclusion` (
  `id` int(10) NOT NULL auto_increment,
  `email` varchar(250) default NULL,
  `wildcard` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `email` (`email`),
  KEY `wildcard` (`wildcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_exclusion`
--

LOCK TABLES `em_exclusion` WRITE;
/*!40000 ALTER TABLE `em_exclusion` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_exclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_exclusion_list`
--

DROP TABLE IF EXISTS `em_exclusion_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_exclusion_list` (
  `id` int(10) NOT NULL auto_increment,
  `exclusionid` int(10) NOT NULL default '0',
  `listid` int(10) NOT NULL default '0',
  `sync` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `exclusionid` (`exclusionid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_exclusion_list`
--

LOCK TABLES `em_exclusion_list` WRITE;
/*!40000 ALTER TABLE `em_exclusion_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_exclusion_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_filter`
--

DROP TABLE IF EXISTS `em_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_filter` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL default '',
  `logic` enum('and','or') NOT NULL default 'and',
  `hidden` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_filter`
--

LOCK TABLES `em_filter` WRITE;
/*!40000 ALTER TABLE `em_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_filter_group`
--

DROP TABLE IF EXISTS `em_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_filter_group` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filterid` int(10) unsigned NOT NULL default '0',
  `logic` enum('and','or') NOT NULL default 'and',
  PRIMARY KEY  (`id`),
  KEY `filterid` (`filterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_filter_group`
--

LOCK TABLES `em_filter_group` WRITE;
/*!40000 ALTER TABLE `em_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_filter_group_cond`
--

DROP TABLE IF EXISTS `em_filter_group_cond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_filter_group_cond` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filterid` int(10) unsigned NOT NULL default '0',
  `groupid` int(10) unsigned NOT NULL default '0',
  `type` enum('standard','custom','action') NOT NULL default 'standard',
  `lhs` text,
  `op` text,
  `rhs` text,
  PRIMARY KEY  (`id`),
  KEY `groupid` (`groupid`),
  KEY `filterid` (`filterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_filter_group_cond`
--

LOCK TABLES `em_filter_group_cond` WRITE;
/*!40000 ALTER TABLE `em_filter_group_cond` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_filter_group_cond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_filter_list`
--

DROP TABLE IF EXISTS `em_filter_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_filter_list` (
  `id` int(10) NOT NULL auto_increment,
  `filterid` int(10) unsigned NOT NULL default '0',
  `listid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `filterid` (`filterid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_filter_list`
--

LOCK TABLES `em_filter_list` WRITE;
/*!40000 ALTER TABLE `em_filter_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_filter_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_form`
--

DROP TABLE IF EXISTS `em_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_form` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL default '',
  `type` enum('both','subscribe','unsubscribe') NOT NULL default 'both',
  `sub1_type` enum('default','custom','redirect') NOT NULL default 'default',
  `sub1_value` text,
  `sub2_type` enum('default','custom','redirect') NOT NULL default 'default',
  `sub2_value` text,
  `sub3_type` enum('default','custom','redirect') NOT NULL default 'default',
  `sub3_value` text,
  `sub4_type` enum('default','custom','redirect') NOT NULL default 'default',
  `sub4_value` text,
  `unsub1_type` enum('default','custom','redirect') NOT NULL default 'default',
  `unsub1_value` text,
  `unsub2_type` enum('default','custom','redirect') NOT NULL default 'default',
  `unsub2_value` text,
  `unsub3_type` enum('default','custom','redirect') NOT NULL default 'default',
  `unsub3_value` text,
  `unsub4_type` enum('default','custom','redirect') NOT NULL default 'default',
  `unsub4_value` text,
  `up1_type` enum('default','custom','redirect') NOT NULL default 'default',
  `up1_value` text,
  `up2_type` enum('default','custom','redirect') NOT NULL default 'default',
  `up2_value` text,
  `allowselection` tinyint(1) NOT NULL default '0',
  `emailconfirmations` tinyint(1) NOT NULL default '0',
  `ask4fname` tinyint(1) NOT NULL default '1',
  `ask4lname` tinyint(1) NOT NULL default '1',
  `fields` text,
  `optinoptout` int(10) NOT NULL default '1',
  `captcha` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_form`
--

LOCK TABLES `em_form` WRITE;
/*!40000 ALTER TABLE `em_form` DISABLE KEYS */;
INSERT INTO `em_form` VALUES (1000,'Default Subscription Form','both','default','','default','','default','','default','','default','','default','','default','','default','','default','','default','',0,1,1,1,NULL,1,1),(1001,'Suscripciones','subscribe','redirect','http://www.teresapiacentino.com/gracias-suscripcion.html','default','','default','','default','','default','','default','','default','','default','','default','','default','',0,1,1,1,'1',1,0);
/*!40000 ALTER TABLE `em_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_form_list`
--

DROP TABLE IF EXISTS `em_form_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_form_list` (
  `id` int(10) NOT NULL auto_increment,
  `formid` int(10) NOT NULL default '0',
  `listid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `formid` (`formid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_form_list`
--

LOCK TABLES `em_form_list` WRITE;
/*!40000 ALTER TABLE `em_form_list` DISABLE KEYS */;
INSERT INTO `em_form_list` VALUES (1,1000,1),(2,1001,1);
/*!40000 ALTER TABLE `em_form_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_forward`
--

DROP TABLE IF EXISTS `em_forward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_forward` (
  `id` int(10) NOT NULL auto_increment,
  `subscriberid` int(10) NOT NULL default '0',
  `campaignid` int(10) NOT NULL default '0',
  `messageid` int(10) NOT NULL default '0',
  `email_from` varchar(250) NOT NULL default '',
  `name_from` varchar(100) NOT NULL default '',
  `email_to` varchar(250) NOT NULL default '',
  `name_to` varchar(100) default NULL,
  `brief_message` text,
  `tstamp` datetime default NULL,
  `ip` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `subscriberid` (`subscriberid`),
  KEY `campaignid` (`campaignid`),
  KEY `messageid` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_forward`
--

LOCK TABLES `em_forward` WRITE;
/*!40000 ALTER TABLE `em_forward` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_forward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_group`
--

DROP TABLE IF EXISTS `em_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_group` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(250) NOT NULL default '',
  `descript` text,
  `unsubscribelink` tinyint(1) unsigned NOT NULL default '0',
  `optinconfirm` tinyint(1) unsigned NOT NULL default '0',
  `p_admin` tinyint(1) NOT NULL default '0',
  `pg_list_add` tinyint(1) NOT NULL default '0',
  `pg_list_edit` tinyint(1) NOT NULL default '0',
  `pg_list_delete` tinyint(1) NOT NULL default '0',
  `pg_list_opt` tinyint(1) NOT NULL default '0',
  `pg_list_headers` tinyint(1) NOT NULL default '0',
  `pg_list_emailaccount` tinyint(1) NOT NULL default '0',
  `pg_list_bounce` tinyint(1) NOT NULL default '0',
  `pg_message_add` tinyint(1) NOT NULL default '0',
  `pg_message_edit` tinyint(1) NOT NULL default '0',
  `pg_message_delete` tinyint(1) NOT NULL default '0',
  `pg_message_send` tinyint(1) NOT NULL default '0',
  `pg_subscriber_add` tinyint(1) NOT NULL default '0',
  `pg_subscriber_edit` tinyint(1) NOT NULL default '0',
  `pg_subscriber_delete` tinyint(1) NOT NULL default '0',
  `pg_subscriber_import` tinyint(1) NOT NULL default '0',
  `pg_subscriber_approve` tinyint(1) NOT NULL default '0',
  `pg_subscriber_export` tinyint(1) NOT NULL default '0',
  `pg_subscriber_sync` tinyint(1) NOT NULL default '0',
  `pg_subscriber_filters` tinyint(1) NOT NULL default '0',
  `pg_subscriber_actions` tinyint(1) NOT NULL default '0',
  `pg_subscriber_fields` tinyint(1) NOT NULL default '0',
  `pg_user_add` tinyint(1) NOT NULL default '0',
  `pg_user_edit` tinyint(1) NOT NULL default '0',
  `pg_user_delete` tinyint(1) NOT NULL default '0',
  `pg_group_add` tinyint(1) NOT NULL default '0',
  `pg_group_edit` tinyint(1) NOT NULL default '0',
  `pg_group_delete` tinyint(1) NOT NULL default '0',
  `pg_template_add` tinyint(1) NOT NULL default '0',
  `pg_template_edit` tinyint(1) NOT NULL default '0',
  `pg_template_delete` tinyint(1) NOT NULL default '0',
  `pg_personalization_add` tinyint(1) NOT NULL default '0',
  `pg_personalization_edit` tinyint(1) NOT NULL default '0',
  `pg_personalization_delete` tinyint(1) NOT NULL default '0',
  `pg_form_add` tinyint(1) NOT NULL default '0',
  `pg_form_edit` tinyint(1) unsigned NOT NULL default '0',
  `pg_form_delete` tinyint(1) NOT NULL default '0',
  `pg_reports_campaign` tinyint(1) NOT NULL default '0',
  `pg_reports_list` tinyint(1) NOT NULL default '0',
  `pg_reports_user` tinyint(1) NOT NULL default '0',
  `pg_startup_reports` int(11) NOT NULL default '0',
  `pg_startup_gettingstarted` tinyint(1) NOT NULL default '1',
  `sdate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_group`
--

LOCK TABLES `em_group` WRITE;
/*!40000 ALTER TABLE `em_group` DISABLE KEYS */;
INSERT INTO `em_group` VALUES (1,'Visitor','This is a group for site visitors (people that are not logged in)',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2009-09-30 11:48:17'),(2,'User','This is a default user group (people that are logged in)',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2009-09-30 11:48:17'),(3,'Admin','This is a group for admin users (people that can manage content)',0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'2009-09-30 11:48:17');
/*!40000 ALTER TABLE `em_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_group_limit`
--

DROP TABLE IF EXISTS `em_group_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_group_limit` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `groupid` int(10) unsigned NOT NULL default '0',
  `limit_mail` int(10) unsigned NOT NULL default '0',
  `limit_mail_type` enum('day','week','month','month1st','monthcdate','year','ever') NOT NULL default 'month',
  `limit_subscriber` int(10) unsigned NOT NULL default '0',
  `limit_list` int(10) unsigned NOT NULL default '0',
  `limit_campaign` int(10) unsigned NOT NULL default '0',
  `limit_campaign_type` enum('day','week','month','month1st','monthcdate','year','ever') NOT NULL default 'month',
  `limit_attachment` int(10) NOT NULL default '-1',
  `limit_user` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_group_limit`
--

LOCK TABLES `em_group_limit` WRITE;
/*!40000 ALTER TABLE `em_group_limit` DISABLE KEYS */;
INSERT INTO `em_group_limit` VALUES (1,1,0,'month',0,0,0,'month',-1,0),(2,2,0,'month',0,0,0,'month',-1,0),(3,3,0,'month',0,0,0,'month',-1,0);
/*!40000 ALTER TABLE `em_group_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_group_mailer`
--

DROP TABLE IF EXISTS `em_group_mailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_group_mailer` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `groupid` int(10) unsigned NOT NULL default '0',
  `mailerid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `groupid` (`groupid`),
  KEY `mailerid` (`mailerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_group_mailer`
--

LOCK TABLES `em_group_mailer` WRITE;
/*!40000 ALTER TABLE `em_group_mailer` DISABLE KEYS */;
INSERT INTO `em_group_mailer` VALUES (1,3,1);
/*!40000 ALTER TABLE `em_group_mailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_header`
--

DROP TABLE IF EXISTS `em_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_header` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `name` varchar(75) NOT NULL default '',
  `value` varchar(75) NOT NULL default '',
  `tstamp` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_header`
--

LOCK TABLES `em_header` WRITE;
/*!40000 ALTER TABLE `em_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_header_list`
--

DROP TABLE IF EXISTS `em_header_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_header_list` (
  `id` int(10) NOT NULL auto_increment,
  `headerid` int(10) unsigned NOT NULL default '0',
  `listid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `headerid` (`headerid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_header_list`
--

LOCK TABLES `em_header_list` WRITE;
/*!40000 ALTER TABLE `em_header_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_header_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_link`
--

DROP TABLE IF EXISTS `em_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_link` (
  `id` int(10) NOT NULL auto_increment,
  `campaignid` int(10) NOT NULL default '0',
  `messageid` int(10) NOT NULL default '0',
  `link` text,
  `name` text,
  PRIMARY KEY  (`id`),
  KEY `campaignid` (`campaignid`),
  KEY `messageid` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_link`
--

LOCK TABLES `em_link` WRITE;
/*!40000 ALTER TABLE `em_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_link_action`
--

DROP TABLE IF EXISTS `em_link_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_link_action` (
  `id` int(10) NOT NULL auto_increment,
  `linkid` int(10) NOT NULL default '0',
  `action` text,
  `value` text,
  PRIMARY KEY  (`id`),
  KEY `linkid` (`linkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_link_action`
--

LOCK TABLES `em_link_action` WRITE;
/*!40000 ALTER TABLE `em_link_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_link_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_link_data`
--

DROP TABLE IF EXISTS `em_link_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_link_data` (
  `id` int(10) NOT NULL auto_increment,
  `linkid` int(10) NOT NULL default '0',
  `tstamp` datetime default NULL,
  `subscriberid` int(10) NOT NULL default '0',
  `email` varchar(250) NOT NULL default '',
  `times` int(10) NOT NULL default '0',
  `ip` int(10) unsigned NOT NULL default '0',
  `ua` varchar(250) NOT NULL default '',
  `referer` text,
  PRIMARY KEY  (`id`),
  KEY `linkid` (`linkid`),
  KEY `linkid_subscriberid` (`linkid`,`subscriberid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_link_data`
--

LOCK TABLES `em_link_data` WRITE;
/*!40000 ALTER TABLE `em_link_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_link_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_link_log`
--

DROP TABLE IF EXISTS `em_link_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_link_log` (
  `id` int(10) NOT NULL auto_increment,
  `linkid` int(10) NOT NULL default '0',
  `tstamp` datetime default NULL,
  `subscriberid` int(10) NOT NULL default '0',
  `ip` int(10) unsigned NOT NULL default '0',
  `ua` varchar(250) NOT NULL default '',
  `referer` text,
  PRIMARY KEY  (`id`),
  KEY `linkid` (`linkid`),
  KEY `subscriberid` (`subscriberid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_link_log`
--

LOCK TABLES `em_link_log` WRITE;
/*!40000 ALTER TABLE `em_link_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_link_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_list`
--

DROP TABLE IF EXISTS `em_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_list` (
  `id` int(10) NOT NULL auto_increment,
  `stringid` varchar(128) NOT NULL default '',
  `userid` int(10) NOT NULL default '0',
  `name` varchar(250) NOT NULL default '',
  `cdate` datetime default NULL,
  `p_use_tracking` tinyint(1) NOT NULL default '1',
  `p_use_analytics_read` tinyint(1) NOT NULL default '0',
  `p_use_analytics_link` tinyint(1) NOT NULL default '0',
  `p_embed_image` tinyint(1) NOT NULL default '1',
  `p_use_captcha` tinyint(1) NOT NULL default '1',
  `p_duplicate_send` tinyint(1) NOT NULL default '0',
  `p_duplicate_subscribe` tinyint(1) NOT NULL default '0',
  `send_last_broadcast` tinyint(1) NOT NULL default '0',
  `private` tinyint(1) NOT NULL default '0',
  `analytics_domains` text,
  `analytics_source` varchar(250) NOT NULL default '',
  `analytics_ua` text,
  `carboncopy` text,
  `subscription_notify` text,
  `unsubscription_notify` text,
  `require_name` tinyint(1) NOT NULL default '0',
  `get_unsubscribe_reason` tinyint(1) NOT NULL default '0',
  `to_name` varchar(250) NOT NULL default 'Subscriber',
  `optinoptout` int(10) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_list`
--

LOCK TABLES `em_list` WRITE;
/*!40000 ALTER TABLE `em_list` DISABLE KEYS */;
INSERT INTO `em_list` VALUES (1,'novedades',1,'Novedades','2009-09-30 12:13:49',1,0,0,1,0,0,0,0,0,'','Novedades','','','','',1,1,'Subscriber',1);
/*!40000 ALTER TABLE `em_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_list_field`
--

DROP TABLE IF EXISTS `em_list_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_list_field` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(250) NOT NULL default '',
  `type` tinyint(1) NOT NULL default '0',
  `expl` text,
  `req` int(3) NOT NULL default '0',
  `onfocus` text,
  `bubble_content` varchar(250) NOT NULL default '',
  `label` int(5) NOT NULL default '0',
  `show_in_list` tinyint(1) NOT NULL default '0',
  `perstag` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_list_field`
--

LOCK TABLES `em_list_field` WRITE;
/*!40000 ALTER TABLE `em_list_field` DISABLE KEYS */;
INSERT INTO `em_list_field` VALUES (1,'country',1,'',0,'','',0,0,'');
/*!40000 ALTER TABLE `em_list_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_list_field_rel`
--

DROP TABLE IF EXISTS `em_list_field_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_list_field_rel` (
  `id` int(10) NOT NULL auto_increment,
  `fieldid` int(10) unsigned NOT NULL default '0',
  `relid` int(10) unsigned NOT NULL default '0',
  `dorder` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `dorder` (`dorder`),
  KEY `fieldid` (`fieldid`),
  KEY `relid` (`relid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_list_field_rel`
--

LOCK TABLES `em_list_field_rel` WRITE;
/*!40000 ALTER TABLE `em_list_field_rel` DISABLE KEYS */;
INSERT INTO `em_list_field_rel` VALUES (1,1,0,0);
/*!40000 ALTER TABLE `em_list_field_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_list_field_value`
--

DROP TABLE IF EXISTS `em_list_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_list_field_value` (
  `id` int(10) NOT NULL auto_increment,
  `relid` int(10) NOT NULL default '0',
  `fieldid` int(10) NOT NULL default '0',
  `val` longtext,
  PRIMARY KEY  (`id`),
  KEY `fidrelid` (`fieldid`,`relid`),
  KEY `relid` (`relid`)
) ENGINE=InnoDB AUTO_INCREMENT=1174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_list_field_value`
--

LOCK TABLES `em_list_field_value` WRITE;
/*!40000 ALTER TABLE `em_list_field_value` DISABLE KEYS */;
INSERT INTO `em_list_field_value` VALUES (1,4,1,'ES'),(2,3,1,'AR'),(3,5,1,'CA'),(4,6,1,'CO'),(5,7,1,'MX'),(6,8,1,'PE'),(7,9,1,'AR'),(8,10,1,'PE'),(9,11,1,'MX'),(10,12,1,'VE'),(11,13,1,'AR'),(12,14,1,'~|'),(13,15,1,'~|'),(14,16,1,'AR'),(15,17,1,'BO'),(16,18,1,'AR'),(17,19,1,'AR'),(18,20,1,'AR'),(19,21,1,'CA'),(20,22,1,'CL'),(21,23,1,'AR'),(22,24,1,'CO'),(23,25,1,'AR'),(24,26,1,'CL'),(25,27,1,'US'),(26,28,1,'BO'),(27,29,1,'~|'),(28,30,1,'CO'),(29,31,1,'MX'),(30,32,1,'AR'),(31,33,1,'AR'),(32,34,1,'AR'),(33,35,1,'AR'),(34,36,1,'AR'),(35,37,1,'ES'),(36,38,1,'AR'),(37,39,1,'AR'),(38,40,1,'AR'),(39,41,1,'CL'),(40,42,1,'PE'),(41,43,1,'AR'),(42,44,1,'~|'),(43,45,1,'~|'),(44,46,1,'~|'),(45,47,1,'~|'),(46,48,1,'~|'),(47,49,1,'~|'),(48,50,1,'~|'),(49,51,1,'~|'),(50,52,1,'~|'),(51,53,1,'~|'),(52,54,1,'~|'),(53,55,1,'~|'),(54,56,1,'~|'),(55,57,1,'~|'),(56,58,1,'AR'),(57,59,1,'AR'),(58,60,1,'AR'),(59,61,1,'AR'),(60,62,1,'PE'),(61,63,1,'AR'),(62,64,1,'~|'),(63,65,1,'~|'),(64,66,1,'~|'),(65,67,1,'AR'),(66,68,1,'AR'),(67,69,1,'~|'),(68,70,1,'~|'),(69,71,1,'AR'),(70,72,1,'AR'),(71,73,1,'AR'),(72,74,1,'AR'),(73,75,1,'AR'),(74,76,1,'AR'),(75,77,1,'ES'),(76,78,1,'AR'),(77,79,1,'AR'),(78,80,1,'AR'),(79,81,1,'AR'),(80,82,1,'AR'),(81,83,1,'AR'),(82,84,1,'AR'),(83,85,1,'IT'),(84,86,1,'AR'),(85,87,1,'AR'),(86,88,1,'AR'),(87,89,1,'AR'),(88,90,1,'AR'),(89,91,1,'ES'),(90,92,1,'~|'),(91,93,1,'~|'),(92,94,1,'AR'),(93,95,1,'~|'),(94,96,1,'AR'),(95,97,1,'~|'),(96,98,1,'AR'),(97,99,1,'~|'),(98,100,1,'~|'),(99,101,1,'~|'),(100,102,1,'AR'),(101,103,1,'PE'),(102,104,1,'AR'),(103,105,1,'PE'),(104,106,1,'AR'),(105,107,1,'ES'),(106,108,1,'~|'),(107,109,1,'AR'),(108,110,1,'BR'),(109,111,1,'AR'),(110,112,1,'~|'),(111,113,1,'AR'),(112,114,1,'~|'),(113,115,1,'AR'),(114,116,1,'AR'),(115,117,1,'~|'),(116,118,1,'NI'),(117,119,1,'ES'),(118,120,1,'AR'),(119,121,1,'~|'),(120,122,1,'AR'),(121,123,1,'AR'),(122,124,1,'AR'),(123,125,1,'ES'),(124,126,1,'AR'),(125,127,1,'~|'),(126,128,1,'AR'),(127,129,1,'~|'),(128,130,1,'~|'),(129,131,1,'ES'),(130,132,1,'AR'),(131,133,1,'ES'),(132,134,1,'CO'),(133,135,1,'MX'),(134,136,1,'AR'),(135,137,1,'~|'),(136,138,1,'AR'),(137,139,1,'AR'),(138,140,1,'AR'),(139,141,1,'CA'),(140,142,1,'CO'),(141,143,1,'AR'),(142,144,1,'AR'),(143,145,1,'US'),(144,146,1,'CR'),(145,147,1,'~|'),(146,148,1,'AR'),(147,149,1,'MX'),(148,150,1,'AR'),(149,151,1,'AR'),(150,152,1,'VE'),(151,153,1,'ES'),(152,154,1,'MX'),(153,155,1,'CL'),(154,156,1,'AR'),(155,157,1,'BO'),(156,158,1,'VE'),(157,159,1,'AR'),(158,160,1,'ES'),(159,161,1,'CO'),(160,162,1,'BO'),(161,163,1,'CO'),(162,164,1,'AR'),(163,165,1,'AR'),(164,166,1,'CL'),(165,167,1,'AR'),(166,168,1,'AR'),(167,169,1,'US'),(168,170,1,'CO'),(169,171,1,'AR'),(170,172,1,'CL'),(171,173,1,'MX'),(172,174,1,'AR'),(173,175,1,'AR'),(174,176,1,'PE'),(175,177,1,'CO'),(176,178,1,'MX'),(177,179,1,'AR'),(178,180,1,'CO'),(179,181,1,'CO'),(180,182,1,'AR'),(181,183,1,'AR'),(182,184,1,'AR'),(183,185,1,'AR'),(184,186,1,'AR'),(185,187,1,'AR'),(186,188,1,'AR'),(187,189,1,'AR'),(188,190,1,'UY'),(189,191,1,'MX'),(190,192,1,'ES'),(191,193,1,'AR'),(192,194,1,'AR'),(193,195,1,'CO'),(194,196,1,'VE'),(195,197,1,'MX'),(196,198,1,'ES'),(197,199,1,'AR'),(198,200,1,'AR'),(199,201,1,'CR'),(200,202,1,'AR'),(201,203,1,'~|'),(202,204,1,'CO'),(203,205,1,'~|'),(204,206,1,'AR'),(205,207,1,'AR'),(206,208,1,'MX'),(207,209,1,'AR'),(208,210,1,'CR'),(209,211,1,'AR'),(210,212,1,'AR'),(211,213,1,'CR'),(212,214,1,'AR'),(213,215,1,'AR'),(214,216,1,'AR'),(215,217,1,'~|'),(216,218,1,'UY'),(217,219,1,'ES'),(218,220,1,'AR'),(219,221,1,'AR'),(220,222,1,'MX'),(221,223,1,'MX'),(222,224,1,'ES'),(223,225,1,'~|'),(224,226,1,'AR'),(225,227,1,'ES'),(226,228,1,'AR'),(227,229,1,'AR'),(228,230,1,'~|'),(229,231,1,'MX'),(230,232,1,'AR'),(231,233,1,'MX'),(232,234,1,'~|'),(233,235,1,'AR'),(234,236,1,'AR'),(235,237,1,'MX'),(236,238,1,'DE'),(237,239,1,'AR'),(238,240,1,'US'),(239,241,1,'CL'),(240,242,1,'AR'),(241,243,1,'CO'),(242,244,1,'ES'),(243,245,1,'AR'),(244,246,1,'VE'),(245,247,1,'CO'),(246,248,1,'AR'),(247,249,1,'BO'),(248,250,1,'CO'),(249,251,1,'PA'),(250,252,1,'SV'),(251,253,1,'MX'),(252,254,1,'AR'),(253,255,1,'ES'),(254,256,1,'PE'),(255,257,1,'~|'),(256,258,1,'AR'),(257,259,1,'ES'),(258,260,1,'MX'),(259,261,1,'AR'),(260,262,1,'AR'),(261,263,1,'CO'),(262,264,1,'AR'),(263,265,1,'AR'),(264,266,1,'AR'),(265,267,1,'AR'),(266,268,1,'AR'),(267,269,1,'SV'),(268,270,1,'AR'),(269,271,1,'AR'),(270,272,1,'MX'),(271,273,1,'CL'),(272,274,1,'MX'),(273,275,1,'AR'),(274,276,1,'ES'),(275,277,1,'AR'),(276,278,1,'ES'),(277,279,1,'GT'),(278,280,1,'AR'),(279,281,1,'AR'),(280,282,1,'BO'),(281,283,1,'CO'),(282,284,1,'ES'),(283,285,1,'ES'),(284,286,1,'AR'),(285,287,1,'US'),(286,288,1,'CL'),(287,289,1,'ES'),(288,290,1,'MX'),(289,291,1,'ES'),(290,292,1,'ES'),(291,293,1,'ES'),(292,294,1,'BO'),(293,295,1,'EC'),(294,296,1,'MX'),(295,297,1,'~|'),(296,298,1,'AR'),(297,299,1,'US'),(298,300,1,'ES'),(299,301,1,'AR'),(300,302,1,'CO'),(301,303,1,'DO'),(302,304,1,'VE'),(303,305,1,'CO'),(304,306,1,'AR'),(305,307,1,'ES'),(306,308,1,'AR'),(307,309,1,'AR'),(308,310,1,'MX'),(309,311,1,'AR'),(310,312,1,'AR'),(311,313,1,'AR'),(312,314,1,'CO'),(313,315,1,'ES'),(314,316,1,'~|'),(315,317,1,'AR'),(316,318,1,'AR'),(317,319,1,'AR'),(318,320,1,'CO'),(319,321,1,'AR'),(320,322,1,'~|'),(321,323,1,'ES'),(322,324,1,'CL'),(323,325,1,'AR'),(324,326,1,'AR'),(325,327,1,'AR'),(326,328,1,'ES'),(327,329,1,'CL'),(328,330,1,'ES'),(329,331,1,'AR'),(330,332,1,'CO'),(331,333,1,'AR'),(332,334,1,'~|'),(333,335,1,'MX'),(334,336,1,'AR'),(335,337,1,'AR'),(336,338,1,'AR'),(337,339,1,'AR'),(338,340,1,'AR'),(339,341,1,'AR'),(340,342,1,'CO'),(341,343,1,'MX'),(342,344,1,'AR'),(343,345,1,'CO'),(344,346,1,'AR'),(345,347,1,'AR'),(346,348,1,'AR'),(347,349,1,'MX'),(348,350,1,'CO'),(349,351,1,'ES'),(350,352,1,'AR'),(351,353,1,'CL'),(352,354,1,'AR'),(353,355,1,'CO'),(354,356,1,'AR'),(355,357,1,'AR'),(356,358,1,'~|'),(357,359,1,'AR'),(358,360,1,'MX'),(359,361,1,'AR'),(360,362,1,'CO'),(361,363,1,'AR'),(362,364,1,'~|'),(363,365,1,'~|'),(364,366,1,'AR'),(365,367,1,'ES'),(366,368,1,'~|'),(367,369,1,'MX'),(368,370,1,'ES'),(369,371,1,'CO'),(370,372,1,'CL'),(371,373,1,'AR'),(372,374,1,'CO'),(373,375,1,'~|'),(374,376,1,'ES'),(375,377,1,'AR'),(376,378,1,'PE'),(377,379,1,'AR'),(378,380,1,'AR'),(379,381,1,'AR'),(380,382,1,'AR'),(381,383,1,'DO'),(382,384,1,'CL'),(383,385,1,'CL'),(384,386,1,'ES'),(385,387,1,'MX'),(386,388,1,'AR'),(387,389,1,'PY'),(388,390,1,'AR'),(389,391,1,'BO'),(390,392,1,'AR'),(391,393,1,'AR'),(392,394,1,'CO'),(393,395,1,'CO'),(394,396,1,'AR'),(395,397,1,'AR'),(396,398,1,'AR'),(397,399,1,'AR'),(398,400,1,'MX'),(399,401,1,'MX'),(400,402,1,'AR'),(401,403,1,'AR'),(402,404,1,'CO'),(403,405,1,'ES'),(404,406,1,'ES'),(405,407,1,'VE'),(406,408,1,'MX'),(407,409,1,'VE'),(408,410,1,'ES'),(409,411,1,'~|'),(410,412,1,'AR'),(411,413,1,'AR'),(412,414,1,'~|'),(413,415,1,'AR'),(414,416,1,'AR'),(415,417,1,'ES'),(416,418,1,'~|'),(417,419,1,'ES'),(418,420,1,'ES'),(419,421,1,'MX'),(420,422,1,'ES'),(421,423,1,'AR'),(422,424,1,'MX'),(423,425,1,'MX'),(424,426,1,'CO'),(425,427,1,'AR'),(426,428,1,'~|'),(427,429,1,'CL'),(428,430,1,'DO'),(429,431,1,'CL'),(430,432,1,'BO'),(431,433,1,'AR'),(432,434,1,'ES'),(433,435,1,'~|'),(434,436,1,'ES'),(435,437,1,'MX'),(436,438,1,'NI'),(437,439,1,'CL'),(438,440,1,'CL'),(439,441,1,'CO'),(440,442,1,'DO'),(441,443,1,'CO'),(442,444,1,'AR'),(443,445,1,'AR'),(444,446,1,'AR'),(445,447,1,'AR'),(446,448,1,'PY'),(447,449,1,'AR'),(448,450,1,'AR'),(449,451,1,'UY'),(450,452,1,'MX'),(451,453,1,'AR'),(452,454,1,'AR'),(453,455,1,'AR'),(454,456,1,'CO'),(455,457,1,'AR'),(456,458,1,'AR'),(457,459,1,'CO'),(458,460,1,'~|'),(459,461,1,'MX'),(460,462,1,'AR'),(461,463,1,'ES'),(462,464,1,'ES'),(463,465,1,'AR'),(464,466,1,'AR'),(465,467,1,'PE'),(466,468,1,'MX'),(467,469,1,'AR'),(468,470,1,'AR'),(469,471,1,'CO'),(470,472,1,'AR'),(471,473,1,'CO'),(472,474,1,'CO'),(473,475,1,'AR'),(474,476,1,'US'),(475,477,1,'EC'),(476,478,1,'MX'),(477,479,1,'CL'),(478,480,1,'AR'),(479,481,1,'PE'),(480,482,1,'AR'),(481,483,1,'EC'),(482,484,1,'AR'),(483,485,1,'AR'),(484,486,1,'MX'),(485,487,1,'AR'),(486,488,1,'CO'),(487,489,1,'AR'),(488,490,1,'AR'),(489,491,1,'MX'),(490,492,1,'ES'),(491,493,1,'AR'),(492,494,1,'AR'),(493,495,1,'CO'),(494,496,1,'VE'),(495,497,1,'MX'),(496,498,1,'~|'),(497,499,1,'AR'),(498,500,1,'PE'),(499,501,1,'CO'),(500,502,1,'CO'),(501,503,1,'AR'),(502,504,1,'~|'),(503,505,1,'AR'),(504,506,1,'SV'),(505,507,1,'PE'),(506,508,1,'MX'),(507,509,1,'MX'),(508,510,1,'MX'),(509,511,1,'ES'),(510,512,1,'ES'),(511,513,1,'AR'),(512,514,1,'AR'),(513,515,1,'CO'),(514,516,1,'AR'),(515,517,1,'CO'),(516,518,1,'CO'),(517,519,1,'ES'),(518,520,1,'AR'),(519,521,1,'MX'),(520,522,1,'AR'),(521,523,1,'CO'),(522,524,1,'AR'),(523,525,1,'PE'),(524,526,1,'PE'),(525,527,1,'MX'),(526,528,1,'ES'),(527,529,1,'AR'),(528,530,1,'AR'),(529,531,1,'AR'),(530,532,1,'CL'),(531,533,1,'AR'),(532,534,1,'CO'),(533,535,1,'AR'),(534,536,1,'MX'),(535,537,1,'AR'),(536,538,1,'CL'),(537,539,1,'ES'),(538,540,1,'MX'),(539,541,1,'MX'),(540,542,1,'CO'),(541,543,1,'ES'),(542,544,1,'CL'),(543,545,1,'ES'),(544,546,1,'MX'),(545,547,1,'MX'),(546,548,1,'AR'),(547,549,1,'MX'),(548,550,1,'AR'),(549,551,1,'CO'),(550,552,1,'CL'),(551,553,1,'CO'),(552,554,1,'AR'),(553,555,1,'CO'),(554,556,1,'AR'),(555,557,1,'AR'),(556,558,1,'~|'),(557,559,1,'AR'),(558,560,1,'MX'),(559,561,1,'ES'),(560,562,1,'MX'),(561,563,1,'AR'),(562,564,1,'CO'),(563,565,1,'MX'),(564,566,1,'ES'),(565,567,1,'MX'),(566,568,1,'AR'),(567,569,1,'AR'),(568,570,1,'~|'),(569,571,1,'CO'),(570,572,1,'EC'),(571,573,1,'~|'),(572,574,1,'AR'),(573,575,1,'AR'),(574,576,1,'PE'),(575,577,1,'CO'),(576,578,1,'AR'),(577,579,1,'CL'),(578,580,1,'AR'),(579,581,1,'AR'),(580,582,1,'AR'),(581,583,1,'MX'),(582,584,1,'CO'),(583,585,1,'AR'),(584,586,1,'AR'),(585,587,1,'AR'),(586,588,1,'CO'),(587,589,1,'~|'),(588,590,1,'US'),(589,591,1,'VE'),(590,592,1,'ES'),(591,593,1,'VE'),(592,594,1,'MX'),(593,595,1,'~|'),(594,596,1,'AR'),(595,597,1,'AR'),(596,598,1,'VE'),(597,599,1,'AR'),(598,600,1,'AR'),(599,601,1,'AR'),(600,602,1,'~|'),(601,603,1,'UY'),(602,604,1,'AR'),(603,605,1,'~|'),(604,606,1,'CL'),(605,607,1,'AR'),(606,608,1,'ES'),(607,609,1,'MX'),(608,610,1,'CL'),(609,611,1,'MX'),(610,612,1,'PE'),(611,613,1,'MX'),(612,614,1,'CO'),(613,615,1,'ES'),(614,616,1,'CO'),(615,617,1,'CO'),(616,618,1,'MX'),(617,619,1,'AR'),(618,620,1,'MX'),(619,621,1,'AR'),(620,622,1,'MX'),(621,623,1,'PE'),(622,624,1,'CO'),(623,625,1,'AR'),(624,626,1,'MY'),(625,627,1,'AR'),(626,628,1,'AR'),(627,629,1,'AR'),(628,630,1,'AR'),(629,631,1,'AR'),(630,632,1,'ES'),(631,633,1,'AR'),(632,634,1,'AR'),(633,635,1,'AR'),(634,636,1,'MX'),(635,637,1,'~|'),(636,638,1,'ES'),(637,639,1,'AR'),(638,640,1,'PE'),(639,641,1,'CR'),(640,642,1,'AR'),(641,643,1,'AR'),(642,644,1,'AR'),(643,645,1,'AR'),(644,646,1,'AR'),(645,647,1,'ES'),(646,648,1,'CO'),(647,649,1,'AR'),(648,650,1,'CO'),(649,651,1,'~|'),(650,652,1,'AR'),(651,653,1,'PE'),(652,654,1,'AR'),(653,655,1,'AR'),(654,656,1,'~|'),(655,657,1,'~|'),(656,658,1,'CO'),(657,659,1,'MX'),(658,660,1,'DE'),(659,661,1,'AR'),(660,662,1,'CO'),(661,663,1,'ES'),(662,664,1,'CO'),(663,665,1,'AR'),(664,666,1,'CL'),(665,667,1,'AR'),(666,668,1,'VE'),(667,669,1,'US'),(668,670,1,'CO'),(669,671,1,'~|'),(670,672,1,'CL'),(671,673,1,'ES'),(672,674,1,'MX'),(673,675,1,'CO'),(674,676,1,'ES'),(675,677,1,'AR'),(676,678,1,'ES'),(677,679,1,'AR'),(678,680,1,'MX'),(679,681,1,'AR'),(680,682,1,'MX'),(681,683,1,'AR'),(682,684,1,'AR'),(683,685,1,'AR'),(684,686,1,'AR'),(685,687,1,'MX'),(686,688,1,'AR'),(687,689,1,'CO'),(688,690,1,'~|'),(689,691,1,'US'),(690,692,1,'CL'),(691,693,1,'AR'),(692,694,1,'MX'),(693,695,1,'AR'),(694,696,1,'MX'),(695,697,1,'CO'),(696,698,1,'US'),(697,699,1,'AR'),(698,700,1,'MX'),(699,701,1,'AR'),(700,702,1,'CO'),(701,703,1,'~|'),(702,704,1,'AR'),(703,705,1,'CO'),(704,706,1,'~|'),(705,707,1,'PE'),(706,708,1,'SV'),(707,709,1,'CO'),(708,710,1,'US'),(709,711,1,'MX'),(710,712,1,'CO'),(711,713,1,'AR'),(712,714,1,'BO'),(713,715,1,'CO'),(714,716,1,'GT'),(715,717,1,'AR'),(716,718,1,'AR'),(717,719,1,'MX'),(718,720,1,'MX'),(719,721,1,'AR'),(720,722,1,'AR'),(721,723,1,'CO'),(722,724,1,'PR'),(723,725,1,'AR'),(724,726,1,'ES'),(725,727,1,'~|'),(726,728,1,'AR'),(727,729,1,'CO'),(728,730,1,'VE'),(729,731,1,'AR'),(730,732,1,'AR'),(731,733,1,'~|'),(732,734,1,'PE'),(733,735,1,'AR'),(734,736,1,'VE'),(735,737,1,'AR'),(736,738,1,'AR'),(737,739,1,'AR'),(738,740,1,'AR'),(739,741,1,'PE'),(740,742,1,'AR'),(741,743,1,'MX'),(742,744,1,'ES'),(743,745,1,'CO'),(744,746,1,'CL'),(745,747,1,'AR'),(746,748,1,'~|'),(747,749,1,'UY'),(748,750,1,'AR'),(749,751,1,'AR'),(750,752,1,'AR'),(751,753,1,'CO'),(752,754,1,'PE'),(753,755,1,'AR'),(754,756,1,'MX'),(755,757,1,'MX'),(756,758,1,'ES'),(757,759,1,'AR'),(758,760,1,'~|'),(759,761,1,'AR'),(760,762,1,'AR'),(761,763,1,'AR'),(762,764,1,'~|'),(763,765,1,'~|'),(764,766,1,'~|'),(765,767,1,'AR'),(766,768,1,'AR'),(767,769,1,'MX'),(768,770,1,'PE'),(769,771,1,'MX'),(770,772,1,'AR'),(771,773,1,'AR'),(772,774,1,'AR'),(773,775,1,'MX'),(774,776,1,'CL'),(775,777,1,'AR'),(776,778,1,'MX'),(777,779,1,'AR'),(778,780,1,'AR'),(779,781,1,'AR'),(780,782,1,'CO'),(781,783,1,'CR'),(782,784,1,'AR'),(783,785,1,'AR'),(784,786,1,'CO'),(785,787,1,'MX'),(786,788,1,'ES'),(787,789,1,'CO'),(788,790,1,'AR'),(789,791,1,'AR'),(790,792,1,'AR'),(791,793,1,'ES'),(792,794,1,'MX'),(793,795,1,'~|'),(794,796,1,'AR'),(795,797,1,'AR'),(796,798,1,'VE'),(797,799,1,'CO'),(798,800,1,'AR'),(799,801,1,'AR'),(800,802,1,'CO'),(801,803,1,'~|'),(802,804,1,'CO'),(803,805,1,'MX'),(804,806,1,'CO'),(805,807,1,'VE'),(806,808,1,'~|'),(807,809,1,'AR'),(808,810,1,'AR'),(809,811,1,'MX'),(810,812,1,'US'),(811,813,1,'CO'),(812,814,1,'AR'),(813,815,1,'AR'),(814,816,1,'CO'),(815,817,1,'CO'),(816,818,1,'~|'),(817,819,1,'AR'),(818,820,1,'ES'),(819,821,1,'CL'),(820,822,1,'CL'),(821,823,1,'CO'),(822,824,1,'VE'),(823,825,1,'~|'),(824,826,1,'ES'),(825,827,1,'ES'),(826,828,1,'AR'),(827,829,1,'BO'),(828,830,1,'AR'),(829,831,1,'AR'),(830,832,1,'CO'),(831,833,1,'CO'),(832,834,1,'~|'),(833,835,1,'UY'),(834,836,1,'PE'),(835,837,1,'AR'),(836,838,1,'CO'),(837,839,1,'DO'),(838,840,1,'AR'),(839,841,1,'~|'),(840,842,1,'CO'),(841,843,1,'VE'),(842,844,1,'AR'),(843,845,1,'~|'),(844,846,1,'MX'),(845,847,1,'AR'),(846,848,1,'AR'),(847,849,1,'CO'),(848,850,1,'PE'),(849,851,1,'~|'),(850,852,1,'UY'),(851,853,1,'AR'),(852,854,1,'ES'),(853,855,1,'AR'),(854,856,1,'ES'),(855,857,1,'NI'),(856,858,1,'ES'),(857,859,1,'AR'),(858,860,1,'ES'),(859,861,1,'MX'),(860,862,1,'AR'),(861,863,1,'~|'),(862,864,1,'~|'),(863,865,1,'EC'),(864,866,1,'CO'),(865,867,1,'CO'),(866,868,1,'AR'),(867,869,1,'CL'),(868,870,1,'~|'),(869,871,1,'CL'),(870,872,1,'DO'),(871,873,1,'AR'),(872,874,1,'CL'),(873,875,1,'AR'),(874,876,1,'MX'),(875,877,1,'MX'),(876,878,1,'CO'),(877,879,1,'EC'),(878,880,1,'AR'),(879,881,1,'~|'),(880,882,1,'AR'),(881,883,1,'~|'),(882,884,1,'CO'),(883,885,1,'AR'),(884,886,1,'AR'),(885,887,1,'CO'),(886,888,1,'AR'),(887,889,1,'AR'),(888,890,1,'PE'),(889,891,1,'CO'),(890,892,1,'CL'),(891,893,1,'CL'),(892,894,1,'AR'),(893,895,1,'CL'),(894,896,1,'AR'),(895,897,1,'ES'),(896,898,1,'CO'),(897,899,1,'ES'),(898,900,1,'~|'),(899,901,1,'MX'),(900,902,1,'ES'),(901,903,1,'MX'),(902,904,1,'AR'),(903,905,1,'AR'),(904,906,1,'~|'),(905,907,1,'AR'),(906,908,1,'MX'),(907,909,1,'~|'),(908,910,1,'CO'),(909,911,1,'~|'),(910,912,1,'~|'),(911,913,1,'UY'),(912,914,1,'AR'),(913,915,1,'CO'),(914,916,1,'MX'),(915,917,1,'AR'),(916,918,1,'SV'),(917,919,1,'AR'),(918,920,1,'CO'),(919,921,1,'PE'),(920,922,1,'AR'),(921,923,1,'EC'),(922,924,1,'AR'),(923,925,1,'AR'),(924,926,1,'AR'),(925,927,1,'CL'),(926,928,1,'CO'),(927,929,1,'MX'),(928,930,1,'MX'),(929,931,1,'AR'),(930,932,1,'CL'),(931,933,1,'AR'),(932,934,1,'EC'),(933,935,1,'AR'),(934,936,1,'argentina'),(935,937,1,'CO'),(936,938,1,'AR'),(937,939,1,'AR'),(938,940,1,'MX'),(939,941,1,'UY'),(940,942,1,'CO'),(941,943,1,'CO'),(942,944,1,'MX'),(943,945,1,'~|'),(944,946,1,'AR'),(945,947,1,'AR'),(946,948,1,'CL'),(947,949,1,'MX'),(948,950,1,'CO'),(949,951,1,'AR'),(950,952,1,'CL'),(951,953,1,'AR'),(952,954,1,'~|'),(953,955,1,'MX'),(954,956,1,'AR'),(955,957,1,'AR'),(956,958,1,'CL'),(957,959,1,'ES'),(958,960,1,'CO'),(959,961,1,'AR'),(960,962,1,'MX'),(961,963,1,'AR'),(962,964,1,'CO'),(963,965,1,'AR'),(964,966,1,'ES'),(965,967,1,'~|'),(966,968,1,'~|'),(967,969,1,'CL'),(968,970,1,'AR'),(969,971,1,'MX'),(970,972,1,'PE'),(971,973,1,'AR'),(972,974,1,'~|'),(973,975,1,'US'),(974,976,1,'MX'),(975,977,1,'MX'),(976,978,1,'~|'),(977,979,1,'AR'),(978,980,1,'~|'),(979,981,1,'NI'),(980,982,1,'CL'),(981,983,1,'CO'),(982,984,1,'MX'),(983,985,1,'AR'),(984,986,1,'US'),(985,987,1,'AR'),(986,988,1,'AR'),(987,989,1,'EC'),(988,990,1,'~|'),(989,991,1,'AR'),(990,992,1,'AR'),(991,993,1,'CL'),(992,994,1,'~|'),(993,995,1,'ES'),(994,996,1,'CO'),(995,997,1,'US'),(996,998,1,'CL'),(997,999,1,'CL'),(998,1000,1,'CO'),(999,1001,1,'AR'),(1000,1002,1,'CL'),(1001,1003,1,'AR'),(1002,1004,1,'AR'),(1003,1005,1,'CR'),(1004,1006,1,'~|'),(1005,1007,1,'~|'),(1006,1008,1,'CL'),(1007,1009,1,'MX'),(1008,1010,1,'PA'),(1009,1011,1,'AR'),(1010,1012,1,'AR'),(1011,1013,1,'MX'),(1012,1014,1,'~|'),(1013,1015,1,'AR'),(1014,1016,1,'AR'),(1015,1017,1,'ES'),(1016,1018,1,'AR'),(1017,1019,1,'CL'),(1018,1020,1,'PE'),(1019,1021,1,'~|'),(1020,1022,1,'CO'),(1021,1023,1,'MX'),(1022,1024,1,'AR'),(1023,1025,1,'MX'),(1024,1026,1,'CO'),(1025,1027,1,'CO'),(1026,1028,1,'CL'),(1027,1029,1,'AR'),(1028,1030,1,'AR'),(1029,1031,1,'AR'),(1030,1032,1,'MX'),(1031,1033,1,'GT'),(1032,1034,1,'EC'),(1033,1035,1,'ES'),(1034,1036,1,'AR'),(1035,1037,1,'AR'),(1036,1038,1,'~|'),(1037,1039,1,'AR'),(1038,1040,1,'AR'),(1039,1041,1,'VE'),(1040,1042,1,'AR'),(1041,1043,1,'CL'),(1042,1044,1,'AR'),(1043,1045,1,'AR'),(1044,1046,1,'~|'),(1045,1047,1,'AR'),(1046,1048,1,'MX'),(1047,1049,1,'MX'),(1048,1050,1,'MX'),(1049,1051,1,'CL'),(1050,1052,1,'AR'),(1051,1053,1,'CO'),(1052,1054,1,'AR'),(1053,1055,1,'AR'),(1054,1056,1,'AR'),(1055,1057,1,'AR'),(1056,1058,1,'AR'),(1057,1059,1,'VE'),(1058,1060,1,'CO'),(1059,1061,1,'VE'),(1060,1062,1,'~|'),(1061,1063,1,'CO'),(1062,1064,1,'~|'),(1063,1065,1,'US'),(1064,1066,1,'AR'),(1065,1067,1,'MX'),(1066,1068,1,'AR'),(1067,1069,1,'AR'),(1068,1070,1,'PY'),(1069,1071,1,'AR'),(1070,1072,1,'AR'),(1071,1073,1,'CO'),(1072,1074,1,'AR'),(1073,1075,1,'ES'),(1074,1076,1,'CO'),(1075,1077,1,'AR'),(1076,1078,1,'PR'),(1077,1079,1,'MX'),(1078,1080,1,'CO'),(1079,1081,1,'MX'),(1080,1082,1,'CO'),(1081,1083,1,'MX'),(1082,1084,1,'~|'),(1083,1085,1,'CL'),(1084,1086,1,'CR'),(1085,1087,1,'DE'),(1086,1088,1,'CO'),(1087,1089,1,'~|'),(1088,1090,1,'CO'),(1089,1091,1,'BO'),(1090,1092,1,'~|'),(1091,1093,1,'AR'),(1092,1094,1,'AR'),(1093,1095,1,'~|'),(1094,1096,1,'AR'),(1095,1097,1,'PA'),(1096,1098,1,'AR'),(1097,1099,1,'MX'),(1098,1100,1,'US'),(1099,1101,1,'~|'),(1100,1102,1,'AR'),(1101,1103,1,'AR'),(1102,1104,1,'CO'),(1103,1105,1,'CL'),(1104,1106,1,'AR'),(1105,1107,1,'AR'),(1106,1108,1,'PE'),(1107,1109,1,'PE'),(1108,1110,1,'AR'),(1109,1111,1,'AR'),(1110,1112,1,'CL'),(1111,1113,1,'ES'),(1112,1114,1,'PE'),(1113,1115,1,'MX'),(1114,1116,1,'~|'),(1115,1117,1,'MX'),(1116,1118,1,'CL'),(1117,1119,1,'CO'),(1118,1120,1,'AR'),(1119,1121,1,'MX'),(1120,1122,1,'AR'),(1121,1123,1,'AR'),(1122,1124,1,'CO'),(1123,1125,1,'MX'),(1124,1126,1,'AR'),(1125,1127,1,'CO'),(1126,1128,1,'SV'),(1127,1129,1,'AR'),(1128,1130,1,'CO'),(1129,1131,1,'AR'),(1130,1132,1,'AR'),(1131,1133,1,'MX'),(1132,1134,1,'PE'),(1133,1135,1,'AR'),(1134,1136,1,'AR'),(1135,1137,1,'AR'),(1136,1138,1,'AR'),(1137,1139,1,'AR'),(1138,1140,1,'AR'),(1139,1141,1,'AR'),(1140,1142,1,'AR'),(1141,1143,1,'AR'),(1142,1144,1,'AR'),(1143,1145,1,'AR'),(1144,1146,1,'AR'),(1145,1147,1,'AR'),(1146,1148,1,'AR'),(1147,1149,1,'AR'),(1148,1150,1,'AR'),(1149,1151,1,'AR'),(1150,1152,1,'AR'),(1151,1153,1,'AR'),(1152,1154,1,'AR'),(1153,1155,1,'AR'),(1154,1156,1,'AR'),(1155,1157,1,'ES'),(1156,1158,1,'CO'),(1157,1159,1,'CR'),(1158,1160,1,'ES'),(1159,1161,1,'~|'),(1160,1162,1,'~|'),(1161,1163,1,'CO'),(1162,1164,1,'~|'),(1163,1165,1,'MX'),(1164,1166,1,'AR'),(1165,1167,1,'AR'),(1166,1168,1,'~|'),(1167,1169,1,'MX'),(1168,1170,1,'ES'),(1169,1171,1,'MX'),(1170,1172,1,'AR'),(1171,1173,1,'CL'),(1172,1174,1,'AR'),(1173,1175,1,'CL');
/*!40000 ALTER TABLE `em_list_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_list_group`
--

DROP TABLE IF EXISTS `em_list_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_list_group` (
  `id` int(10) NOT NULL auto_increment,
  `listid` int(10) unsigned NOT NULL default '0',
  `groupid` int(10) unsigned NOT NULL default '0',
  `p_list_add` tinyint(1) NOT NULL default '0',
  `p_list_edit` tinyint(1) NOT NULL default '0',
  `p_list_delete` tinyint(1) NOT NULL default '0',
  `p_list_sync` tinyint(1) NOT NULL default '0',
  `p_list_filter` tinyint(1) unsigned NOT NULL default '0',
  `p_message_add` tinyint(1) NOT NULL default '0',
  `p_message_edit` tinyint(1) NOT NULL default '0',
  `p_message_delete` tinyint(1) NOT NULL default '0',
  `p_message_send` tinyint(1) NOT NULL default '0',
  `p_subscriber_add` tinyint(1) NOT NULL default '0',
  `p_subscriber_edit` tinyint(1) NOT NULL default '0',
  `p_subscriber_delete` tinyint(1) NOT NULL default '0',
  `p_subscriber_import` tinyint(1) NOT NULL default '0',
  `p_subscriber_approve` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `listid` (`listid`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_list_group`
--

LOCK TABLES `em_list_group` WRITE;
/*!40000 ALTER TABLE `em_list_group` DISABLE KEYS */;
INSERT INTO `em_list_group` VALUES (1,1,3,0,0,0,1,1,1,1,1,1,1,1,1,1,1),(2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `em_list_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_list_mailer`
--

DROP TABLE IF EXISTS `em_list_mailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_list_mailer` (
  `id` int(10) NOT NULL auto_increment,
  `listid` int(10) NOT NULL default '0',
  `mailerid` int(10) NOT NULL default '0',
  `corder` int(10) NOT NULL default '0',
  `threshold` int(10) NOT NULL default '50',
  `frequency` int(10) NOT NULL default '50',
  `pause` int(10) NOT NULL default '5',
  `limit` int(10) NOT NULL default '0',
  `limitspan` enum('hour','day') NOT NULL default 'hour',
  `dotfix` tinyint(1) NOT NULL default '0',
  `current` tinyint(1) NOT NULL default '0',
  `sent` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `listid` (`listid`),
  KEY `mailerid` (`mailerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_list_mailer`
--

LOCK TABLES `em_list_mailer` WRITE;
/*!40000 ALTER TABLE `em_list_mailer` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_list_mailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_log`
--

DROP TABLE IF EXISTS `em_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_log` (
  `id` int(10) NOT NULL auto_increment,
  `campaignid` int(10) NOT NULL default '0',
  `messageid` int(10) NOT NULL default '0',
  `subscriberid` int(10) NOT NULL default '0',
  `successful` tinyint(1) NOT NULL default '0',
  `tstamp` datetime default NULL,
  `comment` text,
  PRIMARY KEY  (`id`),
  KEY `subscriberid` (`subscriberid`),
  KEY `campaignid` (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_log`
--

LOCK TABLES `em_log` WRITE;
/*!40000 ALTER TABLE `em_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_loginsource`
--

DROP TABLE IF EXISTS `em_loginsource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_loginsource` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `enabled` tinyint(1) unsigned NOT NULL default '1',
  `groupset` text,
  `order` int(10) unsigned NOT NULL default '1',
  `file` varchar(250) NOT NULL default '',
  `ident` varchar(250) NOT NULL default '',
  `vars` text,
  `host` varchar(250) NOT NULL default '',
  `port` int(10) NOT NULL default '0',
  `user` varchar(250) NOT NULL default '',
  `pass` varchar(250) NOT NULL default '',
  `dbname` varchar(250) NOT NULL default '',
  `tableprefix` varchar(250) NOT NULL default '',
  `basedn` varchar(250) NOT NULL default '',
  `loginusesdn` tinyint(1) unsigned NOT NULL default '0',
  `loginattr` varchar(250) NOT NULL default '',
  `binddn` varchar(250) NOT NULL default '',
  `bindpw` varchar(250) NOT NULL default '',
  `userattr` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_loginsource`
--

LOCK TABLES `em_loginsource` WRITE;
/*!40000 ALTER TABLE `em_loginsource` DISABLE KEYS */;
INSERT INTO `em_loginsource` VALUES (1,0,'3',1,'joomla_1.5.php','Joomla','host,dbname,user,pass,tableprefix','',0,'','','','','',0,'','','',''),(2,0,'3',2,'ac.php','AC','host,dbname,user,pass','',0,'','','','','',0,'','','',''),(3,0,'3',3,'smf.php','Simple_Machines_Forum','host,dbname,user,pass,tableprefix','',0,'','','','','',0,'','','',''),(4,0,'3',4,'ldap.php','LDAP','host,port,basedn','',389,'','','','','',0,'','','',''),(5,0,'3',5,'phpbb3.php','PHPBB3','host,dbname,user,pass,tableprefix','',0,'','','','','',0,'','','',''),(6,0,'3',6,'vbulletin.php','vBulletin','host,dbname,user,pass,tableprefix','',0,'','','','','',0,'','','',''),(7,1,'3',7,'local.php','Local','','',0,'','','','','',0,'','','','');
/*!40000 ALTER TABLE `em_loginsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_mailer`
--

DROP TABLE IF EXISTS `em_mailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_mailer` (
  `id` int(10) NOT NULL auto_increment,
  `type` tinyint(1) NOT NULL default '0',
  `host` varchar(250) NOT NULL default '',
  `port` int(10) NOT NULL default '25',
  `user` varchar(250) NOT NULL default '',
  `pass` varchar(250) NOT NULL default '',
  `encrypt` tinyint(1) NOT NULL default '8',
  `pop3b4smtp` tinyint(1) NOT NULL default '0',
  `corder` int(10) NOT NULL default '0',
  `threshold` int(10) NOT NULL default '50',
  `frequency` int(10) NOT NULL default '50',
  `pause` int(10) NOT NULL default '5',
  `limit` int(10) NOT NULL default '0',
  `limitspan` enum('hour','day') NOT NULL default 'hour',
  `dotfix` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_mailer`
--

LOCK TABLES `em_mailer` WRITE;
/*!40000 ALTER TABLE `em_mailer` DISABLE KEYS */;
INSERT INTO `em_mailer` VALUES (1,0,'',25,'','',8,0,0,50,50,5,0,'hour',0);
/*!40000 ALTER TABLE `em_mailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_message`
--

DROP TABLE IF EXISTS `em_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_message` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) NOT NULL default '0',
  `cdate` datetime default NULL,
  `mdate` datetime default NULL,
  `fromname` varchar(250) NOT NULL default '',
  `fromemail` varchar(250) NOT NULL default '',
  `reply2` varchar(250) NOT NULL default '',
  `priority` tinyint(1) NOT NULL default '3',
  `charset` varchar(32) NOT NULL default 'utf-8',
  `encoding` varchar(32) NOT NULL default '8bit',
  `format` enum('html','text','mime') default NULL,
  `subject` text,
  `text` longtext,
  `html` longtext,
  `htmlfetch` varchar(10) NOT NULL default 'now',
  `textfetch` varchar(10) NOT NULL default 'now',
  `hidden` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_message`
--

LOCK TABLES `em_message` WRITE;
/*!40000 ALTER TABLE `em_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_message_archive`
--

DROP TABLE IF EXISTS `em_message_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_message_archive` (
  `id` int(10) NOT NULL auto_increment,
  `campaignid` int(10) NOT NULL default '0',
  `messageid` int(10) NOT NULL default '0',
  `fromname` varchar(250) NOT NULL default '',
  `fromemail` varchar(250) NOT NULL default '',
  `reply2` varchar(250) NOT NULL default '',
  `priority` tinyint(1) NOT NULL default '3',
  `charset` varchar(32) NOT NULL default 'utf-8',
  `encoding` varchar(32) NOT NULL default '8bit',
  `subject` text,
  `text` longtext,
  `html` longtext,
  PRIMARY KEY  (`id`),
  KEY `campaignmessage` (`campaignid`,`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_message_archive`
--

LOCK TABLES `em_message_archive` WRITE;
/*!40000 ALTER TABLE `em_message_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_message_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_message_file`
--

DROP TABLE IF EXISTS `em_message_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_message_file` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `size` int(10) NOT NULL default '0',
  `mime_type` varchar(128) NOT NULL default '',
  `messageid` int(10) NOT NULL default '0',
  `tstamp` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `messageid` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_message_file`
--

LOCK TABLES `em_message_file` WRITE;
/*!40000 ALTER TABLE `em_message_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_message_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_message_file_data`
--

DROP TABLE IF EXISTS `em_message_file_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_message_file_data` (
  `id` int(10) NOT NULL auto_increment,
  `fileid` int(10) NOT NULL default '0',
  `sequence` int(10) NOT NULL default '0',
  `data` mediumblob,
  PRIMARY KEY  (`id`),
  KEY `fileid` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_message_file_data`
--

LOCK TABLES `em_message_file_data` WRITE;
/*!40000 ALTER TABLE `em_message_file_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_message_file_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_message_list`
--

DROP TABLE IF EXISTS `em_message_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_message_list` (
  `id` int(10) NOT NULL auto_increment,
  `messageid` int(10) NOT NULL default '0',
  `listid` int(10) NOT NULL default '0',
  `userid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `messageid` (`messageid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_message_list`
--

LOCK TABLES `em_message_list` WRITE;
/*!40000 ALTER TABLE `em_message_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_message_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_optinoptout`
--

DROP TABLE IF EXISTS `em_optinoptout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_optinoptout` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL default '',
  `optin_confirm` tinyint(1) NOT NULL default '0',
  `optin_format` enum('html','text','mime') default NULL,
  `optin_from_name` varchar(250) NOT NULL default '',
  `optin_from_email` varchar(250) NOT NULL default '',
  `optin_subject` varchar(250) NOT NULL default '',
  `optin_text` text,
  `optin_html` text,
  `optout_confirm` tinyint(1) NOT NULL default '0',
  `optout_format` enum('html','text','mime') default NULL,
  `optout_from_name` varchar(250) NOT NULL default '',
  `optout_from_email` varchar(250) NOT NULL default '',
  `optout_subject` varchar(250) NOT NULL default '',
  `optout_text` text,
  `optout_html` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_optinoptout`
--

LOCK TABLES `em_optinoptout` WRITE;
/*!40000 ALTER TABLE `em_optinoptout` DISABLE KEYS */;
INSERT INTO `em_optinoptout` VALUES (1,'Default Email Confirmation Set',0,'mime','Teresa Piacentino','novedades@teresapiacentino.com','Please confirm your subscription','Thank you for subscribing. Click here to confirm your subscription: %CONFIRMLINK%','Thank you for subscribing. Click here to confirm your subscription:<br /><a href=\"%CONFIRMLINK%\">%CONFIRMLINK%</a>',0,'mime','Teresa Piacentino','novedades@teresapiacentino.com','Please confirm your unsubscription','Please click this link to confirm your unsubscription: %CONFIRMLINK%','Please click this link to confirm your unsubscription:<br /><a href=\"%CONFIRMLINK%\">%CONFIRMLINK%</a>');
/*!40000 ALTER TABLE `em_optinoptout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_optinoptout_file`
--

DROP TABLE IF EXISTS `em_optinoptout_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_optinoptout_file` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `size` int(10) NOT NULL default '0',
  `mime_type` varchar(128) NOT NULL default '',
  `optinoptoutid` int(10) NOT NULL default '0',
  `type` varchar(3) NOT NULL default '',
  `tstamp` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `optinoptoutid` (`optinoptoutid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_optinoptout_file`
--

LOCK TABLES `em_optinoptout_file` WRITE;
/*!40000 ALTER TABLE `em_optinoptout_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_optinoptout_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_optinoptout_file_data`
--

DROP TABLE IF EXISTS `em_optinoptout_file_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_optinoptout_file_data` (
  `id` int(10) NOT NULL auto_increment,
  `fileid` int(10) NOT NULL default '0',
  `sequence` int(10) NOT NULL default '0',
  `data` mediumblob,
  PRIMARY KEY  (`id`),
  KEY `fileid` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_optinoptout_file_data`
--

LOCK TABLES `em_optinoptout_file_data` WRITE;
/*!40000 ALTER TABLE `em_optinoptout_file_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_optinoptout_file_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_personalization`
--

DROP TABLE IF EXISTS `em_personalization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_personalization` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) NOT NULL default '0',
  `tag` varchar(250) NOT NULL default '',
  `name` text,
  `content` text,
  `format` enum('text','html') default NULL,
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_personalization`
--

LOCK TABLES `em_personalization` WRITE;
/*!40000 ALTER TABLE `em_personalization` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_personalization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_personalization_list`
--

DROP TABLE IF EXISTS `em_personalization_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_personalization_list` (
  `id` int(10) NOT NULL auto_increment,
  `persid` int(10) unsigned NOT NULL default '0',
  `listid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `persid` (`persid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_personalization_list`
--

LOCK TABLES `em_personalization_list` WRITE;
/*!40000 ALTER TABLE `em_personalization_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_personalization_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_process`
--

DROP TABLE IF EXISTS `em_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_process` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) NOT NULL default '0',
  `rnd` int(10) NOT NULL default '0',
  `action` varchar(250) NOT NULL default '',
  `total` int(10) NOT NULL default '0',
  `completed` int(10) NOT NULL default '0',
  `percentage` float NOT NULL default '0',
  `data` longtext,
  `cdate` datetime default NULL,
  `ldate` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_process`
--

LOCK TABLES `em_process` WRITE;
/*!40000 ALTER TABLE `em_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_rssfeed`
--

DROP TABLE IF EXISTS `em_rssfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_rssfeed` (
  `id` int(10) NOT NULL auto_increment,
  `campaignid` int(10) NOT NULL default '0',
  `messageid` int(10) NOT NULL default '0',
  `url` text,
  `type` enum('new','all') NOT NULL default 'all',
  `lastcheck` datetime default NULL,
  `howmany` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `campaignid` (`campaignid`),
  KEY `messageid` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_rssfeed`
--

LOCK TABLES `em_rssfeed` WRITE;
/*!40000 ALTER TABLE `em_rssfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_rssfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_section_filter`
--

DROP TABLE IF EXISTS `em_section_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_section_filter` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `userid` int(10) unsigned NOT NULL default '0',
  `sectionid` varchar(32) NOT NULL default '',
  `conds` text,
  `tstamp` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `filter` (`userid`,`sectionid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_section_filter`
--

LOCK TABLES `em_section_filter` WRITE;
/*!40000 ALTER TABLE `em_section_filter` DISABLE KEYS */;
INSERT INTO `em_section_filter` VALUES (1,1,'form','AND l.listid = \'1\' ','2009-10-03 08:58:30'),(2,1,'subscriber','AND l.listid = \'1\' ','2009-10-03 10:01:30'),(3,1,'report_list','AND ( SELECT COUNT(*) FROM em_list_group l WHERE l.listid IN (\'1\') AND l.groupid = l.id ) > 0 ','2009-10-03 18:50:17'),(4,1,'optinoptout','AND l.id = \'1\' ','2009-10-15 10:00:53'),(5,1,'subscriber','AND (s.first_name LIKE \'%georgina%\') AND (SELECT COUNT(*) FROM em_subscriber_list lx WHERE lx.subscriberid = s.id AND lx.listid IN (\'1\')) > 0 ','2009-11-04 14:48:41'),(6,1,'subscriber','AND (SELECT COUNT(*) FROM em_subscriber_list lx WHERE lx.subscriberid = s.id AND lx.listid IN (\'1\')) > 0 ','2009-11-04 14:48:42'),(7,1,'subscriber','AND (s.first_name LIKE \'%sofia%\') AND (SELECT COUNT(*) FROM em_subscriber_list lx WHERE lx.subscriberid = s.id AND lx.listid IN (\'1\')) > 0 ','2009-11-04 14:50:12'),(8,0,'list','AND l.private = \'0\' ','2009-11-13 09:34:40');
/*!40000 ALTER TABLE `em_section_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_subscriber`
--

DROP TABLE IF EXISTS `em_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_subscriber` (
  `id` int(10) NOT NULL auto_increment,
  `cdate` datetime default NULL,
  `email` varchar(250) NOT NULL default '',
  `first_name` varchar(250) NOT NULL default '',
  `last_name` varchar(250) NOT NULL default '',
  `bounced_hard` int(10) NOT NULL default '0',
  `bounced_soft` int(10) NOT NULL default '0',
  `bounced_date` date default NULL,
  `ip` int(10) unsigned NOT NULL default '0',
  `ua` text,
  `hash` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `email` (`email`),
  KEY `cdate` (`cdate`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=1176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_subscriber`
--

LOCK TABLES `em_subscriber` WRITE;
/*!40000 ALTER TABLE `em_subscriber` DISABLE KEYS */;
INSERT INTO `em_subscriber` VALUES (3,'2009-10-03 10:00:15','karchuf@gmail.com','Carla','Vomiero',0,0,NULL,1676171515,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','bc3e39451254fe5cea9c45a0a3571e28'),(4,'2009-10-03 16:23:50','jaimecaila@hotmail.com','Jaime','Caila Talon',0,0,NULL,1429884936,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 FBSMTWB','e575194eb293285077d9f241a008c248'),(5,'2009-10-03 18:35:36','sebicas@gmail.com','Sebastian','Castro',0,0,NULL,1676171515,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','123ab918a7b1a9dcc1fac21686565dc9'),(6,'2009-10-04 18:04:45','angelaram50@hotmail.com','Angela','Ramirez',0,0,NULL,3187797583,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3','2921b048857ee21aa44ad7781691c620'),(7,'2009-10-04 20:00:05','zayanav@hotmail.com','Zayana','Veloz',0,0,NULL,3182492144,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB0.0)','5b56d552bc90fefd439b1cc65b2648a9'),(8,'2009-10-05 16:06:39','malegonzales@hotmail.com','Magdalena','Gonzales',0,0,NULL,3190536720,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','5b5688e9a6d41c8806be5c592a40aa97'),(9,'2009-10-06 09:01:11','lulibolsi@hotmail.com','Lucila','Bolsi',0,0,NULL,3202561004,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6)','b5d32aedf9325a44b42c7742e9cb3b92'),(10,'2009-10-07 15:09:44','rosilmore@hotmail.com','Roxana','Romero',0,0,NULL,3190325138,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322)','b80808262643adfa97fd8460c820425b'),(11,'2009-10-07 23:32:30','atorres_4@hotmail.com','Perla','Valdez',0,0,NULL,3383527451,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6; Ant.com Toolbar 1.4; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','5bc9fd7504575c5ffe70d674606eddf6'),(12,'2009-10-08 14:31:14','albertovargasvenezuela@hotmail.com','Alberto','Vargas',0,0,NULL,3192847442,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727)','1b26d79d6edcc89913e8fad43e6938ce'),(13,'2009-10-08 17:41:54','biancaf@infovia.com.ar','Laura','Miranda',0,0,NULL,3190893170,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; uE v7)','ee64443a385c3e57fc1265e6429de9cf'),(14,'2009-10-09 13:16:37','susanafarmache@hotmail.com','Susana','Farmache',0,0,NULL,3195115002,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6; .NET CLR 1.1.4322)','4e640cbbc127f3b98b44decb1e2bd807'),(15,'2009-10-09 21:51:43','gisbertelida@hotmail.com','Elida','Gisbert',0,0,NULL,3129543283,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.25 Safari/532.0','c8bfc232d1911bdac85cd627ee621d4e'),(16,'2009-10-11 11:49:06','maria_12_69_84@hotmail.com','Rita','Centurion',0,0,NULL,3202731644,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','80773be29dbf2f668a6aac4482a3851e'),(17,'2009-10-12 16:51:21','chary_2075@hotmail.com','Rosario','Balderas',0,0,NULL,3199881269,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14 (.NET CLR 3.5.30729)','085319449c75c96bf5ae03a06ae41bd7'),(18,'2009-10-13 08:18:22','romi.baronetti@hotmail.com','Romina','Baronetti',0,0,NULL,3196789944,'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; FunWebProducts)','d0fd3bf036b8a7274d8fac0c027bde84'),(19,'2009-10-14 10:54:29','mvallorani@pdediego.com.ar','Mario Daniel','Vallorani',0,0,NULL,3199312120,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; eSobiSubscriber 2.0.4.16; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','379012d0f55d2a581e870207aad95ddf'),(20,'2009-10-15 04:57:36','marcebiby@hotmail.com','BIbiana','Vera',0,0,NULL,3124397559,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESXL; AskTB5.4)','e6257baaba4d767b116fbc9711bbaae3'),(21,'2009-10-15 09:51:23','karchuf@hotmail.com','Carla','Castro',0,0,NULL,1676171515,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','a1a67f43542ba2c36735a67f646e5d1c'),(22,'2009-10-15 19:06:51','mmdonosov@hotmail.com','Maria','Donoso',0,0,NULL,3386819082,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; FBSMTWB; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','565facb179cc3c029240efb2a4b0ac5a'),(23,'2009-10-15 19:59:13','diseog22@live.com.ar','Jacquelina','Flores',0,0,NULL,3196672749,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1)','927bb750ba8683b17a05f01737a1f011'),(24,'2009-10-16 15:32:13','rpfredg12@hotmail.com','Freddy','Roman',0,0,NULL,3197118627,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727)','b56b9f2493471b4e3dadd3a382cc145e'),(25,'2009-10-17 16:23:27','lilianalima@fibertel.com.ar','Liliana','Lima',0,0,NULL,3188768238,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','4179111e60fd21ee38444762466cd2d1'),(26,'2009-10-18 15:50:05','lohena2005@yahoo.com','Lorena','Fern',0,0,NULL,3121198142,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6; SLCC1; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.04506)','69b21f41b36f534ca811fb0dd9646a24'),(27,'2009-10-19 01:14:28','hcrinla@sbcglobal.net','Hugo','Ruggiero',0,0,NULL,1172826786,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.8) Gecko/2009032609 YFF3 Firefox/3.0.8 (.NET CLR 3.5.30729)','b75a7326dd0a7d689c74d54ed9091874'),(28,'2009-10-19 11:24:31','padillaemilio@hotmail.com','Emilio','Padilla',0,0,NULL,3359267636,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3','24b4eb840aa266ed506150ab8090e610'),(29,'2009-10-19 18:17:49','yolisopa7@hotmail.com','Yolima Esther','Solano Pallares',0,0,NULL,3126996903,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 2.0.50727)','b3ba428f91d4ce75f94f1150007c0cc3'),(30,'2009-10-19 20:39:47','agucarlos1@gmail.com','Carlos','Agudelo',0,0,NULL,3198484518,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-AR; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14 (.NET CLR 3.5.30729) FBSMTWB','e67b227b70fd7cdab6698179f30f2d45'),(31,'2009-10-20 20:35:07','velazquez@hotmail.com','Rosa','Velazquez',0,0,NULL,3183661370,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.27 Safari/532.0','4f464a315e51814a8b7e91b06cb1f1ab'),(32,'2009-10-21 09:43:35','marian_lanz@hotmail.com','Marian','Montoya',0,0,NULL,3201834130,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB5; InfoPath.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','bdee87b282c61885568a1d0cb1c933c1'),(33,'2009-10-21 12:35:58','polaca27_@hotmail.com','Soledad','Huck',0,0,NULL,3388647327,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SIMBAR={101F13BF-35DE-4430-B1D1-34EA3AD66AF2}; FBSMTWB; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; AskTB5.4)','d855ee7556d8f81f81ec1d96a09523e3'),(34,'2009-10-22 12:11:02','fmidentidad@lasvarinet.com.ar','Yolanda','Rolando',0,0,NULL,3358422226,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','d8a920cee7cc1603d35584c1dece828e'),(35,'2009-10-23 12:35:14','violeta_polola@hotmail.com','Violeta','Polola',0,0,NULL,3188482933,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SIMBAR={CAC6085D-DD2B-4110-895A-7C80F7D0A5E1}; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.1)','1dcacb2cc8de8d15d91d6b43284ab3c7'),(36,'2009-10-23 17:22:51','mjp39@hotmail.com.ar','Juana Maria','Pereira',0,0,NULL,3188634263,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.1) Gecko/2008070208 Firefox/3.0.1 GTB5 (.NET CLR 3.5.30729)','f5dfcaea14bed94f0fb193bb64ec014a'),(37,'2009-10-24 06:24:38','julia.torregrosa.soria@gmail.com','Julia','Torregrosa',0,0,NULL,1395996732,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14 GTB5 (.NET CLR 3.5.30729)','82016e10712b3e00ac62264874e2c2aa'),(38,'2009-10-24 13:24:51','claudiacamillucci@hotmail.com','Claudia','Camillucci',0,0,NULL,3387581187,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; .NET CLR 3.5.21022)','de0b9a49b3a9f64deec6d26cf05804e7'),(39,'2009-10-24 20:33:12','angevi@live.com.ar','Georgina','Falcon',0,0,NULL,3199263304,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; MSN Optimized;AR)','4c5a9aa5c75ca5c2afd0ecf399fece5b'),(40,'2009-10-25 11:43:23','gladys_saluzzo@hotmail.com','Gladys Graciela','Saluzzo',0,0,NULL,3191037815,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)','10e22603210f58377654a787acf9c3f6'),(41,'2009-10-26 15:26:28','calcaino@granelesdechile.com','Cristian','Alcaino',0,0,NULL,3360165602,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','b9d97fd0bee80371b31d4c10dbeaff54'),(42,'2009-10-27 17:04:35','jinmis_222@hotmail.com','Juan Enrique','Paricoto Gutierrez',0,0,NULL,3190409795,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','c922b39526864f734f212843f450954b'),(43,'2009-10-27 18:13:33','gabriela_nardelli@hotmail.com','Gabriela','Mai',0,0,NULL,3357571338,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.3; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','0c1e8dd604c6eb1d6e57ce4e8207250a'),(44,'2009-10-28 18:54:01','karla_arreola@hotmail.com','Karla','Arreola',0,0,NULL,3489144881,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_4_11; es) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1','ddc31cad12aaaad94d3a575dc1c1b65f'),(45,'2009-10-28 20:01:07','sofi_schurmann@hotmail.com','Sofia','Schurmann',0,0,NULL,3387359921,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','31095ead1c9b97e1be0acc38601ee30f'),(46,'2009-10-28 21:19:56','bettypanigatti@hotmail.com','Betty','Panigatti',0,0,NULL,3196620559,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','b7930a51292d7d5ec436eb92f7b3033d'),(47,'2009-10-29 07:18:25','alejandromm@arquitectosdecadiz.com','Alejandro','Manzorro Moreno',0,0,NULL,1477914188,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','20fd6e63a68366510df56dfedb0a2f49'),(48,'2009-10-29 19:54:43','patonemer@hotmail.com','Patricia','Nemer Casta',0,0,NULL,3388803048,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SIMBAR={9F032DDF-133F-4DAE-BBA2-12D51581F887}; GTB6; FBSMTWB; .NET CLR 1.1.4322)','3d6f19dae82844ee27663c99f887c77a'),(49,'2009-10-31 12:21:28','rosanatucu2004@hotmail.com','Rosana','Araoz',0,0,NULL,1372288792,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)','51483fbb29b6e8c9d39679acb7724413'),(50,'2009-10-31 21:37:26','lidiono@hotmail.com','Lidia','Onorati',0,0,NULL,3190978160,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1)','e50501c490f39aa5e82b2458d7a02665'),(51,'2009-11-01 13:11:48','claudia_na2002@hotmail.com','Claudia','Navarro',0,0,NULL,3203746929,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','373d13dec4b705bcc2ade2a62c0ab318'),(52,'2009-11-02 16:32:19','yolandasantia@hotmail.com','Yolanda','Santia',0,0,NULL,3358553987,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FBSMTWB; .NET CLR 2.0.50727)','a7d2aefc2862b9328c3516fc87aa9eff'),(53,'2009-11-03 06:01:20','pilararroyo52@hotmail.com','M','Arroyo Linares',0,0,NULL,1361962842,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FunWebProducts; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','9dd76be4698c4f8aa593eede36e7941d'),(54,'2009-11-03 15:24:42','isabelvalderrama_11@hotmail.com','Isabel','Valderrama',0,0,NULL,1395348522,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14','f624abecaa7051ee26fa4c3444fa95b3'),(55,'2009-11-03 17:36:31','antonia-rojas1@hotmail.com','Antonia','Rojas',0,0,NULL,3361104133,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 FBSMTWB','c2f1a939e0248bc352dfcdc79a56ed53'),(56,'2009-11-03 18:35:20','tresacorreu@hotmail.com','M','Alb',0,0,NULL,1477996611,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15','5d75782a947772f95e2d12797d43d682'),(57,'2009-11-03 22:18:28','cristinasantilli@gmail.com','Cristina','Santilli',0,0,NULL,3200063202,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4','4ec8b38991284ac376ee147ac9309b4d'),(58,'2009-11-04 10:01:27','catalinadelorenzo@hotmail.com','Catalina','de Lorenzo',0,0,NULL,2130706433,NULL,'081036c44c48ab9a14f96d7c29021ddf'),(59,'2009-11-04 10:02:43','arqmfch@fibertel.com.ar','Florencia','Chihigaren',0,0,NULL,2130706433,NULL,'68a8ffbe4ab5bf2eb4857d484e18d5b6'),(60,'2009-11-04 10:03:28','puntoylinea@speedy.com.ar','Olga','Porfiri',0,0,NULL,2130706433,NULL,'039522736f1fc3338340261d412ecf4b'),(61,'2009-11-04 10:04:12','mariotattoo2003@yahoo.com.ar','Mario Ruben','Bustamante',0,0,NULL,2130706433,NULL,'6de4f9e8b8ccab95f78c0f5b5c1ce9e0'),(62,'2009-11-04 10:05:07','palamencoart@hotmail.com','Amarildo','Obeso',0,0,NULL,2130706433,NULL,'ab06b1c23c0066ad1e57e231bab9e6a9'),(63,'2009-11-04 10:18:29','marisasau65@yahoo.com.br','Marisa','De Sautu Riestra',0,0,NULL,2130706433,NULL,'4194da3861d0c7629e6e9f27f747e9a2'),(64,'2009-11-04 11:53:11','keis_hot@hotmail.com','Maria Tomasa','Santillan Melendez',0,0,NULL,2130706433,NULL,'0cf7e6f706d185a2ee40555f4775f1a9'),(65,'2009-11-04 11:54:20','marian-dic@hotmail.com','Mariana','Piacentino',0,0,NULL,2130706433,NULL,'0f45aac8ddf7ae7e0b58b19d2a1036c5'),(66,'2009-11-04 11:54:41','idelascarreras@fibertel.com.ar','Ignacio','',0,0,NULL,2130706433,NULL,'89f5953822b146895322ed5f67565d4c'),(67,'2009-11-04 11:55:06','gramariani@gmail.com','Graciela','Mariani',0,0,NULL,2130706433,NULL,'42c63d37f0e0b8b88529afa209aafa64'),(68,'2009-11-04 11:55:34','arteda@live.com.ar','Dalila','Ramognino',0,0,NULL,2130706433,NULL,'2e8992ae8cf89df57d11962abc7cb574'),(69,'2009-11-04 11:56:27','artedeviro@hotmail.com','Carlos','',0,0,NULL,2130706433,NULL,'24fe18f66d0429648e2217a5c0027219'),(70,'2009-11-04 11:57:12','bpa.icm@gmail.com','','',0,0,NULL,2130706433,NULL,'4f95d500c5bcbce0b4353ede6df032d4'),(71,'2009-11-04 11:57:39','artecercano@yahoo.com.ar','Alejandro','Lasalvia',0,0,NULL,2130706433,NULL,'495d695d27ad75e0b1b0315ae782de87'),(72,'2009-11-04 12:15:37','centrodeedicion@gmail.com','Roger','',0,0,NULL,2130706433,NULL,'8833c146bf2631fe423eaefcfa5cbe42'),(73,'2009-11-04 12:16:05','ronaps@yahoo.com','Rona','Pinto Schaffroth',0,0,NULL,2130706433,NULL,'eb7ed2576cc217f88c6e11bcc0d3fa0c'),(74,'2009-11-04 12:17:14','robertogiustigiusti@gmail.com','Roberto','Giusti',0,0,NULL,2130706433,NULL,'d5bfdc68b2ee85606089940dbec13e65'),(75,'2009-11-04 12:17:45','n_corbalan@hotmail.com','Natalia','Corbalan',0,0,NULL,2130706433,NULL,'2c920e97131251d63920eb0208ec3901'),(76,'2009-11-04 12:18:10','a.rva@hotmail.com','Alejandra','',0,0,NULL,2130706433,NULL,'de4f1fdfded8f7c5e45c39594983be0d'),(77,'2009-11-04 12:18:34','screspo@unpata.edu.ar','Sandra','Crespo',0,0,NULL,2130706433,NULL,'4280eca7d2714a9bb6c2712b26f3a88c'),(78,'2009-11-04 13:36:12','equsfarma@speedy.com.ar','Carlos','Moran',0,0,NULL,2130706433,NULL,'9cf4329a15136c1eaf28ec765520f3e5'),(79,'2009-11-04 13:36:58','mgiglio22@hotmail.com','Monica','Giglio',0,0,NULL,2130706433,NULL,'655c9331adbac895feb10c5e9458518a'),(80,'2009-11-04 13:37:24','gabrielaftg@hotmail.com','Gabriela','Teran',0,0,NULL,2130706433,NULL,'28885cd57f7b8b0b1212387b3044e0b1'),(81,'2009-11-04 13:38:40','mirtakap@hotmail.com','Mirta','',0,0,NULL,2130706433,NULL,'47fd0759610e0b8a2ebb4654c0252ca9'),(82,'2009-11-04 13:39:12','miriamc@petrilac.com.ar','Miriam','de Castillo',0,0,NULL,2130706433,NULL,'0a99f4d63d7c9f08c6a29ea6da13f19d'),(83,'2009-11-04 13:39:43','robertomintz@hotmail.com','Roberto','Mintz',0,0,NULL,2130706433,NULL,'3c1432f6242f1ddf68f8dd49a189d51a'),(84,'2009-11-04 13:40:05','jcleyria@fibertel.com.ar','Juan Carlos','',0,0,NULL,2130706433,NULL,'80d2171c49cee6a4f5df498da8525c98'),(85,'2009-11-04 13:40:46','lilianaloguzzo@gmail.com','Liliana','Loguzzo',0,0,NULL,2130706433,NULL,'9a151cf60cecc4bed6e4959fdf5f052f'),(86,'2009-11-04 13:41:16','luciam.marconi@fibertel.com.ar','Lucia','Marconi',0,0,NULL,2130706433,NULL,'8c94acdd2a3dafef4a2a33270a71a041'),(87,'2009-11-04 13:41:40','espositotamara@hotmail.com','Tamara','Esposito',0,0,NULL,2130706433,NULL,'df490fb2ae47a18b0e0c3dfd85a0d8af'),(88,'2009-11-04 13:42:28','josefinaspitalieri@gmail.com','Josefina','Spitalieri',0,0,NULL,2130706433,NULL,'835909703f799797176e129dce17385b'),(89,'2009-11-04 13:42:58','tavosierra@hotmail.com','Gustavo','Sierra',0,0,NULL,2130706433,NULL,'627900b2c114a86cd76c3b2a502c702b'),(90,'2009-11-04 13:43:19','6278464@gmail.com','Martin','Guardiola',0,0,NULL,2130706433,NULL,'6ed5d8d9f550d655cbcfa5bdcd9b5d16'),(91,'2009-11-04 13:43:43','esucasas@hotmail.com','Elena','Sucasas',0,0,NULL,2130706433,NULL,'92f8c2b718bd9cd95224accbd0764d44'),(92,'2009-11-04 13:44:13','rafipijoan@hotmail.com','Rafi','Fernandes',0,0,NULL,2130706433,NULL,'7ec3398f15cba8bd025155340c92f7b2'),(93,'2009-11-04 13:44:34','golfdiario@yahoo.com','Marta','Gara',0,0,NULL,2130706433,NULL,'24257951020accea1adb140cfde530c3'),(94,'2009-11-04 13:44:55','chapi172@yahoo.com','Lucrecia','Degano',0,0,NULL,2130706433,NULL,'00ddeacbd930a45035310086f6422f78'),(95,'2009-11-04 13:45:24','cvluque@tutopia.com','Claudia','Luque',0,0,NULL,2130706433,NULL,'61d63324e6c414c097069eaa5e9229de'),(96,'2009-11-04 13:45:50','lugelspeed@hotmail.com','Luis','Svagelj',0,0,NULL,2130706433,NULL,'1c9b40abad2891f95959e02a71885f31'),(97,'2009-11-04 13:46:24','mariacristinademiguel@hotmail.com','Maria Cristina','De Miguel',0,0,NULL,2130706433,NULL,'29b3c2e808ddd30184ebc3f7d6e4b5a1'),(98,'2009-11-04 13:46:56','betinamarin@lanavech.com.ar','Evelin Bettina','Marin',0,0,NULL,2130706433,NULL,'57c6dcba00b2c5c35244a40d5a713f27'),(99,'2009-11-04 13:47:13','austin.tellam@gmail.com','Austin','',0,0,NULL,2130706433,NULL,'10230fe88b3012996b5c89ea2ac19ccb'),(100,'2009-11-04 13:47:51','romy_myc@hotmail.com','Romina','Rogel',0,0,NULL,2130706433,NULL,'09afcfe20152b3eae36360123954f75c'),(101,'2009-11-04 13:48:06','farinimartinez@hotmail.com','Jesus','',0,0,NULL,2130706433,NULL,'ad54179009ab9a09e095add208b20c63'),(102,'2009-11-04 13:48:24','malex1979@gmail.com','Aleksandr','',0,0,NULL,2130706433,NULL,'09053d13f9bde39245e96dd3d9ba447f'),(103,'2009-11-04 13:49:04','achavez@ferreyros.com.pe','Alice','Chavez de Rocha',0,0,NULL,2130706433,NULL,'325eaebc48b1624070ec8d04805856c1'),(104,'2009-11-04 13:50:01','silec2048@gmail.com','Silvia','',0,0,NULL,2130706433,NULL,'75fe33a137afe72e87c992bd6fed72b6'),(105,'2009-11-04 13:50:22','rpadilla@cosapi.com.pe','Rosario','Padilla',0,0,NULL,2130706433,NULL,'79c37a7f4b6110342c36f45145a59dd3'),(106,'2009-11-04 13:50:54','liliana_toscanos@hotmail.com','Liliana','Toscano',0,0,NULL,2130706433,NULL,'95f69cf2bd627a9d9a2b278a981c819d'),(107,'2009-11-04 13:51:09','david_eoh@yahoo.es','David','',0,0,NULL,2130706433,NULL,'c0294b3d38769552a0ed17211111c432'),(108,'2009-11-04 13:51:24','abrilamme@msn.com','Abril','',0,0,NULL,2130706433,NULL,'ee671ad29e2ddbd39f8cccb9124cb062'),(109,'2009-11-04 13:55:13','sciro@fac-sa.com.ar','Silvia','Ciro',0,0,NULL,2130706433,NULL,'c1379b8a6c1e555e1a63a26ffaf5dd23'),(110,'2009-11-04 13:55:36','ont.obrasdeartes@ig.com.br','Octavio','Torres',0,0,NULL,2130706433,NULL,'b26aa2a75b3fefcfb1eef64b4a836334'),(111,'2009-11-04 13:55:54','gb@estbon.com.ar','Gustavo','',0,0,NULL,2130706433,NULL,'f644894ed9ccf105bdcac4739cc75f1b'),(112,'2009-11-04 13:56:29','ximenita_1959@hotmail.com','Ximena','Nuñez',0,0,NULL,2130706433,NULL,'3df663465d6fbdf8a7fcd469d20fdd23'),(113,'2009-11-04 13:56:46','vancomicina88@hotmail.com','Maria','',0,0,NULL,2130706433,NULL,'44d120263ec50bef54ef7807de70a733'),(114,'2009-11-04 13:57:18','danieladiluciano@hotmail.com','Daniela','Di Luciano',0,0,NULL,2130706433,NULL,'7978d7b028ae489f903804f4e648cbb0'),(115,'2009-11-04 13:57:38','patricia.lopez07@yahoo.com.ar','Patricia','Lopez',0,0,NULL,2130706433,NULL,'0bb1cc9af3936b11bb5037ab91c89fb9'),(116,'2009-11-04 13:58:16','mabelinesquiroga@gmail.com','Mabel Ines','Quiroga',0,0,NULL,2130706433,NULL,'e61f2b9c96777277aeb7320c5b43c24b'),(117,'2009-11-04 13:58:59','alejandro199985@hotmail.com','Juan Pablo','Martinez Munoz',0,0,NULL,2130706433,NULL,'0a3e9f2ee58c6453629e135a67291f55'),(118,'2009-11-04 13:59:15','marimagcar@hotmail.com','Magdalena','',0,0,NULL,2130706433,NULL,'a6287234ca8fa79659447e94b994c561'),(119,'2009-11-04 13:59:44','agoderueda@yahoo.es','Ana','Gomez de Rueda',0,0,NULL,2130706433,NULL,'b90da71033fe5ea8a79d5cfd1af4af45'),(120,'2009-11-04 14:00:15','sofiakinach@hotmail.com','Sofia','',0,0,NULL,2130706433,NULL,'c5388fcc06c44d7861ca6e7fec8ee598'),(121,'2009-11-04 14:00:56','waldemar32@hotmail.com','Waldemar','',0,0,NULL,2130706433,NULL,'f106c5e417309208f0b0aa06196ec7ff'),(122,'2009-11-04 14:01:12','federicorepetto@arnet.com.ar','Federico','Repetto',0,0,NULL,2130706433,NULL,'966724d67085913daeaa9027fe189614'),(123,'2009-11-04 14:01:33','cotto41@hotmail.com','Jorge','',0,0,NULL,2130706433,NULL,'de6a564d3b06253da6ebd18d0699b534'),(124,'2009-11-04 14:02:14','ccarvalho@ingesys.com.ar','Celia','Carvalho',0,0,NULL,2130706433,NULL,'1e1c029dc330446466830eec9320ba73'),(125,'2009-11-04 14:07:27','iluelcandil@terra.es','','',0,0,NULL,2130706433,NULL,'21e49447ee0169d3d61126a9922cb2f4'),(126,'2009-11-04 14:07:57','cl@abasociados.com.ar','Claudio','Lehmann',0,0,NULL,2130706433,NULL,'a9317650931a707d5f002339a6ba2105'),(127,'2009-11-04 14:08:44','maru_27far@hotmail.com','Maru','',0,0,NULL,2130706433,NULL,'bdb24c50e369a64d124800a3cf550a9c'),(128,'2009-11-04 14:45:38','maria-rodriguez-07@hotmail.com','Maria Elisa','Rodriguez',0,0,NULL,2130706433,NULL,'4c069e77802bc40d47005f32a68ead64'),(129,'2009-11-04 14:45:56','rosa-balbino@hotmail.com','Rosa','',0,0,NULL,2130706433,NULL,'c7f04cd364f8ec5349b9a39537c496fd'),(130,'2009-11-04 14:46:22','pironayanez@hotmail.com','Enrique','Yanez',0,0,NULL,2130706433,NULL,'2cdf8566361786d3fcfeaa1ce76ae62d'),(131,'2009-11-04 14:46:39','henry0xp0@yahoo.es','Henry','',0,0,NULL,2130706433,NULL,'34316b4c35bb7ee7219856e09f88c659'),(132,'2009-11-04 14:46:57','mjp39@hotmail.com','Juana Maria','',0,0,NULL,2130706433,NULL,'90290bcd28e81bf59d423f734040a90c'),(133,'2009-11-04 14:47:15','maquin54@hotmail.com','Maribel','',0,0,NULL,2130706433,NULL,'cce8c007ffe07c315ebf8b1a581ccce6'),(134,'2009-11-04 14:47:55','yes_804@hotmail.com','Yesica','Cardenas',0,0,NULL,2130706433,NULL,'f21965b9fc85dfd865b25e06c121695a'),(135,'2009-11-04 14:49:32','jbag@prodigy.net.mx','Benito','Antón',0,0,NULL,2130706433,NULL,'d44e7d736bd47e77199fa01ec346e620'),(136,'2009-11-04 14:49:59','yio2661@gmaill.com.ar','Yio','',0,0,NULL,2130706433,NULL,'186f82fb36210f9912798a5b88ae3aa9'),(137,'2009-11-04 14:50:40','ximenavaccaro@gmail.com','Ximena','',0,0,NULL,2130706433,NULL,'de711a5d0651e5992f487a218a35df99'),(138,'2009-11-04 14:51:09','guadagnih@yahoo.com.ar','Horacio','',0,0,NULL,2130706433,NULL,'d321818221e73d45ddd928b4890da1ac'),(139,'2009-11-04 14:51:24','jvincent@live.com.ar','Jorge','',0,0,NULL,2130706433,NULL,'86dcf2b3806c147db5e523e36235f25c'),(140,'2009-11-05 12:02:42','soleamodeo@hotmail.com','soledad','amodeo',0,0,NULL,3194028932,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; WinuE v6; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; WinuE v6)','451deb8aa9391044c01fda3cac7a847d'),(141,'2009-11-05 13:30:53','asdf@g.com','Carla','Vomiero',0,0,NULL,1676171515,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.2)','c89c598c2d3bc1a3e0e56db2527ca3c4'),(142,'2009-11-05 18:41:53','iorejaga@gmail.com','IRMA','OREJARENA',0,0,NULL,3125826889,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 2.0.50727; Zune 3.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','0432d4a21ad8ff2cb17df70f81312013'),(143,'2009-11-06 13:36:42','mariamartaeche@hotmail.com','maria marta','echegaray',0,0,NULL,3199242200,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4','2d5e0f5a0643cf97d941554204d4a16d'),(144,'2009-11-06 14:31:05','adrianamendez2002@hotmail.com','ADRIANA','MENDEZ',0,0,NULL,3199339121,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)','408829c41aa8b8699b1ba223fcdeb082'),(145,'2009-11-06 18:10:48','comunicaciones-rossi@hotmail.com','ROSSI','MEJIA',0,0,NULL,2798838695,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10','45e1159276ca28157e86df419d4e2fd2'),(146,'2009-11-07 16:10:56','ale.2.3@hotmail.com','Ale','Apellido',0,0,NULL,3203472196,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15','b512bdf4f5cc503a155e6b74e7c09bae'),(147,'2009-11-07 19:27:42','israel7ma@hotmail.com','israel','ramos martin',0,0,NULL,3186397555,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)','9030a557516a8311690c335f1185a61c'),(148,'2009-11-08 18:10:19','erica_amati34@hotmail.com','Erica','Amati',0,0,NULL,3363774031,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','c9f30062d469bc2b170add767cd9d0ec'),(149,'2009-11-08 20:01:44','signografica@gmail.com','hugo','marquez',0,0,NULL,3184743728,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; es-es) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1','e3d3cbfdd21923315c17acc0a2c3bb48'),(150,'2009-11-08 20:59:22','inesmortola@hotmail.com','Maria I','Mortola',0,0,NULL,3202732072,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; FBSMTWB; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; msn OptimizedIE8;ESAR)','0183cb837d4e13caa716665912b5b120'),(151,'2009-11-08 22:46:56','gary_callejera@hotmail.com','Ayelen','Garaldi',0,0,NULL,3189726498,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14','87db170ad9c7aaa0ececb4665a46b660'),(152,'2009-11-09 09:58:31','armaley61@hotmail.com','LEIDY','RANGEL',0,0,NULL,3385945686,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/2.0.0.1','37bd42a5724f815122b81fdd311e2e15'),(153,'2009-11-09 20:38:02','fasjad2009@hotmail.es','vicent','vazcuez',0,0,NULL,1473909240,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; InfoPath.2; .NET CLR 3.0.30729; OfficeLiveConnector.1.4; OfficeLivePatch.1.3; AskTB5.5)','8f1b31b7df1272320316bda71fe06b81'),(154,'2009-11-10 14:50:13','carlosdominguez@megared.net.mx','carlos','Dominguez',0,0,NULL,3361505704,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','bc8999e145f60cadc2ed1669458cfc75'),(155,'2009-11-11 10:05:26','faby_dsn@hotmail.com','alejandra','venegas',0,0,NULL,3360219186,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FunWebProducts; GTB6; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727)','c50d3756dbae2e883a65216c45203215'),(156,'2009-11-11 15:07:48','karina85_rq@hotmail.com','Nombre','Apellido',0,0,NULL,3357080427,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15 (.NET CLR 3.5.30729) FBSMTWB','42f2b38cbe75c9ea2798bd42d5fe4cbe'),(157,'2009-11-11 19:12:42','ame@cosset.com.bo','rosario','molina',0,0,NULL,3356334859,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB0; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 1.1.4322)','83c97939b3114e0a5b1bc163e25d4ebe'),(158,'2009-11-12 08:03:25','evaniel_2011@hotmail.com','Daniel','Urdaneta',0,0,NULL,3122139393,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 FBSMTWB','d493851b8de8c8f9c21388a32d861461'),(159,'2009-11-12 16:28:25','schiavonimaria@hotmail.com','maria marta','schiavoni',0,0,NULL,3188968308,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; FunWebProducts; SIMBAR={C37F4063-A0DE-4B5A-B4D7-E59CA2724D8A}; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','78deb90a3932d9ba3e3937349345acbf'),(160,'2009-11-12 17:48:11','niroes1@hotmail.com','Nieves','Rom',0,0,NULL,1395725345,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; FunWebProducts; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','3e6eb631dfcbbb18777d69286839e179'),(161,'2009-11-12 20:35:19','luzmaria.tase@gmail.com','LUZMARIA','TALERO',0,0,NULL,3125996651,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.3;MEGAUPLOAD 1.0 (.NET CLR 3.5.30729)','098fb99ffd86d00ec29ee280d95c1ca5'),(162,'2009-11-13 07:05:10','dipaco83@hotmail.com','Celestita','Parisita',0,0,NULL,3362377870,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)','8a488a2688eb406733b2722cef5595c1'),(163,'2009-11-13 13:13:40','mari.aya.l@hotmail.com','mariela','ayala',0,0,NULL,1162844931,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; Creative AutoUpdate v1.40.01)','d9525e7444f47e5ce871e6be2a6ab021'),(164,'2009-11-13 15:31:44','sermar@wiscom.com.ar','Marcela','Fernandez',0,0,NULL,3358534151,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; uE v7)','98772f069b6ee05da1dc8149ebd30dea'),(165,'2009-11-13 17:34:28','elenamachadobertiz@hotmail.com','elena','machado',0,0,NULL,3360844192,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b4e40d23d510e09c0cdfd0f0f3071ca7'),(166,'2009-11-13 18:22:42','yel_luis62@hotmail.com','luis','yel',0,0,NULL,3386862573,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; FBSMTWB; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','d67f0149c2a28cde9ff2cb9c1723bfc4'),(167,'2009-11-13 20:09:35','nancy-cgen@hotmail.com','nancy','gentili',0,0,NULL,3199273559,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','362678da1357fe822e903826cd76418c'),(168,'2009-11-13 20:12:30','andreaf.sj@hotmail.com','Andrea','San Jose',0,0,NULL,3199265462,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2)','1f5417abb9565b9b1c61436e5a4f5df0'),(169,'2009-11-14 08:25:16','arangoadriana@hotmail.com','Adriana','Arango',0,0,NULL,2798837173,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','2fbbc8edc5467f18b0c317016a6a544f'),(170,'2009-11-14 14:32:34','cesarmera2009@hotmail.com','cesar','mera',0,0,NULL,3196076421,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; uE v7; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727; uE v7)','c7f11326c575e097113600c848aa874a'),(171,'2009-11-16 07:34:36','glavelaz@yahoo.com.ar','gladys','vel',0,0,NULL,3188849603,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; InfoPath.2; .NET CLR 2.0.50727)','0a4c76ab2d9f9b3d7eb405ae4d6ae5cb'),(172,'2009-11-16 20:44:12','marcelagodoy52@hotmail.com','Marcela','Godoy',0,0,NULL,3198302878,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6)','8eda214ff3740aac2b6af260390763ae'),(173,'2009-11-17 14:41:05','chapis_boss@hotmail.com','Valeria','Ancona',0,0,NULL,3184141132,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b3d1981e7eb1599ab62eec4f1f3bb9e1'),(174,'2009-11-19 08:05:29','sariperalta08@hotmail.com','sari','peralta reynoso',0,0,NULL,3196688227,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.8.1.8) Gecko/20071008 Firefox/2.0.0.8','18bf98dedfe5b3fe987adf36524c5322'),(175,'2009-11-19 08:39:03','chiaboccoleli@hotmail.com','lidia','chiabocco',0,0,NULL,3360846119,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SIMBAR={39773AFE-89A0-4886-9730-68322B913899}; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','83ea399f1b4de9aa1e0aef786c355e9d'),(176,'2009-11-19 20:31:32','ojo_magico_4@hotmail.com','jorge luis','olano rodriguez',0,0,NULL,3190510183,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','31dc20da85f30f3d32101060f681a967'),(177,'2009-11-20 06:43:08','mcano0406@yahoo.com','Maria del Carmen','Cano Casta',0,0,NULL,3387446359,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.4; OfficeLivePatch.1.3)','6161b1d1d85449eececd1f77cfc80ac7'),(178,'2009-11-20 12:41:37','galmiche2388@hotmail.com','natividad','notario',0,0,NULL,3381679918,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1)','b81dd1ca78b17a454dee022eb19d19d2'),(179,'2009-11-20 15:23:12','gigi_giordano@hotmail.com','Gisella','Giordano',0,0,NULL,3387597512,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; uE v7)','4fcfc4ec5958295e62950e8af911c355'),(180,'2009-11-20 16:31:57','cbayonas@hotmail.com','cesar','bayona',0,0,NULL,1078745091,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322)','4aedcb433ce210a7946c4c982fd0ca2b'),(181,'2009-11-20 22:02:48','flolly_hernandez@hotmail.com','florencia','hernandez',0,0,NULL,3187795278,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','65aa4665909f60584db38a11b3748dd2'),(182,'2009-11-20 22:59:13','edithevant@hotmail.com','Edith','Tolosa',0,0,NULL,3121370035,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','fabdc459228c23c10d2ec1dcf66674ac'),(183,'2009-11-21 07:19:51','brajusmelinap@hotmail.com','Melina','Brajus',0,0,NULL,3202667105,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','6d0de8f989b9da2284cb6eda6f2396ce'),(184,'2009-11-21 12:11:32','itati_ayala@yahoo.com.ar','itati','ayala',0,0,NULL,3388913977,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','f0122b1e29f4d77cad08fc7aaa67fdb3'),(185,'2009-11-21 21:54:29','alicia8960@hotmail.com','Alicia','DAndrea',0,0,NULL,3196717119,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','c7f3fd45fee18f8f46a2148f73e2f9e3'),(186,'2009-11-22 09:01:32','jorgeluismas@hotmail.com','Jorge','Mastrantuoni',0,0,NULL,3203676942,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-AR; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 GTB6 (.NET CLR 3.5.30729) FBSMTWB','ebfbe7c1a04bc7f3d4bff0504879ba2e'),(187,'2009-11-22 10:15:03','clarabs@fibertel.com.ar','Nombre','Apellido',0,0,NULL,3200112313,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; yie8)','af5a81a06692feeedfb04fe0405d3683'),(188,'2009-11-22 11:45:18','silvy_9297@hotmail.com','silvia','fernandez',0,0,NULL,3196585988,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; FBSMTWB; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','d6fc25b771c8cb026a0db41839de9e6f'),(189,'2009-11-22 20:41:16','mirandalila58@hotmail.com','liliana','miranda',0,0,NULL,3199255932,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Ant.com Toolbar 1.5 Firefox/3.5.5','9a01aa69c20ff2503d4beadf48de6cb6'),(190,'2009-11-23 10:16:38','meche-51@hotmail.com','mercedes','melli',0,0,NULL,3358098675,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)','d6c4e89ebcdf6b8fcff57f3b96d12ab6'),(191,'2009-11-23 12:26:49','marcy1719@live.com.mx','cinthia','lara',0,0,NULL,3381624060,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)','9f4593d50545aeadd0c89f8f678b94c4'),(192,'2009-11-23 15:08:34','an_san_69@hotmail.com','andoni','san juan',0,0,NULL,1395141545,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','8efa7d2a1a8140d64b9603c14b2d2cfb'),(193,'2009-11-23 19:16:39','soniadeluca36@yahoo.com.ar','Sonia','De Luca',0,0,NULL,3200072734,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','7759ed2a3537adaba2b5f0f901a5d7fd'),(194,'2009-11-23 20:14:04','marielaff2002@yahoo.com.ar','mariela','Apellido',0,0,NULL,3191323482,'Opera/9.64 (Macintosh; PPC Mac OS X; U; es-ES) Presto/2.1.1','84eefd5485bedf9a5bd93fdb5e730b80'),(195,'2009-11-24 15:53:14','raquel.escribano@hotmail.fr','raquel','escribano',0,0,NULL,3194204394,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','504cc8baea0cfd24cca3394d3575cfbb'),(196,'2009-11-24 18:47:03','gigel_pm@hotmail.com','gisela','mendez',0,0,NULL,3356012667,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; Zango 10.3.85.0)','39224c216fb579d3ac66ca5aa179e6e5'),(197,'2009-11-25 09:12:04','utopiko_@hotmail.com','octavio','sanchez',0,0,NULL,3186839026,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2)','7663b8ef70a458682858f84f4b2c246b'),(198,'2009-11-25 11:45:13','mcarmenzurita@hotmail.com','mari carmen','zurita moreno',0,0,NULL,1335580944,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FBSMTWB; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','2fef8ab1aa0e158b81691b30eae3aca6'),(199,'2009-11-25 11:47:45','tereade@hotmail.com','teresa','rodriguez',0,0,NULL,3191016871,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15','6696bdb259f78fc0aee1ee637f1a9423'),(200,'2009-11-25 11:55:15','mhermida@senasa.gov.ar','maria','ester',0,0,NULL,3360156068,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','19a6316870400fd397b65986d14aa78a'),(201,'2009-11-25 20:08:12','janrofallas@gmail.com','Alejandro','Fallas',0,0,NULL,3385755486,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; InfoPath.2; uE v7)','04ab06522a43910002a72a7fb5e6d8c2'),(202,'2009-11-25 21:11:45','lauraductil@yahoo.com.ar','lau','zapico',0,0,NULL,3386594800,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1)','1b8ff1534db4af1e86178b8f675a0f6c'),(203,'2009-11-26 16:01:44','amada_andrada@hotmail.com','amada','andrada',0,0,NULL,3128620578,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; .NET CLR 2.0.50727; InfoPath.1; FDM; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c8a4165fa897a8a307daa22b3204d2c6'),(204,'2009-11-26 18:02:19','lecaros79@hotmail.com','leonardo','caro',0,0,NULL,3387604721,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','3285fe692942b401c0ad4b83648bc6c5'),(205,'2009-11-26 21:35:35','chiko676@hotmail.com','daniel','nagast',0,0,NULL,3121518724,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','0c395bfc8e735ff501a59b930a23b2ba'),(206,'2009-11-27 05:34:39','araceli51@hotmail.es','araceli lucia','villanueva',0,0,NULL,3200209553,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.33 Safari/532.0','7fb6671d38a6ca375c1a3b4ce7ebc8b1'),(207,'2009-11-27 15:07:04','amgaro@gmail.com','Andrea','Garo',0,0,NULL,3388607516,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','ca0680c77ca5d22766549cd381fd5846'),(208,'2009-11-27 22:08:41','cogo-db@hotmail.com','consuelo','gonzalez',0,0,NULL,3382494900,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30729)','76b3194dcb7d9701dd80c06233ecf531'),(209,'2009-11-28 10:40:38','cristina.cristalina@gmail.com','Nombre','Apellido',0,0,NULL,3387387950,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 2.0.50727)','e64859ed7cee82a305cf5cf2bf26f760'),(210,'2009-11-28 12:58:18','yahuzu@hotmail.com','yahuzu','acu',0,0,NULL,3385847978,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15 (.NET CLR 3.5.30729)','3d4de4e64d268c04c4c0e569497a3f01'),(211,'2009-11-28 18:47:45','silvialuromano@hotmail.com','Silvia','Romano',0,0,NULL,3202647818,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.1.3) Gecko/20090824 Firefox/2.0.0.12;MEGAUPLOAD 1.0','62ceb5529bf255b4ff35906535c11b46'),(212,'2009-11-29 07:17:40','miragl@yahoo.com.ar','susana','miraglia',0,0,NULL,3203715898,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FBSMTWB; .NET CLR 1.1.4322)','60a98a0fa3959f861cf2cab5608ffc10'),(213,'2009-11-29 09:27:13','patriabarca@hotmail.com','Patricia','Abarca',0,0,NULL,3290958582,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FBSMTWB; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; OfficeLiveConnector.1.4; OfficeLivePatch.1.3; .NET CLR 3.0.30729)','2f44f80bdb33c3a6fbb8379313bafe32'),(214,'2009-11-29 12:26:19','patrimonte@yahoo.com.ar','Patricia','Beraza',0,0,NULL,3199389245,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; AskTB5.4)','4740060d95be2511ccb6ec0df87b62f2'),(215,'2009-11-29 17:41:56','teremangiaterra@hotmail.com','teresa','mangiaterra',0,0,NULL,3199344033,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.1)','f6066710e832402e7a7cddc2fabaecf7'),(216,'2009-11-29 19:34:31','elviracengarle@yahoo.com.ar','Elvira','Cengarle',0,0,NULL,3121788071,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','dc2aafc1fe43f5cafe90fbb9a3d7b541'),(217,'2009-11-29 20:02:31','ceci.llarena.sj@hotmail.com','cecilia','llarena',0,0,NULL,3121448906,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; FBSMTWB; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','83346b8309143b16b853a07c5a2781c1'),(218,'2009-11-30 08:19:33','diego_monte08@hotmail.com','Diego','Arballo',0,0,NULL,2756303181,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30)','0efb128d2c3b821429a23014e5ee2c0f'),(219,'2009-11-30 15:45:31','quique2fer@yahoo.es','Enrique','Fernandez',0,0,NULL,1570505619,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','3f5db6fecfc376aef44c665cfad44b68'),(220,'2009-11-30 17:11:27','dubelluitmaderasdte@hotmail.com','julia','carboni',0,0,NULL,3202510858,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15 GTB5 (.NET CLR 3.5.30729)','20726925c156dfb21054740c2c2b1cf0'),(221,'2009-11-30 17:31:52','silvia.5419@hotmail.com','silvia','esposito',0,0,NULL,3363118729,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','b8560ebd812e1612e99d8f1c9a9bf3d4'),(222,'2009-11-30 17:59:57','yunuenzac22@hotmail.com','yunuen','zavala',0,0,NULL,3181964260,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','43e903951e8b8a5698240c4cbce6f4f7'),(223,'2009-11-30 23:49:09','janetmonarrez@hotmail.com','janet','monarrez',0,0,NULL,3383054708,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','87b05b6552950debd81b1adfab2fb00d'),(224,'2009-12-01 05:59:35','lorenabte@live.com','lorena','u',0,0,NULL,1396528824,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; MSN OptimizedIE8;ESES)','261ea0a8a92436c72caf2d0eb41a708d'),(225,'2009-12-01 13:10:35','eliluvivas@hotmail.com','Elisabet','Vivas',0,0,NULL,3129822784,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 FBSMTWB','ffd9982c9b0577960cc33e7a5886bd9e'),(226,'2009-12-01 15:19:10','salemarcela@hotmail.com','marcela','sale',0,0,NULL,3196707727,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; uE v7; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; uE v7)','6f4f5c321e58c89bfe886a96f6a615dc'),(227,'2009-12-02 06:50:52','almalmir@hotmail.com','Alfonso','Maldonado',0,0,NULL,3573859034,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)','15e7f90b35319cb74e5aa80436fedbbe'),(228,'2009-12-02 10:57:56','fersa21@hotmail.com','Fernanda','Sabbioni',0,0,NULL,3187895342,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 1.1.4322; .NET CLR 3.0.04506.30; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','92d1622939f36c280dcce5f301787ef5'),(229,'2009-12-02 13:04:54','lucianafonssirobledo@yahoo.com.ar','luciana','fonssi',0,0,NULL,3190877255,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','f860cfea021e83616a17dd6eb6d5694f'),(230,'2009-12-02 15:29:29','aguirre.martha@yahoo.com','MARTHA','AGUIRRE',0,0,NULL,1649980021,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; yie8)','b40dc6ce721fa0902c78bc98f8e581f6'),(231,'2009-12-02 16:09:18','juancholujan@hotmail.com','RAMON','LUJAN',0,0,NULL,3181631478,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15','80674151cc6f7a555061bdc60bc59338'),(232,'2009-12-03 09:22:19','dfariagno@hotmail.com','Daniel','Ariagno',0,0,NULL,3202122838,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','ba4234aecea3569c7938948492f6cd5a'),(233,'2009-12-03 10:39:21','madelein_lopez@hotmail.com','madeleine','lopez',0,0,NULL,3180214894,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; eSobiSubscriber 2.0.4.16; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','5dcc7adc60bfa18065e3755010cebecf'),(234,'2009-12-04 15:01:16','marupinasco@hotmail.com','maru','pinasco',0,0,NULL,3128765667,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; uE v7)','a13a21366635d011145a8e997c3b08be'),(235,'2009-12-05 12:25:14','michamalizia@hotmail.com','norma','malizia',0,0,NULL,3187741156,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15 (.NET CLR 3.5.30729) FBSMTWB','08a4b818b4424cbd882af5ef0af20670'),(236,'2009-12-06 07:33:06','estrellita399@gmail.com','romina','grisel',0,0,NULL,3199324952,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 FBSMTWB','dc2092e182ecfbe53a7fc84bee07e3c4'),(237,'2009-12-06 10:58:36','violet96_66@hotmail.com','jess','barajas',0,0,NULL,3185088738,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','1c322771135dfabdff029af95e978bc3'),(238,'2009-12-06 13:56:17','MIRANDA@MEDIA-SATURN.COM','ESMERALDA','MIRANDA',0,0,NULL,3265014805,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','2fd735456baf4366b6c2bac81a8072ba'),(239,'2009-12-07 13:31:21','lilianapasatir@hotmail.com','Liliana','Pasatir',0,0,NULL,3203809599,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.21022; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30729)','78711da096faa2f7848e947953c863ec'),(240,'2009-12-07 14:05:26','tduenez@hotmail.com','Teresa','Duenez',0,0,NULL,1198390676,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','fd4db1ff6cd75a859b5c5acd02ae1a42'),(241,'2009-12-07 17:42:23','mari__olga@hotmail.com','Mar','Toledo',0,0,NULL,3189080672,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; FunWebProducts)','18a5b299a2eb01eae1ef293647483b2a'),(242,'2009-12-08 06:52:40','CLAUDIACRISTINAHERRERA@HOTMAIL.COM','CLAUDIA C','TORO',0,0,NULL,3199211692,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; InfoPath.2; uE v7; .NET CLR 2.0.50727; uE v7)','4eb39d3f65fc9b254c5f1309501c38bb'),(243,'2009-12-08 10:27:08','erick1741@hotmail.com','erick','masquera',0,0,NULL,3192223016,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; Tablet PC 2.0)','08e6f9ebf1d93822d9618822a7b07e99'),(244,'2009-12-09 15:26:01','perezgar_sl@hotmail.com','Isabel','Garcia',0,0,NULL,1476452198,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','a90f7b62ae5bc93ff340e6925973bde4'),(245,'2009-12-10 08:02:51','janque_36@hotmail.com','Irma','Sirio',0,0,NULL,3363784326,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; yie8)','69716ca8bed59988b2ccf11b000b0b35'),(246,'2009-12-10 08:11:09','The_demon_64@hotmail.com','Gabriel','Vieira',0,0,NULL,3122140929,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 2_1 like Mac OS X; es-es) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.1 Mobile/5F136 Safari/525.20','28834f583009b38450fcbb8104da15e5'),(247,'2009-12-10 14:24:54','moyahema_2512@live.com.co','MONICA','HERNANDEZ',0,0,NULL,3120563705,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','33f98ec446ec5a314a9f5db81e58974a'),(248,'2009-12-10 15:30:34','estherautos@hotmail.com','esther','sancho',0,0,NULL,3360823851,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)','e24239104d29504e7ebf6b2cf8c4fa32'),(249,'2009-12-10 21:25:27','ricardem@hotmail.com','Ricardo','Espinoza',0,0,NULL,3194487883,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FBSMTWB; GTB6.3; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727; .NET CLR 1.1.4322; InfoPath.1; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','bfce28022b96b4376707b218452798bd'),(250,'2009-12-11 12:06:21','yelixececilia2008@hotmail.com','yelixe cecilia','hernandez morales',0,0,NULL,3204403925,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; WinuE v6; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; WinuE v6; AskTB5.5)','9b25647cfa8d192dc6e441893431fa2a'),(251,'2009-12-11 18:18:49','jjsaavedra1@hotmail.com','juan','saavedra',0,0,NULL,3201989088,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 1.1.4322; msn OptimizedIE8;ESMX)','6d5f21a421ba636c3de688413da7d4ff'),(252,'2009-12-12 08:03:45','anaacaguilar@tcs246.com','Ana','Aguilar',0,0,NULL,3193374671,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','6d5bb9cd31193fe334293e71d86b6733'),(253,'2009-12-12 09:21:24','floresbetsy@hotmail.com','Idelia Betsabe','Flores Viramontes',0,0,NULL,3181558463,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.4; OfficeLivePatch.1.3; .NET CLR 1.1.4322)','c35ebad82604113b9af6c36c00199881'),(254,'2009-12-12 12:54:26','karinaguadalupesalinas@gmail.com','karina','salinas',0,0,NULL,3202419755,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','a59e582067779a38907415173bce0821'),(255,'2009-12-12 13:03:41','josepta27@elefonica.es','pep','torras',0,0,NULL,1395921112,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','aaa13aeb32b5b9434250d70b1e11f491'),(256,'2009-12-13 07:26:13','gladys072@hotmail.com','GLADYS','CISNEROS',0,0,NULL,3190307226,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.3; .NET CLR 2.0.50727; InfoPath.2)','7437c5cf35fbb2f47627d18fedfbf87b'),(257,'2009-12-13 17:35:15','isa_gama@yahoo.com.ar','isabel','gama',0,0,NULL,3200288490,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.3; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','202f4df73b2d4f5bcc649356221ac326'),(258,'2009-12-14 10:19:57','rosa_strologo@hotmail.com','ROSA','STROLOGO',0,0,NULL,3199061568,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FunWebProducts; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','3e2c30ee894aac656df035610d9a67aa'),(259,'2009-12-14 11:25:41','ros_y_gutierrezgomez@hotmail.com','rosa maria','gutierrez',0,0,NULL,1361269658,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 hotvideobar_1_3_31633_7_886 VB_gameztar VB_gameztar hotvideobar_1_1_157134132021_179_84','420ab7bfab2380a9e2cdc2f2a36e7104'),(260,'2009-12-14 17:55:51','javiercalamaro@hotmail.com','javier','medina',0,0,NULL,3381658918,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','09602bc9dea365e316e0c9328fcc5d88'),(261,'2009-12-15 21:30:17','ameliamor36@hotmail.com','amelia','moreno',0,0,NULL,3190980312,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/4.0; GTB6; FBSMTWB; SLCC1; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; WinTSI 12.11.2009; Zango 10.3.75.0)','43d6fb3dc287276b4dc68dee20071d25'),(262,'2009-12-16 08:35:31','SILRAI1@HOTMAIL.COM','SILVIA','RAIMUNDO',0,0,NULL,3362708211,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','7f42e0139451506708631b674eba7a93'),(263,'2009-12-16 13:00:40','jairhs@hotmail.com','JAIR ALEXANDER','HERNANDEZ SANCHEZ',0,0,NULL,3204402123,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15','db6cef42bf758c58ef0f93516dd21e25'),(264,'2009-12-17 11:16:18','mlariascocinero@hotmail.co','marcelo','arias',0,0,NULL,2855525294,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15 GTB6','185f130661e6c1f2b7e615f1a098c75b'),(265,'2009-12-17 19:15:28','humberto@spiridione.com.ar','humberto','spiridione',0,0,NULL,3196599796,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','8fd6ac286f72c02dce0ebb41f67f1529'),(266,'2009-12-18 08:54:32','mrranieli@infovia.com.ar','maria rosa','ranieli',0,0,NULL,3200137093,'Opera/9.80 (Windows NT 5.1; U; es-ES) Presto/2.2.15 Version/10.01','07cb01bd75d55fe31049f9db64988bef'),(267,'2009-12-18 20:44:14','carmenrey@speedy.com.ar','carmen','rey',0,0,NULL,3190994733,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','e11a1694cc56a39141e8a760e227ce59'),(268,'2009-12-19 08:49:17','martinigraciela@hotmail.com','Graciela','Martini',0,0,NULL,3359446514,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; uE v7)','2fde75944806f1610576cbac8d4b4c1a'),(269,'2009-12-20 12:33:23','cocolevi@hotmail.com','coco','lev',0,0,NULL,3193340929,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6','d3ad127a40e5f26ecf3a1539b831a209'),(270,'2009-12-21 19:51:50','saguilar46@hotmail.com','susana','Aguilar',0,0,NULL,3200009166,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; Media Center PC 5.0; MDDC)','93c23c8e8b78fce0d7f406883b4ea087'),(271,'2009-12-22 14:07:37','lucianacavagna_ps@hotmail.com','luciana','cavagna',0,0,NULL,3358686262,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.3; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','95bd3fd638cf352227b593f7aa2f252c'),(272,'2009-12-22 18:42:24','cdsaec_1@hotmal.com','SERGIO','ESTRADA',0,0,NULL,3186087760,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FunWebProducts; VB_hottiestar; hotvideobar_2_1_52248780134768_94_4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b16c233577288afca75e535b53ba7169'),(273,'2009-12-25 14:49:55','macrisy44@gmail.com','Maria Cristina','Saez',0,0,NULL,3362260692,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1)','7aa89969b436c45b529975d18ec9a215'),(274,'2009-12-26 13:02:12','evvarguello@aol.com','ERNEST','ARGUELLO',0,0,NULL,3361500547,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1)','d095461b1041dfab067703108459f767'),(275,'2009-12-26 16:18:09','adrianafoliva@yahoo.com.ar','Adriana','Oliva',0,0,NULL,3388770384,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','155db57440ad89dd9350ba120fbfd73a'),(276,'2009-12-27 11:44:53','ceelebe@hotmail.com','cesar','lopez',0,0,NULL,1335671021,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','490fbfd93fe2ede67e303e8ec6984c64'),(277,'2009-12-27 16:09:57','susimares@hotmail.com','susana','ares',0,0,NULL,417910903,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.4; es-ES; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6','fd16bb13b2784224d328d12e1df4c81f'),(278,'2009-12-28 09:36:18','amanda51630@hotmail.com','Amanda','Tato',0,0,NULL,1534412471,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 ;ShopperReports','f265b19fa8d3965cb7bc50921e0e6da9'),(279,'2009-12-28 15:51:20','adrianbjuarez@hotmail.com','adrian','juarez',0,0,NULL,3638986053,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; es-es) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19','02cccbc8b49079436c169de70cc31825'),(280,'2009-12-28 17:46:52','meli.12junin@hotmail.com','melina','silva',0,0,NULL,3199342473,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16','49459c2d4420e3d793956eb1c954e85e'),(281,'2009-12-28 18:52:26','eugemoreschi@hotmail.com','euge','moreschi',0,0,NULL,3202149208,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','d0bfd6bcc1cadc05c4cad68414aae93b'),(282,'2009-12-29 13:36:12','wer_fresa@hotmail.com','werdwe','seewrv',0,0,NULL,3120695670,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6','ac0b23ff20bb7b24d2dcde374bef0615'),(283,'2009-12-29 15:03:16','lizeth_chicasagitario@hotmail.com','lizeth','navas',0,0,NULL,3199627034,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','e321de4001a40040e8ee65c5a9ee2062'),(284,'2009-12-29 15:39:21','pilipili1961@hotmail.com','Nombre','Apellido',0,0,NULL,1474200387,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6','af4218afcd6670ddbee321f1b2b6e873'),(285,'2009-12-31 09:35:59','anabel.campo@cuatrecasas.com','anabel','campo',0,0,NULL,1353618853,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','91c4fde5eae48bb2fefc35438378a9b3'),(286,'2010-01-01 12:04:00','maritariera@hotmail.com','maria','riera',0,0,NULL,3199263700,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; InfoPath.1; WinTSI 14.10.2009; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','ca170c4480508ab381def1515f9565d1'),(287,'2010-01-02 12:06:15','clauspprado@yahoo.co','claudia','prado',0,0,NULL,2905918167,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; en-us) AppleWebKit/531.9 (KHTML, like Gecko) Version/4.0.3 Safari/531.9','50adba73baf41d25977ecb86ad7bbdb1'),(288,'2010-01-02 13:02:36','patricio_m_t@hotmail.com','patricio','medina',0,0,NULL,3194914798,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6','b08bf89402abfd29b2492d136e7b4da2'),(289,'2010-01-02 16:35:38','tbjuarez@hotmail.com','Nombre','Apellido',0,0,NULL,1335526993,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','4728a999a71502ceb12e12a75b7efec3'),(290,'2010-01-02 18:48:04','qbcelaya@hotmail.com','jose luis','celaya',0,0,NULL,3382430253,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; InfoPath.2; .NET CLR 3.0.04506.648; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','0706e4bc12ba17630abe5bdb10be2c4e'),(291,'2010-01-03 07:26:29','mctena@logista.es','carmen','tena',0,0,NULL,1435038920,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','2dd1f036cc80525395113666656f1b85'),(292,'2010-01-04 07:26:28','manu_arquimo@hotmail.com','Manuel','Arquillos',0,0,NULL,3650372721,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; MS-RTC LM 8)','2c4ccc99441bf2833edd932b74611909'),(293,'2010-01-04 13:16:13','fedemoreno75@hotmail.com','fede','moreno',0,0,NULL,1435082611,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; chromeframe; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30729; MSN OptimizedIE8;ESES)','7dd403a7e53466286d90e5ce7e0a32ab'),(294,'2010-01-06 12:16:28','crhis3000eltoraso@hotmail.com','crhis','smith',0,0,NULL,3361157562,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.2; Trident/4.0; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','18954f7b6436fbe427cdd8599fd4897c'),(295,'2010-01-06 13:58:28','j.marquezb@hotmail.com','johnny','marquez',0,0,NULL,3197808871,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','52f2e81767f12f53ca92708e9188af8f'),(296,'2010-01-06 14:31:33','gbyo_ortiz14@hotmail.com','gaby','om',0,0,NULL,3382147104,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','42afd91092ac2eb6a9621a120b744b30'),(297,'2010-01-06 14:34:46','sanlucagu@hotmail.com','LORENA','PICOT',0,0,NULL,3128575874,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b91e18b069dd2d49efd32bf8d0b5c9dd'),(298,'2010-01-06 15:51:50','fonsecamaja@hotmail.com','MAJA','FONSECA',0,0,NULL,3196735766,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','bd2f775f7ca6a3142aae405672c44daf'),(299,'2010-01-06 18:44:30','lcordobac@hotmail.com','LEONARDO','CORDOBA',0,0,NULL,2798838727,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.38 Safari/532.0','f5d817e731b56c1276f47762a8227940'),(300,'2010-01-07 09:18:18','rosaymary@hotmail.com','rosa','Apellido',0,0,NULL,1474052123,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729; MSN OptimizedIE8;ESES; AskTB5.5)','a3ec77937868e3570cfdfaff58334621'),(301,'2010-01-07 09:57:05','milifloresnu@gmail.com','Mili','Flores',0,0,NULL,2855476689,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','348953b99a80e07b510a39ac34baf8a3'),(302,'2010-01-07 14:34:37','ajosemaciashoz@yahoo.es','anibal jose','macias de la hoz',0,0,NULL,3193609562,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 1.1.4322; .NET CLR 3.0.04506.648; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','69e20eada5ba9ace520a2fc97d65bae8'),(303,'2010-01-07 15:04:52','d.rosso@unibe.edu.do','dilcia','rosso',0,0,NULL,3357191154,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','39640718dcd59903c4043f30f191447d'),(304,'2010-01-07 16:42:50','yanethro_5@yahoo.es','yaneth','rosales',0,0,NULL,3190284349,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30729)','592e6fc320336362efd50989b8425387'),(305,'2010-01-07 19:51:01','melvin223@hotmail.com','maria melva','garcia ciro',0,0,NULL,3198492477,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','9787d533f276e1e2b9240e54e12005ef'),(306,'2010-01-08 06:11:30','t23natalia@yahoo.com.ar','natalia','tregnaghi',0,0,NULL,3388879184,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts)','e56eb4da164f863681fd833c370ca583'),(307,'2010-01-08 06:42:49','c.lopez@icab.cat','carmen','lopez',0,0,NULL,1346030887,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.3; .NET CLR 1.1.4322)','69d92d5edf0755ce66588030fa0198fe'),(308,'2010-01-08 12:34:04','lauraalvarez14@hotmail.com','Laura R.','Alvarez',0,0,NULL,3199255197,'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)','775e711755793bdb28cfe2064371b477'),(309,'2010-01-08 14:55:53','analiaoncativo@hotmail.com','Anal','Heredia Celayes',0,0,NULL,3202671608,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1)','97d8e35ca2fa826cc8dbc9745a1ac49d'),(310,'2010-01-08 18:09:45','nunu8101@hotmail.com','Nube','Carrasco',0,0,NULL,3179770772,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322; InfoPath.2)','e65e004b7e7f7d93a520841b72439caa'),(311,'2010-01-09 10:58:56','silvina_lp@hotmail.com','silvina','Romano',0,0,NULL,3196605958,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.04506.30; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','d71332b087b14eb67378a445b4960b92'),(312,'2010-01-09 15:19:25','gabriela-a-villar@hotmail.com','gabriela','villar',0,0,NULL,3190841531,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1)','26a8e0f65dd5ffc31b888d1fd7a394b9'),(313,'2010-01-09 18:04:20','mirt@fibertel.com.ar','Mirta','Rodriguez',0,0,NULL,3203695925,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','e00cf62bdd8adc01d38b9e24d90ea311'),(314,'2010-01-09 22:37:20','armament34@gmail.com','Armando','Mendez',0,0,NULL,3198031064,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.17) Gecko/2009122116 Firefox/3.0.17 (.NET CLR 3.5.30729)','9c8f41cd1d5c23e69c7e22ede7333105'),(315,'2010-01-10 15:33:12','ceballosva@hotmail.com','Andres','Ceballos',0,0,NULL,1344138234,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1; uE v7; uE v7)','29ab4121c8c00e80f52fc9110f19d25c'),(316,'2010-01-10 17:06:56','lulitaxxi@hotmail.com','Luciana','Turrin',0,0,NULL,3129497989,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','d7ae4edb58406f4de9420e11bd0c874b'),(317,'2010-01-10 23:47:24','lunaymagui@hotmail.com','silvia','correa',0,0,NULL,3124396655,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.0.17) Gecko/2009122116 Firefox/3.0.17','50925a12189122134deb1178e2467760'),(318,'2010-01-11 07:55:11','eliguilera@hotmail.com','Elizabeth','Guilera',0,0,NULL,3202744321,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','79ccc31edd0f6a172de4b06acb52819e'),(319,'2010-01-12 15:05:51','sabinabonfantti@hotmail.com','fatima','carreras',0,0,NULL,3358708091,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322)','5ec17366e2c1b559739bb031516e3414'),(320,'2010-01-12 20:28:13','ortegamartha@hotmail.com','martha','ortega',0,0,NULL,3203983530,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 (.NET CLR 3.5.30729) FBSMTWB','407827d384f63961ead3748ffd75e9ad'),(321,'2010-01-13 08:01:04','susana_morichetti@yahoo.com.ar','Susana','Morichetti',0,0,NULL,3358187528,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)','4bc4538ef5a86e18543d355ab7e171c8'),(322,'2010-01-13 13:20:16','delia-mirta@hotmail.com','DELIA MIRTA','VALLEJO',0,0,NULL,3128699414,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)','5e9c87bf105e6c2aefb042101223329a'),(323,'2010-01-13 15:52:19','magvidalgu@hotmail.com','Magdalena','Vidal',0,0,NULL,1335322131,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; OfficeLiveConnector.1.4; OfficeLivePatch.1.3; .NET CLR 3.0.30729)','71feb2c4304b785712e95d9bd107cd82'),(324,'2010-01-13 17:19:57','carocat22@hotmail.com','carolina','cornejo',0,0,NULL,3189142416,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; WinuE v6; WinuE v6)','f4b6bfef233ad3003dbfb89315366614'),(325,'2010-01-13 17:44:38','mante-k@hotmail.es','mabel','manteca',0,0,NULL,3199377777,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','b9a3c3e291a691c69b9eca8536667e12'),(326,'2010-01-13 17:58:39','roxylau40@hotmail.com','ROSSANA','GONZALEZ',0,0,NULL,3388914019,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)','fa0d0b829295d16ebb2c9131aa2a48fd'),(327,'2010-01-14 12:05:57','marcela-casadei@hotmail.com','marcela','casadei',0,0,NULL,3202383809,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727)','ad8dce25c1ede8b1fd886b7d51df2e17'),(328,'2010-01-14 12:40:59','margusgon@hotmail.com','maria victoria','lopez',0,0,NULL,3580018628,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; es-es) AppleWebKit/531.9 (KHTML, like Gecko) Version/4.0.3 Safari/531.9','7b25e473ee06e5b51afd72567dca2581'),(329,'2010-01-14 13:55:14','nenapradenas@gmail.com','Nombre','Apellido',0,0,NULL,3189168497,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.17) Gecko/2009122116 Firefox/3.0.17','3e8ea7200a1ada2bcb250fd5cff44d19'),(330,'2010-01-15 02:30:38','anamaria_2211@hotmail.com','ANA M','CABRERIZO',0,0,NULL,3573859034,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)','6783ca4238f2f49ff0ef7b134026c1fc'),(331,'2010-01-15 05:03:57','nuroli@yahoo.com.ar','NURIA','SOL',0,0,NULL,3200094284,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FunWebProducts; GTB6; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','a02ce677d5f7ef40b4af983bd4fa94da'),(332,'2010-01-15 10:55:42','oneydasancheza@hotmail.com','ONEYDA','SANCHEZ',0,0,NULL,3198084713,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)','15a26a228fd12665ce38895da8109279'),(333,'2010-01-15 12:27:31','mariajimena07@hotmail.com','Jimena','Munar',0,0,NULL,1078754891,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.3; .NET CLR 1.1.4322)','7d9cba22d2224f09072413a4a140ed4f'),(334,'2010-01-15 13:21:50','gracielaseifi@hotmail.com','graciela','seifi',0,0,NULL,3128790060,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8849cc580e82d2f2b37a0a15e971b413'),(335,'2010-01-15 14:17:16','gera_tornero@hotmaul.com','gerardo','chavez',0,0,NULL,3146520589,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','e18ee0c08029d5631430b92d31c20ba2'),(336,'2010-01-15 15:17:04','loryymay@hotmail.com','gloria','ruiz',0,0,NULL,3388792460,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','a81ac1517d585b6a73f7ef6898dc0a8c'),(337,'2010-01-16 17:19:28','sanchezbai@hotmail.com','Margarta','Venditti',0,0,NULL,3388733749,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','0b80bef84b9b263078924627dd3ee823'),(338,'2010-01-16 20:53:46','silviadeabasto@yahoo.com.ar','silvia','Apellido',0,0,NULL,3362970439,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','416f4a75e07ce1e4899d319c5d348eef'),(339,'2010-01-17 13:44:24','marumalla@gmail.com','maru','malla',0,0,NULL,3191296581,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.38 Safari/532.0','959a0a8975b3edc7049e83481b44bada'),(340,'2010-01-17 14:21:29','waldocravero@hotmail.com','waldo','cravero',0,0,NULL,3202799133,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','63de69e37fe79015792506059370d9b9'),(341,'2010-01-18 08:33:39','anakees@gmail.com','ANA','SUAREZ',0,0,NULL,3199257396,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6; SLCC1; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','ed2dd5fa73031ee633f05697d1bc2b73'),(342,'2010-01-18 17:16:48','wilsoga74@hotmail.com','wilmer','sotomayor',0,0,NULL,3356851329,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','8014f7989f8384e3e8c82d7df5dabda5'),(343,'2010-01-18 23:00:04','imorfin@hotmail.com','Ivette','Morfin',0,0,NULL,3180541681,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','75c266b42fe40a51a1b08dcae1d6c95e'),(344,'2010-01-19 11:07:09','mr_e_c@hotmail.com','Ren','Esperanza',0,0,NULL,3188900153,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','8cf6c10bc2ef37ff2bae67fcc6570e46'),(345,'2010-01-19 12:45:32','erwinum@yahoo.es','uma','rubiano',0,0,NULL,3198088735,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.3; InfoPath.2)','79bc34c5eec2ee087a0e279074f576d5'),(346,'2010-01-19 20:09:11','nsusanag@hotmail.com','Susana','Apellido',0,0,NULL,3200226136,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; MSN Optimized;XL; yie8)','759e5e721b74d819e2c0b9b740b8683b'),(347,'2010-01-19 21:47:24','martabasabe17@hotmail.com','marta','basabe',0,0,NULL,3121374352,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FunWebProducts; GTB6.3; VB_gameztar; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1)','a2565ae3b018096799df422932cb3af4'),(348,'2010-01-20 16:01:47','caromarch1@hotmail.com','carina','Marchisione',0,0,NULL,3194478874,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','9fc4e5e779d86bb511f58c8ed493b2ef'),(349,'2010-01-20 19:20:39','dodogris@hotmail.com','dair','greco',0,0,NULL,3182306739,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)','3bb940f5296d28c72c3f09bcc0222719'),(350,'2010-01-20 21:30:43','jimmypi73@yahoo.es','JIMMY','PI',0,0,NULL,3192098651,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','b0aa29bd6d45fadbaadadd648253215b'),(351,'2010-01-21 12:30:14','velaestban@terra.es','Elvira','Esteban',0,0,NULL,1477677673,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','72c83985d09c32fe17499bf012fdce17'),(352,'2010-01-21 12:57:54','jorge_fraie@hotmail.com','jorge','fraie',0,0,NULL,2833393774,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30)','b10210f7981f086932c0ca199569efba'),(353,'2010-01-21 15:23:00','tere_maria@msn.com','maria teresa','henriquez',0,0,NULL,3359104860,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','18040f27dafe252fef316d2ed823b898'),(354,'2010-01-21 22:07:58','cluciana415@hotmail.com','LUCIANA','BULACIOS',0,0,NULL,3196844621,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; GTB6.3; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','b929e8e34d8ed93707c7e49a6c926040'),(355,'2010-01-22 09:12:57','erkavi23@hotmail.com','yanet','pe',0,0,NULL,3198042024,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.3; InfoPath.2)','a0407860836030ff3999963db2726035'),(356,'2010-01-22 10:50:17','carla@buscandonos.com','Carla','Vomiero',0,0,NULL,3202506573,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.2)','893fef5458cdc0228bd876d79f59dfc5'),(357,'2010-01-22 21:46:50','virnoli@gmail.com','Virginia','Noli Truant',0,0,NULL,3203918765,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 3.0.30729)','a9da869d06a5506b237d592145d2e0bc'),(358,'2010-01-23 10:17:54','juancadam@hotmail.com','juan','alvarado',0,0,NULL,3126935648,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Ant.com Toolbar 1.5 Firefox/3.5.7 (.NET CLR 3.5.30729)','1574752cc8a83ab2c66e3f3c8aca3a37'),(359,'2010-01-23 13:23:14','adrianitachacon@yahoo.com.ar','Adriana','Chacon',0,0,NULL,3191056958,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 (.NET CLR 3.5.30729)','1a17350a88c0defa208d95a3bce3b966'),(360,'2010-01-23 22:50:54','armandocapetillo@hotmail.com','armando','capetillo medina',0,0,NULL,3185410817,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FBSMTWB; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; MS-RTC LM 8; .NET CLR 3.5.21022; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Zune 4.0)','c9d79ab9d9dd4b15a3a2393444fe657f'),(361,'2010-01-24 10:24:30','gabrielaemilcegiambroni@hotmail.com','gabriela','giambroni',0,0,NULL,3188970357,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2)','a84abfd149c51c302179160e7fdebc23'),(362,'2010-01-24 11:07:04','sandraj.martinez@gmail.com','sandra','martinez',0,0,NULL,3188248067,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.38 Safari/532.0','26f7f15d8d4fa3786f8920bd1b70f75d'),(363,'2010-01-24 12:54:04','alderetenoemi@gmail.com','noemi','alderete',0,0,NULL,3388907589,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','1d87177813dd0c4c43b430a0ecca50b1'),(364,'2010-01-24 15:52:25','elsahtt07@hotmail.com','elsa','herrera',0,0,NULL,3126319027,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3)','f61eab50d54dbaba1b7e2e8bf593a1c7'),(365,'2010-01-24 18:28:29','cristinadebenedetto@hotmail.com','cristina','debenedetto',0,0,NULL,3128619170,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16','538ee7460c9e544dd8c8f9f0dfcaadc3'),(366,'2010-01-25 04:43:25','carlosbedjan@hotmail.com','carlos','bedjan',0,0,NULL,3358165293,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1','9316a5f14a6e0d3a683bfadaad6a81ca'),(367,'2010-01-25 15:49:56','saraimayka@hotmail.com','mayka','prieto',0,0,NULL,1403340173,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; MEGAUPLOAD 3.0)','8431b2edeaa7a02b98c6da7d2b250cf7'),(368,'2010-01-25 16:52:02','adriana@cusbro.com','adriana','bonomo',0,0,NULL,3129511116,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; es-es) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1','7341b53cdce45dc7251ce709c63bf65c'),(369,'2010-01-25 18:11:22','gfmilena@hotmail.com','milena','glz',0,0,NULL,3380588468,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)','1e7d0afd97ef900a228142f3277b0419'),(370,'2010-01-26 07:49:41','juane_e@hotmail.com','juan','espasa',0,0,NULL,1417186151,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','2b8ae83ac4eca183fa932ba5dfcd0530'),(371,'2010-01-26 10:52:05','yolandapineda21@hotmail.com','yolanda','pineda',0,0,NULL,3191940440,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)','88fe2174583bff88f5f9da9965607149'),(372,'2010-01-26 12:36:52','tatianad@vtr.net','tatiana','davagnino',0,0,NULL,3190567296,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.3)','9c34ee14495d4cba35c815f0f758b202'),(373,'2010-01-26 14:13:28','vaninacalvente@live.com.ar','vanina','calvente',0,0,NULL,3124432486,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.21022; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1)','6a7ea363190873b51a8576e78fae9661'),(374,'2010-01-26 16:16:36','gloesparza@live.com.ar','Gloria      Gloria','Esparza',0,0,NULL,3192267233,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-AR; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 (.NET CLR 3.5.30729)','4795e1062a2fcbbc894930a5d3ff5bf8'),(375,'2010-01-27 08:46:23','ericadibur@hotmail.com','erica','dibur',0,0,NULL,3194575263,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.38 Safari/532.0','a1d380ef961b00c99112d85a563aafa1'),(376,'2010-01-27 11:52:16','isavarela50@yahoo.es','ISA','VARELA',0,0,NULL,1597893668,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3)','bb194098c7c7c52612d364d3e4b458d6'),(377,'2010-01-27 15:40:28','eltallerdemaly@hotmail.com','Alicia','Stickel',0,0,NULL,3199420407,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FBSMTWB; .NET CLR 1.1.4322; uE v7; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727; uE v7)','f5e3ad7e1b49043e722851582e8a34e0'),(378,'2010-01-27 16:27:20','aa20naif@hotmail.com','marita','gonzales',0,0,NULL,3362549663,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)','979fe377d08314cba377a88df977658d'),(379,'2010-01-27 17:09:55','marodriguez07@gmail.com','Maria','Rodriguez',0,0,NULL,3200125613,'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)','8362b5bedbe886d50ab1da23a97ad5cc'),(380,'2010-01-27 20:25:47','daniroldan07@hotmail.mail','daniela','roldan',0,0,NULL,3196664739,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','52a336196a253a760a8e362032b50f8e'),(381,'2010-01-28 09:13:07','andreabragale@yahoo.com.ar','Andrea','Bragale',0,0,NULL,3358262820,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','835a71cdde4236ec0a40e2eedbea2ca1'),(382,'2010-01-28 09:36:40','eli-bustos@hotmail.com','maria','bustos',0,0,NULL,3363765526,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','89f857fa1f63746ad42b0e41ddd47fa7'),(383,'2010-01-28 20:21:06','yyg2510@hotmail.com','Yennifer','Geraldo',0,0,NULL,3361237662,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','a6df5efee7d1a044624fde89d30988e2'),(384,'2010-01-28 21:43:33','rubenjimenezallende@gmail.com','ruben','jimenez',0,0,NULL,3189128592,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','6cdb20b1a514252bd0ea1cdcc95baa32'),(385,'2010-01-28 21:45:07','johannamonroy2@gmail.com','Johanna','Monroy',0,0,NULL,3189128592,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','80cccf957d8e99e9370868d89305cdf1'),(386,'2010-01-29 01:18:51','alfredo.usoz@gmail.com','Alfredo','Usoz',0,0,NULL,1386194754,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.78 Safari/532.5','fa0dcda11535b593e4092c13d1fad733'),(387,'2010-01-29 14:16:35','sagui_capricornio@hotmail.com','angel','franco lastra',0,0,NULL,2498957829,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-MX; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 (.NET CLR 3.5.30729)','a159433696b70066d3650067b110b46f'),(388,'2010-01-29 20:38:44','susanamolnar@hotmail.com','susna','molnar',0,0,NULL,3196808011,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','1473c952edb1fc9f4f87e0258339614e'),(389,'2010-01-30 06:24:24','jugut24@hotmail.com','Judith','Gut',0,0,NULL,3121612954,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8d6309d3cec58f60c09dce91ebde6c3b'),(390,'2010-01-30 09:21:56','miscuadros2006@hotmail.com','Patricia','Garrido',0,0,NULL,3191284472,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','44bbd0b26bc1353672b336aa00cdcd27'),(391,'2010-01-30 14:34:42','jennydecalvo@yahoo.com','Yenny','Castro',0,0,NULL,3199891489,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; FunWebProducts; FBSMTWB; InfoPath.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b518ba6ffcb0f7cd06b902df50d63af6'),(392,'2010-01-30 14:39:12','mabelcibau@hotmail.com','mabel','cibau',0,0,NULL,3189667236,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; MEGAUPLOAD 2.0; MEGAUPLOAD 1.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','a1c4188a3864eebc367ee58f586443e6'),(393,'2010-01-30 18:24:29','carmen_furnari@hotmail.com','carmen','furnari',0,0,NULL,3386186549,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','1a1066245f87112ea794f5d9f3ba6ebb'),(394,'2010-01-30 19:35:44','osmansava@hotmail.com','osman','mejia',0,0,NULL,3192312449,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2)','70e813e14a1a207c56970149cb74a9f7'),(395,'2010-01-31 09:16:16','soniapallares1@hotmail.com','sonia','pallares lehericith',0,0,NULL,3194215943,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727; MS-RTC LM 8; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','2748d405fd868fe2f8630120901e3763'),(396,'2010-01-31 11:11:49','proc@live.com.ar','Patricia','Olivares',0,0,NULL,3188583582,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','18923509378c36db84a4bb28e003c985'),(397,'2010-01-31 15:09:53','institutfrau@hotmail.com','ROUS.M.','KRANEVITTER',0,0,NULL,3190989199,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FunWebProducts)','bd9ab258f04e22cc9b2082a888337d91'),(398,'2010-01-31 16:06:01','mdppilarma@hotmail.com','pilar','penedo',0,0,NULL,3200092986,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','5fdb1826f0d7467deb29dd36d79b310d'),(399,'2010-01-31 20:53:51','mblanco3000@yahoo.com.ar','Mauricio','Blanco',0,0,NULL,3200084207,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','037d601812d247551f1b520c77e10d28'),(400,'2010-02-01 00:08:02','karlagonsen@gmail.com','karla','gonsen',0,0,NULL,3179801014,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; Tablet PC 2.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; yie8)','7779474b3bc285910fef593cfb9cd72c'),(401,'2010-02-01 12:57:16','monica.dlgdd@hotmail.com','monica','dieck',0,0,NULL,3383506772,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; InfoPath.1)','0cdcc24384889887df80fc31b7125cb0'),(402,'2010-02-01 14:33:55','gustavo_grs@hotmail.com','gustavo','sosa',0,0,NULL,3199093173,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','49121f5eb07edc55a91be432e3e73a40'),(403,'2010-02-01 14:38:55','noemy_104@yahoo.com.ar','noemi','rozas',0,0,NULL,3360037378,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 2.0.50727)','0e5f7bff9bb4a1e84187bbc632e51eae'),(404,'2010-02-02 00:16:01','alvaroar360@hotmail.com','alvaro','roman',0,0,NULL,3187930694,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','15f108634f3390244904a4019fd0cb5b'),(405,'2010-02-02 07:46:52','jforcad3@hotmail.com','Judith','Forcada',0,0,NULL,1396538224,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 1.1.4322; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','3ae969aea8339faacff8f4297ad1b826'),(406,'2010-02-02 13:38:39','marysualer@yahoo.es','Asun','Albero',0,0,NULL,1361961452,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','42514728b4f02c2c416d5521f17f3642'),(407,'2010-02-02 15:17:01','nevadoingrid57@hotmail.com','ingrid','nevado',0,0,NULL,3190280237,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','ac6d62241dbb83b6a8af6f23fddd46a5'),(408,'2010-02-03 01:31:59','clausuarez_a@hotmail.com','Claudia','Suarez',0,0,NULL,3184030423,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.0.7) Gecko/2009021910 Firefox/3.0.7 GTB6 (.NET CLR 3.5.30729) FBSMTWB','2d82bf4b2331321b266cd9d47a3d5462'),(409,'2010-02-03 08:26:48','nohemiyuraima@hotmail.com','yuraima','vilera',0,0,NULL,3362638658,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','766a0dd41b34a2dc74e6646a1cad9d59'),(410,'2010-02-04 04:29:58','patuchi909@msn.com','concepcion','serrano',0,0,NULL,1343770124,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','9acf8909e08af08d8ee9e864f3a7c1f7'),(411,'2010-02-04 07:12:32','artscreencolor@hotmail.com','franklin','gonzalez',0,0,NULL,3195662122,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.15) Gecko/2009101601 Firefox/3.0.15','e030dfd09217195b2a341b0639c123ec'),(412,'2010-02-04 09:41:19','bibivillagra@hotmail.com','Bibiana','Villagra',0,0,NULL,3198964348,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Dealio Toolbar 3.1 Firefox/3.5.7 GTB6 (.NET CLR 3.5.30729)','e87625c87285eb3140f3664e6844dc4d'),(413,'2010-02-04 10:10:17','normaabrahan@hotmail.com','norma','Abrahan',0,0,NULL,3355672196,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.0.17) Gecko/2009122116 Firefox/3.0.17 (.NET CLR 3.5.30729)','a95bc0098a46b4b0106747e89d0ac488'),(414,'2010-02-04 20:59:56','galocristina@hotmail.com','Maria Cristina','Galo',0,0,NULL,3128755567,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','c2dacea0bed0688dfd30d1929f8e31b2'),(415,'2010-02-05 07:59:31','mvillanustre@bacs.com.ar','MERCEDES','VILLANUSTRE',0,0,NULL,3355794412,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.1)','41805719d9b815a554999171ad23dd83'),(416,'2010-02-05 09:26:50','silviahombre@hotmail.es','silvia','hombre',0,0,NULL,3187738900,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','e48fa1d595dce92f48125994c23dcd38'),(417,'2010-02-05 14:31:55','pumukkie@yahoo.es','Aurora','Rozas',0,0,NULL,1429583319,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','a2a8ea1eca01924dc189668c4c6fd410'),(418,'2010-02-06 19:58:35','publimania2002@GMAIL.COM','pako','loncon',0,0,NULL,3123209166,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','73119a42ab8d539f3bca0e5a194fa743'),(419,'2010-02-07 09:29:34','rcivicoariza@gmail.com','rosa','civico',0,0,NULL,1395176503,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','74b58c0a98a79df80c6735eb44d16b1d'),(420,'2010-02-07 13:50:24','margaritacovas@hotmail.com','margarita','covas',0,0,NULL,1361840997,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1)','32aae99e88c46bbffe902b1bf9409059'),(421,'2010-02-07 23:02:03','hilda1206@hotmail.com','hilda','mendez',0,0,NULL,3181173840,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.78 Safari/532.5','f5b2e02e32c5f00c474c465c93160cd4'),(422,'2010-02-08 11:19:25','criscalna@terra.es','MARIA C','CALVO',0,0,NULL,1493621076,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)','73c40cec064dff0c65c4074343ceb93c'),(423,'2010-02-08 13:37:19','psalandria@gmail.com','paola','salandria',0,0,NULL,3363040045,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','bbda77a5de6ec1f2140469de172c6467'),(424,'2010-02-08 20:38:07','fbasoria@prodigy.net.mx','FLOR','BASORIA',0,0,NULL,3186428657,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; InfoPath.1)','e4ed22bcf07987f82da3dffe2082b6be'),(425,'2010-02-09 10:29:03','camello010@hotmail.com','anibal','vargas',0,0,NULL,3180865773,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 GTB6','1f499f27910477db4cd052fd8af8c6a7'),(426,'2010-02-09 14:29:17','gloriaosos@yahoo.es','gloria','osorio',0,0,NULL,3203965507,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; InfoPath.2)','561b17341eaa0a5d4f7a1cd3bff53d22'),(427,'2010-02-09 15:14:23','bibi_buby@hotmail.com','BIBIANA','FARRELL',0,0,NULL,3196814257,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','82fc6f2b02e2a00716b3fbab642f5f6b'),(428,'2010-02-09 17:21:01','marcelamaruyama@hotmail.com.ar','marcela','maruyama',0,0,NULL,3129528287,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','1975c57c63bdadf2b682e20359993f90'),(429,'2010-02-09 21:09:50','edoaraya@gmail.com','Eduardo','Araya',0,0,NULL,3193917596,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.78 Safari/532.5','c1b94985631aa406772d82d30ed3723a'),(430,'2010-02-10 10:35:45','missy08_h@hotmail.com','massiel','hernandez',0,0,NULL,3387270595,'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.78 Safari/532.5','3177156cd7ddaace99d202d18bf6a28e'),(431,'2010-02-10 17:35:22','rebeca.torres@live.com','Rebeca','Torres',0,0,NULL,3360905651,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET CLR 1.1.4322)','0c87fdb42d4b8ee6e4601f4621725440'),(432,'2010-02-11 09:11:16','betpaniagua@hotmail.com','Beatriz','Paniagua',0,0,NULL,3359287748,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','e4cc9a5b2cd681692d5c8a4ebb9982bd'),(433,'2010-02-11 10:09:07','gfrubira@yahoo.com.ar','GIsela','Rubira',0,0,NULL,3202721995,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','29a36b545cd7e03426f3e206958235ac'),(434,'2010-02-11 12:27:36','amaliabarbero6@yahoo.es','maria','barbero gonzalez',0,0,NULL,1361519797,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','1ad657b91e714b9f5e8bdec876c54e4d'),(435,'2010-02-11 13:38:02','marcelomecano@gmail.com','marcelo','Apellido',0,0,NULL,3200353435,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','58f953f850437c4db6295f7b5fb8e06e'),(436,'2010-02-11 14:03:54','mariahistoriadoradelarte@hotmail.com','Maria','Apellido',0,0,NULL,1305720604,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','9b4d8e67d454b9a946d746968a658077'),(437,'2010-02-11 15:13:47','AZUL602@hotmail.com','ARELY','MUNGUIA',0,0,NULL,3182111596,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.1)','d4d0530fc5a97b93c023f44eb2382f1c'),(438,'2010-02-11 17:15:43','pitmorales@hotmail.com','ricarso','morales',0,0,NULL,3199742406,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.20) Gecko/20081217 Ant.com Toolbar 1.4 Firefox/2.0.0.20 GTB6 (.NET CLR 3.5.30729)','2e1acb01f954e3dc469e87cb2c88a43c'),(439,'2010-02-11 17:45:16','mapeba50@mail.com','MARISOL','PEREZ',0,0,NULL,3358729558,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; InfoPath.2; .NET CLR 3.0.30729)','b13d9d3546d9e01e975c577f3ff7a831'),(440,'2010-02-12 05:33:21','karinmossol@hotmail.com','KARIN','MOSSO',0,0,NULL,3359103789,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 1.0.3705)','c45399c11f79cf5eb978c952e516b597'),(441,'2010-02-12 11:21:43','mariae2104@yahoo.com.co','Mar','Taborda',0,0,NULL,3359296849,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','2cad0e73676f4672ed2e1dec0b1740c9'),(442,'2010-02-12 18:48:58','rubenmoni@hotmail.com','Ruben','Moni',0,0,NULL,3361239178,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1)','1172fad8f25aa2641c9ea0d1084774ea'),(443,'2010-02-13 19:19:04','zeleniza@gmail.com','sandra','baquero',0,0,NULL,3363178540,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1','419e5301d198f14236f0e5bfde6d0d89'),(444,'2010-02-13 21:45:15','mcarolinam@hotmail.com','Maria Carolina','Marrero',0,0,NULL,3387413741,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','1df0222770973cc66279687b460a842b'),(445,'2010-02-14 14:31:17','lorenaepereyra@hotmail.com','Lorena','Pereyra',0,0,NULL,3196798612,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESAR)','3e850f939f97b1b1895ed2da3a62a3cb'),(446,'2010-02-14 15:00:52','esmeraldapavcovich@hotmail.com','Esme','Pavcovich',0,0,NULL,3363164822,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.0.17) Gecko/2009122116 Firefox/3.0.17','1fa3723d6831b39e4a4903bdca2a42a4'),(447,'2010-02-14 15:08:04','maricel.robledo@speedy.com.ar','Maricel','Robledo',0,0,NULL,3388959215,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)','79508c20155a9f7781c98bbc8a8c3944'),(448,'2010-02-14 22:19:05','anaherreros@tigo.com.py','ana','herreros',0,0,NULL,3121613531,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; eSobiSubscriber 2.0.4.16; InfoPath.2)','861fb9ed824ce10cb87cab280aff5493'),(449,'2010-02-15 09:09:21','caro_9805@hotmail.com','carolina','galvez',0,0,NULL,3196774199,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','753e7942e62011118cf7c9ef79fbd973'),(450,'2010-02-16 13:45:32','ireneskotnica@hotmail.com','Nombre','Apellido',0,0,NULL,3199065133,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 1.0.3705; InfoPath.2)','2c05d26430a54e89871057a8c3cd6520'),(451,'2010-02-16 14:36:32','sesion7@hotmail.com','alvaro','grillo',0,0,NULL,3121090573,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','0974471f8e59560bfacb5af3aef504aa'),(452,'2010-02-16 18:24:03','banckyleyva@hotmail.com','blanca','leyva',0,0,NULL,3179627998,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; FunWebProducts; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 1.1.4322; .NET CLR 3.0.30618; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b0a74bed37cd67ec71d20b7f952cf4f4'),(453,'2010-02-16 19:08:19','lineadeoro@gmail.com','raquel','cano',0,0,NULL,3199213313,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','249b8711d0857e99366dfae810bfcbdb'),(454,'2010-02-16 21:08:40','alimore_27@hotmail.com','alicia','natalia',0,0,NULL,3196843488,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FBSMTWB; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','1c5663848e876c3b4c7f8bf3dc96e476'),(455,'2010-02-17 09:10:35','monicayustos@yajoo.es','monica','yustos',0,0,NULL,3189724842,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FunWebProducts; GTB6.3; .NET CLR 1.1.4322; uE v7; .NET CLR 2.0.50727; uE v7)','6611b348c37b5edea40383cb96e41bbf'),(456,'2010-02-17 13:42:11','samuelantolinez57@hotmail.com','samuel','antolinez',0,0,NULL,3356866162,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','c5d03565b4441eb5f28f5724401fb12d'),(457,'2010-02-17 16:40:31','gusta_49@yahoo.com','ricardo gustavo','espeja',0,0,NULL,3189689016,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1)','5ef50123b742f46c1d890d74f0cdb87f'),(458,'2010-02-17 20:53:38','veranodel52@hotmail.com','norma','Heredia',0,0,NULL,3191320068,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8399688f16e700afa511d2fbecff83ea'),(459,'2010-02-18 14:11:14','esperanzajc2@hotmail.com','esperanza','jimenez',0,0,NULL,1162838046,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; Tablet PC 2.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.2)','c4b574439fe18d624c7702a3517bb563'),(460,'2010-02-18 21:29:06','pernyclart@hotmail.com','leandro','garcia',0,0,NULL,3126919203,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','4e23400b21c3bb860fa600b865c6917f'),(461,'2010-02-19 11:04:46','agrazsanchez08@hotmail.com','Nancy','Moreno',0,0,NULL,3182842224,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)','b3b7431b6a79b011c2ba5bb6d5754abf'),(462,'2010-02-19 11:18:49','lula_day@hotmail.com','Dayana','Bertea',0,0,NULL,3189646657,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d175857d864c2d3e8b0ae3c281deaf9f'),(463,'2010-02-19 16:11:09','ivana_miravalls@hotmail.com','Ivana','Miravalls Rasc',0,0,NULL,1417577114,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 GTB6 (.NET CLR 3.5.30729)','29bee55d7123de4d2f73458fdbcef1c8'),(464,'2010-02-20 07:26:29','nayara124@hotmail.com','Maria','Morilla',0,0,NULL,1417528579,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)','8732e93353bedd18ca9aa118717abdd2'),(465,'2010-02-20 08:24:43','alinamanjarin@hotmail.com','Alina','Manjarin',0,0,NULL,3199025330,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','64590514ea7843284c6ccf82f076a42d'),(466,'2010-02-20 12:38:31','mergley@live.com.ar','mercedes','cantero',0,0,NULL,3196745009,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d5a7b05b69db412063e75fed52ef064b'),(467,'2010-02-20 18:48:36','carlosrolando2@hotmail.com','ROLANDO','RUIZ',0,0,NULL,3387338262,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FBSMTWB002; GTB0.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; WinuE v6; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; WinuE v6)','b8228498856aba3aae48ac87fa8b4123'),(468,'2010-02-20 23:13:19','rovi_574@hotmail.com','rosario','villase',0,0,NULL,3361659551,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','7ebed4782db66fc0ab765f23fd340a80'),(469,'2010-02-21 09:20:01','nancy_jovita07@hotmail.com','NANCY','GONZALEZ',0,0,NULL,3388828482,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','74c9d2f1027593bd59745ec7f3aa8a67'),(470,'2010-02-21 10:43:31','paolaoeste@gmail.com','paola','ramirez',0,0,NULL,3388733955,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2) Gecko/20100115 Firefox/3.6','24b56e599d800c0994abcc2410f759af'),(471,'2010-02-21 10:44:03','mgm2810@gmail.com','gloria','monsalve',0,0,NULL,3387545243,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; Alexa Toolbar; MEGAUPLOAD 2.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','1f407c048e80801c52c1dabc887dd39f'),(472,'2010-02-21 12:48:51','lidia_mayol@hotmail.com','lidia','mayol',0,0,NULL,3358766612,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','257d2c10151f20e718376761c47ad29d'),(473,'2010-02-21 14:38:29','sarca859@hotmail.com','johana','garcia',0,0,NULL,3204286868,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','3e054ec9eafb31173d07d30d98b9bd0c'),(474,'2010-02-21 18:38:53','marthaliahernandez@yahoo.es','martha lia','hernandez',0,0,NULL,3387457889,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; es-es) AppleWebKit/531.21.8 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10','84a75537634219993978b3f25bff08af'),(475,'2010-02-21 21:31:26','marcelarodil@hotmail.com','Marcela','Rodil',0,0,NULL,3203913085,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.4; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','36c309f652212c79e6faf9a753fdf54e'),(476,'2010-02-22 00:27:52','peraltamigue92@yahoo.com','miguel angel','peralta hernandez',0,0,NULL,1276000882,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','79c22a43c832e6f5bcbe567622a931ef'),(477,'2010-02-22 11:00:12','toleamaya@hotmail.com','elsa','amaya',0,0,NULL,3197645065,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.04506.30; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','4535cbd16aaff0575e46b2ef242695df'),(478,'2010-02-22 11:37:10','covadongabanos@hotmail.com','COVADONGA','BANOS',0,0,NULL,3180115429,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; es-es) AppleWebKit/525.28.3 (KHTML, like Gecko) Version/3.2.3 Safari/525.28.3','22e0de4333ea15e0844a0254d5de2839'),(479,'2010-02-22 18:36:23','teresavillegasruz@hotmail.com','teresa','villegas',0,0,NULL,3362797862,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c6f6a9f860d1e721917aeeadc2df76a2'),(480,'2010-02-23 07:12:48','ajcardone@intramed.net','alberto','cardone',0,0,NULL,3199027445,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2) Gecko/20100115 Firefox/3.6 (.NET CLR 3.5.30729)','eb39eb767847f5e46b7aea89896d249f'),(481,'2010-02-23 10:30:27','luzmaryderoca@terra.com.pe','Luz Marina','de Roca',0,0,NULL,3190554018,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','acf1f97ddf7a8253fd010710ef093c12'),(482,'2010-02-23 11:23:22','chini_mercurio@hotmail.com','cinthia','mercurio',0,0,NULL,3202105891,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)','a34f85f83cf7207ea728eddc488423ce'),(483,'2010-02-23 11:26:08','guaman_1975@hotmail.com','juan carlos','guaman samueza',0,0,NULL,3120760196,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20','de1915e9eff13f7c1bf6a1232aa05e27'),(484,'2010-02-23 11:27:59','teamst@techint.com','Stella','Morey',0,0,NULL,3355538708,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Tecsis - Teic; InfoPath.1; .NET CLR 1.1.4322)','1a9375c20aa7e2b9d69ef390962457a4'),(485,'2010-02-23 12:11:04','lourdes_abboud@hotmail.com','Edith','Comolli de Abboud',0,0,NULL,3196782214,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','93ee7d4be1679dcfc21cbc22d7b59807'),(486,'2010-02-23 16:20:04','hectormayahernandez11@hotmail.com','hector','maya',0,0,NULL,3145926388,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322)','eaa45e1143d255b11497ee61b8701d4d'),(487,'2010-02-23 18:35:19','solosil@gmail.com','Silvana','Milberg',0,0,NULL,3196838141,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','1a646f8838816f94e4e682d36766d93b'),(488,'2010-02-23 21:42:51','promaderas@hotmail.com','maricela','loaiza',0,0,NULL,1162864565,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13 (.NET CLR 3.5.30729)','3f991805dc12844d268eae40241df743'),(489,'2010-02-24 06:16:24','patrilau212@yahoo.com.ar','patricia','burgos',0,0,NULL,417862674,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; WinTSI 17.10.2009; FDM)','e8b031a8d160d23484c0729cb2356b7d'),(490,'2010-02-24 08:24:02','valeria_agustina67@hotmail.com','Valeria','Esquivel',0,0,NULL,3202794820,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20','ad7b89581cf70b6e780691c788fbf5b4'),(491,'2010-02-24 09:06:58','alejandra.lujan@intl.pepsico.com','Alejandra','Lujan',0,0,NULL,3359218282,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','3bf32f37361f33dcd6e5f9616c7a75b1'),(492,'2010-02-24 10:55:00','MANUELDEZAPEREZ@GMAIL.COM','MANUEL','DEZA',0,0,NULL,1501659594,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','7c48674df8c9840ef5776588fe5d550c'),(493,'2010-02-24 14:01:34','mcorigomez@hotmail.com','corina','gomez',0,0,NULL,3363147932,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1)','81aefa94b29354821ed964c9c503b3af'),(494,'2010-02-24 18:46:05','marybiglia@hotmail.com','Mary','Biglia',0,0,NULL,3202612862,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','58ecdf7b93c400fa472e99b3ba8961e3'),(495,'2010-02-24 18:46:19','correodegloria@hotmail.com','gloria','pe',0,0,NULL,3387502283,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.2; OfficeLiveConnector.1.4; OfficeLivePatch.1.3) chromeframe/5.0.317.0','f2c64c452299c3d8b80a5de47cdb21e8'),(496,'2010-02-25 10:57:37','la_beba_brava@hotmail.com','celiana','carmona',0,0,NULL,3200811093,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)','55ee8956e2a7d2ecebc12863edc890a4'),(497,'2010-02-25 12:56:30','ana.reyes1971@hotmail.com','ANA','REYES',0,0,NULL,3187102332,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; InfoPath.2)','071f9b4b84b6fbe28af66668b5a3d4cc'),(498,'2010-02-25 15:14:32','lilalva2003@yahoo.com.ar','liliana','novo',0,0,NULL,3121452020,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','bc4e9aecb5e9f869d99305c211bb3c3b'),(499,'2010-02-25 16:13:07','dianalotitto@live.com','Diana','Lotitto',0,0,NULL,3188760094,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','d5c118969f231c019e6ebd99817e39cd'),(500,'2010-02-25 19:15:23','vicpar22@hotmail.com','victor','parrilla rivas',0,0,NULL,3190494310,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Alexa Toolbar; MEGAUPLOAD 2.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','460aae5c007166d3f4b7a787cad5caff'),(501,'2010-02-26 06:22:52','yrojas2000@gmail.com','Yolanda','Rojas',0,0,NULL,3198054483,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8284481727e8aa184b7fb00f5106f2b1'),(502,'2010-02-26 07:33:15','edwins_777@hotmail.com','Edwin','Suesca',0,0,NULL,3193630620,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','748b76ced5ed877df0c7405666cf5a3d'),(503,'2010-02-26 12:31:08','claudiafayok@hotmail.com','Claudia','Fayok',0,0,NULL,3202556692,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','96eaa718bb07caa10f597ccb2afb89e8'),(504,'2010-02-26 16:59:26','mirtalauret@hotmail.com','mirta','lauret',0,0,NULL,3195685199,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 GTB6','59f2b4e0c0c900f85127838a81f3414a'),(505,'2010-02-26 17:53:10','ramirones@live.com.ar','ingrid','tosolini',0,0,NULL,3388860656,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8','e1e3c70b8f0fcab50e3118e0e68171c3'),(506,'2010-02-26 18:40:10','elias_rivera1976@yahoo.es','Ronald','Elias',0,0,NULL,3193312002,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','08ba57b75e956717706c4b798aca1e5b'),(507,'2010-02-26 20:36:24','rudifpc@hotmail.com','Rudy','Pineda',0,0,NULL,3190346841,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 1.1.4322)','e7437baa79c39cc348419a58606b407f'),(508,'2010-02-26 22:17:55','adriana.urbieta@gmail.com','Adriana','Urbieta',0,0,NULL,3381875622,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','93f4020faa461c86fb94ca568a507022'),(509,'2010-02-27 22:57:42','santuc1225@hotmail.com','Carlos Santiago','Robles Urrea',0,0,NULL,3145945181,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','7f053380460f6175cc4cf68df7ea3b44'),(510,'2010-02-28 06:39:19','sacsy29@hotmail.com','sacsy','rodriguez',0,0,NULL,3186097972,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','7cece24ed2b51db3664c2c0c1d5e6601'),(511,'2010-02-28 07:29:33','bananeitor1@hotmail.com','juan antonio','tovar',0,0,NULL,1361302042,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','b0fd65a4e1fa6254e3925e77df608487'),(512,'2010-02-28 14:28:03','mipisito2009@gmail.com','Nombre','Apellido',0,0,NULL,1372232512,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB0.0; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','529d03f98e709f5cd0b85f2e6b5ca384'),(513,'2010-02-28 17:12:44','lilizanone@hotmail.com','Liliana','Zanone',0,0,NULL,3202852015,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8','057a08ca118805758ac29c90902958ad'),(514,'2010-02-28 20:48:38','lilimarsi@hotmail.com','LILIANA','MARSICANO',0,0,NULL,3190848074,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 1.1.4322; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','7f01e59baa04f549c291026ecf7529c6'),(515,'2010-03-01 09:57:22','amary16@hotmail.com','Aura','Pinzon',0,0,NULL,3188533120,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','0a16b040330abd66ff9aedcaf344156c'),(516,'2010-03-01 20:59:44','cirinauta260@hotmail.com','ciri','agostini',0,0,NULL,3358297721,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','67dce190b30c9031e452bca03f588001'),(517,'2010-03-02 13:41:40','mstella552@hotmail.com','MARISTELLA','PINZON GOMEZ',0,0,NULL,3203402838,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; yie8)','03d3b28efc4effbc703cef60296ef24a'),(518,'2010-03-02 13:54:24','luzmlc@gmail.com','Luz Maria','Lozada',0,0,NULL,3125899629,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Alexa Toolbar; MEGAUPLOAD 2.0; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','633db5e8298c98b0139b5ff344ad369b'),(519,'2010-03-02 17:18:14','mariemarue@hotmail.com','maria','gomez',0,0,NULL,1417556580,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.4; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','d9e3358d4bce90dae50fbf9afa69f4cc'),(520,'2010-03-02 18:32:26','ritaich@hotmail.com','Rita','Ichcovich',0,0,NULL,3363164571,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','416661ac32cb73afe659b759d5bc097e'),(521,'2010-03-02 19:50:42','blanca_iauca@hotmail.com','blanca','jimenez',0,0,NULL,3182551421,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','48a5837c354a98cb4070e4a5213c4168'),(522,'2010-03-03 07:53:18','vaninaraceli@live.com','vanina','yulan',0,0,NULL,3200015396,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d96aa59b5443c0323c9016d8776d2187'),(523,'2010-03-03 08:41:38','norapiedra69@hotmail.com','Nora','Piedrahita',0,0,NULL,3357375106,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','148420c569a9fae325b4c37dda987635'),(524,'2010-03-03 14:03:36','aleja.luis@hotmail.com','Alejandra','Luis Clar',0,0,NULL,3199338652,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30)','0a81b4d189ff294c1e6916841f8b89c6'),(525,'2010-03-03 19:52:40','rarias@telefonicamoviles.com.pe','robins','arias',0,0,NULL,3359440444,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','44f1289c1af3cb060457b34ec626bff6'),(526,'2010-03-03 21:44:07','ton_y_10@hotmail.com','tony','cornejo yanque',0,0,NULL,3190432801,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESXL)','4d63cc6306758a2b19962b04364a4be4'),(527,'2010-03-03 23:46:09','galizgab77@hotmail.com','gabriel','galindo',0,0,NULL,3383053459,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 GTB6','c7d572aa81addf574346006bb622e4fc'),(528,'2010-03-04 01:38:24','earistu@hotmail.com','Esperanza','Aristu',0,0,NULL,3269518160,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 1.0.3705)','3f69638c20d8e6ba47100c379384e955'),(529,'2010-03-04 05:55:43','lizkami@hotmail.com','Elisabeth','Kamiensky',0,0,NULL,3202800619,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FBSMTWB; GTB6.4; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','19edb7fafc50f9e05b9315d26df9184a'),(530,'2010-03-04 13:24:35','Jime_2@hotmail.com','Jime','Jime',0,0,NULL,3200021000,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','34577f6c696e97b8e7ccdd72829fa205'),(531,'2010-03-04 16:56:41','egceballos@cgdweb.com.ar','Eugenio','Ceballos',0,0,NULL,3363126875,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','411cf1e637d1c0c4078d1f144767d6da'),(532,'2010-03-04 19:58:12','sitrak@live.cl','sandra','soto',0,0,NULL,3201324105,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 GTB6.4','8f73d779970fec14414357535a9cfa3a'),(533,'2010-03-04 23:38:56','mabygut-08@hotmail.com','nanci','gutierrez',0,0,NULL,3202420498,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2) Gecko/20100115 Firefox/3.6','08a39657806f0fc88af48a237972d23c'),(534,'2010-03-04 23:39:30','cardila01@hotmail.com','claudia','ardila',0,0,NULL,3203410035,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','f113b9e49b81a197e53f30a7b83fb276'),(535,'2010-03-05 11:22:02','camilaya43@hotmail.com','Maria Jose','Minetti',0,0,NULL,3363653056,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FBSMTWB; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','64e0fc2311f29d268a4f2df03fccc497'),(536,'2010-03-05 11:51:49','carolina.mata@cts-design.com','CAROLINA','MATA',0,0,NULL,2499220739,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 FBSMTWB','89cf37c273f3a4409db8bbfaa16a3e8a'),(537,'2010-03-05 15:05:14','lulyzink@yahoo.com.ar','Mercedes','Zinkgraf',0,0,NULL,3358556818,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322)','ff75d7cccc91088236796e13fe16562f'),(538,'2010-03-05 17:50:07','anarayav@gmail.com','ana','araya',0,0,NULL,3386866747,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','150ce65dda63f737f0a7c1c854614507'),(539,'2010-03-06 07:37:01','miguelvila_alaga@hotmail.com','Miguel','Vila',0,0,NULL,1478235691,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FunWebProducts; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; FDM; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; AIY_ONO)','786f8101e73637ff9363c5344b420b1c'),(540,'2010-03-06 11:15:14','lalis_f74@hotmail.com','eulalia','fierros cuevas',0,0,NULL,3181281115,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; VB_hottiestar; GTB6.3; FunWebProducts; .NET CLR 2.0.50727; InfoPath.2)','45a9b09c211da1331f0ae5a73b902d7b'),(541,'2010-03-06 20:53:55','laila159@hotmail.com','Liliana','Vazquez',0,0,NULL,3147699351,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Alexa Toolbar; MEGAUPLOAD 2.0; InfoPath.2; .NET CLR 2.0.50727)','720d90e5230abd9f2bb0ee01115d34f9'),(542,'2010-03-07 11:00:41','cecim@lycos.com','cecilia','jimenez',0,0,NULL,3361305234,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; .NET CLR 1.1.4322; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','160fec161ead1c34b86af2e942066509'),(543,'2010-03-07 14:59:35','moisesymaricarmen@hotmail.com','Moises','Berenguer',0,0,NULL,1493636453,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; msn OptimizedIE8;ESES)','7f30094efbefe6ba977e029418e9a48a'),(544,'2010-03-08 07:04:54','ximeartceramic@live.cl','ximena','ya',0,0,NULL,3359015079,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','49dd596442fafed17492967a03c96c2c'),(545,'2010-03-08 10:45:24','pedro_mr@ono.com','Pepi','Maireles',0,0,NULL,1417359638,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 1.1.4322)','e9dcb1a2724b2ae401162602667a288b'),(546,'2010-03-08 11:19:43','garciasantil@hotmail.com','edith','garcia',0,0,NULL,3383037558,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; FunWebProducts; SIMBAR={870CF7B5-F484-4957-88B4-3E8F8C1667CA}; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2)','55b261e630e75f4f8b0cf23a01886715'),(547,'2010-03-08 11:23:05','edithgariciasantil@hotmail.com','edith','garcia',0,0,NULL,3383037558,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; FunWebProducts; SIMBAR={870CF7B5-F484-4957-88B4-3E8F8C1667CA}; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2)','944a5c50b32a4b75e06cc6c89795db6c'),(548,'2010-03-08 17:22:49','andrealey73@gmail.com','ANDREA','VEGA',0,0,NULL,3202779549,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','740724daef09e32e313c7bc8918915ed'),(549,'2010-03-09 00:55:24','tallerestres@hotmail.com','erick','garfio',0,0,NULL,3381683093,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; InfoPath.2)','156d8475909a64d39b64b3aa7412d04d'),(550,'2010-03-09 13:19:32','mariapascountry@gmail.com','maria lujan','pastorini',0,0,NULL,3386592038,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3)','c3dd71619b0ce6d13e8e1bd309397c4a'),(551,'2010-03-09 16:18:33','nubiacamachogil@hotmail.com','Nubia','Camacho',0,0,NULL,3357748765,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','e5e34b3d07b9457849ca9ab869560f2d'),(552,'2010-03-09 19:40:46','carlos-cardenas2009@hotmail.com','carlos','cardenas',0,0,NULL,1081393836,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SIMBAR={A4D94905-8DD7-46BB-A04D-B68D375B71E1}; GTB6; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESCL)','35955279455e028980b75591e47aed42'),(553,'2010-03-09 20:44:22','pabegi2009@hotmail.com','patricia','betancourt',0,0,NULL,3120571659,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','a39c2eadccb87dfc27fde0591a98cad4'),(554,'2010-03-09 22:28:05','carlosab77@hotmail.com','carlos','alberto',0,0,NULL,3200150683,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4;  Embedded Web Browser from: http://bsalsa.com/; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d93b6c7a77b270757e4e528f43efb47b'),(555,'2010-03-10 12:51:24','clagise1@hotmail.com','claudia','cano',0,0,NULL,3193578500,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; InfoPath.2; AskTB5.6)','3af6c7d7c4fb273ae1f0010110b18bbd'),(556,'2010-03-10 13:57:25','silviacespon@argentina.com','Silvia Beatriz','Cesp',0,0,NULL,3360040518,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; InfoPath.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','1722c672092a98f6af48eec5f3b092b2'),(557,'2010-03-10 14:51:17','ciberinicio@hotmail.com','vanesa','bus',0,0,NULL,3190849986,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; FBSMTWB; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','28721a0989a64001a92e26f85dff0208'),(558,'2010-03-11 06:39:12','alsomypa@hotmail.com','ALY','MIRANDA',0,0,NULL,3123391191,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','b44a11746014d5934c25cf053f41e14b'),(559,'2010-03-11 09:14:49','ceciliamerlokees@gmail.com','Cecilia','Merlo',0,0,NULL,3388989047,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.21022; .NET CLR 3.5.30729; InfoPath.2; .NET CLR 3.0.30729)','79b62e80659d7ebad8a9fa71a1168cbb'),(560,'2010-03-11 20:37:34','jclezama@hotmail.com','juan carlos','lezama',0,0,NULL,3179673320,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','024772ec77960660bc48beae92057e6a'),(561,'2010-03-12 02:52:03','delvalledelolmo@msn.com','noelia','del olmo',0,0,NULL,1395206588,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','ccbdf60981cdf5aac551899c53ab5e57'),(562,'2010-03-13 12:35:17','trujillojose765@gmail.com','JOS','TRUJILLO',0,0,NULL,3185162724,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','93d153e36401ba5a9616fc0cea5b779c'),(563,'2010-03-14 10:09:39','cinsho@hotmail.com','Cintia','Marcos',0,0,NULL,3199452273,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','d2be5bdc1cf37527e4ae253fe07ec098'),(564,'2010-03-14 11:52:09','blancarosas27@gmail.com','blancarosa','silva zapata',0,0,NULL,3192330201,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB0.0; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','f57f7db24b221d0bd6702dd6d0ef3dfc'),(565,'2010-03-14 12:48:00','mikeycortes@hotmail.com','miguel angel','cortes',0,0,NULL,3179610851,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','7151311f25c2bbce6ea9ace4bde2eb90'),(566,'2010-03-14 13:23:41','DIAMANTECADIZ@GMAIL.COM','SERB','FLORENTINA',0,0,NULL,1305499457,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FunWebProducts; GTB6.4; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; Tablet PC 2.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','505a9af3fa4068b74bac1b5b6be97fb8'),(567,'2010-03-14 19:11:20','chuta_brakear@hotmail.com','ma. de jesus','ruelas',0,0,NULL,3146077347,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; uE v7)','1590c886e4b3e546cb60236bb662cda8'),(568,'2010-03-15 09:31:15','calbamonte@azcomex.com.ar','Carlos','Albamonte',0,0,NULL,3190848361,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','e44612fb337dbcf1e9be892aeb7d45b5'),(569,'2010-03-15 10:35:55','gabymas2008@hotmail.com','gabriela','Masetto',0,0,NULL,3358426884,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b30cc36b41a2e6e7d1342e2ea45dc6ff'),(570,'2010-03-15 10:49:29','rosario.paredes2009@hotmail.com','Rosario','Paredes',0,0,NULL,3126094724,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','0d964e75b1ac6219b4b50a1820ec32fe'),(571,'2010-03-16 09:51:36','marienl63@hotmail.com','marien','salamanca',0,0,NULL,3193214472,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8','6e65b1a2972d2593c3060391b8687a69'),(572,'2010-03-16 10:30:09','didimarlen_22@hotmail.com','diana','I',0,0,NULL,3193865189,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','91ba976388a365212e2bc2665cf490a4'),(573,'2010-03-16 13:44:34','marisamuguerza@gmail.com','marisa','muguerza',0,0,NULL,3129979302,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.2) Gecko/20100115 Firefox/3.6 (.NET CLR 3.5.30729)','e1f663ae267193f0984c2a8d84577108'),(574,'2010-03-16 15:37:40','silvia.maggio@hotmail.com','SILVIA','MAGGIO',0,0,NULL,3199028189,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','087ac96f06fa7ecdaf0ee23d14c01b3b'),(575,'2010-03-16 16:20:49','carmenclara2010-60@hotmail.com','Carmen Clara','Avila Reche',0,0,NULL,3124430787,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','6f5caa9679ad11befd65c12e6073fab5'),(576,'2010-03-16 22:43:14','ovilla53@hotmail.com','Olga','Villa',0,0,NULL,3202273319,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; msn OptimizedIE8;ESES)','6f47d19b4a97e60a94ff10e92b0540a8'),(577,'2010-03-16 23:20:49','maclahina@hotmail.com','claudia','hincapie',0,0,NULL,3189587168,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; Tablet PC 2.0; InfoPath.2)','0db619ff406e3c94f96337dc474610bb'),(578,'2010-03-17 06:36:14','mnhanatzki@yahoo.com.ar','Mirian','Hanatzki',0,0,NULL,3189652921,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2)','dac60fc361a0d3b3dcb665b4fbb858a9'),(579,'2010-03-17 08:59:53','priscilla.castro8@gmail.com','Priscilla','Castro',0,0,NULL,3362842001,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','4d664e542343d775e19f35b4f9b3f73d'),(580,'2010-03-17 20:14:25','letilalin@hotmail.com','andrea','lalin',0,0,NULL,3199096736,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.5) Gecko/2008120122 Firefox/3.0.5','9af2922eddd4fb50da0f4fad4c64a678'),(581,'2010-03-17 21:00:19','CLAUDIA@TAXON.COM.AR','claudia','taxo',0,0,NULL,3363544413,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','0e5792de3273159b319c4d49cabbd7e0'),(582,'2010-03-17 21:30:34','patycuevasg@hotmail.com','Patricia','Cuevas',0,0,NULL,2855470471,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c9d2d9911f2cbd2c4b24623f21c4aeae'),(583,'2010-03-18 00:33:49','anadolcemascolo@hotmail.com','ANA','DOLCEMASCOLO',0,0,NULL,3181659327,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; eSobiSubscriber 2.0.4.16; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','e0e2b996f388f3d0a8176deb3dab2495'),(584,'2010-03-18 08:53:34','yarlinsossa@hotmail.com','yarlin','sossa',0,0,NULL,3204350385,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; InfoPath.2)','5c220591386ddf6bee341ca035348e5e'),(585,'2010-03-18 13:14:25','verolgordillo@gmail.com','Veronica','L',0,0,NULL,3361308771,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','42a9981accadf506007957469d571977'),(586,'2010-03-18 16:16:02','martacolores@hotmail.com','marta','pe',0,0,NULL,3196716981,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','e4560b4f6594d444b1124b8d036c63d1'),(587,'2010-03-18 19:10:44','agus_settimi@hotmail.com','agustina','settimi',0,0,NULL,3199267317,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8','8f02d3c5d057730c88dab56464087a3e'),(588,'2010-03-18 19:17:57','alexa2075@hotmail.com','alexandra','marin',0,0,NULL,3387507038,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESCO)','848fb418c48f75ec893cc4dfe1395ac3'),(589,'2010-03-18 21:55:40','leticia.mattiauda@gmail.com','leticia','mattiauda',0,0,NULL,3121426040,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1)','29505514cc6b9a168abac73ef020e136'),(590,'2010-03-19 00:28:05','eladiohr@gmail.com','luis','hernandez',0,0,NULL,1090896822,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; Dealio Toolbar 3.4; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','4b0563747e7c244412fde87716a5c5ec'),(591,'2010-03-19 08:10:46','lira626@cantv.net','aubel','loro',0,0,NULL,3201000262,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','837c283cc17a39e063c5160f6e152df2'),(592,'2010-03-19 11:16:03','faliaguilar@live.com','rafael','salido agular',0,0,NULL,1396103322,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','bc72f6f3088f0979760d98a2f3b2fc39'),(593,'2010-03-19 13:29:35','bolivier@menpet.gob.ve','Betty','Olivier',0,0,NULL,3355552649,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1 (.NET CLR 3.5.30729)','9a0989309f0f0fcead2e8cb3ec1999eb'),(594,'2010-03-19 14:15:06','cert7@hotmail.com','chritian','rubio',0,0,NULL,3180760935,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; InfoPath.2)','7e0a2b8a06d168b495f3cd06d58cc7e2'),(595,'2010-03-19 16:04:28','mayra.resto@gmail.com','MAYRA','RESTO',0,0,NULL,2916320512,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6 (.NET CLR 3.5.30729)','9f6bc1e6a3ddc37f534b27e0da95a344'),(596,'2010-03-20 14:46:28','mrd@telecentro.com.ar','Marcelo','Rizzo',0,0,NULL,3121763961,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','acba6916e9ac0cb8c4c96d06325bdbb2'),(597,'2010-03-20 18:34:26','liliana.vasquez2009@hotmail.com','lili','vasquez',0,0,NULL,3202416740,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; uE v7)','873f9595a97ff84d5b0018e75ec072e3'),(598,'2010-03-20 22:53:57','ingridcordoba7@hotmail.com','ingrid','cordoba',0,0,NULL,3192497395,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','55419d136128af0cffca798ff77cee0b'),(599,'2010-03-21 11:14:11','vmartinez@roemmers.com.ar','Veronica','Martinez',0,0,NULL,3388644514,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20 (.NET CLR 3.5.30729)','2a3f73fabcfc4bb5aa14998e0b164e4e'),(600,'2010-03-21 16:07:28','lmicheloud@altoparana.com','Liliana','Micheloud',0,0,NULL,3199059202,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; AskTB5.4)','6b19364b13009f143b490d62fd3c128b'),(601,'2010-03-21 16:42:44','l_g_quinteros@hotmail.com','lorena','quinteros',0,0,NULL,3362961798,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30729)','4de33d4cba8356dc204758214c5df88d'),(602,'2010-03-21 21:12:56','martayeannes@hotmail.com','Marta','Yeannes',0,0,NULL,3129510931,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','527b65b179c6228945a630cc4466825c'),(603,'2010-03-22 04:12:24','ocil@adinet.com.uy','olga','ilento',0,0,NULL,3196519387,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; eSobiSubscriber 2.0.4.16; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; AskTB5.6)','01e60de52d1bfc53756a7834079b8ebb'),(604,'2010-03-22 11:33:41','fjm1441@hotmail.com','jose maria','ferreyra',0,0,NULL,3196589797,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1; msn OptimizedIE8;ESAR)','511cf86ede0218e34d18cc3f4ac3b1e2'),(605,'2010-03-22 11:42:04','mariloredarra6946@gmail.com','Lorena','darraidou',0,0,NULL,3127502770,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; User-agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; http://bsalsa.com) ; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8d7c2bc22979b761302d4aecc3ca8e76'),(606,'2010-03-22 15:37:07','carmen-ingrid@hotmail.com','Carmen','Schythe',0,0,NULL,3121192833,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8a42ac4929a878b8dcb6d4122b316ac5'),(607,'2010-03-22 17:23:32','pato@comininet.com.ar','Patricia','Garcia',0,0,NULL,3358656099,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 1.1.4322; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)','1bd3182e6dfe8db2df9e14537dc76e53'),(608,'2010-03-22 18:11:28','laimelina@hotmail.com','Laime','lina',0,0,NULL,3248024180,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2) Gecko/20100115 Firefox/3.6 (.NET CLR 3.5.30729)','8ca0950534da3f4bbeb2cda8db973626'),(609,'2010-03-22 22:02:16','lavate_elcool@hotmail.com','rodrigo','vargas',0,0,NULL,3181709291,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)','52c37a5957423f5cee7408740ae915b6'),(610,'2010-03-22 23:44:46','mireyacrea@hotmail.com','mireya','canelo',0,0,NULL,3361405443,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 (.NET CLR 3.5.30729)','564612f71c6505b90709626fab53434e'),(611,'2010-03-23 21:13:59','marietanorma@hotmail.com','MARIETA','VILLARREAL',0,0,NULL,3383594290,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','a584d6781c5c458172e9f72b04c41130'),(612,'2010-03-24 00:00:23','alicita_armas@hotmail.com','ALICIA','ARMAS LOPEZ',0,0,NULL,3387309259,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)','7e62f3c1f161ec61b59d099984b54cef'),(613,'2010-03-24 00:21:33','maricelagavito@hotmail.com','priscila','ramirez',0,0,NULL,3179815688,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20 (.NET CLR 3.5.30729)','4b385798530df94d886ecfc62192c966'),(614,'2010-03-24 06:54:57','luismedina2250@yahoo.com','luis','medina',0,0,NULL,3387217880,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.2) Gecko/20100115 Firefox/3.6','03ead0adb28671d7f26ef519970b0847'),(615,'2010-03-24 10:45:53','anav36@hotmail.com','ana','velazquez',0,0,NULL,1477667818,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; .NET CLR 1.1.4322)','80ae8a9f7f6c96bea0783fda7ae7a94b'),(616,'2010-03-24 14:38:21','nikiyenlo@hotmail.com','lorena','perez',0,0,NULL,3192107250,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1036 Safari/532.5','4f8e71ff393aaed5d2517b456bc3b95e'),(617,'2010-03-24 18:43:16','zadquiel_cony@hotmail.com','consuelo','hinestroza',0,0,NULL,3362922839,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','7067c54af8e1114671147e943df12fad'),(618,'2010-03-24 23:50:56','elvi_55@hotmail.com','Elvis','Gonzalez',0,0,NULL,3186504195,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; FunWebProducts; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.21022; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','5cfcef6e2feb14968a4de3dc75c041e6'),(619,'2010-03-25 10:45:58','analiamili@hotmail.com','Analia','Apellido',0,0,NULL,3358198394,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FunWebProducts; GTB6.4)','1aa9975d86d443ec37b32ffd73315705'),(620,'2010-03-25 22:20:08','ruthmicha@yahoo.com.mx','ruth','Apellido',0,0,NULL,3180072305,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; es-es) AppleWebKit/531.21.8 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10','7ceacad3d946290cd9871ffe4067fc59'),(621,'2010-03-26 05:58:50','mariodallenogare@yahoo.com','mario','dalle nogare',0,0,NULL,3360846068,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GenealogyBrowser 3.6.1 (Build 056); .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727; AskTB5.5)','37dbfafe454e828c2a95f7f9210addc2'),(622,'2010-03-26 15:37:25','carolin_gaso@hotmail.com','carolina','oliva',0,0,NULL,3382191186,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 1.1.4322)','a331ec305a8cc0fa893159bf901f66c3'),(623,'2010-03-26 17:06:46','jennyve1@hotmail.com','jenny','velasco',0,0,NULL,3190429512,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 2.0.50727; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','29643c37146ca2ef957a5f4e00644bb4'),(624,'2010-03-26 17:07:25','ruthurrea20@hotmail.com','ruth','urrea',0,0,NULL,3387436431,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','14b7cb1cc30e37946e3cb028a90607c7'),(625,'2010-03-26 17:34:37','mergley@ive.com.ar','mercedes','cantero',0,0,NULL,3196743598,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','de91efb023c06499172e7e735c290729'),(626,'2010-03-26 18:17:11','guwgzp@uqxhnv.com','wbictudzfx','wbictudzfx',0,0,NULL,3400215047,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','a5d10b343fc36b628b16a3bc8da850e6'),(627,'2010-03-26 20:31:28','cecicamano@hotmail.com','cecilia','cama',0,0,NULL,3202357162,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; (R1 1.5); .NET CLR 1.1.4322; .NET CLR 2.0.50727; MSN Optimized;AR; MSN Optimized;AR)','de527799a5101d9df5bc159dead0df42'),(628,'2010-03-26 21:45:20','leticiacioffi@hotmail.com','leticia','cioffi',0,0,NULL,3358313673,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','7944773059ead3a6395a94db4d108637'),(629,'2010-03-27 11:33:08','pitugomez2@hotmail.com','claudia','gomez',0,0,NULL,3388652973,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','006cadf9a256ce06c43041e1c88ec9e0'),(630,'2010-03-27 13:05:23','luciana.melino@gmail.com','Luciana','Melino',0,0,NULL,3121759227,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.21022; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','6e05c0731a1fd304f42449e5118eb7a7'),(631,'2010-03-27 13:53:05','mbluchetti@yahoo.com.ar','M','Luchetti',0,0,NULL,3203774589,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322)','827ffa6291edc99dbd98f2051035caad'),(632,'2010-03-27 17:15:44','lurb_7@hotmail.com','bego','vilaboa',0,0,NULL,1478126621,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/4.0; GTB6.3; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; InfoPath.1; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30618)','49b4425f942737cb17c401671de8b93a'),(633,'2010-03-27 19:27:04','audry.05@hotmail.com','audry','henriquez',0,0,NULL,3190884620,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2','9df8a912d2983509d1265f9523365c59'),(634,'2010-03-27 19:27:14','adrianleguizamon737@hotmail.com','Adrian','Leguizamon',0,0,NULL,3199707627,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; WinuE v6; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; WinuE v6)','5fbe509c1cdf97a5338ef2be675ea10d'),(635,'2010-03-27 22:34:16','paola.ruano@yahoo.com.ar','Paola','Ruano',0,0,NULL,3196828469,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','224e72c5d910e7aa65016730bc176fd1'),(636,'2010-03-28 13:24:10','lizethjac16@hotmail.com','lizeth J.','Davalos B.',0,0,NULL,3359166876,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-MX; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2','da9ab8f194e868fef7a1fa1a253e0c45'),(637,'2010-03-28 18:53:44','amutiz@hotmail.com','alvaro','mutiz',0,0,NULL,3126090439,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2','7dfde2ba0f5fb37550280c6ef0615696'),(638,'2010-03-29 04:40:07','leydis31@yahoo.com','Leydis','Zamora Morales',0,0,NULL,2472579136,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 (.NET CLR 3.5.30729)','b65cdc3d573ca4ad7284ddd88e4ae739'),(639,'2010-03-29 10:26:04','juana_dinella@yahoo.com.ar','Juana','Di Nella',0,0,NULL,3388729736,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','a2a7adaa53892873cb26c18d9f8dd4d7'),(640,'2010-03-29 12:04:09','mariclaudia_16@hotmail.com','Mariclaudia','Diaz  vasquez',0,0,NULL,3190312910,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 1.1.4322; InfoPath.2)','99a08ebacf03dd12184b83bc65584cdd'),(641,'2010-03-30 14:03:00','bayardo21@yahoo.es','jose','sanchez',0,0,NULL,3384775387,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 2.0.50727)','07d2d8ac26f249283c4ef06cccad158e'),(642,'2010-03-30 17:35:38','kweck6@hotmail.com','ZULLY','KWECK',0,0,NULL,3190817749,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','c51a5d9c15ac23385e79952257970ebb'),(643,'2010-03-31 07:32:01','CAROCARO2001@LIVE.COM.AR','CARO','PERALTA',0,0,NULL,3191337185,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','e157b189970ddb7f82f4f4f3596e67db'),(644,'2010-03-31 12:20:57','g.oses@yahoo.com.ar','Gladys','Lopez',0,0,NULL,3198985976,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; uE v7; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727; uE v7)','d06c600a4c24845fdd38a46551a46372'),(645,'2010-03-31 15:06:10','bmarotte@deloitte.com','Baltazar','Marotte',0,0,NULL,3187818169,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; MS-RTC LM 8; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','613a29b2fefea872fa9ba83d7e89de50'),(646,'2010-04-01 05:39:36','gringa_cba_capital@hotmail.com','Adriana','Montero',0,0,NULL,3200060073,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','141b086646ffd1bda4a59c6c1980ede7'),(647,'2010-04-01 06:57:25','miroj06@hotmail.com','miriam','ochoa',0,0,NULL,1477596748,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','90f176cd5400dedda301d007cdae5f02'),(648,'2010-04-01 10:44:32','albalu00@hotmail.com','alba','lopez',0,0,NULL,3363080268,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','34f93905006c70c1a4cb054ff2fbae62'),(649,'2010-04-01 15:44:12','pablosetti@hotmail.com','Pablo','Setti',0,0,NULL,417920200,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 (.NET CLR 3.5.30729)','4670fea191ba5bd3e7c81c4f3ac91b9b'),(650,'2010-04-01 18:29:50','gloesparza@live.co.ar','Gloria','Esparza',0,0,NULL,3192267233,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-AR; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 (.NET CLR 3.5.30729)','cd95629d9425207522633014f11c9e83'),(651,'2010-04-02 08:10:42','jlboaglio@itc.com.ar','Valeria','Riveri',0,0,NULL,3188439909,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; AskTB5.6)','533a4067e430f81be26ca6f274b53f97'),(652,'2010-04-02 11:24:46','irenegioco@yahoo.com.ar','Nombre','Apellido',0,0,NULL,3202413561,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','fc6b62f2dfab10dd18dcd8f29cd7fb53'),(653,'2010-04-02 14:48:36','patriziavga@hotmail.com','patricia','vega',0,0,NULL,3359402606,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30)','c9a04dad3a62908d67988b8c5cf9d4e9'),(654,'2010-04-02 17:43:14','latorremar@yahoo.com.ar','Marta','Apellido',0,0,NULL,3203911005,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.2)','0965fd30ac995edadc8aff1de9d76a6b'),(655,'2010-04-02 20:48:09','fabiana_fba@hotmail.com','Fabiana','Allende',0,0,NULL,3199315969,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','fc1640d18e9db313cb42d3ebbf6cf27f'),(656,'2010-04-03 06:31:10','jorge.zanazzi@metmitre.com.ar','Zanazzi','Jorge',0,0,NULL,3121461184,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-AR; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','b6981778e597ed59da8cff6b6232ddb6'),(657,'2010-04-03 06:33:17','graciela.caffarel@metmitre.com.ar','Graciela','Caffarel',0,0,NULL,3121461184,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-AR; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','88eeefaac66fac57b90c3d9fe64d13a2'),(658,'2010-04-03 10:15:35','drafitis@hotmail.com','daniel','pe',0,0,NULL,3387213644,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','d97d8e4ca25d97696546dde506c2e3ab'),(659,'2010-04-03 14:00:07','LUNA_AZU1@HOTMAIL.COM','luna','VERGEL',0,0,NULL,3182662197,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1045 Safari/532.5','868f7c46f62cab71e8cd9ab2d1368bd5'),(660,'2010-04-03 22:37:46','guyrosad@gmail.com','M.L.','Rosado',0,0,NULL,1601778718,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1045 Safari/532.5','0e3684f58901ea80c2a158912be5cd27'),(661,'2010-04-04 00:43:29','ale_grale@yahoo.com.ar','Ale','Grale',0,0,NULL,3388975857,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','77846b3e7b1401e079714c195793c3b5'),(662,'2010-04-04 09:13:21','espe22bv@hotmail.com','ESPERANZA','BEDOYA',0,0,NULL,3203419243,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SIMBAR={97F0C4B1-EF5D-489E-BC00-07321C856411}; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','e98df8fcce516346ac9108385b17358c'),(663,'2010-04-04 13:27:52','jlrocas@ono.com','Jose Luis','Diarte',0,0,NULL,1388716919,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1045 Safari/532.5','adc3566d440bee4cd5cf4434d48273bc'),(664,'2010-04-04 16:38:01','rebediz640@hotmail.com','rebeca','herrera diaz',0,0,NULL,3192171958,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.4; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','02c0b00b5e0dd6fd4b14b25db2ee0655'),(665,'2010-04-04 18:57:17','euge_yenn09@hotmail.com','eugenia','quiroga',0,0,NULL,3196667325,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','9887f076fd1f18d88625b3fcf7e730ae'),(666,'2010-04-04 19:26:43','pparadagon@gmail.com','Paula','Parada',0,0,NULL,3362848147,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','cabb9d741846b9b5b21dd2db53980425'),(667,'2010-04-04 23:11:14','peraltafabiana@hotmail.com','FABIANA','PERALTA',0,0,NULL,3200213072,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1045 Safari/532.5','7729403e8b9ee5dcfa407b4d499d36c3'),(668,'2010-04-05 07:32:07','stellamorris@hotmail.es','giomar','Herdee',0,0,NULL,3385863965,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','82408735d9853d1ca39846d7e4a49fb2'),(669,'2010-04-05 12:50:00','jmdrodriguez@yahoo.com','jul','RODRIGUEZ',0,0,NULL,3508193915,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322)','4cd5ad96534e36278653184e9a797f76'),(670,'2010-04-05 23:45:38','liligares@hotmail.com','Liliana','Garc',0,0,NULL,3198489218,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 2.0.50727)','c13f62016578d4093e1c46e77e101189'),(671,'2010-04-06 12:47:16','gonzalezcris1@hotmail.com','CRISTINA','GONZALEZ',0,0,NULL,3128702358,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6','9d67b5c79cb7556ef76e2ea83ab74c21'),(672,'2010-04-07 11:25:06','mgodoymandiola@yahoo.com','maria angelica','godoy mandiola',0,0,NULL,3386277871,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.4; InfoPath.1)','b1568aa9ea7a2b03f786df009bd3eee1'),(673,'2010-04-07 13:23:23','chesu77@hotmail.com','maria','lopez',0,0,NULL,1361526837,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','18f1180e5a8a8427b6565a822e1fd225'),(674,'2010-04-07 13:59:34','chacha-60@hotmail.com','guillermina','cantu',0,0,NULL,3180999602,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB0.0; InfoPath.2; .NET CLR 1.1.4322)','255028ae5bc2a415c7b6a2fc02a8a999'),(675,'2010-04-07 15:45:49','scgobe@hotmail.com','silvia','gonzalez',0,0,NULL,3192193770,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','50af682eb8b60d246dd4f84ee3668a6d'),(676,'2010-04-08 08:34:55','lola.real@hotmail.com','Lola','Real',0,0,NULL,1394754822,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; InfoPath.1; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30729)','fc7b3d9db24a231a1e9bcf6384b9d02e'),(677,'2010-04-08 08:54:32','ruiz.n@hotmail.com','noemi','ruiz',0,0,NULL,3199243427,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727)','c1d4ba9c496600580865d134e1d73aa0'),(678,'2010-04-08 16:37:31','carmen_romeo_@hotmail.com','carmen','santana perdomo',0,0,NULL,1396406805,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','f238a63650a7227d019f43d872185304'),(679,'2010-04-08 20:56:20','anamariaborgo@hotmail.com','Ana Maria','Borg',0,0,NULL,2855515102,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 (.NET CLR 3.5.30729)','f74dbf80d5901537409485660bda6969'),(680,'2010-04-08 23:02:49','yolvera@ymail.com','yolanda','olvera',0,0,NULL,3146037137,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB0.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3)','88b9eebfd32dcd6045c9bc505f50a70b'),(681,'2010-04-09 15:40:44','ceciliaesteban2000@yahoo.com.ar','cecilia','esteban',0,0,NULL,3507330320,'Mozilla/5.0 (Windows; U; Windows NT 5.0; es-ES; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8','b71c3b23e6b4b33c2e57240c9aa1482c'),(682,'2010-04-09 19:42:21','coco_leos67@hotmail.com.mx','maria','leos',0,0,NULL,3184630160,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; .NET CLR 1.1.4322; InfoPath.2; AskTB5.6)','d34a237a0aa145021c960524db159280'),(683,'2010-04-09 21:10:35','aliciamunafo@hotmail.com','alicia','munafo',0,0,NULL,3202092682,'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)','4b9faabb38de9b6d291c687feae6fed6'),(684,'2010-04-10 01:02:10','noly_vcp@hotmail.com','Noelia','Massera',0,0,NULL,3386239823,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SIMBAR={B22356CB-899D-4A6A-AAD9-11806A320BA9}; GTB6.3; .NET CLR 1.1.4322; uE v7; InfoPath.2; .NET CLR 2.0.50727; uE v7)','fd59fc41d9b15acd96e8473dbdbdbd19'),(685,'2010-04-10 16:50:22','noragra50@hotmail.com','Nora','arnero',0,0,NULL,3191317186,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','845502de983c6b3dd57dd48448312ad7'),(686,'2010-04-10 18:04:57','cecialberti@gmail.com','CECI','OLIVERO',0,0,NULL,3358289384,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19','236c7fba9f6d1845a8b94db59901ab3b'),(687,'2010-04-10 18:36:28','yuridial@hotmail.com','Yuridia','Limon',0,0,NULL,3187156534,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2)','2d726d439c211e3949733aaf8c8d9017'),(688,'2010-04-10 19:44:17','valeharistoy@yahoo.com.ar','valeria','haristoy',0,0,NULL,3124268762,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB0.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8ef7f50bd9ce7b71ed0e45ee5f88d908'),(689,'2010-04-10 20:09:21','natalycalo@gmail.com','Nataly','londo',0,0,NULL,3198116814,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','99c4a83d78d7fb0f231436e191c9e7cc'),(690,'2010-04-10 20:59:24','patriciaibarra58@hotmail.com','patricia','ibarra',0,0,NULL,3200311739,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','7bf3eef8be56967392f9ce23e6cc0cc4'),(691,'2010-04-11 10:26:38','vemaria45@yahoo.com','Maria','Vega',0,0,NULL,419045445,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.30618; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 1.1.4322; AskTB5.6)','32d27b9013b499672336ab794b3700bd'),(692,'2010-04-11 12:04:54','chuenupil@yahoo.com','Carlos','Huenupil',0,0,NULL,3194258782,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','715f2e86f911bf49aebbd01252cf2d88'),(693,'2010-04-11 13:31:07','alison-17-91-@hotmail.com','alicia','garcia',0,0,NULL,3358768306,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 SV1','22d4f96a4c7124fa801acd4330c7a77e'),(694,'2010-04-11 18:20:12','till_234@hotmail.com','Armando','flores',0,0,NULL,3183279773,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; Tablet PC 2.0)','abfbcad8d8e0a96ac10a2ebe3dc21a33'),(695,'2010-04-11 20:47:41','mari_bedo@hotmail.com','marina','bedogni',0,0,NULL,3200005026,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 (.NET CLR 3.5.30729)','b91fd80476179fd9ed287e0b82b238a0'),(696,'2010-04-11 23:22:45','ingridcalva_2007@hotmail.com','ingrid','calva',0,0,NULL,3183210493,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','f5f0a4715c10447027cca59a91892b6d'),(697,'2010-04-12 10:54:41','mariacristinaborrero@hotmail.com','maria cristina','borrero',0,0,NULL,3194050027,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.18) Gecko/2010020220 Firefox/3.0.18','2385d3cdc69bce3cf027b5c0fc11d809'),(698,'2010-04-12 13:35:48','paolabrero@hotmail.com','paola','Brero',0,0,NULL,1152117153,'BlackBerry9000/4.6.0.266 Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/214','1c9259b36533217ed93ffcfe649d95ec'),(699,'2010-04-12 16:42:55','gabrielamilatich@hotmail.com','gabriela','milatich',0,0,NULL,3188427091,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB0.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1; AskTB5.6)','b315b198c1ec2717a3497c1119c543ef'),(700,'2010-04-12 19:37:11','rrvas.ri@gmail.com','Isaac','Rivas',0,0,NULL,3180248452,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 1.1.4322; MS-RTC LM 8; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b40acee18b53e9c3f93db391ba22324e'),(701,'2010-04-12 23:38:19','losbrindy@hotmail.com','diego','alesandria',0,0,NULL,3196842419,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.3; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322)','5d5e8ebc2f83e62cf558ff284db6069b'),(702,'2010-04-13 12:36:55','mcano0406@hotmail.com','KARMEN','Cano',0,0,NULL,3387446359,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.4; OfficeLivePatch.1.3)','7a4cfa330eb5b20b67e96ea8d6ea68c3'),(703,'2010-04-13 15:27:02','estela__m@hotmail.com','estela','maurino',0,0,NULL,3200297428,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Alexa Toolbar; MEGAUPLOAD 2.0; MEGAUPLOAD 1.0)','bcd68b997a97a913c424981649f0afb6'),(704,'2010-04-13 16:39:05','mafer_fran@yahoo.com.ar','Maria Fernanda','Franco',0,0,NULL,3386204845,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','f9ec99c7f2b6283547ad7268e7e75e05'),(705,'2010-04-14 07:17:55','dmart_27@hotmail.com','diany','martinez',0,0,NULL,3189336249,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.2; Tablet PC 2.0; OfficeLiveConnector.1.4; OfficeLivePatch.1.3)','b01a1a4401c2b9031d336f37394f5f51'),(706,'2010-04-14 07:27:39','myriamcortes@hotmail.com','miriam','cortes',0,0,NULL,3122407011,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.30618; .NET CLR 3.5.30729)','7d94fe60dd8a913c9d410ecf43bd81c6'),(707,'2010-04-14 08:25:04','bettymuroya@hotmail.com','Betty','Muroya',0,0,NULL,3387975245,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','cf64d12d148a5fbe3edb481ab8993e8c'),(708,'2010-04-14 09:21:09','carmengarcia@integra.com.sv','Carmen','Garcia',0,0,NULL,1120511657,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)','420aa1be40d8562e38ad2efa22e13455'),(709,'2010-04-14 12:33:44','laluzma14@hotmail.com','Luz Marina','Tabares Torres',0,0,NULL,3387491705,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; msn OptimizedIE8;ESCO)','cb3c077ea88e5a5defa84a07d996ef37'),(710,'2010-04-14 12:45:24','anamariapenston@hotmail.com','ANA MARIA','PENSTON',0,0,NULL,1155072605,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','e80d1e6766f65312b5c7b6bb74623ed0'),(711,'2010-04-14 13:45:28','woman11@live.com.mx','rosy','martinez',0,0,NULL,3182063651,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','45891802bb2284755a077a44d4cc9741'),(712,'2010-04-14 15:38:59','elcaballero_001@hotmail.com','juan','posada',0,0,NULL,3191999658,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','f8c902ec55c712b7a714d8790adeecd0'),(713,'2010-04-14 17:29:09','costanzaelias@yahoo.com.ar','costanza','Apellido',0,0,NULL,3189761998,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','c5997d127e2b7e519f32533b285a777f'),(714,'2010-04-14 19:30:56','rivasalex1983@hotmail.com','alex','rivas',0,0,NULL,3463157345,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9) Gecko/2008052906 Firefox/3.0 (.NET CLR 3.5.30729)','0c28b5dd8e306bb3e8544413eb957903'),(715,'2010-04-14 20:37:22','chiflib_r@hotmail.com','ifi','botero',0,0,NULL,3204355115,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','0457a31621ea5e244f69f460e3aec3c2'),(716,'2010-04-14 22:41:21','alfredo.984@yahoo.es','Wilfer','Corzo',0,0,NULL,3358695986,'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1045 Safari/532.5','cec7f0b1466c7c8cdc267360315b017a'),(717,'2010-04-15 13:17:44','dilmo42@hotmail.com','delmiro','alessandria',0,0,NULL,2855526428,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','ea0b85af5593d5fd902e3b171fc062b6'),(718,'2010-04-15 15:30:11','pampaele@gmail.com','elena','ramos',0,0,NULL,3190898633,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 GTB6','6c5ac08831fc22c7a172e1b689c595f1'),(719,'2010-04-15 21:45:24','giovanniicc@hotmail.com','giovanniicc','andratti',0,0,NULL,3179512171,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; VB_gameraving; GTB6.4; hotvideobar_3_2_7937092231367585_126_98; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','37956c350fde107aada3709f4cc0a043'),(720,'2010-04-16 14:34:47','bami362@hotamil.com','Bertha Alicia','Montoya Ibarra',0,0,NULL,2498395405,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','01be014d60998d85a01f17b31d07abd7'),(721,'2010-04-16 17:44:11','laura.annoni@hotmail.com','laura','annoni',0,0,NULL,3200029080,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; InfoPath.2)','5cb0c02d0695ffc645e2cd70c4301a4e'),(722,'2010-04-16 19:39:43','oegepner@arnet.com.ar','oscar','gepner',0,0,NULL,3196673799,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 2.0.50727)','64b1dbb4e198b5a754fa5359f1bc80fc'),(723,'2010-04-17 10:17:35','japones127@live.com.ar','duber','mora',0,0,NULL,3204351339,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; InfoPath.2)','1f9f8d0ee01924d8b679de71e09418be'),(724,'2010-04-17 10:29:24','mjarios@prtc.net','Mayra','Rios',0,0,NULL,1177366829,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FBSMTWB; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729; AskTB5.6)','bf4fc1a24b0249c40dd4455682f2ae82'),(725,'2010-04-17 13:01:00','Adrianafalkenberg@yahoo.com.ar','Adriana','Falkenberg',0,0,NULL,3196694818,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','5e493a737d2009a0b6ba97bfdcb83be1'),(726,'2010-04-17 16:14:08','ibarrabes@terra.es','isabel','barrabes',0,0,NULL,1335762373,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','57d85ae05df558eaeda943dfc782ffab'),(727,'2010-04-18 07:35:29','mayda_duran@hotmail.com','mayda','duran',0,0,NULL,3126118055,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; SIMBAR={40F45F8F-3C7E-479A-84FA-FA173BA404D3}; TuneUp HTML Client Embedded Web Browser from: http://bsalsa.com/; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESES)','07346402253090fdaf6b44ce0ded39c7'),(728,'2010-04-18 10:08:40','banfieldenglish@yahoo.com.ar','Miriam','Apellido',0,0,NULL,3199405581,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-AR; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','607dafb603e00b6a0f4f148afcb75e5b'),(729,'2010-04-18 17:32:53','teresitamparo@hotmail.com','teresa','perez',0,0,NULL,3198145303,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','b1de05140f74b51ccf09d9ada1ec0aaf'),(730,'2010-04-18 17:37:01','hefzibahance147@hotmail.com','MATILDE ELENA','ABEDANCK',0,0,NULL,3200652619,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','2c09e2cfd893ee04a34e6a1c19d14679'),(731,'2010-04-19 12:48:19','lac01@fibertel.com.ar','LUIS','CAB',0,0,NULL,417908361,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d042b30a13daabee17611fc362271faf'),(732,'2010-04-19 17:50:01','mirta.svampa@gmail.com','mirta','SVAMPA',0,0,NULL,3190844749,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','c542bfa55f3a6bb1a12e5d35f186f4c5'),(733,'2010-04-19 19:04:13','nattybellia@hotmail.com','natalia','gallargo',0,0,NULL,3127405767,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','23e435df61cf75c11ed7f1d5d4623c94'),(734,'2010-04-19 19:45:55','renacere@hotmail.com','miriam','sandoval',0,0,NULL,3190325879,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c7d203d9e8c284fc55a2faa9f09bdfa4'),(735,'2010-04-20 08:25:37','juli_bor@hotmail.com','julieta','Borgia',0,0,NULL,3199724802,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 GTB6 Swapper 1.0.6','0a9a5fd9d6f2528aa1844f11bb56511d'),(736,'2010-04-20 10:19:24','Mariale270470@hotmail.com','Maria Alejandra','Salazar Gonzalez',0,0,NULL,3190252928,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB0.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; MSN Optimized;XL; MSN Optimized;XL)','e6887cc17ef15e4019763c73655a55d0'),(737,'2010-04-20 12:37:25','adrianacastagnola80@hotmail.com','adriana','castagnola',0,0,NULL,3124365007,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','dbb9335587529f6ac380747235006549'),(738,'2010-04-20 12:40:07','flia_boccalini@hotmail.com','Analia','Gentilesco',0,0,NULL,3196628610,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','c64e4bd942a02c8becb0903cd34a1857'),(739,'2010-04-20 14:22:02','maria.ferrer29@yahoo.com','maria','ferrer',0,0,NULL,3202808748,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 1.0.3705)','40a002cdb312490ec651eb2abdb60de0'),(740,'2010-04-20 20:39:00','karyrogel@gmail.com','carina','rogel',0,0,NULL,3199261916,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FunWebProducts; GTB6; FBSMTWB; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 3.0.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','74f20956ea42ea04a6724182219f9926'),(741,'2010-04-20 21:42:35','amen1937@hotmail.com','ADELA','MENDO',0,0,NULL,3203058630,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 1.1.4322)','377254c063b833811e81b73aaf4d689c'),(742,'2010-04-21 11:42:53','rosafritzche@yahoo.com.ar','mariela','kramer',0,0,NULL,3359367453,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)','e001266ee67b5752787fb1902f656ca8'),(743,'2010-04-21 12:57:02','daniela_mjob@hotmail.com','Daniela','Carmona',0,0,NULL,3181059573,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','ec7739a704274f89037040e856b12220'),(744,'2010-04-22 11:27:23','mcfdezmartin@hotmail.com','MARIA DEL CARMEN','FERNANDEZ MARTIN',0,0,NULL,1477696581,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 2.0.50727)','3b7aca591c92614ab8be228ac6e7425e'),(745,'2010-04-22 14:27:52','yinaptg@hotmail.com','YINA','TORRES',0,0,NULL,3125833885,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.4; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','60a34c749dc35d41e9683361feaca8dd'),(746,'2010-04-22 17:19:03','aguilerasantana@hotmail.com','juan','aguilera',0,0,NULL,3386838714,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; InfoPath.1; AskTB5.5)','4bd36f3c8c66d8445ae3b75eaa7d2b43'),(747,'2010-04-22 19:00:39','emilego@yahoo.com.ar','Liliana','gonzalez',0,0,NULL,3199319094,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; msn OptimizedIE8;ESAR)','a2c3198a1eb0b10d5777c5278ed17271'),(748,'2010-04-22 19:47:49','nellyvallejo45@hotmail.com','nelly','vallejo correa',0,0,NULL,3195982831,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESCO)','dffb4bb70dcd5a7a142e47914f14e604'),(749,'2010-04-23 08:20:28','anibal_f@hotmail.com','anibal','ferrando',0,0,NULL,3196373673,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','54cd3618fbf9117535416264b042fd4c'),(750,'2010-04-23 10:52:15','mariamscardino@speedy.com.ar','MARIA','SCARDINO',0,0,NULL,3388663952,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 1.0.3705; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','a3a80d06f83c972ab898e4a8e6f22b06'),(751,'2010-04-23 13:39:39','belcampa@hotmail.com','Bel','Camp',0,0,NULL,3196595322,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)','7f7268e712fe33dab278bfd307f79e38'),(752,'2010-04-23 15:28:17','claudiazamacola@watusi-e.com','Claudia','Zamacola',0,0,NULL,3188888936,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','8a0e24fb60ca3e07f632d563b79d78fe'),(753,'2010-04-24 15:47:47','matilco@hotmail.com','MATILDE','CORDOBA MARTINEZ',0,0,NULL,3125951804,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; MSN Optimized;US)','0174bbefcdf5732be154e18f86d41a03'),(754,'2010-04-24 15:52:04','carmencuevaguerra@hotmail.com','CARMEN','CUEVA GUERRA',0,0,NULL,3202942341,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB0.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; msn OptimizedIE8;ESES)','748d1461d3fc695562a9f23e29a56372'),(755,'2010-04-24 16:14:28','celiacampos5057@yahoo.com.ar','celia','campos',0,0,NULL,3388696770,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','da04b8fc1e6a71b0de0c7a443f5ce52c'),(756,'2010-04-24 18:28:02','esther_delat@hotmail.com','esther','de la torre',0,0,NULL,3361728482,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)','a5a75a2c89be73c255f064053065f16a'),(757,'2010-04-25 10:47:04','oswalll_le@hotmail.com','oswaldo','leal',0,0,NULL,3146722425,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20','7fc1e29457bcac9ff09939510f018da8'),(758,'2010-04-25 11:50:52','gachi_oleosvit@hotmail.com','graciela','escudero',0,0,NULL,1493579981,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','e905864e4a0958e420ce1377c5b96892'),(759,'2010-04-25 15:40:19','nievesmonteros@yahoo.com.ar','nieves','monteros',0,0,NULL,3121746884,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB0.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','29b801267f54396a432401f8bd80b055'),(760,'2010-04-25 15:52:49','fredy_tam@hotmail.com','gustavo','cortez',0,0,NULL,3129803844,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 (.NET CLR 3.5.30729)','60e9a0c8fe2518fcc55f27f6ac6febef'),(761,'2010-04-25 18:40:37','MANOSCREATIVAS@ETERNET.CC','CRISTINA','SODE',0,0,NULL,3187886340,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','1f2653304bc2f452e06b486a86f1785a'),(762,'2010-04-25 18:54:47','nomeolvidesartesania@hotmail.com','nomeolvides','artesania',0,0,NULL,3191067417,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7','200d3d61073778671000ce9988ca1ffd'),(763,'2010-04-25 20:54:14','lauchi.ms@hotmail.com','laura','segura',0,0,NULL,3199008070,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0)','9d2fd3c7099bf1f3208b9abac67d7185'),(764,'2010-04-26 00:00:17','constascon@hotmail.com','Constanza','Tasc',0,0,NULL,3195938062,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 (.NET CLR 3.5.30729)','f86f36d8c2ff7cefdc8a1922cfc413b6'),(765,'2010-04-26 10:56:59','mmerizalde06@yahoo.es','MARTHA','MERIZALDE',0,0,NULL,3126289340,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESCO)','f5715ee31b2ad83d369ba64ccc13c644'),(766,'2010-04-26 13:48:46','rositamasera@hotmail.com','Rosa','Masera',0,0,NULL,3121431894,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19','fddc7f8dd056abcfb92804f9fdf67001'),(767,'2010-04-26 14:29:24','anyenero27@hotmail.com','ana','felici',0,0,NULL,3191001336,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1059 Safari/532.5','d3573d928c4306ad964dd33937151d0d'),(768,'2010-04-26 14:31:48','capelo@fibertel.com.ar','Adriana','Capece',0,0,NULL,3203911557,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','416fa7f9d2acb1e753367b244a98f2a7'),(769,'2010-04-26 16:20:35','yvallecillo@hotmail.com','yeni','pater velask',0,0,NULL,3383369180,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','20f6f9ca09f7e5a6deb2f349f73c8bd7'),(770,'2010-04-27 07:45:38','romcasasal@hotmail.com','Romy','De las Casas',0,0,NULL,3190436332,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; InfoPath.1; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8e8543734b1b0a04f3c645768a7dad74'),(771,'2010-04-27 11:03:14','sillvya@live.com','SILVIA','GUTIERREZ',0,0,NULL,3182838724,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','b0bf7a9e04180a28ef5ae3a74fcd4ad2'),(772,'2010-04-27 13:12:12','ae.uriarte@hotmail.com','elsa','bollati',0,0,NULL,3194478876,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','11717d6c2547138f2916c734800567d3'),(773,'2010-04-28 09:48:27','martalescano@fibertel.com.ar','marta','Lescano',0,0,NULL,3203830286,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322)','ca84a2958577afe5d1e3463d2e0e7b50'),(774,'2010-04-28 10:16:43','deangeli@cnea.gov.ar','SILVANA','de angelis',0,0,NULL,3360157187,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.1)','1a80af01ddfeace17d508582aa331541'),(775,'2010-04-28 12:48:21','delia.rodygan@live.com','ALMA','BARAJAS',0,0,NULL,3181152864,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4)','2b4fb47c457da9f9519936cd25b1a1e6'),(776,'2010-04-28 12:53:51','ingecodrina@hotmail.com','drina','ccc',0,0,NULL,3361286045,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6; FBSMTWB; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; AskTB5.6)','d9bb7a96ab2eda1bdaec2ac875d4ed9e'),(777,'2010-04-28 12:56:35','veronicamuniagurria@fibertel.com.ar','veronica','muniagurria',0,0,NULL,3203732182,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','18858cb58f59418f6e5a2c59062aa2c3'),(778,'2010-04-28 16:39:53','losoeche_88@hotmail.com','lorena','rodriguez',0,0,NULL,3378996584,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.21022; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 1.1.4322)','cd426951ff9696b2a4c74be8f02d8af3'),(779,'2010-04-28 18:11:36','marthae1940@hotmail.com','MARTHA','WILLINER',0,0,NULL,3196695967,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','f38e633de813abb339c7088d74e0e5c9'),(780,'2010-04-28 22:55:16','sil_1507@hotmail.com','silvia','miguens',0,0,NULL,3388671997,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2','aa9149231375387c93adc7e5fb76bb9d'),(781,'2010-04-29 10:50:27','arponte@gmail.com','Alejandro','Rodriguez Ponte',0,0,NULL,3199292746,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.9 Safari/533.2 ChromePlus/1.3.9.0','1ca3e9a96423f15d9dc6c2d78e9ba85c'),(782,'2010-04-29 11:59:22','masobavi@hotmail.com','socorro','villafa',0,0,NULL,3189255598,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152)','cd411f131f78df223a5eed161132f527'),(783,'2010-04-29 16:07:36','terecordero05@hotmail.es','tere','cordero',0,0,NULL,3385763126,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; GTB6; AskTB5.6)','0ee2d81eb7a69fc697184a29d739dfa9'),(784,'2010-04-29 18:40:59','etie08@hotmail.com','gladys','almanza',0,0,NULL,3190892044,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','b18d0a9d44cb03ac4d16d72c015f3fc8'),(785,'2010-04-30 09:48:29','lilia_pellegrini@hotmail.com','Lilia','Pellegrini',0,0,NULL,3360806770,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','0e4e37bee79ffb88268114345d7f5413'),(786,'2010-04-30 12:24:35','carsart0713@yahoo.com','carlos','rojas',0,0,NULL,3386623010,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0)','c28aaca51c2f6334798a32b4b2b026a5'),(787,'2010-04-30 12:31:15','aglplus@hotmail.com','ABEL','GONZALEZ',0,0,NULL,3181494554,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d9f5c0d600a1d0ed9a1a1cb0ed8b5583'),(788,'2010-04-30 13:19:16','carmenmuva@hotmail.es','carmen','Mu',0,0,NULL,3571580181,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5','d8bbbe74de9bab9c7afe6a558f51ae36'),(789,'2010-04-30 17:48:58','mguerrero0316@yahoo.es','Marloydis','Guerrero',0,0,NULL,3188538771,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','514cdc58d3f84dd200844ef9e28fd6ed'),(790,'2010-04-30 22:56:39','silvinacordero@infovia.com.ar','silvina','cordero',0,0,NULL,3200240754,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','6a184446abba4433570ce0fb43330f32'),(791,'2010-05-01 07:51:11','cecivivian@yahoo.com.ar','cecilia','vivian',0,0,NULL,3388847591,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','fd12113a76a468c116c4e44ff384cda9'),(792,'2010-05-01 08:23:55','gravaz1972@yahoo.com.ar','graciela','Vazquez',0,0,NULL,3202580263,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','23996370dc58924dd5c8fa0873e13d56'),(793,'2010-05-01 12:45:35','mcjunco@hotmail.com','marta','ce',0,0,NULL,1477434929,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','98d716404d74af629b32e68e32599f4c'),(794,'2010-05-01 15:55:36','GABYGM_19@HOTMAIL.COM','GABRIELA','MIER',0,0,NULL,3187286532,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','eeff61e9a0270164db61cda83717cc55'),(795,'2010-05-02 09:39:26','sandylopez112@hotmail.com','sandra','lopez',0,0,NULL,3126931218,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','46ed5b81ea1c2f3958d37a2dfae55747'),(796,'2010-05-02 10:34:17','parisiag@hotmail.com','graciela','Parisi',0,0,NULL,3199393550,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)','473817d8461641e0eda1b528ce769874'),(797,'2010-05-03 12:53:52','nicomr_13@hotmail.com','nico','rigotti',0,0,NULL,3360723970,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.2)','e229d073f0872540663cb176cc37766b'),(798,'2010-05-03 13:29:01','verona0609@hotmail.com','luisa','coronado',0,0,NULL,3190085295,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 FBSMTWB','d676af064eabb969395d349a769753c3'),(799,'2010-05-03 16:49:01','carmene1948@hotmail.es','carmen','romero',0,0,NULL,3192043997,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','dbc62f11fc8bb8fbd14e03a191e8ed65'),(800,'2010-05-03 19:07:50','pitti-pama55@hotmail.com','patricia','endrigo',0,0,NULL,3121771733,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SIMBAR={C1A63F47-B249-44C7-A0B2-1F10E2B08AFE})','3457127c4aa8bdb1c286e6a1e11f61ab'),(801,'2010-05-04 08:39:58','g_anselmi@farmacity.com.ar','Gustavo','anselmi',0,0,NULL,3360036579,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; MS-RTC LM 8)','a992a71e3f6f41eb130735e3cb974093'),(802,'2010-05-04 12:52:26','dvelasqueze@sura.com.co','DIANA MARIA','VELASQUEZ ESCOBAR',0,0,NULL,3355553151,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','e9d35991a944f786fe92d1e0ee2da37f'),(803,'2010-05-04 13:59:02','constacon@hotmail.com','Contanza','Tascon',0,0,NULL,3195924100,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 (.NET CLR 3.5.30729)','37606535286287f3e6a7d47196e0f2f1'),(804,'2010-05-04 15:03:17','samepi15@gmail.com','sandra','medina',0,0,NULL,3363230483,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB0.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; MS Internet Explorer; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','94167050716378a3fd650a78065fd256'),(805,'2010-05-04 16:01:19','deco_ale10@hotmail.com','alejandra','ramirez',0,0,NULL,3182496387,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.0.3705; .NET CLR 1.1.4322; Media Center PC 4.0; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','12401013e91e9e38f54a7922f332c389'),(806,'2010-05-04 18:06:04','www.maricruzt313@hotmail.com','MARICEL','CRUZ',0,0,NULL,3204425154,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)','8e46362bc3c27a236e1f3e5025c69a2b'),(807,'2010-05-04 19:11:38','nelly_virginia@hotmail.com','nelly','hermoso',0,0,NULL,3192725753,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; msn OptimizedIE8;ENUS)','68d26e7f013236424b26a5e853eb655c'),(808,'2010-05-04 22:04:47','nys@eisa.cl','nayareth','ya',0,0,NULL,3123201147,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-CL; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 FBSMTWB','c138a8196fd21eea64d375172afb6946'),(809,'2010-05-04 22:38:41','nanita-007@hotmail.com','Nadia','Quinteros',0,0,NULL,3203832355,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','f485a5daebbaf4c8340a5624f5457945'),(810,'2010-05-05 10:21:08','melinaroman@hotmail.com','melina','roman',0,0,NULL,3199362269,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','fa384884ebf7a6a1a2295eba6794f42e'),(811,'2010-05-05 16:59:23','cmogv_17@hotmail.com','monika','gonzalez',0,0,NULL,3146961719,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2)','92e5f5364a2ec791016d1d342ec90b50'),(812,'2010-05-05 17:53:37','qfedesq@gmail.com','Federico','Ledesma',0,0,NULL,1152117486,'BlackBerry8520/4.6.1.274 Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/136','e5644500d3ea3f677f798da04dc714bb'),(813,'2010-05-05 21:58:41','camobaetaba@hotmail.co','lorena','barona',0,0,NULL,3357376098,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB0.0; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','66867df0bd7a46f3e4647dff5af4002a'),(814,'2010-05-06 13:32:35','ario@jockeyclub.org.ar','Ana','Rio',0,0,NULL,417875786,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','7cfcd61586fcec7e8871afe57af46ad5'),(815,'2010-05-06 14:11:45','coche_campoy002@hotmail.com','Jose','Campoy',0,0,NULL,3199213088,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1064 Safari/532.5','3fc8bde5e5b9f87bd096bfea39182276'),(816,'2010-05-06 22:13:42','dantoniovillota@hotmail.com','dario','villota',0,0,NULL,3125880686,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 (.NET CLR 3.5.30729)','4bc89ab7d52f203941268a1628a7196a'),(817,'2010-05-07 15:54:39','santana.palacios@hotmail.com','Andrea','santana',0,0,NULL,3192222328,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-AR; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)','4f609d2a68e6fe6c5bbe49b359d78493'),(818,'2010-05-07 18:55:17','chelaboor@hotmail.com','graciela','bohorquez',0,0,NULL,3195902327,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2)','a01c933c2883382415e93134761b05cb'),(819,'2010-05-07 20:28:41','monica_brunt@hotmail.com','monica','brunt',0,0,NULL,3199258549,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c5ae9c5bf3e65e8999e0b654399f739f'),(820,'2010-05-08 10:52:57','ladellerena@gmail.com','Manoly','Esmeralda',0,0,NULL,3579989172,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2) Gecko/20100115 Firefox/3.6 (.NET CLR 3.5.30729)','f6057186d6892f29727674d2f430d310'),(821,'2010-05-08 15:36:45','javiera.huidobro@gmail.com','javiera','huidobro',0,0,NULL,3198451901,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','deaa40a4e8ebf87b3235806ba321e784'),(822,'2010-05-08 16:05:28','m.sturmann@gmail.com','Marita','Sturmann',0,0,NULL,3198258506,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','630af626716a811ca58cca479784f5f7'),(823,'2010-05-08 18:46:36','hindushara@yahoo.es','gloria consuelo','cuevas',0,0,NULL,3193220905,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; WinuE v6; FBSMTWB; GTB6; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','056b0439000c9b7cc8e3d8f17253a006'),(824,'2010-05-08 20:43:40','eddy40tapia@hotmail.com','eddy','tapia',0,0,NULL,3388162212,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.5; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','a294bf78a15f997ce93d3b8dd1ba11c4'),(825,'2010-05-08 21:07:41','lolymr@hotmail.com','gloria','rasetto',0,0,NULL,3195758045,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1064 Safari/532.5','228f31be5ee3a9bdce9b2b359787189f'),(826,'2010-05-09 02:04:57','ginoferrara44@gmail.com','soledad','ferrara',0,0,NULL,1394841574,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','be322818144676b9d0171b68a2e2a2a4'),(827,'2010-05-09 13:25:14','amparomb@yahoo.es','Amparo','Miralles',0,0,NULL,1372288945,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; eSobiSubscriber 2.0.4.16; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','f7e6cb92fb248098a757f6eed4a6c365'),(828,'2010-05-09 16:38:44','nuriamaillot@hotmail.com','Nuria','Maillot',0,0,NULL,3363134378,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; HPNTDF)','6de2e21b15a843e09112f6c6e9866fa6'),(829,'2010-05-09 17:03:36','flodaniela@hotmail.com','daniela','ferrel',0,0,NULL,3120705933,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','6833083e9c63af60bd65aace79c546bc'),(830,'2010-05-09 19:15:06','franbocca@tizado.com','Francisco','Boccacci',0,0,NULL,3359075202,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 2.0.50727)','f072bb50063d3f19351948bf16b892f7'),(831,'2010-05-09 19:48:54','merycrisanta@gmail.com','Mery','Crisantacopoulos',0,0,NULL,3200119558,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB0.0; .NET CLR 2.0.50727; .NET CLR 1.1.4322; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','93ed46a40a2d7038f616e50dd7735d86'),(832,'2010-05-10 00:47:53','mauricio-barrientos@hotmail.com','mauricio','barrientos',0,0,NULL,3355711762,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','7746f9ddad7d188c34d013cefded23c2'),(833,'2010-05-10 21:19:19','www.sukadev@hotmail.com','sukadeva','goswami',0,0,NULL,3192254282,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.5) Gecko/2008120122 Firefox/3.0.5','6d1c626ae7d04a6be218f7516da9de86'),(834,'2010-05-11 12:32:09','lilialy@gmail.com','liliana','carrasco',0,0,NULL,3195620473,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','99000cf049e4aa37c565555745ab8f7a'),(835,'2010-05-11 15:41:54','rosatafernaberry@hotmail.com','Rosa','Tafernaberry',0,0,NULL,3358118853,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','693e6505acaa969c9a92c51c76a61a00'),(836,'2010-05-11 16:43:36','rcaceresloli@hotmail.com','Raquel','Caceres',0,0,NULL,3359434987,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','2d97b510852df21cf9dba52fdb1f821c'),(837,'2010-05-11 19:15:07','rosysantacroce@gmail.com','rosy','santacroce',0,0,NULL,3121407201,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','a583da3e1d4ff77257bb5184a8a09d95'),(838,'2010-05-11 19:17:24','chelagumo@hotmail.com','Graciela','Gualdron Monsalve',0,0,NULL,3204359791,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','b4c494fb23a8921fd46e8727ae301ead'),(839,'2010-05-11 23:32:43','cindy-var@hotmail.com','cindy','vargas',0,0,NULL,3187693059,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.0.8) Gecko/2009032609 Firefox/3.0.8','a5c4ce07675ecbe29c9be8b851fb7402'),(840,'2010-05-12 11:13:15','ninab_81@hotmail.com','Yanina','Apellido',0,0,NULL,3362694402,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19','235952b9b8033f5b0de63408c5bc92d4'),(841,'2010-05-12 14:27:22','contador@floresdellago.com','MARIA ELCY','MARULANDA',0,0,NULL,3195633934,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','c0f02b6f4a54b32f416cd190a32ab220'),(842,'2010-05-12 20:31:39','dianamaudit@hotmail.com','DIANA MARCELA','MILLAN',0,0,NULL,3189419295,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2)','d9c2bdfc1219e2f84f2a3dd9bebcc5af'),(843,'2010-05-12 20:40:46','jaidithg@hotmail.com','JAIDITHG','GARCIA',0,0,NULL,3200675921,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; Media Center PC 5.0; InfoPath.2; WinTSI 26.09.2009; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','a07b373ff5a431bf108f8d6314fcf85e'),(844,'2010-05-12 22:44:20','miriamgral@yahoo.com.ar','Miriam','L',0,0,NULL,3190867616,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; (R1 1.5); .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','e82dcbab687514587430854ae78b459f'),(845,'2010-05-13 10:19:06','yanyorfi@hotmail.com','yandrelis','ortiz',0,0,NULL,3195953084,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','0351700168a9296df72a21ce977323c9'),(846,'2010-05-13 12:20:27','lagaviota_@hotmail.com','Gabriela','Ramirez',0,0,NULL,3181748825,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.38 Safari/533.4','ae8d1bf1dc1d2cf94ed7da2be0587a13'),(847,'2010-05-13 16:53:07','marielasikic@hotmail.com','Mariela','Sikic',0,0,NULL,3386593847,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESAR)','406cc3e74e809bb98add194addf1bb10'),(848,'2010-05-13 17:03:22','narielasikic@hotmail.com','Mariela','Sikic',0,0,NULL,3386593847,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESAR)','b6746ee8cc2223bed3c0af863b27ffaa'),(849,'2010-05-13 20:21:55','cartachonet@hotmail.com','tamara','perez',0,0,NULL,3355884778,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.2)','b1798011808cd06b9af0ed627bf41ec2'),(850,'2010-05-13 20:30:16','pintadito_pinta@hotmail.com','Alberto','Pintado',0,0,NULL,3190496531,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','ede524381b1a06ed255147390e9ccaf2'),(851,'2010-05-14 09:55:45','guivals@gmail.com','guillermo','valderrama',0,0,NULL,3127014027,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1064 Safari/532.5','21a7a85841d810755b5de609872b5a7d'),(852,'2010-05-14 10:17:56','tuservicepc@gmail.com','Oscar','Alfaro',0,0,NULL,3386707622,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322)','687df6e6b03cf3e2de7d6b884374628c'),(853,'2010-05-14 12:11:17','angy43@live.com.ar','angy','evangelisti',0,0,NULL,3202751961,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FunWebProducts; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','aad145c8b751a65163f6d772444aeffe'),(854,'2010-05-14 12:49:39','rafaelguerra184@gmail.com','rafael','guerra',0,0,NULL,1348958693,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; FunWebProducts; GTB6.4; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','3912b051f988606e6ee0df369ca980fc'),(855,'2010-05-14 19:37:31','lucasmario.arias@gmail.com','LUCAS MARIO','ARIAS',0,0,NULL,3196660059,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','32101c025f2e8559a6fa7c3504728803'),(856,'2010-05-15 08:57:57','ggatoblanco7@gmail.com','yusty','Pizco',0,0,NULL,1572636729,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152)','b7c022ded0c194e1b254aa49c451d284'),(857,'2010-05-15 09:03:02','coca_kari2009@hotmail.com','kari','velasquez',0,0,NULL,3199744178,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','ff16fc4e9686c2fffc4dabdaf107ffae'),(858,'2010-05-15 09:10:01','pisardotoer@yahoo.es','yuzty','pizco',0,0,NULL,1572636729,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152)','0337aabf6f7d59cf3e95fddf0bb3cc5d'),(859,'2010-05-15 12:51:48','gracequil480@hotmail.com','graciela','vic',0,0,NULL,3191047103,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','1a3db984427e351238ef4d4ed4f69817'),(860,'2010-05-15 14:40:39','juanarraun@hotmail.com','Juan','Fernandez',0,0,NULL,1477406576,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','e3307e087e0f3a539aea2dcc102631bb'),(861,'2010-05-15 15:59:27','martin_grandary@hotmail.com','martin','argueta',0,0,NULL,3183693164,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)','8d2af473583340060f63ae57f0f13927'),(862,'2010-05-15 20:23:39','sussyfolk@yahoo.com','susana','gonzalez',0,0,NULL,3191056469,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','32fa0c9e808406089a8e39cacdbcd197'),(863,'2010-05-15 21:05:12','a_agraces@hotmail.com','alan','agraces',0,0,NULL,3201740093,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','2c3da0381728b9ab2fa44e106f695a73'),(864,'2010-05-15 22:08:56','lmoya75@hotmail.com','ELENA','MOYA',0,0,NULL,3195923791,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','868bf43d598331b2d168324e361cfcf3'),(865,'2010-05-15 23:22:54','superagros@yahoo.es','kleber','cueva',0,0,NULL,3197814194,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SIMBAR={E0B8DC76-0721-4C9E-A38A-039DD6604A34}; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.2; AskTbCDS/5.8.1.11880)','cd1ad20f56db6cfb030398ef3bba880c'),(866,'2010-05-16 11:50:11','ciberayo@yahoo.com','Carlos','Rodr',0,0,NULL,3387213537,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','bf4667711946fc1e623e7423acf6fb54'),(867,'2010-05-16 12:10:01','edcanti@emcali.net.co','leonor','mantilla',0,0,NULL,3187795368,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; OfficeLiveConnector.1.4; OfficeLivePatch.1.3)','aa012621745aa70579040ec2dc132889'),(868,'2010-05-16 18:29:47','sagandulfo2010@hotmail.com','silvia','gandulfo',0,0,NULL,3196584467,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; uE v7)','90ff6b585700ebb264779fd708243cea'),(869,'2010-05-16 19:39:39','UIA06@HOTMAIL.COM','LUCIA','ALVAREZ',0,0,NULL,3387887726,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729) FBSMTWB','e6a9c9f35111a65bb4832fab102d3c32'),(870,'2010-05-17 13:41:26','mpazlee@gmail.com','Maria Paz','Lee',0,0,NULL,3200549298,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1064 Safari/532.5','e53588e9fc3cb01d7483946d54f18a45'),(871,'2010-05-17 17:17:19','jlarce@ultramar.cl','Jose Luis','Arce',0,0,NULL,1113603092,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2)','815979dcf9cc93a3e83abf6577599e0b'),(872,'2010-05-17 18:26:52','eridaniareynoso@hotmail.com','Eridania','Reynoso',0,0,NULL,3192965863,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','51984ad167abcc7f0513cd43e16077d3'),(873,'2010-05-17 21:18:24','karina.e.s@hotmail.com','karina','serrano',0,0,NULL,3189686968,'Mozilla/5.0 (SymbianOS/9.4; U; Series60/5.0 Nokia5800d-1b/20.2.014; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/413 (KHTML, like Gecko) Safari/413','ef479d102069a7e0073762c9272b31f0'),(874,'2010-05-18 07:35:49','marol_n@hotmail.com','marisol','nu',0,0,NULL,3386833133,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.4; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; FDM)','6a7fa95d7a2fb08bfafb57d716164e43'),(875,'2010-05-18 09:03:58','josedander@hotmail.com','JOSEFINA','DANDER',0,0,NULL,3189685860,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; Alexa Toolbar; MEGAUPLOAD 2.0; MEGAUPLOAD 1.0; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 1.1.4322)','3189a7dac40e0d5ba8d9596136a6308f'),(876,'2010-05-18 12:40:42','falconi_valdes@hotmail.com','Miguel Angel','Falconi Vad',0,0,NULL,3186375110,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESMX)','4110385c8e84a2df4e3350c152440def'),(877,'2010-05-18 13:01:38','meri85@hotmail.com','merari cristel','pozo',0,0,NULL,3186402629,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','5d22eedd7110afcb0e4bad44ef807a7e'),(878,'2010-05-18 20:14:03','mayelycordoba@hotmail.com','mayo','cordoba',0,0,NULL,3192197763,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; msn OptimizedIE8;ESXL)','bdc7662fc1885bc384bc7969f967760f'),(879,'2010-05-18 20:48:56','jccriollop@hotmail.com','Jaime','Criollo',0,0,NULL,3188470220,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','44ad2b8e55403e362a84937a17dd9da7'),(880,'2010-05-19 08:48:12','martamasson@yahoo.com','marta','masson',0,0,NULL,3188960842,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)','d76f34b334c7ceeed5839288e2f420d1'),(881,'2010-05-19 13:07:53','crisgulliotte@yahoo.com.ar','Cristina','Gulliotte',0,0,NULL,3194570855,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB5; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b471a5bbff00c1b6a0bc47741dbaf939'),(882,'2010-05-19 15:51:18','eugesarmi@hotmail.com','Eugenia','Sarmiento',0,0,NULL,3359980986,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 1.0.3705; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','10bc3af1e0e157451bcb91072dfccef0'),(883,'2010-05-19 19:53:38','elpara22@hotmail.com','diego','rodriguez',0,0,NULL,3127770581,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','73799723efa043bfdad9c8b9b2a4c9cf'),(884,'2010-05-20 08:58:28','ligiadgdp@hotmail.com','ligia','angarita',0,0,NULL,3191941743,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','feb01b328e8fc42f39f6e06a5b64f238'),(885,'2010-05-20 10:16:02','sdelfinab@yahoo.com.ar','Delfina','Balladore',0,0,NULL,3203663213,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1064 Safari/532.5','257a2cbda051a491d25c38f2777086bc'),(886,'2010-05-20 14:07:50','maripolito@hotmail.com','maria','polito',0,0,NULL,3199006335,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','2be49e3d4998b1ed1192ce8e84b6b7cf'),(887,'2010-05-20 15:20:43','bibliotecafusm@une.net.co','gloria beatriz','bedoya ballesteros',0,0,NULL,3387447298,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','2aad5c36d22ac7aaeddd4cab8d39f83e'),(888,'2010-05-20 21:30:57','laurabevi22@hotmail.com','Laura','Bevilacqua',0,0,NULL,3203869833,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','81cef0efb2be09e854606a51ebeee53e'),(889,'2010-05-21 07:37:34','bosqana@yahoo.com.ar','ana','bosque',0,0,NULL,3188957856,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; InfoPath.1; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','5f4d73a360764520a64d8746120de120'),(890,'2010-05-21 12:30:25','gibacos_corazon19@hotmail.com','gissela','barria acosta',0,0,NULL,3359430623,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)','bc77c952ae18997b751b59d7cb8976f9'),(891,'2010-05-21 14:59:39','luzmasial@yahoo.com','LUZ MARINA','SIERRA ALVAREZ',0,0,NULL,3356359667,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','62122bdbb3bd36ab3c8ffdc3c9c2b005'),(892,'2010-05-21 18:24:54','homsiria69@yahoo.cl','alfredo','rasse',0,0,NULL,3194277472,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4)','f74e6be6b5ad6cfd4853b8892dcacbbf'),(893,'2010-05-22 11:40:11','natali.aguilera7@gmail.com','Natal','Aguilera',0,0,NULL,3386875083,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; Tablet PC 2.0; AskTbCDS/5.8.1.11880)','6526a0fe44f94fc1a52b61220dfa9408'),(894,'2010-05-22 13:37:16','ana-grand@hotmail.com','Anita','Apellido',0,0,NULL,3188755614,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','25200919bc67177a0612cf0f836203a1'),(895,'2010-05-22 22:06:59','meme.gonzrojas@hotmail.com','mercedes','gonzalez',0,0,NULL,3190711414,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 ( .NET CLR 3.5.30729)','eb4184cf26a35c1739489dff337695a9'),(896,'2010-05-23 10:26:44','illeonpat@hotmail.com','Ines','lleonpat',0,0,NULL,3121790576,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; WinTSI 06.02.2010)','38436c05e52263972bafcde224b1accd'),(897,'2010-05-23 11:51:14','lauraballes80@hotmail.com','laura','ballesteros martin de almagro',0,0,NULL,1042329061,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','55cedc459c6955b92cdac29bc4922500'),(898,'2010-05-23 12:01:53','quinmol@hotmail.com','lila','molina',0,0,NULL,3192102465,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','155714d251efef10417538b801c1323a'),(899,'2010-05-23 16:39:03','anamarquinez@euskalnet.net','Ana Isabel','Marquinez',0,0,NULL,1406527785,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 1.0.3705; .NET CLR 1.1.4322; Media Center PC 4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d6646c4e04753c8964a74f619981e8a4'),(900,'2010-05-23 19:37:55','einsteinvaron-2@hotmail.com','cristian','varon',0,0,NULL,3127961687,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)','71db74234cfa723b62a8a7e366f75a73'),(901,'2010-05-23 23:56:53','batsyqquzocuore@hotmail.com','Blanca','Alvarez',0,0,NULL,3185063989,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','48497f0a5bad6a9b62db3f2cdaa9d5e4'),(902,'2010-05-24 03:40:12','binajk@hotmail.com','Bina','kaknani',0,0,NULL,1477000542,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 (.NET CLR 3.5.30729)','3560d967973d50c7a7044d817e18e032'),(903,'2010-05-24 19:03:26','leticia_canedo@hotmail.com','Leticia','Canedo',0,0,NULL,3182427330,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; uE v7)','200c9f36818c4b0c5f1ebd9269133ec4'),(904,'2010-05-25 12:28:08','sycaviedma@gmail.com','suSANA','BRUNO',0,0,NULL,3199265510,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','f1464ac36f900f54a8c4a5ccfede552d'),(905,'2010-05-25 17:43:42','anacoulon5@hotmail.com','Ana','Coulon',0,0,NULL,3200274939,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','04a35a02e5e49116be69490a94202b7d'),(906,'2010-05-25 18:35:47','luis-alb@live.com.ar','luis','gomez',0,0,NULL,3129853320,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7','693c6755f188e64d4034597a519cc643'),(907,'2010-05-25 18:39:43','gloriaenrique@hotmail.com','Gloria','Enrique',0,0,NULL,3199669096,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','fe95636474e0e23c7bf081e38b965692'),(908,'2010-05-25 20:33:44','zunamita_18@hotmail.com','zuri','marquez',0,0,NULL,3147131750,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','5beb5588c9cb535ea3b6283bc5b203ea'),(909,'2010-05-26 09:24:54','charraluc@hotmail.com','lucia','charra',0,0,NULL,3127756423,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','0365ef2fe68742885945adb50b44748f'),(910,'2010-05-26 14:53:19','juliearroyave21@hotmail.com','julie','arroyave',0,0,NULL,3194847604,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','5062222a331b3fa877891f5d75c0bd1c'),(911,'2010-05-26 16:47:34','nani_d77@hotmail.com','anahi','durazno',0,0,NULL,3129794665,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.5) Gecko/20070713  Firefox','0f009e05edea06102993e7df3a44ac73'),(912,'2010-05-26 18:00:31','livind11@hotmail.com','livia','nunez',0,0,NULL,3126408132,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.4; SLCC1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.5.30729; InfoPath.1; .NET CLR 3.0.30729; OfficeLiveConnector.1.4; OfficeLivePatch.1.3)','107eac903c88de88038ff8f20092469a'),(913,'2010-05-27 11:26:06','nechevag@gmail.com','Nicolas','Echevarria',0,0,NULL,3358085506,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1064 Safari/532.5','f0b7a23c39cafe0df34185e40cf3b577'),(914,'2010-05-27 17:13:25','ineszanotti@coop-her.con.ar','ines','zanotti',0,0,NULL,3360738138,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','b70d57761b5b5255aa20c72253539b71'),(915,'2010-05-27 18:21:03','mariu500@hotmail.com','maria eugenia','ramirez barbosa',0,0,NULL,3191932717,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 ( .NET CLR 3.5.30729)','10960eaf142d12e8f79e1ea75ebf2b22'),(916,'2010-05-27 20:44:36','pqmartha@hotmail.com','martha','martinez',0,0,NULL,3185401504,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','08912daeacb238f4bf5dee2e650a7708'),(917,'2010-05-27 21:01:43','lmfischer@hotmail.com','luciana','fischer',0,0,NULL,3387633509,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30729)','83681ef42e584fc154355e0e690fa898'),(918,'2010-05-27 23:59:17','nellydemenjivar26@yahoo.com','nelly','menjivar',0,0,NULL,3193391201,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 (.NET CLR 3.5.30729)','e3b8c1f8a420d082be931a76eb22f4aa'),(919,'2010-05-28 10:20:16','yanivan@yahoo.com.ar','YANINA','RODRIGUEZ',0,0,NULL,3189675656,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FunWebProducts; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','27c66fcf44ae3a402258e7d9cbcfc644'),(920,'2010-05-29 11:35:50','j.ramirez1969@gmail.com','Jimena','RAMIREZ',0,0,NULL,3191943695,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','136f60bd3b00f8f3312032e883cff269'),(921,'2010-05-29 14:07:36','jhsr5@hotmail.com','jose','ser',0,0,NULL,3190339462,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.4; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; MEGAUPLOAD 2.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; uE v7)','838ec6ffe69b447d36578af082f19632'),(922,'2010-05-29 15:40:15','silviagracielapazos@hotmail.com','SILVIA','PAZOS',0,0,NULL,3198962077,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','275a6bc41c6cd3cfffc4245930807831'),(923,'2010-05-29 21:25:51','soniaolea@hotmail.com','Sonia','Olea',0,0,NULL,3359631114,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','cc739ab1e6e0d8f5d44f15e84594ddeb'),(924,'2010-05-30 09:57:41','casamiento2007@hotmail.com','gisela','suarez',0,0,NULL,3202730530,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)','761f932c1bff75c4cec7ed5d9fbef2e8'),(925,'2010-05-30 14:24:52','laura.urquiza@live.com.ar','laura','urquiza',0,0,NULL,3190826550,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; FunWebProducts; GTB6; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30729)','034f06e44e303a873688627eae11bb73'),(926,'2010-05-30 15:28:45','andrearmenendez@gmail.com','Andrea','Menendez',0,0,NULL,3191305958,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','cd7c4200a79e01cd8587ab07b2534785'),(927,'2010-06-01 13:18:47','pacita70@hotmail.com','MPaz','jahnsen',0,0,NULL,3363319558,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d46abea842decc7f1545aca6eb6525fa'),(928,'2010-06-01 15:49:52','marejadi@hotmail.com','maria','diaz',0,0,NULL,3203409345,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; AskTB5.6)','f04caf8d214a48289abe7ee41b7cd47d'),(929,'2010-06-01 18:54:21','buebuja_edith_7@hotmail.com','cristian','coronado',0,0,NULL,3381294442,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.3; FunWebProducts; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','bcf036e6dc1e933171a01237f64a6721'),(930,'2010-06-02 16:30:48','marius.huidobro@gmail.com','Ma. Eugenia','Huidobro O.',0,0,NULL,3179311744,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705; .NET CLR 1.1.4322; Media Center PC 4.0; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','86ed42b821588102e8b5c5467aca8a6d'),(931,'2010-06-02 18:05:11','martaheidel@hotmail.com','Nombre','Apellido',0,0,NULL,3194558776,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','e36d13380556502c057025e7958ec12d'),(932,'2010-06-02 19:58:52','bob_mario_22@hotmail.com','mario','sandoval',0,0,NULL,3358237619,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 1.0.3705; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','b82547e24c79b27b560068e31f94d014'),(933,'2010-06-02 20:16:23','ceciliajmorales@gmail.com','Cecilia','Morales',0,0,NULL,3363040615,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','3bbedca8fd330d487d13864fd01e6ff4'),(934,'2010-06-03 08:42:20','edgarvinueza@gmail.com','Edgar','Vinueza',0,0,NULL,3363692354,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FunWebProducts-MyWay; GTB0.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','0c14097c14b659bb2205d6dd486c1bc2'),(935,'2010-06-03 17:09:53','bocamaster19@hotmail.com','geronimo','medina',0,0,NULL,3199013313,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; elertz 2.4.022; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','c2bf26a7d018b8490841afc67ea0496e'),(936,'2010-06-03 18:28:40','benizul@hotmail.com.ar','miriam zulma','benitez',0,0,NULL,3127740883,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.55 Safari/533.4','079401d0cb5f26d9115b38996ccd3ed6'),(937,'2010-06-03 18:40:07','ruy-esther@hotmail.com','RUBY','ARRIETA',0,0,NULL,3192076656,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','0f66836ec02ec023ceca1083223c933a'),(938,'2010-06-03 20:48:02','rominapuri@hotmail.com','Romina','Puricelli',0,0,NULL,3360823851,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 1.0.3705)','6c6267b8bbee63fc94747df11b3b168c'),(939,'2010-06-03 22:03:32','gris45@live.com.ar','gricelda','britos',0,0,NULL,3199311618,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; FBSMTWB; GTB6.4; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','7a96dac1035845af81afb3436123069b'),(940,'2010-06-03 23:53:38','brenda-glz@hotmail.com','GISELA','GONZALEZ DE SANTANA',0,0,NULL,3186332156,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c9d5183998d7600281538744d6370a83'),(941,'2010-06-04 10:41:34','poty70@gmail.com','CARMEN','CLAMES',0,0,NULL,3386711059,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','beff84023438c12b559ca87997e1b80b'),(942,'2010-06-04 10:52:13','nohorac55@yahoo.com','nohora','medina',0,0,NULL,3204311451,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','984f6af44360fa7140048dcf6177f22f'),(943,'2010-06-04 11:14:42','marielahg67@hotmail.com','mariela','hernandez',0,0,NULL,3204355529,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)','5abce3eba188e0758fb2c6c07152a951'),(944,'2010-06-04 11:14:50','rmora@mazdametepec.com.mx','roberto','Mora',0,0,NULL,3183443659,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','2394b8a06e19dfa3a7736641aed2f2d1'),(945,'2010-06-04 20:35:53','carorudolf@hotmail.com','carolina','rudolf',0,0,NULL,3200346604,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6; SIMBAR={C35D6317-F14C-4747-9945-2F8DD5A9C5DA}; .NET CLR 1.1.4322; uE v7; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727; uE v7)','566df8471dee839c6e9f4153affdfd02'),(946,'2010-06-04 21:14:47','liligallo21@hotmail.com','LILI','GALLO',0,0,NULL,3358447699,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','1f34aba98c2a7736e521d8b1549919e0'),(947,'2010-06-05 01:48:36','vediarosana@hotmail.com','Rosana','Taddei',0,0,NULL,3357568522,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; MSN Optimized;AR; MSN OptimizedIE8;ESES)','ba709b2ee624e75d0d55a15019c5aeb3'),(948,'2010-06-05 09:30:45','gabysolab@gmail.com','Gabriela','Soto',0,0,NULL,3193908476,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 GTB7.0 (.NET CLR 3.5.30729)','460a8b540c0d57b11f884ac225dcbf30'),(949,'2010-06-05 21:15:29','magui_2587@hotmail.com','magui','casab',0,0,NULL,3183272674,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','76f615df7635b7492ed440c4fdf15b28'),(950,'2010-06-06 15:54:14','clarainestoroyepes@yahoo.com','clara','toro',0,0,NULL,3194218310,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Tablet PC 2.0; OfficeLiveConnector.1.5; OfficeLivePatch.1.3; msn OptimizedIE8;ESCO)','2f326181be9bb30732adf6165fd1c15a'),(951,'2010-06-07 07:41:44','marcelapalmieri@yahoo.com','Marcela','Palmieri',0,0,NULL,3124271153,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.30729)','e85288301a8452b00610b9568cff3a99'),(952,'2010-06-07 09:37:59','clacandia@yahoo.es','claudio','Candia',0,0,NULL,3363583737,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)','4f22b0e99a2dc39d8e1bfd97da3d435e'),(953,'2010-06-07 09:54:47','elianak21@yahoo.com.ar','eliana','-',0,0,NULL,2833401506,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; WinuE v6; WinuE v6)','afaf1048e8d51789c7c10b8ce73f4adc'),(954,'2010-06-07 10:50:10','moralescp@hotmail.com','Rodrigo','Morales gutierrez',0,0,NULL,3127807631,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FBSMTWB; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; WinNT-PAI 26.09.2009; InfoPath.1; .NET CLR 2.0.50727)','d4fe376b87aa76fe0c13b33e0dfddfe1'),(955,'2010-06-07 12:08:09','sege_83@hotmail.com','SERGIO','GUTIERREZ',0,0,NULL,3184630733,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; uE v7; InfoPath.2; uE v7)','76b964b6d55cd17fa91d4be7c8709e5f'),(956,'2010-06-08 13:35:23','lujan_pacheco@hotmail.com','lujan','pacheco',0,0,NULL,3124300867,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB0.0; .NET CLR 2.0.50727)','571854f812133a30a0edd833204eee74'),(957,'2010-06-08 19:34:10','elvia.natol@hotmail.com','elvia','natol',0,0,NULL,3187867915,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.5; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; AskTbATU2/5.8.0.12304)','e5458506a48cae8c283162fba4bb8a38'),(958,'2010-06-08 21:42:40','margarivet@telefonica.net','marga','rivet',0,0,NULL,3363581967,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','6df158c57060d4ed1dbe56e813072591'),(959,'2010-06-09 04:05:59','asegurances@telefonica.net','Nombre','Apellido',0,0,NULL,1343894920,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1; .NET CLR 2.0.50727)','3f623611e15010138bfbf795e48c705a'),(960,'2010-06-09 13:20:26','bibicosu@hotmail.es','Biviana','Alzate',0,0,NULL,3197289054,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','5485efe8b11c1ef0fa50e7963239aade'),(961,'2010-06-09 16:30:24','martareid@gmail.com','Marta','Reid',0,0,NULL,3202851053,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 ( .NET CLR 3.5.30729)','43da4d34a366aed70d38a470a33a282b'),(962,'2010-06-09 20:47:14','ady_rodriguezcorral@hotmail.com','adriana','rodriguez',0,0,NULL,3382995886,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.5; FunWebProducts; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESMX)','6c5c3adcae7fad58e2e16dad849c19e1'),(963,'2010-06-09 22:18:17','loreprimo@hotmail.com.ar','lorena','primo',0,0,NULL,3387600150,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.5; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322)','100a2e884f09b00178856ece3c05305a'),(964,'2010-06-09 22:50:03','efrarumaquetas@hotmail.com','EFRAIN','RUEDA',0,0,NULL,3193630607,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4 (.NET CLR 3.0.4506.2152)','0a4bae4dc61e5875fe34651a49608e6c'),(965,'2010-06-10 12:02:18','bettysabater@hotmail.com','beatriz','sabater',0,0,NULL,3203873566,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; GTB6.5; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','14afe2e7d0d89070d0b90b20c33222c9'),(966,'2010-06-10 13:47:12','raul_morenito_cerro@hotmail.com','raul','sache',0,0,NULL,1335220186,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4','72928e6d77e7ffb56eb7ddc64ba82e96'),(967,'2010-06-10 18:58:05','flaviamarra@hotmail.com','Flavia','Marra',0,0,NULL,3200310519,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; InfoPath.1; .NET CLR 3.0.04506.30)','9e3eea7cbdaae624342d8316588d0ff2'),(968,'2010-06-10 23:27:07','mafrandino54@hotmail.com','Mar','Frandino',0,0,NULL,3121478212,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; msn OptimizedIE8;ESAR)','ffebe0d4929e2ca3eed880b3f70aaca5'),(969,'2010-06-11 08:40:52','larce@arauco.cl','lucia','arce',0,0,NULL,3359020882,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648)','e7ff2a197840f3f1861e104b4637cc8c'),(970,'2010-06-11 16:47:34','monicanoe8@hotmail.com','monica','noe',0,0,NULL,3387393876,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4','47ab5669c7122aed397520dc2b3829a6'),(971,'2010-06-11 16:59:16','phemora@hotmail.com','sandra','garza',0,0,NULL,3183283531,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4','782645abe3ad468497007c2aa73b9b32'),(972,'2010-06-11 17:34:50','m.y.pillco.f@hotmail.com','malvi','pillco',0,0,NULL,3203131208,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4','c99688ad446b379caaad98cca7d48370'),(973,'2010-06-11 19:38:47','anto_malpiedi@hotmail.com','Antonella','Malpiedi',0,0,NULL,3202414988,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','aa0ae1919e786b5eba5a6e3e1c197dad'),(974,'2010-06-11 23:58:14','vikki_rey@hotmail.com','victoria','reynaga',0,0,NULL,3127747507,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','184be1bfd2e1ba0dafc9800268860f4d'),(975,'2010-06-12 00:06:31','maryomar@hotmail.es','luz mary','montoya',0,0,NULL,1135177294,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.5; OfficeLivePatch.1.3; InfoPath.2)','83ceb1439e2e2e409f87804d34d04ee5'),(976,'2010-06-13 00:48:17','davalos_punk@hotmail.com','cesar','davalos',0,0,NULL,3382771454,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','004080930d4b00713b9c977d08d77a94'),(977,'2010-06-13 01:17:00','no_cover1@hotmail.com','Lizeth','Oropeza',0,0,NULL,3383127474,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.2)','f4f135454643a40264234db401012bbc'),(978,'2010-06-13 11:09:49','konissita_390@hotmail.com','constanza','solis',0,0,NULL,3127493962,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','3c796678c07ab25369459d47101016cf'),(979,'2010-06-13 16:11:36','torresguerra_w@hotmail.com','walter','torres guerra',0,0,NULL,3387639997,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','6f42acb1956f6092c26f27ee9d254551'),(980,'2010-06-13 17:24:06','gracielahromero@gmail.com','gracielah','romero',0,0,NULL,3127733058,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322)','25fb408754dbafec69a098516531615d'),(981,'2010-06-13 18:09:06','karenpatricianavarro@hotmail.com','karen','navarro',0,0,NULL,3356288063,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.21022; .NET CLR 3.5.30729; InfoPath.2; .NET CLR 3.0.30729)','b10aa427b94ec452094e0e29efdbb2f1'),(982,'2010-06-13 18:26:06','bquijanes@gmail.com','Nombre','Apellido',0,0,NULL,3198234285,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','08e93db59ab1891a1a6cac129f3eccb6'),(983,'2010-06-14 00:35:04','mavic@yahoo.es','Maria','Victoria',0,0,NULL,3198102811,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 ( .NET CLR 3.5.30729)','1f0b9e9d2bd97cb6c45f8caf5b4f9c8b'),(984,'2010-06-14 01:13:59','blanchi_romeroh@hotmail.com','BLANCA','R.',0,0,NULL,3381267382,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','bb81de50b8da6281525dacc30bb9d953'),(985,'2010-06-14 09:12:25','valeriayanel@hotmail.com','Valeria','Morrone',0,0,NULL,3199260575,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 GTB7.0 (.NET CLR 3.5.30729)','65bba39761d069303847d977578bd0ba'),(986,'2010-06-14 10:10:02','mariumerino@hotmail.com','Maria','Merino',0,0,NULL,1252905147,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FunWebProducts; GTB0.0; .NET CLR 1.1.4322)','6f26dd9c241bac8b7b585d0a5972646d'),(987,'2010-06-14 10:12:56','ale_21_81@HOTMAIL.COM','MARCELA','schiantarelli',0,0,NULL,3187750556,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 (.NET CLR 3.5.30729)','9269f7ceabbf2612899571893642088d'),(988,'2010-06-14 11:42:10','mirtarmando@hotmail.com','mirta','armando',0,0,NULL,3358418698,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','5bdb0b21d120f14950a099d4cfbfea56'),(989,'2010-06-14 13:23:40','kahina_del_Sol@hotmail.com','Kahina','Sol',0,0,NULL,3362669682,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; CMDTDF; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','ab4575d8a9ef4868ee1c5b8fa6f2a29e'),(990,'2010-06-14 13:41:38','seneca_yet@yahoo.es','Rachel','C',0,0,NULL,3196003838,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; TuneUp HTML Client Embedded Web Browser from: http://bsalsa.com/; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.5; OfficeLivePatch.1.3)','fa8544fc3269b882f0284d8334865aa7'),(991,'2010-06-15 11:21:39','s_arri@hotmail.com','silvia','arriola',0,0,NULL,3388802202,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; FBSMTWB; GTB6.4; .NET CLR 2.0.50727)','f1a04e5d2e48643e8bdba9a9ea6f8725'),(992,'2010-06-15 13:19:10','adagonzalezturismo@yahoo.com.ar','Ada','Gonzalez',0,0,NULL,3191318062,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4','640c28e4db5e3808e4192b6abeda4fce'),(993,'2010-06-15 17:07:28','mrtorredemer@hotmail.com','maria rosa','torre de  mer',0,0,NULL,3359907190,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Avant Browser; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c470eab6611f7efe9c653e98c07afe52'),(994,'2010-06-15 19:18:26','noemialemanno@hotmail.com','Noemi','Alemanno',0,0,NULL,3200287038,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; SIMBAR={02E5A4DE-D322-45E0-8DD8-18ED6F160E5A}; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','1840225d5155b4756a91c41fc608614b'),(995,'2010-06-16 03:21:48','thayga@msn.com','Vanessa','Gutierrez',0,0,NULL,1473996545,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; es-es) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16','489739cf4dc97e0b97523ce639382efb'),(996,'2010-06-16 12:40:18','eztellita@yahoo.com','eztellita@yahoo.com','santa stella',0,0,NULL,3197908656,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','257888dcff1c73022259c83f30b6019c'),(997,'2010-06-16 20:48:42','uriel8010d@hotmail.com','uriel','diaz',0,0,NULL,2798827187,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)','9458a8b1d6d1c1271107b72d6b800edd'),(998,'2010-06-16 22:14:57','josy_ephra@hotmail.com','MADALENA','URZUA',0,0,NULL,3387930689,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FBSMTWB; GTB6.4; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729)','af9ef1e0e2fb4f62d5e280b25388fabd'),(999,'2010-06-17 18:11:55','cos.m.gioia@gmail.com','constanza','mancilla',0,0,NULL,3386812543,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506)','41df7e1dfd18a5ab4c2006a39066a067'),(1000,'2010-06-17 18:57:35','cayita_80@hotmail.com','CLAUDIA','PE',0,0,NULL,3194010766,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729)','39bf636bf73205df64df0c2ca96a3dc3'),(1001,'2010-06-17 19:47:54','verchu_15_21@hotmail.com','veronica','briglia',0,0,NULL,3363154624,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4','eb66fac2752ebe7a836211b21c6d6549'),(1002,'2010-06-18 14:49:51','ceciliafigueroasm@hotmail.com','Cecilia','Figueroa',0,0,NULL,3388395621,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; FBSMTWB; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','dfbc0bdab3373f47d40e00574053cb0e'),(1003,'2010-06-19 07:08:06','euge_yenni09@hotmail.com','eugenia','quiroga',0,0,NULL,3202475401,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','9f1865b8a0eb80899910de955ef810a7'),(1004,'2010-06-19 13:16:55','ipc@incalfer.com','pascual','catanzaro',0,0,NULL,3388970080,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9','6378032b6b835295ff129ef2532780b4'),(1005,'2010-06-19 14:43:13','fabiola_1981@live.com','FABIOLA','FALLAS',0,0,NULL,3385310726,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 (.NET CLR 3.5.30729)','2839de3d0d9ff86b387e0a691cbbe333'),(1006,'2010-06-19 16:27:42','saddrac1@yahoo.es','saddrac','castro',0,0,NULL,3127949641,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 1.0.3705; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','4c847930cdd2b0813437c90b21203ef4'),(1007,'2010-06-19 16:36:06','fabiana.castineira@allianz.com.ar','fabiana','castineira',0,0,NULL,3129908353,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.2) Gecko/20100115 Firefox/3.6','cdd4a1e4c042e0b6794d9c9f31b03265'),(1008,'2010-06-20 02:49:48','movalefont@hotmail.com','monica','leal',0,0,NULL,3361067522,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','c8f00e6c80a5b35ebb22f2ffe35850bd'),(1009,'2010-06-20 12:16:38','cora25h@hotmail.com','loko','envia',0,0,NULL,3381893237,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB0.0; msn OptimizedIE8;ESES)','fbb82e48fea5b126a5ef114743868741'),(1010,'2010-06-20 12:40:46','yahairau06@yahoo.com','yahaira','ure',0,0,NULL,3386921530,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB0.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; AskTB5.6)','0431b44d378b06c7b7f143a89d0e5db8'),(1011,'2010-06-20 14:06:54','carolina_herrera15@hotmail.com','carolina','herrera',0,0,NULL,3202520525,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; WinuE v6; msn OptimizedIE8;ENUS)','f8f7a610c14ca663fd7cacd80bde351f'),(1012,'2010-06-20 14:54:14','claasan@yahoo.com.ar','Nombre','Apellido',0,0,NULL,3188961473,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1)','cfbb60cf42c306b7c294d45ac71e52ec'),(1013,'2010-06-20 17:37:29','noragrim@hotmail.com','Nora','Grimaldo',0,0,NULL,3181410488,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB0.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2; OfficeLiveConnector.1.5; OfficeLivePatch.1.3; AskTB5.6)','de379e28e861fa49539ec9e9250bcfc7'),(1014,'2010-06-20 18:45:04','mariablancamacian@arnet.com.ar','Maria','G Macian',0,0,NULL,3127687541,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.5; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','c9272d745e4c48195748b7a48e76ee02'),(1015,'2010-06-20 20:06:54','pintura.valot@gmail.com','alejandra','valot',0,0,NULL,3199446781,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 (.NET CLR 3.5.30729)','a6f28868867949e36f4368a35bb177b9'),(1016,'2010-06-21 01:06:03','nachojfernandez@hotmail.com','Ignacio','Fernandez',0,0,NULL,3363658557,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','172aebabd403699aa5571fa13410fa06'),(1017,'2010-06-21 13:44:44','GEMMAGOLFI1980@HOTMAIL.COM','Gemma','de la Cruz',0,0,NULL,1501613546,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152)','552042f0a4e94717c39eba6b1a297066'),(1018,'2010-06-21 18:04:32','olgazanni@nodosoft.com.ar','OLGA','ZANNI',0,0,NULL,3388909005,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB0.0; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','07d7bc169c520a806159640f1a15d5e2'),(1019,'2010-06-21 18:53:32','dgutierrezt@hertz.cl','daniel','gutierrez',0,0,NULL,3362763048,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','949809ab8fbe5c490f522577418db7e0'),(1020,'2010-06-21 21:51:22','morrisnabis@hotmail.com','Jos','P',0,0,NULL,3387951000,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','480aabe103e73f212762f874d0668a90'),(1021,'2010-06-21 23:45:29','thanniak@gmail.com','thannia','knuckey',0,0,NULL,3194319258,'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4','c561da6f921aa3317c8a78e634bc03b1'),(1022,'2010-06-22 16:41:00','papiricardo-11@hotmail.com','RICARDO','COMBITA GOMEZ',0,0,NULL,3194011005,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2)','8319227586c7f1095387714383d843d4'),(1023,'2010-06-22 16:53:08','adydav@prodigy.net.mx','adriana','davalos',0,0,NULL,3146087582,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','0e983682310adbbcda444b06d00ac4f4'),(1024,'2010-06-22 17:32:47','alimazzei@hotmail.com','alicia','mazzei',0,0,NULL,3189676064,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; AskTB5.6)','fb1ba1426a077f1024896cd9944d4611'),(1025,'2010-06-22 23:04:18','rotsen169@hotmail.com','Nestor','Aguirre',0,0,NULL,3181472445,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; .NET CLR 1.1.4322)','19a064742b6dd4f45f298c4d3d3ca01e'),(1026,'2010-06-23 16:05:03','ampague74@hotmail.com','Amparo','Guerrero Morantes',0,0,NULL,3188310449,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 1.1.4322; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; msn OptimizedIE8;ESCO)','6ba816a7bde6c60b278d999a8e74f068'),(1027,'2010-06-23 16:17:19','alonsomariaf@hotmail.com','maria fernanda','alonso',0,0,NULL,3125865140,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 (.NET CLR 3.5.30729)','9aa6ee3f5d37006ffba1317e60820444'),(1028,'2010-06-23 21:15:52','vlagosvidal@gmail.com','viviana','lagos',0,0,NULL,3388053920,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLivePatch.1.3; OfficeLiveConnector.1.5; .NET CLR 1.1.4322)','17ea2046dc476285bb1851d611dcb237'),(1029,'2010-06-23 21:32:04','ju_emontes@hotmail.com','judith','Apellido',0,0,NULL,3198980444,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.5; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c5bedccecf7a59e97b26029d440e83c5'),(1030,'2010-06-24 17:57:48','cicigra@hotmail.com','gra','ciccioli',0,0,NULL,3202785342,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','87de2bb13572961530367a8fe6cce5cb'),(1031,'2010-06-24 19:00:31','elena.ethel@hotmail.com','Elena','Gonzalez',0,0,NULL,3190824225,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.4) Gecko/20100611 Firefox/3.6.4','8bd5f5d99e6f3c4f1c9df149dda95cf8'),(1032,'2010-06-24 19:33:32','jorgecoco@hotmail.com','jorge guillermo','orellana choque',0,0,NULL,3180471185,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','5b49793f8299676d80496af1bef66067'),(1033,'2010-06-24 20:08:06','finultimo_infinito@yahoo.com','JC','Recinos',0,0,NULL,3194172449,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','3ed57797e8217805fa34d7851d318676'),(1034,'2010-06-24 20:50:49','diegmald@gmail.com','Diego','Maldonado',0,0,NULL,3193954629,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','38f63c09cbec021509f74fc3eddf0be1'),(1035,'2010-06-25 05:20:21','ads@alberto-delso.es','alberto','delso',0,0,NULL,3575377210,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.21022; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.5; OfficeLivePatch.1.3)','1adf815ad0dd43a51a0322c4806fbee7'),(1036,'2010-06-25 14:19:35','roldanemilio@yahoo.com.ar','Emilio','Rold',0,0,NULL,3361044499,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 1.1.4322)','0b37446cc1b97c488715e743decac074'),(1037,'2010-06-25 18:07:28','claudiabozzola@hotmail.com','Claudia','Bozzola',0,0,NULL,3189653171,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.4; OfficeLivePatch.1.3)','fda1f2bcd76da86751b2f1b18442f302'),(1038,'2010-06-25 19:58:07','evafuentes52@hotmail.com','Eva Susama','FUENTES',0,0,NULL,3129544165,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/4.0; FunWebProducts; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.5; OfficeLivePatch.1.3; AskTbCDS/5.8.1.11880; msn OptimizedIE8;ESAR)','581d08573a3ba6dd5ab44b07b13cf456'),(1039,'2010-06-25 21:15:46','mariagracielamoreno@live.com.ar','GRACIELA','MORENO',0,0,NULL,3359448639,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; Tablet PC 2.0)','b9e0f546d1f4cf57d0ae8b66761776e8'),(1040,'2010-06-26 11:16:39','awhite@speedy.com.ar','alicia','white',0,0,NULL,3124304124,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; Tablet PC 2.0)','1b4eaca46bd830e7d7d17260bc4c6831'),(1041,'2010-06-26 15:21:56','yorzaitflores@yahoo.com','yorzait','flores',0,0,NULL,3360879058,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','88e9e12dc9e2ce2f2b9d5b9aefeb6520'),(1042,'2010-06-26 16:44:43','hansengraciela@hotmail.com','graciela','hansen',0,0,NULL,3196699596,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/4.0; GTB6.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET CLR 1.1.4322)','164583e87b8de3f6cf19239fe9f402c7'),(1043,'2010-06-26 20:27:55','lilianaaguilera65@gmail.com','liliana','aguilera',0,0,NULL,3187987769,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3','db0defc06ef95b803f7205fda2c30281'),(1044,'2010-06-27 18:27:01','eugeniacarboni@hotmail.com','eugenia','carboni',0,0,NULL,3199373324,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.10) Gecko/20100504 Firefox/3.5.10 (.NET CLR 3.5.30729) FBSMTWB','7ab5271a1986ac69cd0d2a076a761ac4'),(1045,'2010-06-27 21:00:47','eve19501@hotmail.com','belen','lopez',0,0,NULL,3200228027,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; InfoPath.1; ${USR_AGNT})','4f5d3a9633b742d6c9ff2e2eaff4b5c3'),(1046,'2010-06-27 21:08:48','beto1177@hotmail.com','alberto','galli',0,0,NULL,3128772025,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.2.4) Gecko/20100611 Firefox/3.6.4','3118a06ed87695684e0c3805f77f67b0'),(1047,'2010-06-28 13:47:22','nancypelandino@hotmail.com','Nancy','Pelandino',0,0,NULL,3188794458,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB0.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','5f944f5dad1ec288e4e330d9ca3663d4'),(1048,'2010-06-28 18:50:02','JUANA_DEACC@HOTMAIL.COM','juana','chavez',0,0,NULL,3146809843,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; uE v7; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; uE v7)','740735beea5f8cb1f58c21a2db63e552'),(1049,'2010-06-28 18:53:58','mar_josebz@hotmail.com','maria jose','salazar',0,0,NULL,3182354641,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SIMBAR={312BA04D-56B1-4C6A-A279-568655225F6C}; InfoPath.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','00cc355d806fbd6909953bedd5d42120'),(1050,'2010-06-29 10:03:53','gm_silv@hotmail.com','gustavo','martinez',0,0,NULL,3146342130,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.5; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','093e8e000f5b0c909b577c9ff625e4a3'),(1051,'2010-06-29 19:20:12','disarodriguez@hotmail.com','Nombre','Apellido',0,0,NULL,3187988399,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6 ( .NET CLR 3.5.30729)','eddea7ac5bd3321d4a9c717f8412fd23'),(1052,'2010-06-29 19:51:33','gorgona2222@hotmail.com','Paola','Parra',0,0,NULL,3196797394,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4','2c9caa08bc17ac2cf51b7fff39a8852d'),(1053,'2010-06-29 20:33:13','sandrajuliao68@yahoo.es','sandra','juliao',0,0,NULL,3125850474,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','030a0d0326bed663239162a54860b0d9'),(1054,'2010-06-29 20:52:55','miguelinatripaldi@hotmail.com','Miguelina','Tripaldi',0,0,NULL,3388632743,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; WinuE v6; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; WinuE v6)','ccd41306176ada4cfe81671e7fd584ab'),(1055,'2010-06-30 12:21:29','clarabs@fiberel.com.ar','Clara','Belran',0,0,NULL,3363774010,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.3; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','916a935db0eb48ef195940da20799c60'),(1056,'2010-06-30 21:37:20','martaclaverie@yahoo.com.ar','MARTA','CLAVERIE',0,0,NULL,3189659811,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.5; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','52748e41e519792e7dec96ddf48e3de6'),(1057,'2010-07-01 09:59:03','vickyflores_11@yahoo.com.ar','myriam','flores',0,0,NULL,3358412459,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; MEGAUPLOAD 1.0)','8ccf479c0c4cc1ae9f85769aca418b99'),(1058,'2010-07-01 13:19:20','gracielabijou@hotmail.com','graciela','villegas',0,0,NULL,3358172055,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','d34deeba489e64708d3f02bfd870385a'),(1059,'2010-07-01 14:54:52','lanenafeline@hotmail.com','lourdes','ovalles',0,0,NULL,3388161408,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)','e2f0c4f13c8fc35e00636708b93e09a3'),(1060,'2010-07-01 17:37:52','ivandj61@hotmail.com','IVAN DARIO','JIMENEZ A',0,0,NULL,3360377882,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB0.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','4296d7382b2452a9034e998f866dea0c'),(1061,'2010-07-01 18:38:29','conchijuz@yahoo.es','CONCHITA','JUZGADO',0,0,NULL,3190243252,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','1e3e916d2a8f260ce00fdbdbbceebd3a'),(1062,'2010-07-01 21:15:39','marcusadru21@hotmail.com','adriana','medina',0,0,NULL,3128578512,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; MathPlayer 2.20; GTB6.5; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESES)','8019902fc7c84ddbfd17b8fa273ba452'),(1063,'2010-07-01 22:07:12','macomosil@hotmail.com','consuelo','moyano',0,0,NULL,3193999430,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','41dcecf7e81431676620593f423ef937'),(1064,'2010-07-01 22:50:54','ginan.u@hotmail.com','GIMENA','NU',0,0,NULL,3128568236,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','09c3f858b33fb0d8286da85b4f6c492d'),(1065,'2010-07-02 00:44:33','susylu13@yahoo.com','susana','ochoa',0,0,NULL,1641671059,'Mozilla/5.0 (Linux; U; Android 2.1-update1; es-us; Droid Build/ESE81) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17','146c156682e0b0ad5976753041457b55'),(1066,'2010-07-02 06:46:54','iwalena@yahoo.com.ar','maria elena','Apellido',0,0,NULL,2862286347,'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)','f75c30e135631da90e37ea575a04202b'),(1067,'2010-07-02 12:52:34','margarita_lopez@proymoda.com','Margarita','L',0,0,NULL,3360438345,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)','726d0fcb62d34f9643e65ac964de1ab7'),(1068,'2010-07-02 14:30:09','nancygt@hotmail.es','nancy','toro',0,0,NULL,3199267962,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1)','845e50814dc80874da072848a182c10a'),(1069,'2010-07-02 16:01:40','cvomiero@the-beach.net','cvomiero@the-beach.net','Vomiero',0,0,NULL,3203861333,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.4; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','e7ef30a9dcd799e65d0e8eeab32d0252'),(1070,'2010-07-02 19:15:18','carolarre7@yaho.com.ar','gladys','g',0,0,NULL,3355703789,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6','f9cbbe148ca8f9b3fc61d356649af95a'),(1071,'2010-07-02 19:52:54','hdvelasco@fibertel.com.ar','Violeta','Maresca',0,0,NULL,3203810918,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; FBSMTWB; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','240618b8580392eb60dc7fbea083321d'),(1072,'2010-07-02 20:09:39','fasanojorge@coyspu.com.ar','cristina','montapponi',0,0,NULL,3387620527,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c341fad6edb02a6eb68a882127149f0d'),(1073,'2010-07-03 05:26:15','orlando.madera@hotmail.com','orlando','cortes',0,0,NULL,3192134636,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.86 Safari/533.4','9b2c637e1e647e8b06b4bc3be9c0ab35'),(1074,'2010-07-04 11:32:36','griseldaalcaras@hotmail.com','griselda','alcaras',0,0,NULL,3202568495,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','864e4519c55623f2e9f5eb17e7c64fad'),(1075,'2010-07-04 14:59:59','lomasavi@hotmail.com','Mario','Santana',0,0,NULL,1436285678,'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.86 Safari/533.4','e239b9670cf84401c956713df03e619e'),(1076,'2010-07-04 17:01:16','rodas_galeria@hotmail.com','jairo','rodas',0,0,NULL,3125872478,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; AskTB5.6)','c645c99bc4aa640e00a560649e8b6b02'),(1077,'2010-07-04 20:58:35','adri-botta@hotmail.com','adriana','eberhardt',0,0,NULL,3358274212,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','6872df977a4f8afadf49b8e797a40e09'),(1078,'2010-07-05 20:00:16','magalitorres81@gmail.com','magali','torres',0,0,NULL,3290182657,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2; .NET4.0C)','98682636e568e4a13b5a841c6f504290'),(1079,'2010-07-06 16:12:59','hiplot.jennifer@hotmail.com','jennifer','vargas',0,0,NULL,3147372973,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','1e3922a8e056a599fb22825350aa8b4f'),(1080,'2010-07-06 21:14:51','alejamed_@hotmail.com','alejandra','ceballos',0,0,NULL,3204246256,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; InfoPath.2; .NET CLR 2.0.50727; MSN OptimizedIE8;ESES)','34f771204a3d0ff4d12c63fbda2ff4c9'),(1081,'2010-07-06 22:58:57','hazael_vidal@hotmail.com','hazael','vidal',0,0,NULL,3382778045,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)','8a524a93e7b54a4f1a3e1865c1822e40'),(1082,'2010-07-07 09:52:03','jorgeleonardo77@hotmail.com','leonardo','robledo',0,0,NULL,3192106829,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)','25227b24da9953c0f04f216d15f64557'),(1083,'2010-07-07 11:18:04','barby1591@gmail.com','yadira','chavez marquez',0,0,NULL,3382174216,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.2; .NET CLR 2.0.50727)','c918574d39cde3f0500b04f2bdf255e8'),(1084,'2010-07-07 11:23:11','anita_0184@hotmail.com','Anahi','Ferrero',0,0,NULL,3200345992,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 2.0.50727)','bb34f106c195b7b894cb7387f3c3fca6'),(1085,'2010-07-07 17:12:48','cra.lpalcuino@gmail.com','ana','sandoval',0,0,NULL,3362746051,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; Alexa Toolbar; MEGAUPLOAD 2.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','35b2112ef0e98be86e51d645b8075946'),(1086,'2010-07-07 23:32:14','murolo@racsa.co.cr','PATRICIA','MUROLO',0,0,NULL,3385188202,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6','6f9acab56161db6f5a5bfdc26ff1fc69'),(1087,'2010-07-08 09:15:39','cristin.nati@yahoo.es','cristina','ferreiro',0,0,NULL,3159690774,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','4b89d9b007d105c361de6f24b04a4f88'),(1088,'2010-07-08 09:54:03','ramona1815@hotmail.com','sandra','cortes',0,0,NULL,3197191317,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.1.10) Gecko/20100504 Firefox/3.5.10 (.NET CLR 3.5.30729)','4acdfa6714a9d7a6c482e56f9c98f6ed'),(1089,'2010-07-08 10:15:41','mifmilla@yahoo.com.ar','Maria Ines','Fernandez',0,0,NULL,3129879203,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.4; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 1.0.3705)','2b188469f492e0b39012bd74405c8bd2'),(1090,'2010-07-08 11:31:45','monik.andre@hotmail.com','monica','mu',0,0,NULL,3198487702,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4','d12ce07a930a2fbc3213925a33362075'),(1091,'2010-07-08 13:45:19','giovita_1@hotmqail.com','Giovana','Vargas',0,0,NULL,3199538141,'Mozilla/5.0 (X11; U; Linux x86_64; es-CL; rv:1.9.2.6) Gecko/20100628 Ubuntu/10.04 (lucid) Firefox/3.6.6','02efd20d5c5892b80c6e75e90ea689e9'),(1092,'2010-07-08 15:11:00','nubiacamachogikl@hotmail.com','Nubia','Camacho Gil',0,0,NULL,3123412019,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6','b04c1b1eeb1c90619f236e4d2a6438f8'),(1093,'2010-07-08 15:41:43','norapaschiero@hotmail.com','NORA','PASCHIERO',0,0,NULL,3196843734,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','ea65f197b5075b33a431680f9a0f70be'),(1094,'2010-07-08 18:10:07','anaclaravelotti@hotmail.com','ana clara','velotti',0,0,NULL,3196797149,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 1.1.4322; .NET CLR 3.0.30729; OfficeLiveConnector.1.5; OfficeLivePatch.1.3; InfoPath.2)','67beab230db9eb8740d583033c2c2c15'),(1095,'2010-07-09 21:10:03','meli_415@hotmail.com','meli','diaz',0,0,NULL,3128557954,'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4','a6262171f5fa41183b1921fcedff0f4e'),(1096,'2010-07-10 09:37:51','tania@tiptravel.com.ar','tania','fern',0,0,NULL,3191304279,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB0.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)','104cf07f1731b235bd0478b11ed91238'),(1097,'2010-07-10 13:19:46','bella_elizabeth06@hotmail.com','elizabeth','sanchez',0,0,NULL,3196882771,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.5; OfficeLivePatch.1.3)','0f4aecc7def7b99bffdfd5c6f1f925b6'),(1098,'2010-07-10 16:53:05','mardelvivi@yahoo.com.ar','viviana','gatti',0,0,NULL,3199386723,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4','0c1a76b852c838193a8f2189f24a5669'),(1099,'2010-07-11 01:30:35','lupita_vasquez@msn.com','lupita','vasquez',0,0,NULL,3182483350,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/4.0; GTB6.5; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.3; msn OptimizedIE8;ENUS)','85f7ba4bb4816737162c42f36c96168f'),(1100,'2010-07-11 11:08:13','gaby0473rc@netscape.net','Wendy','Duvall',0,0,NULL,1144169606,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)','2c1c0178e78e579cd4661edea187fd4c'),(1101,'2010-07-11 16:56:14','nankegalj@hotmail.com','NANCY','KEGALJ',0,0,NULL,3127751178,'Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.1.10) Gecko/20100504 Firefox/3.5.10 ( .NET CLR 3.5.30729)','3e4143a71861dd2deefcba4752c1dc33'),(1102,'2010-07-11 17:07:47','santosnancy03@hotmail.com','nancy','santos',0,0,NULL,3388689777,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5','1bdeb27080e50fe4c5e1f9e2440f9039'),(1103,'2010-07-11 19:45:57','amanecerconalegria@hotmail.com','beatriz','de santo',0,0,NULL,3187881602,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8','7007e7788c8aa22a8f7e2ccce4e151c7'),(1104,'2010-07-11 21:25:21','mechis102@hotamil.com','maria esperanza','charria',0,0,NULL,3194220282,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.5; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; AskTbMYC/5.8.0.12304)','c1fd2f83c8485f5a835eeeb067893fdb'),(1105,'2010-07-11 21:28:51','cristyrivera@hotmail.com','maria cristina','rivera espinoza',0,0,NULL,3362800619,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; Tablet PC 2.0)','abda637409608f1692a676ea92f63fff'),(1106,'2010-07-11 21:47:09','mao38671@hotmail.com','maria rosa','alarcon',0,0,NULL,2855508932,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','cf75e8a713f2ef0492e05b27da089413'),(1107,'2010-07-12 12:20:47','argclimatizacion@telviso.com.ar','Mariana','Perez',0,0,NULL,3187906444,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1)','566997186b92e0a32bd26266895829ef'),(1108,'2010-07-12 16:00:09','r.harmsen50@hotmail.com','rosa','harmsen',0,0,NULL,3190430231,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; msn OptimizedIE8;ESES)','de3924a34ce8762ef9983d648f518fca'),(1109,'2010-07-12 17:22:19','mmiguel@gawab.com','Nombre','Apellido',0,0,NULL,3359379430,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET CLR 1.1.4322; AskTbBCPA/5.8.0.12304)','c1fc76a7503380569653e5b81c37f39f'),(1110,'2010-07-13 11:02:43','jime_arroyo@yahoo.com.ar','Jimena','Arroyo',0,0,NULL,3199210487,'Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.9.2.3) Gecko/20100423 Ubuntu/10.04 (lucid) Firefox/3.6.3','04a44288e330a289766d0cb8c417ba20'),(1111,'2010-07-13 12:22:47','macrislo52@hotmail.com','cristina','locatelli',0,0,NULL,3388724803,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','d415917f2f518a7227448b468d4ebeba'),(1112,'2010-07-14 19:33:00','xica_bull@hotmail.com','Michelle','Saavedra',0,0,NULL,3198391421,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-CL; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6 (.NET CLR 3.5.30729)','352e0024ea3297b0a343c60d948e20d0'),(1113,'2010-07-15 10:43:32','virginia@spinmyc.com','virginia','santos',0,0,NULL,1361264678,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.1)','71185cd0fa88aee42eec73cc7047c670'),(1114,'2010-07-15 16:32:03','susana22susana@hotmail.com','susana','susanq',0,0,NULL,3190375500,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; WinuE v6; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','ffe448bf216a0b52e372b6098af7a7cd'),(1115,'2010-07-15 16:49:57','stephanycr@hotmail.com','stephany','casta',0,0,NULL,3182482404,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; AskTB5.6)','e764e36692aed68109b119935e581272'),(1116,'2010-07-15 17:05:24','marcelaaburto_17@hotmail.com','marcela','aburto',0,0,NULL,3121273361,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-CL; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6','349d6f70c7c609a17b2ca9fcdd04f5d9'),(1117,'2010-07-15 18:55:59','hija_lupita@live.com.mx','claudia lucia','rosales medellin',0,0,NULL,3146479212,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; FBSMTWB; FunWebProducts; GTB6.5; InfoPath.2; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; msn OptimizedIE8;ENUS)','e130d6c72deeb27b57cccd67de7e2f88'),(1118,'2010-07-15 20:59:09','josaud@yahoo.com','jorge','saud',0,0,NULL,3198310234,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; GTB6; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; InfoPath.2; .NET CLR 3.0.30729)','e2b910ac28aa8598092e87169f491bee'),(1119,'2010-07-16 17:26:49','eonzalez@unitecnica.net','efrain','gonzalez',0,0,NULL,3189530049,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4','ac7e8055f1653f273b5d92b55273534f'),(1120,'2010-07-16 18:50:38','monica_senn@soon.com.ar','Monica','Senn',0,0,NULL,3358274260,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;  Embedded Web Browser from: http://bsalsa.com/; .NET CLR 2.0.50727; InfoPath.2)','42915db98b0ad7e8aba26d4dd0e7ff10'),(1121,'2010-07-16 21:58:30','almaleticia@cantv.net','ALMA','ASTORGA',0,0,NULL,3186028273,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.5; .NET CLR 2.0.50727; eSobiSubscriber 2.0.4.16; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322; OfficeLiveConnector.1.4; OfficeLivePatch.1.3)','4b8624253e7b8f52ad485c57a7704cc5'),(1122,'2010-07-16 23:59:56','lyumpa@gmail.com','Laura','Yumpa',0,0,NULL,3124335078,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','6a667de25424493e737cfe5139472b03'),(1123,'2010-07-17 15:24:52','donnelolatini@hotmail.com','matin','latini',0,0,NULL,2833416788,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','8aa6379c02bc635e7c376737b9ab8929'),(1124,'2010-07-17 17:23:25','stellatrivi@hotmail.com','stella','trivi',0,0,NULL,3125857118,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; InfoPath.1)','3ddc70ea0f5fe0f4bcf60027c2377436'),(1125,'2010-07-17 18:38:01','lcd16@hotmail.com','laura','c',0,0,NULL,3182317375,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.5; .NET CLR 1.1.4322; InfoPath.1; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; AskTbNG1V5/5.8.0.12304)','f6c833b59c260e238fe2a0031a8346e3'),(1126,'2010-07-17 19:30:08','mmacchi@hotmail.es','SILVINA','LEUZZI',0,0,NULL,3196795999,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16','86084cf8334a5cb62e876a36936acee0'),(1127,'2010-07-18 11:56:33','alco39@hotmail.com','ANA','ORDONEZ',0,0,NULL,3187797776,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.30729; Tablet PC 2.0; .NET CLR 3.5.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','46c24ed7b2531f83ed331c22d3cc2162'),(1128,'2010-07-18 12:13:24','manzanoc2002@gmail.com','Eugenio','Manzano',0,0,NULL,3361020131,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5','716a98e1d34e834b48ccccecbdd97dde'),(1129,'2010-07-18 15:30:42','carla@remaxuno.com.ar','Carla','Castro',0,0,NULL,3388822770,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','4682b320f9d51ca8f22d4c825561b999'),(1130,'2010-07-18 16:57:24','d.aliov@hollmail.con','lida','orozco',0,0,NULL,3192294841,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','970146baf35cd7c88bb2ab9ee1cdcb6e'),(1131,'2010-07-19 12:57:21','fliavallejo36@hotmail.com','Nombre','Apellido',0,0,NULL,3388822770,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','d85fec73bce081264dc0a69fc4a984bd'),(1132,'2010-07-19 13:25:29','blancazanni@hotmail.com','blanca','zanni',0,0,NULL,3387404637,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)','97ab223edfca39c3b5b12f9ffc99ce3d'),(1133,'2010-07-19 21:08:29','patycordovay@hotmail.com','patricia','cordova',0,0,NULL,3182239958,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.3; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','e21151addcbbc9ed63777a355fd497c7'),(1134,'2010-07-19 21:22:55','aron_101_2@hotmail.com','eduardo','leyva espinoza',0,0,NULL,3363435541,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)','b26638b251962f1e25b8c47cc372950c'),(1135,'2010-07-20 12:24:37','lili_torrecillas@hotmail.com','Lili','Apellido',0,0,NULL,3388822770,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','727184af06c68bb8644f00a1c99e5420'),(1136,'2010-07-20 14:49:14','acuariana1951@hotmail.com','juana','luna',0,0,NULL,3386214957,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6.5; .NET CLR 1.1.4322; .NET CLR 2.0.50727; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; msn OptimizedIE8;ESAR)','e8ac63ea275be2c44c1e43d0876203d1'),(1137,'2010-07-20 16:04:26','VISIONEXCEL@HOTMAIL.COM','MIRTA','FUCHS',0,0,NULL,3202386169,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.5; SIMBAR={19634735-4217-47D8-BBBA-71E727EFFD78}; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','02c6e21d1053660cc52b312b1800f005'),(1138,'2010-07-21 08:56:15','susancer@argentina.com','Susana','Apellido',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','d4b4fd2489a54149340faaa94947b818'),(1139,'2010-07-21 08:56:32','panxiwi_miley@hotmail.com','Francisca','Apellido',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','67a23376155072eaf958778c6c50a8a6'),(1140,'2010-07-21 08:57:45','gvaldez854@hotmail.com','Gerson','Valdez',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','3983cdf058e1acc3d733d8e159b2ecde'),(1141,'2010-07-21 08:58:51','rrougemoda@hotmail.com','Rosa','Sanchez',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','311caa99ee4310ba8c4c60ba28f54dd5'),(1142,'2010-07-21 08:59:03','rougemoda@hotmail.com','Rosa','Sanchez',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','186c53b3295e19cc7c46d70ed61e5dc6'),(1143,'2010-07-21 08:59:30','gatita_1998dany@hotmail.com','Daniela','Diaz',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','490b99d50c4bc35149ad89217a199f10'),(1144,'2010-07-21 08:59:49','cecialbeti@gmail.com','Cecilia','Apellido',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','2d632151e2b7db39e27fbf7c149c1c50'),(1145,'2010-07-21 09:00:06','roci_ch@hotmail.com','Rocio','Apellido',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','6779959d757a332bacf7dc840e81f8dd'),(1146,'2010-07-21 09:01:00','claudiadiazsanta@hotmail.com','Claudia','Diaz',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','0917b335048449f347558c0b36c9bd5b'),(1147,'2010-07-21 09:01:18','fliaenrico@powervt.com.ar','Gabriela','Apellido',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','0ec516cba84c8396006bbb0f0f040d93'),(1148,'2010-07-21 09:02:04','yuridia_linu@hotmail.com','Yuridia','Apellido',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','4a65c942c5e8094ffe1529be5f911f89'),(1149,'2010-07-21 09:02:23','anaopera@yahoo.com.ar','Ana Cecilia','Apellido',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','6e78210bf33a7a282a74b0ecb02eca7e'),(1150,'2010-07-21 09:38:19','AZUL_DELFIN1@HOTMAIL.COM','Lorena','Lopez',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','ceaebe61e71c0433122a919003ea3a7d'),(1151,'2010-07-21 09:39:40','gabofperez@yahoo.com.ar','Gabriela','Perez',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','40b79a19fd6b41ac720a51f7098748a7'),(1152,'2010-07-21 09:41:04','dsoler@samtra.com.ar','Daniel','Soler',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','1ea2cad26afa3f442ec67bdffda6cba9'),(1153,'2010-07-21 09:41:36','pcmonik@hotmail.com','M','Cantaro',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','d64e62de6d5aff37b6805842c3dfbd21'),(1154,'2010-07-21 09:41:56','marydiaz122@hotmail.com','Mary','Diaz',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','0ffa039b1c662ddb1a365f601739f104'),(1155,'2010-07-21 09:42:35','lccvaldez@hotmail.com','Nombre','Apellido',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','2ffb6b111ba67f06a7ddb68fdc1b7efb'),(1156,'2010-07-21 09:43:01','chicasua-1@hotmail.com','Rocio Cancion','Suarez',0,0,NULL,3196616334,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB6.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)','11823718a1e9b071130e4be1f0543ebf'),(1157,'2010-07-21 12:04:38','anamart5@yahoo.es','ana','martinez garcia',0,0,NULL,1407623982,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.10) Gecko/20100504 Firefox/3.5.10','07e39796204ce47a945f7d076f2e9dd2'),(1158,'2010-07-21 13:20:40','sandrazulay@hotmail.com','sandra zulay','martinez',0,0,NULL,3187795221,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; Creative AutoUpdate v1.40.01)','af33b2937616c6e7d8f68e3cab9e6838'),(1159,'2010-07-21 23:01:45','miboniv@hotmail.com','loli','cignuck',0,0,NULL,3387754054,'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4','4e8ec6a0f098fdcc64682efb73eea0b6'),(1160,'2010-07-22 07:38:11','samy.ana@gmail.com','ana','Zamorano',0,0,NULL,3275192682,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.5; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','c0b17a05860a685deeb2430fa6f1f71c'),(1161,'2010-07-22 17:48:42','harybel@hotmail.com','benelope','de valencia',0,0,NULL,3128011658,'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6','7ac8b4e4af49c212231186d89e2be3cd'),(1162,'2010-07-22 19:57:13','requenamara@hotmail.com','mara','requena',0,0,NULL,3200295817,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)','444be3404d801b117f27fcccd4becbc4'),(1163,'2010-07-23 08:38:54','hekerd@yahoo.com.co','doriana','heker',0,0,NULL,3192385774,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.11) Gecko/20100701 Firefox/3.5.11','a1490d8f49233fb3b30a9c0fcc74f0f4'),(1164,'2010-07-23 09:14:39','eduardoje1@yahoo.es','eduardo','jaramillo',0,0,NULL,3195926782,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; GTB6.5; .NET CLR 2.0.50727)','c51b45a2764bf852d73b653658ba3b8c'),(1165,'2010-07-23 16:13:03','avilachary@yahoo.com','chary','a',0,0,NULL,3180817677,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)','3e51d67a622bc73f0580363f1aa6a466'),(1166,'2010-07-23 19:29:47','aliciajubany@hotmail.com','ALI','Apellido',0,0,NULL,3202415146,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','965adb6a98c723b3742ce11a5a4ffcfb'),(1167,'2010-07-23 22:31:38','ecanuri@gmail.com','Eva','Canuri',0,0,NULL,3188972560,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.11) Gecko/20100701 Firefox/3.5.11','ae3e758af8b086ab5861a6ad9b24ea30'),(1168,'2010-07-23 22:35:16','cristinagullo@hotmail.com','Cristina','Gullo',0,0,NULL,3127735277,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.5; OfficeLivePatch.1.3)','5bfd9d03152cbfe2eb205cbdb6c5cc1a'),(1169,'2010-07-24 00:43:43','mariapena1923@hotmail.com','maria isabel','pe',0,0,NULL,3182349846,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; OfficeLiveConnector.1.3; OfficeLivePatch.0.0)','c199a116d5bd681c55de502de0514f96'),(1170,'2010-07-24 06:53:56','steladragoman@yahoo.com','STELA-ANA','ALBU',0,0,NULL,1335601427,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)','28e37d4c6bf97633f78ad6677f2c7ae7'),(1171,'2010-07-24 09:52:31','claudiazavala8a@yahoo.com.mx','claudia','zavala',0,0,NULL,3181217908,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; HPNTDF)','129ea3943660d8fa1848f3c7d2e1ffff'),(1172,'2010-07-24 12:48:40','malegiraldo@yahoo.com.ar','MALE','GIRALDO',0,0,NULL,3360818111,'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9.2.7) Gecko/20100713 Firefox/3.6.7','68bd550ef2b921f410a5300c4e65d2da'),(1173,'2010-07-24 12:59:21','isarey_77@hotmail.com','blanca','reyes',0,0,NULL,3198387624,'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4','00c450db04b4b46b6e8904dca291c29c'),(1174,'2010-07-24 13:29:26','reynabeatriz@hotmail.com','Mabel','Peretti',0,0,NULL,3199419402,'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; WinuE v6; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; WinuE v6)','6792d3cca8e38ee53b1fc24b882a8d92'),(1175,'2010-11-01 15:55:41','soniyjacob@gmail.com','Sonia','Aguilera',0,0,NULL,3193099381,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.2)','0a540b6379e006cd0c780ce4faa14936');
/*!40000 ALTER TABLE `em_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_subscriber_action`
--

DROP TABLE IF EXISTS `em_subscriber_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_subscriber_action` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filterid` int(10) NOT NULL default '0',
  `listid` int(10) unsigned NOT NULL default '0',
  `campaignid` int(10) unsigned NOT NULL default '0',
  `linkid` int(10) unsigned NOT NULL default '0',
  `name` varchar(250) NOT NULL default '',
  `type` enum('read','link','subscribe','unsubscribe') NOT NULL default 'read',
  PRIMARY KEY  (`id`),
  KEY `campaignid` (`campaignid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_subscriber_action`
--

LOCK TABLES `em_subscriber_action` WRITE;
/*!40000 ALTER TABLE `em_subscriber_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_subscriber_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_subscriber_action_part`
--

DROP TABLE IF EXISTS `em_subscriber_action_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_subscriber_action_part` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `actionid` int(10) unsigned NOT NULL default '0',
  `act` enum('subscribe','unsubscribe','send','update') NOT NULL default 'subscribe',
  `targetid` int(10) unsigned NOT NULL default '0',
  `targetfield` text,
  `param` text,
  PRIMARY KEY  (`id`),
  KEY `actionid` (`actionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_subscriber_action_part`
--

LOCK TABLES `em_subscriber_action_part` WRITE;
/*!40000 ALTER TABLE `em_subscriber_action_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_subscriber_action_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_subscriber_filter`
--

DROP TABLE IF EXISTS `em_subscriber_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_subscriber_filter` (
  `id` int(10) NOT NULL auto_increment,
  `subscriberid` int(10) NOT NULL default '0',
  `filterid` int(10) NOT NULL default '0',
  `matches` tinyint(1) NOT NULL default '0',
  `dirty` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `subscriberid` (`subscriberid`,`filterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_subscriber_filter`
--

LOCK TABLES `em_subscriber_filter` WRITE;
/*!40000 ALTER TABLE `em_subscriber_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_subscriber_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_subscriber_import`
--

DROP TABLE IF EXISTS `em_subscriber_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_subscriber_import` (
  `id` int(10) NOT NULL auto_increment,
  `processid` int(10) NOT NULL default '0',
  `email` varchar(250) NOT NULL default '',
  `res` tinyint(1) NOT NULL default '0',
  `code` int(10) NOT NULL default '0',
  `msg` varchar(250) NOT NULL default '',
  `tstamp` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `processid` (`processid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_subscriber_import`
--

LOCK TABLES `em_subscriber_import` WRITE;
/*!40000 ALTER TABLE `em_subscriber_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_subscriber_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_subscriber_list`
--

DROP TABLE IF EXISTS `em_subscriber_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_subscriber_list` (
  `id` int(10) NOT NULL auto_increment,
  `subscriberid` int(10) NOT NULL default '0',
  `listid` int(10) NOT NULL default '0',
  `formid` int(10) NOT NULL default '0',
  `sdate` datetime default NULL,
  `udate` datetime default NULL,
  `status` tinyint(1) NOT NULL default '0',
  `responder` tinyint(1) NOT NULL default '1',
  `sync` int(10) NOT NULL default '0',
  `unsubreason` text,
  `unsubcampaignid` int(10) NOT NULL default '0',
  `unsubmessageid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `listid` (`listid`),
  KEY `subscriberid` (`subscriberid`),
  KEY `status` (`status`),
  KEY `sdate` (`sdate`),
  KEY `udate` (`udate`)
) ENGINE=InnoDB AUTO_INCREMENT=1176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_subscriber_list`
--

LOCK TABLES `em_subscriber_list` WRITE;
/*!40000 ALTER TABLE `em_subscriber_list` DISABLE KEYS */;
INSERT INTO `em_subscriber_list` VALUES (3,3,1,1001,'2009-10-03 10:00:15',NULL,1,1,0,NULL,0,0),(4,4,1,1001,'2009-10-03 16:23:50',NULL,1,1,0,NULL,0,0),(5,5,1,1001,'2009-10-03 18:35:36',NULL,1,1,0,NULL,0,0),(6,6,1,1001,'2009-10-04 18:04:45',NULL,1,1,0,NULL,0,0),(7,7,1,1001,'2009-10-04 20:00:05',NULL,1,1,0,NULL,0,0),(8,8,1,1001,'2009-10-05 16:06:39',NULL,1,1,0,NULL,0,0),(9,9,1,1001,'2009-10-06 09:01:11',NULL,1,1,0,NULL,0,0),(10,10,1,1001,'2009-10-07 15:09:45',NULL,1,1,0,NULL,0,0),(11,11,1,1001,'2009-10-07 23:32:30',NULL,1,1,0,NULL,0,0),(12,12,1,1001,'2009-10-08 14:31:14',NULL,1,1,0,NULL,0,0),(13,13,1,1001,'2009-10-08 17:41:55',NULL,1,1,0,NULL,0,0),(14,14,1,1001,'2009-10-09 13:16:37',NULL,1,1,0,NULL,0,0),(15,15,1,1001,'2009-10-09 21:51:43',NULL,1,1,0,NULL,0,0),(16,16,1,1001,'2009-10-11 11:49:07',NULL,1,1,0,NULL,0,0),(17,17,1,1001,'2009-10-12 16:51:22',NULL,1,1,0,NULL,0,0),(18,18,1,1001,'2009-10-13 08:18:22',NULL,1,1,0,NULL,0,0),(19,19,1,1001,'2009-10-14 10:54:30',NULL,1,1,0,NULL,0,0),(20,20,1,1001,'2009-10-15 04:57:37',NULL,1,1,0,NULL,0,0),(21,21,1,1001,'2009-10-15 09:51:23',NULL,1,1,0,NULL,0,0),(22,22,1,1001,'2009-10-15 19:06:51',NULL,1,1,0,NULL,0,0),(23,23,1,1001,'2009-10-15 19:59:14',NULL,1,1,0,NULL,0,0),(24,24,1,1001,'2009-10-16 15:32:13',NULL,1,1,0,NULL,0,0),(25,25,1,1001,'2009-10-17 16:23:28',NULL,1,1,0,NULL,0,0),(26,26,1,1001,'2009-10-18 15:50:05',NULL,1,1,0,NULL,0,0),(27,27,1,1001,'2009-10-19 01:14:28',NULL,1,1,0,NULL,0,0),(28,28,1,1001,'2009-10-19 11:24:32',NULL,1,1,0,NULL,0,0),(29,29,1,1001,'2009-10-19 18:17:49',NULL,1,1,0,NULL,0,0),(30,30,1,1001,'2009-10-19 20:39:48',NULL,1,1,0,NULL,0,0),(31,31,1,1001,'2009-10-20 20:35:08',NULL,1,1,0,NULL,0,0),(32,32,1,1001,'2009-10-21 09:43:36',NULL,1,1,0,NULL,0,0),(33,33,1,1001,'2009-10-21 12:35:58',NULL,1,1,0,NULL,0,0),(34,34,1,1001,'2009-10-22 12:11:22',NULL,1,1,0,NULL,0,0),(35,35,1,1001,'2009-10-23 12:35:15',NULL,1,1,0,NULL,0,0),(36,36,1,1001,'2009-10-23 17:22:52',NULL,1,1,0,NULL,0,0),(37,37,1,1001,'2009-10-24 06:24:39',NULL,1,1,0,NULL,0,0),(38,38,1,1001,'2009-10-24 13:24:51',NULL,1,1,0,NULL,0,0),(39,39,1,1001,'2009-10-24 20:33:13',NULL,1,1,0,NULL,0,0),(40,40,1,1001,'2009-10-25 11:43:23',NULL,1,1,0,NULL,0,0),(41,41,1,1001,'2009-10-26 15:26:28',NULL,1,1,0,NULL,0,0),(42,42,1,1001,'2009-10-27 17:04:35',NULL,1,1,0,NULL,0,0),(43,43,1,1001,'2009-10-27 18:13:34',NULL,1,1,0,NULL,0,0),(44,44,1,1001,'2009-10-28 18:54:01',NULL,1,1,0,NULL,0,0),(45,45,1,1001,'2009-10-28 20:01:07',NULL,1,1,0,NULL,0,0),(46,46,1,1001,'2009-10-28 21:19:56',NULL,1,1,0,NULL,0,0),(47,47,1,1001,'2009-10-29 07:18:26',NULL,1,1,0,NULL,0,0),(48,48,1,1001,'2009-10-29 19:54:43',NULL,1,1,0,NULL,0,0),(49,49,1,1001,'2009-10-31 12:21:29',NULL,1,1,0,NULL,0,0),(50,50,1,1001,'2009-10-31 21:37:27',NULL,1,1,0,NULL,0,0),(51,51,1,1001,'2009-11-01 13:11:48',NULL,1,1,0,NULL,0,0),(52,52,1,1001,'2009-11-02 16:32:19',NULL,1,1,0,NULL,0,0),(53,53,1,1001,'2009-11-03 06:01:20',NULL,1,1,0,NULL,0,0),(54,54,1,1001,'2009-11-03 15:24:42',NULL,1,1,0,NULL,0,0),(55,55,1,1001,'2009-11-03 17:36:31',NULL,1,1,0,NULL,0,0),(56,56,1,1001,'2009-11-03 18:35:40',NULL,1,1,0,NULL,0,0),(57,57,1,1001,'2009-11-03 22:18:30',NULL,1,1,0,NULL,0,0),(58,58,1,0,'2009-11-04 10:01:27',NULL,1,1,0,NULL,0,0),(59,59,1,0,'2009-11-04 10:02:43',NULL,1,1,0,NULL,0,0),(60,60,1,0,'2009-11-04 10:03:28',NULL,1,1,0,NULL,0,0),(61,61,1,0,'2009-11-04 10:04:12',NULL,1,1,0,NULL,0,0),(62,62,1,0,'2009-11-04 10:05:07',NULL,1,1,0,NULL,0,0),(63,63,1,0,'2009-11-04 10:18:29',NULL,1,1,0,NULL,0,0),(64,64,1,0,'2009-11-04 11:53:12',NULL,1,1,0,NULL,0,0),(65,65,1,0,'2009-11-04 11:54:20',NULL,1,1,0,NULL,0,0),(66,66,1,0,'2009-11-04 11:54:42',NULL,1,1,0,NULL,0,0),(67,67,1,0,'2009-11-04 11:55:06',NULL,1,1,0,NULL,0,0),(68,68,1,0,'2009-11-04 11:55:34',NULL,1,1,0,NULL,0,0),(69,69,1,0,'2009-11-04 11:56:27',NULL,1,1,0,NULL,0,0),(70,70,1,0,'2009-11-04 11:57:12',NULL,1,1,0,NULL,0,0),(71,71,1,0,'2009-11-04 11:57:39',NULL,1,1,0,NULL,0,0),(72,72,1,0,'2009-11-04 12:15:37',NULL,1,1,0,NULL,0,0),(73,73,1,0,'2009-11-04 12:16:05',NULL,1,1,0,NULL,0,0),(74,74,1,0,'2009-11-04 12:17:14',NULL,1,1,0,NULL,0,0),(75,75,1,0,'2009-11-04 12:17:45',NULL,1,1,0,NULL,0,0),(76,76,1,0,'2009-11-04 12:18:10',NULL,1,1,0,NULL,0,0),(77,77,1,0,'2009-11-04 12:18:35',NULL,1,1,0,NULL,0,0),(78,78,1,0,'2009-11-04 13:36:12',NULL,1,1,0,NULL,0,0),(79,79,1,0,'2009-11-04 13:36:58',NULL,1,1,0,NULL,0,0),(80,80,1,0,'2009-11-04 13:37:24',NULL,1,1,0,NULL,0,0),(81,81,1,0,'2009-11-04 13:38:40',NULL,1,1,0,NULL,0,0),(82,82,1,0,'2009-11-04 13:39:12',NULL,1,1,0,NULL,0,0),(83,83,1,0,'2009-11-04 13:39:43',NULL,1,1,0,NULL,0,0),(84,84,1,0,'2009-11-04 13:40:05',NULL,1,1,0,NULL,0,0),(85,85,1,0,'2009-11-04 13:40:46',NULL,1,1,0,NULL,0,0),(86,86,1,0,'2009-11-04 13:41:16',NULL,1,1,0,NULL,0,0),(87,87,1,0,'2009-11-04 13:41:40',NULL,1,1,0,NULL,0,0),(88,88,1,0,'2009-11-04 13:42:28',NULL,1,1,0,NULL,0,0),(89,89,1,0,'2009-11-04 13:42:58',NULL,1,1,0,NULL,0,0),(90,90,1,0,'2009-11-04 13:43:19',NULL,1,1,0,NULL,0,0),(91,91,1,0,'2009-11-04 13:43:43',NULL,1,1,0,NULL,0,0),(92,92,1,0,'2009-11-04 13:44:13',NULL,1,1,0,NULL,0,0),(93,93,1,0,'2009-11-04 13:44:34',NULL,1,1,0,NULL,0,0),(94,94,1,0,'2009-11-04 13:44:55',NULL,1,1,0,NULL,0,0),(95,95,1,0,'2009-11-04 13:45:24',NULL,1,1,0,NULL,0,0),(96,96,1,0,'2009-11-04 13:45:50',NULL,1,1,0,NULL,0,0),(97,97,1,0,'2009-11-04 13:46:24',NULL,1,1,0,NULL,0,0),(98,98,1,0,'2009-11-04 13:46:56',NULL,1,1,0,NULL,0,0),(99,99,1,0,'2009-11-04 13:47:13',NULL,1,1,0,NULL,0,0),(100,100,1,0,'2009-11-04 13:47:52',NULL,1,1,0,NULL,0,0),(101,101,1,0,'2009-11-04 13:48:06',NULL,1,1,0,NULL,0,0),(102,102,1,0,'2009-11-04 13:48:24',NULL,1,1,0,NULL,0,0),(103,103,1,0,'2009-11-04 13:49:04',NULL,1,1,0,NULL,0,0),(104,104,1,0,'2009-11-04 13:50:01',NULL,1,1,0,NULL,0,0),(105,105,1,0,'2009-11-04 13:50:22',NULL,1,1,0,NULL,0,0),(106,106,1,0,'2009-11-04 13:50:54',NULL,1,1,0,NULL,0,0),(107,107,1,0,'2009-11-04 13:51:09',NULL,1,1,0,NULL,0,0),(108,108,1,0,'2009-11-04 13:51:24',NULL,1,1,0,NULL,0,0),(109,109,1,0,'2009-11-04 13:55:13',NULL,1,1,0,NULL,0,0),(110,110,1,0,'2009-11-04 13:55:36',NULL,1,1,0,NULL,0,0),(111,111,1,0,'2009-11-04 13:55:54',NULL,1,1,0,NULL,0,0),(112,112,1,0,'2009-11-04 13:56:29',NULL,1,1,0,NULL,0,0),(113,113,1,0,'2009-11-04 13:56:46',NULL,1,1,0,NULL,0,0),(114,114,1,0,'2009-11-04 13:57:18',NULL,1,1,0,NULL,0,0),(115,115,1,0,'2009-11-04 13:57:38',NULL,1,1,0,NULL,0,0),(116,116,1,0,'2009-11-04 13:58:16',NULL,1,1,0,NULL,0,0),(117,117,1,0,'2009-11-04 13:58:59',NULL,1,1,0,NULL,0,0),(118,118,1,0,'2009-11-04 13:59:15',NULL,1,1,0,NULL,0,0),(119,119,1,0,'2009-11-04 13:59:44',NULL,1,1,0,NULL,0,0),(120,120,1,0,'2009-11-04 14:00:16',NULL,1,1,0,NULL,0,0),(121,121,1,0,'2009-11-04 14:00:56',NULL,1,1,0,NULL,0,0),(122,122,1,0,'2009-11-04 14:01:12',NULL,1,1,0,NULL,0,0),(123,123,1,0,'2009-11-04 14:01:33',NULL,1,1,0,NULL,0,0),(124,124,1,0,'2009-11-04 14:02:14',NULL,1,1,0,NULL,0,0),(125,125,1,0,'2009-11-04 14:07:27',NULL,1,1,0,NULL,0,0),(126,126,1,0,'2009-11-04 14:07:57',NULL,1,1,0,NULL,0,0),(127,127,1,0,'2009-11-04 14:08:44',NULL,1,1,0,NULL,0,0),(128,128,1,0,'2009-11-04 14:45:38',NULL,1,1,0,NULL,0,0),(129,129,1,0,'2009-11-04 14:45:56',NULL,1,1,0,NULL,0,0),(130,130,1,0,'2009-11-04 14:46:22',NULL,1,1,0,NULL,0,0),(131,131,1,0,'2009-11-04 14:46:39',NULL,1,1,0,NULL,0,0),(132,132,1,0,'2009-11-04 14:46:57',NULL,1,1,0,NULL,0,0),(133,133,1,0,'2009-11-04 14:47:15',NULL,1,1,0,NULL,0,0),(134,134,1,0,'2009-11-04 14:47:55',NULL,1,1,0,NULL,0,0),(135,135,1,0,'2009-11-04 14:49:32',NULL,1,1,0,NULL,0,0),(136,136,1,0,'2009-11-04 14:49:59',NULL,1,1,0,NULL,0,0),(137,137,1,0,'2009-11-04 14:50:41',NULL,1,1,0,NULL,0,0),(138,138,1,0,'2009-11-04 14:51:09',NULL,1,1,0,NULL,0,0),(139,139,1,0,'2009-11-04 14:51:24',NULL,1,1,0,NULL,0,0),(140,140,1,1001,'2009-11-05 12:02:43',NULL,1,1,0,NULL,0,0),(141,141,1,1001,'2009-11-05 13:30:53',NULL,1,1,0,NULL,0,0),(142,142,1,1001,'2009-11-05 18:41:53',NULL,1,1,0,NULL,0,0),(143,143,1,1001,'2009-11-06 13:36:42',NULL,1,1,0,NULL,0,0),(144,144,1,1001,'2009-11-06 14:31:06',NULL,1,1,0,NULL,0,0),(145,145,1,1001,'2009-11-06 18:10:48',NULL,1,1,0,NULL,0,0),(146,146,1,1001,'2009-11-07 16:10:56',NULL,1,1,0,NULL,0,0),(147,147,1,0,'2009-11-07 19:27:42',NULL,1,1,0,NULL,0,0),(148,148,1,1001,'2009-11-08 18:10:20',NULL,1,1,0,NULL,0,0),(149,149,1,1001,'2009-11-08 20:01:44',NULL,1,1,0,NULL,0,0),(150,150,1,1001,'2009-11-08 20:59:23',NULL,1,1,0,NULL,0,0),(151,151,1,1001,'2009-11-08 22:46:57',NULL,1,1,0,NULL,0,0),(152,152,1,1001,'2009-11-09 09:58:31',NULL,1,1,0,NULL,0,0),(153,153,1,1001,'2009-11-09 20:38:03',NULL,1,1,0,NULL,0,0),(154,154,1,1001,'2009-11-10 14:50:13',NULL,1,1,0,NULL,0,0),(155,155,1,1001,'2009-11-11 10:05:27',NULL,1,1,0,NULL,0,0),(156,156,1,1001,'2009-11-11 15:07:49',NULL,1,1,0,NULL,0,0),(157,157,1,1001,'2009-11-11 19:12:43',NULL,1,1,0,NULL,0,0),(158,158,1,1001,'2009-11-12 08:03:25',NULL,1,1,0,NULL,0,0),(159,159,1,1001,'2009-11-12 16:28:26',NULL,1,1,0,NULL,0,0),(160,160,1,1001,'2009-11-12 17:48:11',NULL,1,1,0,NULL,0,0),(161,161,1,1001,'2009-11-12 20:35:19',NULL,1,1,0,NULL,0,0),(162,162,1,1001,'2009-11-13 07:05:11',NULL,1,1,0,NULL,0,0),(163,163,1,1001,'2009-11-13 13:13:41',NULL,1,1,0,NULL,0,0),(164,164,1,1001,'2009-11-13 15:31:44',NULL,1,1,0,NULL,0,0),(165,165,1,1001,'2009-11-13 17:34:29',NULL,1,1,0,NULL,0,0),(166,166,1,1001,'2009-11-13 18:22:43',NULL,1,1,0,NULL,0,0),(167,167,1,1001,'2009-11-13 20:09:35',NULL,1,1,0,NULL,0,0),(168,168,1,1001,'2009-11-13 20:12:30',NULL,1,1,0,NULL,0,0),(169,169,1,1001,'2009-11-14 08:25:17',NULL,1,1,0,NULL,0,0),(170,170,1,1001,'2009-11-14 14:32:35',NULL,1,1,0,NULL,0,0),(171,171,1,1001,'2009-11-16 07:34:36',NULL,1,1,0,NULL,0,0),(172,172,1,1001,'2009-11-16 20:44:13',NULL,1,1,0,NULL,0,0),(173,173,1,1001,'2009-11-17 14:41:05',NULL,1,1,0,NULL,0,0),(174,174,1,1001,'2009-11-19 08:05:30',NULL,1,1,0,NULL,0,0),(175,175,1,1001,'2009-11-19 08:39:03',NULL,1,1,0,NULL,0,0),(176,176,1,1001,'2009-11-19 20:31:32',NULL,1,1,0,NULL,0,0),(177,177,1,1001,'2009-11-20 06:43:09',NULL,1,1,0,NULL,0,0),(178,178,1,1001,'2009-11-20 12:41:37',NULL,1,1,0,NULL,0,0),(179,179,1,1001,'2009-11-20 15:23:12',NULL,1,1,0,NULL,0,0),(180,180,1,1001,'2009-11-20 16:31:57',NULL,1,1,0,NULL,0,0),(181,181,1,1001,'2009-11-20 22:02:49',NULL,1,1,0,NULL,0,0),(182,182,1,1001,'2009-11-20 22:59:13',NULL,1,1,0,NULL,0,0),(183,183,1,1001,'2009-11-21 07:19:51',NULL,1,1,0,NULL,0,0),(184,184,1,1001,'2009-11-21 12:11:32',NULL,1,1,0,NULL,0,0),(185,185,1,1001,'2009-11-21 21:54:30',NULL,1,1,0,NULL,0,0),(186,186,1,1001,'2009-11-22 09:01:32',NULL,1,1,0,NULL,0,0),(187,187,1,1001,'2009-11-22 10:15:04',NULL,1,1,0,NULL,0,0),(188,188,1,1001,'2009-11-22 11:45:38',NULL,1,1,0,NULL,0,0),(189,189,1,1001,'2009-11-22 20:41:16',NULL,1,1,0,NULL,0,0),(190,190,1,1001,'2009-11-23 10:16:39',NULL,1,1,0,NULL,0,0),(191,191,1,1001,'2009-11-23 12:26:50',NULL,1,1,0,NULL,0,0),(192,192,1,1001,'2009-11-23 15:08:34',NULL,1,1,0,NULL,0,0),(193,193,1,1001,'2009-11-23 19:16:40',NULL,1,1,0,NULL,0,0),(194,194,1,1001,'2009-11-23 20:14:05',NULL,1,1,0,NULL,0,0),(195,195,1,1001,'2009-11-24 15:53:14',NULL,1,1,0,NULL,0,0),(196,196,1,1001,'2009-11-24 18:47:03',NULL,1,1,0,NULL,0,0),(197,197,1,1001,'2009-11-25 09:12:04',NULL,1,1,0,NULL,0,0),(198,198,1,1001,'2009-11-25 11:45:20',NULL,1,1,0,NULL,0,0),(199,199,1,1001,'2009-11-25 11:47:45',NULL,1,1,0,NULL,0,0),(200,200,1,1001,'2009-11-25 11:55:15',NULL,1,1,0,NULL,0,0),(201,201,1,1001,'2009-11-25 20:08:12',NULL,1,1,0,NULL,0,0),(202,202,1,1001,'2009-11-25 21:11:46',NULL,1,1,0,NULL,0,0),(203,203,1,1001,'2009-11-26 16:01:45',NULL,1,1,0,NULL,0,0),(204,204,1,1001,'2009-11-26 18:02:19',NULL,1,1,0,NULL,0,0),(205,205,1,1001,'2009-11-26 21:35:35',NULL,1,1,0,NULL,0,0),(206,206,1,1001,'2009-11-27 05:34:40',NULL,1,1,0,NULL,0,0),(207,207,1,1001,'2009-11-27 15:07:04',NULL,1,1,0,NULL,0,0),(208,208,1,1001,'2009-11-27 22:08:41',NULL,1,1,0,NULL,0,0),(209,209,1,1001,'2009-11-28 10:40:38',NULL,1,1,0,NULL,0,0),(210,210,1,1001,'2009-11-28 12:58:18',NULL,1,1,0,NULL,0,0),(211,211,1,1001,'2009-11-28 18:47:45',NULL,1,1,0,NULL,0,0),(212,212,1,1001,'2009-11-29 07:17:41',NULL,1,1,0,NULL,0,0),(213,213,1,1001,'2009-11-29 09:27:13',NULL,1,1,0,NULL,0,0),(214,214,1,1001,'2009-11-29 12:26:20',NULL,1,1,0,NULL,0,0),(215,215,1,1001,'2009-11-29 17:41:56',NULL,1,1,0,NULL,0,0),(216,216,1,1001,'2009-11-29 19:34:31',NULL,1,1,0,NULL,0,0),(217,217,1,1001,'2009-11-29 20:02:31',NULL,1,1,0,NULL,0,0),(218,218,1,1001,'2009-11-30 08:19:33',NULL,1,1,0,NULL,0,0),(219,219,1,1001,'2009-11-30 15:45:32',NULL,1,1,0,NULL,0,0),(220,220,1,1001,'2009-11-30 17:11:28',NULL,1,1,0,NULL,0,0),(221,221,1,1001,'2009-11-30 17:31:52',NULL,1,1,0,NULL,0,0),(222,222,1,1001,'2009-11-30 17:59:57',NULL,1,1,0,NULL,0,0),(223,223,1,1001,'2009-11-30 23:49:09',NULL,1,1,0,NULL,0,0),(224,224,1,1001,'2009-12-01 05:59:37',NULL,1,1,0,NULL,0,0),(225,225,1,1001,'2009-12-01 13:10:35',NULL,1,1,0,NULL,0,0),(226,226,1,1001,'2009-12-01 15:19:10',NULL,1,1,0,NULL,0,0),(227,227,1,1001,'2009-12-02 06:50:52',NULL,1,1,0,NULL,0,0),(228,228,1,1001,'2009-12-02 10:57:57',NULL,1,1,0,NULL,0,0),(229,229,1,1001,'2009-12-02 13:04:54',NULL,1,1,0,NULL,0,0),(230,230,1,1001,'2009-12-02 15:29:29',NULL,1,1,0,NULL,0,0),(231,231,1,1001,'2009-12-02 16:09:18',NULL,1,1,0,NULL,0,0),(232,232,1,1001,'2009-12-03 09:22:19',NULL,1,1,0,NULL,0,0),(233,233,1,1001,'2009-12-03 10:39:21',NULL,1,1,0,NULL,0,0),(234,234,1,1001,'2009-12-04 15:01:16',NULL,1,1,0,NULL,0,0),(235,235,1,1001,'2009-12-05 12:25:14',NULL,1,1,0,NULL,0,0),(236,236,1,1001,'2009-12-06 07:33:07',NULL,1,1,0,NULL,0,0),(237,237,1,1001,'2009-12-06 10:58:57',NULL,1,1,0,NULL,0,0),(238,238,1,1001,'2009-12-06 13:56:18',NULL,1,1,0,NULL,0,0),(239,239,1,1001,'2009-12-07 13:31:21',NULL,1,1,0,NULL,0,0),(240,240,1,1001,'2009-12-07 14:05:26',NULL,1,1,0,NULL,0,0),(241,241,1,1001,'2009-12-07 17:42:23',NULL,1,1,0,NULL,0,0),(242,242,1,1001,'2009-12-08 06:52:40',NULL,1,1,0,NULL,0,0),(243,243,1,1001,'2009-12-08 10:27:08',NULL,1,1,0,NULL,0,0),(244,244,1,1001,'2009-12-09 15:26:01',NULL,1,1,0,NULL,0,0),(245,245,1,1001,'2009-12-10 08:02:51',NULL,1,1,0,NULL,0,0),(246,246,1,1001,'2009-12-10 08:11:09',NULL,1,1,0,NULL,0,0),(247,247,1,1001,'2009-12-10 14:24:55',NULL,1,1,0,NULL,0,0),(248,248,1,1001,'2009-12-10 15:30:35',NULL,1,1,0,NULL,0,0),(249,249,1,1001,'2009-12-10 21:25:28',NULL,1,1,0,NULL,0,0),(250,250,1,1001,'2009-12-11 12:06:21',NULL,1,1,0,NULL,0,0),(251,251,1,1001,'2009-12-11 18:18:49',NULL,1,1,0,NULL,0,0),(252,252,1,1001,'2009-12-12 08:03:45',NULL,1,1,0,NULL,0,0),(253,253,1,1001,'2009-12-12 09:21:24',NULL,1,1,0,NULL,0,0),(254,254,1,1001,'2009-12-12 12:54:26',NULL,1,1,0,NULL,0,0),(255,255,1,1001,'2009-12-12 13:03:41',NULL,1,1,0,NULL,0,0),(256,256,1,1001,'2009-12-13 07:26:14',NULL,1,1,0,NULL,0,0),(257,257,1,1001,'2009-12-13 17:35:15',NULL,1,1,0,NULL,0,0),(258,258,1,1001,'2009-12-14 10:19:58',NULL,1,1,0,NULL,0,0),(259,259,1,1001,'2009-12-14 11:25:41',NULL,1,1,0,NULL,0,0),(260,260,1,1001,'2009-12-14 17:55:51',NULL,1,1,0,NULL,0,0),(261,261,1,1001,'2009-12-15 21:30:18',NULL,1,1,0,NULL,0,0),(262,262,1,1001,'2009-12-16 08:35:32',NULL,1,1,0,NULL,0,0),(263,263,1,1001,'2009-12-16 13:00:40',NULL,1,1,0,NULL,0,0),(264,264,1,1001,'2009-12-17 11:16:19',NULL,1,1,0,NULL,0,0),(265,265,1,1001,'2009-12-17 19:15:29',NULL,1,1,0,NULL,0,0),(266,266,1,1001,'2009-12-18 08:54:32',NULL,1,1,0,NULL,0,0),(267,267,1,1001,'2009-12-18 20:44:14',NULL,1,1,0,NULL,0,0),(268,268,1,1001,'2009-12-19 08:49:17',NULL,1,1,0,NULL,0,0),(269,269,1,1001,'2009-12-20 12:33:23',NULL,1,1,0,NULL,0,0),(270,270,1,1001,'2009-12-21 19:51:50',NULL,1,1,0,NULL,0,0),(271,271,1,1001,'2009-12-22 14:07:38',NULL,1,1,0,NULL,0,0),(272,272,1,1001,'2009-12-22 18:42:25',NULL,1,1,0,NULL,0,0),(273,273,1,1001,'2009-12-25 14:49:55',NULL,1,1,0,NULL,0,0),(274,274,1,1001,'2009-12-26 13:02:12',NULL,1,1,0,NULL,0,0),(275,275,1,1001,'2009-12-26 16:18:09',NULL,1,1,0,NULL,0,0),(276,276,1,1001,'2009-12-27 11:44:54',NULL,1,1,0,NULL,0,0),(277,277,1,1001,'2009-12-27 16:09:57',NULL,1,1,0,NULL,0,0),(278,278,1,1001,'2009-12-28 09:36:19',NULL,1,1,0,NULL,0,0),(279,279,1,1001,'2009-12-28 15:51:20',NULL,1,1,0,NULL,0,0),(280,280,1,1001,'2009-12-28 17:46:52',NULL,1,1,0,NULL,0,0),(281,281,1,1001,'2009-12-28 18:52:26',NULL,1,1,0,NULL,0,0),(282,282,1,1001,'2009-12-29 13:36:12',NULL,1,1,0,NULL,0,0),(283,283,1,1001,'2009-12-29 15:03:16',NULL,1,1,0,NULL,0,0),(284,284,1,1001,'2009-12-29 15:39:21',NULL,1,1,0,NULL,0,0),(285,285,1,1001,'2009-12-31 09:36:00',NULL,1,1,0,NULL,0,0),(286,286,1,1001,'2010-01-01 12:04:00',NULL,1,1,0,NULL,0,0),(287,287,1,1001,'2010-01-02 12:06:16',NULL,1,1,0,NULL,0,0),(288,288,1,1001,'2010-01-02 13:02:36',NULL,1,1,0,NULL,0,0),(289,289,1,1001,'2010-01-02 16:35:38',NULL,1,1,0,NULL,0,0),(290,290,1,1001,'2010-01-02 18:48:04',NULL,1,1,0,NULL,0,0),(291,291,1,1001,'2010-01-03 07:26:29',NULL,1,1,0,NULL,0,0),(292,292,1,1001,'2010-01-04 07:26:28',NULL,1,1,0,NULL,0,0),(293,293,1,1001,'2010-01-04 13:16:13',NULL,1,1,0,NULL,0,0),(294,294,1,1001,'2010-01-06 12:16:29',NULL,1,1,0,NULL,0,0),(295,295,1,1001,'2010-01-06 13:58:29',NULL,1,1,0,NULL,0,0),(296,296,1,1001,'2010-01-06 14:31:33',NULL,1,1,0,NULL,0,0),(297,297,1,1001,'2010-01-06 14:34:47',NULL,1,1,0,NULL,0,0),(298,298,1,1001,'2010-01-06 15:51:51',NULL,1,1,0,NULL,0,0),(299,299,1,1001,'2010-01-06 18:44:30',NULL,1,1,0,NULL,0,0),(300,300,1,1001,'2010-01-07 09:18:19',NULL,1,1,0,NULL,0,0),(301,301,1,1001,'2010-01-07 09:57:05',NULL,1,1,0,NULL,0,0),(302,302,1,1001,'2010-01-07 14:34:37',NULL,1,1,0,NULL,0,0),(303,303,1,1001,'2010-01-07 15:04:52',NULL,1,1,0,NULL,0,0),(304,304,1,1001,'2010-01-07 16:42:51',NULL,1,1,0,NULL,0,0),(305,305,1,1001,'2010-01-07 19:51:01',NULL,1,1,0,NULL,0,0),(306,306,1,1001,'2010-01-08 06:11:31',NULL,1,1,0,NULL,0,0),(307,307,1,1001,'2010-01-08 06:42:49',NULL,1,1,0,NULL,0,0),(308,308,1,1001,'2010-01-08 12:34:05',NULL,1,1,0,NULL,0,0),(309,309,1,1001,'2010-01-08 14:55:54',NULL,1,1,0,NULL,0,0),(310,310,1,1001,'2010-01-08 18:09:45',NULL,1,1,0,NULL,0,0),(311,311,1,1001,'2010-01-09 10:58:57',NULL,1,1,0,NULL,0,0),(312,312,1,1001,'2010-01-09 15:19:25',NULL,1,1,0,NULL,0,0),(313,313,1,1001,'2010-01-09 18:04:20',NULL,1,1,0,NULL,0,0),(314,314,1,1001,'2010-01-09 22:37:21',NULL,1,1,0,NULL,0,0),(315,315,1,1001,'2010-01-10 15:33:12',NULL,1,1,0,NULL,0,0),(316,316,1,1001,'2010-01-10 17:06:56',NULL,1,1,0,NULL,0,0),(317,317,1,1001,'2010-01-10 23:47:24',NULL,1,1,0,NULL,0,0),(318,318,1,1001,'2010-01-11 07:55:12',NULL,1,1,0,NULL,0,0),(319,319,1,1001,'2010-01-12 15:05:52',NULL,1,1,0,NULL,0,0),(320,320,1,1001,'2010-01-12 20:28:14',NULL,1,1,0,NULL,0,0),(321,321,1,1001,'2010-01-13 08:01:06',NULL,1,1,0,NULL,0,0),(322,322,1,1001,'2010-01-13 13:20:18',NULL,1,1,0,NULL,0,0),(323,323,1,1001,'2010-01-13 15:52:20',NULL,1,1,0,NULL,0,0),(324,324,1,1001,'2010-01-13 17:19:57',NULL,1,1,0,NULL,0,0),(325,325,1,1001,'2010-01-13 17:44:38',NULL,1,1,0,NULL,0,0),(326,326,1,1001,'2010-01-13 17:58:39',NULL,1,1,0,NULL,0,0),(327,327,1,1001,'2010-01-14 12:05:59',NULL,1,1,0,NULL,0,0),(328,328,1,1001,'2010-01-14 12:41:00',NULL,1,1,0,NULL,0,0),(329,329,1,1001,'2010-01-14 13:55:14',NULL,1,1,0,NULL,0,0),(330,330,1,1001,'2010-01-15 02:30:38',NULL,1,1,0,NULL,0,0),(331,331,1,1001,'2010-01-15 05:03:57',NULL,1,1,0,NULL,0,0),(332,332,1,1001,'2010-01-15 10:55:42',NULL,1,1,0,NULL,0,0),(333,333,1,1001,'2010-01-15 12:27:31',NULL,1,1,0,NULL,0,0),(334,334,1,1001,'2010-01-15 13:21:51',NULL,1,1,0,NULL,0,0),(335,335,1,1001,'2010-01-15 14:17:17',NULL,1,1,0,NULL,0,0),(336,336,1,1001,'2010-01-15 15:17:04',NULL,1,1,0,NULL,0,0),(337,337,1,1001,'2010-01-16 17:19:28',NULL,1,1,0,NULL,0,0),(338,338,1,1001,'2010-01-16 20:53:46',NULL,1,1,0,NULL,0,0),(339,339,1,1001,'2010-01-17 13:44:24',NULL,1,1,0,NULL,0,0),(340,340,1,1001,'2010-01-17 14:21:29',NULL,1,1,0,NULL,0,0),(341,341,1,1001,'2010-01-18 08:33:39',NULL,1,1,0,NULL,0,0),(342,342,1,1001,'2010-01-18 17:16:48',NULL,1,1,0,NULL,0,0),(343,343,1,1001,'2010-01-18 23:00:04',NULL,1,1,0,NULL,0,0),(344,344,1,1001,'2010-01-19 11:07:09',NULL,1,1,0,NULL,0,0),(345,345,1,1001,'2010-01-19 12:45:33',NULL,1,1,0,NULL,0,0),(346,346,1,1001,'2010-01-19 20:09:12',NULL,1,1,0,NULL,0,0),(347,347,1,1001,'2010-01-19 21:47:24',NULL,1,1,0,NULL,0,0),(348,348,1,1001,'2010-01-20 16:01:47',NULL,1,1,0,NULL,0,0),(349,349,1,1001,'2010-01-20 19:20:39',NULL,1,1,0,NULL,0,0),(350,350,1,1001,'2010-01-20 21:30:43',NULL,1,1,0,NULL,0,0),(351,351,1,1001,'2010-01-21 12:30:14',NULL,1,1,0,NULL,0,0),(352,352,1,1001,'2010-01-21 12:57:54',NULL,1,1,0,NULL,0,0),(353,353,1,1001,'2010-01-21 15:23:00',NULL,1,1,0,NULL,0,0),(354,354,1,1001,'2010-01-21 22:07:58',NULL,1,1,0,NULL,0,0),(355,355,1,1001,'2010-01-22 09:12:58',NULL,1,1,0,NULL,0,0),(356,356,1,1001,'2010-01-22 10:50:17',NULL,1,1,0,NULL,0,0),(357,357,1,1001,'2010-01-22 21:46:50',NULL,1,1,0,NULL,0,0),(358,358,1,1001,'2010-01-23 10:17:54',NULL,1,1,0,NULL,0,0),(359,359,1,1001,'2010-01-23 13:23:14',NULL,1,1,0,NULL,0,0),(360,360,1,1001,'2010-01-23 22:50:54',NULL,1,1,0,NULL,0,0),(361,361,1,1001,'2010-01-24 10:24:30',NULL,1,1,0,NULL,0,0),(362,362,1,1001,'2010-01-24 11:07:04',NULL,1,1,0,NULL,0,0),(363,363,1,1001,'2010-01-24 12:54:04',NULL,1,1,0,NULL,0,0),(364,364,1,1001,'2010-01-24 15:52:25',NULL,1,1,0,NULL,0,0),(365,365,1,1001,'2010-01-24 18:28:29',NULL,1,1,0,NULL,0,0),(366,366,1,1001,'2010-01-25 04:43:25',NULL,1,1,0,NULL,0,0),(367,367,1,1001,'2010-01-25 15:49:57',NULL,1,1,0,NULL,0,0),(368,368,1,1001,'2010-01-25 16:52:02',NULL,1,1,0,NULL,0,0),(369,369,1,1001,'2010-01-25 18:11:22',NULL,1,1,0,NULL,0,0),(370,370,1,1001,'2010-01-26 07:49:41',NULL,1,1,0,NULL,0,0),(371,371,1,1001,'2010-01-26 10:52:05',NULL,1,1,0,NULL,0,0),(372,372,1,1001,'2010-01-26 12:36:52',NULL,1,1,0,NULL,0,0),(373,373,1,1001,'2010-01-26 14:13:28',NULL,1,1,0,NULL,0,0),(374,374,1,1001,'2010-01-26 16:16:36',NULL,1,1,0,NULL,0,0),(375,375,1,1001,'2010-01-27 08:46:24',NULL,1,1,0,NULL,0,0),(376,376,1,1001,'2010-01-27 11:52:17',NULL,1,1,0,NULL,0,0),(377,377,1,1001,'2010-01-27 15:40:28',NULL,1,1,0,NULL,0,0),(378,378,1,1001,'2010-01-27 16:27:21',NULL,1,1,0,NULL,0,0),(379,379,1,1001,'2010-01-27 17:09:56',NULL,1,1,0,NULL,0,0),(380,380,1,1001,'2010-01-27 20:25:47',NULL,1,1,0,NULL,0,0),(381,381,1,1001,'2010-01-28 09:13:27',NULL,1,1,0,NULL,0,0),(382,382,1,1001,'2010-01-28 09:36:41',NULL,1,1,0,NULL,0,0),(383,383,1,1001,'2010-01-28 20:21:06',NULL,1,1,0,NULL,0,0),(384,384,1,1001,'2010-01-28 21:43:33',NULL,1,1,0,NULL,0,0),(385,385,1,1001,'2010-01-28 21:45:07',NULL,1,1,0,NULL,0,0),(386,386,1,1001,'2010-01-29 01:18:51',NULL,1,1,0,NULL,0,0),(387,387,1,1001,'2010-01-29 14:16:35',NULL,1,1,0,NULL,0,0),(388,388,1,1001,'2010-01-29 20:38:46',NULL,1,1,0,NULL,0,0),(389,389,1,1001,'2010-01-30 06:24:24',NULL,1,1,0,NULL,0,0),(390,390,1,1001,'2010-01-30 09:21:57',NULL,1,1,0,NULL,0,0),(391,391,1,1001,'2010-01-30 14:34:42',NULL,1,1,0,NULL,0,0),(392,392,1,1001,'2010-01-30 14:39:13',NULL,1,1,0,NULL,0,0),(393,393,1,1001,'2010-01-30 18:24:29',NULL,1,1,0,NULL,0,0),(394,394,1,1001,'2010-01-30 19:35:45',NULL,1,1,0,NULL,0,0),(395,395,1,1001,'2010-01-31 09:16:16',NULL,1,1,0,NULL,0,0),(396,396,1,1001,'2010-01-31 11:11:50',NULL,1,1,0,NULL,0,0),(397,397,1,1001,'2010-01-31 15:09:53',NULL,1,1,0,NULL,0,0),(398,398,1,1001,'2010-01-31 16:06:02',NULL,1,1,0,NULL,0,0),(399,399,1,1001,'2010-01-31 20:53:51',NULL,1,1,0,NULL,0,0),(400,400,1,1001,'2010-02-01 00:08:02',NULL,1,1,0,NULL,0,0),(401,401,1,1001,'2010-02-01 12:57:16',NULL,1,1,0,NULL,0,0),(402,402,1,1001,'2010-02-01 14:33:55',NULL,1,1,0,NULL,0,0),(403,403,1,1001,'2010-02-01 14:38:55',NULL,1,1,0,NULL,0,0),(404,404,1,1001,'2010-02-02 00:16:02',NULL,1,1,0,NULL,0,0),(405,405,1,1001,'2010-02-02 07:46:52',NULL,1,1,0,NULL,0,0),(406,406,1,1001,'2010-02-02 13:38:41',NULL,1,1,0,NULL,0,0),(407,407,1,1001,'2010-02-02 15:17:01',NULL,1,1,0,NULL,0,0),(408,408,1,1001,'2010-02-03 01:31:59',NULL,1,1,0,NULL,0,0),(409,409,1,1001,'2010-02-03 08:26:49',NULL,1,1,0,NULL,0,0),(410,410,1,1001,'2010-02-04 04:29:59',NULL,1,1,0,NULL,0,0),(411,411,1,1001,'2010-02-04 07:12:32',NULL,1,1,0,NULL,0,0),(412,412,1,1001,'2010-02-04 09:41:20',NULL,1,1,0,NULL,0,0),(413,413,1,1001,'2010-02-04 10:10:18',NULL,1,1,0,NULL,0,0),(414,414,1,1001,'2010-02-04 20:59:57',NULL,1,1,0,NULL,0,0),(415,415,1,1001,'2010-02-05 07:59:32',NULL,1,1,0,NULL,0,0),(416,416,1,1001,'2010-02-05 09:26:51',NULL,1,1,0,NULL,0,0),(417,417,1,1001,'2010-02-05 14:31:55',NULL,1,1,0,NULL,0,0),(418,418,1,1001,'2010-02-06 19:58:35',NULL,1,1,0,NULL,0,0),(419,419,1,1001,'2010-02-07 09:29:34',NULL,1,1,0,NULL,0,0),(420,420,1,1001,'2010-02-07 13:50:24',NULL,1,1,0,NULL,0,0),(421,421,1,1001,'2010-02-07 23:02:04',NULL,1,1,0,NULL,0,0),(422,422,1,1001,'2010-02-08 11:19:25',NULL,1,1,0,NULL,0,0),(423,423,1,1001,'2010-02-08 13:37:19',NULL,1,1,0,NULL,0,0),(424,424,1,1001,'2010-02-08 20:38:07',NULL,1,1,0,NULL,0,0),(425,425,1,1001,'2010-02-09 10:29:03',NULL,1,1,0,NULL,0,0),(426,426,1,1001,'2010-02-09 14:29:17',NULL,1,1,0,NULL,0,0),(427,427,1,1001,'2010-02-09 15:14:28',NULL,1,1,0,NULL,0,0),(428,428,1,1001,'2010-02-09 17:21:02',NULL,1,1,0,NULL,0,0),(429,429,1,1001,'2010-02-09 21:09:50',NULL,1,1,0,NULL,0,0),(430,430,1,1001,'2010-02-10 10:35:46',NULL,1,1,0,NULL,0,0),(431,431,1,1001,'2010-02-10 17:35:22',NULL,1,1,0,NULL,0,0),(432,432,1,1001,'2010-02-11 09:11:16',NULL,1,1,0,NULL,0,0),(433,433,1,1001,'2010-02-11 10:09:07',NULL,1,1,0,NULL,0,0),(434,434,1,1001,'2010-02-11 12:27:36',NULL,1,1,0,NULL,0,0),(435,435,1,1001,'2010-02-11 13:38:02',NULL,1,1,0,NULL,0,0),(436,436,1,1001,'2010-02-11 14:03:54',NULL,1,1,0,NULL,0,0),(437,437,1,1001,'2010-02-11 15:13:47',NULL,1,1,0,NULL,0,0),(438,438,1,1001,'2010-02-11 17:15:44',NULL,1,1,0,NULL,0,0),(439,439,1,1001,'2010-02-11 17:45:16',NULL,1,1,0,NULL,0,0),(440,440,1,1001,'2010-02-12 05:33:21',NULL,1,1,0,NULL,0,0),(441,441,1,1001,'2010-02-12 11:21:43',NULL,1,1,0,NULL,0,0),(442,442,1,1001,'2010-02-12 18:48:58',NULL,1,1,0,NULL,0,0),(443,443,1,1001,'2010-02-13 19:19:05',NULL,1,1,0,NULL,0,0),(444,444,1,1001,'2010-02-13 21:45:15',NULL,1,1,0,NULL,0,0),(445,445,1,1001,'2010-02-14 14:31:18',NULL,1,1,0,NULL,0,0),(446,446,1,1001,'2010-02-14 15:00:52',NULL,1,1,0,NULL,0,0),(447,447,1,1001,'2010-02-14 15:08:04',NULL,1,1,0,NULL,0,0),(448,448,1,1001,'2010-02-14 22:19:06',NULL,1,1,0,NULL,0,0),(449,449,1,1001,'2010-02-15 09:09:22',NULL,1,1,0,NULL,0,0),(450,450,1,1001,'2010-02-16 13:45:33',NULL,1,1,0,NULL,0,0),(451,451,1,1001,'2010-02-16 14:36:33',NULL,1,1,0,NULL,0,0),(452,452,1,1001,'2010-02-16 18:24:03',NULL,1,1,0,NULL,0,0),(453,453,1,1001,'2010-02-16 19:08:20',NULL,1,1,0,NULL,0,0),(454,454,1,1001,'2010-02-16 21:08:42',NULL,1,1,0,NULL,0,0),(455,455,1,1001,'2010-02-17 09:10:56',NULL,1,1,0,NULL,0,0),(456,456,1,1001,'2010-02-17 13:42:11',NULL,1,1,0,NULL,0,0),(457,457,1,1001,'2010-02-17 16:40:32',NULL,1,1,0,NULL,0,0),(458,458,1,1001,'2010-02-17 20:53:38',NULL,1,1,0,NULL,0,0),(459,459,1,1001,'2010-02-18 14:11:14',NULL,1,1,0,NULL,0,0),(460,460,1,1001,'2010-02-18 21:29:06',NULL,1,1,0,NULL,0,0),(461,461,1,1001,'2010-02-19 11:04:46',NULL,1,1,0,NULL,0,0),(462,462,1,1001,'2010-02-19 11:18:50',NULL,1,1,0,NULL,0,0),(463,463,1,1001,'2010-02-19 16:11:09',NULL,1,1,0,NULL,0,0),(464,464,1,1001,'2010-02-20 07:26:30',NULL,1,1,0,NULL,0,0),(465,465,1,1001,'2010-02-20 08:24:43',NULL,1,1,0,NULL,0,0),(466,466,1,1001,'2010-02-20 12:38:32',NULL,1,1,0,NULL,0,0),(467,467,1,1001,'2010-02-20 18:48:37',NULL,1,1,0,NULL,0,0),(468,468,1,1001,'2010-02-20 23:13:19',NULL,1,1,0,NULL,0,0),(469,469,1,1001,'2010-02-21 09:20:01',NULL,1,1,0,NULL,0,0),(470,470,1,1001,'2010-02-21 10:43:31',NULL,1,1,0,NULL,0,0),(471,471,1,1001,'2010-02-21 10:44:04',NULL,1,1,0,NULL,0,0),(472,472,1,1001,'2010-02-21 12:48:52',NULL,1,1,0,NULL,0,0),(473,473,1,1001,'2010-02-21 14:38:30',NULL,1,1,0,NULL,0,0),(474,474,1,1001,'2010-02-21 18:38:53',NULL,1,1,0,NULL,0,0),(475,475,1,1001,'2010-02-21 21:31:27',NULL,1,1,0,NULL,0,0),(476,476,1,1001,'2010-02-22 00:27:53',NULL,1,1,0,NULL,0,0),(477,477,1,1001,'2010-02-22 11:00:12',NULL,1,1,0,NULL,0,0),(478,478,1,1001,'2010-02-22 11:37:10',NULL,1,1,0,NULL,0,0),(479,479,1,1001,'2010-02-22 18:36:24',NULL,1,1,0,NULL,0,0),(480,480,1,1001,'2010-02-23 07:12:48',NULL,1,1,0,NULL,0,0),(481,481,1,1001,'2010-02-23 10:30:27',NULL,1,1,0,NULL,0,0),(482,482,1,1001,'2010-02-23 11:23:22',NULL,1,1,0,NULL,0,0),(483,483,1,1001,'2010-02-23 11:26:08',NULL,1,1,0,NULL,0,0),(484,484,1,1001,'2010-02-23 11:28:00',NULL,1,1,0,NULL,0,0),(485,485,1,1001,'2010-02-23 12:11:04',NULL,1,1,0,NULL,0,0),(486,486,1,1001,'2010-02-23 16:20:05',NULL,1,1,0,NULL,0,0),(487,487,1,1001,'2010-02-23 18:35:20',NULL,1,1,0,NULL,0,0),(488,488,1,1001,'2010-02-23 21:42:51',NULL,1,1,0,NULL,0,0),(489,489,1,1001,'2010-02-24 06:16:24',NULL,1,1,0,NULL,0,0),(490,490,1,1001,'2010-02-24 08:24:02',NULL,1,1,0,NULL,0,0),(491,491,1,1001,'2010-02-24 09:06:59',NULL,1,1,0,NULL,0,0),(492,492,1,1001,'2010-02-24 10:55:00',NULL,1,1,0,NULL,0,0),(493,493,1,1001,'2010-02-24 14:01:53',NULL,1,1,0,NULL,0,0),(494,494,1,1001,'2010-02-24 18:46:11',NULL,1,1,0,NULL,0,0),(495,495,1,1001,'2010-02-24 18:46:19',NULL,1,1,0,NULL,0,0),(496,496,1,1001,'2010-02-25 10:57:38',NULL,1,1,0,NULL,0,0),(497,497,1,1001,'2010-02-25 12:56:31',NULL,1,1,0,NULL,0,0),(498,498,1,1001,'2010-02-25 15:14:33',NULL,1,1,0,NULL,0,0),(499,499,1,1001,'2010-02-25 16:13:08',NULL,1,1,0,NULL,0,0),(500,500,1,1001,'2010-02-25 19:15:24',NULL,1,1,0,NULL,0,0),(501,501,1,1001,'2010-02-26 06:22:52',NULL,1,1,0,NULL,0,0),(502,502,1,1001,'2010-02-26 07:33:16',NULL,1,1,0,NULL,0,0),(503,503,1,1001,'2010-02-26 12:31:08',NULL,1,1,0,NULL,0,0),(504,504,1,1001,'2010-02-26 16:59:27',NULL,1,1,0,NULL,0,0),(505,505,1,1001,'2010-02-26 17:53:11',NULL,1,1,0,NULL,0,0),(506,506,1,1001,'2010-02-26 18:40:11',NULL,1,1,0,NULL,0,0),(507,507,1,1001,'2010-02-26 20:36:25',NULL,1,1,0,NULL,0,0),(508,508,1,1001,'2010-02-26 22:17:55',NULL,1,1,0,NULL,0,0),(509,509,1,1001,'2010-02-27 22:57:42',NULL,1,1,0,NULL,0,0),(510,510,1,1001,'2010-02-28 06:39:19',NULL,1,1,0,NULL,0,0),(511,511,1,1001,'2010-02-28 07:29:34',NULL,1,1,0,NULL,0,0),(512,512,1,1001,'2010-02-28 14:28:03',NULL,1,1,0,NULL,0,0),(513,513,1,1001,'2010-02-28 17:12:45',NULL,1,1,0,NULL,0,0),(514,514,1,1001,'2010-02-28 20:48:39',NULL,1,1,0,NULL,0,0),(515,515,1,1001,'2010-03-01 09:57:22',NULL,1,1,0,NULL,0,0),(516,516,1,1001,'2010-03-01 20:59:45',NULL,1,1,0,NULL,0,0),(517,517,1,1001,'2010-03-02 13:41:41',NULL,1,1,0,NULL,0,0),(518,518,1,1001,'2010-03-02 13:54:24',NULL,1,1,0,NULL,0,0),(519,519,1,1001,'2010-03-02 17:18:14',NULL,1,1,0,NULL,0,0),(520,520,1,1001,'2010-03-02 18:32:26',NULL,1,1,0,NULL,0,0),(521,521,1,1001,'2010-03-02 19:50:43',NULL,1,1,0,NULL,0,0),(522,522,1,1001,'2010-03-03 07:53:18',NULL,1,1,0,NULL,0,0),(523,523,1,1001,'2010-03-03 08:41:39',NULL,1,1,0,NULL,0,0),(524,524,1,1001,'2010-03-03 14:03:36',NULL,1,1,0,NULL,0,0),(525,525,1,1001,'2010-03-03 19:52:40',NULL,1,1,0,NULL,0,0),(526,526,1,1001,'2010-03-03 21:44:07',NULL,1,1,0,NULL,0,0),(527,527,1,1001,'2010-03-03 23:46:09',NULL,1,1,0,NULL,0,0),(528,528,1,1001,'2010-03-04 01:38:24',NULL,1,1,0,NULL,0,0),(529,529,1,1001,'2010-03-04 05:56:04',NULL,1,1,0,NULL,0,0),(530,530,1,1001,'2010-03-04 13:24:36',NULL,1,1,0,NULL,0,0),(531,531,1,1001,'2010-03-04 16:56:41',NULL,1,1,0,NULL,0,0),(532,532,1,1001,'2010-03-04 19:58:12',NULL,1,1,0,NULL,0,0),(533,533,1,1001,'2010-03-04 23:38:57',NULL,1,1,0,NULL,0,0),(534,534,1,1001,'2010-03-04 23:39:30',NULL,1,1,0,NULL,0,0),(535,535,1,1001,'2010-03-05 11:22:03',NULL,1,1,0,NULL,0,0),(536,536,1,1001,'2010-03-05 11:51:49',NULL,1,1,0,NULL,0,0),(537,537,1,1001,'2010-03-05 15:05:15',NULL,1,1,0,NULL,0,0),(538,538,1,1001,'2010-03-05 17:50:08',NULL,1,1,0,NULL,0,0),(539,539,1,1001,'2010-03-06 07:37:01',NULL,1,1,0,NULL,0,0),(540,540,1,1001,'2010-03-06 11:15:15',NULL,1,1,0,NULL,0,0),(541,541,1,1001,'2010-03-06 20:53:56',NULL,1,1,0,NULL,0,0),(542,542,1,1001,'2010-03-07 11:00:42',NULL,1,1,0,NULL,0,0),(543,543,1,1001,'2010-03-07 14:59:35',NULL,1,1,0,NULL,0,0),(544,544,1,1001,'2010-03-08 07:04:54',NULL,1,1,0,NULL,0,0),(545,545,1,1001,'2010-03-08 10:45:25',NULL,1,1,0,NULL,0,0),(546,546,1,1001,'2010-03-08 11:19:44',NULL,1,1,0,NULL,0,0),(547,547,1,1001,'2010-03-08 11:23:06',NULL,1,1,0,NULL,0,0),(548,548,1,1001,'2010-03-08 17:22:49',NULL,1,1,0,NULL,0,0),(549,549,1,1001,'2010-03-09 00:55:24',NULL,1,1,0,NULL,0,0),(550,550,1,1001,'2010-03-09 13:19:32',NULL,1,1,0,NULL,0,0),(551,551,1,1001,'2010-03-09 16:18:33',NULL,1,1,0,NULL,0,0),(552,552,1,1001,'2010-03-09 19:40:46',NULL,1,1,0,NULL,0,0),(553,553,1,1001,'2010-03-09 20:44:23',NULL,1,1,0,NULL,0,0),(554,554,1,1001,'2010-03-09 22:28:05',NULL,1,1,0,NULL,0,0),(555,555,1,1001,'2010-03-10 12:51:24',NULL,1,1,0,NULL,0,0),(556,556,1,1001,'2010-03-10 13:57:25',NULL,1,1,0,NULL,0,0),(557,557,1,1001,'2010-03-10 14:51:17',NULL,1,1,0,NULL,0,0),(558,558,1,1001,'2010-03-11 06:39:12',NULL,1,1,0,NULL,0,0),(559,559,1,1001,'2010-03-11 09:14:49',NULL,1,1,0,NULL,0,0),(560,560,1,1001,'2010-03-11 20:37:35',NULL,1,1,0,NULL,0,0),(561,561,1,1001,'2010-03-12 02:52:04',NULL,1,1,0,NULL,0,0),(562,562,1,1001,'2010-03-13 12:35:37',NULL,1,1,0,NULL,0,0),(563,563,1,1001,'2010-03-14 10:09:39',NULL,1,1,0,NULL,0,0),(564,564,1,1001,'2010-03-14 11:52:09',NULL,1,1,0,NULL,0,0),(565,565,1,1001,'2010-03-14 12:48:02',NULL,1,1,0,NULL,0,0),(566,566,1,1001,'2010-03-14 13:23:41',NULL,1,1,0,NULL,0,0),(567,567,1,1001,'2010-03-14 19:11:20',NULL,1,1,0,NULL,0,0),(568,568,1,1001,'2010-03-15 09:31:15',NULL,1,1,0,NULL,0,0),(569,569,1,1001,'2010-03-15 10:35:55',NULL,1,1,0,NULL,0,0),(570,570,1,1001,'2010-03-15 10:49:29',NULL,1,1,0,NULL,0,0),(571,571,1,1001,'2010-03-16 09:51:36',NULL,1,1,0,NULL,0,0),(572,572,1,1001,'2010-03-16 10:30:09',NULL,1,1,0,NULL,0,0),(573,573,1,1001,'2010-03-16 13:44:34',NULL,1,1,0,NULL,0,0),(574,574,1,1001,'2010-03-16 15:37:40',NULL,1,1,0,NULL,0,0),(575,575,1,1001,'2010-03-16 16:20:49',NULL,1,1,0,NULL,0,0),(576,576,1,1001,'2010-03-16 22:43:14',NULL,1,1,0,NULL,0,0),(577,577,1,1001,'2010-03-16 23:20:49',NULL,1,1,0,NULL,0,0),(578,578,1,1001,'2010-03-17 06:36:14',NULL,1,1,0,NULL,0,0),(579,579,1,1001,'2010-03-17 08:59:53',NULL,1,1,0,NULL,0,0),(580,580,1,1001,'2010-03-17 20:14:25',NULL,1,1,0,NULL,0,0),(581,581,1,1001,'2010-03-17 21:00:20',NULL,1,1,0,NULL,0,0),(582,582,1,1001,'2010-03-17 21:30:34',NULL,1,1,0,NULL,0,0),(583,583,1,1001,'2010-03-18 00:33:49',NULL,1,1,0,NULL,0,0),(584,584,1,1001,'2010-03-18 08:53:34',NULL,1,1,0,NULL,0,0),(585,585,1,1001,'2010-03-18 13:14:25',NULL,1,1,0,NULL,0,0),(586,586,1,1001,'2010-03-18 16:16:02',NULL,1,1,0,NULL,0,0),(587,587,1,1001,'2010-03-18 19:10:45',NULL,1,1,0,NULL,0,0),(588,588,1,1001,'2010-03-18 19:17:58',NULL,1,1,0,NULL,0,0),(589,589,1,1001,'2010-03-18 21:55:41',NULL,1,1,0,NULL,0,0),(590,590,1,1001,'2010-03-19 00:28:05',NULL,1,1,0,NULL,0,0),(591,591,1,1001,'2010-03-19 08:10:46',NULL,1,1,0,NULL,0,0),(592,592,1,1001,'2010-03-19 11:16:03',NULL,1,1,0,NULL,0,0),(593,593,1,1001,'2010-03-19 13:29:35',NULL,1,1,0,NULL,0,0),(594,594,1,1001,'2010-03-19 14:15:06',NULL,1,1,0,NULL,0,0),(595,595,1,1001,'2010-03-19 16:04:28',NULL,1,1,0,NULL,0,0),(596,596,1,1001,'2010-03-20 14:46:28',NULL,1,1,0,NULL,0,0),(597,597,1,1001,'2010-03-20 18:34:26',NULL,1,1,0,NULL,0,0),(598,598,1,1001,'2010-03-20 22:53:57',NULL,1,1,0,NULL,0,0),(599,599,1,1001,'2010-03-21 11:14:11',NULL,1,1,0,NULL,0,0),(600,600,1,1001,'2010-03-21 16:07:28',NULL,1,1,0,NULL,0,0),(601,601,1,1001,'2010-03-21 16:42:45',NULL,1,1,0,NULL,0,0),(602,602,1,1001,'2010-03-21 21:12:56',NULL,1,1,0,NULL,0,0),(603,603,1,1001,'2010-03-22 04:12:24',NULL,1,1,0,NULL,0,0),(604,604,1,1001,'2010-03-22 11:33:42',NULL,1,1,0,NULL,0,0),(605,605,1,1001,'2010-03-22 11:42:04',NULL,1,1,0,NULL,0,0),(606,606,1,1001,'2010-03-22 15:37:08',NULL,1,1,0,NULL,0,0),(607,607,1,1001,'2010-03-22 17:23:33',NULL,1,1,0,NULL,0,0),(608,608,1,1001,'2010-03-22 18:11:29',NULL,1,1,0,NULL,0,0),(609,609,1,1001,'2010-03-22 22:02:16',NULL,1,1,0,NULL,0,0),(610,610,1,1001,'2010-03-22 23:44:47',NULL,1,1,0,NULL,0,0),(611,611,1,1001,'2010-03-23 21:13:59',NULL,1,1,0,NULL,0,0),(612,612,1,1001,'2010-03-24 00:00:24',NULL,1,1,0,NULL,0,0),(613,613,1,1001,'2010-03-24 00:21:34',NULL,1,1,0,NULL,0,0),(614,614,1,1001,'2010-03-24 06:54:57',NULL,1,1,0,NULL,0,0),(615,615,1,1001,'2010-03-24 10:45:54',NULL,1,1,0,NULL,0,0),(616,616,1,1001,'2010-03-24 14:38:22',NULL,1,1,0,NULL,0,0),(617,617,1,1001,'2010-03-24 18:43:16',NULL,1,1,0,NULL,0,0),(618,618,1,1001,'2010-03-24 23:50:56',NULL,1,1,0,NULL,0,0),(619,619,1,1001,'2010-03-25 10:45:59',NULL,1,1,0,NULL,0,0),(620,620,1,1001,'2010-03-25 22:20:09',NULL,1,1,0,NULL,0,0),(621,621,1,1001,'2010-03-26 05:58:50',NULL,1,1,0,NULL,0,0),(622,622,1,1001,'2010-03-26 15:37:26',NULL,1,1,0,NULL,0,0),(623,623,1,1001,'2010-03-26 17:06:46',NULL,1,1,0,NULL,0,0),(624,624,1,1001,'2010-03-26 17:07:26',NULL,1,1,0,NULL,0,0),(625,625,1,1001,'2010-03-26 17:34:37',NULL,1,1,0,NULL,0,0),(626,626,1,1001,'2010-03-26 18:17:11',NULL,1,1,0,NULL,0,0),(627,627,1,1001,'2010-03-26 20:31:29',NULL,1,1,0,NULL,0,0),(628,628,1,1001,'2010-03-26 21:45:21',NULL,1,1,0,NULL,0,0),(629,629,1,1001,'2010-03-27 11:33:08',NULL,1,1,0,NULL,0,0),(630,630,1,1001,'2010-03-27 13:05:23',NULL,1,1,0,NULL,0,0),(631,631,1,1001,'2010-03-27 13:53:05',NULL,1,1,0,NULL,0,0),(632,632,1,1001,'2010-03-27 17:15:44',NULL,1,1,0,NULL,0,0),(633,633,1,1001,'2010-03-27 19:27:04',NULL,1,1,0,NULL,0,0),(634,634,1,1001,'2010-03-27 19:27:15',NULL,1,1,0,NULL,0,0),(635,635,1,1001,'2010-03-27 22:34:16',NULL,1,1,0,NULL,0,0),(636,636,1,1001,'2010-03-28 13:24:10',NULL,1,1,0,NULL,0,0),(637,637,1,1001,'2010-03-28 18:53:44',NULL,1,1,0,NULL,0,0),(638,638,1,1001,'2010-03-29 04:40:07',NULL,1,1,0,NULL,0,0),(639,639,1,1001,'2010-03-29 10:26:05',NULL,1,1,0,NULL,0,0),(640,640,1,1001,'2010-03-29 12:04:10',NULL,1,1,0,NULL,0,0),(641,641,1,1001,'2010-03-30 14:03:00',NULL,1,1,0,NULL,0,0),(642,642,1,1001,'2010-03-30 17:35:39',NULL,1,1,0,NULL,0,0),(643,643,1,1001,'2010-03-31 07:32:01',NULL,1,1,0,NULL,0,0),(644,644,1,1001,'2010-03-31 12:20:58',NULL,1,1,0,NULL,0,0),(645,645,1,1001,'2010-03-31 15:06:10',NULL,1,1,0,NULL,0,0),(646,646,1,1001,'2010-04-01 05:39:36',NULL,1,1,0,NULL,0,0),(647,647,1,1001,'2010-04-01 06:57:25',NULL,1,1,0,NULL,0,0),(648,648,1,1001,'2010-04-01 10:44:33',NULL,1,1,0,NULL,0,0),(649,649,1,1001,'2010-04-01 15:44:12',NULL,1,1,0,NULL,0,0),(650,650,1,1001,'2010-04-01 18:29:51',NULL,1,1,0,NULL,0,0),(651,651,1,1001,'2010-04-02 08:10:42',NULL,1,1,0,NULL,0,0),(652,652,1,1001,'2010-04-02 11:24:46',NULL,1,1,0,NULL,0,0),(653,653,1,1001,'2010-04-02 14:48:36',NULL,1,1,0,NULL,0,0),(654,654,1,1001,'2010-04-02 17:43:14',NULL,1,1,0,NULL,0,0),(655,655,1,1001,'2010-04-02 20:48:09',NULL,1,1,0,NULL,0,0),(656,656,1,1001,'2010-04-03 06:31:10',NULL,1,1,0,NULL,0,0),(657,657,1,1001,'2010-04-03 06:33:17',NULL,1,1,0,NULL,0,0),(658,658,1,1001,'2010-04-03 10:15:35',NULL,1,1,0,NULL,0,0),(659,659,1,1001,'2010-04-03 14:00:07',NULL,1,1,0,NULL,0,0),(660,660,1,1001,'2010-04-03 22:37:46',NULL,1,1,0,NULL,0,0),(661,661,1,1001,'2010-04-04 00:43:29',NULL,1,1,0,NULL,0,0),(662,662,1,1001,'2010-04-04 09:13:21',NULL,1,1,0,NULL,0,0),(663,663,1,1001,'2010-04-04 13:27:53',NULL,1,1,0,NULL,0,0),(664,664,1,1001,'2010-04-04 16:38:02',NULL,1,1,0,NULL,0,0),(665,665,1,1001,'2010-04-04 18:57:20',NULL,1,1,0,NULL,0,0),(666,666,1,1001,'2010-04-04 19:26:44',NULL,1,1,0,NULL,0,0),(667,667,1,1001,'2010-04-04 23:11:14',NULL,1,1,0,NULL,0,0),(668,668,1,1001,'2010-04-05 07:32:07',NULL,1,1,0,NULL,0,0),(669,669,1,1001,'2010-04-05 12:50:01',NULL,1,1,0,NULL,0,0),(670,670,1,1001,'2010-04-05 23:45:38',NULL,1,1,0,NULL,0,0),(671,671,1,1001,'2010-04-06 12:47:16',NULL,1,1,0,NULL,0,0),(672,672,1,1001,'2010-04-07 11:25:07',NULL,1,1,0,NULL,0,0),(673,673,1,1001,'2010-04-07 13:23:24',NULL,1,1,0,NULL,0,0),(674,674,1,1001,'2010-04-07 13:59:34',NULL,1,1,0,NULL,0,0),(675,675,1,1001,'2010-04-07 15:45:49',NULL,1,1,0,NULL,0,0),(676,676,1,1001,'2010-04-08 08:34:55',NULL,1,1,0,NULL,0,0),(677,677,1,1001,'2010-04-08 08:54:32',NULL,1,1,0,NULL,0,0),(678,678,1,1001,'2010-04-08 16:37:32',NULL,1,1,0,NULL,0,0),(679,679,1,1001,'2010-04-08 20:56:20',NULL,1,1,0,NULL,0,0),(680,680,1,1001,'2010-04-08 23:02:49',NULL,1,1,0,NULL,0,0),(681,681,1,1001,'2010-04-09 15:40:45',NULL,1,1,0,NULL,0,0),(682,682,1,1001,'2010-04-09 19:42:21',NULL,1,1,0,NULL,0,0),(683,683,1,1001,'2010-04-09 21:10:36',NULL,1,1,0,NULL,0,0),(684,684,1,1001,'2010-04-10 01:02:10',NULL,1,1,0,NULL,0,0),(685,685,1,1001,'2010-04-10 16:50:23',NULL,1,1,0,NULL,0,0),(686,686,1,1001,'2010-04-10 18:05:00',NULL,1,1,0,NULL,0,0),(687,687,1,1001,'2010-04-10 18:36:28',NULL,1,1,0,NULL,0,0),(688,688,1,1001,'2010-04-10 19:44:17',NULL,1,1,0,NULL,0,0),(689,689,1,1001,'2010-04-10 20:09:21',NULL,1,1,0,NULL,0,0),(690,690,1,1001,'2010-04-10 20:59:25',NULL,1,1,0,NULL,0,0),(691,691,1,1001,'2010-04-11 10:26:39',NULL,1,1,0,NULL,0,0),(692,692,1,1001,'2010-04-11 12:04:54',NULL,1,1,0,NULL,0,0),(693,693,1,1001,'2010-04-11 13:31:07',NULL,1,1,0,NULL,0,0),(694,694,1,1001,'2010-04-11 18:20:12',NULL,1,1,0,NULL,0,0),(695,695,1,1001,'2010-04-11 20:47:42',NULL,1,1,0,NULL,0,0),(696,696,1,1001,'2010-04-11 23:22:45',NULL,1,1,0,NULL,0,0),(697,697,1,1001,'2010-04-12 10:54:41',NULL,1,1,0,NULL,0,0),(698,698,1,1001,'2010-04-12 13:35:48',NULL,1,1,0,NULL,0,0),(699,699,1,1001,'2010-04-12 16:42:56',NULL,1,1,0,NULL,0,0),(700,700,1,1001,'2010-04-12 19:37:11',NULL,1,1,0,NULL,0,0),(701,701,1,1001,'2010-04-12 23:38:19',NULL,1,1,0,NULL,0,0),(702,702,1,1001,'2010-04-13 12:36:55',NULL,1,1,0,NULL,0,0),(703,703,1,1001,'2010-04-13 15:27:02',NULL,1,1,0,NULL,0,0),(704,704,1,1001,'2010-04-13 16:39:05',NULL,1,1,0,NULL,0,0),(705,705,1,1001,'2010-04-14 07:17:56',NULL,1,1,0,NULL,0,0),(706,706,1,1001,'2010-04-14 07:27:40',NULL,1,1,0,NULL,0,0),(707,707,1,1001,'2010-04-14 08:25:04',NULL,1,1,0,NULL,0,0),(708,708,1,1001,'2010-04-14 09:21:10',NULL,1,1,0,NULL,0,0),(709,709,1,1001,'2010-04-14 12:33:45',NULL,1,1,0,NULL,0,0),(710,710,1,1001,'2010-04-14 12:45:24',NULL,1,1,0,NULL,0,0),(711,711,1,1001,'2010-04-14 13:45:28',NULL,1,1,0,NULL,0,0),(712,712,1,1001,'2010-04-14 15:38:59',NULL,1,1,0,NULL,0,0),(713,713,1,1001,'2010-04-14 17:29:15',NULL,1,1,0,NULL,0,0),(714,714,1,1001,'2010-04-14 19:30:57',NULL,1,1,0,NULL,0,0),(715,715,1,1001,'2010-04-14 20:37:23',NULL,1,1,0,NULL,0,0),(716,716,1,1001,'2010-04-14 22:41:21',NULL,1,1,0,NULL,0,0),(717,717,1,1001,'2010-04-15 13:17:44',NULL,1,1,0,NULL,0,0),(718,718,1,1001,'2010-04-15 15:30:11',NULL,1,1,0,NULL,0,0),(719,719,1,1001,'2010-04-15 21:45:25',NULL,1,1,0,NULL,0,0),(720,720,1,1001,'2010-04-16 14:34:47',NULL,1,1,0,NULL,0,0),(721,721,1,1001,'2010-04-16 17:44:12',NULL,1,1,0,NULL,0,0),(722,722,1,1001,'2010-04-16 19:39:44',NULL,1,1,0,NULL,0,0),(723,723,1,1001,'2010-04-17 10:17:35',NULL,1,1,0,NULL,0,0),(724,724,1,1001,'2010-04-17 10:29:24',NULL,1,1,0,NULL,0,0),(725,725,1,1001,'2010-04-17 13:01:04',NULL,1,1,0,NULL,0,0),(726,726,1,1001,'2010-04-17 16:14:08',NULL,1,1,0,NULL,0,0),(727,727,1,1001,'2010-04-18 07:35:30',NULL,1,1,0,NULL,0,0),(728,728,1,1001,'2010-04-18 10:08:41',NULL,1,1,0,NULL,0,0),(729,729,1,1001,'2010-04-18 17:32:53',NULL,1,1,0,NULL,0,0),(730,730,1,1001,'2010-04-18 17:37:01',NULL,1,1,0,NULL,0,0),(731,731,1,1001,'2010-04-19 12:48:20',NULL,1,1,0,NULL,0,0),(732,732,1,1001,'2010-04-19 17:50:02',NULL,1,1,0,NULL,0,0),(733,733,1,1001,'2010-04-19 19:04:13',NULL,1,1,0,NULL,0,0),(734,734,1,1001,'2010-04-19 19:45:55',NULL,1,1,0,NULL,0,0),(735,735,1,1001,'2010-04-20 08:25:37',NULL,1,1,0,NULL,0,0),(736,736,1,1001,'2010-04-20 10:19:24',NULL,1,1,0,NULL,0,0),(737,737,1,1001,'2010-04-20 12:37:26',NULL,1,1,0,NULL,0,0),(738,738,1,1001,'2010-04-20 12:40:08',NULL,1,1,0,NULL,0,0),(739,739,1,1001,'2010-04-20 14:22:02',NULL,1,1,0,NULL,0,0),(740,740,1,1001,'2010-04-20 20:39:01',NULL,1,1,0,NULL,0,0),(741,741,1,1001,'2010-04-20 21:42:35',NULL,1,1,0,NULL,0,0),(742,742,1,1001,'2010-04-21 11:42:53',NULL,1,1,0,NULL,0,0),(743,743,1,1001,'2010-04-21 12:57:03',NULL,1,1,0,NULL,0,0),(744,744,1,1001,'2010-04-22 11:27:23',NULL,1,1,0,NULL,0,0),(745,745,1,1001,'2010-04-22 14:27:52',NULL,1,1,0,NULL,0,0),(746,746,1,1001,'2010-04-22 17:19:04',NULL,1,1,0,NULL,0,0),(747,747,1,1001,'2010-04-22 19:00:39',NULL,1,1,0,NULL,0,0),(748,748,1,1001,'2010-04-22 19:47:49',NULL,1,1,0,NULL,0,0),(749,749,1,1001,'2010-04-23 08:20:28',NULL,1,1,0,NULL,0,0),(750,750,1,1001,'2010-04-23 10:52:15',NULL,1,1,0,NULL,0,0),(751,751,1,1001,'2010-04-23 13:39:39',NULL,1,1,0,NULL,0,0),(752,752,1,1001,'2010-04-23 15:28:17',NULL,1,1,0,NULL,0,0),(753,753,1,1001,'2010-04-24 15:47:47',NULL,1,1,0,NULL,0,0),(754,754,1,1001,'2010-04-24 15:52:04',NULL,1,1,0,NULL,0,0),(755,755,1,1001,'2010-04-24 16:14:29',NULL,1,1,0,NULL,0,0),(756,756,1,1001,'2010-04-24 18:28:22',NULL,1,1,0,NULL,0,0),(757,757,1,1001,'2010-04-25 10:47:04',NULL,1,1,0,NULL,0,0),(758,758,1,1001,'2010-04-25 11:50:53',NULL,1,1,0,NULL,0,0),(759,759,1,1001,'2010-04-25 15:40:19',NULL,1,1,0,NULL,0,0),(760,760,1,1001,'2010-04-25 15:52:49',NULL,1,1,0,NULL,0,0),(761,761,1,1001,'2010-04-25 18:40:37',NULL,1,1,0,NULL,0,0),(762,762,1,1001,'2010-04-25 18:54:47',NULL,1,1,0,NULL,0,0),(763,763,1,1001,'2010-04-25 20:54:14',NULL,1,1,0,NULL,0,0),(764,764,1,1001,'2010-04-26 00:00:18',NULL,1,1,0,NULL,0,0),(765,765,1,1001,'2010-04-26 10:56:59',NULL,1,1,0,NULL,0,0),(766,766,1,1001,'2010-04-26 13:48:46',NULL,1,1,0,NULL,0,0),(767,767,1,1001,'2010-04-26 14:29:25',NULL,1,1,0,NULL,0,0),(768,768,1,1001,'2010-04-26 14:31:48',NULL,1,1,0,NULL,0,0),(769,769,1,1001,'2010-04-26 16:20:35',NULL,1,1,0,NULL,0,0),(770,770,1,1001,'2010-04-27 07:45:38',NULL,1,1,0,NULL,0,0),(771,771,1,1001,'2010-04-27 11:03:14',NULL,1,1,0,NULL,0,0),(772,772,1,1001,'2010-04-27 13:12:13',NULL,1,1,0,NULL,0,0),(773,773,1,1001,'2010-04-28 09:48:27',NULL,1,1,0,NULL,0,0),(774,774,1,1001,'2010-04-28 10:16:44',NULL,1,1,0,NULL,0,0),(775,775,1,1001,'2010-04-28 12:48:21',NULL,1,1,0,NULL,0,0),(776,776,1,1001,'2010-04-28 12:53:51',NULL,1,1,0,NULL,0,0),(777,777,1,1001,'2010-04-28 12:56:35',NULL,1,1,0,NULL,0,0),(778,778,1,1001,'2010-04-28 16:39:54',NULL,1,1,0,NULL,0,0),(779,779,1,1001,'2010-04-28 18:11:36',NULL,1,1,0,NULL,0,0),(780,780,1,1001,'2010-04-28 22:55:17',NULL,1,1,0,NULL,0,0),(781,781,1,1001,'2010-04-29 10:50:27',NULL,1,1,0,NULL,0,0),(782,782,1,1001,'2010-04-29 11:59:22',NULL,1,1,0,NULL,0,0),(783,783,1,1001,'2010-04-29 16:07:36',NULL,1,1,0,NULL,0,0),(784,784,1,1001,'2010-04-29 18:40:59',NULL,1,1,0,NULL,0,0),(785,785,1,1001,'2010-04-30 09:48:29',NULL,1,1,0,NULL,0,0),(786,786,1,1001,'2010-04-30 12:24:35',NULL,1,1,0,NULL,0,0),(787,787,1,1001,'2010-04-30 12:31:15',NULL,1,1,0,NULL,0,0),(788,788,1,1001,'2010-04-30 13:19:16',NULL,1,1,0,NULL,0,0),(789,789,1,1001,'2010-04-30 17:48:58',NULL,1,1,0,NULL,0,0),(790,790,1,1001,'2010-04-30 22:56:39',NULL,1,1,0,NULL,0,0),(791,791,1,1001,'2010-05-01 07:51:11',NULL,1,1,0,NULL,0,0),(792,792,1,1001,'2010-05-01 08:23:55',NULL,1,1,0,NULL,0,0),(793,793,1,1001,'2010-05-01 12:45:35',NULL,1,1,0,NULL,0,0),(794,794,1,1001,'2010-05-01 15:55:36',NULL,1,1,0,NULL,0,0),(795,795,1,1001,'2010-05-02 09:39:26',NULL,1,1,0,NULL,0,0),(796,796,1,1001,'2010-05-02 10:34:17',NULL,1,1,0,NULL,0,0),(797,797,1,1001,'2010-05-03 12:53:52',NULL,1,1,0,NULL,0,0),(798,798,1,1001,'2010-05-03 13:29:01',NULL,1,1,0,NULL,0,0),(799,799,1,1001,'2010-05-03 16:49:01',NULL,1,1,0,NULL,0,0),(800,800,1,1001,'2010-05-03 19:07:51',NULL,1,1,0,NULL,0,0),(801,801,1,1001,'2010-05-04 08:39:58',NULL,1,1,0,NULL,0,0),(802,802,1,1001,'2010-05-04 12:52:26',NULL,1,1,0,NULL,0,0),(803,803,1,1001,'2010-05-04 13:59:02',NULL,1,1,0,NULL,0,0),(804,804,1,1001,'2010-05-04 15:03:17',NULL,1,1,0,NULL,0,0),(805,805,1,1001,'2010-05-04 16:01:19',NULL,1,1,0,NULL,0,0),(806,806,1,1001,'2010-05-04 18:06:04',NULL,1,1,0,NULL,0,0),(807,807,1,1001,'2010-05-04 19:11:39',NULL,1,1,0,NULL,0,0),(808,808,1,1001,'2010-05-04 22:04:47',NULL,1,1,0,NULL,0,0),(809,809,1,1001,'2010-05-04 22:38:42',NULL,1,1,0,NULL,0,0),(810,810,1,1001,'2010-05-05 10:21:09',NULL,1,1,0,NULL,0,0),(811,811,1,1001,'2010-05-05 16:59:23',NULL,1,1,0,NULL,0,0),(812,812,1,1001,'2010-05-05 17:53:37',NULL,1,1,0,NULL,0,0),(813,813,1,1001,'2010-05-05 21:58:42',NULL,1,1,0,NULL,0,0),(814,814,1,1001,'2010-05-06 13:32:36',NULL,1,1,0,NULL,0,0),(815,815,1,1001,'2010-05-06 14:11:45',NULL,1,1,0,NULL,0,0),(816,816,1,1001,'2010-05-06 22:13:43',NULL,1,1,0,NULL,0,0),(817,817,1,1001,'2010-05-07 15:54:39',NULL,1,1,0,NULL,0,0),(818,818,1,1001,'2010-05-07 18:55:17',NULL,1,1,0,NULL,0,0),(819,819,1,1001,'2010-05-07 20:28:41',NULL,1,1,0,NULL,0,0),(820,820,1,1001,'2010-05-08 10:52:57',NULL,1,1,0,NULL,0,0),(821,821,1,1001,'2010-05-08 15:36:48',NULL,1,1,0,NULL,0,0),(822,822,1,1001,'2010-05-08 16:05:28',NULL,1,1,0,NULL,0,0),(823,823,1,1001,'2010-05-08 18:46:36',NULL,1,1,0,NULL,0,0),(824,824,1,1001,'2010-05-08 20:43:40',NULL,1,1,0,NULL,0,0),(825,825,1,1001,'2010-05-08 21:07:41',NULL,1,1,0,NULL,0,0),(826,826,1,1001,'2010-05-09 02:04:58',NULL,1,1,0,NULL,0,0),(827,827,1,1001,'2010-05-09 13:25:15',NULL,1,1,0,NULL,0,0),(828,828,1,1001,'2010-05-09 16:38:44',NULL,1,1,0,NULL,0,0),(829,829,1,1001,'2010-05-09 17:03:36',NULL,1,1,0,NULL,0,0),(830,830,1,1001,'2010-05-09 19:15:07',NULL,1,1,0,NULL,0,0),(831,831,1,1001,'2010-05-09 19:48:54',NULL,1,1,0,NULL,0,0),(832,832,1,1001,'2010-05-10 00:47:54',NULL,1,1,0,NULL,0,0),(833,833,1,1001,'2010-05-10 21:19:20',NULL,1,1,0,NULL,0,0),(834,834,1,1001,'2010-05-11 12:32:09',NULL,1,1,0,NULL,0,0),(835,835,1,1001,'2010-05-11 15:41:54',NULL,1,1,0,NULL,0,0),(836,836,1,1001,'2010-05-11 16:43:36',NULL,1,1,0,NULL,0,0),(837,837,1,1001,'2010-05-11 19:15:07',NULL,1,1,0,NULL,0,0),(838,838,1,1001,'2010-05-11 19:17:24',NULL,1,1,0,NULL,0,0),(839,839,1,1001,'2010-05-11 23:32:44',NULL,1,1,0,NULL,0,0),(840,840,1,1001,'2010-05-12 11:13:18',NULL,1,1,0,NULL,0,0),(841,841,1,1001,'2010-05-12 14:27:22',NULL,1,1,0,NULL,0,0),(842,842,1,1001,'2010-05-12 20:31:40',NULL,1,1,0,NULL,0,0),(843,843,1,1001,'2010-05-12 20:40:46',NULL,1,1,0,NULL,0,0),(844,844,1,1001,'2010-05-12 22:44:20',NULL,1,1,0,NULL,0,0),(845,845,1,1001,'2010-05-13 10:19:06',NULL,1,1,0,NULL,0,0),(846,846,1,1001,'2010-05-13 12:20:27',NULL,1,1,0,NULL,0,0),(847,847,1,1001,'2010-05-13 16:53:08',NULL,1,1,0,NULL,0,0),(848,848,1,1001,'2010-05-13 17:03:22',NULL,1,1,0,NULL,0,0),(849,849,1,1001,'2010-05-13 20:21:55',NULL,1,1,0,NULL,0,0),(850,850,1,1001,'2010-05-13 20:30:16',NULL,1,1,0,NULL,0,0),(851,851,1,1001,'2010-05-14 09:55:45',NULL,1,1,0,NULL,0,0),(852,852,1,1001,'2010-05-14 10:17:56',NULL,1,1,0,NULL,0,0),(853,853,1,1001,'2010-05-14 12:11:17',NULL,1,1,0,NULL,0,0),(854,854,1,1001,'2010-05-14 12:49:39',NULL,1,1,0,NULL,0,0),(855,855,1,1001,'2010-05-14 19:37:32',NULL,1,1,0,NULL,0,0),(856,856,1,1001,'2010-05-15 08:57:58',NULL,1,1,0,NULL,0,0),(857,857,1,1001,'2010-05-15 09:03:02',NULL,1,1,0,NULL,0,0),(858,858,1,1001,'2010-05-15 09:10:01',NULL,1,1,0,NULL,0,0),(859,859,1,1001,'2010-05-15 12:51:49',NULL,1,1,0,NULL,0,0),(860,860,1,1001,'2010-05-15 14:40:39',NULL,1,1,0,NULL,0,0),(861,861,1,1001,'2010-05-15 15:59:27',NULL,1,1,0,NULL,0,0),(862,862,1,1001,'2010-05-15 20:23:39',NULL,1,1,0,NULL,0,0),(863,863,1,1001,'2010-05-15 21:05:12',NULL,1,1,0,NULL,0,0),(864,864,1,1001,'2010-05-15 22:08:56',NULL,1,1,0,NULL,0,0),(865,865,1,1001,'2010-05-15 23:22:55',NULL,1,1,0,NULL,0,0),(866,866,1,1001,'2010-05-16 11:50:12',NULL,1,1,0,NULL,0,0),(867,867,1,1001,'2010-05-16 12:10:02',NULL,1,1,0,NULL,0,0),(868,868,1,1001,'2010-05-16 18:29:48',NULL,1,1,0,NULL,0,0),(869,869,1,1001,'2010-05-16 19:39:39',NULL,1,1,0,NULL,0,0),(870,870,1,1001,'2010-05-17 13:41:26',NULL,1,1,0,NULL,0,0),(871,871,1,1001,'2010-05-17 17:17:19',NULL,1,1,0,NULL,0,0),(872,872,1,1001,'2010-05-17 18:26:52',NULL,1,1,0,NULL,0,0),(873,873,1,1001,'2010-05-17 21:18:24',NULL,1,1,0,NULL,0,0),(874,874,1,1001,'2010-05-18 07:35:49',NULL,1,1,0,NULL,0,0),(875,875,1,1001,'2010-05-18 09:03:58',NULL,1,1,0,NULL,0,0),(876,876,1,1001,'2010-05-18 12:40:42',NULL,1,1,0,NULL,0,0),(877,877,1,1001,'2010-05-18 13:01:38',NULL,1,1,0,NULL,0,0),(878,878,1,1001,'2010-05-18 20:14:03',NULL,1,1,0,NULL,0,0),(879,879,1,1001,'2010-05-18 20:48:56',NULL,1,1,0,NULL,0,0),(880,880,1,1001,'2010-05-19 08:48:12',NULL,1,1,0,NULL,0,0),(881,881,1,1001,'2010-05-19 13:07:54',NULL,1,1,0,NULL,0,0),(882,882,1,1001,'2010-05-19 15:51:18',NULL,1,1,0,NULL,0,0),(883,883,1,1001,'2010-05-19 19:53:38',NULL,1,1,0,NULL,0,0),(884,884,1,1001,'2010-05-20 08:58:28',NULL,1,1,0,NULL,0,0),(885,885,1,1001,'2010-05-20 10:16:02',NULL,1,1,0,NULL,0,0),(886,886,1,1001,'2010-05-20 14:07:51',NULL,1,1,0,NULL,0,0),(887,887,1,1001,'2010-05-20 15:20:43',NULL,1,1,0,NULL,0,0),(888,888,1,1001,'2010-05-20 21:30:57',NULL,1,1,0,NULL,0,0),(889,889,1,1001,'2010-05-21 07:37:35',NULL,1,1,0,NULL,0,0),(890,890,1,1001,'2010-05-21 12:30:26',NULL,1,1,0,NULL,0,0),(891,891,1,1001,'2010-05-21 14:59:39',NULL,1,1,0,NULL,0,0),(892,892,1,1001,'2010-05-21 18:24:54',NULL,1,1,0,NULL,0,0),(893,893,1,1001,'2010-05-22 11:40:12',NULL,1,1,0,NULL,0,0),(894,894,1,1001,'2010-05-22 13:37:16',NULL,1,1,0,NULL,0,0),(895,895,1,1001,'2010-05-22 22:06:59',NULL,1,1,0,NULL,0,0),(896,896,1,1001,'2010-05-23 10:26:44',NULL,1,1,0,NULL,0,0),(897,897,1,1001,'2010-05-23 11:51:14',NULL,1,1,0,NULL,0,0),(898,898,1,1001,'2010-05-23 12:01:53',NULL,1,1,0,NULL,0,0),(899,899,1,1001,'2010-05-23 16:39:04',NULL,1,1,0,NULL,0,0),(900,900,1,1001,'2010-05-23 19:37:55',NULL,1,1,0,NULL,0,0),(901,901,1,1001,'2010-05-23 23:57:13',NULL,1,1,0,NULL,0,0),(902,902,1,1001,'2010-05-24 03:40:13',NULL,1,1,0,NULL,0,0),(903,903,1,1001,'2010-05-24 19:03:26',NULL,1,1,0,NULL,0,0),(904,904,1,1001,'2010-05-25 12:28:08',NULL,1,1,0,NULL,0,0),(905,905,1,1001,'2010-05-25 17:43:42',NULL,1,1,0,NULL,0,0),(906,906,1,1001,'2010-05-25 18:35:47',NULL,1,1,0,NULL,0,0),(907,907,1,1001,'2010-05-25 18:39:44',NULL,1,1,0,NULL,0,0),(908,908,1,1001,'2010-05-25 20:33:44',NULL,1,1,0,NULL,0,0),(909,909,1,1001,'2010-05-26 09:24:54',NULL,1,1,0,NULL,0,0),(910,910,1,1001,'2010-05-26 14:53:19',NULL,1,1,0,NULL,0,0),(911,911,1,1001,'2010-05-26 16:47:35',NULL,1,1,0,NULL,0,0),(912,912,1,1001,'2010-05-26 18:00:31',NULL,1,1,0,NULL,0,0),(913,913,1,1001,'2010-05-27 11:26:06',NULL,1,1,0,NULL,0,0),(914,914,1,1001,'2010-05-27 17:13:25',NULL,1,1,0,NULL,0,0),(915,915,1,1001,'2010-05-27 18:21:03',NULL,1,1,0,NULL,0,0),(916,916,1,1001,'2010-05-27 20:44:36',NULL,1,1,0,NULL,0,0),(917,917,1,1001,'2010-05-27 21:01:44',NULL,1,1,0,NULL,0,0),(918,918,1,1001,'2010-05-27 23:59:17',NULL,1,1,0,NULL,0,0),(919,919,1,1001,'2010-05-28 10:20:16',NULL,1,1,0,NULL,0,0),(920,920,1,1001,'2010-05-29 11:35:50',NULL,1,1,0,NULL,0,0),(921,921,1,1001,'2010-05-29 14:07:36',NULL,1,1,0,NULL,0,0),(922,922,1,1001,'2010-05-29 15:40:15',NULL,1,1,0,NULL,0,0),(923,923,1,1001,'2010-05-29 21:25:51',NULL,1,1,0,NULL,0,0),(924,924,1,1001,'2010-05-30 09:57:41',NULL,1,1,0,NULL,0,0),(925,925,1,1001,'2010-05-30 14:24:52',NULL,1,1,0,NULL,0,0),(926,926,1,1001,'2010-05-30 15:28:45',NULL,1,1,0,NULL,0,0),(927,927,1,1001,'2010-06-01 13:18:48',NULL,1,1,0,NULL,0,0),(928,928,1,1001,'2010-06-01 15:49:53',NULL,1,1,0,NULL,0,0),(929,929,1,1001,'2010-06-01 18:54:21',NULL,1,1,0,NULL,0,0),(930,930,1,1001,'2010-06-02 16:30:49',NULL,1,1,0,NULL,0,0),(931,931,1,1001,'2010-06-02 18:05:11',NULL,1,1,0,NULL,0,0),(932,932,1,1001,'2010-06-02 19:58:53',NULL,1,1,0,NULL,0,0),(933,933,1,1001,'2010-06-02 20:16:23',NULL,1,1,0,NULL,0,0),(934,934,1,1001,'2010-06-03 08:42:20',NULL,1,1,0,NULL,0,0),(935,935,1,1001,'2010-06-03 17:09:53',NULL,1,1,0,NULL,0,0),(936,936,1,0,'2010-06-03 18:28:41',NULL,1,1,0,NULL,0,0),(937,937,1,1001,'2010-06-03 18:40:08',NULL,1,1,0,NULL,0,0),(938,938,1,1001,'2010-06-03 20:48:02',NULL,1,1,0,NULL,0,0),(939,939,1,1001,'2010-06-03 22:03:32',NULL,1,1,0,NULL,0,0),(940,940,1,1001,'2010-06-03 23:53:38',NULL,1,1,0,NULL,0,0),(941,941,1,1001,'2010-06-04 10:41:34',NULL,1,1,0,NULL,0,0),(942,942,1,1001,'2010-06-04 10:52:13',NULL,1,1,0,NULL,0,0),(943,943,1,1001,'2010-06-04 11:14:43',NULL,1,1,0,NULL,0,0),(944,944,1,1001,'2010-06-04 11:14:51',NULL,1,1,0,NULL,0,0),(945,945,1,1001,'2010-06-04 20:35:53',NULL,1,1,0,NULL,0,0),(946,946,1,1001,'2010-06-04 21:14:47',NULL,1,1,0,NULL,0,0),(947,947,1,1001,'2010-06-05 01:48:37',NULL,1,1,0,NULL,0,0),(948,948,1,1001,'2010-06-05 09:30:45',NULL,1,1,0,NULL,0,0),(949,949,1,1001,'2010-06-05 21:15:29',NULL,1,1,0,NULL,0,0),(950,950,1,1001,'2010-06-06 15:54:14',NULL,1,1,0,NULL,0,0),(951,951,1,1001,'2010-06-07 07:41:44',NULL,1,1,0,NULL,0,0),(952,952,1,1001,'2010-06-07 09:37:59',NULL,1,1,0,NULL,0,0),(953,953,1,1001,'2010-06-07 09:54:47',NULL,1,1,0,NULL,0,0),(954,954,1,1001,'2010-06-07 10:50:10',NULL,1,1,0,NULL,0,0),(955,955,1,1001,'2010-06-07 12:08:09',NULL,1,1,0,NULL,0,0),(956,956,1,1001,'2010-06-08 13:35:23',NULL,1,1,0,NULL,0,0),(957,957,1,1001,'2010-06-08 19:34:11',NULL,1,1,0,NULL,0,0),(958,958,1,1001,'2010-06-08 21:42:40',NULL,1,1,0,NULL,0,0),(959,959,1,1001,'2010-06-09 04:06:01',NULL,1,1,0,NULL,0,0),(960,960,1,1001,'2010-06-09 13:20:26',NULL,1,1,0,NULL,0,0),(961,961,1,1001,'2010-06-09 16:30:24',NULL,1,1,0,NULL,0,0),(962,962,1,1001,'2010-06-09 20:47:14',NULL,1,1,0,NULL,0,0),(963,963,1,1001,'2010-06-09 22:18:17',NULL,1,1,0,NULL,0,0),(964,964,1,1001,'2010-06-09 22:50:03',NULL,1,1,0,NULL,0,0),(965,965,1,1001,'2010-06-10 12:02:19',NULL,1,1,0,NULL,0,0),(966,966,1,1001,'2010-06-10 13:47:12',NULL,1,1,0,NULL,0,0),(967,967,1,1001,'2010-06-10 18:58:05',NULL,1,1,0,NULL,0,0),(968,968,1,1001,'2010-06-10 23:27:07',NULL,1,1,0,NULL,0,0),(969,969,1,1001,'2010-06-11 08:40:52',NULL,1,1,0,NULL,0,0),(970,970,1,1001,'2010-06-11 16:47:34',NULL,1,1,0,NULL,0,0),(971,971,1,1001,'2010-06-11 16:59:16',NULL,1,1,0,NULL,0,0),(972,972,1,1001,'2010-06-11 17:34:50',NULL,1,1,0,NULL,0,0),(973,973,1,1001,'2010-06-11 19:38:47',NULL,1,1,0,NULL,0,0),(974,974,1,1001,'2010-06-11 23:58:15',NULL,1,1,0,NULL,0,0),(975,975,1,1001,'2010-06-12 00:06:31',NULL,1,1,0,NULL,0,0),(976,976,1,1001,'2010-06-13 00:48:19',NULL,1,1,0,NULL,0,0),(977,977,1,1001,'2010-06-13 01:17:00',NULL,1,1,0,NULL,0,0),(978,978,1,1001,'2010-06-13 11:09:49',NULL,1,1,0,NULL,0,0),(979,979,1,1001,'2010-06-13 16:11:37',NULL,1,1,0,NULL,0,0),(980,980,1,1001,'2010-06-13 17:24:06',NULL,1,1,0,NULL,0,0),(981,981,1,1001,'2010-06-13 18:09:07',NULL,1,1,0,NULL,0,0),(982,982,1,1001,'2010-06-13 18:26:07',NULL,1,1,0,NULL,0,0),(983,983,1,1001,'2010-06-14 00:35:04',NULL,1,1,0,NULL,0,0),(984,984,1,1001,'2010-06-14 01:13:59',NULL,1,1,0,NULL,0,0),(985,985,1,1001,'2010-06-14 09:12:25',NULL,1,1,0,NULL,0,0),(986,986,1,1001,'2010-06-14 10:10:02',NULL,1,1,0,NULL,0,0),(987,987,1,1001,'2010-06-14 10:12:57',NULL,1,1,0,NULL,0,0),(988,988,1,1001,'2010-06-14 11:42:11',NULL,1,1,0,NULL,0,0),(989,989,1,1001,'2010-06-14 13:23:40',NULL,1,1,0,NULL,0,0),(990,990,1,1001,'2010-06-14 13:41:38',NULL,1,1,0,NULL,0,0),(991,991,1,1001,'2010-06-15 11:21:40',NULL,1,1,0,NULL,0,0),(992,992,1,1001,'2010-06-15 13:19:11',NULL,1,1,0,NULL,0,0),(993,993,1,1001,'2010-06-15 17:07:28',NULL,1,1,0,NULL,0,0),(994,994,1,1001,'2010-06-15 19:18:26',NULL,1,1,0,NULL,0,0),(995,995,1,1001,'2010-06-16 03:21:49',NULL,1,1,0,NULL,0,0),(996,996,1,1001,'2010-06-16 12:40:20',NULL,1,1,0,NULL,0,0),(997,997,1,1001,'2010-06-16 20:48:42',NULL,1,1,0,NULL,0,0),(998,998,1,1001,'2010-06-16 22:14:58',NULL,1,1,0,NULL,0,0),(999,999,1,1001,'2010-06-17 18:11:55',NULL,1,1,0,NULL,0,0),(1000,1000,1,1001,'2010-06-17 18:57:35',NULL,1,1,0,NULL,0,0),(1001,1001,1,1001,'2010-06-17 19:47:55',NULL,1,1,0,NULL,0,0),(1002,1002,1,1001,'2010-06-18 14:49:52',NULL,1,1,0,NULL,0,0),(1003,1003,1,1001,'2010-06-19 07:08:06',NULL,1,1,0,NULL,0,0),(1004,1004,1,1001,'2010-06-19 13:16:56',NULL,1,1,0,NULL,0,0),(1005,1005,1,1001,'2010-06-19 14:43:14',NULL,1,1,0,NULL,0,0),(1006,1006,1,1001,'2010-06-19 16:27:42',NULL,1,1,0,NULL,0,0),(1007,1007,1,1001,'2010-06-19 16:36:06',NULL,1,1,0,NULL,0,0),(1008,1008,1,1001,'2010-06-20 02:49:48',NULL,1,1,0,NULL,0,0),(1009,1009,1,1001,'2010-06-20 12:16:38',NULL,1,1,0,NULL,0,0),(1010,1010,1,1001,'2010-06-20 12:40:47',NULL,1,1,0,NULL,0,0),(1011,1011,1,1001,'2010-06-20 14:06:55',NULL,1,1,0,NULL,0,0),(1012,1012,1,1001,'2010-06-20 14:54:15',NULL,1,1,0,NULL,0,0),(1013,1013,1,1001,'2010-06-20 17:37:29',NULL,1,1,0,NULL,0,0),(1014,1014,1,1001,'2010-06-20 18:45:04',NULL,1,1,0,NULL,0,0),(1015,1015,1,1001,'2010-06-20 20:06:54',NULL,1,1,0,NULL,0,0),(1016,1016,1,1001,'2010-06-21 01:06:04',NULL,1,1,0,NULL,0,0),(1017,1017,1,1001,'2010-06-21 13:44:45',NULL,1,1,0,NULL,0,0),(1018,1018,1,1001,'2010-06-21 18:04:32',NULL,1,1,0,NULL,0,0),(1019,1019,1,1001,'2010-06-21 18:53:32',NULL,1,1,0,NULL,0,0),(1020,1020,1,1001,'2010-06-21 21:51:22',NULL,1,1,0,NULL,0,0),(1021,1021,1,1001,'2010-06-21 23:45:29',NULL,1,1,0,NULL,0,0),(1022,1022,1,1001,'2010-06-22 16:41:00',NULL,1,1,0,NULL,0,0),(1023,1023,1,1001,'2010-06-22 16:53:09',NULL,1,1,0,NULL,0,0),(1024,1024,1,1001,'2010-06-22 17:32:47',NULL,1,1,0,NULL,0,0),(1025,1025,1,1001,'2010-06-22 23:04:18',NULL,1,1,0,NULL,0,0),(1026,1026,1,1001,'2010-06-23 16:05:03',NULL,1,1,0,NULL,0,0),(1027,1027,1,1001,'2010-06-23 16:17:20',NULL,1,1,0,NULL,0,0),(1028,1028,1,1001,'2010-06-23 21:15:52',NULL,1,1,0,NULL,0,0),(1029,1029,1,1001,'2010-06-23 21:32:05',NULL,1,1,0,NULL,0,0),(1030,1030,1,1001,'2010-06-24 17:57:49',NULL,1,1,0,NULL,0,0),(1031,1031,1,1001,'2010-06-24 19:00:31',NULL,1,1,0,NULL,0,0),(1032,1032,1,1001,'2010-06-24 19:33:33',NULL,1,1,0,NULL,0,0),(1033,1033,1,1001,'2010-06-24 20:08:07',NULL,1,1,0,NULL,0,0),(1034,1034,1,1001,'2010-06-24 20:50:49',NULL,1,1,0,NULL,0,0),(1035,1035,1,1001,'2010-06-25 05:20:21',NULL,1,1,0,NULL,0,0),(1036,1036,1,1001,'2010-06-25 14:19:36',NULL,1,1,0,NULL,0,0),(1037,1037,1,1001,'2010-06-25 18:07:28',NULL,1,1,0,NULL,0,0),(1038,1038,1,1001,'2010-06-25 19:58:07',NULL,1,1,0,NULL,0,0),(1039,1039,1,1001,'2010-06-25 21:15:46',NULL,1,1,0,NULL,0,0),(1040,1040,1,1001,'2010-06-26 11:16:39',NULL,1,1,0,NULL,0,0),(1041,1041,1,1001,'2010-06-26 15:21:56',NULL,1,1,0,NULL,0,0),(1042,1042,1,1001,'2010-06-26 16:44:44',NULL,1,1,0,NULL,0,0),(1043,1043,1,1001,'2010-06-26 20:27:55',NULL,1,1,0,NULL,0,0),(1044,1044,1,1001,'2010-06-27 18:27:01',NULL,1,1,0,NULL,0,0),(1045,1045,1,1001,'2010-06-27 21:00:48',NULL,1,1,0,NULL,0,0),(1046,1046,1,1001,'2010-06-27 21:08:48',NULL,1,1,0,NULL,0,0),(1047,1047,1,1001,'2010-06-28 13:47:22',NULL,1,1,0,NULL,0,0),(1048,1048,1,1001,'2010-06-28 18:50:03',NULL,1,1,0,NULL,0,0),(1049,1049,1,1001,'2010-06-28 18:53:58',NULL,1,1,0,NULL,0,0),(1050,1050,1,1001,'2010-06-29 10:03:53',NULL,1,1,0,NULL,0,0),(1051,1051,1,1001,'2010-06-29 19:20:12',NULL,1,1,0,NULL,0,0),(1052,1052,1,1001,'2010-06-29 19:51:34',NULL,1,1,0,NULL,0,0),(1053,1053,1,1001,'2010-06-29 20:33:13',NULL,1,1,0,NULL,0,0),(1054,1054,1,1001,'2010-06-29 20:52:55',NULL,1,1,0,NULL,0,0),(1055,1055,1,1001,'2010-06-30 12:21:29',NULL,1,1,0,NULL,0,0),(1056,1056,1,1001,'2010-06-30 21:37:20',NULL,1,1,0,NULL,0,0),(1057,1057,1,1001,'2010-07-01 09:59:04',NULL,1,1,0,NULL,0,0),(1058,1058,1,1001,'2010-07-01 13:19:20',NULL,1,1,0,NULL,0,0),(1059,1059,1,1001,'2010-07-01 14:54:52',NULL,1,1,0,NULL,0,0),(1060,1060,1,1001,'2010-07-01 17:37:52',NULL,1,1,0,NULL,0,0),(1061,1061,1,1001,'2010-07-01 18:38:30',NULL,1,1,0,NULL,0,0),(1062,1062,1,1001,'2010-07-01 21:15:39',NULL,1,1,0,NULL,0,0),(1063,1063,1,1001,'2010-07-01 22:07:12',NULL,1,1,0,NULL,0,0),(1064,1064,1,1001,'2010-07-01 22:50:54',NULL,1,1,0,NULL,0,0),(1065,1065,1,1001,'2010-07-02 00:44:34',NULL,1,1,0,NULL,0,0),(1066,1066,1,1001,'2010-07-02 06:46:55',NULL,1,1,0,NULL,0,0),(1067,1067,1,1001,'2010-07-02 12:52:35',NULL,1,1,0,NULL,0,0),(1068,1068,1,1001,'2010-07-02 14:30:09',NULL,1,1,0,NULL,0,0),(1069,1069,1,1001,'2010-07-02 16:01:40',NULL,1,1,0,NULL,0,0),(1070,1070,1,1001,'2010-07-02 19:15:19',NULL,1,1,0,NULL,0,0),(1071,1071,1,1001,'2010-07-02 19:52:55',NULL,1,1,0,NULL,0,0),(1072,1072,1,1001,'2010-07-02 20:09:39',NULL,1,1,0,NULL,0,0),(1073,1073,1,1001,'2010-07-03 05:26:15',NULL,1,1,0,NULL,0,0),(1074,1074,1,1001,'2010-07-04 11:32:36',NULL,1,1,0,NULL,0,0),(1075,1075,1,1001,'2010-07-04 15:00:00',NULL,1,1,0,NULL,0,0),(1076,1076,1,1001,'2010-07-04 17:01:16',NULL,1,1,0,NULL,0,0),(1077,1077,1,1001,'2010-07-04 20:58:35',NULL,1,1,0,NULL,0,0),(1078,1078,1,1001,'2010-07-05 20:00:16',NULL,1,1,0,NULL,0,0),(1079,1079,1,1001,'2010-07-06 16:12:59',NULL,1,1,0,NULL,0,0),(1080,1080,1,1001,'2010-07-06 21:14:51',NULL,1,1,0,NULL,0,0),(1081,1081,1,1001,'2010-07-06 22:59:00',NULL,1,1,0,NULL,0,0),(1082,1082,1,1001,'2010-07-07 09:52:03',NULL,1,1,0,NULL,0,0),(1083,1083,1,1001,'2010-07-07 11:18:04',NULL,1,1,0,NULL,0,0),(1084,1084,1,1001,'2010-07-07 11:23:11',NULL,1,1,0,NULL,0,0),(1085,1085,1,1001,'2010-07-07 17:12:48',NULL,1,1,0,NULL,0,0),(1086,1086,1,1001,'2010-07-07 23:32:14',NULL,1,1,0,NULL,0,0),(1087,1087,1,1001,'2010-07-08 09:15:39',NULL,1,1,0,NULL,0,0),(1088,1088,1,1001,'2010-07-08 09:54:04',NULL,1,1,0,NULL,0,0),(1089,1089,1,1001,'2010-07-08 10:15:41',NULL,1,1,0,NULL,0,0),(1090,1090,1,1001,'2010-07-08 11:31:46',NULL,1,1,0,NULL,0,0),(1091,1091,1,1001,'2010-07-08 13:45:19',NULL,1,1,0,NULL,0,0),(1092,1092,1,1001,'2010-07-08 15:11:00',NULL,1,1,0,NULL,0,0),(1093,1093,1,1001,'2010-07-08 15:41:43',NULL,1,1,0,NULL,0,0),(1094,1094,1,1001,'2010-07-08 18:10:08',NULL,1,1,0,NULL,0,0),(1095,1095,1,1001,'2010-07-09 21:10:04',NULL,1,1,0,NULL,0,0),(1096,1096,1,1001,'2010-07-10 09:37:52',NULL,1,1,0,NULL,0,0),(1097,1097,1,1001,'2010-07-10 13:19:46',NULL,1,1,0,NULL,0,0),(1098,1098,1,1001,'2010-07-10 16:53:05',NULL,1,1,0,NULL,0,0),(1099,1099,1,1001,'2010-07-11 01:30:35',NULL,1,1,0,NULL,0,0),(1100,1100,1,1001,'2010-07-11 11:08:13',NULL,1,1,0,NULL,0,0),(1101,1101,1,1001,'2010-07-11 16:56:14',NULL,1,1,0,NULL,0,0),(1102,1102,1,1001,'2010-07-11 17:07:48',NULL,1,1,0,NULL,0,0),(1103,1103,1,1001,'2010-07-11 19:45:57',NULL,1,1,0,NULL,0,0),(1104,1104,1,1001,'2010-07-11 21:25:21',NULL,1,1,0,NULL,0,0),(1105,1105,1,1001,'2010-07-11 21:28:52',NULL,1,1,0,NULL,0,0),(1106,1106,1,1001,'2010-07-11 21:47:10',NULL,1,1,0,NULL,0,0),(1107,1107,1,1001,'2010-07-12 12:20:49',NULL,1,1,0,NULL,0,0),(1108,1108,1,1001,'2010-07-12 16:00:09',NULL,1,1,0,NULL,0,0),(1109,1109,1,1001,'2010-07-12 17:22:21',NULL,1,1,0,NULL,0,0),(1110,1110,1,1001,'2010-07-13 11:02:44',NULL,1,1,0,NULL,0,0),(1111,1111,1,1001,'2010-07-13 12:22:47',NULL,1,1,0,NULL,0,0),(1112,1112,1,1001,'2010-07-14 19:33:01',NULL,1,1,0,NULL,0,0),(1113,1113,1,1001,'2010-07-15 10:43:32',NULL,1,1,0,NULL,0,0),(1114,1114,1,1001,'2010-07-15 16:32:04',NULL,1,1,0,NULL,0,0),(1115,1115,1,1001,'2010-07-15 16:49:57',NULL,1,1,0,NULL,0,0),(1116,1116,1,1001,'2010-07-15 17:05:24',NULL,1,1,0,NULL,0,0),(1117,1117,1,1001,'2010-07-15 18:55:59',NULL,1,1,0,NULL,0,0),(1118,1118,1,1001,'2010-07-15 20:59:10',NULL,1,1,0,NULL,0,0),(1119,1119,1,1001,'2010-07-16 17:26:49',NULL,1,1,0,NULL,0,0),(1120,1120,1,1001,'2010-07-16 18:50:38',NULL,1,1,0,NULL,0,0),(1121,1121,1,1001,'2010-07-16 21:58:30',NULL,1,1,0,NULL,0,0),(1122,1122,1,1001,'2010-07-16 23:59:57',NULL,1,1,0,NULL,0,0),(1123,1123,1,1001,'2010-07-17 15:24:53',NULL,1,1,0,NULL,0,0),(1124,1124,1,1001,'2010-07-17 17:23:25',NULL,1,1,0,NULL,0,0),(1125,1125,1,1001,'2010-07-17 18:38:01',NULL,1,1,0,NULL,0,0),(1126,1126,1,1001,'2010-07-17 19:30:08',NULL,1,1,0,NULL,0,0),(1127,1127,1,1001,'2010-07-18 11:56:34',NULL,1,1,0,NULL,0,0),(1128,1128,1,1001,'2010-07-18 12:13:24',NULL,1,1,0,NULL,0,0),(1129,1129,1,1001,'2010-07-18 15:30:42',NULL,1,1,0,NULL,0,0),(1130,1130,1,1001,'2010-07-18 16:57:24',NULL,1,1,0,NULL,0,0),(1131,1131,1,1001,'2010-07-19 12:57:22',NULL,1,1,0,NULL,0,0),(1132,1132,1,1001,'2010-07-19 13:25:30',NULL,1,1,0,NULL,0,0),(1133,1133,1,1001,'2010-07-19 21:08:29',NULL,1,1,0,NULL,0,0),(1134,1134,1,1001,'2010-07-19 21:22:56',NULL,1,1,0,NULL,0,0),(1135,1135,1,1001,'2010-07-20 12:24:37',NULL,1,1,0,NULL,0,0),(1136,1136,1,1001,'2010-07-20 14:49:14',NULL,1,1,0,NULL,0,0),(1137,1137,1,1001,'2010-07-20 16:04:27',NULL,1,1,0,NULL,0,0),(1138,1138,1,1001,'2010-07-21 08:56:16',NULL,1,1,0,NULL,0,0),(1139,1139,1,1001,'2010-07-21 08:56:32',NULL,1,1,0,NULL,0,0),(1140,1140,1,1001,'2010-07-21 08:57:45',NULL,1,1,0,NULL,0,0),(1141,1141,1,1001,'2010-07-21 08:58:51',NULL,1,1,0,NULL,0,0),(1142,1142,1,1001,'2010-07-21 08:59:03',NULL,1,1,0,NULL,0,0),(1143,1143,1,1001,'2010-07-21 08:59:30',NULL,1,1,0,NULL,0,0),(1144,1144,1,1001,'2010-07-21 08:59:49',NULL,1,1,0,NULL,0,0),(1145,1145,1,1001,'2010-07-21 09:00:06',NULL,1,1,0,NULL,0,0),(1146,1146,1,1001,'2010-07-21 09:01:00',NULL,1,1,0,NULL,0,0),(1147,1147,1,1001,'2010-07-21 09:01:18',NULL,1,1,0,NULL,0,0),(1148,1148,1,1001,'2010-07-21 09:02:05',NULL,1,1,0,NULL,0,0),(1149,1149,1,1001,'2010-07-21 09:02:23',NULL,1,1,0,NULL,0,0),(1150,1150,1,1001,'2010-07-21 09:38:19',NULL,1,1,0,NULL,0,0),(1151,1151,1,1001,'2010-07-21 09:39:40',NULL,1,1,0,NULL,0,0),(1152,1152,1,1001,'2010-07-21 09:41:04',NULL,1,1,0,NULL,0,0),(1153,1153,1,1001,'2010-07-21 09:41:36',NULL,1,1,0,NULL,0,0),(1154,1154,1,1001,'2010-07-21 09:41:56',NULL,1,1,0,NULL,0,0),(1155,1155,1,1001,'2010-07-21 09:42:35',NULL,1,1,0,NULL,0,0),(1156,1156,1,1001,'2010-07-21 09:43:01',NULL,1,1,0,NULL,0,0),(1157,1157,1,1001,'2010-07-21 12:04:39',NULL,1,1,0,NULL,0,0),(1158,1158,1,1001,'2010-07-21 13:20:41',NULL,1,1,0,NULL,0,0),(1159,1159,1,1001,'2010-07-21 23:01:45',NULL,1,1,0,NULL,0,0),(1160,1160,1,1001,'2010-07-22 07:38:11',NULL,1,1,0,NULL,0,0),(1161,1161,1,1001,'2010-07-22 17:48:42',NULL,1,1,0,NULL,0,0),(1162,1162,1,1001,'2010-07-22 19:57:14',NULL,1,1,0,NULL,0,0),(1163,1163,1,1001,'2010-07-23 08:38:55',NULL,1,1,0,NULL,0,0),(1164,1164,1,1001,'2010-07-23 09:14:39',NULL,1,1,0,NULL,0,0),(1165,1165,1,1001,'2010-07-23 16:13:03',NULL,1,1,0,NULL,0,0),(1166,1166,1,1001,'2010-07-23 19:29:47',NULL,1,1,0,NULL,0,0),(1167,1167,1,1001,'2010-07-23 22:31:38',NULL,1,1,0,NULL,0,0),(1168,1168,1,1001,'2010-07-23 22:35:16',NULL,1,1,0,NULL,0,0),(1169,1169,1,1001,'2010-07-24 00:43:43',NULL,1,1,0,NULL,0,0),(1170,1170,1,1001,'2010-07-24 06:53:57',NULL,1,1,0,NULL,0,0),(1171,1171,1,1001,'2010-07-24 09:52:31',NULL,1,1,0,NULL,0,0),(1172,1172,1,1001,'2010-07-24 12:48:41',NULL,1,1,0,NULL,0,0),(1173,1173,1,1001,'2010-07-24 12:59:21',NULL,1,1,0,NULL,0,0),(1174,1174,1,1001,'2010-07-24 13:29:26',NULL,1,1,0,NULL,0,0),(1175,1175,1,1001,'2010-11-01 15:55:41',NULL,1,1,0,NULL,0,0);
/*!40000 ALTER TABLE `em_subscriber_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_subscriber_responder`
--

DROP TABLE IF EXISTS `em_subscriber_responder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_subscriber_responder` (
  `id` int(10) NOT NULL auto_increment,
  `subscriberid` int(10) NOT NULL default '0',
  `listid` int(10) NOT NULL default '0',
  `campaignid` int(10) NOT NULL default '0',
  `messageid` int(10) NOT NULL default '0',
  `sdate` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `subscriberid` (`subscriberid`),
  KEY `campaignid` (`campaignid`),
  KEY `messageid` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_subscriber_responder`
--

LOCK TABLES `em_subscriber_responder` WRITE;
/*!40000 ALTER TABLE `em_subscriber_responder` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_subscriber_responder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_sync`
--

DROP TABLE IF EXISTS `em_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_sync` (
  `id` int(10) NOT NULL auto_increment,
  `sync_name` varchar(250) NOT NULL default '',
  `db_type` enum('mysql','mssql','pg') NOT NULL default 'mysql',
  `db_name` varchar(250) NOT NULL default '',
  `db_user` varchar(250) NOT NULL default '',
  `db_pass` varchar(250) NOT NULL default '',
  `db_host` varchar(250) NOT NULL default 'localhost',
  `db_table` varchar(250) NOT NULL default '',
  `field_from` text,
  `field_to` text,
  `relid` int(10) NOT NULL default '0',
  `delete_all` tinyint(1) NOT NULL default '0',
  `rules` text,
  `tstamp` datetime default NULL,
  `destination` tinyint(1) NOT NULL default '0',
  `sendresponder` tinyint(1) NOT NULL default '0',
  `instantresponder` tinyint(1) NOT NULL default '0',
  `sentresponders` text,
  `skipbounced` tinyint(1) unsigned NOT NULL default '1',
  `skipunsub` tinyint(1) unsigned NOT NULL default '1',
  `lastmessage` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `relid` (`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_sync`
--

LOCK TABLES `em_sync` WRITE;
/*!40000 ALTER TABLE `em_sync` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_template`
--

DROP TABLE IF EXISTS `em_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_template` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) NOT NULL default '0',
  `name` text,
  `content` text,
  `format` enum('text','html') default NULL,
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_template`
--

LOCK TABLES `em_template` WRITE;
/*!40000 ALTER TABLE `em_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_template_list`
--

DROP TABLE IF EXISTS `em_template_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_template_list` (
  `id` int(10) NOT NULL auto_increment,
  `templateid` int(10) unsigned NOT NULL default '0',
  `listid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `templateid` (`templateid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_template_list`
--

LOCK TABLES `em_template_list` WRITE;
/*!40000 ALTER TABLE `em_template_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_template_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_trapperr`
--

DROP TABLE IF EXISTS `em_trapperr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_trapperr` (
  `id` varchar(32) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_trapperr`
--

LOCK TABLES `em_trapperr` WRITE;
/*!40000 ALTER TABLE `em_trapperr` DISABLE KEYS */;
INSERT INTO `em_trapperr` VALUES ('date_format','G:i:s, j. n. Y. (T)'),('db','1'),('db_table','em_trapperrlogs'),('logfile','0'),('mail','0'),('mail_subject','1-2-All PHP Error'),('mail_to','bugs@activecampaign.com'),('screen','1'),('sql_date_format','Y-m-d H:i:s'),('user_error_is_deadly','0'),('xml_date_format','Y-m-d H:i:s (T)');
/*!40000 ALTER TABLE `em_trapperr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_trapperrlogs`
--

DROP TABLE IF EXISTS `em_trapperrlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_trapperrlogs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `errnumber` int(6) unsigned NOT NULL default '0',
  `errmessage` text,
  `filename` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `linenum` int(10) unsigned NOT NULL default '0',
  `vars` text,
  `backtrace` text,
  `session` varchar(32) NOT NULL default '',
  `userid` int(10) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `host` varchar(100) NOT NULL default '',
  `referer` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_trapperrlogs`
--

LOCK TABLES `em_trapperrlogs` WRITE;
/*!40000 ALTER TABLE `em_trapperrlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_trapperrlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_update`
--

DROP TABLE IF EXISTS `em_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_update` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `subscriberid` int(10) unsigned NOT NULL default '0',
  `campaignid` int(10) unsigned NOT NULL default '0',
  `messageid` int(10) unsigned NOT NULL default '0',
  `tstamp` datetime default NULL,
  `ip` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `subscriberid` (`subscriberid`),
  KEY `campaignid` (`campaignid`),
  KEY `messageid` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_update`
--

LOCK TABLES `em_update` WRITE;
/*!40000 ALTER TABLE `em_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `em_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_user`
--

DROP TABLE IF EXISTS `em_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `absid` int(10) unsigned NOT NULL default '0',
  `parentid` int(10) unsigned NOT NULL default '0',
  `last_login` datetime default NULL,
  `lang` varchar(32) NOT NULL default 'english',
  `t_offset` tinyint(2) NOT NULL default '0',
  `t_offset_o` enum('-','+') NOT NULL default '+',
  `lists_per_page` int(5) NOT NULL default '20',
  `messages_per_page` int(5) NOT NULL default '20',
  `subscribers_per_page` int(5) NOT NULL default '20',
  `htmleditor` tinyint(1) NOT NULL default '1',
  `editorsize_w` varchar(32) NOT NULL default '100%',
  `editorsize_h` varchar(32) NOT NULL default '600px',
  `local_zoneid` varchar(64) NOT NULL default 'America/Chicago',
  `local_dst` tinyint(1) unsigned NOT NULL default '0',
  `autoupdate` int(10) NOT NULL default '600',
  `autosave` int(10) NOT NULL default '0',
  `sdate` datetime default NULL,
  `ldate` date default NULL,
  `ltime` time default NULL,
  PRIMARY KEY  (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_user`
--

LOCK TABLES `em_user` WRITE;
/*!40000 ALTER TABLE `em_user` DISABLE KEYS */;
INSERT INTO `em_user` VALUES (1,1,0,'2011-02-04 15:42:15','english',1,'+',20,20,20,1,'100%','600px','America/Buenos_Aires',0,600,0,'2009-09-30 11:48:17','2011-02-04','15:42:20');
/*!40000 ALTER TABLE `em_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_user_b_log`
--

DROP TABLE IF EXISTS `em_user_b_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_user_b_log` (
  `id` int(10) NOT NULL auto_increment,
  `user` varchar(250) NOT NULL default '',
  `pass` varchar(250) NOT NULL default '',
  `ip` varchar(250) NOT NULL default '',
  `host` varchar(250) NOT NULL default '',
  `time` time default NULL,
  `date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_user_b_log`
--

LOCK TABLES `em_user_b_log` WRITE;
/*!40000 ALTER TABLE `em_user_b_log` DISABLE KEYS */;
INSERT INTO `em_user_b_log` VALUES (1,'admin','bWltbzEzMQ==','99.232.88.251','CPE00222d39a22e-CM00222d39a22a.cpe.net.cable.rogers.com','11:50:33','2009-09-30'),(2,'admin','bWltbzEyMw==','99.232.88.251','CPE00222d39a22e-CM00222d39a22a.cpe.net.cable.rogers.com','11:50:49','2009-09-30'),(3,'admin','bWltbzEzMQ==','99.232.88.251','CPE00222d39a22e-CM00222d39a22a.cpe.net.cable.rogers.com','11:51:23','2009-09-30'),(4,'admin','bWltbzEyMw==','99.232.88.251','CPE00222d39a22e-CM00222d39a22a.cpe.net.cable.rogers.com','11:51:40','2009-09-30'),(5,'','','99.232.88.251','CPE00222d39a22e-CM00222d39a22a.cpe.net.cable.rogers.com','11:44:59','2009-10-06'),(6,'consultas@teresapiacentino.com','MzFkMmFkZg==','99.232.88.251','CPE00222d39a22e-CM00222d39a22a.cpe.net.cable.rogers.com','11:51:43','2009-10-06'),(7,'admin','MTMxMTgz','99.232.88.251','CPE00222d39a22e-CM00222d39a22a.cpe.net.cable.rogers.com','10:20:36','2009-11-04'),(8,'teresapi','ZXRwZ204ZTg=','201.253.84.242','host242.201-253-84.telecom.net.ar','10:05:38','2010-07-19'),(9,'teresapi','ZXRwZ204ZTg=','201.253.84.242','host242.201-253-84.telecom.net.ar','10:05:45','2010-07-19'),(10,'admin','bWltbzEzMQ==','108.168.87.44','dhcp-108-168-87-44.cable.user.start.ca','18:52:34','2013-11-24'),(11,'teresapi','ZXRwZ204ZTg=','108.168.87.44','dhcp-108-168-87-44.cable.user.start.ca','18:52:38','2013-11-24'),(12,'admin','bWltbzEzMQ==','108.168.87.44','dhcp-108-168-87-44.cable.user.start.ca','18:52:43','2013-11-24'),(13,'teresapi','ZXRwZ204ZTg=','108.168.87.44','dhcp-108-168-87-44.cable.user.start.ca','18:52:43','2013-11-24');
/*!40000 ALTER TABLE `em_user_b_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_user_group`
--

DROP TABLE IF EXISTS `em_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_user_group` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) unsigned NOT NULL default '0',
  `groupid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_user_group`
--

LOCK TABLES `em_user_group` WRITE;
/*!40000 ALTER TABLE `em_user_group` DISABLE KEYS */;
INSERT INTO `em_user_group` VALUES (1,1,3);
/*!40000 ALTER TABLE `em_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em_user_p`
--

DROP TABLE IF EXISTS `em_user_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em_user_p` (
  `id` int(10) NOT NULL auto_increment,
  `listid` int(10) unsigned NOT NULL default '0',
  `userid` int(10) unsigned NOT NULL default '0',
  `p_admin` tinyint(1) NOT NULL default '0',
  `p_list_add` tinyint(1) NOT NULL default '0',
  `p_list_edit` tinyint(1) NOT NULL default '0',
  `p_list_delete` tinyint(1) NOT NULL default '0',
  `p_list_sync` tinyint(1) NOT NULL default '0',
  `p_list_filter` tinyint(1) NOT NULL default '0',
  `p_message_add` tinyint(1) NOT NULL default '0',
  `p_message_edit` tinyint(1) NOT NULL default '0',
  `p_message_delete` tinyint(1) NOT NULL default '0',
  `p_message_send` tinyint(1) NOT NULL default '0',
  `p_subscriber_add` tinyint(1) NOT NULL default '0',
  `p_subscriber_edit` tinyint(1) NOT NULL default '0',
  `p_subscriber_delete` tinyint(1) NOT NULL default '0',
  `p_subscriber_import` tinyint(1) NOT NULL default '0',
  `p_subscriber_approve` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`),
  KEY `listid` (`listid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em_user_p`
--

LOCK TABLES `em_user_p` WRITE;
/*!40000 ALTER TABLE `em_user_p` DISABLE KEYS */;
INSERT INTO `em_user_p` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `em_user_p` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-21 23:49:05
