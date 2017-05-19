-- MySQL dump 10.13  Distrib 5.5.23, for osx10.5 (i386)
--
-- Host: localhost    Database: ApiNATOMYKB
-- ------------------------------------------------------
-- Server version	5.5.23

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
-- Table structure for table `lyphs`
--

DROP TABLE IF EXISTS `lyphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lyphs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thickness` varchar(10) DEFAULT NULL,
  `lgth` varchar(10) DEFAULT NULL,
  `ontoref` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lyphs`
--

LOCK TABLES `lyphs` WRITE;
/*!40000 ALTER TABLE `lyphs` DISABLE KEYS */;
INSERT INTO `lyphs` VALUES (1,'BAG','Kidney','2..2','1..1','FMA:7203'),(2,'BAG','Renal hilum','2..2','1..1','FMA:15610'),(3,'BAG','Renal parenchyma','2..2','1..1',''),(4,'BAG','Renal capsule','2..2','1..1','FMA: 66610'),(5,'BAG','Kidney lobus','2..2','2..2','FMA:17881'),(6,'BAG','Cortex of kidney lobus','2..2','2..2',''),(7,'BAG','Medulla of kidney lobus','2..2','2..2',''),(8,'GEOMETRIC','Anatomical vessel','1..5','0..6',''),(9,'MATERIAL','Biological fluid','','',''),(10,'GEOMETRIC','Lumen of anatomical vessel','1..5','0..6',''),(11,'GEOMETRIC','Wall of anatomical vessel','1..5','0..6',''),(12,'GEOMETRIC','Urinary vessel','1..5','1..6',''),(13,'MATERIAL','Urinary fluid','','',''),(14,'GEOMETRIC','Lumen of urinary vessel','1..5','0..6',''),(15,'CYST','Epithelial cell','6..7','5..6','FMA:66768'),(16,'GEOMETRIC','Wall of urinary vessel','1..5','0..6',''),(17,'GEOMETRIC','Blood vessel','1..5','0..6','FMA:63183'),(18,'MATERIAL','Blood','','','FMA:9670'),(19,'GEOMETRIC','Lumen of blood vessel','1..5','0..6','FMA:312610'),(20,'CYST','Endothelial cell','','','FMA:66772'),(21,'GEOMETRIC','Wall of blood vessel','1..5','0..6','FMA:67473'),(22,'MATERIAL','Urinary filtrate','','','FMA:280587'),(23,'MATERIAL','Urine','','','FMA:12274'),(24,'BAG','Visceral Bowman\'s capsule','6..6','5..5',''),(25,'BAG','Lumen of Visceral Bowman\'s capsule','6..6','5..5',''),(26,'BAG','Wall of Visceral Bowman\'s capsule','6..6','5..5',''),(27,'TUBE','Parietal Bowman\'s capsule','6..6','5..5',''),(28,'TUBE','Lumen of Parietal  Bowman\'s capsule','6..6','5..5',''),(29,'TUBE','Wall of Parietal Bowman\'s capsule','6..6','5..5',''),(30,'TUBE','Proximal convoluted tubule','6..6','4..5','FMA:17693'),(31,'TUBE','Lumen of proximal convoluted tubule','6..6','4..5',''),(32,'TUBE','Wall of proximal convoluted tubule','6..6','4..5',''),(33,'TUBE','Cortical Proximal straight tubule','6..6','4..5','FMA:17716'),(34,'TUBE','Lumen of Cortical proximal straight tubule','6..6','4..5',''),(35,'TUBE','Wall of Cortical proximal straight tubule','6..6','4..5',''),(36,'TUBE','Medullary Proximal straight tubule','6..6','4..5','FMA:17716'),(37,'TUBE','Lumen of Medullary proximal straight tubule','6..6','4..5',''),(38,'TUBE','Wall of Meduallry proximal straight tubule','6..6','4..5',''),(39,'TUBE','Descending thin limb of nephron','6..6','4..5',''),(40,'TUBE','Lumen of descending thin limb of nephron','6..6','4..5',''),(41,'TUBE','Wall of descending thin limb of nephron','6..6','4..5',''),(42,'TUBE','Medullary thick ascending limb of nephron','6..6','4..5',''),(43,'TUBE','Lumen of medullary thick ascending limb of nephron','6..6','4..5',''),(44,'TUBE','Wall of medullary thick ascending limb of nephron','6..6','4..5',''),(45,'TUBE','Cortical thick ascending limb','6..6','4..5',''),(46,'TUBE','Lumen of cortical thick ascending limb','6..6','4..5',''),(47,'TUBE','Wall of cortical thick ascending limb','6..6','4..5',''),(48,'TUBE','Distal convoluted tubule','6..6','4..5','FMA:17721'),(49,'TUBE','Lumen of distal convoluted tubule','6..6','4..5',''),(50,'TUBE','Wall of distal convoluted tubule','6..6','4..5',''),(51,'TUBE','interlobar artery','6..6','5..5',''),(52,'TUBE','lumen of interlobar artery','6..6','5..5',''),(53,'TUBE','wall of interlobar artery','6..6','5..5',''),(54,'TUBE','arcuate artery','6..6','5..5',''),(55,'TUBE','lumen of arcuate artery','6..6','5..5',''),(56,'TUBE','wall of arcuate artery','6..6','5..5',''),(57,'TUBE','cortical artery','6..6','5..5',''),(58,'TUBE','lumen of cortical artery','6..6','5..5',''),(59,'TUBE','wall of cortical artery','6..6','5..5',''),(60,'TUBE','afferent artery','6..6','5..5',''),(61,'TUBE','lumen of afferent artery','6..6','5..5',''),(62,'TUBE','wall of afferent artery','6..6','5..5',''),(63,'TUBE','efferent artery','6..6','5..5',''),(64,'TUBE','lumen of efferent artery','6..6','5..5',''),(65,'TUBE','wall of efferent artery','6..6','5..5',''),(66,'TUBE','stellate vein','6..6','5..5',''),(67,'TUBE','lumen of stellate vein','6..6','5..5',''),(68,'TUBE','wall of stellate vein','6..6','5..5',''),(69,'TUBE','cortical vein','6..6','5..5',''),(70,'TUBE','lumen of cortical vein','6..6','5..5',''),(71,'TUBE','wall of cortical vein','6..6','5..5',''),(72,'TUBE','arcuate vein','6..6','5..5',''),(73,'TUBE','lumen of arcuate vein','6..6','5..5',''),(74,'TUBE','wall of arcuate vein','6..6','5..5',''),(75,'TUBE','interlobar vein','6..6','5..5',''),(76,'TUBE','lumen of interlobar vein','6..6','5..5',''),(77,'TUBE','wall of interlobar vein','6..6','5..5',''),(78,'TUBE','glomerulus','6..6','5..5',''),(79,'TUBE','lumen of glomerulus','6..6','5..5',''),(80,'TUBE','wall of glomerulus','6..6','5..5',''),(81,'TUBE','Major calyx','4..5','2..2',''),(82,'TUBE','lumen of Major calyx','4..5','2..2',''),(83,'TUBE','wall of Major calyx','4..5','2..2',''),(84,'TUBE','Minor calyx','4..5','2..2',''),(85,'TUBE','lumen of Minor calyx','4..5','2..2',''),(86,'TUBE','wall of Minor calyx','4..5','2..2',''),(87,'TUBE','inner medullary collecting duct','5..6','3..5',''),(88,'TUBE','lumen of inner medullary collecting duct','5..6','3..5',''),(89,'TUBE','wall of inner medullary collecting duct','5..6','3..5',''),(90,'TUBE','outer medullary collecting duct','5..6','3..5',''),(91,'TUBE','lumen of outer medullary collecting duct','5..6','3..5',''),(92,'TUBE','wall of outer medullary collecting duct','5..6','3..5',''),(93,'TUBE','cortical collecting duct','5..6','3..5',''),(94,'TUBE','lumen of cortical collecting duct','5..6','3..5',''),(95,'TUBE','wall of cortical collecting duct','5..6','3..5',''),(96,'TUBE','connecting tubule','5..6','3..5',''),(97,'TUBE','lumen of connecting tubule','5..6','3..5',''),(98,'TUBE','wall of connecting tubule','5..6','3..5',''),(99,'TUBE','renal artery','2..3','2..2',''),(100,'TUBE','lumen of renal artery','2..3','2..2',''),(101,'TUBE','wall of renal artery','2..3','2..2',''),(102,'TUBE','renal vein','2..3','2..2',''),(103,'TUBE','lumen of renal vein','2..3','2..2',''),(104,'TUBE','wall of renal vein','2..3','2..2',''),(105,'TUBE','cortical peritubular capillary plexus','6..6','4..5',''),(106,'TUBE','lumen of cortical peritubular capillary plexus','6..6','4..5',''),(107,'TUBE','wall of cortical peritubular capillary plexus','6..6','4..5',''),(108,'TUBE','ureter','4..5','1..2',''),(109,'TUBE','lumen of ureter','4..5','1..2',''),(110,'TUBE','wall of ureter','4..5','1..2',''),(111,'TUBE','pelvis','4..5','2..2',''),(112,'TUBE','lumen of pelvis','4..5','2..2',''),(113,'TUBE','wall of pelvis','4..5','2..2',''),(114,'TUBE','segmental artery','3..3','2..2',''),(115,'TUBE','lumen of segmental artery','3..3','2..2',''),(116,'TUBE','wall of segmental artery','3..3','2..2',''),(117,'TUBE','segmental vein','3..3','2..2',''),(118,'TUBE','lumen of segmental vein','3..3','2..2',''),(119,'TUBE','wall of segmental vein','3..3','2..2',''),(120,'COALESCENCE GROUP','Glomerular','','',''),(121,'COALESCENCE GROUP','Peritubular','','',''),(122,'BAG','Forebrain','1..2','1..1','FMA:50801'),(123,'BAG','CSF layer of Forebrain','2..3','1..2',''),(124,'BAG','Ependymal layer of Forebrain','3..4','1..2',''),(125,'BAG','Parenchymal layer of Forebrain','1..2','1..1',''),(127,'TUBE','Basal Ganglia','2..2','1..2','FMA:84013'),(128,'TUBE','CSF layer of Basal Ganglia','2..3','2..3',''),(129,'TUBE','Ependymal layer of Basal Ganglia','3..4','2..3',''),(130,'TUBE','Parenchymal layer of Basal Ganglia','2..2','2..2',''),(132,'TUBE','Diencephalon','2..2','2..2','FMA:62001'),(133,'TUBE','CSF layer of Diencephalon','2..3','2..2',''),(134,'TUBE','Ependymal layer of Diencephalon','3..4','2..2',''),(135,'TUBE','Parenchymal layer of Diencephalon','2..2','2..2',''),(137,'TUBE','Midbrain','2..2','2..2','FMA:61993'),(138,'TUBE','CSF layer of Midbrain','2..3','2..2',''),(139,'TUBE','Ependymal layer of Midbrain','3..4','2..2',''),(140,'TUBE','Parenchymal layer of Midbrain','2..2','2..2',''),(142,'TUBE','Pons','2..2','2..2','FMA:67943'),(143,'TUBE','CSF layer of Pons','2..3','2..2',''),(144,'TUBE','Ependymal layer of Pons','3..4','2..2',''),(145,'TUBE','Parenchymal layer of Pons','2..2','2..2',''),(147,'TUBE','Medulla Oblongata','2..2','2..2','FMA:62004'),(148,'TUBE','CSF of Medulla Oblongata','2..3','2..2',''),(149,'TUBE','Ependymal layer of Medulla Oblongata','3..4','2..2',''),(150,'TUBE','Parenchymal layer of Medulla Oblongata','2..2','2..2',''),(152,'BAG','Spinal Cord','2..2','1..2','FMA:7647'),(153,'BAG','CSF layer of Spinal Cord','2..3','1..2',''),(154,'BAG','Ependymal layer of Spinal Cord','3..4','1..2',''),(155,'BAG','Parenchymal layer of Spinal Cord','2..2','1..2',''),(157,'TUBE','Cerebellum','2..2','2..2','FMA:67944'),(158,'TUBE','CSF layer of Cerebellum','2..3','2..2',''),(159,'TUBE','Ependymal layer of Cerebellum','3..4','2..2',''),(160,'TUBE','Parenchymal layer of Cerebellum','2..2','2..2',''),(162,'BAG','Leptomeninges','2..3','0..2','FMA:9591'),(163,'BAG','CSF layer of Leptomeninges','2..3','0..2',''),(164,'TUBE','Eye','2..2','2..2','FMA:54448'),(165,'TUBE','Air layer of Eye','0..2','2..2',''),(166,'TUBE','Conjunctival layer of Eye','3..4','2..2',''),(167,'TUBE','Fibrotunical layer of Eye','3..3','2..2',''),(168,'TUBE','Humoural layer of Eye','2..2','2..2',''),(169,'TUBE','Retinal layer of Eye','3..5','2..2',''),(170,'TUBE','Skin','2..2','0..1','FMA:7163'),(171,'TUBE','Air layer of Skin','0..2','0..1',''),(172,'TUBE','Epidermal layer of Skin','2..3','0..1','FMA:70596'),(173,'TUBE','Dermal layer of Skin','2..3','0..1','FMA:70323'),(174,'TUBE','Aorta','2..2','0..1','FMA:3734'),(175,'TUBE','Wall of Aorta','2..3','0..1',''),(176,'TUBE','Lumen of Aorta','2..2','0..1',''),(177,'TUBE','Inferior Vena Cava','2..2','0..1','FMA:10951'),(178,'TUBE','Wall of Inferior Vena Cava','2..3','0..1',''),(179,'TUBE','Lumen of Inferior Vena Cava','2..2','0..1',''),(180,'TUBE','Right side of Heart','2..2','1..2','FMA:7165'),(181,'TUBE','Wall of right side of Heart','2..2','1..2',''),(182,'TUBE','Lumen of right side of Heart','2..2','1..2',''),(183,'TUBE','Left side of Heart','2..2','1..2','FMA:7166'),(184,'TUBE','Wall of left side of Heart','2..2','1..2',''),(185,'TUBE','Lumen of left side of Heart','2..2','1..2',''),(186,'CYST','Proximal bone','2..2','1..2',''),(187,'CYST','Medullary cavity of proximal bone','2..2','1..2',''),(188,'CYST','Cortical layer of proximal bone','2..3','1..2',''),(189,'CYST','Periosteal layer of proximal bone','3..4','1..2',''),(190,'CYST','Distal bone','2..2','1..2',''),(191,'CYST','Medullary cavity of distal bone','2..2','1..2',''),(192,'CYST','Cortical layer of distal bone','2..3','1..2',''),(193,'CYST','Periosteal layer of distal bone','3..4','1..2',''),(194,'CYST','Ligament','2..4','2..2','FMA:30319'),(195,'CYST','Cartilage','2..3','2..2','FMA:37377'),(196,'CYST','Skeletal muscle','1..2','1..2','FMA:14069'),(197,'CYST','Granular tissue of cerebellar cortex','2..3','2..2','FMA:83140'),(198,'CYST','Dorsal horn of spinal grey matter','3..4','1..2','FMA:256530'),(199,'CYST','Clarke\'s column','3..4','1..2','FMA:77023'),(200,'CYST','Ventral horn of spinal grey matter','3..4','1..2','FMA:256541'),(201,'CYST','Gracile nucleus','3..4','2..3','FMA:72602'),(202,'CYST','External formation of nucleus ambiguus','3..4','3..4',''),(203,'CYST','Superior colliculus','2..4','2..4','FMA:62403'),(204,'CYST','Ventral posterolateral nucleus of thalamus','2..4','2..4','FMA:62200'),(205,'CYST','Paraventricular nucleus of hypothalamus','2..4','2..4','FMA:62320'),(206,'CYST','Precentral gyrus','2..3','2..2','FMA:61894'),(207,'BAG','Pia-Archanoid','3..4','0..2',''),(208,'TUBE','Systemic arterial tree','2..6','0..1',''),(209,'TUBE','Renal arterial tree','2..6','1..2',''),(210,'TUBE','Renal cortical blood vessel tree','3..6','2..3',''),(211,'TUBE','Renal venous tree','2..6','1..2',''),(212,'TUBE','Systemic venous tree','2..6','0..1',''),(213,'BAG','Urinary tree','2..6','1..1',''),(214,'BAG','Lower central nervous system tree','2..2','0..1',''),(215,'BAG','Upper central nervous system tree','1..2','1..1',''),(216,'BAG','Cerebello-meningeal tree','0..2','0..1','');
/*!40000 ALTER TABLE `lyphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provenance`
--

DROP TABLE IF EXISTS `provenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provenance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `publicationIDs` varchar(255) DEFAULT NULL,
  `lyphIDs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provenance`
