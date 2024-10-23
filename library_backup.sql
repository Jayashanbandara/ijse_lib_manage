-- MySQL dump 10.13  Distrib 8.4.3, for Win64 (x86_64)
--
-- Host: localhost    Database: uni_library
-- ------------------------------------------------------
-- Server version	8.4.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_categories`
--

DROP TABLE IF EXISTS `book_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_categories`
--

LOCK TABLES `book_categories` WRITE;
/*!40000 ALTER TABLE `book_categories` DISABLE KEYS */;
INSERT INTO `book_categories` VALUES (1,'Fiction',NULL),(2,'Non-Fiction',NULL),(3,'Science Fiction',NULL),(4,'Mystery',NULL),(5,'Fantasy',NULL),(6,'Classics',NULL),(7,'Philosophy',NULL),(8,'Adventure',NULL),(9,'Historical Fiction',NULL),(10,'Biography',NULL);
/*!40000 ALTER TABLE `book_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `category_id` int NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `published_year` year DEFAULT NULL,
  `total_copies` int NOT NULL,
  `available_copies` int NOT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'asdd','dasd','213123',1,'dfasa',1990,2,23),(3,'hffghf','fghf','4354',2,'gfhkgh',1905,3,4),(171,'The Metamorphosis','Franz Kafka','9780553213690',6,'Kurt Wolff Verlag',1915,7,5),(172,'The Brothers Karamazov','Fyodor Dostoevsky','9780374528379',6,'The Russian Messenger',1901,8,7),(174,'The Call of the Wild','Jack London','9780141321059',8,'Macmillan',1903,9,8),(175,'A Tale of Two Cities','Charles Dickens','9780486406510',9,'Chapman & Hall',1901,14,12),(176,'The Divine Comedy','Dante Alighieri','9780140448955',6,'Giovanni Boccaccio',1901,10,8),(178,'One Hundred Years of Solitude','Gabriel Garcia Marquez','9780060883287',9,'Harper & Row',1967,8,6),(179,'Don Quixote','Miguel de Cervantes','9780060934347',6,'Francisco de Robles',1901,11,10),(275,'The Bell Jar','Sylvia Plath','9780060837020',6,'Heinemann',1963,7,5),(276,'Anna Karenina','Leo Tolstoy','9780140449174',6,'The Russian Messenger',1901,9,8),(277,'Les Misérables','Victor Hugo','9780140444308',6,'A. Lacroix, Verboeckhoven & Cie.',1901,15,13),(278,'The Grapes of Wrath','John Steinbeck','9780143039433',3,'The Viking Press',1939,11,9),(279,'Madame Bovary','Gustave Flaubert','9780140449129',6,'Revue de Paris',1901,8,7),(280,'Ulysses','James Joyce','9780141182803',6,'Sylvia Beach',1922,9,7),(281,'The Old Man and the Sea','Ernest Hemingway','9780684801223',3,'Charles Scribner\'s Sons',1952,12,10),(282,'Lolita','Vladimir Nabokov','9780679723165',3,'Olympia Press',1955,7,6),(283,'Beloved','Toni Morrison','9781400033416',6,'Alfred A. Knopf',1987,10,8),(284,'Things Fall Apart','Chinua Achebe','9780385474542',3,'Heinemann',1958,14,12),(285,'Rebecca','Daphne du Maurier','9780380778553',6,'Victor Gollancz Ltd',1938,9,8),(286,'The Little Prince','Antoine de Saint-Exupéry','9780156012195',3,'Reynal & Hitchcock',1943,15,14),(287,'Charlotte\'s Web','E.B. White','9780064400553',3,'Harper & Brothers',1952,20,18),(288,'The Color Purple','Alice Walker','9780156028356',6,'Harcourt Brace Jovanovich',1982,12,11),(289,'The Wind in the Willows','Kenneth Grahame','9780141321134',3,'Methuen',1901,8,6),(290,'The Time Machine','H.G. Wells','9780486284729',6,'William Heinemann',1901,6,5),(291,'Alice\'s Adventures in Wonderland','Lewis Carroll','9780141321073',6,'Macmillan',1901,11,10),(292,'Heart of Darkness','Joseph Conrad','9780141441672',6,'Blackwood\'s Magazine',1901,10,8),(293,'Brideshead Revisited','Evelyn Waugh','9780316216456',3,'Chapman & Hall',1945,7,6),(294,'The Stranger','Albert Camus','9780679720201',6,'Gallimard',1942,9,7),(295,'Of Mice and Men','John Steinbeck','9780140177398',3,'Covici Friede',1937,14,12),(296,'The Godfather','Mario Puzo','9780451205766',3,'G.P. Putnam\'s Sons',1969,8,6),(297,'Jurassic Park','Michael Crichton','9780345538987',3,'Alfred A. Knopf',1990,10,9),(298,'The War of the Worlds','H.G. Wells','9780340920724',6,'William Heinemann',1901,7,5),(299,'Dune','Frank Herbert','9780441172719',3,'Chilton Books',1965,12,11),(300,'The Exorcist','William Peter Blatty','9780061007228',6,'Harper & Row',1971,5,4),(301,'The Hitchhiker\'s Guide to the Galaxy','Douglas Adams','9780345391803',3,'Pan Books',1979,18,16),(302,'The Martian','Andy Weir','9780553418026',3,'Crown Publishing Group',2011,14,13),(303,'Ready Player One','Ernest Cline','9780307887436',3,'Crown Publishing Group',2011,11,9),(304,'The Hunger Games','Suzanne Collins','9780439023481',3,'Scholastic Press',2008,20,18),(305,'Catching Fire','Suzanne Collins','9780439023498',3,'Scholastic Press',2009,18,16),(306,'Mockingjay','Suzanne Collins','9780439023511',3,'Scholastic Press',2010,17,15),(307,'A Game of Thrones','George R.R. Martin','9780553573404',3,'Bantam Spectra',1996,15,13),(308,'The Fellowship of the Ring','J.R.R. Tolkien','9780547928210',8,'Allen & Unwin',1954,14,12),(309,'Ender\'s Game','Orson Scott Card','9780812550702',3,'Tor Books',1985,12,14);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowing_transactions`
--

DROP TABLE IF EXISTS `borrowing_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowing_transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `book_id` int NOT NULL,
  `borrow_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` enum('Borrowed','Returned') NOT NULL DEFAULT 'Borrowed',
  `fine` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`transaction_id`),
  KEY `member_id` (`member_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `borrowing_transactions_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  CONSTRAINT `borrowing_transactions_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowing_transactions`
--

LOCK TABLES `borrowing_transactions` WRITE;
/*!40000 ALTER TABLE `borrowing_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrowing_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `membership_start_date` date NOT NULL,
  `membership_expiry_date` date NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'John Doe','123 Main St, City A','1234567890','2024-01-01','2025-01-01'),(2,'Jane Smith','456 Elm St, City B','0987654321','2024-02-01','2025-02-01'),(3,'Alice Johnson','789 Oak St, City C','1112223333','2024-03-01','2025-03-01'),(4,'Bob Brown','321 Maple St, City D','4445556666','2024-04-01','2025-04-01'),(5,'Charlie Green','654 Pine St, City E','7778889999','2024-05-01','2025-05-01'),(6,'Dave Wilson','987 Cedar St, City F','1122334455','2024-06-01','2025-06-01'),(7,'Eve White','135 Birch St, City G','2233445566','2024-07-01','2025-07-01'),(8,'Frank Harris','246 Walnut St, City H','3344556677','2024-08-01','2025-08-01'),(9,'Grace Lee','357 Chestnut St, City I','4455667788','2024-09-01','2025-09-01'),(10,'Hank King','468 Poplar St, City J','5566778899','2024-10-01','2025-10-01'),(11,'Ivy Young','579 Fir St, City K','6677889900','2024-11-01','2025-11-01'),(12,'Jack Black','680 Cedar St, City L','7788990011','2024-12-01','2025-12-01'),(13,'Karen Adams','781 Spruce St, City M','8899001122','2024-01-15','2025-01-15'),(14,'Larry Moore','882 Oakwood St, City N','9900112233','2024-02-15','2025-02-15'),(15,'Megan Turner','983 Pinewood St, City O','1001223344','2024-03-15','2025-03-15'),(16,'Nathan Scott','1084 Redwood St, City P','1223344556','2024-04-15','2025-04-15'),(17,'Olivia Bennett','1195 Elmwood St, City Q','1334455667','2024-05-15','2025-05-15'),(18,'Paul Walker','1206 Maplewood St, City R','1445566778','2024-06-15','2025-06-15'),(19,'Quinn Howard','1317 Ashwood St, City S','1556677889','2024-07-15','2025-07-15'),(20,'Rachel Edwards','1428 Birchwood St, City T','1667788990','2024-08-15','2025-08-15'),(21,'Sam Wilson','1539 Palm St, City U','1778899001','2024-09-15','2025-09-15'),(22,'Tina Harris','1640 Pine St, City V','1889900112','2024-10-15','2025-10-15'),(23,'Ulysses Moore','1751 Cedarwood St, City W','1990011223','2024-11-15','2025-11-15'),(24,'Violet Brooks','1862 Redwood St, City X','2111122334','2024-12-15','2025-12-15'),(25,'Wendy Foster','1973 Oak St, City Y','2233344455','2024-01-05','2025-01-05'),(26,'Xander Clarke','2084 Spruce St, City Z','2344455666','2024-02-05','2025-02-05'),(27,'Yasmine Young','2195 Fir St, City A','2455566777','2024-03-05','2025-03-05'),(28,'Zachary Lewis','2306 Palm St, City B','2566677888','2024-04-05','2025-04-05'),(29,'Anna Roberts','2417 Birchwood St, City C','2677788999','2024-05-05','2025-05-05'),(30,'Bradley Green','2528 Maplewood St, City D','2788899000','2024-06-05','2025-06-05'),(31,'Cathy Cooper','2639 Elmwood St, City E','2899900111','2024-07-05','2025-07-05'),(32,'Derek Brown','2740 Pinewood St, City F','3000111222','2024-08-05','2025-08-05'),(33,'Ella Walker','2851 Cedar St, City G','3111223344','2024-09-05','2025-09-05'),(34,'Felix Turner','2962 Redwood St, City H','3223344555','2024-10-05','2025-10-05'),(35,'Georgia Stone','3073 Oakwood St, City I','3334455666','2024-11-05','2025-11-05'),(36,'Harry King','3184 Sprucewood St, City J','3445566777','2024-12-05','2025-12-05'),(37,'Isabella Young','3295 Fir St, City K','3556677888','2024-01-10','2025-01-10'),(38,'Jake Black','3406 Maple St, City L','3667788999','2024-02-10','2025-02-10'),(39,'Kara Adams','3517 Palmwood St, City M','3778899000','2024-03-10','2025-03-10'),(40,'Liam Johnson','3628 Birch St, City N','3889900111','2024-04-10','2025-04-10'),(41,'Molly Williams','3739 Pine St, City O','3990011222','2024-05-10','2025-05-10'),(42,'Noah Thompson','3840 Cedar St, City P','4000112333','2024-06-10','2025-06-10'),(43,'Olga Green','3951 Redwood St, City Q','4111223444','2024-07-10','2025-07-10'),(44,'Peter Brown','4062 Oak St, City R','4222334555','2024-08-10','2025-08-10'),(45,'Queenie Bennett','4173 Fir St, City S','4333445666','2024-09-10','2025-09-10'),(46,'Ryan White','4284 Maple St, City T','4444556777','2024-10-10','2025-10-10'),(47,'Sophie Lee','4395 Palm St, City U','4555667888','2024-11-10','2025-11-10'),(48,'Tom Green','4506 Birch St, City V','4666778999','2024-12-10','2025-12-10'),(49,'Uma Black','4617 Spruce St, City W','4777889000','2024-01-20','2025-01-20'),(50,'Victor Green','4728 Pine St, City X','4888999111','2024-02-20','2025-02-20'),(51,'Wanda Young','4839 Redwood St, City Y','4999000222','2024-03-20','2025-03-20'),(52,'Xavier Lewis','4950 Oakwood St, City Z','5000112333','2024-04-20','2025-04-20'),(53,'Yara White','5061 Fir St, City A','5111223444','2024-05-20','2025-05-20'),(54,'Zane Bennett','5172 Maplewood St, City B','5222334555','2024-06-20','2025-06-20'),(55,'Adam Richards','5293 Elm St, City C','5333445666','2024-07-20','2025-07-20'),(56,'Bella Clarke','5404 Pine St, City D','5444556777','2024-08-20','2025-08-20'),(57,'Carter Miller','5515 Maplewood St, City E','5555667888','2024-09-20','2025-09-20'),(58,'Diana Thompson','5626 Palm St, City F','5666778999','2024-10-20','2025-10-20'),(59,'Ethan Brooks','5737 Oakwood St, City G','5777889000','2024-11-20','2025-11-20'),(60,'Fiona Turner','5848 Cedar St, City H','5888999111','2024-12-20','2025-12-20'),(61,'George Young','5959 Redwood St, City I','5999000222','2024-01-25','2025-01-25'),(62,'Holly Adams','6070 Fir St, City J','6000112333','2024-02-25','2025-02-25'),(63,'Isaac Lewis','6181 Sprucewood St, City K','6111223444','2024-03-25','2025-03-25'),(64,'Jasmine Collins','6292 Birchwood St, City L','6222334555','2024-04-25','2025-04-25');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `role` enum('Admin','Librarian','Member') NOT NULL,
  `account_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-23 23:41:04
