-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for osx10.18 (arm64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES
(4,'Lynnelle','Lumm','llumm3@csmonitor.com'),
(6,'Tess','Ballefant','tballefant5@joomla.org'),
(7,'Trixi','Dullard','tdullard6@tamu.edu'),
(8,'Christa','Wimms','cwimms7@ftc.gov'),
(9,'Nerte','McBrier','nmcbrier8@printfriendly.com'),
(10,'Barnaby','Brideau','bbrideau9@prlog.org'),
(11,'Arlen','Stickins','astickinsa@nationalgeographic.com'),
(12,'Ferrell','Waples','fwaplesb@alexa.com'),
(13,'Carr','Micallef','cmicallefc@surveymonkey.com'),
(14,'Lenard','Boulden','lbouldend@tinyurl.com'),
(15,'Norris','Castor','ncasse@wisc.edu'),
(16,'Englebert','Teape','eteapef@mysql.com'),
(17,'Hammad','Vaneev','hvaneevg@dell.com'),
(18,'Finlay','Mantione','fmantioneh@youtu.be'),
(20,'Kinna','Phuprate','kphupratej@china.com.cn'),
(21,'Kerwinn','Gheraldi','kgheraldik@a8.net'),
(22,'Ermanno','Lendon','elendonl@prnewswire.com'),
(23,'Alethea','Ducker','aduckerm@usda.gov'),
(24,'Linn','Luxon','lluxonn@webnode.com'),
(25,'Rhodie','Rolstone','rrolstoneo@fastcompany.com'),
(26,'Keith','Winpenny','kwinpennyp@java.com'),
(27,'Mathilda','Gameson','mgamesonq@twitpic.com'),
(28,'Ambrosio','Crown','acrownr@scribd.com'),
(29,'Kaylyn','D\'eathe','kdeathes@cpanel.net'),
(30,'Bobbe','Duligall','bduligallt@yelp.com'),
(31,'Otha','Ure','oureu@hc360.com'),
(32,'Lula','Jiran','ljiranv@vistaprint.com'),
(33,'Steward','Hessing','shessingw@whitehouse.gov'),
(34,'Welby','Refford','wreffordx@zdnet.com'),
(36,'Vachel','Vardon','vvardonz@google.co.uk'),
(37,'Tessa','Dewsbury','tdewsbury10@dailymotion.com'),
(38,'Terrye','Rendall','trendall11@shop-pro.jp'),
(39,'Ettie','Cosgrove','ecosgrove12@livejournal.com'),
(40,'Pris','Martinek','pmartinek13@nasa.gov'),
(41,'Jen','Spyvye','jspyvye14@tamu.edu'),
(42,'Sarita','Mullally','smullally15@google.com.hk'),
(43,'Normand','Passey','npassey16@a8.net'),
(44,'Ikey','Morrall','imorrall17@accuweather.com'),
(45,'Rice','Bunny','rbunny18@pcworld.com'),
(46,'Sherlocke','Durtnall','sdurtnall19@yahoo.co.jp'),
(47,'Nora','Vass','nvass1a@hc360.com'),
(48,'Dave','Iacovelli','diacovelli1b@mit.edu'),
(49,'Shirlene','Gilsthorpe','sgilsthorpe1c@bloomberg.com'),
(50,'Jacquelynn','Rimington','jrimington1d@imageshack.us'),
(51,'Gilligan','Batiste','gbatiste1e@skype.com'),
(52,'Arielle','Jessope','ajessope1f@webmd.com'),
(53,'Tarrah','Stuckow','tstuckow1g@bloomberg.com'),
(54,'Audry','Nester','anester1h@businessweek.com'),
(55,'Sydney','Merrill','smerrill1i@hao123.com'),
(56,'Julietta','Birkbeck','jbirkbeck1j@weebly.com'),
(57,'Talbot','Griss','tgriss1k@weather.com'),
(58,'Durward','Stubbley','dstubbley1l@netscape.com'),
(59,'Elnora','Fourcade','efourcade1m@xinhuanet.com'),
(60,'Aldric','Stote','astote1n@example.com'),
(61,'Joycelin','Juszkiewicz','jjuszkiewicz1o@mashable.com'),
(62,'Alard','Leport','aleport1p@arstechnica.com'),
(63,'Ulrica','Tomaselli','utomaselli1q@nature.com'),
(64,'Virginie','Yorkston','vyorkston1r@cbsnews.com'),
(65,'Gunther','Worgan','gworgan1s@who.int'),
(66,'Cassaundra','Wildbore','cwildbore1t@oaic.gov.au'),
(67,'North','Havick','nhavick1u@nasa.gov'),
(68,'Kaylyn','Fiddymont','kfiddymont1v@topsy.com'),
(69,'Winny','Bathow','wbathow1w@europa.eu'),
(70,'Reta','Kuschke','rkuschke1x@yahoo.com'),
(71,'Ansel','Chaffen','achaffen1y@baidu.com'),
(72,'Torey','Le Marquis','tlemarquis1z@marriott.com'),
(73,'Roberto','Wiltsher','rwiltsher20@tmall.com'),
(74,'Evangeline','Solomonides','esolomonides21@netlog.com'),
(75,'Fern','Baptista','fbaptista22@w3.org'),
(76,'Elane','Vamplers','evamplers23@redcross.org'),
(77,'Felicia','Gawler','fgawler24@nymag.com'),
(78,'Norton','Stopper','nstopper25@kickstarter.com'),
(79,'Camellia','Hardie','chardie26@wiley.com'),
(80,'Brittni','Stack','bstack27@bbc.co.uk'),
(81,'Eloisa','Everett','eeverett28@fotki.com'),
(82,'Melodee','Connikie','mconnikie29@marketwatch.com'),
(83,'Rochell','Jacson','rjacson2a@bandcamp.com'),
(84,'Ivor','Duquesnay','iduquesnay2b@sina.com.cn'),
(85,'Kiley','Helkin','khelkin2c@icio.us'),
(86,'Syman','Sandys','ssandys2d@weather.com'),
(87,'Thaine','Dobbs','tdobbs2e@360.cn'),
(88,'Corenda','McInnery','cmcinnery2f@ycombinator.com'),
(89,'Karel','Cotton','kcotton2g@flavors.me'),
(90,'Frankie','Bayly','fbayly2h@hp.com'),
(91,'Camilla','Harbar','charbar2i@photobucket.com'),
(94,'Edythe','Keane','ekeane2l@phoca.cz'),
(95,'Georg','Boumphrey','gboumphrey2m@tiny.cc'),
(96,'Deanne','Milhench','dmilhench2n@arizona.edu'),
(97,'Carling','Jannasch','cjannasch2o@canalblog.com'),
(98,'Sherwood','Aleksic','saleksic2p@independent.co.uk'),
(99,'Hillie','Yaxley','hyaxley2q@shutterfly.com'),
(100,'Maximilianus','Jeaycock','mjeaycock2r@cnbc.com'),
(101,'toto','toto','toto@hello.com');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'school'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 14:14:25