--

LOCK TABLES `provenance` WRITE;
/*!40000 ALTER TABLE `provenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `provenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` text,
  `title` text,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication`
--

LOCK TABLES `publication` WRITE;
/*!40000 ALTER TABLE `publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `relation` varchar(50) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  `object` int(11) DEFAULT NULL,
  `extra` int(11) DEFAULT NULL,
  `publicationIDs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (2,'is_layer_of_in_position',2,1,1,''),(3,'is_layer_of_in_position',3,1,2,''),(4,'is_layer_of_in_position',4,1,3,''),(5,'is_layer_of_in_position',6,5,2,''),(6,'is_layer_of_in_position',7,5,1,''),(7,'is_layer_of_in_position',10,8,1,''),(8,'is_layer_of_in_position',11,8,2,''),(9,'is_layer_of_in_position',14,12,1,''),(10,'is_layer_of_in_position',16,12,2,''),(11,'is_layer_of_in_position',19,17,1,''),(12,'is_layer_of_in_position',21,17,2,''),(13,'is_layer_of_in_position',31,30,1,''),(14,'is_layer_of_in_position',32,30,2,''),(15,'is_layer_of_in_position',40,39,1,''),(16,'is_layer_of_in_position',41,39,2,''),(17,'is_layer_of_in_position',43,42,1,''),(18,'is_layer_of_in_position',44,42,2,''),(19,'is_layer_of_in_position',46,45,1,''),(20,'is_layer_of_in_position',47,45,2,''),(21,'is_layer_of_in_position',49,48,1,''),(22,'is_layer_of_in_position',50,48,2,''),(23,'is_layer_of_in_position',52,51,1,''),(24,'is_layer_of_in_position',53,51,2,''),(25,'is_layer_of_in_position',55,54,1,''),(26,'is_layer_of_in_position',56,54,2,''),(27,'is_layer_of_in_position',58,57,1,''),(28,'is_layer_of_in_position',59,57,2,''),(29,'is_layer_of_in_position',61,60,1,''),(30,'is_layer_of_in_position',62,60,2,''),(31,'is_layer_of_in_position',64,63,1,''),(32,'is_layer_of_in_position',65,63,2,''),(33,'is_layer_of_in_position',67,66,1,''),(34,'is_layer_of_in_position',68,66,2,''),(35,'is_layer_of_in_position',70,69,1,''),(36,'is_layer_of_in_position',71,69,2,''),(37,'is_layer_of_in_position',73,72,1,''),(38,'is_layer_of_in_position',74,72,2,''),(39,'is_layer_of_in_position',76,75,1,''),(40,'is_layer_of_in_position',77,75,2,''),(41,'is_layer_of_in_position',79,78,1,''),(42,'is_layer_of_in_position',80,78,2,''),(43,'is_layer_of_in_position',106,105,1,''),(44,'is_layer_of_in_position',107,105,2,''),(45,'is_layer_of_in_position',82,81,1,''),(46,'is_layer_of_in_position',83,81,2,''),(47,'is_layer_of_in_position',85,84,1,''),(48,'is_layer_of_in_position',86,84,2,''),(49,'is_layer_of_in_position',88,87,1,''),(50,'is_layer_of_in_position',89,87,2,''),(51,'is_layer_of_in_position',91,90,1,''),(52,'is_layer_of_in_position',92,90,2,''),(53,'is_layer_of_in_position',94,93,1,''),(54,'is_layer_of_in_position',95,93,2,''),(55,'is_layer_of_in_position',97,96,1,''),(56,'is_layer_of_in_position',98,96,2,''),(57,'is_layer_of_in_position',100,99,1,''),(58,'is_layer_of_in_position',101,99,2,''),(59,'is_layer_of_in_position',103,102,1,''),(60,'is_layer_of_in_position',104,102,2,''),(61,'is_layer_of_in_position',109,108,1,''),(62,'is_layer_of_in_position',110,108,2,''),(63,'is_layer_of_in_position',112,111,1,''),(64,'is_layer_of_in_position',113,111,2,''),(65,'is_layer_of_in_position',28,27,1,''),(66,'is_layer_of_in_position',29,27,2,''),(67,'is_layer_of_in_position',25,24,1,''),(68,'is_layer_of_in_position',26,24,2,''),(69,'is_layer_of_in_position',34,33,1,''),(70,'is_layer_of_in_position',35,33,2,''),(71,'is_layer_of_in_position',37,36,1,''),(72,'is_layer_of_in_position',38,36,2,''),(73,'is_layer_of_in_position',115,114,1,''),(74,'is_layer_of_in_position',116,114,2,''),(75,'is_layer_of_in_position',118,117,1,''),(76,'is_layer_of_in_position',119,117,2,''),(77,'is_layer_of_in_position',176,174,1,''),(78,'is_layer_of_in_position',175,174,2,''),(79,'is_layer_of_in_position',178,177,2,''),(80,'is_layer_of_in_position',179,177,1,''),(81,'is_housed_in',5,3,NULL,''),(82,'is_housed_in',51,2,NULL,''),(83,'is_housed_in',75,2,NULL,''),(84,'is_housed_in',54,6,NULL,''),(85,'is_housed_in',57,6,NULL,''),(86,'is_housed_in',60,6,NULL,''),(87,'is_housed_in',63,6,NULL,''),(88,'is_housed_in',66,6,NULL,''),(89,'is_housed_in',69,6,NULL,''),(90,'is_housed_in',72,6,NULL,''),(91,'is_housed_in',78,6,NULL,''),(92,'is_housed_in',105,6,NULL,''),(93,'is_housed_in',30,6,NULL,''),(94,'is_housed_in',45,6,NULL,''),(95,'is_housed_in',48,6,NULL,''),(96,'is_housed_in',39,7,NULL,''),(97,'is_housed_in',42,7,NULL,''),(98,'is_housed_in',87,7,NULL,''),(99,'is_housed_in',90,7,NULL,''),(100,'is_housed_in',96,6,NULL,''),(101,'is_housed_in',93,6,NULL,''),(102,'is_housed_in',111,2,NULL,''),(103,'is_housed_in',81,2,NULL,''),(104,'is_housed_in',84,2,NULL,''),(105,'is_housed_in',27,6,NULL,''),(106,'is_housed_in',24,6,NULL,''),(107,'is_housed_in',33,6,NULL,''),(108,'is_housed_in',36,7,NULL,''),(109,'is_housed_in',114,2,NULL,''),(110,'is_housed_in',117,2,NULL,''),(121,'is_layer_of_in_position',123,122,1,''),(122,'is_layer_of_in_position',124,122,2,''),(123,'is_layer_of_in_position',125,122,3,''),(124,'is_layer_of_in_position',128,127,1,''),(125,'is_layer_of_in_position',129,127,2,''),(126,'is_layer_of_in_position',130,127,3,''),(127,'is_layer_of_in_position',133,132,1,''),(128,'is_layer_of_in_position',134,132,2,''),(129,'is_layer_of_in_position',135,132,3,''),(130,'is_layer_of_in_position',138,137,1,''),(131,'is_layer_of_in_position',139,137,2,''),(132,'is_layer_of_in_position',140,137,3,''),(133,'is_layer_of_in_position',143,142,1,''),(134,'is_layer_of_in_position',144,142,2,''),(135,'is_layer_of_in_position',145,142,3,''),(136,'is_layer_of_in_position',148,147,1,''),(137,'is_layer_of_in_position',149,147,2,''),(138,'is_layer_of_in_position',150,147,3,''),(139,'is_layer_of_in_position',153,152,1,''),(140,'is_layer_of_in_position',154,152,2,''),(141,'is_layer_of_in_position',155,152,3,''),(142,'is_layer_of_in_position',158,157,1,''),(143,'is_layer_of_in_position',159,157,2,''),(144,'is_layer_of_in_position',160,157,3,''),(145,'is_layer_of_in_position',163,162,1,''),(146,'is_layer_of_in_position',207,162,2,''),(152,'is_layer_of_in_position',165,164,1,''),(153,'is_layer_of_in_position',166,164,2,''),(154,'is_layer_of_in_position',167,164,3,''),(155,'is_layer_of_in_position',168,164,4,''),(156,'is_layer_of_in_position',169,164,5,''),(157,'is_layer_of_in_position',171,170,1,''),(158,'is_layer_of_in_position',172,170,2,''),(159,'is_layer_of_in_position',173,170,3,''),(160,'is_layer_of_in_position',182,180,1,''),(161,'is_layer_of_in_position',181,180,2,''),(162,'is_layer_of_in_position',185,183,1,''),(163,'is_layer_of_in_position',184,183,2,''),(164,'is_layer_of_in_position',187,186,1,''),(165,'is_layer_of_in_position',188,186,2,''),(166,'is_layer_of_in_position',189,186,3,''),(167,'is_layer_of_in_position',191,190,1,''),(168,'is_layer_of_in_position',192,190,2,''),(169,'is_layer_of_in_position',193,190,3,''),(170,'is_housed_in',197,160,NULL,''),(171,'is_housed_in',198,155,NULL,''),(172,'is_housed_in',199,155,NULL,''),(173,'is_housed_in',200,155,NULL,''),(174,'is_housed_in',201,150,NULL,''),(175,'is_housed_in',202,150,NULL,''),(176,'is_housed_in',203,140,NULL,''),(177,'is_housed_in',204,135,NULL,''),(178,'is_housed_in',205,135,NULL,''),(179,'is_housed_in',206,125,NULL,''),(180,'sub_type_of',13,9,NULL,''),(181,'sub_type_of',12,8,NULL,''),(182,'sub_type_of',14,10,NULL,''),(183,'sub_type_of',16,11,NULL,''),(184,'sub_type_of',18,9,NULL,''),(185,'sub_type_of',17,8,NULL,''),(186,'sub_type_of',19,10,NULL,''),(187,'sub_type_of',21,11,NULL,''),(188,'sub_type_of',22,13,NULL,''),(189,'sub_type_of',23,13,NULL,''),(190,'sub_type_of',30,12,NULL,''),(191,'sub_type_of',31,14,NULL,''),(192,'sub_type_of',32,16,NULL,''),(193,'sub_type_of',39,12,NULL,''),(194,'sub_type_of',40,14,NULL,''),(195,'sub_type_of',41,16,NULL,''),(196,'sub_type_of',42,12,NULL,''),(197,'sub_type_of',43,14,NULL,''),(198,'sub_type_of',44,16,NULL,''),(199,'sub_type_of',45,12,NULL,''),(200,'sub_type_of',46,14,NULL,''),(201,'sub_type_of',47,16,NULL,''),(202,'sub_type_of',48,12,NULL,''),(203,'sub_type_of',49,14,NULL,''),(204,'sub_type_of',50,16,NULL,''),(205,'sub_type_of',51,17,NULL,''),(206,'sub_type_of',52,19,NULL,''),(207,'sub_type_of',53,21,NULL,''),(208,'sub_type_of',54,17,NULL,''),(209,'sub_type_of',55,19,NULL,''),(210,'sub_type_of',56,21,NULL,''),(211,'sub_type_of',57,17,NULL,''),(212,'sub_type_of',58,19,NULL,''),(213,'sub_type_of',59,21,NULL,''),(214,'sub_type_of',60,17,NULL,''),(215,'sub_type_of',61,19,NULL,''),(216,'sub_type_of',62,21,NULL,''),(217,'sub_type_of',63,17,NULL,''),(218,'sub_type_of',64,19,NULL,''),(219,'sub_type_of',65,21,NULL,''),(220,'sub_type_of',66,17,NULL,''),(221,'sub_type_of',67,19,NULL,''),(222,'sub_type_of',68,21,NULL,''),(223,'sub_type_of',69,17,NULL,''),(224,'sub_type_of',70,19,NULL,''),(225,'sub_type_of',71,21,NULL,''),(226,'sub_type_of',72,17,NULL,''),(227,'sub_type_of',73,19,NULL,''),(228,'sub_type_of',74,21,NULL,''),(229,'sub_type_of',75,17,NULL,''),(230,'sub_type_of',76,19,NULL,''),(231,'sub_type_of',77,21,NULL,''),(232,'sub_type_of',78,17,NULL,''),(233,'sub_type_of',79,19,NULL,''),(234,'sub_type_of',80,21,NULL,''),(235,'sub_type_of',105,17,NULL,''),(236,'sub_type_of',106,19,NULL,''),(237,'sub_type_of',107,21,NULL,''),(238,'sub_type_of',81,12,NULL,''),(239,'sub_type_of',82,14,NULL,''),(240,'sub_type_of',83,16,NULL,''),(241,'sub_type_of',84,12,NULL,''),(242,'sub_type_of',85,14,NULL,''),(243,'sub_type_of',86,16,NULL,''),(244,'sub_type_of',87,12,NULL,''),(245,'sub_type_of',88,14,NULL,''),(246,'sub_type_of',89,16,NULL,''),(247,'sub_type_of',90,12,NULL,''),(248,'sub_type_of',91,14,NULL,''),(249,'sub_type_of',92,16,NULL,''),(250,'sub_type_of',93,12,NULL,''),(251,'sub_type_of',94,14,NULL,''),(252,'sub_type_of',95,16,NULL,''),(253,'sub_type_of',96,12,NULL,''),(254,'sub_type_of',97,14,NULL,''),(255,'sub_type_of',98,16,NULL,''),(256,'sub_type_of',99,17,NULL,''),(257,'sub_type_of',100,19,NULL,''),(258,'sub_type_of',101,21,NULL,''),(259,'sub_type_of',102,17,NULL,''),(260,'sub_type_of',103,19,NULL,''),(261,'sub_type_of',104,21,NULL,''),(262,'sub_type_of',108,12,NULL,''),(263,'sub_type_of',109,14,NULL,''),(264,'sub_type_of',110,16,NULL,''),(265,'sub_type_of',111,12,NULL,''),(266,'sub_type_of',112,14,NULL,''),(267,'sub_type_of',113,16,NULL,''),(268,'sub_type_of',27,12,NULL,''),(269,'sub_type_of',28,14,NULL,''),(270,'sub_type_of',29,16,NULL,''),(271,'sub_type_of',24,12,NULL,''),(272,'sub_type_of',25,14,NULL,''),(273,'sub_type_of',26,16,NULL,''),(274,'sub_type_of',33,12,NULL,''),(275,'sub_type_of',34,14,NULL,''),(276,'sub_type_of',35,16,NULL,''),(277,'sub_type_of',36,12,NULL,''),(278,'sub_type_of',37,14,NULL,''),(279,'sub_type_of',38,16,NULL,''),(280,'sub_type_of',114,17,NULL,''),(281,'sub_type_of',115,19,NULL,''),(282,'sub_type_of',116,21,NULL,''),(283,'sub_type_of',117,17,NULL,''),(284,'sub_type_of',118,19,NULL,''),(285,'sub_type_of',119,21,NULL,''),(286,'has_material_type',10,9,NULL,''),(287,'has_material_type',14,13,NULL,''),(288,'has_material_type',16,15,NULL,''),(289,'has_material_type',19,18,NULL,''),(290,'has_material_type',21,20,NULL,'');
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_neuro_edges`
--

DROP TABLE IF EXISTS `temp_neuro_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_neuro_edges` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `lyph_node1` int(11) DEFAULT NULL,
  `lyph_node2` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_neuro_edges`
--

LOCK TABLES `temp_neuro_edges` WRITE;
/*!40000 ALTER TABLE `temp_neuro_edges` DISABLE KEYS */;
INSERT INTO `temp_neuro_edges` VALUES (1,197,199,'Spinocerebellar tract'),(2,206,200,'Pyramidal tract'),(3,204,198,'Anterior spinothalamic tract'),(4,205,202,'Parasympathetic tract'),(5,169,203,'Optic tract'),(6,200,203,'Tectospinal tract'),(7,202,181,'Vagus nerve'),(9,201,196,'Gracile inflow'),(10,200,196,'Motor outflow'),(11,199,195,'Proprioreceptive inflow'),(12,199,194,'Proprioreceptive inflow'),(13,170,198,'Tactile inflow');
/*!40000 ALTER TABLE `temp_neuro_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trees` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `in_lyph` int(11) DEFAULT NULL,
  `lyph` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `branch_factor` varchar(10) DEFAULT NULL,
  `thickness` varchar(10) DEFAULT NULL,
  `lgth` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trees`
--

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
INSERT INTO `trees` VALUES (1,208,174,1,'1..1','2..2','0..1'),(2,209,99,1,'4..8','2..3','2..2'),(3,209,114,2,'3..5','3..3','2..2'),(4,209,51,3,'3..7','6..6','5..5'),(5,209,54,4,'3..6','6..6','5..5'),(6,209,57,5,'2..5','6..6','5..5'),(7,209,60,6,'6..12','6..6','5..5'),(8,208,209,2,'1..2','2..6','1..2'),(9,212,177,1,'1..1','2..2','0..1'),(10,212,211,2,'1..2','2..6','1..2'),(11,211,102,1,'4..7','2..3','2..2'),(12,211,117,2,'3..6','3..3','2..2'),(13,211,75,3,'4..8','6..6','5..5'),(14,211,72,4,'3..7','6..6','5..5'),(15,211,69,5,'2..7','6..6','5..5'),(16,211,66,6,'4..7','6..6','5..5'),(18,210,78,1,'1..1','6..6','5..5'),(19,210,63,2,'1..1','6..6','5..5'),(20,210,105,3,'1..1','6..6','4..5'),(22,213,108,1,'1..1','4..5','1..2'),(23,213,111,2,'1..1','4..5','2..2'),(24,213,81,3,'3..8','4..5','2..2'),(25,213,84,4,'2..6','4..5','2..2'),(26,213,87,5,'10..24','5..6','3..5'),(27,213,90,6,'10..12','5..6','3..5'),(28,213,93,7,'5..12','5..6','3..5'),(29,213,96,8,'6..10','5..6','3..5'),(30,213,48,9,'1..1','6..6','4..5'),(31,213,45,10,'1..1','6..6','4..5'),(32,213,42,11,'1..1','6..6','4..5'),(33,213,39,12,'1..1','6..6','4..5'),(34,213,36,13,'1..1','6..6','4..5'),(35,213,33,14,'1..1','6..6','4..5'),(36,213,30,15,'1..1','6..6','4..5'),(37,213,27,16,'1..1','6..6','5..5'),(38,213,24,17,'1..1','6..6','5..5'),(39,214,152,1,'1..1','2..2','1..2'),(40,214,147,2,'1..1','2..2','2..2'),(41,214,142,3,'1..1','2..2','2..2'),(42,215,137,1,'1..1','2..2','2..2'),(43,215,132,2,'2..2','2..2','2..2'),(44,215,127,3,'1..1','2..2','1..2'),(45,215,122,4,'','1..2','1..1'),(46,216,157,1,'1..1','2..2','2..2'),(47,216,162,2,'','2..3','0..2');
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 10:45:37
