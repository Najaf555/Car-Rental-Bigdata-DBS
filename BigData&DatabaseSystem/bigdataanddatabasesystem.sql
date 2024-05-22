CREATE DATABASE  IF NOT EXISTS `electriccarrentaldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `electriccarrentaldb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: electriccarrentaldb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `chargingsession`
--

DROP TABLE IF EXISTS `chargingsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chargingsession` (
  `SessionID` int(11) NOT NULL,
  `CarID` int(11) DEFAULT NULL,
  `StationID` int(11) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `StartBatteryLevel` int(11) DEFAULT NULL,
  `EndBatteryLevel` int(11) DEFAULT NULL,
  `AmountOfPowerUsed` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`SessionID`),
  KEY `CarID` (`CarID`),
  KEY `StationID` (`StationID`),
  CONSTRAINT `chargingsession_ibfk_1` FOREIGN KEY (`CarID`) REFERENCES `electriccar` (`CarID`),
  CONSTRAINT `chargingsession_ibfk_2` FOREIGN KEY (`StationID`) REFERENCES `chargingstation` (`StationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chargingsession`
--

LOCK TABLES `chargingsession` WRITE;
/*!40000 ALTER TABLE `chargingsession` DISABLE KEYS */;
INSERT INTO `chargingsession` VALUES (1,1,1,'2024-04-08 10:00:00','2024-04-08 11:00:00',80,90,10.00),(2,2,2,'2024-04-09 11:00:00','2024-04-09 12:00:00',75,85,8.00),(3,3,3,'2024-04-10 12:00:00','2024-04-10 13:00:00',90,95,7.50),(4,4,4,'2024-04-11 13:00:00','2024-04-11 14:00:00',85,90,6.00),(5,5,5,'2024-04-12 14:00:00','2024-04-12 15:00:00',70,80,9.00),(6,6,6,'2024-04-13 15:00:00','2024-04-13 16:00:00',75,85,8.50),(7,7,7,'2024-04-07 16:00:00','2024-04-07 17:00:00',80,90,7.00),(8,8,8,'2024-04-06 17:00:00','2024-04-06 18:00:00',85,95,8.00),(9,9,9,'2024-04-05 18:00:00','2024-04-05 19:00:00',90,100,10.00);
/*!40000 ALTER TABLE `chargingsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chargingstation`
--

DROP TABLE IF EXISTS `chargingstation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chargingstation` (
  `StationID` int(11) NOT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`StationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chargingstation`
--

LOCK TABLES `chargingstation` WRITE;
/*!40000 ALTER TABLE `chargingstation` DISABLE KEYS */;
INSERT INTO `chargingstation` VALUES (1,'Main Street','2023-01-05 10:00:00'),(2,'Park Avenue','2023-02-10 11:30:00'),(3,'Downtown Square','2023-03-15 14:45:00'),(4,'Waterfront Plaza','2023-04-20 16:00:00'),(5,'City Center','2023-05-25 18:30:00'),(6,'Suburban Mall','2023-06-30 20:00:00'),(7,'Industrial Park','2023-07-05 22:15:00'),(8,'Shopping Center','2023-08-10 23:45:00'),(9,'Business District','2023-09-15 09:30:00'),(10,'Tech Campus','2023-10-20 12:00:00'),(11,'Airport Terminal','2023-11-25 14:30:00'),(12,'Train Station','2023-12-30 16:45:00'),(13,'Harbor Pier','2024-01-05 19:00:00'),(14,'Residential Area','2024-02-10 21:15:00'),(15,'University Campus','2024-03-15 23:30:00'),(16,'Sports Stadium','2024-04-20 09:00:00'),(17,'National Park','2024-05-25 11:30:00'),(18,'Shopping Mall','2024-06-30 13:45:00'),(19,'Tech Park','2024-07-05 15:00:00'),(20,'Riverfront Plaza','2024-08-10 17:15:00');
/*!40000 ALTER TABLE `chargingstation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `PassportNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Doe','123 Main St, City, State','1990-05-15','AB123456'),(2,'Jane Smith','456 Oak Ave, Town, State','1985-12-10','CD789012'),(3,'Mike Johnson','789 Elm Rd, Village, State','1988-08-25','EF345678'),(4,'Sarah Adams','321 Pine Dr, Suburb, State','1992-03-18','GH901234'),(5,'David Lee','567 Maple Ln, City, State','1982-07-30','IJ567890'),(6,'Emily Brown','987 Cedar St, Town, State','1995-01-22','KL123456'),(7,'Michael Smith','234 Birch Ave, Village, State','1987-09-12','MN789012'),(8,'Jessica Taylor','876 Elm Rd, Suburb, State','1993-06-05','OP345678'),(9,'Chris Wilson','543 Oak Ave, City, State','1984-04-09','QR901234'),(10,'Amy Johnson','789 Pine Dr, Town, State','1991-11-03','ST567890'),(11,'Mark Davis','432 Cedar St, Village, State','1986-02-28','UV123456'),(12,'Laura White','876 Birch Ave, Suburb, State','1989-10-14','WX789012'),(13,'Tom Brown','345 Maple Ln, City, State','1994-07-20','YZ345678'),(14,'Anna Green','654 Elm Rd, Town, State','1983-09-05','AB567890'),(15,'Peter Jones','987 Pine Dr, Village, State','1990-04-12','CD123456'),(16,'Rachel Clark','123 Cedar St, Suburb, State','1987-12-28','EF789012'),(17,'Kevin Miller','876 Birch Ave, City, State','1992-06-15','GH901234'),(18,'Lisa Wilson','321 Oak Ave, Town, State','1985-03-22','IJ567890'),(19,'Daniel Moore','654 Maple Ln, Village, State','1988-08-08','KL123456'),(20,'Samantha Adams','234 Elm Rd, Suburb, State','1991-05-01','MN789012');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electriccar`
--

DROP TABLE IF EXISTS `electriccar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electriccar` (
  `CarID` int(11) NOT NULL,
  `Manufacturer` varchar(255) DEFAULT NULL,
  `ModelName` varchar(255) DEFAULT NULL,
  `CurrentMileage` decimal(10,2) DEFAULT NULL,
  `MaximumSpeed` int(11) DEFAULT NULL,
  `MaximumRange` int(11) DEFAULT NULL,
  PRIMARY KEY (`CarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electriccar`
--

LOCK TABLES `electriccar` WRITE;
/*!40000 ALTER TABLE `electriccar` DISABLE KEYS */;
INSERT INTO `electriccar` VALUES (1,'Tesla','Model S',5000.00,50,250),(2,'Nissan','Leaf',3000.00,45,200),(3,'Chevrolet','Bolt',4000.00,48,220),(4,'BMW','i3',6000.00,50,180),(5,'Audi','e-tron',3500.00,55,240),(6,'Hyundai','Kona Electric',2000.00,47,210),(7,'Kia','Soul EV',4000.00,45,220),(8,'Ford','Mustang Mach-E',1500.00,55,230),(9,'Jaguar','I-PACE',3000.00,60,250),(10,'Porsche','Taycan',1000.00,60,220),(11,'Toyota','Prius Prime',5000.00,50,260),(12,'Volkswagen','ID.4',2500.00,55,230),(13,'Mercedes-Benz','EQC',3500.00,55,240),(14,'Volvo','XC40 Recharge',2000.00,50,220),(15,'Rivian','R1T',1000.00,60,250),(16,'Lucid','Air',500.00,60,300),(17,'Mazda','MX-30',4000.00,45,200),(18,'Honda','Clarity Electric',3000.00,45,210),(19,'Fiat','500e',2000.00,50,180),(20,'Mini','Cooper SE',2500.00,45,170);
/*!40000 ALTER TABLE `electriccar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershipform`
--

DROP TABLE IF EXISTS `membershipform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membershipform` (
  `FormID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Photo1` blob DEFAULT NULL,
  `Photo2` blob DEFAULT NULL,
  `IDCopy` blob DEFAULT NULL,
  PRIMARY KEY (`FormID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `membershipform_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershipform`
--

LOCK TABLES `membershipform` WRITE;
/*!40000 ALTER TABLE `membershipform` DISABLE KEYS */;
INSERT INTO `membershipform` VALUES (1,1,_binary '#E',_binary 'g«',_binary '\Í\ï'),(2,2,_binary 'þÜº',_binary 'vT',_binary '2\ï'),(3,3,_binary '«\Í\ï',_binary '#E',_binary 'g«'),(4,4,_binary '#Eg',_binary '¼\Þ',_binary 'ð4'),(5,5,_binary 'Vx',_binary '\Í\ï',_binary '#Eg'),(6,6,_binary 'x¼',_binary '\Þð',_binary '4Vx'),(7,7,_binary '	«\Í\ï',_binary '#E',_binary 'g«'),(8,8,_binary '4Vx',_binary '¼\Þ',_binary 'ð4'),(9,9,_binary 'g«',_binary '\Í\ï',_binary '#Eg'),(10,10,_binary '¼',_binary '\Þð',_binary '4Vx'),(11,11,_binary '«\Í\ï',_binary '#E',_binary 'g«'),(12,12,_binary 'Eg',_binary '\n¼\Þ',_binary 'ð4'),(13,13,_binary 'x¼',_binary '\Þð',_binary '4Vx'),(14,14,_binary '	«\Í\ï',_binary '#E',_binary 'g«'),(15,15,_binary 'Vx',_binary '\Í\ï',_binary '#Eg'),(16,16,_binary '#Eg',_binary '¼\Þ',_binary 'ð4'),(17,17,_binary 'g«',_binary '\Í\ï',_binary '#Eg'),(18,18,_binary '¼',_binary '\Þð',_binary '4Vx'),(19,19,_binary '«\Í\ï',_binary '#E',_binary 'g«'),(20,20,_binary 'Eg',_binary '\n¼\Þ',_binary 'ð4');
/*!40000 ALTER TABLE `membershipform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentalagreement`
--

DROP TABLE IF EXISTS `rentalagreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentalagreement` (
  `AgreementID` int(11) NOT NULL,
  `CardID` int(11) DEFAULT NULL,
  `CarID` int(11) DEFAULT NULL,
  `RentalClerkID` int(11) DEFAULT NULL,
  `IssueDateTime` datetime DEFAULT NULL,
  `DueDateTime` datetime DEFAULT NULL,
  `PaymentAmount` decimal(10,2) DEFAULT NULL,
  `Completed` bit(1) DEFAULT NULL,
  PRIMARY KEY (`AgreementID`),
  KEY `CardID` (`CardID`),
  KEY `CarID` (`CarID`),
  CONSTRAINT `rentalagreement_ibfk_1` FOREIGN KEY (`CardID`) REFERENCES `rentalmembershipcard` (`CardID`),
  CONSTRAINT `rentalagreement_ibfk_2` FOREIGN KEY (`CarID`) REFERENCES `electriccar` (`CarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentalagreement`
--

LOCK TABLES `rentalagreement` WRITE;
/*!40000 ALTER TABLE `rentalagreement` DISABLE KEYS */;
INSERT INTO `rentalagreement` VALUES (1,1,1,101,'2023-01-01 10:00:00','2023-01-02 10:00:00',80.00,_binary ''),(2,2,2,102,'2023-01-02 11:00:00','2023-01-03 11:00:00',80.00,_binary ''),(3,3,3,103,'2023-01-03 12:00:00','2023-01-04 12:00:00',80.00,_binary ''),(4,4,4,104,'2023-01-04 13:00:00','2023-01-05 13:00:00',80.00,_binary ''),(5,5,5,105,'2023-01-05 14:00:00','2023-01-06 14:00:00',80.00,_binary ''),(6,6,6,106,'2023-01-06 15:00:00','2023-01-07 15:00:00',80.00,_binary ''),(7,7,7,107,'2023-01-07 16:00:00','2023-01-08 16:00:00',80.00,_binary ''),(8,8,8,108,'2023-01-08 17:00:00','2023-01-09 17:00:00',80.00,_binary ''),(9,9,9,109,'2023-01-09 18:00:00','2023-01-10 18:00:00',80.00,_binary ''),(10,10,10,110,'2023-01-10 19:00:00','2023-01-11 19:00:00',80.00,_binary ''),(11,11,11,111,'2023-01-11 20:00:00','2023-01-12 20:00:00',80.00,_binary ''),(12,12,12,112,'2023-01-12 21:00:00','2023-01-13 21:00:00',80.00,_binary ''),(13,13,13,113,'2023-01-13 22:00:00','2023-01-14 22:00:00',80.00,_binary ''),(14,14,14,114,'2023-01-14 23:00:00','2023-01-15 23:00:00',80.00,_binary ''),(15,15,15,115,'2023-01-15 00:00:00','2023-01-16 00:00:00',80.00,_binary ''),(16,16,16,116,'2023-01-16 01:00:00','2023-01-17 01:00:00',80.00,_binary ''),(17,17,17,117,'2023-01-17 02:00:00','2023-01-18 02:00:00',80.00,_binary ''),(18,18,18,118,'2023-01-18 03:00:00','2023-01-19 03:00:00',80.00,_binary ''),(19,19,19,119,'2023-01-19 04:00:00','2023-01-20 04:00:00',80.00,_binary ''),(20,20,20,120,'2023-01-20 05:00:00','2023-01-21 05:00:00',80.00,_binary '');
/*!40000 ALTER TABLE `rentalagreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentalmembershipcard`
--

DROP TABLE IF EXISTS `rentalmembershipcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentalmembershipcard` (
  `CardID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `MembershipRegistrationFee` decimal(10,2) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  PRIMARY KEY (`CardID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `rentalmembershipcard_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentalmembershipcard`
--

LOCK TABLES `rentalmembershipcard` WRITE;
/*!40000 ALTER TABLE `rentalmembershipcard` DISABLE KEYS */;
INSERT INTO `rentalmembershipcard` VALUES (1,1,150.00,'2023-01-01'),(2,2,150.00,'2023-01-02'),(3,3,150.00,'2023-01-03'),(4,4,150.00,'2023-01-04'),(5,5,150.00,'2023-01-05'),(6,6,150.00,'2023-01-06'),(7,7,150.00,'2023-01-07'),(8,8,150.00,'2023-01-08'),(9,9,150.00,'2023-01-09'),(10,10,150.00,'2023-01-10'),(11,11,150.00,'2023-01-11'),(12,12,150.00,'2023-01-12'),(13,13,150.00,'2023-01-13'),(14,14,150.00,'2023-01-14'),(15,15,150.00,'2023-01-15'),(16,16,150.00,'2023-01-16'),(17,17,150.00,'2023-01-17'),(18,18,150.00,'2023-01-18'),(19,19,150.00,'2023-01-19'),(20,20,150.00,'2023-01-20');
/*!40000 ALTER TABLE `rentalmembershipcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicereport`
--

DROP TABLE IF EXISTS `servicereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicereport` (
  `ReportID` int(11) NOT NULL,
  `CarID` int(11) DEFAULT NULL,
  `EngineerName` varchar(255) DEFAULT NULL,
  `ReportDate` date DEFAULT NULL,
  `MaintenanceDetails` varchar(255) DEFAULT NULL,
  `RepairCost` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`ReportID`),
  KEY `CarID` (`CarID`),
  CONSTRAINT `servicereport_ibfk_1` FOREIGN KEY (`CarID`) REFERENCES `electriccar` (`CarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicereport`
--

LOCK TABLES `servicereport` WRITE;
/*!40000 ALTER TABLE `servicereport` DISABLE KEYS */;
INSERT INTO `servicereport` VALUES (1,1,'John Smith','2023-01-05','Replaced brake pads',200.00),(2,2,'Sarah Johnson','2023-02-10','Changed oil and filter',100.00),(3,3,'Mike Brown','2023-03-15','Performed tire rotation',50.00),(4,4,'Emily Davis','2023-04-20','Repaired headlights',150.00),(5,5,'David Wilson','2023-05-25','Fixed electrical wiring',300.00),(6,6,'Jessica Lee','2023-06-30','Adjusted suspension',250.00),(7,7,'Chris Evans','2023-07-05','Replaced windshield',400.00),(8,8,'Laura Martinez','2023-08-10','Installed new battery',350.00),(9,9,'Mark Taylor','2023-09-15','Performed engine diagnostics',150.00),(10,10,'Anna Johnson','2023-10-20','Repaired air conditioning',200.00),(11,11,'Kevin White','2023-11-25','Fixed navigation system',180.00),(12,12,'Rachel Moore','2023-12-30','Replaced radiator',300.00),(13,13,'Peter Thompson','2024-01-05','Adjusted brakes',100.00),(14,14,'Lisa Parker','2024-02-10','Repaired suspension',250.00),(15,15,'Daniel Adams','2024-03-15','Fixed cooling system',80.00),(16,16,'Samantha Clark','2024-04-20','Replaced spark plugs',120.00),(17,17,'Tom Brown','2024-05-25','Performed wheel alignment',500.00),(18,18,'Jessica Williams','2024-06-30','Fixed transmission',160.00),(19,19,'Michael Johnson','2024-07-05','Repaired exhaust system',180.00),(20,20,'Laura Anderson','2024-08-10','Installed new headlights',150.00);
/*!40000 ALTER TABLE `servicereport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-13  9:54:36
