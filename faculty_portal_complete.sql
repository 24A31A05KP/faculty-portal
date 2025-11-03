-- MySQL dump 10.13  Distrib 8.4.6, for Win64 (x86_64)
--
-- Host: localhost    Database: faculty_portal
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Current Database: `faculty_portal`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `faculty_portal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `faculty_portal`;

--
-- Table structure for table `book_chapters`
--

DROP TABLE IF EXISTS `book_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_chapters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` int NOT NULL,
  `department` enum('CIVIL','EEE','MECH','ECE','CSE','CSE-AI','CSE-DS','CSE-AI&ML','CSE-CS','IT') NOT NULL,
  `chapter_title` text NOT NULL,
  `book_title` text NOT NULL,
  `authors` text NOT NULL,
  `faculty_author_position` enum('First Author','Second Author','Corresponding Author','Co-author') NOT NULL,
  `corresponding_author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `isbn_number` varchar(50) DEFAULT NULL,
  `chapter_doi` varchar(100) DEFAULT NULL,
  `year_of_publication` int NOT NULL,
  `indexing` enum('Scopus','SCI','WoS') DEFAULT NULL,
  `quartile` enum('Q1','Q2','Q3','Q4') DEFAULT NULL,
  `impact_factor` decimal(5,3) DEFAULT NULL,
  `chapter_link` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_book_chapters_faculty` (`faculty_id`),
  CONSTRAINT `book_chapters_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_chapters`
--

LOCK TABLES `book_chapters` WRITE;
/*!40000 ALTER TABLE `book_chapters` DISABLE KEYS */;
INSERT INTO `book_chapters` VALUES (9,31,'CSE','Machine Learning in Healthcare Informatics','Advances in Artificial Intelligence for Healthcare','Ravi Sharma, A. Kumar, S. Verma','First Author','Ravi Sharma','Springer Nature','978-3-031-12345-6','10.1007/978-3-031-12345-6_8',2023,'Scopus','Q1',5.800,'https://link.springer.com/chapter/123456','2025-11-03 18:49:52','2025-11-03 18:49:52'),(10,32,'ECE','Wireless Sensor Networks for Environmental Monitoring','Internet of Things and Smart Environments','Anil Kumar, P. Singh, R. Gupta','Corresponding Author','Anil Kumar','Elsevier','978-0-12-345678-9','10.1016/B978-0-12-345678-9.00012-3',2022,'Scopus','Q1',6.200,'https://www.sciencedirect.com/science/article/123456789','2025-11-03 18:49:52','2025-11-03 18:49:52'),(11,33,'MECH','Composite Materials in Aerospace Engineering','Advanced Materials for Aerospace Applications','Priya Singh, S. Reddy, M. Joshi','First Author','Priya Singh','CRC Press','978-1-138-12345-6','10.1201/9781138123456-15',2021,'Scopus','Q1',4.500,'https://www.taylorfrancis.com/chapters/123456','2025-11-03 18:49:52','2025-11-03 18:49:52'),(12,34,'CSE','Blockchain Technology in Cloud Security','Blockchain and Distributed Systems Security','Suresh Reddy, V. Patel, N. Rao','Corresponding Author','Suresh Reddy','Wiley','978-1-119-12345-6','10.1002/9781119123456.ch7',2023,'Scopus','Q1',5.900,'https://onlinelibrary.wiley.com/doi/123456','2025-11-03 18:49:52','2025-11-03 18:49:52'),(13,35,'CSE','Deep Learning for Medical Image Processing','Artificial Intelligence in Medical Imaging','Sneha Reddy, R. Sharma, A. Kumar','First Author','Sneha Reddy','Academic Press','978-0-123-45678-9','10.1016/B978-0-123-45678-9.00009-2',2022,'Scopus','Q1',6.800,'https://www.sciencedirect.com/science/article/234567890','2025-11-03 18:49:52','2025-11-03 18:49:52'),(14,36,'EEE','Renewable Energy Integration Strategies','Smart Grid Technologies and Applications','Vikram Patel, A. Kumar, S. Das','First Author','Vikram Patel','Springer Nature','978-3-031-23456-7','10.1007/978-3-031-23456-7_11',2021,'Scopus','Q1',5.600,'https://link.springer.com/chapter/345678','2025-11-03 18:49:52','2025-11-03 18:49:52'),(15,37,'CIVIL','Sustainable Construction Practices','Green Building Materials and Technologies','Meera Joshi, P. Singh, R. Malhotra','Corresponding Author','Meera Joshi','Elsevier','978-0-123-56789-0','10.1016/B978-0-123-56789-0.00015-8',2020,'Scopus','Q1',5.200,'https://www.sciencedirect.com/science/article/456789012','2025-11-03 18:49:52','2025-11-03 18:49:52'),(16,38,'IT','Cybersecurity in Internet of Things','IoT Security and Privacy','Rajesh Kumar, S. Reddy, M. Joshi','First Author','Rajesh Kumar','CRC Press','978-1-138-23456-7','10.1201/9781138234567-9',2023,'Scopus','Q1',5.100,'https://www.taylorfrancis.com/chapters/456789','2025-11-03 18:49:52','2025-11-03 18:49:52');
/*!40000 ALTER TABLE `book_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conference_publications`
--

DROP TABLE IF EXISTS `conference_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conference_publications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` int NOT NULL,
  `department` enum('CIVIL','EEE','MECH','ECE','CSE','CSE-AI','CSE-DS','CSE-AI&ML','CSE-CS','IT') NOT NULL,
  `paper_title` text NOT NULL,
  `authors` text NOT NULL,
  `corresponding_author` varchar(255) NOT NULL,
  `faculty_author_position` enum('First Author','Second Author','Corresponding Author','Co-author') NOT NULL,
  `conference_name` varchar(500) NOT NULL,
  `conference_venue` varchar(500) DEFAULT NULL,
  `conference_dates` varchar(100) DEFAULT NULL,
  `proceedings_title` varchar(500) DEFAULT NULL,
  `isbn_issn` varchar(50) DEFAULT NULL,
  `doi` varchar(100) DEFAULT NULL,
  `year_of_publication` int NOT NULL,
  `indexing` enum('Scopus','SCI','WoS') DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `conference_link` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_conferences_faculty` (`faculty_id`),
  CONSTRAINT `conference_publications_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference_publications`
