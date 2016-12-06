-- MySQL dump 10.13  Distrib 5.6.33, for osx10.9 (x86_64)
--
-- Host: localhost    Database: t3t_7
-- ------------------------------------------------------
-- Server version	5.6.33

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('3b4bcc55ccb564341088d0f3070c0c43','be_typo_user','::1',196951002,1,1479396868,'a:4:{s:26:\"formProtectionSessionToken\";s:64:\"e5fa5f4f71598d03aae0c31493385a8a0abc17a2a2c2089a02ad61db539d35bc\";s:27:\"core.template.flashMessages\";N;s:80:\"extbase.flashmessages.tx_extensionmanager_tools_extensionmanagerextensionmanager\";N;s:31:\"TYPO3\\CMS\\Recordlist\\RecordList\";a:1:{s:12:\"search_field\";N;}}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `file_permissions` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1479297876,'fdmono','',0,'$P$CxiKnVeNG3GkVoS1fhv05cUS.0fqDP.',1,'',0,0,0,'','',NULL,0,1479297876,0,'',NULL,'','a:18:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:3:{s:29:\"tx_realurl_web_realurlrealurl\";a:1:{s:10:\"controller\";s:8:\"Overview\";}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:20:\"system_txschedulerM1\";a:1:{s:8:\"function\";s:9:\"scheduler\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1479393690;s:15:\"moduleSessionID\";a:3:{s:29:\"tx_realurl_web_realurlrealurl\";s:32:\"3b4bcc55ccb564341088d0f3070c0c43\";s:10:\"web_layout\";s:32:\"3b4bcc55ccb564341088d0f3070c0c43\";s:20:\"system_txschedulerM1\";s:32:\"3b4bcc55ccb564341088d0f3070c0c43\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":2:{s:1:\"0\";i:1;s:4:\"root\";i:1;}}}}s:7:\"reports\";a:1:{s:9:\"selection\";a:2:{s:9:\"extension\";s:10:\"tx_reports\";s:6:\"report\";s:6:\"status\";}}}',NULL,NULL,1,'',0,0,NULL,1479393690,0,NULL,0,1,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (1,'dd83ad6f6284423b2f1995d36a888b7d',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:2:{s:8:\"options.\";a:1:{s:9:\"leftIcons\";s:1:\"1\";}s:6:\"table.\";a:3:{s:13:\"virtual_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:7:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:11:\"pages_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:12:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:4:\"ITEM\";s:4:\"200.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:300;s:7:\"DIVIDER\";i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:18:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:7:\"disable\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_common.xlf:disable\";s:8:\"iconName\";s:17:\"actions-edit-hide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 0 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:11:\"disablePage\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:6:\"enable\";s:5:\"label\";s:40:\"LLL:EXT:lang/locallang_common.xlf:enable\";s:8:\"iconName\";s:19:\"actions-edit-unhide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 1 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:10:\"enablePage\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"edit\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.edit\";s:8:\"iconName\";s:17:\"actions-page-open\";s:16:\"displayCondition\";s:16:\"canBeEdited != 0\";s:14:\"callbackAction\";s:18:\"editPageProperties\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"info\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.info\";s:8:\"iconName\";s:21:\"actions-document-info\";s:16:\"displayCondition\";s:16:\"canShowInfo != 0\";s:14:\"callbackAction\";s:13:\"openInfoPopUp\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:800;s:7:\"DIVIDER\";i:900;s:7:\"SUBMENU\";s:4:\"900.\";a:19:{s:5:\"label\";s:51:\"LLL:EXT:lang/locallang_core.xlf:cm.copyPasteActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:16:\"actions-edit-cut\";s:16:\"displayCondition\";s:53:\"isInCutMode = 0 && canBeCut != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:13:\"enableCutMode\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:24:\"actions-edit-cut-release\";s:16:\"displayCondition\";s:32:\"isInCutMode = 1 && canBeCut != 0\";s:14:\"callbackAction\";s:14:\"disableCutMode\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:17:\"actions-edit-copy\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 0\";s:14:\"callbackAction\";s:14:\"enableCopyMode\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:25:\"actions-edit-copy-release\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 1\";s:14:\"callbackAction\";s:15:\"disableCopyMode\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:9:\"pasteInto\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteinto\";s:8:\"iconName\";s:27:\"actions-document-paste-into\";s:16:\"displayCondition\";s:85:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedInto != 0\";s:14:\"callbackAction\";s:13:\"pasteIntoNode\";}i:800;s:4:\"ITEM\";s:4:\"800.\";a:5:{s:4:\"name\";s:10:\"pasteAfter\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteafter\";s:8:\"iconName\";s:28:\"actions-document-paste-after\";s:16:\"displayCondition\";s:86:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedAfter != 0\";s:14:\"callbackAction\";s:14:\"pasteAfterNode\";}i:900;s:7:\"DIVIDER\";i:1000;s:4:\"ITEM\";s:5:\"1000.\";a:5:{s:4:\"name\";s:6:\"delete\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_core.xlf:cm.delete\";s:8:\"iconName\";s:19:\"actions-edit-delete\";s:16:\"displayCondition\";s:38:\"canBeRemoved != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:10:\"removeNode\";}}i:1000;s:7:\"SUBMENU\";s:5:\"1000.\";a:13:{s:5:\"label\";s:48:\"LLL:EXT:lang/locallang_core.xlf:cm.branchActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:15:\"mountAsTreeroot\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.tempMountPoint\";s:8:\"iconName\";s:26:\"actions-pagetree-mountroot\";s:16:\"displayCondition\";s:49:\"canBeTemporaryMountPoint != 0 && isMountPoint = 0\";s:14:\"callbackAction\";s:15:\"mountAsTreeRoot\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:12:\"expandBranch\";s:5:\"label\";s:47:\"LLL:EXT:lang/locallang_core.xlf:cm.expandBranch\";s:8:\"iconName\";s:23:\"actions-pagetree-expand\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:12:\"expandBranch\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:14:\"collapseBranch\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.collapseBranch\";s:8:\"iconName\";s:25:\"actions-pagetree-collapse\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:14:\"collapseBranch\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}}}}s:14:\"disableDelete.\";a:2:{s:17:\"sys_file_metadata\";s:1:\"1\";s:8:\"sys_file\";s:1:\"1\";}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}}s:6:\"setup.\";a:1:{s:8:\"default.\";a:1:{s:8:\"edit_RTE\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"d081d997a7a4e726ad5bc208e57e25cb\";}'),(2,'cb23a07ee1e83ca995e7bc3bb0754261',2145909600,'a:3:{s:25:\"TYPO3.Components.PageTree\";a:4:{s:3:\"url\";s:88:\"/typo3/index.php?ajaxID=%2Fajax%2Fext-direct%2Froute&namespace=TYPO3.Components.PageTree\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:3:{s:12:\"DataProvider\";a:13:{i:0;a:3:{s:4:\"name\";s:11:\"__construct\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:7:\"getRoot\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:16:\"getNextTreeLevel\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:3;a:3:{s:4:\"name\";s:15:\"getFilteredTree\";s:3:\"len\";i:3;s:11:\"formHandler\";b:0;}i:4;a:3:{s:4:\"name\";s:12:\"getNodeTypes\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:5;a:3:{s:4:\"name\";s:13:\"getIndicators\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:6;a:3:{s:4:\"name\";s:13:\"loadResources\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:7;a:3:{s:4:\"name\";s:16:\"setStateProvider\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:8;a:3:{s:4:\"name\";s:16:\"getStateProvider\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:9;a:3:{s:4:\"name\";s:15:\"setDataProvider\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:10;a:3:{s:4:\"name\";s:15:\"getDataProvider\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:11;a:3:{s:4:\"name\";s:15:\"setNodeRenderer\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:12;a:3:{s:4:\"name\";s:15:\"getNodeRenderer\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}}s:8:\"Commands\";a:15:{i:0;a:3:{s:4:\"name\";s:11:\"visiblyNode\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:11:\"disableNode\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:10:\"deleteNode\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:3;a:3:{s:4:\"name\";s:11:\"restoreNode\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:4;a:3:{s:4:\"name\";s:11:\"updateLabel\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:5;a:3:{s:4:\"name\";s:22:\"setTemporaryMountPoint\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:6;a:3:{s:4:\"name\";s:33:\"moveNodeToFirstChildOfDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:7;a:3:{s:4:\"name\";s:24:\"moveNodeAfterDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:8;a:3:{s:4:\"name\";s:33:\"copyNodeToFirstChildOfDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:9;a:3:{s:4:\"name\";s:24:\"copyNodeAfterDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:10;a:3:{s:4:\"name\";s:35:\"insertNodeToFirstChildOfDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:11;a:3:{s:4:\"name\";s:26:\"insertNodeAfterDestination\";s:3:\"len\";i:3;s:11:\"formHandler\";b:0;}i:12;a:3:{s:4:\"name\";s:11:\"getViewLink\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:13;a:3:{s:4:\"name\";s:28:\"addRootlineOfNodeToStateHash\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:14;a:3:{s:4:\"name\";s:12:\"getNodePaths\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}}s:23:\"ContextMenuDataProvider\";a:4:{i:0;a:3:{s:4:\"name\";s:22:\"getActionsForNodeArray\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:17:\"getActionsForNode\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:15:\"setDataProvider\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:3;a:3:{s:4:\"name\";s:15:\"getDataProvider\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:25:\"TYPO3.Components.PageTree\";}s:28:\"TYPO3.ExtDirectStateProvider\";a:4:{s:3:\"url\";s:91:\"/typo3/index.php?ajaxID=%2Fajax%2Fext-direct%2Froute&namespace=TYPO3.ExtDirectStateProvider\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:1:{s:9:\"ExtDirect\";a:3:{i:0;a:3:{s:4:\"name\";s:11:\"__construct\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:8:\"getState\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:8:\"setState\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:28:\"TYPO3.ExtDirectStateProvider\";}s:28:\"TYPO3.Components.DragAndDrop\";a:4:{s:3:\"url\";s:91:\"/typo3/index.php?ajaxID=%2Fajax%2Fext-direct%2Froute&namespace=TYPO3.Components.DragAndDrop\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:1:{s:17:\"CommandController\";a:1:{i:0;a:3:{s:4:\"name\";s:18:\"moveContentElement\";s:3:\"len\";i:3;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:28:\"TYPO3.Components.DragAndDrop\";}}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (1,'dd83ad6f6284423b2f1995d36a888b7d','ident_userTS_TSconfig'),(2,'cb23a07ee1e83ca995e7bc3bb0754261','ident_ExtDirectApi');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
INSERT INTO `cf_extbase_object` VALUES (1,'3bcc835c5d8d7866a0ce2dc41464b9a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(2,'48ee39591354d5b031b745485de55720',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(3,'dbac534c00a92e4f7b105be73fba4655',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(4,'698f3592af2e452d429bd1e9cf4e7f28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Configuration\\BackendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:20:\"injectQueryGenerator\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectTypoScriptService\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(5,'a83f638ccc959a3a47ea70bd7ad866a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(6,'d9a9ae73d3607000daec9828154ef861',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(7,'3316fa0a4297a6ddcca7021a1565a7e9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\TemplateParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(8,'e8d805b35474fd740277e82b2633dfdc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Rendering\\RenderingContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:33:\"injectViewHelperVariableContainer\";s:59:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:31:\"injectTemplateVariableContainer\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(9,'a640fdb9512138cae8d3d392619d9034',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(10,'6e9736d7b31f65e8bab9afe208da72f5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"variableArray\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(11,'ffab3d90bc879cb5f9bc7dad6eeca0fe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Request\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(12,'b50521e5e180c67942dcfb9564f33b28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(13,'4162aee1fc2f8a1059d3c19ec4daa1c7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Routing\\UriBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(14,'161ec4a31f0f6bbc932fcc1ae6d48887',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(15,'6c06740645171b100a0605c1774e691c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\ControllerContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:25:\"injectFlashMessageService\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(16,'fcd3672a290f64f6875bb8d84ef8362b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(17,'5ed31dbb2262e355409980a4c85adca5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Compiler\\TemplateCompiler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(18,'82775a44b14c5ee1f99fb06534415b03',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\Configuration\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(19,'f542e57a147c74616c2c14ae45a7da4e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\Interceptor\\Escape\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(20,'434532454ee301095ce48df889c5685c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\ParsingState\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:17:\"variableContainer\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(21,'78b1b7823d2022e2377301c0f55ac4e6',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\RootNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(22,'630b0da604b2c9cabe61e71b441dd0e2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\TextNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:4:\"text\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(23,'1fb2371d594668a70e77b8c6ad79fab3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ObjectAccessorNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:10:\"objectPath\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(24,'c2e9ae889aae6db5bc680e826e21142d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(25,'33557becb5fd776e48ac1a4e8877c048',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(26,'4a3a325facbf7a9fc8d188cb22d15301',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ViewHelperNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:10:\"viewHelper\";s:10:\"dependency\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\AbstractViewHelper\";}i:1;a:1:{s:4:\"name\";s:9:\"arguments\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(27,'c7cb88ec1a57cdfb6bb3a8518f770ffe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(28,'7a6761aed6bbdcf2b0f612bc11c1217c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\IfViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(29,'232c19c4ec41c1994aa808ba8c0e088f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ThenViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(30,'5b9bc39514aff3e59f378bd70fcc2a90',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\RawViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(31,'d1627dc87083dc420614aa04dcfcf5cc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ElseViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(32,'3460f0111910bdbec763a839d29eaf53',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(33,'3a4cfbd9a9d33ba0ada3c8848d08e7f2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ArrayNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:13:\"internalArray\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(34,'5394aed9549d0cd47a0b4aa0679efbf8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CountViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(35,'78915e2e1fdd639df1175e175e3b005a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\Nl2brViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(36,'1c4ccf3b1c0e8b02b14c2468bd494521',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\PersistenceManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:18:\"injectQueryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:13:\"injectBackend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:24:\"injectPersistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(37,'a0b1e155c87dc5e77879a87871025d81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(38,'07a1866183ac6e1ac9234808c4928fb3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:24:\"injectPersistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:20:\"injectDataMapFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:18:\"injectQueryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(39,'7b6eafa37459ae90810443b105992a61',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(40,'b2d13edc404dad53fde6e8ed67946954',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(41,'2c1c56e551397ae5c80783e1cf2c3eda',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(42,'f4161c7b5ff989cc5937476177f76d76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(43,'993ae131d5bac2569b6e9d01b5777ed7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Backend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:20:\"configurationManager\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:6:{s:13:\"injectSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:20:\"injectStorageBackend\";s:62:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\BackendInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(44,'01ab75a69565e18f3f821b42318e0ff1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbBackend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:6:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:17:\"injectQueryParser\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbQueryParser\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(45,'d3b9a967a6af09d391d44dc0c1d5c4ff',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(46,'29afe09069975b1208d85be2e28fe9e7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbQueryParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(47,'81de039aca085362d0579722eb57e000',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\RequestHandlerResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(48,'1a281c1a4f3a0a8df38130ed92e539a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:6:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(49,'3ed752e7ea60eee5026a21c8b9990a63',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(50,'97da3abbad45298c6665a64c93a84160',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(51,'a4a0eb9689419bdf7e2be55e876763a2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(52,'8b1d5067ef201f9397a919b581c2febb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(53,'a85a0e954caaa9232e9c899c517e8c23',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"injectCommandManager\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(54,'73785a4df7cf6265f746a280a022f98d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(55,'02602cfbe105200536e162488f3b34d8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:26:\"injectWidgetRequestBuilder\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(56,'17dd4738af3c1aa88da935f7c7461a76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(57,'5dcc2824ac5f03a5cebed6c9d5c4ea1a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Belog\\Controller\\SystemInformationController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:8:{s:24:\"injectLogEntryRepository\";s:52:\"TYPO3\\CMS\\Belog\\Domain\\Repository\\LogEntryRepository\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:44:\"injectMvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:23:\"injectValidatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(58,'11aff5975a56d7b6faac534774174a87',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Belog\\Domain\\Repository\\LogEntryRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(59,'38da5993ff181e4a0878ed613360749b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(60,'65aa369e3ef7755812afb4329fd61d4d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Response\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(61,'2917c37655418eb2d370ef6cad5622a9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Aboutmodules\\Controller\\ModulesController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:15:\"languageService\";s:10:\"dependency\";s:30:\"TYPO3\\CMS\\Lang\\LanguageService\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:44:\"injectMvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:23:\"injectValidatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(62,'71dc71d2ae1928473ef30d8028432258',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(63,'c3680131daaff065daf3097af71f1980',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(64,'52b735058f3ab10579fbc382b26f85ac',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\Arguments\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(65,'398490ca09566ce7d15d9b0e8b7b28bd',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Backend\\View\\BackendTemplateView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:20:\"injectModuleTemplate\";s:41:\"TYPO3\\CMS\\Backend\\Template\\ModuleTemplate\";s:18:\"injectTemplateView\";s:33:\"TYPO3\\CMS\\Fluid\\View\\TemplateView\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(66,'aabcbf9e423b68fbca941d3825d9403d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Backend\\Template\\ModuleTemplate\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(67,'ee36b5aa7e756497c1be0353ea554c27',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Typo3QuerySettings\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(68,'b7435caf112d881773a587972170ccea',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Fluid\\View\\TemplateView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:22:\"injectTemplateCompiler\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Compiler\\TemplateCompiler\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:14:\"templateParser\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\TemplateParser\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(69,'6f9d5e72ec6d41f50356ba9d6e217538',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(70,'0feaa6ecc8d3d05a79d13ef36e099662',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\LayoutViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(71,'fdd3ab12237a39824038609b9791fa1e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\SectionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(72,'40fc6eb24ec4cac8fd87a969e75c464f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\InfoboxViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(73,'cf83c38ca35ec2b39e3840965ad2006a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Uri\\ResourceViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(74,'92bd55274ef00f40372278a239ae21c4',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\PageRendererViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:18:\"injectPageRenderer\";s:32:\"TYPO3\\CMS\\Core\\Page\\PageRenderer\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(75,'2bc56f5668cc79b9311461b9a0de6227',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Core\\Page\\PageRenderer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:12:\"templateFile\";s:12:\"defaultValue\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:8:\"backPath\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(76,'17466a85af9a994978ee0405320a798b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\RenderViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(77,'0a2c329eb2c8346be16fcb86e5609437',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(78,'ff9b48c897971beddd71034528f6f90e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:7:\"tagName\";s:12:\"defaultValue\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:10:\"tagContent\";s:12:\"defaultValue\";s:0:\"\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}');
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
INSERT INTO `cf_extbase_reflection` VALUES (1,'ReflectionData_Aboutmodules',2145909600,'a:8:{s:19:\"reflectedClassNames\";a:0:{}s:18:\"classPropertyNames\";a:0:{}s:15:\"classTagsValues\";a:0:{}s:16:\"methodTagsValues\";a:10:{s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:6:{i:0;s:27:\"string $key Translation Key\";i:1;s:51:\"string $id Translation Key compatible to TYPO3 Flow\";i:2;s:158:\"string $default If the given locallang key could not be found, this value is used. If this argument is not set, child nodes will be used to render the default\";i:3;s:106:\"bool $htmlEscape TRUE if the result should be htmlescaped. This won\'t have an effect for the default value\";i:4;s:65:\"array $arguments Arguments to be replaced in the resulting string\";i:5;s:77:\"string $extensionName UpperCamelCased extension key (for example BlogExample)\";}s:6:\"return\";a:1:{i:0;s:58:\"string The translated key or tag body if key doesn\'t exist\";}}}s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\InfoboxViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:5:{i:0;s:39:\"string $title The title of the info box\";i:1;s:72:\"string $message The message of the info box, if NULL tag content is used\";i:2;s:59:\"int $state The state of the box, InfoboxViewHelper::STATE_*\";i:3;s:72:\"string $iconName The icon name from font awesome, NULL sets default icon\";i:4;s:59:\"bool $disableIcon If set to TRUE, the icon is not rendered.\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\RawViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:1:{i:0;s:32:\"mixed $value The value to output\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:5:{i:0;s:86:\"array $each The array or \\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage to iterated over\";i:1;s:45:\"string $as The name of the iteration variable\";i:2;s:67:\"string $key The name of the variable to store the current array key\";i:3;s:93:\"bool $reverse If enabled, the iterator will start with the last element and proceed reversely\";i:4;s:120:\"string $iteration The name of the variable to store iteration information (index, cycle, isFirst, isLast, isEven, isOdd)\";}s:6:\"return\";a:1:{i:0;s:22:\"string Rendered string\";}s:3:\"api\";a:0:{}}}s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"param\";a:4:{i:0;s:30:\"string $value string to format\";i:1;s:93:\"bool $keepQuotes if TRUE, single and double quotes won\'t be replaced (sets ENT_NOQUOTES flag)\";i:2;s:16:\"string $encoding\";i:3;s:106:\"bool $doubleEncode If FALSE existing html entities won\'t be encoded, the default is to convert everything.\";}s:6:\"return\";a:1:{i:0;s:25:\"string the altered string\";}s:3:\"see\";a:1:{i:0;s:55:\"http://www.php.net/manual/function.htmlspecialchars.php\";}s:3:\"api\";a:0:{}}}s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Uri\\ResourceViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:3:{i:0;s:108:\"string $path The path and filename of the resource (relative to Public resource directory of the extension).\";i:1;s:96:\"string $extensionName Target extension name. If not set, the current extension name will be used\";i:2;s:50:\"bool $absolute If set, an absolute URI is rendered\";}s:6:\"return\";a:1:{i:0;s:30:\"string The URI to the resource\";}s:3:\"api\";a:0:{}}}s:53:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\PageRendererViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:10:{i:0;s:102:\"string $pageTitle title tag of the module. Not required by default, as BE modules are shown in a frame\";i:1;s:74:\"bool $loadExtJs specifies whether to load ExtJS library. Defaults to FALSE\";i:2;s:74:\"bool $loadExtJsTheme whether to load ExtJS \"grey\" theme. Defaults to FALSE\";i:3;s:95:\"bool $enableExtJsDebug if TRUE, debug version of ExtJS is loaded. Use this for development only\";i:4;s:66:\"bool $loadJQuery whether to load jQuery library. Defaults to FALSE\";i:5;s:59:\"array $includeCssFiles List of custom CSS file to be loaded\";i:6;s:65:\"array $includeJsFiles List of custom JavaScript file to be loaded\";i:7;s:73:\"array $addJsInlineLabels Custom labels to add to JavaScript inline labels\";i:8;s:69:\"array $includeRequireJsModules List of RequireJS modules to be loaded\";i:9;s:71:\"string $jQueryNamespace Store the jQuery object in a specific namespace\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}}s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\RenderViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:4:{i:0;s:179:\"string $section Name of section to render. If used in a layout, renders a section of the main content file. If used inside a standard template, renders a section of the same file.\";i:1;s:39:\"string $partial Reference to a partial.\";i:2;s:50:\"array $arguments Arguments to pass to the partial.\";i:3;s:133:\"bool $optional Set to TRUE, to ignore unknown sections, so the definition of a section inside a template can be optional for a layout\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}s:3:\"api\";a:0:{}}}s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";a:1:{s:6:\"render\";a:4:{s:3:\"see\";a:1:{i:0;s:69:\"\\TYPO3\\CMS\\Frontend\\Controller\\TypoScriptFrontendController::no_cache\";}s:5:\"param\";a:2:{i:0;s:179:\"string $renderMode @deprecated since TYPO3 CMS 7.3. If you need custom output, use <f:flashMessages as=\"messages\"><f:for each=\"messages\" as=\"message\">...</f:for></f:flashMessages>\";i:1;s:77:\"string $as The name of the current flashMessage variable for rendering inside\";}s:6:\"return\";a:1:{i:0;s:49:\"string rendered Flash Messages, if there are any.\";}s:3:\"api\";a:0:{}}}s:43:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CountViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"param\";a:1:{i:0;s:52:\"array $subject The array or \\Countable to be counted\";}s:6:\"return\";a:1:{i:0;s:26:\"int The number of elements\";}s:6:\"throws\";a:1:{i:0;s:9:\"Exception\";}s:3:\"api\";a:0:{}}}}s:16:\"methodParameters\";a:16:{s:51:\"TYPO3\\CMS\\Aboutmodules\\Controller\\ModulesController\";a:3:{s:11:\"indexAction\";a:0:{}s:16:\"initializeAction\";a:0:{}s:11:\"errorAction\";a:0:{}}s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\LayoutViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\SectionViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";a:1:{s:6:\"render\";a:6:{s:3:\"key\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:2:\"id\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:7:\"default\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"htmlEscape\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:7:\"boolean\";}s:9:\"arguments\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}s:13:\"extensionName\";a:8:{s:8:\"position\";i:5;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:40:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\IfViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\InfoboxViewHelper\";a:1:{s:6:\"render\";a:5:{s:5:\"title\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:7:\"message\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:5:\"state\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";i:-2;s:4:\"type\";s:7:\"integer\";}s:8:\"iconName\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:11:\"disableIcon\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}}}s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\RawViewHelper\";a:1:{s:6:\"render\";a:1:{s:5:\"value\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"mixed\";}}}s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";a:1:{s:6:\"render\";a:5:{s:4:\"each\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"array\";}s:2:\"as\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:3:\"key\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:7:\"reverse\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:9:\"iteration\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"value\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"keepQuotes\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:8:\"encoding\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:12:\"doubleEncode\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}}}s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Uri\\ResourceViewHelper\";a:1:{s:6:\"render\";a:3:{s:4:\"path\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"extensionName\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:8:\"absolute\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}}}s:53:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\PageRendererViewHelper\";a:1:{s:6:\"render\";a:10:{s:9:\"pageTitle\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:9:\"loadExtJs\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:14:\"loadExtJsTheme\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}s:16:\"enableExtJsDebug\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:10:\"loadJQuery\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:15:\"includeCssFiles\";a:8:{s:8:\"position\";i:5;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}s:14:\"includeJsFiles\";a:8:{s:8:\"position\";i:6;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}s:17:\"addJsInlineLabels\";a:8:{s:8:\"position\";i:7;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}s:23:\"includeRequireJsModules\";a:8:{s:8:\"position\";i:8;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}s:15:\"jQueryNamespace\";a:8:{s:8:\"position\";i:9;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\RenderViewHelper\";a:1:{s:6:\"render\";a:4:{s:7:\"section\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:7:\"partial\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:9:\"arguments\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:8:\"optional\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}}}s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ThenViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";a:1:{s:6:\"render\";a:2:{s:10:\"renderMode\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:2:\"as\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:43:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CountViewHelper\";a:1:{s:6:\"render\";a:1:{s:7:\"subject\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}}}s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ElseViewHelper\";a:1:{s:6:\"render\";a:0:{}}}s:18:\"propertyTagsValues\";a:0:{}s:13:\"taggedClasses\";a:0:{}s:13:\"classSchemata\";a:0:{}}');
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_main`
--

DROP TABLE IF EXISTS `cf_vhs_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_main` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_main`
--

LOCK TABLES `cf_vhs_main` WRITE;
/*!40000 ALTER TABLE `cf_vhs_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_main_tags`
--

DROP TABLE IF EXISTS `cf_vhs_main_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_main_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_main_tags`
--

LOCK TABLES `cf_vhs_main_tags` WRITE;
/*!40000 ALTER TABLE `cf_vhs_main_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_main_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_markdown`
--

DROP TABLE IF EXISTS `cf_vhs_markdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_markdown` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_markdown`
--

LOCK TABLES `cf_vhs_markdown` WRITE;
/*!40000 ALTER TABLE `cf_vhs_markdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_markdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_markdown_tags`
--

DROP TABLE IF EXISTS `cf_vhs_markdown_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_markdown_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_markdown_tags`
--

LOCK TABLES `cf_vhs_markdown_tags` WRITE;
/*!40000 ALTER TABLE `cf_vhs_markdown_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_markdown_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `subgroup` tinytext,
  `TSconfig` text,
  `felogin_redirectPid` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_ddgooglesitemap_lastmod` varchar(255) NOT NULL DEFAULT '',
  `tx_ddgooglesitemap_priority` int(3) NOT NULL DEFAULT '5',
  `tx_ddgooglesitemap_change_frequency` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(1) NOT NULL DEFAULT '0',
  `tx_seo_titletag` tinytext,
  `tx_seo_canonicaltag` tinytext,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_seo_titletag` tinytext,
  `tx_seo_canonicaltag` tinytext,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `identifier_hash` char(40) NOT NULL DEFAULT '',
  `folder_hash` char(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` char(40) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text,
  `recursive` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `configurationsha1` char(40) NOT NULL DEFAULT '',
  `originalfilesha1` char(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` char(10) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` tinytext,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `downloadname` tinytext,
  `crop` varchar(4000) NOT NULL DEFAULT '',
  `autoplay` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `auto_extract_metadata` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1479395419,1479395419,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `read_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1301648975: No pages are found on the rootlevel! | TYPO3\\CMS\\Core\\Error\\Http\\ServiceUnavailableException thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/frontend/Classes/Controller/TypoScriptFrontendController.php in line 1489. Requested URL: http://typo3-template-v7.lokal/',1479298893,5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(2,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1301648975: No pages are found on the rootlevel! | TYPO3\\CMS\\Core\\Error\\Http\\ServiceUnavailableException thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/frontend/Classes/Controller/TypoScriptFrontendController.php in line 1489. Requested URL: http://typo3-template-v7.lokal/',1479299026,5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(3,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1301648975: No pages are found on the rootlevel! | TYPO3\\CMS\\Core\\Error\\Http\\ServiceUnavailableException thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/frontend/Classes/Controller/TypoScriptFrontendController.php in line 1489. Requested URL: http://typo3-template-v7.lokal/',1479299374,5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(4,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1301648975: No pages are found on the rootlevel! | TYPO3\\CMS\\Core\\Error\\Http\\ServiceUnavailableException thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/frontend/Classes/Controller/TypoScriptFrontendController.php in line 1489. Requested URL: http://t3t-v7.lokal/',1479300748,5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(5,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1301648975: No pages are found on the rootlevel! | TYPO3\\CMS\\Core\\Error\\Http\\ServiceUnavailableException thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/frontend/Classes/Controller/TypoScriptFrontendController.php in line 1489. Requested URL: http://t3t-7.lokal/',1479393648,5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(6,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1479393691,255,1,'::1','a:3:{i:0;s:6:\"fdmono\";i:1;s:3:\"::1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(7,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1382276561: The package \"realurl\" depends on \"scheduler\" which is not present in the system. | UnexpectedValueException thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/core/Classes/Package/DependencyResolver.php in line 95. Requested URL: http://t3t-7.lokal/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=8231c6288b2731d75ad7b039a05cb08edb44b50a&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5BextensionKey%%5D=realurl&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=toggleExtensionInstallationState&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Action',1479395039,5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(8,0,1,0,0,'',0,0,'Scheduler task \"%s\" (UID: %s, Class: \"%s\") was added',1479395502,4,0,'::1','a:3:{i:0;s:21:\"Update extension list\";i:1;i:1;i:2;s:55:\"TYPO3\\CMS\\Extensionmanager\\Task\\UpdateExtensionListTask\";}',-1,0,'','',0,'',0,NULL,NULL),(9,0,1,0,0,'',0,0,'Scheduler task \"%s\" (UID: %s, Class: \"%s\") was added',1479395552,4,0,'::1','a:3:{i:0;s:36:\"Caching framework garbage collection\";i:1;i:2;i:2;s:62:\"TYPO3\\CMS\\Scheduler\\Task\\CachingFrameworkGarbageCollectionTask\";}',-1,0,'','',0,'',0,NULL,NULL),(10,0,1,0,0,'',0,0,'Scheduler task \"%s\" (UID: %s, Class: \"%s\") was added',1479395572,4,0,'::1','a:3:{i:0;s:44:\"File Abstraction Layer: Update storage index\";i:1;i:3;i:2;s:48:\"TYPO3\\CMS\\Scheduler\\Task\\FileStorageIndexingTask\";}',-1,0,'','',0,'',0,NULL,NULL),(11,0,1,0,0,'',0,0,'Scheduler task \"%s\" (UID: %s, Class: \"%s\") was added',1479395590,4,0,'::1','a:3:{i:0;s:28:\"Fileadmin garbage collection\";i:1;i:4;i:2;s:54:\"TYPO3\\CMS\\Scheduler\\Task\\RecyclerGarbageCollectionTask\";}',-1,0,'','',0,'',0,NULL,NULL),(12,0,1,0,0,'',0,0,'Scheduler task \"%s\" (UID: %s, Class: \"%s\") was added',1479395607,4,0,'::1','a:3:{i:0;s:24:\"Table garbage collection\";i:1;i:5;i:2;s:51:\"TYPO3\\CMS\\Scheduler\\Task\\TableGarbageCollectionTask\";}',-1,0,'','',0,'',0,NULL,NULL),(13,0,1,0,0,'',0,0,'Scheduler task \"%s\" (UID: %s, Class: \"%s\") was added',1479395661,4,0,'::1','a:3:{i:0;s:24:\"Table garbage collection\";i:1;i:6;i:2;s:51:\"TYPO3\\CMS\\Scheduler\\Task\\TableGarbageCollectionTask\";}',-1,0,'','',0,'',0,NULL,NULL),(14,0,1,0,0,'',0,0,'Scheduler task \"%s\" (UID: %s, Class: \"%s\") was added',1479395723,4,0,'::1','a:3:{i:0;s:30:\"Optimize MySQL database tables\";i:1;i:7;i:2;s:50:\"TYPO3\\CMS\\Scheduler\\Task\\OptimizeDatabaseTableTask\";}',-1,0,'','',0,'',0,NULL,NULL),(15,0,1,0,0,'',0,0,'Scheduler task \"%s\" (UID: %s, Class: \"%s\") was deleted',1479395774,4,0,'::1','a:3:{i:0;s:24:\"Table garbage collection\";i:1;i:6;i:2;s:51:\"TYPO3\\CMS\\Scheduler\\Task\\TableGarbageCollectionTask\";}',-1,0,'','',0,'',0,NULL,NULL),(16,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1: PHP Warning: Invalid argument supplied for foreach() in /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/core/Classes/Page/PageRenderer.php line 2176 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/core/Classes/Error/ErrorHandler.php in line 111. Requested URL: http://t3t-7.lokal/typo3/',1479395854,5,0,'::1','',-1,-99,'','',0,'',0,NULL,NULL),(17,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1301648975: No pages are found on the rootlevel! | TYPO3\\CMS\\Core\\Error\\Http\\ServiceUnavailableException thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/frontend/Classes/Controller/TypoScriptFrontendController.php in line 1489. Requested URL: http://t3t-7.lokal/',1479395870,5,0,'::1','',-1,0,'','',0,'',0,NULL,NULL),(18,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1: PHP Warning: Invalid argument supplied for foreach() in /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/core/Classes/Page/PageRenderer.php line 2176 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/core/Classes/Error/ErrorHandler.php in line 111. Requested URL: http://t3t-7.lokal/typo3/',1479395875,5,0,'::1','',-1,-99,'','',0,'',0,NULL,NULL),(19,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1: PHP Warning: Invalid argument supplied for foreach() in /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/core/Classes/Page/PageRenderer.php line 2176 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file /Users/mini/Documents/01_JOBS/typo3-template/vendor/typo3/cms/typo3/sysext/core/Classes/Error/ErrorHandler.php in line 111. Requested URL: http://t3t-7.lokal/typo3/',1479396101,5,0,'::1','',-1,-99,'','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formProtectionSessionToken:1','s:64:\"e5fa5f4f71598d03aae0c31493385a8a0abc17a2a2c2089a02ad61db539d35bc\";'),(2,'extensionDataImport','typo3conf/ext/dd_googlesitemap/ext_tables_static+adt.sql','i:1;'),(3,'extensionDataImport','typo3/sysext/scheduler/ext_tables_static+adt.sql','i:1;'),(4,'extensionDataImport','typo3conf/ext/realurl/ext_tables_static+adt.sql','i:1;'),(5,'extensionDataImport','typo3/sysext/recycler/ext_tables_static+adt.sql','i:1;'),(6,'extensionDataImport','typo3conf/ext/seo_basics/ext_tables_static+adt.sql','i:1;'),(7,'extensionDataImport','typo3conf/ext/vhs/ext_tables_static+adt.sql','i:1;'),(8,'tx_realurl','updateLevel','i:2;'),(9,'TYPO3.CMS.Install','coreVersionMatrix','a:6:{i:8;a:4:{s:8:\"releases\";a:10:{s:5:\"8.4.0\";a:5:{s:7:\"version\";s:5:\"8.4.0\";s:4:\"date\";s:23:\"2016-10-18 11:50:28 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"38695fe2d2f70c9ba4c975ecb4fc1fb2\";s:4:\"sha1\";s:40:\"0fcb9b14d29e2a1401660adba893a87e4dd4c2ff\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"ccb5b6caef62c42ec1d6291beabdf7b2\";s:4:\"sha1\";s:40:\"006a062f898f596f15f7a5ce45615315c09c4861\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.4.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.4.0\";}}s:5:\"8.3.1\";a:5:{s:7:\"version\";s:5:\"8.3.1\";s:4:\"date\";s:23:\"2016-09-13 10:12:21 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"2a307d91f6f19a76f62216da0d3b0318\";s:4:\"sha1\";s:40:\"6cf638c0205b5e91d203804aeb2faaf1cc60f7a1\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"227df291f3c36098cf95c3ca840aee47\";s:4:\"sha1\";s:40:\"3178c67bdb2d08d554905f8455c0d5dc8479696a\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.3.1/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.3.1\";}}s:5:\"8.3.0\";a:5:{s:7:\"version\";s:5:\"8.3.0\";s:4:\"date\";s:23:\"2016-08-30 14:00:15 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"237318f8b3e578b897323bae81caa9e1\";s:4:\"sha1\";s:40:\"f64373db494d0959a41e0858661cc26bf01db498\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"98f4f506ef5ecebf9f415c821e99dba8\";s:4:\"sha1\";s:40:\"daba2d3312dc6d83422dc0c8ed4d132f564cebd6\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.3.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.3.0\";}}s:5:\"8.2.1\";a:5:{s:7:\"version\";s:5:\"8.2.1\";s:4:\"date\";s:23:\"2016-07-19 10:46:35 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"ec8750cc451c0fffbf1f1a377ddd997b\";s:4:\"sha1\";s:40:\"222971e0fdc8f06658a847770203ab72e96c0d46\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"e01654e5ad7b46952d9c8eb82890802c\";s:4:\"sha1\";s:40:\"e7cbb4eab6f966a8055a84b62aa2888d70dc03f4\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.2.1/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.2.1\";}}s:5:\"8.2.0\";a:5:{s:7:\"version\";s:5:\"8.2.0\";s:4:\"date\";s:23:\"2016-07-05 09:55:23 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"0637198c8ae3044bafd87be1e9883f37\";s:4:\"sha1\";s:40:\"934bdd25ee025d5c268f28e04d4d50c6c02a3a8d\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"4aae3919126f1a796f5665d0b3bfb385\";s:4:\"sha1\";s:40:\"89bcbd6979a307ac0b9f8d8c7ffdd0dccef11bb6\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.2.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.2.0\";}}s:5:\"8.1.2\";a:5:{s:7:\"version\";s:5:\"8.1.2\";s:4:\"date\";s:23:\"2016-05-24 10:10:34 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"74a3415e588c285715225c1766a5157b\";s:4:\"sha1\";s:40:\"53c7fdeb164020cb19302fc01ad59db485b22b68\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"288d6dc63017c2ba313ac7a234e79eb6\";s:4:\"sha1\";s:40:\"fd499beffa6667a9fbf2b9a1840fff7b3ba7a53c\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.1.2/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.1.2\";}}s:5:\"8.1.1\";a:5:{s:7:\"version\";s:5:\"8.1.1\";s:4:\"date\";s:23:\"2016-05-24 08:04:08 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"4efe880e94e0c42f72e74b5a1343620a\";s:4:\"sha1\";s:40:\"268ff66df645d6c359a43427f1a97bf6a69dc6c7\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"81d82ec5fdcb8639dd2598811ebe8df0\";s:4:\"sha1\";s:40:\"3c7efc3b203338016a69635f367e78b32826fff3\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.1.1/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.1.1\";}}s:5:\"8.1.0\";a:5:{s:7:\"version\";s:5:\"8.1.0\";s:4:\"date\";s:23:\"2016-05-03 14:10:50 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"244a10258a080539728ec87545e2eaa6\";s:4:\"sha1\";s:40:\"fe1a89a4223409b73a23bbd8223caff0729001d4\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"c16a51de79249d8527ae21b7482f58d5\";s:4:\"sha1\";s:40:\"e5615ab947fdcbe2772869666d7e05cc42638a2d\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.1.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.1.0\";}}s:5:\"8.0.1\";a:5:{s:7:\"version\";s:5:\"8.0.1\";s:4:\"date\";s:23:\"2016-04-12 09:36:52 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"08b62f7f22bf80dd7ad65bb6217c8218\";s:4:\"sha1\";s:40:\"e90368367f78a4a1587c9f8168b045c46a7b2319\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"f69e6e54d068281470cad54d8eff4bee\";s:4:\"sha1\";s:40:\"6f4952fba137963a5b101de5da3e2ffc997ee149\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.0.1/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.0.1\";}}s:5:\"8.0.0\";a:5:{s:7:\"version\";s:5:\"8.0.0\";s:4:\"date\";s:23:\"2016-03-22 13:42:34 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"026918c819f0b92b74de4320dd3750b1\";s:4:\"sha1\";s:40:\"6625dc6e4b86eaff9c7d1114365d2c5037901b28\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"84c1bf8ea60a472a11ca0678a34939a5\";s:4:\"sha1\";s:40:\"c05638d60ca0bcdc7437c646876dc464c6a7a40a\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/8.0.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/8.0.0\";}}}s:6:\"latest\";s:5:\"8.4.0\";s:6:\"stable\";s:5:\"8.4.0\";s:6:\"active\";b:1;}i:7;a:4:{s:8:\"releases\";a:22:{s:6:\"7.6.12\";a:5:{s:7:\"version\";s:6:\"7.6.12\";s:4:\"date\";s:23:\"2016-11-01 11:22:23 UTC\";s:4:\"type\";s:7:\"regular\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"69e1e975b5257619a913893fb6222dc2\";s:4:\"sha1\";s:40:\"a6d7ed152fd10c40bf0e2d30b7dea7b5108abbd3\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"00f4802cb32ae02f4a9c90efcace41d8\";s:4:\"sha1\";s:40:\"da36cf4d7db80362765772ad7792750303ca4844\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:32:\"https://get.typo3.org/7.6.12/zip\";s:3:\"tar\";s:28:\"https://get.typo3.org/7.6.12\";}}s:6:\"7.6.11\";a:5:{s:7:\"version\";s:6:\"7.6.11\";s:4:\"date\";s:23:\"2016-09-13 10:06:26 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"92a7068c6aee32a8dd899f08093c0721\";s:4:\"sha1\";s:40:\"15af97ede2b156113218f9855d87675af3221a57\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"55d5f6036de8b32eb097d361b1230613\";s:4:\"sha1\";s:40:\"6cc897017f9f26630d86fbe8835a077e49871d20\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:32:\"https://get.typo3.org/7.6.11/zip\";s:3:\"tar\";s:28:\"https://get.typo3.org/7.6.11\";}}s:6:\"7.6.10\";a:5:{s:7:\"version\";s:6:\"7.6.10\";s:4:\"date\";s:23:\"2016-07-19 10:40:36 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"b0271dd4914e5e769298a0804fe53f58\";s:4:\"sha1\";s:40:\"9422d0a1a8e26e7c5b759d1f7f155009c2d77106\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"98a718c492de55ab682c46a977148e85\";s:4:\"sha1\";s:40:\"7f8524ecea4156028352630ab7c480654e584bf3\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:32:\"https://get.typo3.org/7.6.10/zip\";s:3:\"tar\";s:28:\"https://get.typo3.org/7.6.10\";}}s:5:\"7.6.9\";a:5:{s:7:\"version\";s:5:\"7.6.9\";s:4:\"date\";s:23:\"2016-05-24 10:05:19 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"7da85e4e7cc2908c1ccd9b0ce58ecb2e\";s:4:\"sha1\";s:40:\"2869a36febe2244554aa3e8feea865767a70b9e2\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"5ca12f8cddb357ad3592710b5ddbeff7\";s:4:\"sha1\";s:40:\"41934c69dd458b5ed70144db4d1f52e499379e59\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.9/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.9\";}}s:5:\"7.6.8\";a:5:{s:7:\"version\";s:5:\"7.6.8\";s:4:\"date\";s:23:\"2016-05-24 07:58:14 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"897d834d32464416cfcb0175e6cb5bf8\";s:4:\"sha1\";s:40:\"29808c956011828b7721f197819329cc432d2a74\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"d6374e454af27bef7169c043d8efa45b\";s:4:\"sha1\";s:40:\"63910e27d68752a5b0bd4449fe60bd76f95e8f1b\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.8/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.8\";}}s:5:\"7.6.7\";a:5:{s:7:\"version\";s:5:\"7.6.7\";s:4:\"date\";s:23:\"2016-05-17 12:33:13 UTC\";s:4:\"type\";s:7:\"regular\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"b8d114493d8e402c2bbf0cc0656acb0c\";s:4:\"sha1\";s:40:\"ee4e5292a1dc0eb9640c692ebc77b0ff7990a6c4\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"c66505a4ec314c529dc5fd3df1e31136\";s:4:\"sha1\";s:40:\"00d69f1a1e2dedb127aa227e72e8f5dee0141d6f\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.7/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.7\";}}s:5:\"7.6.6\";a:5:{s:7:\"version\";s:5:\"7.6.6\";s:4:\"date\";s:23:\"2016-04-26 09:45:25 UTC\";s:4:\"type\";s:7:\"regular\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"ba1b13e382afdf4570a93afd44646504\";s:4:\"sha1\";s:40:\"9aa31a467f977690c81525fdf8379d11a90ef112\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"fd3047b4cbf1f176858e35c4911c9e9d\";s:4:\"sha1\";s:40:\"86eec6a8b32cc10cbd7ee6921464118115531a9a\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.6/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.6\";}}s:5:\"7.6.5\";a:5:{s:7:\"version\";s:5:\"7.6.5\";s:4:\"date\";s:23:\"2016-04-12 09:28:13 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"c0f022868700b0978734bc6f9b97eca5\";s:4:\"sha1\";s:40:\"709861171df34ffa21ba48edca8a1e24794cb8c8\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"2af8f8b7725e7236775370c9d54f3e88\";s:4:\"sha1\";s:40:\"1daf964b6860726e17de6120dba1378180dc634c\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.5/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.5\";}}s:5:\"7.6.4\";a:5:{s:7:\"version\";s:5:\"7.6.4\";s:4:\"date\";s:23:\"2016-02-23 11:04:27 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"400d5f8808c1377034ddc35165ccbb18\";s:4:\"sha1\";s:40:\"2f545ec705056377cf566f55dcc1b5764f6ea377\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"d9b4ec13fdc935445f6e85c3e3c7fdc8\";s:4:\"sha1\";s:40:\"f48ed5e816b06f72180b4cc30be077e3c86ded5c\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.4/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.4\";}}s:21:\"7.6-snapshot-20160223\";a:5:{s:7:\"version\";s:21:\"7.6-snapshot-20160223\";s:4:\"date\";s:23:\"2016-02-23 09:58:12 UTC\";s:4:\"type\";s:11:\"development\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"f44204c9f1b95207af7984a958309c84\";s:4:\"sha1\";s:40:\"5a2a896459d9368e44e8db35668625233fb4e817\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"597a6fbc4fdde23a49a580da5220177e\";s:4:\"sha1\";s:40:\"7ef5d0900b8875d385534b28415a9382e22ed4f8\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:47:\"https://get.typo3.org/7.6-snapshot-20160223/zip\";s:3:\"tar\";s:43:\"https://get.typo3.org/7.6-snapshot-20160223\";}}s:5:\"7.6.3\";a:5:{s:7:\"version\";s:5:\"7.6.3\";s:4:\"date\";s:23:\"2016-02-16 11:12:06 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"bc0c39ebcecd497490d7825c20971f81\";s:4:\"sha1\";s:40:\"6b39467b132955840e20c1d84b1978935447d244\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"af674b4b912dd36c350e5a905e8e4e46\";s:4:\"sha1\";s:40:\"116945ce7197eecd175372d13a6cb87c10d7953e\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.3/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.3\";}}s:5:\"7.6.2\";a:5:{s:7:\"version\";s:5:\"7.6.2\";s:4:\"date\";s:23:\"2015-12-21 10:57:46 UTC\";s:4:\"type\";s:7:\"regular\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"7f67a22b4a08a57a3259f5be34633d26\";s:4:\"sha1\";s:40:\"2633a582ab500a99867a50751303c3570c527cbe\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"a4e0f2b5667add63e10dc9b8ed64ed2d\";s:4:\"sha1\";s:40:\"8a034d0378b015b33e7c827d15ca7aa2c68c9507\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.2/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.2\";}}s:5:\"7.6.1\";a:5:{s:7:\"version\";s:5:\"7.6.1\";s:4:\"date\";s:23:\"2015-12-15 10:58:43 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"3af669dd8bcbea0dad127f2b1190fd59\";s:4:\"sha1\";s:40:\"9c140d653889623a453fa16a0d8fc3268e6ad3ac\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"e43ceb2b858baa6528ac8f272db0bb0e\";s:4:\"sha1\";s:40:\"ed878b4c420966d47ced8855f27acf941aac03ea\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.1/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.1\";}}s:5:\"7.6.0\";a:5:{s:7:\"version\";s:5:\"7.6.0\";s:4:\"date\";s:23:\"2015-11-10 13:41:21 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"91b5ab3c7f0e4b60aafb1c0e9966a06b\";s:4:\"sha1\";s:40:\"f63e5506bb11f4aecaf58aea284395fbba90d722\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"a8a70c11a09bef943bb6d7076f841776\";s:4:\"sha1\";s:40:\"0dab4383b304d18cd7739ad7c07f84a51dbc6150\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.6.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.6.0\";}}s:5:\"7.5.0\";a:5:{s:7:\"version\";s:5:\"7.5.0\";s:4:\"date\";s:23:\"2015-09-29 12:26:04 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"c3e8922b36e45286dd1e6e6057985853\";s:4:\"sha1\";s:40:\"bb95dcd5f0ee05c9b6c79234d48866346b7d336f\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"66bac9ad4d0b2cfd05ec9f8d1254bf81\";s:4:\"sha1\";s:40:\"bc4dae12067376098bc50a12404ca6ad9c7f40f9\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.5.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.5.0\";}}s:5:\"7.4.0\";a:5:{s:7:\"version\";s:5:\"7.4.0\";s:4:\"date\";s:23:\"2015-08-04 13:13:37 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"7ad94538fa4a848f62402b08a6846fed\";s:4:\"sha1\";s:40:\"09bd028c05f3d74f5d3c0095028c951e387d908d\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"a01a3606abf4e8ff5ba4bc645c2380b5\";s:4:\"sha1\";s:40:\"c2756f167855c015a0dc41391a32a58f325e9c4c\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.4.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.4.0\";}}s:5:\"7.3.1\";a:5:{s:7:\"version\";s:5:\"7.3.1\";s:4:\"date\";s:23:\"2015-07-01 14:29:14 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"b4ee3d70b569c569654bc062df4da51f\";s:4:\"sha1\";s:40:\"557f27afbc9586dc7937048f7ebc6fda3bd05257\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"3d8c386ece8e3bd0764ddac2e4763120\";s:4:\"sha1\";s:40:\"81033b6ae6394eaadcab7079ed114cf9d7b672d1\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.3.1/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.3.1\";}}s:5:\"7.3.0\";a:5:{s:7:\"version\";s:5:\"7.3.0\";s:4:\"date\";s:23:\"2015-06-15 18:29:53 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"3a36ee4ac34a2433ab2e2089c923d8f1\";s:4:\"sha1\";s:40:\"16c91366a5ce6209986ef0007bdb6cb9bdadf43a\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"56904794c4d880512963d48d78e25674\";s:4:\"sha1\";s:40:\"c52b4e0f7da558c0f26665cdd54a51795b429414\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.3.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.3.0\";}}s:5:\"7.2.0\";a:5:{s:7:\"version\";s:5:\"7.2.0\";s:4:\"date\";s:23:\"2015-04-28 12:28:02 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"144e4d29acf2e6a3ed7f548b5d470310\";s:4:\"sha1\";s:40:\"506d22dcf384f23c172ebe7f562057e0bbf89d32\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"caebda48df74d0dac007c6ce338a0a4e\";s:4:\"sha1\";s:40:\"55fff8c6c465b1fdf090fd52b0d311cce79d71f0\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.2.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.2.0\";}}s:5:\"7.1.0\";a:5:{s:7:\"version\";s:5:\"7.1.0\";s:4:\"date\";s:23:\"2015-02-24 14:43:06 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"c17d256e7d2e1b6bfaf7c70ba5b26d90\";s:4:\"sha1\";s:40:\"82f3ce50a83c0ae266649d8051f0456f97cfa3f7\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"60a1725869c7633cdb697cea6672ad5d\";s:4:\"sha1\";s:40:\"3aba4c8def027d7f75b1ccba62005847732fcd41\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.1.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.1.0\";}}s:5:\"7.0.2\";a:5:{s:7:\"version\";s:5:\"7.0.2\";s:4:\"date\";s:23:\"2014-12-10 10:47:44 UTC\";s:4:\"type\";s:8:\"security\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"a42d3292df8761b59ff64e8719a18520\";s:4:\"sha1\";s:40:\"8f09b63a549d667f5077a937bf4701669ccde07d\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"89a17926865ddbc2d087fcf0c2ec9757\";s:4:\"sha1\";s:40:\"49718c2631c93c4eb633b205918375bd233dcf3a\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.0.2/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.0.2\";}}s:5:\"7.0.0\";a:5:{s:7:\"version\";s:5:\"7.0.0\";s:4:\"date\";s:23:\"2014-12-02 20:46:36 UTC\";s:4:\"type\";s:7:\"release\";s:9:\"checksums\";a:2:{s:3:\"tar\";a:2:{s:3:\"md5\";s:32:\"9a8bde071766dc899471c5aeb0352a91\";s:4:\"sha1\";s:40:\"cc2957be8b41ba5009d85dda1cb9d01bffd03e75\";}s:3:\"zip\";a:2:{s:3:\"md5\";s:32:\"a35a51b6104247c78dabdced052027fd\";s:4:\"sha1\";s:40:\"4f45a9176c6086751a5f095433d2e7a932be1de4\";}}s:3:\"url\";a:2:{s:3:\"zip\";s:31:\"https://get.typo3.org/7.0.0/zip\";s:3:\"tar\";s:27:\"https://get.typo3.org/7.0.0\";}}}s:6:\"latest\";s:6:\"7.6.12\";s:6:\"stable\";s:6:\"7.6.12\";s:6:\"active\";b:1;}s:13:\"latest_stable\";s:6:\"7.6.12\";s:17:\"latest_old_stable\";s:6:\"6.2.28\";s:10:\"latest_lts\";s:6:\"7.6.12\";s:14:\"latest_old_lts\";s:6:\"6.2.28\";}'),(10,'tx_reports','status.highestSeverity','i:0;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `rowDescription` text,
  `bodytext` mediumtext,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` text,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bullets_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uploads_description` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uploads_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `assets` int(11) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathdata`
--

DROP TABLE IF EXISTS `tx_realurl_pathdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathdata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext,
  `pagepath` text,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathdata`
--

LOCK TABLES `tx_realurl_pathdata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_pathdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `field_alias` varchar(255) NOT NULL DEFAULT '',
  `field_id` varchar(60) NOT NULL DEFAULT '',
  `value_alias` varchar(255) NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias_cache_map`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias_cache_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias_cache_map` (
  `alias_uid` int(11) NOT NULL DEFAULT '0',
  `url_cache_id` int(11) NOT NULL DEFAULT '0',
  KEY `check_existence` (`alias_uid`,`url_cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias_cache_map`
--

LOCK TABLES `tx_realurl_uniqalias_cache_map` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldata`
--

DROP TABLE IF EXISTS `tx_realurl_urldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `original_url` text,
  `speaking_url` text,
  `request_variables` text,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`original_url`(32),`expire`),
  KEY `pathq2` (`rootpage_id`,`speaking_url`(32)),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldata`
--

LOCK TABLES `tx_realurl_urldata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `nextexecution` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text,
  `lastexecution_context` char(3) NOT NULL DEFAULT '',
  `serialized_task_object` blob,
  `serialized_executions` blob,
  `task_group` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
INSERT INTO `tx_scheduler_task` VALUES (1,1479395502,0,'',1479423600,0,NULL,'','O:55:\"TYPO3\\CMS\\Extensionmanager\\Task\\UpdateExtensionListTask\":6:{s:10:\"\0*\0taskUid\";i:1;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1479395448;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:9:\"0 0 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1479423600;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:0;}',NULL,0),(2,1479395551,0,'',1479423600,0,NULL,'','O:62:\"TYPO3\\CMS\\Scheduler\\Task\\CachingFrameworkGarbageCollectionTask\":7:{s:16:\"selectedBackends\";a:1:{i:0;s:49:\"TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend\";}s:10:\"\0*\0taskUid\";i:2;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1479395512;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:9:\"0 0 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1479423600;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:0;}',NULL,0),(3,1479395571,0,'',1479423600,0,NULL,'','O:48:\"TYPO3\\CMS\\Scheduler\\Task\\FileStorageIndexingTask\":7:{s:10:\"storageUid\";i:1;s:10:\"\0*\0taskUid\";i:3;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1479395558;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:9:\"0 0 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1479423600;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:0;}',NULL,0),(4,1479395589,0,'',1479423600,0,NULL,'','O:54:\"TYPO3\\CMS\\Scheduler\\Task\\RecyclerGarbageCollectionTask\":8:{s:12:\"numberOfDays\";i:30;s:20:\"\0*\0recyclerDirectory\";s:10:\"_recycler_\";s:10:\"\0*\0taskUid\";i:4;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1479395574;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:9:\"0 0 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1479423600;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:0;}',NULL,0),(5,1479395607,0,'',1479423600,0,NULL,'','O:51:\"TYPO3\\CMS\\Scheduler\\Task\\TableGarbageCollectionTask\":9:{s:9:\"allTables\";b:0;s:12:\"numberOfDays\";i:180;s:5:\"table\";s:7:\"sys_log\";s:10:\"\0*\0taskUid\";i:5;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1479395593;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:9:\"0 0 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1479423600;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:0;}',NULL,0),(7,1479395723,0,'',1479427200,0,NULL,'','O:50:\"TYPO3\\CMS\\Scheduler\\Task\\OptimizeDatabaseTableTask\":7:{s:14:\"selectedTables\";a:68:{i:0;s:14:\"backend_layout\";i:1;s:9:\"be_groups\";i:2;s:11:\"be_sessions\";i:3;s:8:\"be_users\";i:4;s:15:\"cache_md5params\";i:5;s:14:\"cache_treelist\";i:6;s:13:\"cf_cache_hash\";i:7;s:18:\"cf_cache_hash_tags\";i:8;s:19:\"cf_cache_imagesizes\";i:9;s:24:\"cf_cache_imagesizes_tags\";i:10;s:14:\"cf_cache_pages\";i:11;s:19:\"cf_cache_pages_tags\";i:12;s:20:\"cf_cache_pagesection\";i:13;s:25:\"cf_cache_pagesection_tags\";i:14;s:17:\"cf_cache_rootline\";i:15;s:22:\"cf_cache_rootline_tags\";i:16;s:33:\"cf_extbase_datamapfactory_datamap\";i:17;s:38:\"cf_extbase_datamapfactory_datamap_tags\";i:18;s:17:\"cf_extbase_object\";i:19;s:22:\"cf_extbase_object_tags\";i:20;s:21:\"cf_extbase_reflection\";i:21;s:26:\"cf_extbase_reflection_tags\";i:22;s:33:\"cf_extbase_typo3dbbackend_queries\";i:23;s:38:\"cf_extbase_typo3dbbackend_queries_tags\";i:24;s:11:\"cf_vhs_main\";i:25;s:16:\"cf_vhs_main_tags\";i:26;s:15:\"cf_vhs_markdown\";i:27;s:20:\"cf_vhs_markdown_tags\";i:28;s:9:\"fe_groups\";i:29;s:15:\"fe_session_data\";i:30;s:11:\"fe_sessions\";i:31;s:8:\"fe_users\";i:32;s:5:\"pages\";i:33;s:22:\"pages_language_overlay\";i:34;s:16:\"sys_be_shortcuts\";i:35;s:12:\"sys_category\";i:36;s:22:\"sys_category_record_mm\";i:37;s:14:\"sys_collection\";i:38;s:22:\"sys_collection_entries\";i:39;s:10:\"sys_domain\";i:40;s:8:\"sys_file\";i:41;s:19:\"sys_file_collection\";i:42;s:17:\"sys_file_metadata\";i:43;s:22:\"sys_file_processedfile\";i:44;s:18:\"sys_file_reference\";i:45;s:16:\"sys_file_storage\";i:46;s:14:\"sys_filemounts\";i:47;s:11:\"sys_history\";i:48;s:12:\"sys_language\";i:49;s:17:\"sys_lockedrecords\";i:50;s:7:\"sys_log\";i:51;s:8:\"sys_news\";i:52;s:8:\"sys_note\";i:53;s:12:\"sys_refindex\";i:54;s:12:\"sys_registry\";i:55;s:12:\"sys_template\";i:56;s:10:\"tt_content\";i:57;s:42:\"tx_extensionmanager_domain_model_extension\";i:58;s:43:\"tx_extensionmanager_domain_model_repository\";i:59;s:17:\"tx_impexp_presets\";i:60;s:19:\"tx_realurl_pathdata\";i:61;s:20:\"tx_realurl_uniqalias\";i:62;s:30:\"tx_realurl_uniqalias_cache_map\";i:63;s:18:\"tx_realurl_urldata\";i:64;s:15:\"tx_rsaauth_keys\";i:65;s:22:\"tx_rtehtmlarea_acronym\";i:66;s:17:\"tx_scheduler_task\";i:67;s:23:\"tx_scheduler_task_group\";}s:10:\"\0*\0taskUid\";i:7;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1479395664;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:9:\"0 1 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1479427200;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:0;}',NULL,0);
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-17 16:53:46
