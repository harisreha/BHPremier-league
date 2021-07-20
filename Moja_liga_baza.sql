-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: premier_liga_bih
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `igraci`
--

DROP TABLE IF EXISTS `igraci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `igraci` (
  `igraci_id` int NOT NULL AUTO_INCREMENT,
  `igraci_name` varchar(100) DEFAULT NULL,
  `igraci_prezime` varchar(100) DEFAULT NULL,
  `igraci_kartoni` int NOT NULL,
  `igraci_ekipa_id` int DEFAULT NULL,
  `igraci_pozicija` varchar(45) DEFAULT NULL,
  `igraci_golovi` int NOT NULL,
  `igraci_crveni` int NOT NULL,
  PRIMARY KEY (`igraci_id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `igraci`
--

LOCK TABLES `igraci` WRITE;
/*!40000 ALTER TABLE `igraci` DISABLE KEYS */;
INSERT INTO `igraci` VALUES (1,'Vladan','Kovačević',0,1,'Golman',0,0),(2,'Elvis','Džafić',0,1,'Golman',0,0),(3,'Đokanovic','Andrej',0,1,'Odbrana',0,0),(4,'Amer','Dupovac',0,1,'Odbrana',0,0),(5,'Dušan','Hodžić',0,1,'Odbrana',0,0),(6,'Selmir','Pidro',0,1,'Odbrana',0,0),(7,'Anel','Hebibović',0,1,'Odbrana',0,0),(8,'Joachim','Adukor',0,1,'Odbrana',0,0),(9,'Matthias','Fanimo',0,1,'Vezni',0,0),(10,'Ivan','Jukić',0,1,'Vezni',0,0),(11,'Hrvoje','Miličević',0,1,'Vezni',0,0),(12,'Zinedin','Mustedanagić',0,1,'Vezni',0,0),(13,'Tino-Sven','Sušić',0,1,'Vezni',0,0),(14,'Mirko','Oremuš',0,1,'Vezni',0,0),(15,'Aleksandar','Pejović',0,1,'Vezni',0,0),(16,'Đani','Salčin',0,1,'Vezni',0,0),(17,'Haris','Handžić',0,1,'Napad',0,0),(18,'Mersudin','Ahmetović',0,1,'Napad',0,0),(19,'Krste','Velkovski',0,1,'Napad',0,0),(20,'Jasmin','Mešanović',0,1,'Napad',0,0),(21,'Irfan','Fejzić',0,2,'Golman',0,0),(22,'Filip','Erić',0,2,'Golman',0,0),(23,'Siniša','Stevanović',0,2,'Odbrana',0,0),(24,'Frane','Ikic',0,2,'Odbrana',0,0),(25,'Aleksandar','Kosorić',0,2,'Odbrana',0,0),(26,'Eldar','Šehić',0,2,'Odbrana',0,0),(27,'Ivan','Miličević',0,2,'Odbrana',0,0),(28,'Luka','Miletić',0,2,'Odbrana',0,0),(29,'Semir','Štilić',0,2,'Vezni',0,0),(30,'Mehmed','Alispahić',0,2,'Vezni',0,0),(31,'Samir','Bekrić',0,2,'Vezni',0,0),(32,'Petar','Bojo',0,2,'Vezni',0,0),(33,'Mladen','Veselinović',0,2,'Vezni',0,0),(34,'Mustafa','Mujezinović',0,2,'Vezni',0,0),(35,'Ante','Blažević',0,2,'Vezni',0,0),(36,'Sedad','Subašić',0,2,'Vezni',0,0),(37,'Ivan','Lendrić',0,2,'Napad',0,0),(38,'Ermin','Zec',0,2,'Napad',0,0),(39,'Luka','Jurčić',0,2,'Napad',0,0),(40,'Sinan','Ramović',0,2,'Napad',0,0),(41,'Martin','Zlomislić',0,3,'Golman',0,0),(42,'Dario','Miškić',0,3,'Golman',0,0),(43,'Filip','Brekalo',0,3,'Odbrana',0,0),(44,'Tomislav','Čuljak',0,3,'Odbrana',0,0),(45,'Gabrijel','Drmać',0,3,'Odbrana',0,0),(46,'Marko','Jurić',0,3,'Odbrana',0,0),(47,'Božo','Musa',0,3,'Odbrana',0,0),(48,'Mato','Stanić',0,3,'Odbrana',0,0),(49,'Bože','Vukoja',0,3,'Vezni',0,0),(50,'Mijo','Sabić',0,3,'Vezni',0,0),(51,'Ivan','Mustapić',0,3,'Vezni',0,0),(52,'Kristijan','Medić',0,3,'Vezni',0,0),(53,'Karlo','Marić',0,3,'Vezni',0,0),(54,'Josip','Majić',0,3,'Vezni',0,0),(55,'Alen','Jurilj',0,3,'Vezni',0,0),(56,'Ivan','Grgić',0,3,'Vezni',0,0),(57,'Stipe','Tokić',0,3,'Napad',0,0),(58,'Stipe','Jurić',0,3,'Napad',0,0),(59,'Toni','Jović',0,3,'Napad',0,0),(60,'Ivan','Ikić',0,3,'Napad',0,0),(61,'Antonio','Soldo',0,4,'Golman',0,0),(62,'Mirko','Varvodić',0,4,'Golman',0,0),(63,'Luis','Ibanez',0,4,'Odbrana',0,0),(64,'Almir','Bekić',0,4,'Odbrana',0,0),(65,'Slobodan','Jakosavljević',0,4,'Odbrana',0,0),(66,'Marin','Magdić',0,4,'Odbrana',0,0),(67,'Pero','Stojkić',0,4,'Odbrana',0,0),(68,'Blaz','Bošković',0,4,'Odbrana',0,0),(69,'Milos','Filipović',0,4,'Vezni',0,0),(70,'Filip','Arežina',0,4,'Vezni',0,0),(71,'Ivan','Enin',0,4,'Vezni',0,0),(72,'Miljan','Govedarica',0,4,'Vezni',0,0),(73,'Dinko','Trebotić',0,4,'Vezni',0,0),(74,'Ognjen','Todorović',0,4,'Vezni',0,0),(75,'Dragan','Juranović',0,4,'Vezni',0,0),(76,'Mario','Ticinović',0,4,'Vezni',0,0),(77,'Nemanja','Bilbija',0,4,'Napad',0,0),(78,'Suad','Sahiti',0,4,'Napad',0,0),(79,'Anes','Masić',0,4,'Napad',0,0),(80,'Petar','Kunić',0,4,'Napad',0,0),(81,'Bojan','Pavlović',0,5,'Golman',0,0),(82,'Luka','Lukić',0,5,'Golman',0,0),(83,'Dino','Čorić',0,5,'Odbrana',0,0),(84,'Milos','Borovčanin',0,5,'Odbrana',0,0),(85,'Djordje','Milojević',0,5,'Odbrana',0,0),(86,'Marko','Kujundić',0,5,'Odbrana',0,0),(87,'Aleksandar','Vojinović',0,5,'Odbrana',0,0),(88,'Dejan','Uzelac',0,5,'Odbrana',0,0),(89,'Dejan','Bosančić',0,5,'Vezni',0,0),(90,'Marko','Brtan',0,5,'Vezni',0,0),(91,'Aleksandar','Subić',0,5,'Vezni',0,0),(92,'David','Čavić',0,5,'Vezni',0,0),(93,'Siniša','Dujaković',0,5,'Vezni',0,0),(94,'Donald','Molls',0,5,'Vezni',0,0),(95,'Stojan','Vranješ',0,5,'Vezni',0,0),(96,'Dejan','Meleg',0,5,'Vezni',0,0),(97,'Almedin','Ziljkić',0,5,'Napad',0,0),(98,'Goran','Zakarić',0,5,'Napad',0,0),(99,'Jovo','Lukić',0,5,'Napad',0,0),(100,'Boban','Georgiev',0,5,'Napad',0,0),(101,'Adnan','Bobić',0,6,'Golman',0,0),(102,'Vedran','Kjosevski',0,6,'Golman',0,0),(103,'Mehmed','Ćosić',0,6,'Odbrana',0,0),(104,'Dario','Gaucho',0,6,'Odbrana',0,0),(105,'Nermin','Alagić',0,6,'Odbrana',0,0),(106,'Slavisa','Radović',0,6,'Odbrana',0,0),(107,'Faruk','Bihorac',0,6,'Odbrana',0,0),(108,'Konstantin','Cheshmedjiev',0,6,'Odbrana',0,0),(109,'Nemanja','Anđušić',0,6,'Vezni',0,0),(110,'Samir','Radovac',0,6,'Vezni',0,0),(111,'Dino','Hasanović',0,6,'Vezni',0,0),(112,'Omar','Pršeš',0,6,'Vezni',0,0),(113,'Melvin','Osmić',0,6,'Vezni',0,0),(114,'Denis','Zvonić',0,6,'Vezni',0,0),(115,'Edo','Vehabović',0,6,'Vezni',0,0),(116,'Seid','Behram',0,6,'Vezni',0,0),(117,'Brandao','B',0,6,'Napad',0,0),(118,'Obren','Cvijanović',0,6,'Napad',0,0),(119,'Faris','Zubanović',0,6,'Napad',0,0),(120,'Dejan','Georgijević',0,6,'Napad',0,0),(121,'Luka','Kukić',0,7,'Golman',0,0),(122,'Adnan','Golubović',0,7,'Golman',0,0),(123,'Nedim','Avdić',0,7,'Odbrana',0,0),(124,'Amar','Beganović',0,7,'Odbrana',0,0),(125,'Adnan','Islamović',0,7,'Odbrana',0,0),(126,'Emir','Jusić',0,7,'Odbrana',0,0),(127,'Adnan','Mujkić',0,7,'Odbrana',0,0),(128,'Adnan','Salihović',0,7,'Odbrana',0,0),(129,'Said','Huseinović',0,7,'Vezni',0,0),(130,'Ermin','Kadrić',0,7,'Vezni',0,0),(131,'Alen','Kurtalić',0,7,'Vezni',0,0),(132,'Saša','Maksimović',0,7,'Vezni',0,0),(133,'Robert','Mišković',0,7,'Vezni',0,0),(134,'Samir','Pezer',0,7,'Vezni',0,0),(135,'Fedor','Predragović',0,7,'Vezni',0,0),(136,'Mirza','Halvadžić',0,7,'Vezni',0,0),(137,'Dženis','Beganović',0,7,'Napad',0,0),(138,'Adi','Alić',0,7,'Napad',0,0),(139,'Abid','Mujagić',0,7,'Napad',0,0),(140,'Nemanja','Tomašević',0,7,'Napad',0,0),(141,'Azir','Muminović',0,8,'Golman',0,0),(142,'Nevres','Fejzić',0,8,'Golman',0,0),(143,'Elvir','Duraković',0,8,'Odbrana',0,0),(144,'Ivan','Kostić',0,8,'Odbrana',0,0),(145,'Luka','Lučić',0,8,'Odbrana',0,0),(146,'Morris','Darick-Kobie',0,8,'Odbrana',0,0),(147,'Dario','Rugašević',0,8,'Odbrana',0,0),(148,'Hrvoje','Barišić',0,8,'Odbrana',0,0),(149,'Goran','Brkić',0,8,'Vezni',0,0),(150,'Mirsad','Cabrić',0,8,'Vezni',0,0),(151,'Nermin','Crnkić',0,8,'Vezni',0,0),(152,'Agustin','Doffo',0,8,'Vezni',0,0),(153,'Haris','Džaferović',0,8,'Vezni',0,0),(154,'Ajdin','Nukić',0,8,'Vezni',0,0),(155,'Adnan','Džafić',0,8,'Vezni',0,0),(156,'Edin','Rustemović',0,8,'Vezni',0,0),(157,'Vojo','Ubiparip',0,8,'Napad',0,0),(158,'Badji','Badara',0,8,'Napad',0,0),(159,'Mirsad','Ramić',0,8,'Napad',0,0),(160,'Petar','Mišić',0,8,'Napad',0,0),(161,'Semir','Bukvić',0,9,'Golman',0,0),(162,'Emil','Velić',0,9,'Golman',0,0),(163,'Enes','Alić',0,9,'Odbrana',0,0),(164,'Kenan','Hadžić',0,9,'Odbrana',0,0),(165,'Hasan','Jahić',0,9,'Odbrana',0,0),(166,'Marko','Klisura',0,9,'Odbrana',0,0),(167,'Rijad','Sadiku',0,9,'Odbrana',0,0),(168,'Halid','Šabanović',0,9,'Odbrana',0,0),(169,'Amar','Begić',0,9,'Vezni',0,0),(170,'Anel','Dedić',0,9,'Vezni',0,0),(171,'Amer','Hiroš',0,9,'Vezni',0,0),(172,'Anes','Hrustanović',0,9,'Vezni',0,0),(173,'Aldin','Šišić',0,9,'Vezni',0,0),(174,'Anez','Vazda',0,9,'Vezni',0,0),(175,'Demirel','Veladžić',0,9,'Vezni',0,0),(176,'Aleksandar','Mirkov',0,9,'Vezni',0,0),(177,'Safet','Čago',0,9,'Napad',0,0),(178,'Kenan','Sarić',0,9,'Napad',0,0),(179,'Nedim','Hadžić',0,9,'Napad',0,0),(180,'Armin','Čerimagić',0,9,'Napad',0,0),(181,'Djorde','Vuković',0,10,'Golman',0,0),(182,'David','Stjepanović',0,10,'Golman',0,0),(183,'Vladimir','Arsić',0,10,'Odbrana',0,0),(184,'Muharem','Čivić',0,10,'Odbrana',0,0),(185,'Marin','Galić',0,10,'Odbrana',0,0),(186,'Miloš','Karišik',0,10,'Odbrana',0,0),(187,'Kerim','Palić',0,10,'Odbrana',0,0),(188,'Bojan','Puzigaća',0,10,'Odbrana',0,0),(189,'Ajdin','Redžić',0,10,'Vezni',0,0),(190,'Luka','Babić',0,10,'Vezni',0,0),(191,'Adonis','Bilal',0,10,'Vezni',0,0),(192,'Emanullah','Blažević',0,10,'Vezni',0,0),(193,'Josip','Miketek',0,10,'Vezni',0,0),(194,'Djorde','Nisić',0,10,'Vezni',0,0),(195,'Milivoj','Krmar',0,10,'Vezni',0,0),(196,'Nikola','Dujaković',0,10,'Vezni',0,0),(197,'Miloš','Aćimović',0,10,'Napad',0,0),(198,'Aleksandar','Erak',0,10,'Napad',0,0),(199,'Toni','Jović',0,10,'Napad',0,0),(200,'Aleksandar','Rakić',0,10,'Napad',0,0),(201,'Adnan','Hadžić',0,11,'Golman',0,0),(202,'Edis','Šehović',0,11,'Golman',0,0),(203,'Muamer','Adžem',0,11,'Odbrana',0,0),(204,'Ahmed','Arnautović',0,11,'Odbrana',0,0),(205,'Ivan','Dujmović',0,11,'Odbrana',0,0),(206,'Tarik','Isić',0,11,'Odbrana',0,0),(207,'Dženan','Kisić',0,11,'Odbrana',0,0),(208,'Branko','Ojdanić',0,11,'Odbrana',0,0),(209,'Eldar','Hasanović',0,11,'Vezni',0,0),(210,'Kenan','Horić',0,11,'Vezni',0,0),(211,'Ivan','Čurjurić',0,11,'Vezni',0,0),(212,'Nebojša','Gavrić',0,11,'Vezni',0,0),(213,'Semir','Bajraktarević',0,11,'Vezni',0,0),(214,'Adnan','Osmanović',0,11,'Vezni',0,0),(215,'Mahir','Karić',0,11,'Vezni',0,0),(216,'Marko','Perišić',0,11,'Vezni',0,0),(217,'Nathan','N.',0,11,'Napad',0,0),(218,'Meldin','Jusufi',0,11,'Napad',0,0),(219,'Aladin','Šišić',0,11,'Napad',0,0),(220,'Aid','Tabaković',0,11,'Napad',0,0),(221,'Dalibor','Kozić',0,12,'Golman',0,0),(222,'Luka','Bilobrk',0,12,'Golman',0,0),(223,'Nebojsa','Babić',0,12,'Odbrana',0,0),(224,'Miladin','Filipović',0,12,'Odbrana',0,0),(225,'Daniel','Jović',0,12,'Odbrana',0,0),(226,'Saša','Novaković',0,12,'Odbrana',0,0),(227,'Ivan','Šubert',0,12,'Odbrana',0,0),(228,'Luka','Vinski',0,12,'Odbrana',0,0),(229,'Velibor','Djurić',0,12,'Vezni',0,0),(230,'Faruk','Gogić',0,12,'Vezni',0,0),(231,'Stefan','Janjić',0,12,'Vezni',0,0),(232,'Mahir','Karić',0,12,'Vezni',0,0),(233,'Milivoje','Lazić',0,12,'Vezni',0,0),(234,'Nedim','Mekić',0,12,'Vezni',0,0),(235,'Nikola','Popara',0,12,'Vezni',0,0),(236,'Milan','Vusurović',0,12,'Vezni',0,0),(237,'Ermin','Huseinbašić',0,12,'Napad',0,0),(238,'Matej','Jelić',0,12,'Napad',0,0),(239,'Jovan','Motika',0,12,'Napad',0,0),(240,'Seid','Zukić',0,12,'Napad',0,0);
/*!40000 ALTER TABLE `igraci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klubovi`
--

DROP TABLE IF EXISTS `klubovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klubovi` (
  `klub_id` int NOT NULL AUTO_INCREMENT,
  `klub_jacina` int DEFAULT NULL,
  `klub_ime` varchar(100) DEFAULT NULL,
  `klub_god_osnivanja` int DEFAULT NULL,
  `klub_trener` varchar(100) DEFAULT NULL,
  `klub_kapacitet` int DEFAULT NULL,
  PRIMARY KEY (`klub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klubovi`
--

LOCK TABLES `klubovi` WRITE;
/*!40000 ALTER TABLE `klubovi` DISABLE KEYS */;
INSERT INTO `klubovi` VALUES (1,19,'F.K.Sarajevo',1946,'Vinko Marinović',25000),(2,16,'F.K.Željezničar',1921,'Amar Osim',15000),(3,13,'F.K.Široki Brijeg',1948,'Toni Karačić',4000),(4,14,'H.Š.K.Zrinjski',1905,'Sergej Jakirović',7000),(5,13,'F.K.Borac',1926,'Marko Maksimović',8000),(6,12,'F.K.Velež',1922,'Feđa Dudić',7000),(7,9,'F.K.Sloboda',1919,'Gradimir Crnogorac',4000),(8,12,'F.K.Tuzla City',1955,'Husref Musemić',3500),(9,8,'F.K.Mladost',1959,'Nemanja Miljanović',2500),(10,6,'F.K.Krupa',1983,'Vladimir Ilić',2500),(11,6,'F.K.Olimpik',1993,'Slavko Petrović',5000),(12,8,'F.K.Radnik',1945,'Darko Nestorović',2000);
/*!40000 ALTER TABLE `klubovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadioni`
--

DROP TABLE IF EXISTS `stadioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadioni` (
  `stadion_id` int NOT NULL AUTO_INCREMENT,
  `stadion_ime` varchar(100) DEFAULT NULL,
  `stadion_adresa` varchar(100) DEFAULT NULL,
  `stanje_travnjaka` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stadion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadioni`
--

LOCK TABLES `stadioni` WRITE;
/*!40000 ALTER TABLE `stadioni` DISABLE KEYS */;
INSERT INTO `stadioni` VALUES (1,'Stadion Asim Ferhatović-Hase','Kosevo','Teren dobar za igru'),(2,'Stadion Grbavica','Zvornička 27','Teren u odlicnom stanju,ceka nas dobra utamica'),(3,'Stadion Pecara','Didaka Buntića','Teren dobar za igru'),(4,'Stadion HŠK Zrinjski','Matice Hrvatske','Teren u dobrom stanju'),(5,'Gradski stadion Banja Luka','Vladike Platona','Teren u dobrom stanju'),(6,'Stadion Rođeni','Vrapčići','Teren dobar za igru'),(7,'Gradski Stadion Tušanj','Meše Selimovića','Teren tezak za igru'),(8,'Gradski Stadion Tušanj','Meše Selimovića','Teren tezak za igru'),(9,'MGM Farm Arena','Vatrogasna bb','Teren tezak za igru'),(10,'Gradski Stadion Krupa na Vrbasu','Vrbaska bb','Teren los za igru'),(11,'Stadion Asim Ferhatović-Hase','Kosevo','Teren dobar za igru'),(12,'Gradski stadion Bijeljina','Balkanska ulica','Iznimno los teren za igru');
/*!40000 ALTER TABLE `stadioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sudije`
--

DROP TABLE IF EXISTS `sudije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sudije` (
  `sudije_id` int NOT NULL AUTO_INCREMENT,
  `sudija_ime` varchar(45) DEFAULT NULL,
  `sudija_prezime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sudije_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sudije`
--

LOCK TABLES `sudije` WRITE;
/*!40000 ALTER TABLE `sudije` DISABLE KEYS */;
INSERT INTO `sudije` VALUES (1,'Irfan','Peljto'),(2,'Haris','Kaljanac'),(3,'Dragan','Petrović'),(4,'Aleksandar','Njegomirović'),(5,'Admir','Musić'),(6,'Frano','Jelić');
/*!40000 ALTER TABLE `sudije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela`
--

DROP TABLE IF EXISTS `tabela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela` (
  `klub_id` int DEFAULT NULL,
  `klub_ime` varchar(100) DEFAULT NULL,
  `klub_odigrani` int DEFAULT NULL,
  `klub_pobjeda` int DEFAULT NULL,
  `klub_nerjeseno` int DEFAULT NULL,
  `klub_poraz` int DEFAULT NULL,
  `klub_golovi` int DEFAULT NULL,
  `klub_primljeni` int DEFAULT NULL,
  `klub_bodovi` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela`
--

LOCK TABLES `tabela` WRITE;
/*!40000 ALTER TABLE `tabela` DISABLE KEYS */;
INSERT INTO `tabela` VALUES (1,'F.K.Sarajevo',0,0,0,0,0,0,0),(2,'F.K.Željezničar',0,0,0,0,0,0,0),(3,'N.K.Široki Brijeg',0,0,0,0,0,0,0),(4,'H.Š.K.Zrinjski',0,0,0,0,0,0,0),(5,'F.K.Borac',0,0,0,0,0,0,0),(6,'F.K.Velež',0,0,0,0,0,0,0),(7,'F.K.Sloboda',0,0,0,0,0,0,0),(8,'F.K.Tuzla City',0,0,0,0,0,0,0),(9,'F.K.Mladost D.K',0,0,0,0,0,0,0),(10,'F.K.Krupa',0,0,0,0,0,0,0),(11,'F.K.Olimpik',0,0,0,0,0,0,0),(12,'F.K.Radnik',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tabela` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 15:58:08
