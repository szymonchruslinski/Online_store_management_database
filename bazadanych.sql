-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: sklep_internetowy
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `position` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,1,1,3,2299.00),(2,1,8,1,1,1199.00),(3,1,11,1,1,1599.00),(4,1,18,1,1,899.00),(5,1,26,1,2,2799.00),(6,2,7,2,2,1299.00),(7,2,14,2,1,249.00),(8,2,27,2,2,1299.00),(9,3,2,3,3,1899.00),(10,3,15,3,2,129.00),(11,3,28,3,1,1899.00),(12,3,33,3,2,299.00),(13,4,6,4,1,2699.00),(14,4,13,4,3,129.00),(15,4,20,4,1,799.00),(16,5,19,5,2,999.00),(17,5,24,5,1,299.00),(18,6,5,6,2,1499.00),(19,6,16,6,3,1299.00),(20,6,23,6,1,899.00),(21,7,3,7,2,2399.00),(22,7,26,7,1,2799.00),(23,8,29,8,2,1199.00),(24,8,34,8,3,399.00),(25,9,9,9,1,1599.00),(26,9,22,9,2,799.00),(27,9,35,9,1,149.00),(28,10,4,10,3,1799.00),(29,10,9,10,1,1599.00),(30,10,16,10,1,1299.00),(31,11,1,11,1,2299.00),(32,11,8,11,2,1199.00),(33,11,11,11,1,1599.00),(34,11,18,11,1,899.00),(35,11,26,11,1,2799.00),(36,12,7,12,3,1299.00),(37,12,14,12,2,249.00),(38,12,27,12,1,1299.00),(39,13,2,13,1,1899.00),(40,13,15,13,2,129.00),(41,13,28,13,2,1899.00),(42,14,6,14,1,2699.00),(43,14,13,14,2,129.00),(44,14,20,14,1,799.00),(45,15,19,15,1,999.00),(46,15,24,15,2,299.00),(47,16,5,16,2,1499.00),(48,16,16,16,3,1299.00),(49,16,23,16,1,899.00),(50,17,3,17,2,2399.00),(51,17,26,17,2,2799.00),(52,18,29,18,2,1199.00),(53,18,34,18,1,399.00),(54,19,9,19,2,1599.00),(55,19,22,19,1,799.00),(56,19,35,19,1,149.00),(57,20,4,20,3,1799.00),(58,20,9,20,1,1599.00),(59,20,16,20,1,1299.00);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Laptopy'),(2,'Komputery stacjonarne'),(3,'Komponenty komputerowe'),(4,'Smartfony'),(5,'Tablety'),(6,'Telewizory'),(7,'Smartwatche i akcesoria'),(8,'Aparaty fotograficzne'),(9,'Konsole do gier');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone_number` char(12) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Jan','Kowalski','jan.kowalski@gmail.com','losowe_haslo_1','+48123456789'),(2,'Anna','Nowak','anna.nowak@gmail.com','losowe_haslo_2','+48234567890'),(3,'Piotr','Lewandowski','piotr.lewandowski@gmail.com','losowe_haslo_3','+48345678901'),(4,'Katarzyna','Wójcik','katarzyna.wojcik@gmail.com','losowe_haslo_4','+48456789012'),(5,'Marek','Kaczmarek','marek.kaczmarek@gmail.com','losowe_haslo_5','+48567890123'),(6,'Agnieszka','Zając','agnieszka.zajac@gmail.com','losowe_haslo_6','+48678901234'),(7,'Adam','Mazur','adam.mazur@gmail.com','losowe_haslo_7','+48789012345'),(8,'Karolina','Krawczyk','karolina.krawczyk@gmail.com','losowe_haslo_8','+48890123456'),(9,'Robert','Olejniczak','robert.olejniczak@gmail.com','losowe_haslo_9','+48901234567'),(10,'Ewa','Dąbrowska','ewa.dabrowska@gmail.com','losowe_haslo_10','+48012345678'),(11,'Kamil','Kubiak','kamil.kubiak@gmail.com','losowe_haslo_11','+48123456789'),(12,'Natalia','Jankowska','natalia.jankowska@gmail.com','losowe_haslo_12','+48234567890'),(13,'Mariusz','Sikorski','mariusz.sikorski@gmail.com','losowe_haslo_13','+48345678901'),(14,'Weronika','Walczak','weronika.walczak@gmail.com','losowe_haslo_14','+48456789012'),(15,'Łukasz','Czarnecki','lukasz.czarnecki@gmail.com','losowe_haslo_15','+48567890123'),(16,'Martyna','Rutkowska','martyna.rutkowska@gmail.com','losowe_haslo_16','+48678901234'),(17,'Dawid','Sobczak','dawid.sobczak@gmail.com','losowe_haslo_17','+48789012345'),(18,'Aleksandra','Marciniak','aleksandra.marciniak@gmail.com','losowe_haslo_18','+48890123456'),(19,'Patryk','Kowal','patryk.kowal@gmail.com','losowe_haslo_19','+48901234567'),(20,'Karolina','Borowska','karolina.borowska@gmail.com','losowe_haslo_20','+48012345678');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `shipment_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `total_price` decimal(7,2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,1,16192.00),(2,2,2,5445.00),(3,3,3,8452.00),(4,4,4,3885.00),(5,5,5,2297.00),(6,6,6,7794.00),(7,7,7,7597.00),(8,8,8,3595.00),(9,9,9,3346.00),(10,10,10,8295.00),(11,11,11,9994.00),(12,12,12,5694.00),(13,13,13,5955.00),(14,14,14,3756.00),(15,15,15,1597.00),(16,16,16,7794.00),(17,17,17,10396.00),(18,18,18,2797.00),(19,19,19,4146.00),(20,20,20,8295.00);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `payment_method` varchar(15) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,1,'Karta kredytowa',16192.00),(2,2,2,'PayPal',5445.00),(3,3,3,'Przelew bankowy',8452.00),(4,4,4,'Gotówka',3885.00),(5,5,5,'Apple Pay',2297.00),(6,6,6,'Przelew bankowy',7794.00),(7,7,7,'Karta kredytowa',7597.00),(8,8,8,'PayPal',3595.00),(9,9,9,'Gotówka',3346.00),(10,10,10,'Karta kredytowa',8295.00),(11,11,11,'Google Pay',9994.00),(12,12,12,'Przelew bankowy',5694.00),(13,13,13,'Karta kredytowa',5955.00),(14,14,14,'PayPal',3756.00),(15,15,15,'Gotówka',1597.00),(16,16,16,'Karta kredytowa',7794.00),(17,17,17,'Apple Pay',10396.00),(18,18,18,'Przelew bankowy',2797.00),(19,19,19,'Karta kredytowa',4146.00),(20,20,20,'PayPal',8295.00);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Laptop Dell XPS 13',2299.00,50),(2,1,'Laptop HP Spectre x360',1899.00,40),(3,1,'Laptop Lenovo ThinkPad X1 Carbon',2399.00,35),(4,1,'Microsoft Surface Laptop 4',1799.00,45),(5,1,'ASUS ROG Zephyrus G14',1499.00,30),(6,2,'Komputer stacjonarny ASUS ROG',2699.00,30),(7,2,'Komputer stacjonarny Lenovo IdeaCentre',1299.00,20),(8,2,'Dell Inspiron Desktop',1199.00,25),(9,2,'HP Pavilion Gaming Desktop',1599.00,18),(10,2,'CyberPowerPC Gamer Xtreme VR Gaming PC',1799.00,15),(11,3,'Karta graficzna NVIDIA GeForce RTX 3080',1599.00,15),(12,3,'Procesor AMD Ryzen 7 5800X',699.00,25),(13,3,'Płyta główna MSI B450 TOMAHAWK',129.00,50),(14,3,'Dysk SSD Samsung 970 EVO 1TB',249.00,40),(15,3,'16GB RAM Corsair Vengeance LPX',129.00,30),(16,4,'iPhone 13 Pro',1299.00,50),(17,4,'Samsung Galaxy S21',1099.00,40),(18,4,'Google Pixel 6',899.00,35),(19,4,'OnePlus 9',999.00,45),(20,4,'Xiaomi Mi 11',799.00,30),(21,5,'iPad Pro 12.9',999.00,30),(22,5,'Samsung Galaxy Tab S7',799.00,25),(23,5,'Microsoft Surface Pro 7',899.00,20),(24,5,'Amazon Fire HD 10',299.00,50),(25,5,'Lenovo Tab P11',399.00,40),(26,6,'Sony Bravia OLED A80J',2799.00,10),(27,6,'LG NanoCell 85',1299.00,20),(28,6,'Samsung QLED Q80A',1899.00,15),(29,6,'TCL 6-Series Roku TV',1199.00,25),(30,6,'Vizio M-Series Quantum',1599.00,18),(31,7,'Apple Watch Series 7',379.00,35),(32,7,'Samsung Galaxy Watch 4',349.00,45),(33,7,'Fitbit Sense',299.00,40),(34,7,'Garmin Venu 2',399.00,30),(35,7,'Xiaomi Mi Watch',149.00,50),(36,8,'Canon EOS R5',3199.00,15),(37,8,'Sony Alpha a7 III',2199.00,25),(38,8,'Nikon Z6',2699.00,20),(39,8,'Fujifilm X-T4',1999.00,18),(40,8,'Panasonic Lumix GH5',1799.00,22),(41,9,'PlayStation 5',599.00,20),(42,9,'Xbox Series X',599.00,18),(43,9,'Nintendo Switch',349.00,25),(44,9,'PlayStation 4 Pro',449.00,30),(45,9,'Xbox One X',399.00,22);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `shipment_id` int NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `street` varchar(30) NOT NULL,
  `house_number` varchar(5) NOT NULL,
  PRIMARY KEY (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,'Poland','Mazowieckie','Warszawa','00-001','Aleje Jerozolimskie','123'),(2,'Poland','Małopolskie','Kraków','30-001','Rynek Główny','45A'),(3,'Poland','Łódzkie','Łódź','90-001','Piotrkowska','78'),(4,'Poland','Dolnośląskie','Wrocław','50-001','Rynek','56B'),(5,'Poland','Lubelskie','Lublin','20-001','Krakowskie Przedmieście','32'),(6,'Poland','Wielkopolskie','Poznań','60-001','Stary Rynek','87'),(7,'Poland','Kujawsko-Pomorskie','Bydgoszcz','85-001','Mostowa','14'),(8,'Poland','Podlaskie','Białystok','15-001','Lipowa','29A'),(9,'Poland','Pomorskie','Gdańsk','80-001','Długa','67'),(10,'Poland','Zachodniopomorskie','Szczecin','70-001','Wały Chrobrego','112'),(11,'Poland','Opolskie','Opole','45-001','Piastowska','8'),(12,'Poland','Warmińsko-Mazurskie','Olsztyn','10-001','Staromiejska','21'),(13,'Poland','Podkarpackie','Rzeszów','35-001','3 Maja','94'),(14,'Poland','Śląskie','Katowice','40-001','Rynek','75B'),(15,'Poland','Świętokrzyskie','Kielce','25-001','Sienkiewicza','50'),(16,'Poland','Śląskie','Gliwice','44-001','Dolnych Wałów','18'),(17,'Poland','Lubuskie','Zielona Góra','65-001','Słowiańska','37'),(18,'Poland','Mazowieckie','Radom','26-001','Królewska','92'),(19,'Poland','Podlaskie','Białystok','15-002','Sienkiewicza','13C'),(20,'Poland','Warmińsko-Mazurskie','Elbląg','82-001','Łączności','29D');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-27 15:11:02