--

LOCK TABLES `conference_publications` WRITE;
/*!40000 ALTER TABLE `conference_publications` DISABLE KEYS */;
INSERT INTO `conference_publications` VALUES (9,31,'CSE','Real-time Anomaly Detection in Healthcare Data Streams','Ravi Sharma, A. Kumar, S. Verma','Ravi Sharma','First Author','IEEE International Conference on Data Science','Virtual Conference','2023-12-10 to 2023-12-12','Proceedings of IEEE ICDS 2023','978-1-6654-1234-5','10.1109/ICDS.2023.1234567',2023,'Scopus','IEEE','https://ieeexplore.ieee.org/document/1234567','2025-11-03 18:49:29','2025-11-03 18:49:29'),(10,32,'ECE','Energy-efficient Wireless Sensor Networks for Smart Cities','Anil Kumar, P. Singh, R. Gupta','Anil Kumar','Corresponding Author','International Conference on Communication Systems','Bangalore, India','2022-11-15 to 2022-11-17','ICCSC 2022 Proceedings','978-1-6654-2345-6','10.1109/ICCSC.2022.2345678',2022,'Scopus','Springer','https://link.springer.com/chapter/123456','2025-11-03 18:49:29','2025-11-03 18:49:29'),(11,33,'MECH','Optimization of Composite Material Structures using Genetic Algorithms','Priya Singh, S. Reddy, M. Joshi','Priya Singh','First Author','International Conference on Mechanical Engineering','Hyderabad, India','2021-10-20 to 2021-10-22','ICME 2021 Proceedings','978-1-6654-3456-7','10.1007/978-3-031-12345-6_12',2021,'Scopus','Springer','https://link.springer.com/chapter/234567','2025-11-03 18:49:29','2025-11-03 18:49:29'),(12,34,'CSE','Blockchain for Secure Cloud Data Management','Suresh Reddy, V. Patel, N. Rao','Suresh Reddy','Corresponding Author','ACM Conference on Computer and Communications Security','London, UK','2023-09-05 to 2023-09-08','CCS 2023 Proceedings','978-1-4503-1234-5','10.1145/3576915.3623153',2023,'Scopus','ACM','https://dl.acm.org/doi/123456789','2025-11-03 18:49:29','2025-11-03 18:49:29'),(13,35,'CSE','Deep Neural Networks for Medical Image Analysis','Sneha Reddy, R. Sharma, A. Kumar','Sneha Reddy','First Author','International Conference on Medical Image Computing','Virtual Conference','2022-08-12 to 2022-08-14','MICCAI 2022 Proceedings','978-3-031-16431-6','10.1007/978-3-031-16431-6_45',2022,'Scopus','Springer','https://link.springer.com/chapter/345678','2025-11-03 18:49:29','2025-11-03 18:49:29'),(14,36,'EEE','AI-based Power Quality Monitoring in Smart Grids','Vikram Patel, A. Kumar, S. Das','Vikram Patel','First Author','IEEE Power and Energy Society Conference','Chennai, India','2021-07-20 to 2021-07-22','PES 2021 Proceedings','978-1-6654-4567-8','10.1109/PES.2021.3456789',2021,'Scopus','IEEE','https://ieeexplore.ieee.org/document/3456789','2025-11-03 18:49:29','2025-11-03 18:49:29'),(15,37,'CIVIL','Sustainable Materials in Modern Construction','Meera Joshi, P. Singh, R. Malhotra','Meera Joshi','Corresponding Author','International Conference on Sustainable Construction','Delhi, India','2020-06-15 to 2020-06-17','ICSC 2020 Proceedings','978-1-6654-5678-9','10.1061/9780784481234.045',2020,'Scopus','ASCE','https://ascelibrary.org/doi/456789012','2025-11-03 18:49:29','2025-11-03 18:49:29'),(16,38,'IT','Machine Learning for IoT Security Enhancement','Rajesh Kumar, S. Reddy, M. Joshi','Rajesh Kumar','First Author','International Conference on Internet of Things','Mumbai, India','2023-05-10 to 2023-05-12','ICIoT 2023 Proceedings','978-1-6654-6789-0','10.1109/ICIoT.2023.4567890',2023,'Scopus','IEEE','https://ieeexplore.ieee.org/document/4567890','2025-11-03 18:49:29','2025-11-03 18:49:29');
/*!40000 ALTER TABLE `conference_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) NOT NULL,
  `name_ssc` varchar(100) NOT NULL,
  `department` enum('CIVIL','EEE','MECH','ECE','CSE','CSE-AI','CSE-DS','CSE-AI&ML','CSE-CS','IT') DEFAULT NULL,
  `designation` enum('Professor','Associate Professor','Assistant Professor') DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `alternative_mobile` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dob` date DEFAULT NULL,
  `gender` enum('M','F','Other') DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `present_address` text,
  `permanent_address` text,
  `aadhaar_number` varchar(12) DEFAULT NULL,
  `pan_number` varchar(10) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `appointment_type` enum('Regular','Visiting','Adhoc','Others') DEFAULT NULL,
  `bank_account_no` varchar(20) DEFAULT NULL,
  `ifsc_code` varchar(11) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `name_change` tinyint(1) DEFAULT '0',
  `name_change_proof` varchar(500) DEFAULT NULL,
  `document_path` varchar(500) DEFAULT NULL,
  `experience_category` enum('0-5','6-10','10+') DEFAULT '0-5',
  `caste` varchar(50) DEFAULT 'General (Open Category)',
  `subcaste` varchar(50) DEFAULT NULL,
  `ratified` enum('Yes','No') DEFAULT 'No',
  `ratified_designation` varchar(100) DEFAULT NULL,
  `ratification_date` date DEFAULT NULL,
  `previous_employment_date` date DEFAULT NULL,
  `resignation_date` date DEFAULT NULL,
  `teaching_exp_pragati` decimal(4,1) DEFAULT '0.0',
  `teaching_exp_other` decimal(4,1) DEFAULT '0.0',
  `industrial_exp` decimal(4,1) DEFAULT '0.0',
  `overall_exp` decimal(4,1) DEFAULT '0.0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_faculty_department` (`department`),
  KEY `idx_faculty_designation` (`designation`),
  KEY `idx_faculty_experience` (`experience_category`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (31,'PEC001','Dr. Ravi Sharma','CSE','Professor','ravi.sharma@pragati.ac.in','9876543210',NULL,'2025-11-03 18:38:06','2025-11-03 18:38:06','1978-05-15','M',NULL,NULL,'Mr. Suresh Sharma','Faculty Quarters, Pragati Engineering College','H.No: 12-34, Gandhi Nagar, Hyderabad',NULL,NULL,'State Bank of India','2010-06-01','Regular','12345678901234','SBIN0000123',NULL,0,NULL,NULL,'10+','General (Open Category)',NULL,'No',NULL,NULL,NULL,NULL,13.5,5.0,2.0,20.5),(32,'PEC002','Dr. Anil Kumar','ECE','Associate Professor','anil.kumar@pragati.ac.in','9876543211',NULL,'2025-11-03 18:38:06','2025-11-03 18:38:06','1980-08-20','M',NULL,NULL,'Mr. Rajesh Kumar','Faculty Quarters, Pragati Engineering College','Plot No: 45, S.R. Nagar, Vijayawada',NULL,NULL,'Andhra Bank','2012-03-15','Regular','23456789012345','ANDB0000123',NULL,0,NULL,NULL,'10+','OBC (Other Backward Classes)',NULL,'No',NULL,NULL,NULL,NULL,11.2,4.0,3.0,18.2),(33,'PEC003','Dr. Priya Singh','MECH','Professor','dean.academics@pragati.ac.in','9876543212',NULL,'2025-11-03 18:38:06','2025-11-03 18:38:06','1975-12-10','F',NULL,NULL,'Mr. Ramesh Singh','Faculty Quarters, Pragati Engineering College','H.No: 56-78, Ameerpet, Hyderabad',NULL,NULL,'HDFC Bank','2008-01-20','Regular','34567890123456','HDFC0000123',NULL,0,NULL,NULL,'10+','General (Open Category)',NULL,'No',NULL,NULL,NULL,NULL,15.8,6.0,4.0,25.8),(34,'PEC004','Prof. Suresh Reddy','CSE','Professor','hod.cse@pragati.ac.in','9876543213',NULL,'2025-11-03 18:38:06','2025-11-03 18:38:06','1982-03-25','M',NULL,NULL,'Mr. Krishna Reddy','Faculty Quarters, Pragati Engineering College','Flat No: 101, KPHB, Hyderabad',NULL,NULL,'ICICI Bank','2015-07-10','Regular','45678901234567','ICIC0000123',NULL,0,NULL,NULL,'10+','OBC (Other Backward Classes)',NULL,'No',NULL,NULL,NULL,NULL,8.5,3.0,2.0,13.5),(35,'PEC005','Ms. Sneha Reddy','CSE','Assistant Professor','sneha.reddy@pragati.ac.in','9876543214',NULL,'2025-11-03 18:38:06','2025-11-03 18:38:06','1990-07-15','F',NULL,NULL,'Mr. Venkat Reddy','Faculty Quarters, Pragati Engineering College','H.No: 23-45, Madhapur, Hyderabad',NULL,NULL,'Axis Bank','2018-06-01','Regular','56789012345678','UTIB0000123',NULL,0,NULL,NULL,'6-10','General (Open Category)',NULL,'No',NULL,NULL,NULL,NULL,5.2,1.0,0.0,6.2),(36,'PEC006','Mr. Vikram Patel','EEE','Assistant Professor','vikram.patel@pragati.ac.in','9876543215',NULL,'2025-11-03 18:38:06','2025-11-03 18:38:06','1988-11-30','M',NULL,NULL,'Mr. Mahesh Patel','Faculty Quarters, Pragati Engineering College','Plot No: 67, Gachibowli, Hyderabad',NULL,NULL,'Kotak Mahindra Bank','2019-01-15','Regular','67890123456789','KKBK0000123',NULL,0,NULL,NULL,'6-10','SC (Scheduled Castes)',NULL,'No',NULL,NULL,NULL,NULL,4.3,0.0,1.5,5.8),(37,'PEC007','Dr. Meera Joshi','CIVIL','Associate Professor','office.manager@pragati.ac.in','9876543216',NULL,'2025-11-03 18:38:06','2025-11-03 18:38:06','1985-04-18','F',NULL,NULL,'Mr. Arun Joshi','Faculty Quarters, Pragati Engineering College','Flat No: 205, Jubilee Hills, Hyderabad',NULL,NULL,'Punjab National Bank','2014-08-20','Regular','78901234567890','PUNB0000123',NULL,0,NULL,NULL,'10+','General (Open Category)',NULL,'No',NULL,NULL,NULL,NULL,9.1,2.0,1.0,12.1),(38,'PEC008','Mr. Rajesh Kumar','IT','Assistant Professor','iqac.admin@pragati.ac.in','9876543217',NULL,'2025-11-03 18:38:08','2025-11-03 18:38:08','1992-02-14','M',NULL,NULL,'Mr. S. Kumar','Faculty Quarters, Pragati Engineering College','H.No: 89-90, Secunderabad',NULL,NULL,'Canara Bank','2020-03-01','Regular','89012345678901','CNRB0000123',NULL,0,NULL,NULL,'0-5','ST (Scheduled Tribes)',NULL,'No',NULL,NULL,NULL,NULL,3.2,0.0,0.0,3.2);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_backup`
--

DROP TABLE IF EXISTS `faculty_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_backup` (
  `id` int NOT NULL DEFAULT '0',
  `employee_id` varchar(50) NOT NULL,
  `name_ssc` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dob` date DEFAULT NULL,
  `gender` enum('M','F','Other') DEFAULT NULL,
  `marital_status` enum('Single','Married','Divorced','Widowed') DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `present_address` text,
  `permanent_address` text,
  `aadhaar_number` varchar(12) DEFAULT NULL,
  `pan_number` varchar(10) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `appointment_type` enum('Regular','Visiting','Adhoc','Others') DEFAULT NULL,
  `bank_account_no` varchar(20) DEFAULT NULL,
  `ifsc_code` varchar(11) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `name_change` tinyint(1) DEFAULT '0',
  `name_change_proof` varchar(500) DEFAULT NULL,
  `document_path` varchar(500) DEFAULT NULL,
  `experience_category` varchar(20) DEFAULT '0-5',
  `caste` varchar(50) DEFAULT 'General (Open Category)',
  `subcaste` varchar(50) DEFAULT '',
  `ratified` enum('Yes','No') DEFAULT 'No',
  `ratified_designation` varchar(100) DEFAULT '',
  `ratification_date` date DEFAULT NULL,
  `previous_employment_date` date DEFAULT NULL,
  `resignation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_backup`
--

LOCK TABLES `faculty_backup` WRITE;
/*!40000 ALTER TABLE `faculty_backup` DISABLE KEYS */;
INSERT INTO `faculty_backup` VALUES (24,'CS001','Dr. Rajesh Kumar','Computer Science','Professor','rajesh.kumar@college.edu','9876543210','2025-10-12 10:56:16','1980-05-15','M','Married','Suresh Kumar','123 Tech Park, Bangalore','456 MG Road, Bangalore','123456789012','ABCPR1234D','2015-07-01','Regular','12345678901234','SBIN0001234','uploads/photos/CS001_Screenshot_2025-10-12_162505.png',0,NULL,NULL,'6-10','General (Open Category)','','No','',NULL,NULL,NULL),(25,'MATH002','Dr. Priya Sharma','CIVIL','Associate Professor','priya.sharma@college.edu','9876543211','2025-10-12 11:08:10','1985-08-22','F','Married','Ramesh Sharma','321 College Road, Mumbai','789 Academic Lane, Bangalore','123456789013','ABCPS1234E','2018-06-15','Visiting','12345678901235','SBIN0001235','uploads/photos/MATH002_Screenshot_2025-10-12_163751.png',0,NULL,NULL,'0-5','OBC (Other Backward Classes)','hgcfx','Yes','gsh','3264-02-04','0047-06-05',NULL);
/*!40000 ALTER TABLE `faculty_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_backup_old`
--

DROP TABLE IF EXISTS `faculty_backup_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_backup_old` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) NOT NULL,
  `name_ssc` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dob` date DEFAULT NULL,
  `gender` enum('M','F','Other') DEFAULT NULL,
  `marital_status` enum('Single','Married','Divorced','Widowed') DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `present_address` text,
  `permanent_address` text,
  `aadhaar_number` varchar(12) DEFAULT NULL,
  `pan_number` varchar(10) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `appointment_type` enum('Regular','Visiting','Adhoc','Others') DEFAULT NULL,
  `bank_account_no` varchar(20) DEFAULT NULL,
  `ifsc_code` varchar(11) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `name_change` tinyint(1) DEFAULT '0',
  `name_change_proof` varchar(500) DEFAULT NULL,
  `document_path` varchar(500) DEFAULT NULL,
  `experience_category` varchar(20) DEFAULT '0-5',
  `caste` varchar(50) DEFAULT 'General (Open Category)',
  `subcaste` varchar(50) DEFAULT '',
  `ratified` enum('Yes','No') DEFAULT 'No',
  `ratified_designation` varchar(100) DEFAULT '',
  `ratification_date` date DEFAULT NULL,
  `previous_employment_date` date DEFAULT NULL,
  `resignation_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_backup_old`
--

LOCK TABLES `faculty_backup_old` WRITE;
/*!40000 ALTER TABLE `faculty_backup_old` DISABLE KEYS */;
INSERT INTO `faculty_backup_old` VALUES (24,'CS001','Dr. Rajesh Kumar','Computer Science','Professor','rajesh.kumar@college.edu','9876543210','2025-10-12 10:56:16','1980-05-15','M','Married','Suresh Kumar','123 Tech Park, Bangalore','456 MG Road, Bangalore','123456789012','ABCPR1234D','2015-07-01','Regular','12345678901234','SBIN0001234','uploads/photos/CS001_Screenshot_2025-10-12_162505.png',0,NULL,NULL,'6-10','General (Open Category)','','No','',NULL,NULL,NULL),(25,'MATH002','Dr. Priya Sharma','CIVIL','Associate Professor','priya.sharma@college.edu','9876543211','2025-10-12 11:08:10','1985-08-22','F','Married','Ramesh Sharma','321 College Road, Mumbai','789 Academic Lane, Bangalore','123456789013','ABCPS1234E','2018-06-15','Visiting','12345678901235','SBIN0001235','uploads/photos/MATH002_Screenshot_2025-10-12_163751.png',0,NULL,NULL,'0-5','OBC (Other Backward Classes)','hgcfx','Yes','gsh','3264-02-04','0047-06-05',NULL);
/*!40000 ALTER TABLE `faculty_backup_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_temp`
--

DROP TABLE IF EXISTS `faculty_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_temp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) NOT NULL,
  `name_ssc` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dob` date DEFAULT NULL,
  `gender` enum('M','F','Other') DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `present_address` text,
  `permanent_address` text,
  `aadhaar_number` varchar(12) DEFAULT NULL,
  `pan_number` varchar(10) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `appointment_type` enum('Regular','Visiting','Adhoc','Others') DEFAULT NULL,
  `bank_account_no` varchar(20) DEFAULT NULL,
  `ifsc_code` varchar(11) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `name_change` tinyint(1) DEFAULT '0',
  `name_change_proof` varchar(500) DEFAULT NULL,
  `document_path` varchar(500) DEFAULT NULL,
  `experience_category` varchar(20) DEFAULT '0-5',
  `caste` varchar(50) DEFAULT 'General (Open Category)',
  `subcaste` varchar(50) DEFAULT '',
  `ratified` enum('Yes','No') DEFAULT 'No',
  `ratified_designation` varchar(100) DEFAULT '',
  `ratification_date` date DEFAULT NULL,
  `previous_employment_date` date DEFAULT NULL,
  `resignation_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_temp`
--

LOCK TABLES `faculty_temp` WRITE;
/*!40000 ALTER TABLE `faculty_temp` DISABLE KEYS */;
INSERT INTO `faculty_temp` VALUES (24,'CS001','Dr. Rajesh Kumar','Computer Science','Professor','rajesh.kumar@college.edu','9876543210','2025-10-12 10:56:16','1980-05-15','M','Married','Suresh Kumar','123 Tech Park, Bangalore','456 MG Road, Bangalore','123456789012','ABCPR1234D','2015-07-01','Regular','12345678901234','SBIN0001234','uploads/photos/CS001_Screenshot_2025-10-12_162505.png',0,NULL,NULL,'6-10','General (Open Category)','','No','',NULL,NULL,NULL),(25,'MATH002','Dr. Priya Sharma','CIVIL','Associate Professor','priya.sharma@college.edu','9876543211','2025-10-12 11:08:10','1985-08-22','F','Married','Ramesh Sharma','321 College Road, Mumbai','789 Academic Lane, Bangalore','123456789013','ABCPS1234E','2018-06-15','Visiting','12345678901235','SBIN0001235','uploads/photos/MATH002_Screenshot_2025-10-12_163751.png',0,NULL,NULL,'0-5','OBC (Other Backward Classes)','hgcfx','Yes','gsh','3264-02-04','0047-06-05',NULL);
/*!40000 ALTER TABLE `faculty_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_publications`
--

DROP TABLE IF EXISTS `journal_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_publications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` int NOT NULL,
  `department` enum('CIVIL','EEE','MECH','ECE','CSE','CSE-AI','CSE-DS','CSE-AI&ML','CSE-CS','IT') NOT NULL,
  `first_author` varchar(255) NOT NULL,
  `corresponding_author` varchar(255) NOT NULL,
  `other_authors` text,
  `faculty_author_position` enum('First Author','Second Author','Corresponding Author','Co-author') NOT NULL,
  `paper_title_apa` text NOT NULL,
  `journal_name` varchar(500) NOT NULL,
  `volume_issue` varchar(100) DEFAULT NULL,
  `page_numbers` varchar(50) DEFAULT NULL,
  `issn_number` varchar(20) DEFAULT NULL,
  `doi` varchar(100) DEFAULT NULL,
  `year_of_publication` int NOT NULL,
  `indexing` enum('Scopus','SCI','SCIE','WoS') DEFAULT NULL,
  `quartile` enum('Q1','Q2','Q3','Q4') DEFAULT NULL,
  `impact_factor` decimal(5,3) DEFAULT NULL,
  `journal_link` text,
  `publisher` varchar(255) DEFAULT NULL,
  `funding_agency` varchar(255) DEFAULT NULL,
  `remarks` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_journals_faculty` (`faculty_id`),
  CONSTRAINT `journal_publications_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_publications`
--

LOCK TABLES `journal_publications` WRITE;
/*!40000 ALTER TABLE `journal_publications` DISABLE KEYS */;
INSERT INTO `journal_publications` VALUES (9,31,'CSE','Ravi Sharma','Ravi Sharma','A. Kumar, S. Reddy','First Author','Sharma, R., Kumar, A., & Reddy, S. (2023). Machine Learning Approaches for Predictive Analytics in Healthcare Systems.','IEEE Transactions on Neural Networks','Vol. 34, Issue 5','123-135','1234-5678','10.1109/TNN.2023.1234567',2023,'SCI','Q1',8.456,'https://ieeexplore.ieee.org/document/1234567','IEEE',NULL,NULL,'2025-11-03 18:48:41','2025-11-03 18:48:41'),(10,32,'ECE','Anil Kumar','Anil Kumar','P. Singh, M. Joshi','Corresponding Author','Kumar, A., Singh, P., & Joshi, M. (2022). IoT-based Smart Grid Monitoring System using Wireless Sensor Networks.','IEEE Internet of Things Journal','Vol. 9, Issue 12','2345-2356','2327-4662','10.1109/JIOT.2022.9876543',2022,'SCI','Q1',9.471,'https://ieeexplore.ieee.org/document/9876543','IEEE',NULL,NULL,'2025-11-03 18:48:41','2025-11-03 18:48:41'),(11,33,'MECH','Priya Singh','Priya Singh','R. Gupta, S. Verma','First Author','Singh, P., Gupta, R., & Verma, S. (2021). Finite Element Analysis of Composite Materials for Aerospace Applications.','Composite Structures','Vol. 256','113456','0263-8223','10.1016/j.compstruct.2021.113456',2021,'SCI','Q1',6.603,'https://www.sciencedirect.com/science/article/123456789','Elsevier',NULL,NULL,'2025-11-03 18:48:41','2025-11-03 18:48:41'),(12,34,'CSE','Suresh Reddy','Suresh Reddy','V. Patel, N. Rao','Corresponding Author','Reddy, S., Patel, V., & Rao, N. (2023). Blockchain-based Secure Data Sharing in Cloud Computing Environments.','Journal of Network and Computer Applications','Vol. 215','103456','1084-8045','10.1016/j.jnca.2023.103456',2023,'SCI','Q1',8.518,'https://www.sciencedirect.com/science/article/234567890','Elsevier',NULL,NULL,'2025-11-03 18:48:41','2025-11-03 18:48:41'),(13,35,'CSE','Sneha Reddy','Sneha Reddy','R. Sharma','First Author','Reddy, S., & Sharma, R. (2022). Deep Learning for Image Recognition in Medical Diagnostics.','Computer Methods and Programs in Biomedicine','Vol. 221','106845','0169-2607','10.1016/j.cmpb.2022.106845',2022,'SCI','Q1',7.027,'https://www.sciencedirect.com/science/article/345678901','Elsevier',NULL,NULL,'2025-11-03 18:48:41','2025-11-03 18:48:41'),(14,36,'EEE','Vikram Patel','Vikram Patel','A. Kumar, S. Das','First Author','Patel, V., Kumar, A., & Das, S. (2021). Renewable Energy Integration in Smart Grid using AI Techniques.','Renewable Energy','Vol. 178','1234-1245','0960-1481','10.1016/j.renene.2021.123456',2021,'SCI','Q1',8.634,'https://www.sciencedirect.com/science/article/456789012','Elsevier',NULL,NULL,'2025-11-03 18:48:41','2025-11-03 18:48:41'),(15,37,'CIVIL','Meera Joshi','Meera Joshi','P. Singh, R. Malhotra','Corresponding Author','Joshi, M., Singh, P., & Malhotra, R. (2020). Sustainable Construction Materials for Green Building Applications.','Construction and Building Materials','Vol. 265','120356','0950-0618','10.1016/j.conbuildmat.2020.120356',2020,'SCI','Q1',7.693,'https://www.sciencedirect.com/science/article/567890123','Elsevier',NULL,NULL,'2025-11-03 18:48:41','2025-11-03 18:48:41'),(16,38,'IT','Rajesh Kumar','Rajesh Kumar','S. Reddy, M. Joshi','First Author','Kumar, R., Reddy, S., & Joshi, M. (2023). Cybersecurity Framework for IoT Devices using Machine Learning.','Computers & Security','Vol. 128','103156','0167-4048','10.1016/j.cose.2023.103156',2023,'SCI','Q1',6.354,'https://www.sciencedirect.com/science/article/678901234','Elsevier',NULL,NULL,'2025-11-03 18:48:41','2025-11-03 18:48:41');
/*!40000 ALTER TABLE `journal_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patents`
--

DROP TABLE IF EXISTS `patents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` int NOT NULL,
  `department` enum('CIVIL','EEE','MECH','ECE','CSE','CSE-AI','CSE-DS','CSE-AI&ML','CSE-CS','IT') NOT NULL,
  `patent_title` text NOT NULL,
  `inventors` text NOT NULL,
  `corresponding_applicant` varchar(255) NOT NULL,
  `faculty_author_position` enum('First Inventor','Second Inventor','Corresponding Applicant','Co-inventor') NOT NULL,
  `patent_application_number` varchar(100) NOT NULL,
  `filing_date` date DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `grant_date` date DEFAULT NULL,
  `patent_office` varchar(255) NOT NULL,
  `status` enum('Filed','Published','Granted') NOT NULL,
  `patent_type` enum('National','International') NOT NULL,
  `patent_link` text,
  `certificate_link` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_patents_faculty` (`faculty_id`),
  CONSTRAINT `patents_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patents`
--

LOCK TABLES `patents` WRITE;
/*!40000 ALTER TABLE `patents` DISABLE KEYS */;
INSERT INTO `patents` VALUES (9,31,'CSE','AI-based Healthcare Monitoring System using Machine Learning','Ravi Sharma, A. Kumar, S. Verma','Ravi Sharma','First Inventor','202341012345','2023-01-15','2023-07-20',NULL,'Indian Patent Office','Published','National','https://ipindia.gov.in/123456','https://drive.google.com/patent1','2025-11-03 18:50:21','2025-11-03 18:50:21'),(10,32,'ECE','IoT-based Smart Agriculture Monitoring Device','Anil Kumar, P. Singh, R. Gupta','Anil Kumar','Corresponding Applicant','202341023456','2022-03-20','2022-09-25','2023-06-15','Indian Patent Office','Granted','National','https://ipindia.gov.in/234567','https://drive.google.com/patent2','2025-11-03 18:50:21','2025-11-03 18:50:21'),(11,33,'MECH','Composite Material for Lightweight Automotive Applications','Priya Singh, S. Reddy, M. Joshi','Priya Singh','First Inventor','PCT/IN2021/050123','2021-05-10','2021-11-15','2023-01-20','WIPO','Granted','International','https://patentscope.wipo.int/345678','https://drive.google.com/patent3','2025-11-03 18:50:21','2025-11-03 18:50:21'),(12,34,'CSE','Blockchain-based Secure Data Storage System','Suresh Reddy, V. Patel, N. Rao','Suresh Reddy','Corresponding Applicant','202341034567','2023-02-28','2023-08-30',NULL,'Indian Patent Office','Published','National','https://ipindia.gov.in/345678','https://drive.google.com/patent4','2025-11-03 18:50:21','2025-11-03 18:50:21'),(13,35,'CSE','Medical Image Analysis System using Deep Learning','Sneha Reddy, R. Sharma, A. Kumar','Sneha Reddy','First Inventor','202341045678','2022-04-15','2022-10-20','2023-08-10','Indian Patent Office','Granted','National','https://ipindia.gov.in/456789','https://drive.google.com/patent5','2025-11-03 18:50:21','2025-11-03 18:50:21'),(14,36,'EEE','Smart Grid Power Quality Monitoring Device','Vikram Patel, A. Kumar, S. Das','Vikram Patel','First Inventor','202341056789','2021-06-20','2021-12-25','2023-03-15','Indian Patent Office','Granted','National','https://ipindia.gov.in/567890','https://drive.google.com/patent6','2025-11-03 18:50:21','2025-11-03 18:50:21'),(15,37,'CIVIL','Eco-friendly Construction Material from Industrial Waste','Meera Joshi, P. Singh, R. Malhotra','Meera Joshi','Corresponding Applicant','202341067890','2020-07-10','2021-01-15','2022-11-20','Indian Patent Office','Granted','National','https://ipindia.gov.in/678901','https://drive.google.com/patent7','2025-11-03 18:50:21','2025-11-03 18:50:21'),(16,38,'IT','IoT Device Security Framework using Machine Learning','Rajesh Kumar, S. Reddy, M. Joshi','Rajesh Kumar','First Inventor','202341078901','2023-03-05','2023-09-10',NULL,'Indian Patent Office','Published','National','https://ipindia.gov.in/789012','https://drive.google.com/patent8','2025-11-03 18:50:21','2025-11-03 18:50:21');
/*!40000 ALTER TABLE `patents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualifications`
--

DROP TABLE IF EXISTS `qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` int NOT NULL,
  `qualification_type` enum('SSC','Inter','Degree','PG','Ph.D','Other') NOT NULL,
  `domain_specialization` varchar(100) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `year_of_passing` int DEFAULT NULL,
  `institution_name` varchar(255) NOT NULL,
  `highest_degree` tinyint(1) DEFAULT '0',
  `pursuing` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `faculty_id` (`faculty_id`),
  KEY `idx_qualifications_faculty` (`faculty_id`),
  CONSTRAINT `qualifications_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_backup_old` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualifications`
--

LOCK TABLES `qualifications` WRITE;
/*!40000 ALTER TABLE `qualifications` DISABLE KEYS */;
INSERT INTO `qualifications` VALUES (3,24,'Ph.D','computer science',8.60,2020,'University of Hyderabad',1,0,'2025-10-12 10:58:15'),(4,24,'PG','data science',8.00,2010,'University of Hyderabad',0,0,'2025-10-12 10:59:17');
/*!40000 ALTER TABLE `qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `role` enum('Faculty','Office','IQAC') DEFAULT 'Faculty',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (25,'admin','admin@college.edu','admin123',1,'2025-11-03 18:18:18','2025-11-03 18:38:46','2025-11-03 18:38:46','IQAC'),(26,'faculty1','faculty1@college.edu','faculty123',1,'2025-11-03 18:18:20','2025-11-03 18:25:05','2025-11-03 18:25:05','Faculty'),(27,'office','office@gmail.com','office123',1,'2025-11-03 18:26:07','2025-11-03 18:27:06','2025-11-03 18:27:06','Office'),(38,'iqac_admin','iqac.admin@pragati.ac.in','Admin123!',1,'2025-11-03 18:37:11','2025-11-03 18:37:11',NULL,'IQAC'),(39,'office_manager','office.manager@pragati.ac.in','Office123!',1,'2025-11-03 18:37:11','2025-11-03 18:37:11',NULL,'Office'),(40,'dean_academics','dean.academics@pragati.ac.in','Dean123!',1,'2025-11-03 18:37:11','2025-11-03 18:52:36','2025-11-03 18:52:36','IQAC'),(41,'hod_cse','hod.cse@pragati.ac.in','Hod123!',1,'2025-11-03 18:37:11','2025-11-03 18:42:29','2025-11-03 18:42:29','Office'),(42,'prof_sharma','ravi.sharma@pragati.ac.in','Faculty123!',1,'2025-11-03 18:37:11','2025-11-03 18:37:11',NULL,'Faculty'),(43,'dr_kumar','anil.kumar@pragati.ac.in','Faculty123!',1,'2025-11-03 18:37:11','2025-11-03 18:37:11',NULL,'Faculty'),(44,'ms_reddy','sneha.reddy@pragati.ac.in','Faculty123!',1,'2025-11-03 18:37:11','2025-11-03 18:37:11',NULL,'Faculty'),(45,'mr_patel','vikram.patel@pragati.ac.in','Faculty123!',1,'2025-11-03 18:37:11','2025-11-03 18:45:46','2025-11-03 18:45:46','Faculty');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `faculty_portal_backup`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `faculty_portal_backup` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `faculty_portal_backup`;

--
-- Current Database: `faculty_portal_backup_current`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `faculty_portal_backup_current` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `faculty_portal_backup_current`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-04  0:56:21
