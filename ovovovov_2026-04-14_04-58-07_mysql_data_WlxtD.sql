-- MySQL dump 10.13  Distrib 8.4.8, for Linux (x86_64)
--
-- Host: localhost    Database: ovovovov
-- ------------------------------------------------------
-- Server version	8.4.8

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
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `click_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
INSERT INTO `admin_notifications` VALUES (4,2,0,0,'New member registered',0,'/admin/users/detail/2','2026-04-12 18:49:23','2026-04-12 18:49:23');
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_password_resets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
INSERT INTO `admin_password_resets` VALUES (1,'deepveloce@gmail.com','174062',1,'2026-04-12 09:16:17');
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ev` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'deepay','deepveloce@gmail.com','admin',NULL,'69dbbefb3b33a1776008955.png','$2y$12$yPPnqTHAn8m7wXJSAB/MkuzrBZBlx.7.mvQhs.E5crXm02Qx/5scG',1,1,NULL,'2024-09-01 11:37:12','2026-04-12 07:49:15'),(4,'diang','hhongli1979@gmail.com','admin3',NULL,NULL,'$2y$12$WHsKaryOiHxYUV4TyYs3p.v92qKHVYG/EEeaACTgmqX.Y9j2Vbb.C',1,1,NULL,'2026-04-12 16:30:35','2026-04-12 16:30:35');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_password_resets`
--

DROP TABLE IF EXISTS `agent_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent_password_resets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_password_resets`
--

LOCK TABLES `agent_password_resets` WRITE;
/*!40000 ALTER TABLE `agent_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `kyc_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kyc_rejection_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: KYC Unverified, 2: KYC pending, 1: KYC verified',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: mobile unverified, 1: mobile verified',
  `profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `ver_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en` tinyint(1) NOT NULL DEFAULT '1',
  `sn` tinyint(1) NOT NULL DEFAULT '1',
  `pn` tinyint(1) NOT NULL DEFAULT '1',
  `is_allow_promotional_notify` tinyint(1) NOT NULL DEFAULT '1',
  `ban_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_providers`
--

DROP TABLE IF EXISTS `api_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_providers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` text COLLATE utf8mb4_general_ci,
  `access_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `module` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `instruction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `alias` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_providers`
--

LOCK TABLES `api_providers` WRITE;
/*!40000 ALTER TABLE `api_providers` DISABLE KEYS */;
INSERT INTO `api_providers` VALUES (2,'Reloadly API','reloadly_api','[{\"name\":\"client_id\",\"title\":\"Client ID\",\"value\":\"-----------\",\"is_copy\":false,\"is_required\":true},{\"name\":\"client_secret\",\"title\":\"Client Secret\",\"value\":\"------------\",\"is_copy\":false,\"is_required\":true},{\"name\":\"environment\",\"title\":\"Environment\",\"value\":\"sandbox\",\"is_copy\":false,\"is_required\":true}]','{\"airtime\":\"1\",\"gift_card\":\"1\",\"utility_bill\":\"1\"}','{\"airtime_token\":{\"name\":\"airtime_token\",\"value\":null,\"expired_at\":null,\"token_type\":\"Bearer\"},\"utility_token\":{\"name\":\"utility_token\",\"value\":null,\"expired_at\":null,\"token_type\":\"Bearer\"},\"gift_card_token\":{\"name\":\"gift_card_token\",\"value\":null,\"expired_at\":null,\"token_type\":\"Bearer\"}}','[\"utility_bill\", \"airtime\", \"gift_card\"]',' \n                        <h5>How to Get Reloadly API Credentials\'</h5>\n                        <ul class=\"list-group list-group-flush list-unstyled\">\n                            <li class=\"list-group-item ps-0\">\n                                <strong>Sign Up or Log In\':</strong>\n                                Visit the <a href=\"https://www.reloadly.com/\" target=\"_blank\">\n                                    Reloadly Dashboard <i class=\"fa fa-external-link\"></i>\n                                </a> and sign up or log in to your account.\n                            </li>\n                            <li class=\"list-group-item ps-0\">\n                                <strong>Access API Keys:</strong>\n                                From the left sidebar, navigate to <strong>Developers</strong> &gt; <strong>API\n                                    Keys</strong>.\n                            </li>\n                            <li class=\"list-group-item ps-0\">\n                                <strong>Get Your Credentials:</strong>\n                                You will find your <strong>Client ID</strong> and <strong>Client Secret</strong> under both\n                                <code>Sandbox</code> and <code>Live</code> environments. Copy the credentials based on your\n                                integration needs.\n                            </li>\n                            <li class=\"list-group-item ps-0\">\n                                <strong>Select Environment:</strong>\n                                Choose <code>Sandbox</code> for testing purposes or <code>Live</code> for production usage.\n                            </li>\n                            <li class=\"list-group-item ps-0\">\n                                <strong>Submit:</strong>\n                                Paste the <strong>Client ID</strong> and <strong>Client Secret</strong> into the appropriate\n                                fields in your system\'s <strong>Credentials</strong> section and click\n                                <strong>Submit</strong>.\n                            </li>\n                        </ul>','ReloadLy','Reloadly is a leading API provider for global airtime top-ups, utility bill payments, and more.','2026-04-12 07:06:56','2025-01-08 00:14:24');
/*!40000 ALTER TABLE `api_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transfers`
--

DROP TABLE IF EXISTS `bank_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_transfers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `bank_id` int unsigned NOT NULL DEFAULT '0',
  `account_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transfers`
--

LOCK TABLES `bank_transfers` WRITE;
/*!40000 ALTER TABLE `bank_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_charge` decimal(28,8) DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) DEFAULT '0.00',
  `form_id` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_categories`
--

DROP TABLE IF EXISTS `bill_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_categories`
--

LOCK TABLES `bill_categories` WRITE;
/*!40000 ALTER TABLE `bill_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_ins`
--

DROP TABLE IF EXISTS `cash_ins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_ins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `commission` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `user_post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `agent_post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_ins`
--

LOCK TABLES `cash_ins` WRITE;
/*!40000 ALTER TABLE `cash_ins` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_ins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_outs`
--

DROP TABLE IF EXISTS `cash_outs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_outs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `commission` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `user_post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `agent_post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_outs`
--

LOCK TABLES `cash_outs` WRITE;
/*!40000 ALTER TABLE `cash_outs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_outs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charities`
--

DROP TABLE IF EXISTS `charities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charities`
--

LOCK TABLES `charities` WRITE;
/*!40000 ALTER TABLE `charities` DISABLE KEYS */;
/*!40000 ALTER TABLE `charities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL DEFAULT '0',
  `country_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` text COLLATE utf8mb4_unicode_ci,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(28,8) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `minimum_amount` decimal(28,8) DEFAULT NULL,
  `maximum_amount` decimal(28,8) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `company_id` text COLLATE utf8mb4_unicode_ci,
  `denomination_type` text COLLATE utf8mb4_unicode_ci,
  `fixed_amounts` text COLLATE utf8mb4_unicode_ci,
  `company_data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `iso_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `continent` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_symbol` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `calling_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_airtime` tinyint(1) NOT NULL DEFAULT '0',
  `is_gift_card` tinyint(1) NOT NULL DEFAULT '0',
  `is_utility_bill` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_job_logs`
--

DROP TABLE IF EXISTS `cron_job_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_job_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cron_job_id` int unsigned NOT NULL DEFAULT '0',
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `duration` int unsigned NOT NULL DEFAULT '0',
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_job_logs`
--

LOCK TABLES `cron_job_logs` WRITE;
/*!40000 ALTER TABLE `cron_job_logs` DISABLE KEYS */;
INSERT INTO `cron_job_logs` VALUES (1,3,'2026-04-12 04:40:16','2026-04-12 04:40:16',0,NULL,'2026-04-11 20:40:16','2026-04-11 20:40:16'),(2,1,'2026-04-12 04:40:23','2026-04-12 04:40:23',0,NULL,'2026-04-11 20:40:23','2026-04-11 20:40:23'),(3,4,'2026-04-12 04:40:26','2026-04-12 04:40:26',0,NULL,'2026-04-11 20:40:26','2026-04-11 20:40:26'),(4,1,'2026-04-12 14:12:10','2026-04-12 14:12:10',0,NULL,'2026-04-12 06:12:10','2026-04-12 06:12:10'),(5,2,'2026-04-12 14:12:10','2026-04-12 14:12:10',0,NULL,'2026-04-12 06:12:10','2026-04-12 06:12:10'),(6,3,'2026-04-12 14:12:10','2026-04-12 14:12:10',0,NULL,'2026-04-12 06:12:10','2026-04-12 06:12:10'),(7,4,'2026-04-12 14:12:10','2026-04-12 14:12:10',0,NULL,'2026-04-12 06:12:10','2026-04-12 06:12:10'),(8,5,'2026-04-12 14:12:10','2026-04-12 14:12:10',0,NULL,'2026-04-12 06:12:10','2026-04-12 06:12:10'),(9,6,'2026-04-12 14:12:10','2026-04-12 14:12:10',0,NULL,'2026-04-12 06:12:10','2026-04-12 06:12:10'),(10,1,'2026-04-12 15:49:39','2026-04-12 15:49:39',0,'Pusher error: cURL error 6: Could not resolve host: api-----------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api-----------.pusher.com/apps/----------/events?auth_key=----------&auth_timestamp=1776008979&auth_version=1.0&body_md5=f7ec7ba1c44d01b8f82ab3bb6672c2f7&auth_signature=a68cd680d0ca1a280735f4b9af516a225253eb9790f1841fab1bf8d5ff9d1e5d.','2026-04-12 07:49:39','2026-04-12 07:49:39'),(11,2,'2026-04-12 15:49:39','2026-04-12 15:49:39',0,NULL,'2026-04-12 07:49:39','2026-04-12 07:49:39'),(12,3,'2026-04-12 15:49:39','2026-04-12 15:49:39',0,NULL,'2026-04-12 07:49:39','2026-04-12 07:49:39'),(13,4,'2026-04-12 15:49:39','2026-04-12 15:49:39',0,NULL,'2026-04-12 07:49:39','2026-04-12 07:49:39'),(14,5,'2026-04-12 15:49:39','2026-04-12 15:49:39',0,NULL,'2026-04-12 07:49:39','2026-04-12 07:49:39'),(15,6,'2026-04-12 15:49:39','2026-04-12 15:49:39',0,NULL,'2026-04-12 07:49:39','2026-04-12 07:49:39'),(16,1,'2026-04-12 16:49:50','2026-04-12 16:49:50',0,'Pusher error: cURL error 6: Could not resolve host: api-----------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api-----------.pusher.com/apps/----------/events?auth_key=----------&auth_timestamp=1776012590&auth_version=1.0&body_md5=9e182dd582eb6f52cdb7bb5e64060e82&auth_signature=3fba04b4815915e2a51c34d816e0552658968d65bd0460be9b75b03f9f3890bf.','2026-04-12 08:49:50','2026-04-12 08:49:50'),(17,2,'2026-04-12 16:49:50','2026-04-12 16:49:50',0,NULL,'2026-04-12 08:49:50','2026-04-12 08:49:50'),(18,3,'2026-04-12 16:49:50','2026-04-12 16:49:50',0,NULL,'2026-04-12 08:49:50','2026-04-12 08:49:50'),(19,4,'2026-04-12 16:49:50','2026-04-12 16:49:50',0,NULL,'2026-04-12 08:49:50','2026-04-12 08:49:50'),(20,5,'2026-04-12 16:49:50','2026-04-12 16:49:50',0,NULL,'2026-04-12 08:49:50','2026-04-12 08:49:50'),(21,6,'2026-04-12 16:49:50','2026-04-12 16:49:50',0,NULL,'2026-04-12 08:49:50','2026-04-12 08:49:50');
/*!40000 ALTER TABLE `cron_job_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_jobs`
--

DROP TABLE IF EXISTS `cron_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cron_schedule_id` int NOT NULL DEFAULT '0',
  `next_run` datetime DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `is_running` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_jobs`
--

LOCK TABLES `cron_jobs` WRITE;
/*!40000 ALTER TABLE `cron_jobs` DISABLE KEYS */;
INSERT INTO `cron_jobs` VALUES (1,'Reset Login Qr Code','reset_login_qr_code','[\"App\\\\Http\\\\Controllers\\\\CronController\", \"resetLoginQrCode\"]',NULL,1,'2026-04-12 16:54:50','2026-04-12 16:49:50',1,1,NULL,'2026-04-12 08:49:50'),(2,'Update Automatic Utility Bill Payment','update_automatic_utility_bill_payment','[\"App\\\\Http\\\\Controllers\\\\CronController\", \"updateAutomaticBillPayment\"]',NULL,2,'2026-04-12 16:50:50','2026-04-12 16:49:50',1,1,NULL,'2026-04-12 08:49:50'),(3,'Update Airtime Operator','update_airtime_operator','[\"App\\\\Http\\\\Controllers\\\\CronController\", \"updateOperator\"]',NULL,1,'2026-04-12 16:54:50','2026-04-12 16:49:50',1,1,NULL,'2026-04-12 08:49:50'),(4,'Update Gift Card Purchase','update_gift_card_purchase','[\"App\\\\Http\\\\Controllers\\\\CronController\", \"updateGiftCardPurchase\"]',NULL,1,'2026-04-12 16:54:50','2026-04-12 16:49:50',1,1,NULL,'2026-04-12 08:49:50'),(5,'Update All Gift Card Data','update_all_gift_card_data','[\"App\\\\Http\\\\Controllers\\\\CronController\", \"updateAllGiftCardsData\"]',NULL,1,'2026-04-12 16:54:50','2026-04-12 16:49:50',1,1,NULL,'2026-04-12 08:49:50'),(6,'Investment Cron','investment_cron','[\"App\\\\Http\\\\Controllers\\\\CronController\", \"investment\"]',NULL,1,'2026-04-12 16:54:50','2026-04-12 16:49:50',1,1,NULL,'2026-04-12 08:49:50');
/*!40000 ALTER TABLE `cron_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_schedules`
--

DROP TABLE IF EXISTS `cron_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interval` int unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_schedules`
--

LOCK TABLES `cron_schedules` WRITE;
/*!40000 ALTER TABLE `cron_schedules` DISABLE KEYS */;
INSERT INTO `cron_schedules` VALUES (1,'5 Minute',300,1,'2025-01-19 04:54:50','2025-01-19 04:55:32'),(2,'1 Minute',60,1,'2025-07-28 04:21:42','2025-07-28 04:21:42');
/*!40000 ALTER TABLE `cron_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `method_code` int unsigned NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `method_currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `final_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btc_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_try` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT '0',
  `admin_feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_cron` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `is_app` tinyint(1) NOT NULL DEFAULT '0',
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `charity_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `hide_identity` tinyint(1) NOT NULL DEFAULT '0',
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_fees`
--

DROP TABLE IF EXISTS `education_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_fees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `institution_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_fees`
--

LOCK TABLES `education_fees` WRITE;
/*!40000 ALTER TABLE `education_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extensions`
--

DROP TABLE IF EXISTS `extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extensions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'object',
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extensions`
--

LOCK TABLES `extensions` WRITE;
/*!40000 ALTER TABLE `extensions` DISABLE KEYS */;
INSERT INTO `extensions` VALUES (1,'tawk-chat','Tawk.to','Key location is shown bellow','Tawk.to offers live chat support, helping you communicate with visitors and boost customer satisfaction','tawky_big.png','<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>','{\"app_key\":{\"title\":\"App Key\",\"value\":\"121\"}}','twak.png',0,'2019-10-18 11:16:05','2025-02-04 00:55:06'),(2,'google-recaptcha2','Google Recaptcha 2','Key location is shown bellow','Google reCAPTCHA v2 blocks bots, reducing spam and enhancing website security','recaptcha3.png','\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>','{\"site_key\":{\"title\":\"Site Key\",\"value\":\"--------------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"--------------------\"}}','recaptcha.png',0,'2019-10-18 11:16:05','2025-03-19 05:02:37'),(3,'custom-captcha','Custom Captcha','Just put any random string','Custom Captcha checks users with simple challenges, stopping spam and keeping your site safe','customcaptcha.png',NULL,'{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}','na',1,'2019-10-18 11:16:05','2026-04-11 20:26:54'),(4,'google-analytics','Google Analytics','Key location is shown bellow','\nGoogle Analytics tracks website traffic and user behavior, helping you improve performance and understand your audience','google_analytics.png','<script async src=\"https://www.googletagmanager.com/gtag/js?id={{measurement_id}}\"></script>\n                <script>\n                  window.dataLayer = window.dataLayer || [];\n                  function gtag(){dataLayer.push(arguments);}\n                  gtag(\"js\", new Date());\n                \n                  gtag(\"config\", \"{{measurement_id}}\");\n                </script>','{\"measurement_id\":{\"title\":\"Measurement ID\",\"value\":\"G-7LS09GPXQK\"}}','ganalytics.png',1,NULL,'2026-04-11 20:26:21'),(5,'fb-comment','Facebook Comment ','Key location is shown bellow','Facebook Comment lets users share feedback on your site, increasing engagement and social interaction','Facebook.png','<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>','{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}','fb_com.png',0,NULL,'2022-03-21 11:18:36');
/*!40000 ALTER TABLE `extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (63,'user_kyc','{\"full_name\":{\"name\":\"Full Name\",\"label\":\"full_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"date_of_birth\":{\"name\":\"Date of Birth\",\"label\":\"date_of_birth\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"date\",\"width\":\"12\"},\"gender\":{\"name\":\"Gender\",\"label\":\"gender\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[\"Male\",\"Female\",\"Other\"],\"type\":\"radio\",\"width\":\"12\"},\"government_id_type\":{\"name\":\"Government ID Type\",\"label\":\"government_id_type\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[\"Passport\",\"National ID\"],\"type\":\"select\",\"width\":\"12\"},\"government_id_number\":{\"name\":\"Government ID Number\",\"label\":\"government_id_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"number\",\"width\":\"12\"},\"id_front_image\":{\"name\":\"ID Front Image\",\"label\":\"id_front_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"},\"id_back_image\":{\"name\":\"ID Back Image\",\"label\":\"id_back_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"}}','2025-03-13 09:02:37','2025-03-17 14:05:51'),(64,'agent_kyc','{\"business_name\":{\"name\":\"Business Name\",\"label\":\"business_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"business_type\":{\"name\":\"Business Type\",\"label\":\"business_type\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"business_registration_number\":{\"name\":\"Business Registration Number\",\"label\":\"business_registration_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"},\"business_license_copy_front_image\":{\"name\":\"Business License Copy Front Image\",\"label\":\"business_license_copy_front_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"},\"business_license_copy_back_image\":{\"name\":\"Business License Copy Back Image\",\"label\":\"business_license_copy_back_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"government_id_type\":{\"name\":\"Government ID Type\",\"label\":\"government_id_type\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[\"Passport\",\"National ID\"],\"type\":\"select\",\"width\":\"12\"},\"government_id_number\":{\"name\":\"Government ID Number\",\"label\":\"government_id_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"id_front_image\":{\"name\":\"ID Front Image\",\"label\":\"id_front_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png\",\"options\":[],\"type\":\"file\",\"width\":\"12\"},\"id_back_image\":{\"name\":\"ID Back Image\",\"label\":\"id_back_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"}}','2025-03-13 09:02:37','2025-03-18 20:05:07'),(65,'merchant_kyc','{\"business_name\":{\"name\":\"Business Name\",\"label\":\"business_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"business_type\":{\"name\":\"Business Type\",\"label\":\"business_type\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"business_registration_number\":{\"name\":\"Business Registration Number\",\"label\":\"business_registration_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"business_license_copy_front_image\":{\"name\":\"Business License Copy Front Image\",\"label\":\"business_license_copy_front_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"},\"business_license_copy_back_image\":{\"name\":\"Business License Copy Back Image\",\"label\":\"business_license_copy_back_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"},\"government_id_type\":{\"name\":\"Government ID Type\",\"label\":\"government_id_type\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[\"Passport\",\"National ID\"],\"type\":\"select\",\"width\":\"12\"},\"government_id_number\":{\"name\":\"Government ID Number\",\"label\":\"government_id_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"12\"},\"id_front_image\":{\"name\":\"ID Front Image\",\"label\":\"id_front_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"},\"id_back_image\":{\"name\":\"ID Back Image\",\"label\":\"id_back_image\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":\"jpg,jpeg,png,pdf\",\"options\":[],\"type\":\"file\",\"width\":\"12\"}}','2025-03-13 09:02:37','2025-03-18 20:04:15');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontends`
--

DROP TABLE IF EXISTS `frontends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frontends` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_keys` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tempname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontends`
--

LOCK TABLES `frontends` WRITE;
/*!40000 ALTER TABLE `frontends` DISABLE KEYS */;
INSERT INTO `frontends` VALUES (1,'seo.data','{\"seo_image\":\"1\",\"social_title\":\"OvoPay - Complete Cross Platform MFS Solution | User, Agent & Merchant Mobile Apps Integrated with Web | Admin Panel\",\"keywords\":[\"mfs\",\"mobile financial service script\",\"fintech app\",\"user\",\"agent & merchant mfs\",\"mfs web and app solution\",\"virtual card\",\"send money\",\"cashout\",\"cashin\",\"payment\",\"education fee\",\"utitliti bill\",\"microfinance\",\"digital service\",\"complete digital payment script\",\"fintech web and app solution\",\"qrcode\"],\"description\":\"OvoPay is a Complete Cross-Platform MFS Solution featuring User, Agent & Merchant Apps, a Web Platform, and an Admin Panel. Designed for seamless digital transactions, virtual card integration, and secure financial services. Elevate your business with OvoPay today!\",\"social_description\":\"\\ud83d\\ude80 OvoPay \\u2013 The ultimate Cross-Platform MFS Solution with User, Agent & Merchant Mobile Apps, seamlessly integrated with the Web Platform & Admin Panel. Manage digital transactions, virtual cards, and payments effortlessly. Secure, scalable & feature-packed! \\ud83d\\udd25\",\"image\":\"67d67acd6fbab1742109389.png\"}',NULL,NULL,'','2020-07-04 17:42:52','2025-03-16 01:25:43'),(24,'about.content','{\"has_image\":\"1\",\"heading\":\"Latest News\",\"subheading\":\"11\",\"description\":\"Deepay \\u662f\\u4e00\\u5bb6\\u7531\\u524d deepvoloce \\u5728\\u6cd5\\u56fd\\u521b\\u7acb\\u7684\\u52a0\\u5bc6\\u53cb\\u597d\\u578b\\u65b0\\u94f6\\u884c\\uff08Neobank\\uff09\\u548c\\u91d1\\u878d\\u79d1\\u6280\\u516c\\u53f8\\uff0c\\u4e8e 2022 \\u5e74\\u63a8\\u51fa\\u3002\\u5b83\\u63d0\\u4f9b\\u5b8c\\u5168\\u96c6\\u6210\\u7684\\u6cd5\\u5e01\\uff08\\u6b27\\u5143\\uff09\\u548c\\u975e\\u6258\\u7ba1\\u52a0\\u5bc6\\u8d27\\u5e01\\u94b1\\u5305\\u670d\\u52a1\\uff0c\\u5141\\u8bb8\\u7528\\u6237\\u5728\\u5355\\u4e00\\u5e94\\u7528\\u4e2d\\u8fdb\\u884c\\u6b27\\u5143\\u652f\\u4ed8\\u3001\\u73b0\\u91d1\\u63d0\\u53d6\\u4ee5\\u53ca\\u6bd4\\u7279\\u5e01\\u3001USDC\\u3001SOL\\u7b49\\u52a0\\u5bc6\\u8d27\\u5e01\\u7684\\u4ea4\\u6613\\u3002 \\nGoogle Play\\nGoogle Play\\n +4\\n\\u5173\\u952e\\u7279\\u6027\\uff1a\\n\\u5408\\u89c4\\u6027\\uff1a \\u62e5\\u6709\\u6cd5\\u56fdACPR\\u9881\\u53d1\\u7684\\u7535\\u5b50\\u8d27\\u5e01\\u673a\\u6784\\uff08EMI\\uff09\\u8bb8\\u53ef\\u8bc1\\uff0c\\u5e76\\u5728\\u6cd5\\u56fd\\u91d1\\u878d\\u5e02\\u573a\\u7ba1\\u7406\\u5c40\\uff08AMF\\uff09\\u6ce8\\u518c\\u4e3a\\u6570\\u5b57\\u8d44\\u4ea7\\u670d\\u52a1\\u63d0\\u4f9b\\u5546\\uff08DASP\\uff09\\u3002\\n\\u94f6\\u884c\\u529f\\u80fd\\uff1a \\u63d0\\u4f9b\\u6cd5\\u5c5e IBAN\\uff08\\u56fd\\u9645\\u94f6\\u884c\\u8d26\\u53f7\\uff09\\u3001\\u865a\\u62df\\/\\u5b9e\\u4f53 Visa \\u91d1\\u878d\\u5361\\u3001\\u5373\\u65f6 SEPA \\u8f6c\\u8d26\\u3002\\n\\u52a0\\u5bc6\\u81ea\\u7ba1\\uff1a \\u5f3a\\u8c03\\u201c\\u4f60\\u7684\\u94a5\\u5319\\uff0c\\u4f60\\u7684\\u52a0\\u5bc6\\u8d27\\u5e01\\u201d\\uff08Self-custody\\uff09\\uff0c\\u7528\\u6237\\u5bf9\\u975e\\u6258\\u7ba1\\u94b1\\u5305\\u5185\\u7684\\u52a0\\u5bc6\\u8d44\\u4ea7\\u62e5\\u6709\\u5b8c\\u5168\\u63a7\\u5236\\u6743\\u3002\\n\\u4e3b\\u8981\\u5e02\\u573a\\uff1a \\u603b\\u90e8\\u4f4d\\u4e8e\\u6cd5\\u56fd\\uff0c\\u4ee5\\u6cd5\\u56fd\\u4e3a\\u6838\\u5fc3\\uff0c\\u5e76\\u8ba1\\u5212\\u5411\\u5fb7\\u56fd\\u53ca\\u6b27\\u6d32\\u5176\\u4ed6\\u5730\\u533a\\u6269\\u5f20\\u3002\\n\\u80cc\\u666f\\uff1a \\u83b7\\u5f97\\u4e86\\u591a\\u8f6e\\u878d\\u8d44\\uff08\\u5305\\u62ec 3000 \\u4e07\\u6b27\\u5143 A \\u8f6e\\uff09\\uff0c\\u7531\\u77e5\\u540d\\u98ce\\u6295\\u652f\\u6301\\u3002 \\nGoogle Play\\nGoogle Play\\n +7\\n\\u7b80\\u800c\\u8a00\\u4e4b\\uff0cDeepay \\u662f\\u4e00\\u4e2a\\u65e8\\u5728\\u6865\\u63a5\\u4f20\\u7edf\\u94f6\\u884c\\u670d\\u52a1\\uff08\\u65e5\\u5e38\\u6d88\\u8d39\\u3001\\u5de5\\u8d44\\u9886\\u53d6\\uff09\\u4e0e Web3 \\u52a0\\u5bc6\\u8d27\\u5e01\\u6295\\u8d44\\u7684\\u5408\\u89c4\\u79fb\\u52a8\\u5e94\\u7528\\u7a0b\\u5e8f\\u3002\",\"about_icon\":\"<i class=\\\"las la-address-card\\\"><\\/i>\",\"background_image\":\"69dcd43d778051776079933.png\",\"about_image\":\"69dcd43d90aa41776079933.png\"}',NULL,'basic','','2020-10-27 18:51:20','2026-04-13 03:32:13'),(25,'blog.content','{\"heading\":\"Latest News\",\"subheading\":\"------\"}',NULL,'basic','','2020-10-27 18:51:34','2024-04-30 19:36:53'),(27,'contact_us.content','{\"heading\":\"Get in Touch\",\"contact_number\":\"+13802893808\",\"email_address\":\"deepveloce@gmail.com\",\"location\":\"Bethany, Arizona, USA\",\"map_url\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d28961.942887384343!2d-94.0566638390397!3d40.27021323581013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87ea3faddbf53ef5%3A0xbdee9aae8e7623!2sBethany%2C%20MO%2064424%2C%20USA!5e0!3m2!1sen!2sbd!4v1741877150319!5m2!1sen!2sbd\"}',NULL,'basic','','2020-10-27 18:59:19','2026-04-12 11:00:59'),(31,'social_icon.element','{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"fa-brands fa-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/\"}',NULL,'basic','','2020-11-11 22:07:30','2025-02-04 06:51:46'),(33,'feature.content','{\"heading\":\"asdf\",\"sub_heading\":\"asdf\"}',NULL,'basic',NULL,'2021-01-03 17:40:54','2021-01-03 17:40:55'),(34,'feature.element','{\"title\":\"asdf\",\"description\":\"asdf\",\"feature_icon\":\"asdf\"}',NULL,'basic',NULL,'2021-01-03 17:41:02','2021-01-03 17:41:02'),(41,'cookie.data','{\"short_desc\":\"We may utilize cookies when you access our website, including any related media platforms or mobile applications. These technologies are employed to enhance site functionality and optimize your interactions with our services.\",\"description\":\"<div>\\r\\n    <h5><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u4ec0\\u4e48\\u662f Cookie\\uff1f<\\/font><\\/font><\\/h5>\\r\\n    <p><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">Cookie \\u662f\\u60a8\\u8bbf\\u95ee\\u7f51\\u7ad9\\u65f6\\u653e\\u7f6e\\u5728\\u60a8\\u7684\\u8ba1\\u7b97\\u673a\\u6216\\u79fb\\u52a8\\u8bbe\\u5907\\u4e0a\\u7684\\u5c0f\\u578b\\u6570\\u636e\\u6587\\u4ef6\\u3002\\u8fd9\\u4e9b\\u6587\\u4ef6\\u5305\\u542b\\u7684\\u4fe1\\u606f\\u4f1a\\u4f20\\u8f93\\u5230\\u60a8\\u8bbe\\u5907\\u7684\\u786c\\u76d8\\u9a71\\u52a8\\u5668\\u3002\\u7f51\\u7ad9\\u6240\\u6709\\u8005\\u5e7f\\u6cdb\\u4f7f\\u7528 Cookie \\u6765\\u5b9e\\u73b0\\u5404\\u79cd\\u76ee\\u7684\\uff1a\\u5b83\\u4eec\\u901a\\u8fc7\\u542f\\u7528\\u9875\\u9762\\u5bfc\\u822a\\u548c\\u8bbf\\u95ee\\u5b89\\u5168\\u533a\\u57df\\u7b49\\u57fa\\u672c\\u529f\\u80fd\\u6765\\u5e2e\\u52a9\\u7f51\\u7ad9\\u6b63\\u5e38\\u8fd0\\u884c\\uff1b\\u5b83\\u4eec\\u901a\\u8fc7\\u8bb0\\u4f4f\\u60a8\\u4e00\\u6bb5\\u65f6\\u95f4\\u5185\\u7684\\u504f\\u597d\\u548c\\u64cd\\u4f5c\\uff08\\u4f8b\\u5982\\u767b\\u5f55\\u4fe1\\u606f\\u548c\\u8bed\\u8a00\\u8bbe\\u7f6e\\uff09\\u6765\\u63d0\\u9ad8\\u6548\\u7387\\uff0c\\u8fd9\\u6837\\u60a8\\u6bcf\\u6b21\\u8bbf\\u95ee\\u65f6\\u5c31\\u4e0d\\u5fc5\\u91cd\\u65b0\\u8f93\\u5165\\uff1b\\u5b83\\u4eec\\u63d0\\u4f9b\\u62a5\\u544a\\u4fe1\\u606f\\uff0c\\u5e2e\\u52a9\\u7f51\\u7ad9\\u6240\\u6709\\u8005\\u4e86\\u89e3\\u5176\\u7f51\\u7ad9\\u7684\\u4f7f\\u7528\\u60c5\\u51b5\\uff0c\\u5305\\u62ec\\u9875\\u9762\\u8bbf\\u95ee\\u91cf\\u3001\\u8bbf\\u95ee\\u65f6\\u957f\\u4ee5\\u53ca\\u53d1\\u751f\\u7684\\u4efb\\u4f55\\u9519\\u8bef\\u7b49\\u6570\\u636e\\uff0c\\u8fd9\\u5bf9\\u4e8e\\u63d0\\u9ad8\\u7f51\\u7ad9\\u6027\\u80fd\\u548c\\u7528\\u6237\\u4f53\\u9a8c\\u81f3\\u5173\\u91cd\\u8981\\uff1b\\u5b83\\u4eec\\u901a\\u8fc7\\u8bb0\\u4f4f\\u60a8\\u7684\\u504f\\u597d\\u5e76\\u6839\\u636e\\u60a8\\u7684\\u5174\\u8da3\\u5b9a\\u5236\\u5185\\u5bb9\\uff08\\u5305\\u62ec\\u6839\\u636e\\u60a8\\u7684\\u6d4f\\u89c8\\u5386\\u53f2\\u8bb0\\u5f55\\u663e\\u793a\\u76f8\\u5173\\u5e7f\\u544a\\u6216\\u63a8\\u8350\\uff09\\u6765\\u4e2a\\u6027\\u5316\\u60a8\\u7684\\u4f53\\u9a8c\\uff1b\\u5b83\\u4eec\\u901a\\u8fc7\\u68c0\\u6d4b\\u6b3a\\u8bc8\\u6d3b\\u52a8\\u548c\\u4fdd\\u62a4\\u60a8\\u7684\\u6570\\u636e\\u514d\\u53d7\\u672a\\u7ecf\\u6388\\u6743\\u7684\\u8bbf\\u95ee\\u6765\\u589e\\u5f3a\\u5b89\\u5168\\u6027\\u3002\\u901a\\u8fc7\\u4f7f\\u7528 Cookie\\uff0c\\u7f51\\u7ad9\\u6240\\u6709\\u8005\\u53ef\\u4ee5\\u589e\\u5f3a\\u5176\\u7f51\\u7ad9\\u7684\\u6574\\u4f53\\u529f\\u80fd\\u548c\\u6548\\u7387\\uff0c\\u4ece\\u800c\\u4e3a\\u7528\\u6237\\u63d0\\u4f9b\\u66f4\\u597d\\u7684\\u4f53\\u9a8c\\u3002<\\/font><\\/font><\\/p>\\r\\n    <p><br><\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<div>\\r\\n    <h4><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u6211\\u4eec\\u4e3a\\u4ec0\\u4e48\\u4f7f\\u7528 Cookie\\uff1f<\\/font><\\/font><\\/h4>\\r\\n    <p><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u6211\\u4eec\\u4f7f\\u7528 Cookie \\u7684\\u539f\\u56e0\\u6709\\u5f88\\u591a\\u3002\\u6709\\u4e9b Cookie \\u662f\\u7f51\\u7ad9\\u8fd0\\u884c\\u6240\\u5fc5\\u9700\\u7684\\uff0c\\u6211\\u4eec\\u79f0\\u4e4b\\u4e3a\\u201c\\u5fc5\\u8981\\u201d\\u6216\\u201c\\u7edd\\u5bf9\\u5fc5\\u8981\\u201d\\u7684 Cookie\\u3002\\u8fd9\\u4e9b\\u5fc5\\u8981 Cookie \\u5bf9\\u4e8e\\u542f\\u7528\\u9875\\u9762\\u5bfc\\u822a\\u3001\\u5b89\\u5168\\u8bbf\\u95ee\\u7279\\u5b9a\\u533a\\u57df\\u4ee5\\u53ca\\u786e\\u4fdd\\u7f51\\u7ad9\\u6574\\u4f53\\u529f\\u80fd\\u81f3\\u5173\\u91cd\\u8981\\u3002\\u5982\\u679c\\u6ca1\\u6709\\u8fd9\\u4e9b Cookie\\uff0c\\u7f51\\u7ad9\\u5c06\\u65e0\\u6cd5\\u6b63\\u5e38\\u8fd0\\u884c\\u3002<\\/font><\\/font><\\/p>\\r\\n    <p><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u5176\\u4ed6 Cookie \\u4f7f\\u6211\\u4eec\\u80fd\\u591f\\u8ffd\\u8e2a\\u548c\\u4e86\\u89e3\\u7528\\u6237\\u7684\\u5174\\u8da3\\uff0c\\u4ece\\u800c\\u63d0\\u5347\\u60a8\\u5728\\u6211\\u4eec\\u7f51\\u7ad9\\u4e0a\\u7684\\u4f53\\u9a8c\\u3002\\u8fd9\\u4e9b Cookie \\u5e2e\\u52a9\\u6211\\u4eec\\u4e86\\u89e3\\u60a8\\u7684\\u504f\\u597d\\u548c\\u884c\\u4e3a\\uff0c\\u4ee5\\u4fbf\\u6211\\u4eec\\u80fd\\u591f\\u5b9a\\u5236\\u5185\\u5bb9\\u548c\\u529f\\u80fd\\uff0c\\u66f4\\u597d\\u5730\\u6ee1\\u8db3\\u60a8\\u7684\\u9700\\u6c42\\u3002\\u4f8b\\u5982\\uff0c\\u5b83\\u4eec\\u53ef\\u4ee5\\u8bb0\\u4f4f\\u60a8\\u7684\\u767b\\u5f55\\u4fe1\\u606f\\u3001\\u8bed\\u8a00\\u504f\\u597d\\u548c\\u5176\\u4ed6\\u81ea\\u5b9a\\u4e49\\u8bbe\\u7f6e\\uff0c\\u4ece\\u800c\\u63d0\\u4f9b\\u66f4\\u52a0\\u4e2a\\u6027\\u5316\\u548c\\u9ad8\\u6548\\u7684\\u6d4f\\u89c8\\u4f53\\u9a8c\\u3002<\\/font><\\/font><br><\\/p>\\r\\n    <p><br><\\/p>\\r\\n<\\/div>\\r\\n<div>\\r\\n    <h4><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u6211\\u4eec\\u4f7f\\u7528\\u7684 Cookie \\u7c7b\\u578b<\\/font><\\/font><\\/h4>\\r\\n    <p>\\r\\n    <\\/p>\\r\\n    <ul style=\\\"margin-left:30px;list-style:circle;\\\"><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u5fc5\\u8981 Cookie<\\/font><\\/font><\\/strong>\\r\\n            <span><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u8fd9\\u4e9b Cookie \\u5bf9\\u4e8e\\u7f51\\u7ad9\\u6b63\\u5e38\\u8fd0\\u884c\\u81f3\\u5173\\u91cd\\u8981\\uff0c\\u65e0\\u6cd5\\u5728\\u6211\\u4eec\\u7684\\u7cfb\\u7edf\\u4e2d\\u7981\\u7528\\u3002\\u5b83\\u4eec\\u901a\\u5e38\\u4ec5\\u5728\\u60a8\\u6267\\u884c\\u67d0\\u4e9b\\u64cd\\u4f5c\\uff08\\u4f8b\\u5982\\u8bbe\\u7f6e\\u9690\\u79c1\\u504f\\u597d\\u3001\\u767b\\u5f55\\u6216\\u586b\\u5199\\u8868\\u5355\\uff09\\u4ee5\\u8bf7\\u6c42\\u670d\\u52a1\\u65f6\\u624d\\u4f1a\\u8bbe\\u7f6e\\u3002<\\/font><\\/font><\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u6027\\u80fd\\u548c\\u529f\\u80fd\\u6027 Cookie<\\/font><\\/font><\\/strong>\\r\\n            <span><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u8fd9\\u4e9b Cookie \\u7528\\u4e8e\\u63d0\\u5347\\u6211\\u4eec\\u7f51\\u7ad9\\u7684\\u6027\\u80fd\\u548c\\u529f\\u80fd\\uff0c\\u4f46\\u5e76\\u975e\\u7f51\\u7ad9\\u8fd0\\u884c\\u6240\\u5fc5\\u9700\\u3002\\u4e0d\\u8fc7\\uff0c\\u5982\\u679c\\u6ca1\\u6709\\u8fd9\\u4e9b Cookie\\uff0c\\u67d0\\u4e9b\\u529f\\u80fd\\u53ef\\u80fd\\u65e0\\u6cd5\\u4f7f\\u7528\\u3002<\\/font><\\/font><\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u5206\\u6790\\u548c\\u4e2a\\u6027\\u5316 Cookie<\\/font><\\/font><\\/strong>\\r\\n            <span><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u8fd9\\u4e9b Cookie \\u6536\\u96c6\\u7684\\u4fe1\\u606f\\u4ee5\\u6c47\\u603b\\u5f62\\u5f0f\\u7528\\u4e8e\\u5e2e\\u52a9\\u6211\\u4eec\\u4e86\\u89e3\\u7f51\\u7ad9\\u7684\\u4f7f\\u7528\\u60c5\\u51b5\\u6216\\u8425\\u9500\\u6d3b\\u52a8\\u7684\\u6709\\u6548\\u6027\\uff0c\\u6216\\u8005\\u7528\\u4e8e\\u5e2e\\u52a9\\u6211\\u4eec\\u4e3a\\u60a8\\u5b9a\\u5236\\u7f51\\u7ad9\\u3002<\\/font><\\/font><\\/span>\\r\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\r\\n            <strong><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u5e7f\\u544a Cookie<\\/font><\\/font><\\/strong>\\r\\n            <span><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u8fd9\\u4e9b Cookie \\u7528\\u4e8e\\u4f7f\\u5e7f\\u544a\\u4fe1\\u606f\\u66f4\\u7b26\\u5408\\u60a8\\u7684\\u5174\\u8da3\\u3002\\u5b83\\u4eec\\u7684\\u529f\\u80fd\\u5305\\u62ec\\u9632\\u6b62\\u540c\\u4e00\\u5e7f\\u544a\\u53cd\\u590d\\u51fa\\u73b0\\u3001\\u786e\\u4fdd\\u5e7f\\u544a\\u6b63\\u786e\\u5c55\\u793a\\u7ed9\\u5e7f\\u544a\\u5546\\uff0c\\u4ee5\\u53ca\\u5728\\u67d0\\u4e9b\\u60c5\\u51b5\\u4e0b\\u6839\\u636e\\u60a8\\u7684\\u5174\\u8da3\\u9009\\u62e9\\u5e7f\\u544a\\u3002<\\/font><\\/font><\\/span>\\r\\n        <\\/li><\\/ul>\\r\\n    <p><\\/p>\\r\\n<\\/div>\\r\\n<br>\\r\\n\\r\\n<div>\\r\\n    <h4><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u5173\\u4e8e Cookie \\u7684\\u9009\\u62e9<\\/font><\\/font><\\/h4>\\r\\n    <p><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u60a8\\u6709\\u6743\\u9009\\u62e9\\u63a5\\u53d7\\u6216\\u62d2\\u7edd Cookie\\u3002\\u60a8\\u53ef\\u4ee5\\u901a\\u8fc7\\u70b9\\u51fb Cookie \\u6a2a\\u5e45\\u4e2d\\u63d0\\u4f9b\\u7684\\u76f8\\u5e94\\u201c\\u9000\\u51fa\\u201d\\u94fe\\u63a5\\u6765\\u8bbe\\u7f6e\\u60a8\\u7684 Cookie \\u504f\\u597d\\u3002\\u6b64\\u6a2a\\u5e45\\u901a\\u5e38\\u4f1a\\u5728\\u60a8\\u9996\\u6b21\\u8bbf\\u95ee\\u6211\\u4eec\\u7684\\u7f51\\u7ad9\\u65f6\\u51fa\\u73b0\\uff0c\\u5141\\u8bb8\\u60a8\\u9009\\u62e9\\u60a8\\u5141\\u8bb8\\u7684 Cookie \\u7c7b\\u578b\\u3002\\u60a8\\u4e5f\\u53ef\\u4ee5\\u8bbe\\u7f6e\\u6216\\u4fee\\u6539\\u60a8\\u7684\\u7f51\\u7edc\\u6d4f\\u89c8\\u5668\\u8bbe\\u7f6e\\u6765\\u63a5\\u53d7\\u6216\\u62d2\\u7edd Cookie\\u3002\\u5927\\u591a\\u6570\\u7f51\\u7edc\\u6d4f\\u89c8\\u5668\\u90fd\\u63d0\\u4f9b\\u5141\\u8bb8\\u60a8\\u7ba1\\u7406\\u6216\\u5220\\u9664 Cookie \\u7684\\u8bbe\\u7f6e\\uff0c\\u60a8\\u901a\\u5e38\\u53ef\\u4ee5\\u5728\\u6d4f\\u89c8\\u5668\\u7684\\u201c\\u9009\\u9879\\u201d\\u6216\\u201c\\u504f\\u597d\\u8bbe\\u7f6e\\u201d\\u83dc\\u5355\\u4e2d\\u627e\\u5230\\u8fd9\\u4e9b\\u8bbe\\u7f6e\\u3002<\\/font><\\/font><\\/p>\\r\\n    <p><br><\\/p>\\r\\n    <p><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u5982\\u679c\\u60a8\\u9009\\u62e9\\u62d2\\u7edd Cookie\\uff0c\\u60a8\\u4ecd\\u7136\\u53ef\\u4ee5\\u4f7f\\u7528\\u6211\\u4eec\\u7684\\u7f51\\u7ad9\\uff0c\\u4f46\\u60a8\\u5bf9\\u7f51\\u7ad9\\u67d0\\u4e9b\\u529f\\u80fd\\u548c\\u533a\\u57df\\u7684\\u8bbf\\u95ee\\u53ef\\u80fd\\u4f1a\\u53d7\\u5230\\u9650\\u5236\\u3002\\u4f8b\\u5982\\uff0c\\u67d0\\u4e9b\\u4f9d\\u8d56 Cookie \\u6765\\u8bb0\\u4f4f\\u60a8\\u7684\\u504f\\u597d\\u6216\\u767b\\u5f55\\u4fe1\\u606f\\u7684\\u529f\\u80fd\\u53ef\\u80fd\\u65e0\\u6cd5\\u6b63\\u5e38\\u5de5\\u4f5c\\u3002\\u6b64\\u5916\\uff0c\\u62d2\\u7edd Cookie \\u53ef\\u80fd\\u4f1a\\u5f71\\u54cd\\u60a8\\u7684\\u4e2a\\u6027\\u5316\\u4f53\\u9a8c\\uff0c\\u56e0\\u4e3a\\u6211\\u4eec\\u4f7f\\u7528 Cookie \\u6765\\u6839\\u636e\\u60a8\\u7684\\u5174\\u8da3\\u5b9a\\u5236\\u5185\\u5bb9\\u548c\\u5e7f\\u544a\\u3002\\u5c3d\\u7ba1\\u5b58\\u5728\\u8fd9\\u4e9b\\u9650\\u5236\\uff0c\\u6211\\u4eec\\u5c0a\\u91cd\\u60a8\\u63a7\\u5236 Cookie \\u504f\\u597d\\u7684\\u6743\\u5229\\uff0c\\u5e76\\u81f4\\u529b\\u4e8e\\u65e0\\u8bba\\u60a8\\u7684\\u9009\\u62e9\\u5982\\u4f55\\uff0c\\u90fd\\u80fd\\u63d0\\u4f9b\\u529f\\u80fd\\u5b8c\\u5584\\u4e14\\u4ee4\\u4eba\\u6109\\u60a6\\u7684\\u6d4f\\u89c8\\u4f53\\u9a8c\\u3002<\\/font><\\/font><\\/p>\\r\\n<\\/div>\\r\\n<br>\\r\\n\\r\\n<div>\\r\\n    <h4><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u8054\\u7cfb\\u6211\\u4eec\\r\\n    <\\/font><\\/font><\\/h4>\\r\\n    <p><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\r\\n        \\u5982\\u679c\\u60a8\\u5bf9\\u6211\\u4eec\\u4f7f\\u7528 Cookie \\u6216\\u5176\\u4ed6\\u6280\\u672f\\u6709\\u4efb\\u4f55\\u7591\\u95ee\\uff0c\\u8bf7\\u8054\\u7cfb<\\/font><\\/font><a href=\\\"\\/ovopay\\/demo\\/contact\\\"><strong><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u6211\\u4eec<\\/font><\\/font><\\/strong><\\/a><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\"><font dir=\\\"auto\\\" style=\\\"vertical-align: inherit;\\\">\\u3002\\u6211\\u4eec\\u7684\\u56e2\\u961f\\u968f\\u65f6\\u51c6\\u5907\\u534f\\u52a9\\u60a8\\u89e3\\u7b54\\u6709\\u5173\\u6211\\u4eec Cookie \\u653f\\u7b56\\u7684\\u4efb\\u4f55\\u7591\\u95ee\\u6216\\u7591\\u8651\\u3002\\u6211\\u4eec\\u91cd\\u89c6\\u60a8\\u7684\\u9690\\u79c1\\uff0c\\u5e76\\u81f4\\u529b\\u4e8e\\u786e\\u4fdd\\u60a8\\u5728\\u6211\\u4eec\\u7f51\\u7ad9\\u4e0a\\u7684\\u4f53\\u9a8c\\u900f\\u660e\\u4e14\\u4ee4\\u4eba\\u6ee1\\u610f\\u3002\\r\\n    <\\/font><\\/font><\\/p>\\r\\n<\\/div>\\r\\n<br><br>\",\"status\":1}',NULL,NULL,NULL,'2020-07-04 17:42:52','2026-04-12 10:52:02'),(42,'policy_pages.element','{\"title\":\"Privacy Policy\",\"details\":\"<div>\\n    <h4>Privacy Policy<\\/h4>\\n    <p>This Privacy Policy outlines how we collect, use, disclose, and protect your personal information when you visit\\n        our website. By accessing or using our website, you agree to the terms of this Privacy Policy\\n        and consent to the collection and use of your information as described herein.\\n        We are committed to ensuring that your privacy is protected. Should we ask you to provide certain information by\\n        which you can be identified when using this website, you can be assured that it will only be used in accordance\\n        with this Privacy Policy. We regularly review our compliance with this policy and ensure that all data handling\\n        practices are transparent and secure.\\n    <\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4> Information We Collect<\\/h4>\\n    <p>We collect personal information such as names, email addresses, \\nand browsing data to enhance user experience and provide personalized \\nservices. This data helps us understand user preferences and improve our\\n offerings. Your privacy is important to us, and we ensure that all \\ninformation is handled with strict confidentiality.<\\/p>\\n    <ul style=\\\"margin-left:30px;list-style:circle;\\\"><li style=\\\"margin-bottom:10px;\\\">\\n            <span>Personal Information:<\\/span>\\n            <span>Name, email address, phone number, and other contact details.<\\/span>\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\n            <span>Usage Data:<\\/span>\\n            <span>Information about how you use our website, including your IP address, browser type, and pages\\n                visited.<\\/span>\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\n            <span>Cookies and Tracking technology:<\\/span>\\n            <span> We use cookies to enhance your experience on our website. You can manage your cookie preferences\\n                through your browser settings.<\\/span>\\n        <\\/li><\\/ul>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>How We Use Your Information<\\/h4>\\n    <p>We use your information to provide and improve our services, \\nensuring a personalized experience tailored to your needs. This includes\\n processing transactions, communicating updates, and responding to \\ninquiries. Additionally, we use your data for analytical purposes to \\nenhance our offerings and for security measures to protect against \\nfraud.<\\/p>\\n    <ul style=\\\"margin-left:30px;list-style:circle;\\\"><li style=\\\"margin-bottom:10px;\\\">\\n            <span>To provide and maintain our services.<\\/span>\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\n            <span>To improve and personalize your experience on our website.\\n            <\\/span>\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\n            <span>To communicate with you, including sending updates and promotional materials.\\n            <\\/span>\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\n            <span>\\n                To analyze website usage and improve our services.\\n            <\\/span>\\n        <\\/li><\\/ul>\\n<\\/div>\\n<br \\/>\\n\\n<div>\\n    <h4>Sharing Your Information<\\/h4>\\n    <p>\\n        We do not sell, trade, or otherwise transfer your personal information to outside parties except as described in\\n        this Privacy Policy. We take reasonable steps to ensure that any third parties with whom we share your personal\\n        information are bound by appropriate confidentiality and security obligations regarding your personal\\n        information.\\n\\n        We understand the importance of maintaining the privacy and security of your personal information. Therefore, we\\n        implement stringent measures to protect your data from unauthorized access, use, or disclosure. Our commitment\\n        to safeguarding your privacy includes:\\n\\n    <\\/p><ul style=\\\"margin-left:30px;list-style:circle;\\\"><li style=\\\"margin-bottom:10px;\\\">\\n            <strong>Data Encryption<\\/strong>\\n            <span>We use advanced encryption technologies to protect your personal information during transmission and\\n                storage. This ensures that your data is secure and inaccessible to unauthorized parties.<\\/span>\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\n            <strong>Access Controls<\\/strong>\\n            <span>We restrict access to your personal information to only those employees, contractors, and agents who\\n                need to know that information to process it on our behalf. These individuals are subject to strict\\n                confidentiality obligations and may be disciplined or terminated if they fail to meet these\\n                obligations.<\\/span>\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\n            <strong>Regular Audits<\\/strong>\\n            <span>We conduct regular audits of our data handling practices and security measures to ensure compliance\\n                with this Privacy Policy and applicable laws. This helps us identify and address any potential\\n                vulnerabilities in our systems.<\\/span>\\n        <\\/li><li style=\\\"margin-bottom:10px;\\\">\\n            <strong>Incident Response<\\/strong>\\n            <span>n the unlikely event of a data breach, we have established procedures to respond promptly and\\n                effectively. We will notify you and any relevant authorities as required by law and take all necessary\\n                steps to mitigate the impact of the breach.<\\/span>\\n        <\\/li><\\/ul>\\n\\n<\\/div>\\n\\n<br \\/>\\n\\n<div>\\n    <h4>Contact Us\\n    <\\/h4>\\n    <p>\\n        If you have any questions about our privacy & policy, please contact\\u00a0<a href=\\\"\\/ovopay\\/demo\\/contact\\\"><strong>with us<\\/strong><\\/a>. Our team is available to assist you with any inquiries or\\n        concerns you may have\\n        regarding our privacy & policy. We value your privacy and are committed to ensuring that your experience on our\\n        website is transparent and satisfactory.\\n    <\\/p>\\n<\\/div>\\n<br \\/>\"}','{\"image\":null,\"description\":null,\"social_title\":null,\"social_description\":null,\"keywords\":null}','basic','privacy-policy','2021-06-09 02:50:42','2025-03-17 15:50:43'),(43,'policy_pages.element','{\"title\":\"Terms of Service\",\"details\":\"<div>\\n    <h4>Terms and Conditions<\\/h4>\\n    <p>By accessing this website, you agree to be bound by these Terms and Conditions of Use, along with all applicable laws and regulations. You are responsible for compliance with any local laws that may apply. If you do not agree with any of these terms, you are prohibited from using or accessing this site.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Customer Support<\\/h4>\\n    <p>After purchasing or downloading our product, you can reach out for support via email. We will make every effort to resolve your issue and may provide smaller fixes through email correspondence, followed by updates to the core package. Verified users can access content support through our ticketing system, as well as via email and live chat.<\\/p>\\n    <p>If your request requires additional modifications to the system, you have two options:<\\/p>\\n    <ul>\\n        <li>Wait for the next update release.<\\/li>\\n        <li>Hire an expert (customizations are available for an additional fee).<\\/li>\\n    <\\/ul>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Intellectual Property Ownership<\\/h4>\\n    <p>You cannot claim intellectual or exclusive ownership of any of our products, whether modified or unmodified. All products remain the property of our organization. Our products are provided \\\"as-is\\\" without any warranty, express or implied. Under no circumstances shall we be liable for any damages, including but not limited to direct, indirect, incidental, or consequential damages arising from the use or inability to use our products.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Product Warranty Disclaimer<\\/h4>\\n    <p>We do not offer any warranty or guarantee for our services. Once our services have been modified, we cannot guarantee compatibility with third-party plugins, modules, or web browsers. Browser compatibility should be tested using the demo templates. Please ensure the browsers you use are compatible, as we cannot guarantee functionality across all browser combinations.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Prohibited and Illegal Use<\\/h4>\\n    <p>You may not use our products for any illegal or unauthorized purposes, nor may you violate any laws in your jurisdiction (including but not limited to copyright laws), as well as the laws of your country and international laws. The use of our platform for pages that promote violence, terrorism, explicit adult content, racism, offensive material, or illegal software is strictly prohibited.<\\/p>\\n    <p>It is prohibited to reproduce, duplicate, copy, sell, trade, or exploit any part of our products without our express written permission or the product owner\'s consent.<\\/p>\\n    <p>Our members are responsible for all content posted on forums and demos, as well as any activities that occur under their account. We reserve the right to block your account immediately if we detect any prohibited behavior.<\\/p>\\n    <p>If you create an account on our site, you are responsible for maintaining the security of your account and all activities that occur under it. You must notify us immediately of any unauthorized use or security breaches.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Payment and Refund Policy<\\/h4>\\n    <p>Refunds or cashback will not be issued. Once a deposit is made, it is non-reversible. You must use your balance to purchase our services, such as hosting or SEO campaigns. By making a deposit, you agree not to file a dispute or chargeback against us.<\\/p>\\n    <p>If a dispute or chargeback is filed after making a deposit, we reserve the right to terminate all future orders and ban you from our site. Fraudulent activities, such as using unauthorized or stolen credit cards, will result in account termination without exceptions.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Free Balance and Coupon Policy<\\/h4>\\n    <p>We offer multiple ways to earn free balance, coupons, and deposit offers, but we reserve the right to review and deduct these balances if we believe there is any form of misuse. If we deduct your free balance and your account balance becomes negative, your account will be suspended. To reactivate a suspended account, you must make a custom payment to settle your balance.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Contact Information<\\/h4>\\n    <p>If you have any questions about our Terms of Service, please contact us through <a href=\\\"\\/ovopay\\/demo\\/contact\\\"><strong>this link<\\/strong><\\/a>. Our team is available to assist you with any inquiries or concerns regarding our Terms of Service. We are committed to ensuring that your experience on our platform is secure and satisfactory.<\\/p>\\n<\\/div>\\n<br \\/>\"}','{\"image\":\"6635d5d9618e71714804185.png\",\"description\":null,\"social_title\":null,\"social_description\":null,\"keywords\":null}','basic','terms-of-service','2021-06-09 02:51:18','2025-03-17 15:51:48'),(44,'maintenance.data','{\"description\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom: 3rem !important;\\\">\\r\\n    <h3 class=\\\"mb-3\\\" style=\\\"text-align: center;\\\"><font color=\\\"#ff0000\\\" face=\\\"Exo, sans-serif\\\"><span style=\\\"font-size: 24px;\\\">UNDER MAINTENANCE<\\/span><\\/font>\\r\\n    <\\/h3>\\r\\n    <div class=\\\"mb-3\\\">\\r\\n        <p>Our site is currently undergoing scheduled maintenance to enhance performance and ensure a smoother\\r\\n            experience for you. During this time, some features may be temporarily unavailable. We are committed to\\r\\n            completing this update as quickly as possible. Thank you for your patience and understanding as we work to\\r\\n            improve your experience. Please check back soon for further updates.<\\/p>\\r\\n    <\\/div>\\r\\n<\\/div>\",\"image\":\"69dcd3f61cf2d1776079862.png\"}',NULL,NULL,NULL,'2020-07-04 17:42:52','2026-04-13 03:31:02'),(61,'kyc.content','{\"required\":\"Complete KYC to unlock the full potential of our platform! KYC helps us verify your identity and keep things secure. It is quick and easy just follow the on-screen instructions. Get started with KYC verification now!\",\"pending\":\"Your KYC verification is being reviewed. We might need some additional information. You will get an email update soon. In the meantime, explore our platform with limited features.\",\"reject\":\"We regret to inform you that the Know Your Customer (KYC) information provided has been reviewed and unfortunately, it has not met our verification standards.\"}',NULL,'basic','','2024-04-25 00:40:29','2025-03-16 06:04:57'),(62,'blog.content','{\"heading\":\"Latest News\",\"subheading\":\"------\"}',NULL,'basic','','2024-04-30 01:31:30','2024-04-30 01:31:30'),(64,'banner.content','{\"has_image\":\"1\",\"heading\":\"All in One Financial Service\",\"button_text\":\"Get Started - It\'s Free\",\"button_url\":\"user\\/register\",\"background_image\":\"67a207f76cd041738672119.png\",\"banner_image\":\"67d7eb4b6da091742203723.png\",\"review_image\":\"67d7eaaf168281742203567.png\"}',NULL,'basic','','2024-04-30 18:06:45','2025-03-17 16:28:43'),(66,'register_disable.content','{\"has_image\":\"1\",\"heading\":\"Registration Currently Disabled\",\"subheading\":\"Page you are looking for doesn\'t exit or an other error occurred or temporarily unavailable.\",\"button_name\":\"Go to Home\",\"button_url\":\"#\",\"image\":\"67cea315e63451741595413.png\"}',NULL,'basic','','2024-05-06 23:23:12','2025-03-10 02:30:15'),(68,'faq.content','{\"heading\":\"Frequently Asked Questions\"}',NULL,'basic','','2024-09-10 18:52:59','2025-03-18 03:00:29'),(70,'footer.content','{\"has_image\":\"1\",\"heading\":\"STAY UP TO DATE ON ALL THE LATEST NEWS.\",\"play_store_link\":\"#\",\"app_store_link\":\"#\",\"background_image\":\"67a08867266781738573927.png\",\"play_store_image\":\"67a088678b9b21738573927.png\",\"app_store_image\":\"67a088678cb031738573927.png\"}',NULL,'basic','','2025-02-03 03:12:07','2025-02-03 03:12:07'),(71,'auth_section.content','{\"has_image\":\"1\",\"register_heading\":\"Create Your Account\",\"register_subheading\":\"Join today and simplify your financial management\",\"login_heading\":\"Welcome Back!\",\"login_subheading\":\"Log in to manage your finances seamlessly.\",\"background_image\":\"67a0ac47007e81738583111.png\"}',NULL,'basic','','2025-02-03 05:45:10','2025-02-04 04:46:47'),(72,'how_to_work.content','{\"title_one\":\"Secure, Seamless, Smarter\",\"heading\":\"OvoPay simplifies financial management with seamless transfers, secure payments, and smart savings tools. With a focus on innovation and security, it empowers users to take control of their finances effortlessly.\",\"title_two\":\"How it Woks\",\"has_image\":\"1\",\"background_image\":\"67a2086818ee81738672232.png\"}',NULL,'basic','','2025-02-04 06:30:32','2025-02-04 06:30:32'),(73,'how_to_work.element','{\"title\":\"Sign Up\",\"short_description\":\"Create an account in minutes with your phone number\",\"has_image\":\"1\",\"image\":\"67a208a6703f11738672294.png\"}',NULL,'basic','','2025-02-04 06:31:34','2025-02-06 03:07:45'),(74,'how_to_work.element','{\"title\":\"Add Money\",\"short_description\":\"Link your bank, card, or wallet to load funds instantly\",\"has_image\":\"1\",\"image\":\"67a208b35792d1738672307.png\"}',NULL,'basic','','2025-02-04 06:31:47','2025-02-06 03:07:42'),(75,'how_to_work.element','{\"title\":\"Start Using\",\"short_description\":\"Send, Received, Pay Bills  or shop with ease\\u2014all in one app\",\"has_image\":\"1\",\"image\":\"67a208bddc0641738672317.png\"}',NULL,'basic','','2025-02-04 06:31:57','2025-02-06 03:08:22'),(76,'counter.content','{\"has_image\":\"1\",\"image\":\"67a20a4972e5b1738672713.png\"}',NULL,'basic','','2025-02-04 06:38:33','2025-02-04 06:38:33'),(77,'counter.element','{\"title\":\"Total Transaction\",\"count\":\"500\",\"abbreviation\":\"M+\"}',NULL,'basic','','2025-02-04 06:39:08','2025-02-04 06:39:08'),(78,'counter.element','{\"title\":\"Total User\",\"count\":\"10\",\"abbreviation\":\"M+\"}',NULL,'basic','','2025-02-04 06:39:18','2025-02-06 03:10:08'),(79,'counter.element','{\"title\":\"Supported Bank\",\"count\":\"100\",\"abbreviation\":\"+\"}',NULL,'basic','','2025-02-04 06:39:29','2025-02-06 03:09:57'),(80,'counter.element','{\"title\":\"Daily Transaction\",\"count\":\"10000\",\"abbreviation\":\"+\"}',NULL,'basic','','2025-02-04 06:39:38','2025-02-06 03:09:41'),(81,'testimonial.content','{\"heading\":\"Trusted by Millions Worldwide\"}',NULL,'basic','','2025-02-04 06:40:14','2025-02-04 06:40:14'),(101,'cta.content','{\"has_image\":\"1\",\"heading\":\"Download OvoPay Mobile App\",\"play_store_link\":\"https:\\/\\/preview.ovosolution.com\\/ovopay\\/apk\\/user.apk\",\"app_store_link\":\"https:\\/\\/preview.ovosolution.com\\/ovopay\\/apk\\/user.apk\",\"image\":\"67d7e97c5e8351742203260.png\",\"play_store_image\":\"67a20d2ece6d81738673454.png\",\"app_store_image\":\"67a20d2ecf8b41738673454.png\"}',NULL,'basic','','2025-02-04 06:50:54','2025-03-17 16:21:28'),(102,'social_icon.element','{\"title\":\"linkedin\",\"social_icon\":\"<i class=\\\"fa-brands fa-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\\/\"}',NULL,'basic','','2025-02-04 06:53:38','2025-02-04 06:53:38'),(103,'social_icon.element','{\"title\":\"twitter\",\"social_icon\":\"<i class=\\\"fa-brands fa-x-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/x.com\\/\"}',NULL,'basic','','2025-02-04 06:54:11','2025-02-04 06:54:11'),(104,'social_icon.element','{\"title\":\"instagram\",\"social_icon\":\"<i class=\\\"fa-brands fa-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\\/\"}',NULL,'basic','','2025-02-04 06:54:45','2025-02-04 06:54:45'),(105,'social_icon.element','{\"title\":\"discord\",\"social_icon\":\"<i class=\\\"fa-brands fa-discord\\\"><\\/i>\",\"url\":\"https:\\/\\/discord.com\\/\"}',NULL,'basic','','2025-02-04 06:55:12','2025-02-04 06:55:12'),(106,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Add Money\",\"short_description\":\"Add Money lets users choose a source, enter an amount, and confirm the transaction.\",\"description\":\"Add Money lets users choose a source, enter an amount, and confirm the transaction.\",\"width\":\"col-md-6 col-lg-5 col-xxl-4\",\"background_color\":\"#f0f0f0\",\"service_image\":\"67a45fdb937061738825691.gif\"}',NULL,'basic','','2025-02-06 01:07:22','2026-04-13 05:17:24'),(107,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Send & Receive Money\",\"short_description\":\"Quickly and securely send or receive money anytime, anywhere. Enjoy fast, hassle-free transactions without any complications.\",\"description\":\"Effortlessly transfer and receive money instantly using NFC, QR codes, or P2P transactions, ensuring fast, secure, and hassle-free payments for any occasion.\",\"width\":\"col-md-6 col-lg-7 col-xxl-8\",\"background_color\":\"#f0f0f0\",\"service_image\":\"67a4614a1ccd01738826058.gif\"}',NULL,'basic','','2025-02-06 01:14:18','2026-04-13 05:16:54'),(108,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Virtual Card\",\"short_description\":\"Create secure virtual cards for online shopping with customizable limits.\",\"description\":\"Create secure virtual cards for online shopping with customizable limits.\",\"width\":\"col-md-6 col-lg-5 col-xxl-4\",\"background_color\":\"#f0f0f0\",\"service_image\":\"67a46571038841738827121.gif\"}',NULL,'basic','','2025-02-06 01:32:00','2026-04-13 05:16:46'),(109,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Savings Goal\",\"short_description\":\"Set and track automated savings goals with flexible contribution options.\",\"description\":\"Set and track automated savings goals with flexible contribution options.\",\"width\":\"col-md-6 col-lg-5 col-xxl-4\",\"background_color\":\"#f0f0f0\",\"service_image\":\"67a465924e7581738827154.gif\"}',NULL,'basic','','2025-02-06 01:32:34','2026-04-13 05:16:38'),(110,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Bill Pay\",\"short_description\":\"Quickly pay utility bills with automatic reminders for due dates.\",\"description\":\"Quickly pay utility bills with automatic reminders for due dates.\",\"width\":\"col-md-6 col-lg-5 col-xxl-4\",\"background_color\":\"#f0f0f0\",\"service_image\":\"67a465aad813a1738827178.gif\"}',NULL,'basic','','2025-02-06 01:32:58','2026-04-13 05:16:29'),(111,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Mobile Recharge\",\"short_description\":\"Seamless and secure mobile recharges anytime, anywhere. Stay connected without any hassle.\",\"description\":\"Transfer and receive money instantly via NFC, QR codes, or P2P.\",\"width\":\"col-md-6\",\"background_color\":\"#f0f0f0\",\"service_image\":\"67a465d566ed21738827221.gif\"}',NULL,'basic','','2025-02-06 01:33:30','2026-04-13 05:17:11'),(112,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Donation\",\"short_description\":\"Easily make donations anytime, anywhere. Support causes that matter with fast, secure, and hassle-free contributions.\",\"description\":\"Create secure virtual cards for online shopping with customizable limits.\",\"width\":\"col-md-6\",\"background_color\":\"#f0f0f0\",\"service_image\":\"69dcebac3041b1776085932.png\"}',NULL,'basic','','2025-02-06 01:34:25','2026-04-13 05:15:55'),(113,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Merchant Payment\",\"short_description\":\"Quick and secure merchant payments anytime, anywhere. Enjoy seamless transactions with no hassle.\",\"description\":\"Quick and secure merchant payments anytime, anywhere. Enjoy seamless transactions with no hassle.\",\"width\":\"col-md-6 col-lg-5\",\"background_color\":\"#f0f0f0\",\"service_image\":\"67a4664b2717f1738827339.gif\"}',NULL,'basic','','2025-02-06 01:35:39','2026-04-13 05:16:12'),(114,'service.element','{\"has_image\":[\"1\"],\"heading\":\"Cash Out\",\"short_description\":\"Effortlessly cash out your funds anytime, anywhere. Enjoy fast, secure, and hassle-free withdrawals.\",\"description\":\"Set and track automated savings goals with flexible contribution options.\",\"width\":\"col-md-6 col-lg-5 col-xxl-4\",\"background_color\":\"#f0f0f0\",\"service_image\":\"67a46671b3a9e1738827377.gif\"}',NULL,'basic','','2025-02-06 01:36:17','2026-04-13 05:18:38'),(128,'testimonial.element','{\"has_image\":\"1\",\"name\":\"Albert Flore\",\"designation\":\"OvoPay User\",\"title\":\"A Fast, Simple, and Secure Payment Solution\",\"message\":\"OvoPay has completely transformed how I manage my payments. It\'s quick, secure, and makes transferring money easier than ever! I no longer need to worry about slow transfers or security issues. The app is so user-friendly that I can use it anytime, anywhere. Highly recommend it to anyone looking for a reliable payment solution!\",\"client_image\":\"67a47f07e7bc11738833671.png\"}',NULL,'basic','','2025-02-04 00:42:55','2025-02-06 03:21:11'),(129,'testimonial.element','{\"has_image\":\"1\",\"name\":\"Emma Lee\",\"designation\":\"OvoPay User\",\"title\":\"OvoPay Makes Transfers Quick, Secure, and Hassle-Free\",\"message\":\"I love using OvoPay! Sending and receiving money is so fast, and I never have to worry about security. The process is so straightforward, and everything is handled with ease. Whether I\\u2019m paying for services or sending money to friends, it\\u2019s always quick and seamless. Definitely the best financial service I\\u2019ve used!\",\"client_image\":\"67a47f028d4921738833666.png\"}',NULL,'basic','','2025-02-04 00:45:00','2025-02-06 03:21:06'),(131,'testimonial.element','{\"has_image\":\"1\",\"name\":\"Rachel Green\",\"designation\":\"OvoPay User\",\"title\":\"Seamless Transactions with OvoPay \\u2013 Fast and Easy\",\"message\":\"I\\u2019ve been using OvoPay for all my transactions, and I\\u2019m impressed by how smooth everything is. I can\\u2019t imagine going back to anything else. The app is fast, secure, and so easy to use. It\\u2019s an absolute game-changer for anyone who wants a hassle-free way to manage their money!\",\"client_image\":\"67a47ee948dd81738833641.png\"}',NULL,'basic','','2025-02-04 00:50:00','2025-02-06 03:20:43'),(132,'testimonial.element','{\"has_image\":\"1\",\"name\":\"John Doe\",\"designation\":\"OvoPay User\",\"title\":\"The Future of Mobile Payments: Easy, Secure, and Reliable\",\"message\":\"OvoPay is the future of mobile financial services. The app is intuitive and works perfectly every time. Sending money has never been easier, and I feel confident about the security of my transactions. It\'s the perfect tool for anyone on the go! I\'m thoroughly impressed with how reliable and efficient it is.\",\"client_image\":\"67a47ef44940d1738833652.png\"}',NULL,'basic','','2025-02-04 00:47:00','2025-02-06 03:20:52'),(164,'faq.element','{\"question\":\"How secure is my money with OvoPay?\",\"answer\":\"OvoPay uses the highest industry standards for security. All transactions are encrypted and we use multi-factor authentication to ensure the safety of your funds.\",\"icon\":\"<i class=\\\"las la-user-shield\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 21:30:00','2025-03-13 08:23:12'),(165,'faq.element','{\"question\":\"Can I transfer money internationally with OvoPay?\",\"answer\":\"Yes, you can send money to friends and family across the globe with OvoPay. All international transfers are as fast and secure as domestic ones.\",\"icon\":\"<i class=\\\"las la-globe-americas\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 21:35:00','2025-03-13 08:23:02'),(166,'faq.element','{\"question\":\"How can I add funds to my OvoPay account?\",\"answer\":\"You can add funds to your OvoPay account using your linked bank account or credit\\/debit card, making it easy to top-up your balance anytime.\",\"icon\":\"<i class=\\\"las la-credit-card\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 21:40:00','2025-03-13 08:22:50'),(167,'faq.element','{\"question\":\"What devices support OvoPay?\",\"answer\":\"OvoPay is compatible with both mobile and desktop devices. You can use it on iOS, Android, or through any web browser.\",\"icon\":\"<i class=\\\"las la-mobile\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 21:45:00','2025-03-13 08:22:37'),(168,'faq.element','{\"question\":\"How long do transactions take to process?\",\"answer\":\"Most transactions are processed instantly or within a few minutes, but international transfers may take longer depending on the recipient country.\",\"icon\":\"<i class=\\\"las la-hourglass\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 21:50:00','2025-03-13 08:22:03'),(169,'faq.element','{\"question\":\"Are there any transaction fees?\",\"answer\":\"OvoPay offers competitive rates with minimal fees. We provide transparent pricing, and you can always view the breakdown before confirming any payment.\",\"icon\":\"<i class=\\\"las la-money-bill-wave-alt\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 21:55:00','2025-03-13 08:21:50'),(170,'faq.element','{\"question\":\"How can I contact customer support?\",\"answer\":\"You can contact our customer support team via email at support@ovosolution.com or through the in-app support feature for quick assistance.\",\"icon\":\"<i class=\\\"las la-headset\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 22:00:00','2025-03-13 08:21:37'),(171,'faq.element','{\"question\":\"Can I use OvoPay for business payments?\",\"answer\":\"Yes, OvoPay supports both personal and business payments. You can send and receive payments for goods and services with ease.\",\"icon\":\"<i class=\\\"las la-briefcase\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 22:05:00','2025-03-13 08:21:19'),(173,'faq.element','{\"question\":\"How do I set up an OvoPay account?\",\"answer\":\"Setting up an account with OvoPay is quick and easy. Simply download the app or visit our website, sign up, and follow the on-screen instructions.\",\"icon\":\"<i class=\\\"far fa-user\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 22:15:00','2025-03-13 08:21:01'),(174,'faq.element','{\"question\":\"What should I do if I forgot my password?\",\"answer\":\"If you\\u2019ve forgotten your password, simply click on the \\u2018Forgot Password\\u2019 link in the login screen, and follow the instructions to reset it.\",\"icon\":\"<i class=\\\"las la-key\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 22:20:00','2025-03-13 08:20:44'),(175,'faq.element','{\"question\":\"Can I link multiple bank accounts to OvoPay?\",\"answer\":\"Yes, you can link multiple bank accounts to your OvoPay account for easy payments and fund transfers.\",\"icon\":\"<i class=\\\"las la-university\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 22:25:00','2025-03-13 08:19:21'),(176,'faq.element','{\"question\":\"Can I withdraw funds from OvoPay to my bank account?\",\"answer\":\"Yes, you can withdraw funds from your OvoPay balance to your linked bank account at any time, usually within a few business days.\",\"icon\":\"<i class=\\\"las la-download\\\"><\\/i>\"}',NULL,'basic','','2025-02-05 22:30:00','2025-03-13 08:20:27'),(178,'blog.element','{\"has_image\":[\"1\"],\"title\":\"The Future of the Mobile Financial Services Industry: Trends and Innovations\",\"description\":\"<p>The Mobile Financial Services (MFS) industry is undergoing rapid transformation, driven by technological advancements, changing consumer behavior, and financial inclusion initiatives. As digital payments, mobile wallets, and fintech solutions continue to gain momentum, the future of MFS looks promising, with groundbreaking innovations reshaping the financial landscape. In this blog, we explore the key trends and innovations shaping the future of the MFS industry.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>The Rise of Digital-First Banking<\\/h4>\\r\\n<p>Traditional banking is gradually giving way to digital-first financial solutions. Neo-banks, mobile-only banks, and fintech startups are redefining financial services by offering seamless, paperless, and branchless banking experiences. With user-friendly mobile applications, AI-powered chatbots, and personalized financial insights, digital banking is enhancing convenience and accessibility for users worldwide.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>AI and Machine Learning Transforming Financial Services<\\/h4>\\r\\n<p>Artificial Intelligence (AI) and Machine Learning (ML) are revolutionizing MFS by enabling predictive analytics, fraud detection, and automated financial management. AI-driven chatbots provide instant customer support, while ML algorithms help identify suspicious transactions in real time, enhancing security and trust in digital financial services. These technologies are also powering robo-advisors that offer smart investment solutions tailored to individual financial goals.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Blockchain and Cryptocurrency Integration<\\/h4>\\r\\n<p>Blockchain technology is set to play a significant role in the future of MFS, offering secure, transparent, and decentralized financial transactions. Cryptocurrencies and stablecoins are being increasingly adopted for cross-border payments, reducing transaction costs and processing times. Central Bank Digital Currencies (CBDCs) are also gaining traction, with governments exploring digital currencies as a regulated alternative to traditional cash.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Biometric Authentication for Enhanced Security<\\/h4>\\r\\n<p>Security remains a top priority in MFS, and biometric authentication is emerging as a game-changer. Fingerprint recognition, facial authentication, and voice verification are being integrated into mobile payment apps to ensure secure and seamless transactions. These innovations are reducing fraud risks and enhancing user confidence in digital financial platforms.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>The Growth of Embedded Finance<\\/h4>\\r\\n<p>Embedded finance is redefining how financial services are delivered by integrating banking, lending, and payment solutions directly into non-financial platforms. E-commerce sites, ride-hailing apps, and social media platforms are embedding financial services, enabling users to make purchases, access credit, and manage transactions without leaving their preferred digital environments.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Expansion of Financial Inclusion Initiatives<\\/h4>\\r\\n<p>One of the most impactful trends in MFS is the push for financial inclusion. Mobile banking solutions and microfinance platforms are providing unbanked and underbanked populations with access to essential financial services. Governments, NGOs, and fintech companies are collaborating to bridge the financial gap, ensuring that individuals in remote and underserved areas can participate in the digital economy.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>The Role of 5G in Financial Transactions<\\/h4>\\r\\n<p>The rollout of 5G networks is set to enhance the speed, efficiency, and reliability of mobile financial transactions. With lower latency and increased connectivity, 5G will enable instant digital payments, improve real-time fraud detection, and support IoT-powered financial solutions. This advancement will further accelerate the adoption of contactless payments and mobile banking services.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Personalized Financial Services with Big Data<\\/h4>\\r\\n<p>Big Data analytics is enabling financial institutions to offer personalized financial products and services. By analyzing user behavior, spending patterns, and transaction history, MFS providers can tailor recommendations for savings, investments, and credit options. Hyper-personalization is becoming a key differentiator in the competitive MFS landscape.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>The Future of Contactless and QR Code Payments<\\/h4>\\r\\n<p>Contactless payments and QR code-based transactions are gaining widespread adoption, especially in emerging markets. With mobile wallets becoming the preferred payment method, businesses and consumers are embracing frictionless payment experiences. The continuous evolution of Near Field Communication (NFC) and digital payment infrastructure will further drive the growth of contactless transactions.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<p>The Mobile Financial Services industry is poised for a revolutionary future, with AI, blockchain, biometrics, and embedded finance leading the way. As MFS continues to evolve, businesses, financial institutions, and consumers will benefit from faster, more secure, and highly personalized financial solutions. By staying ahead of these trends and innovations, the industry will shape the next era of digital finance and economic empowerment.<\\/p>\\r\\n<br \\/>\",\"image\":\"67a723b38b7991739006899.png\"}',NULL,'basic','the-future-of-the-mobile-financial-services-industry-trends-and-innovations','2025-02-06 03:39:46','2025-02-08 03:31:50'),(179,'blog.element','{\"has_image\":[\"1\"],\"title\":\"How Mobile Financial Services are Shaping the Digital Economy\",\"description\":\"<p>The rapid evolution of the digital economy is being fueled by Mobile Financial Services (MFS), transforming the way individuals, businesses, and governments manage financial transactions. As digital payments, mobile banking, and fintech innovations continue to rise, MFS plays a crucial role in enhancing financial inclusion, streamlining commerce, and driving economic growth. This blog explores how MFS is reshaping the digital economy and its long-term impact on global financial ecosystems.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Enhancing Financial Inclusion and Accessibility<\\/h4>\\r\\n<p>One of the most significant contributions of MFS is its ability to provide financial services to unbanked and underbanked populations. With mobile wallets and digital banking solutions, individuals in remote and rural areas can now access essential financial tools, including money transfers, bill payments, and microloans. By eliminating the need for traditional banking infrastructure, MFS is fostering economic participation and empowering millions to become active contributors to the digital economy.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Accelerating the Growth of E-Commerce<\\/h4>\\r\\n<p>The expansion of MFS has been a game-changer for e-commerce, enabling seamless and secure digital transactions. Mobile payment gateways, digital wallets, and instant transaction processing have eliminated barriers to online shopping, making it easier for consumers to purchase goods and services from anywhere in the world. Businesses, both large and small, are leveraging MFS to expand their reach, boost sales, and provide customers with flexible payment options.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Driving Digital Payments and Cashless Transactions<\\/h4>\\r\\n<p>The shift towards a cashless economy is being driven by MFS, which offers fast, secure, and convenient digital payment methods. Whether through QR codes, NFC-based payments, or peer-to-peer transfers, mobile financial solutions are replacing traditional cash transactions. Governments and financial institutions are actively promoting cashless initiatives to reduce the risks associated with handling cash, improve tax compliance, and increase transaction transparency.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Empowering Small Businesses and Entrepreneurs<\\/h4>\\r\\n<p>MFS is providing small businesses and entrepreneurs with access to financial tools that were previously available only to large corporations. Digital payment solutions, mobile banking, and easy access to microfinance are enabling small vendors, freelancers, and startups to manage their finances efficiently. With features like automated invoicing, subscription payments, and real-time transaction tracking, MFS is leveling the playing field for businesses of all sizes.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Facilitating Cross-Border Transactions and Remittances<\\/h4>\\r\\n<p>Cross-border payments and remittances have traditionally been slow and expensive due to high transaction fees and regulatory challenges. MFS is revolutionizing this space by providing faster, more affordable, and transparent international payment solutions. Digital wallets, blockchain-based transfers, and mobile banking services are making it easier for individuals and businesses to send and receive money across borders, fueling global trade and economic connectivity.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Enhancing Security and Fraud Prevention<\\/h4>\\r\\n<p>With the rise of digital transactions, security has become a top priority for financial service providers. MFS platforms leverage advanced security technologies, such as biometric authentication, AI-driven fraud detection, and end-to-end encryption, to ensure the safety of user transactions. These innovations are building consumer trust and confidence in digital financial services, further accelerating their adoption in the digital economy.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Strengthening Government and Public Sector Services<\\/h4>\\r\\n<p>Governments worldwide are integrating MFS into public sector initiatives, enabling faster and more efficient service delivery. Digital financial solutions are being used for social welfare distribution, tax collection, and government-to-person (G2P) payments, reducing corruption and improving transparency. By leveraging MFS, governments can streamline financial operations and enhance public service accessibility.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>The Future of MFS in the Digital Economy<\\/h4>\\r\\n<p>As technology continues to evolve, the role of MFS in shaping the digital economy will only expand. Innovations such as decentralized finance (DeFi), AI-powered financial advisory services, and embedded finance solutions are set to redefine how individuals and businesses interact with financial systems. The seamless integration of MFS with emerging technologies will drive economic transformation, making digital finance more inclusive, efficient, and future-ready.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<p>Mobile Financial Services are at the heart of the digital economy, driving financial inclusion, enabling seamless transactions, and fostering economic growth. With continuous advancements in fintech and digital banking, MFS will continue to revolutionize financial services, making them more accessible, secure, and efficient for users worldwide.<\\/p>\\r\\n<br \\/>\",\"image\":\"67a72354ee3601739006804.png\"}',NULL,'basic','how-mobile-financial-services-are-shaping-the-digital-economy','2025-02-06 03:39:58','2025-02-08 03:26:45'),(180,'blog.element','{\"has_image\":[\"1\"],\"title\":\"The Role of Mobile Financial Services in Enhancing Global Financial Inclusion\",\"description\":\"<p>Financial inclusion remains a significant challenge worldwide, with billions of people still lacking access to formal banking services. Mobile Financial Services (MFS) are playing a transformative role in bridging this gap by providing secure, accessible, and cost-effective financial solutions. Through mobile banking, digital wallets, and microfinance solutions, MFS is empowering unbanked and underbanked populations, enabling them to participate in the global economy. In this blog, we explore how MFS is driving financial inclusion and reshaping the future of digital finance.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Bridging the Gap for the Unbanked Population<\\/h4>\\r\\n<p>Traditional banking services often fail to reach remote and underserved regions due to infrastructure limitations and high operational costs. MFS has emerged as a game-changer by enabling individuals to perform essential financial transactions using only a mobile phone. With mobile wallets, users can send and receive money, pay bills, and access credit without needing a traditional bank account, thus reducing dependency on cash-based transactions.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Empowering Small Businesses and Entrepreneurs<\\/h4>\\r\\n<p>Access to financial services is crucial for small businesses and entrepreneurs, particularly in developing economies. MFS platforms offer microloans, digital payment solutions, and financial management tools that help small businesses grow. By facilitating seamless transactions and reducing reliance on cash, MFS is enabling business owners to expand their operations, increase revenue, and participate in the formal financial system.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Reducing Gender Inequality in Financial Access<\\/h4>\\r\\n<p>Women in many regions face significant barriers to accessing financial services due to cultural norms, lack of documentation, and mobility restrictions. MFS solutions are helping to break these barriers by providing women with secure and private access to financial tools. Mobile banking applications allow women to save money, receive payments, and access credit, empowering them to achieve financial independence and contribute to household and community development.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Facilitating Government Aid and Social Benefits<\\/h4>\\r\\n<p>Governments and humanitarian organizations are leveraging MFS to distribute social benefits, subsidies, and emergency relief funds directly to beneficiaries. Digital financial services ensure that aid reaches the intended recipients efficiently, reducing leakages and corruption associated with cash-based disbursements. This innovation has been particularly crucial during crises, such as natural disasters and pandemics, where quick and secure financial support is essential.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Enhancing Agricultural and Rural Development<\\/h4>\\r\\n<p>Farmers and rural communities often struggle with limited access to financial resources, which affects productivity and economic growth. MFS is revolutionizing the agricultural sector by providing farmers with mobile-based credit, insurance, and payment options. Digital financial tools enable rural populations to invest in better farming practices, purchase necessary equipment, and gain access to markets without the constraints of traditional banking.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Improving Remittance and Cross-Border Transactions<\\/h4>\\r\\n<p>For millions of migrant workers, sending money back home can be costly and time-consuming. MFS is simplifying remittances by offering fast, secure, and low-cost digital transfer solutions. Mobile money platforms reduce reliance on expensive remittance services and informal cash transfers, ensuring that families receive financial support without excessive fees and delays.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Expanding Access to Credit and Savings<\\/h4>\\r\\n<p>Credit and savings are essential for financial stability and economic growth. MFS providers are utilizing alternative credit scoring methods based on transaction history, mobile usage, and spending patterns to offer loans to individuals without traditional credit histories. Additionally, mobile savings accounts encourage financial discipline, helping users to build reserves for future expenses, emergencies, and investments.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Leveraging Technology for Secure and Scalable Solutions<\\/h4>\\r\\n<p>The integration of cutting-edge technologies such as artificial intelligence, blockchain, and biometric authentication is enhancing the security and scalability of MFS. AI-driven financial insights help users manage their money more effectively, while blockchain ensures transparent and tamper-proof transactions. Biometric authentication, such as fingerprint and facial recognition, enhances security, reducing fraud and unauthorized access.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>The Future of Financial Inclusion with MFS<\\/h4>\\r\\n<p>As MFS continues to evolve, new innovations will further drive financial inclusion. Advancements in digital identity verification, real-time payments, and regulatory frameworks will ensure that more people gain access to financial services. Collaboration between governments, fintech companies, and international organizations will be key in ensuring that MFS reaches its full potential in transforming global financial inclusion.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<p>Mobile Financial Services are not just changing the way people access financial services; they are reshaping economies, empowering communities, and reducing poverty worldwide. By providing accessible, affordable, and secure financial solutions, MFS is playing a critical role in ensuring that no one is left behind in the digital financial revolution.<\\/p>\\r\\n<br \\/>\",\"image\":\"67a722a668a4f1739006630.png\"}',NULL,'basic','the-role-of-mobile-financial-services-in-enhancing-global-financial-inclusion','2025-02-06 03:40:13','2025-02-08 06:38:32'),(181,'blog.element','{\"has_image\":[\"1\"],\"title\":\"The Rise of MFS: Key Drivers Behind the Rapid Growth of Mobile Payments\",\"description\":\"<p>The Mobile Financial Services (MFS) industry has witnessed an unprecedented surge in adoption, reshaping how people and businesses conduct financial transactions. As mobile payments become the preferred choice for consumers, the rapid growth of MFS is fueled by several key drivers, including technological advancements, financial inclusion initiatives, and changing consumer preferences. This blog explores the critical factors driving the expansion of mobile payments and how they are revolutionizing the financial landscape.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n\\r\\n<h4>Increasing Smartphone and Internet Penetration<\\/h4>\\r\\n<p>The widespread adoption of smartphones and affordable internet access has been a game-changer for the MFS industry. With billions of people now owning mobile devices, digital financial services have become more accessible than ever. Mobile apps, digital wallets, and USSD-based services enable users to perform financial transactions with just a few taps, eliminating the need for physical banking infrastructure. This growing connectivity is one of the most significant factors fueling the expansion of mobile payments globally.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Financial Inclusion and the Unbanked Population<\\/h4>\\r\\n<p>Traditional banking systems have left millions of people without access to essential financial services. MFS is bridging this gap by providing unbanked individuals with digital financial solutions that require minimal infrastructure. Through mobile wallets, users can store money, pay bills, send remittances, and access microloans without needing a bank account. Governments and financial institutions are actively promoting MFS as a tool to enhance financial inclusion, driving adoption in emerging markets.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Shift in Consumer Payment Preferences<\\/h4>\\r\\n<p>Consumer behavior is evolving rapidly, with a strong preference for cashless transactions. The convenience of mobile payments, coupled with features such as QR code scanning, tap-to-pay, and instant transfers, has made MFS the go-to option for many users. Whether for online shopping, peer-to-peer transactions, or in-store purchases, mobile payments offer a seamless experience, reducing reliance on cash and traditional banking methods.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Advancements in Security and Fraud Prevention<\\/h4>\\r\\n<p>Security concerns have long been a barrier to digital payment adoption. However, advancements in biometric authentication, encryption, and artificial intelligence-driven fraud detection have significantly enhanced the safety of mobile transactions. Users and businesses now have greater confidence in MFS platforms, leading to widespread acceptance and adoption of digital payments as a secure alternative to cash transactions.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Government Policies and Regulatory Support<\\/h4>\\r\\n<p>Many governments and regulatory bodies are actively supporting the growth of MFS by implementing favorable policies and frameworks. Initiatives such as digital banking licenses, open banking regulations, and real-time payment networks have encouraged fintech innovation and expanded access to mobile financial services. Additionally, cashless economy campaigns and tax incentives for digital transactions are accelerating MFS adoption at both consumer and business levels.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>The Role of Fintech and Strategic Partnerships<\\/h4>\\r\\n<p>The rise of fintech companies has been instrumental in driving MFS adoption. Fintech startups, in collaboration with traditional banks and telecom providers, have introduced innovative payment solutions that cater to diverse market needs. These partnerships have resulted in the creation of digital wallets, mobile lending platforms, and seamless payment gateways that enhance financial accessibility and user convenience.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Impact of COVID-19 on Digital Payment Growth<\\/h4>\\r\\n<p>The COVID-19 pandemic acted as a catalyst for mobile payment adoption, as social distancing measures and hygiene concerns discouraged cash transactions. Businesses and consumers rapidly transitioned to digital payments, accelerating the growth of MFS. Contactless payment solutions, e-commerce transactions, and digital banking services surged, reinforcing the long-term shift towards mobile financial services as the preferred mode of transaction.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<h4>Future Trends and the Continued Rise of MFS<\\/h4>\\r\\n<p>As technology continues to evolve, the future of MFS is set to be even more dynamic. Innovations such as blockchain-based payments, artificial intelligence-driven financial services, and cross-border payment solutions will further expand the reach of mobile financial services. The integration of MFS into everyday applications, including ride-sharing, e-commerce, and subscription-based services, will continue to drive adoption and reshape the digital economy.<\\/p>\\r\\n<br \\/>\\r\\n\\r\\n<p>The rapid growth of mobile payments is a testament to the transformative power of MFS. With increasing smartphone penetration, financial inclusion efforts, and evolving consumer preferences, MFS is revolutionizing the way financial transactions are conducted worldwide. As digital payments become the new norm, the industry will continue to innovate, providing users and businesses with seamless, secure, and efficient financial solutions.<\\/p>\\r\\n<br \\/>\",\"image\":\"67a72229e2a941739006505.png\"}',NULL,'basic','the-rise-of-mfs-key-drivers-behind-the-rapid-growth-of-mobile-payments','2025-02-06 03:40:30','2025-02-08 03:21:46'),(182,'blog.element','{\"has_image\":[\"1\"],\"title\":\"How MFS Solutions Are Empowering Businesses and Users in the Digital Age\",\"description\":\"<p>In the digital age, financial transactions have evolved beyond traditional banking methods, paving the way for Mobile Financial Services (MFS) to take center stage. MFS solutions are transforming the way businesses operate and how users manage their finances, offering seamless, secure, and instant digital transactions. From small merchants to large enterprises, and from individual users to unbanked populations, MFS is bridging financial gaps and driving economic growth. In this blog, we explore how MFS solutions are reshaping the financial landscape and empowering businesses and users in today\'s digital economy.<\\/p>\\r\\n\\r\\n<br \\/>\\r\\n<h4>Enhancing Financial Inclusion and Accessibility<\\/h4>\\r\\n<p>One of the most significant contributions of MFS is its ability to provide financial services to people who previously had limited or no access to traditional banking. Millions of individuals, especially in developing regions, now have the ability to send, receive, and store money through mobile wallets and digital banking platforms. This accessibility empowers users to take control of their financial well-being, participate in e-commerce, and manage transactions effortlessly\\u2014without needing a bank account or physical banking infrastructure.<\\/p>\\r\\n<br \\/>\\r\\n<h4>Streamlining Business Transactions and Payments<\\/h4>\\r\\n<p>For businesses, efficiency in financial transactions is crucial for growth and sustainability. MFS solutions enable businesses to process payments quickly, reducing the dependency on cash and minimizing transaction delays. Digital payment systems such as QR code payments, mobile wallets, and contactless transactions have become integral to modern commerce, allowing businesses to accept payments seamlessly from customers, both online and offline. This streamlined approach enhances operational efficiency and customer satisfaction.<\\/p>\\r\\n<br \\/>\\r\\n<h4>Boosting E-Commerce and Digital Marketplaces<\\/h4>\\r\\n<p>With the rise of e-commerce and digital marketplaces, MFS solutions are playing a key role in providing fast and secure payment options. Online shoppers can now complete transactions in seconds using mobile banking apps, digital wallets, and instant payment gateways. This convenience encourages higher customer retention and drives revenue growth for online businesses. Additionally, MFS-based payment solutions help reduce cart abandonment rates by offering users a smooth and frictionless checkout experience.<\\/p>\\r\\n<br \\/>\\r\\n<h4>Enabling Small and Medium Enterprises (SMEs) to Thrive<\\/h4>\\r\\n<p>Small and medium enterprises (SMEs) often struggle with cash flow management and limited access to financial services. MFS platforms provide these businesses with tools to accept digital payments, access microloans, and manage payroll efficiently. By digitizing their financial operations, SMEs can reduce operational costs, expand their customer base, and improve their financial stability. MFS solutions also support business analytics, helping entrepreneurs make data-driven decisions to optimize performance and profitability.<\\/p>\\r\\n<br \\/>\\r\\n<h4>Enhancing Security and Fraud Prevention<\\/h4>\\r\\n<p>As digital transactions become the norm, security remains a top priority. MFS solutions implement advanced security protocols such as biometric authentication, tokenized payments, and AI-powered fraud detection to safeguard transactions. These measures protect users and businesses from financial fraud, unauthorized transactions, and data breaches. With continuous advancements in cybersecurity, MFS platforms are building trust and confidence among users and businesses alike.<\\/p>\\r\\n<br \\/>\\r\\n<h4>Facilitating Cross-Border Transactions and Global Trade<\\/h4>\\r\\n<p>Globalization has increased the need for efficient cross-border transactions. MFS solutions are making international payments faster, more affordable, and highly accessible. Businesses engaging in global trade can leverage mobile payment platforms to send and receive payments without relying on traditional banking intermediaries. This reduces transaction costs and processing time, enabling businesses to expand internationally with ease. Additionally, MFS is playing a vital role in facilitating remittances, allowing migrant workers to send money home instantly and securely.<\\/p>\\r\\n<br \\/>\\r\\n<h4>The Future of MFS in the Digital Economy<\\/h4>\\r\\n<p>As technology continues to evolve, the future of MFS holds even greater potential. Innovations such as blockchain integration, AI-driven automation, and decentralized financial solutions will further enhance the efficiency and inclusivity of digital payments. Businesses will continue to adopt MFS solutions to improve operational efficiency, while users will enjoy greater convenience in managing their finances. With continuous advancements, MFS will remain a driving force in shaping the future of digital transactions and economic empowerment.<\\/p>\\r\\n<br \\/>\\r\\n<p>MFS solutions are transforming the financial landscape by making transactions faster, safer, and more accessible. Whether for businesses seeking growth or individuals looking for financial convenience, MFS is an indispensable tool in the digital economy. As digital payments become the standard, the impact of MFS will only continue to grow, empowering businesses and users alike in the evolving financial world.<\\/p>\",\"image\":\"67a721c8325371739006408.png\"}',NULL,'basic','how-mfs-solutions-are-empowering-businesses-and-users-in-the-digital-age','2025-02-06 03:40:45','2025-02-08 03:20:08'),(183,'blog.element','{\"has_image\":[\"1\"],\"title\":\"Why the MFS Industry is the Key to Unlocking Seamless Financial Transactions\",\"description\":\"<p>The Mobile Financial Services (MFS) industry is transforming the way people conduct financial transactions. As digital payments continue to rise, MFS plays a crucial role in enabling seamless, secure, and instant transactions. Whether it\'s sending money across borders, paying for goods and services, or managing finances on the go, MFS eliminates traditional banking barriers and empowers users with greater financial freedom. This blog explores how the MFS industry is unlocking the future of seamless financial transactions and shaping a more connected financial ecosystem.<\\/p>\\r\\n<br \\/>\\r\\n<h4>The Role of MFS in Financial Accessibility<\\/h4>\\r\\n<p>One of the biggest challenges in the global financial landscape is accessibility. Millions of people worldwide remain unbanked, lacking access to essential financial services. MFS bridges this gap by providing digital financial solutions that require nothing more than a mobile phone. Through mobile wallets and digital banking platforms, individuals can store, transfer, and manage their money without needing a traditional bank account. This financial inclusion enables users to participate in the digital economy, make cashless transactions, and access services such as loans, insurance, and bill payments with ease.<\\/p>\\r\\n<br \\/>\\r\\n<h4>Speed and Efficiency in Transactions<\\/h4>\\r\\n<p>Traditional banking systems often involve long processing times, paperwork, and intermediary steps that slow down transactions. MFS eliminates these inefficiencies by enabling real-time payments and instant fund transfers. Whether it\\u2019s peer-to-peer transfers, merchant payments, or salary disbursements, MFS ensures that money moves quickly and seamlessly. This level of efficiency is particularly beneficial for businesses that rely on fast transactions to maintain cash flow and for individuals who need immediate access to their funds.<\\/p>\\r\\n<br \\/>\\r\\n<h4>Security and Fraud Prevention in MFS<\\/h4>\\r\\n<p>With the rise of digital transactions, security is a major concern for both consumers and businesses. The MFS industry has implemented advanced security measures to protect users from fraud and cyber threats. Features such as biometric authentication, tokenized transactions, and end-to-end encryption safeguard sensitive financial data. Additionally, artificial intelligence (AI) and machine learning algorithms analyze transaction patterns to detect and prevent fraudulent activities. These security enhancements ensure that mobile financial transactions are not only seamless but also highly secure.<\\/p>\\r\\n<br \\/>\\r\\n<h4>The Impact of MFS on E-Commerce and Digital Payments<\\/h4>\\r\\n<p>The rapid growth of e-commerce has fueled the demand for seamless and flexible payment options. MFS has emerged as a game-changer in the digital payment ecosystem by offering customers multiple payment methods, including QR codes, mobile wallets, and instant bank transfers. This convenience has led to higher adoption rates of cashless transactions, enabling businesses to reach a broader customer base and improve the overall shopping experience. As digital marketplaces continue to expand, the role of MFS in streamlining financial transactions will become even more significant.<\\/p>\\r\\n<br \\/>\\r\\n<h4>Cross-Border Payments and Global Transactions<\\/h4>\\r\\n<p>Cross-border transactions have traditionally been expensive and time-consuming due to intermediary banks and foreign exchange fees. MFS is revolutionizing international payments by providing low-cost, instant money transfers across borders. With the integration of blockchain technology and decentralized finance (DeFi) solutions, cross-border transactions are becoming more accessible and cost-effective. This advancement is particularly beneficial for migrant workers sending remittances to their families and businesses engaging in international trade.<\\/p>\\r\\n<br \\/>\\r\\n<h4>The Future of Seamless Financial Transactions<\\/h4>\\r\\n<p>The future of financial transactions lies in the continued evolution of MFS technologies. AI-driven automation, blockchain-based smart contracts, and seamless API integrations will enhance the efficiency and interoperability of financial platforms. Additionally, regulatory advancements and partnerships between fintech companies and traditional banks will further accelerate the adoption of MFS. As mobile financial services continue to evolve, consumers and businesses can expect a more seamless, inclusive, and globally connected financial ecosystem.<\\/p>\\r\\n<br \\/>\\r\\n<p>The MFS industry is at the forefront of transforming the financial landscape. By offering accessibility, speed, security, and affordability, MFS is breaking down barriers and enabling truly seamless financial transactions. As technology continues to advance, the potential for MFS to drive financial innovation and inclusion will only grow, paving the way for a cashless and digitally interconnected world.<\\/p>\",\"image\":\"67a71ffda2ca01739005949.png\"}',NULL,'basic','why-the-mfs-industry-is-the-key-to-unlocking-seamless-financial-transactions','2025-02-06 03:40:59','2025-02-08 03:12:30'),(184,'policy_pages.element','{\"title\":\"Service Policy\",\"details\":\"<div>\\n    <h4>Virtual Card Service Usage<\\/h4>\\n    <p>By signing up and accessing our platform, you agree to abide by the Terms and Conditions specified in this document. You are responsible for ensuring that your use of the virtual card service complies with all applicable laws, regulations, and standards in your jurisdiction. The virtual card provided by our platform is strictly for lawful online payments, and any attempt to misuse or abuse the card service, including fraudulent activities or violations of local or international laws, may lead to account suspension or termination. Our service aims to provide a secure and reliable payment method for online transactions, and we reserve the right to modify these terms as necessary to protect the integrity of the platform and its users.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Creating and Funding Virtual Cards<\\/h4>\\n    <p>Once you have completed the account registration process and verified your identity, you will be eligible to create a virtual card. The creation process involves generating a unique card that can be used for online payments. After creating the virtual card, you will need to fund it in order to make transactions. The amount you fund will determine the available balance on the card. Our platform supports a variety of payment methods for adding funds, such as bank transfers, credit cards, and other online payment options. Once the funds are added, the balance will be available for immediate use. The spending limit for your virtual card will be set to match the available balance, allowing you to manage your funds efficiently. Please ensure that the funds you add are in your account before making any purchases, as transactions will be declined if there are insufficient funds.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Card Payment Transactions<\\/h4>\\n    <p>When you make a payment using the virtual card, the platform will process the transaction through a secure and encrypted gateway. Payments can be made on any third-party websites or platforms that accept card payments. Once the payment is authorized, the corresponding amount will be deducted from your card balance in real time. This deduction will be reflected immediately in your account\\u2019s transaction history. In case of unsuccessful transactions or insufficient funds, you will be notified promptly, and the transaction will not be processed. Please note that we do not store your full card details on our platform; all payment information is securely processed and handled by our trusted payment processor, ensuring the highest level of security for your data. Any issues related to online purchases should be addressed directly with the merchant or platform where the transaction took place.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Balance Monitoring and Updates<\\/h4>\\n    <p>Your virtual card balance will be updated in real time as soon as a transaction is processed. You can view your current card balance and transaction history at any time via your user dashboard. This will help you keep track of your available funds, ensuring you are aware of your balance before making additional payments. If you need to increase your card\\u2019s balance, you can easily top up your account using any of the available funding methods. We also provide notifications via email or in-app alerts when your balance is low or when a significant transaction has occurred. The system will automatically adjust the card\\u2019s spending limit based on the funds available, ensuring that your virtual card is always ready for secure payments.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Security and Fraud Prevention<\\/h4>\\n    <p>Our platform takes security seriously and implements industry-leading measures to protect your data and prevent fraudulent activity. All transactions made with the virtual card are monitored for suspicious behavior. We utilize advanced fraud detection systems to identify any unusual activity. If we detect any suspicious transaction, we may temporarily freeze your card and notify you via email or other contact methods. If fraud is confirmed, we will take immediate action to disable your card and prevent further unauthorized transactions. Additionally, we recommend that you keep your account login credentials secure and change your password regularly. If you suspect any unauthorized activity on your account or card, please contact our support team immediately for assistance. We also encourage users to enable two-factor authentication (2FA) for an added layer of security.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Refund and Dispute Policy<\\/h4>\\n    <p>Refunds for transactions made with the virtual card are not directly handled by our platform. Any refund requests must be made through the merchant or service provider with whom you made the purchase. We do not have control over third-party merchant refund policies, and the processing of refunds depends on the individual merchant\\u2019s policies. If you encounter an issue with a purchase, such as receiving incorrect goods or services, we recommend reaching out to the merchant directly to resolve the issue. In the event of a chargeback or dispute, you must notify us promptly so that we can assist with gathering transaction details and submitting necessary information. Please note that we do not support chargebacks or disputes initiated by the user after a payment has been processed. Fraudulent chargebacks may result in the suspension of your account.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Suspension and Termination of Service<\\/h4>\\n    <p>We reserve the right to suspend or terminate your virtual card account in cases of suspicious activity, fraud, or violation of our Terms of Service. If your account is suspended or terminated, you will be notified, and you may be required to resolve any outstanding issues before regaining access. Reasons for suspension may include, but are not limited to, violation of local or international laws, failure to follow the platform\'s guidelines, or engagement in fraudulent activities. If your account is permanently terminated due to violations, you will lose access to any remaining funds in your virtual card, and no refunds will be issued. You may appeal the suspension or termination by contacting our support team, but we reserve the final right to determine the resolution of the issue.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Limitation of Liability<\\/h4>\\n    <p>Our platform strives to provide the best service possible, but we are not liable for any damages or losses incurred due to the use of the virtual card. This includes direct, indirect, incidental, or consequential damages arising from issues such as unauthorized transactions, system downtimes, or service interruptions. We do not guarantee that the virtual card service will be uninterrupted, secure, or free from errors. You agree to use the service at your own risk, and we disclaim any warranties, express or implied, regarding the performance or reliability of the service. In cases where legal responsibility cannot be excluded, our liability will be limited to the total amount of funds held in your account at the time of the incident, except in cases of gross negligence or willful misconduct.<\\/p>\\n<\\/div>\\n<br \\/>\\n<div>\\n    <h4>Contact and Support<\\/h4>\\n    <p>If you have any questions, concerns, or need assistance with your virtual card service, our support team is available to help. You can reach us through email at <strong>support@ovopay.com<\\/strong>, or by using our contact form on the platform. We are committed to providing timely and helpful support to ensure your experience with our virtual card service is smooth and satisfactory. If you need assistance with troubleshooting, funding your account, or resolving payment issues, please do not hesitate to contact us. Our support team is available during business hours and will respond as quickly as possible.<\\/p>\\n<\\/div>\\n<br \\/>\"}',NULL,'basic','service-policy','2025-02-16 03:35:42','2025-03-17 15:48:55'),(185,'breadcrumb.content','{\"has_image\":\"1\",\"background_image\":\"69dcd640ad7ba1776080448.jpg\"}',NULL,'basic','','2025-03-09 04:20:20','2026-04-13 03:40:48'),(187,'faq.element','{\"question\":\"Does OvoPay support virtual cards?\",\"answer\":\"Yes, OvoPay supports virtual card integration via Stripe, allowing users to generate and manage virtual cards for secure online transactions.\",\"icon\":\"<i class=\\\"las la-credit-card\\\"><\\/i>\"}',NULL,'basic','','2025-03-13 08:15:08','2025-03-13 08:15:08'),(190,'faq.element','{\"question\":\"What is OvoPay?\",\"answer\":\"OvoPay is a complete cross platform MFS solution designed for users, agents, and merchants. It includes mobile apps, a web platform, an admin panel, and virtual card integration to facilitate seamless financial transactions.\",\"icon\":\"<i class=\\\"las la-allergies\\\"><\\/i>\"}',NULL,'basic','','2025-03-13 08:16:53','2025-03-13 08:18:04');
/*!40000 ALTER TABLE `frontends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateway_currencies`
--

DROP TABLE IF EXISTS `gateway_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gateway_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_code` int DEFAULT NULL,
  `gateway_alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `max_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `gateway_parameter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateway_currencies`
--

LOCK TABLES `gateway_currencies` WRITE;
/*!40000 ALTER TABLE `gateway_currencies` DISABLE KEYS */;
INSERT INTO `gateway_currencies` VALUES (269,'BTCPay - BTC','BTC','₿',507,'BTCPay',1.00000000,100.00000000,1.00,1.00000000,1.00000000,'{\"store_id\":\"GLeYKqo2vM1jW9e2aFpGsLqokwTbfpQ3yZFQBRy2um58\",\"api_key\":\"a60a2d61645cddd1f552212ca0f802121e47d08c\",\"server_name\":\"https:\\/\\/testnet.demo.btcpayserver.org\",\"secret_code\":\"SUCdqPn9CDkY7RmJHfpQVHP2Lf2\"}','2024-05-07 08:08:13','2024-10-12 02:37:53'),(273,'Checkout - USD','USD','$',123,'Checkout',1.00000000,100.00000000,1.00,1.00000000,1.00000000,'{\"secret_key\":\"------\",\"public_key\":\"------\",\"processing_channel_id\":\"------\"}','2024-05-07 08:09:44','2024-09-29 04:39:39'),(276,'Coingate - USD','USD','$',505,'Coingate',1.00000000,100.00000000,1.00,1.00000000,1.00000000,'{\"api_key\":\"------------------\"}','2024-05-07 08:11:37','2024-10-14 00:19:09'),(280,'CoinPayments Fiat - USD','USD','$',504,'CoinpaymentsFiat',1.00000000,10000.00000000,10.00,1.00000000,10.00000000,'{\"merchant_id\":\"6515561\"}','2024-05-07 08:12:07','2024-09-29 04:44:55'),(281,'CoinPayments Fiat - AUD','AUD','$',504,'CoinpaymentsFiat',1.00000000,10000.00000000,0.00,1.00000000,1.00000000,'{\"merchant_id\":\"6515561\"}','2024-05-07 08:12:07','2024-09-29 04:44:55'),(282,'Flutterwave - USD','USD','USD',109,'Flutterwave',1.00000000,2000.00000000,0.00,1.00000000,1.00000000,'{\"public_key\":\"FLWPUBK_TEST-0ee1835b2e1088d2a529356ec7dcdb30-X\",\"secret_key\":\"FLWSECK_TEST-6c5417024ef775a0eabfb021d41369f8-X\",\"encryption_key\":\"FLWSECK_TEST78b28d6fdf42\"}','2024-05-07 08:12:18','2024-10-13 01:33:13'),(284,'Mercado Pago - USD','USD','$',119,'MercadoPago',1.00000000,10.00000000,1.00,1.00000000,1.00000000,'{\"access_token\":\"--------------\"}','2024-05-07 08:19:24','2024-10-14 00:19:38'),(287,'Now payments checkout - USD','USD','$',509,'NowPaymentsCheckout',1.00000000,100.00000000,1.00,1.00000000,1.00000000,'{\"api_key\":\"MAFWEB2-X6146ZP-KJTB98H-QV2WW46\",\"secret_key\":\"yr2n6OSV5tvb9h0YdXy+2Fmihp4LwSnq\"}','2024-05-07 08:20:21','2024-10-13 02:47:13'),(288,'Payeer - USD','USD','$',106,'Payeer',1.00000000,10000.00000000,1.00,1.00000000,1.00000000,'{\"merchant_id\":\"P1124379867\",\"secret_key\":\"768336\"}','2024-05-07 08:20:58','2024-10-13 03:41:46'),(289,'Paypal - USD','USD','$',101,'Paypal',1.00000000,10000.00000000,1.00,1.00000000,1.00000000,'{\"paypal_email\":\"sb-sie1e33346198@business.example.com\"}','2024-05-07 08:21:11','2024-10-13 03:59:25'),(290,'Paypal Express - USD','USD','$',113,'PaypalSdk',1.00000000,1000000.00000000,1.00,1.00000000,1.00000000,'{\"clientId\":\"AYq9c_gjnfFiLpWdotm-5XTw-RwtWtBrxIEW7IJGcjmq6cLDcTOjSSVlIqnIq4dYWnxrOEeK7s0UuuCy\",\"clientSecret\":\"ECXn_0gIPEdgVDiPfh-zR3KFm5WfmZe5UvhDrKNNa59i5bTSZ3K4S9QFb9uJNZ-vjBGEwcdKD0SRQsP5\"}','2024-05-07 08:21:33','2024-10-13 03:59:51'),(292,'PayTM - AUD','AUD','$',105,'Paytm',1.00000000,10000.00000000,1.00,1.00000000,1.00000000,'{\"MID\":\"-----------\",\"merchant_key\":\"-----------\",\"WEBSITE\":\"-----------\",\"INDUSTRY_TYPE_ID\":\"-----------\",\"CHANNEL_ID\":\"-----------\",\"transaction_url\":\"-----------\",\"transaction_status_url\":\"-----------\"}','2024-05-07 08:22:07','2024-10-14 00:19:59'),(293,'PayTM - USD','USD','$',105,'Paytm',1.00000000,10000.00000000,1.00,1.00000000,2.00000000,'{\"MID\":\"-----------\",\"merchant_key\":\"-----------\",\"WEBSITE\":\"-----------\",\"INDUSTRY_TYPE_ID\":\"-----------\",\"CHANNEL_ID\":\"-----------\",\"transaction_url\":\"-----------\",\"transaction_status_url\":\"-----------\"}','2024-05-07 08:22:07','2024-10-14 00:19:59'),(294,'Perfect Money - USD','USD','usd',102,'PerfectMoney',1.00000000,10000.00000000,1.00,1.00000000,1.00000000,'{\"passphrase\":\"h9Rz18d60KeErSFPUViTlTyUX\",\"wallet_id\":\"100\"}','2024-05-07 08:22:25','2024-10-13 05:05:23'),(295,'RazorPay - INR','INR','$',110,'Razorpay',1.00000000,10000.00000000,1.00,1.00000000,1.00000000,'{\"key_id\":\"-------------\",\"key_secret\":\"------------\"}','2024-05-07 08:22:50','2024-10-14 00:21:41'),(299,'Stripe Hosted - USD','USD','$',103,'Stripe',1.00000000,10000.00000000,1.00,1.00000000,1.00000000,'{\"secret_key\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\",\"publishable_key\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\"}','2024-05-07 08:24:06','2025-03-15 05:30:13'),(301,'Stripe Checkout - USD','USD','USD',114,'StripeV3',10.00000000,1000.00000000,0.00,1.00000000,1.00000000,'{\"secret_key\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\",\"publishable_key\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\",\"end_point\":\"whsec_rRp3g4M3lEcN1RZrbB7Ksa3CSj3GQEN1\"}','2024-05-07 08:24:47','2025-03-18 20:17:14'),(302,'2Checkout - USD','USD','$',122,'TwoCheckout',1.00000000,10000.00000000,1.00,1.00000000,1.00000000,'{\"merchant_code\":\"255237318607\",\"secret_key\":\"tNbET^O0mlJ4QHdAf6W#\"}','2024-05-07 08:24:57','2024-10-13 05:40:07'),(309,'CoinPayments - BTC','BTC','₿',503,'Coinpayments',1.00000000,10000.00000000,10.00,1.00000000,1.00000000,'{\"public_key\":\"222a8c8825477fbea80812a9d5d70057e4821e43198926daa075fdc08cc98cd6\",\"private_key\":\"6d049b6B91a5eBe2053bb21eAa0DCb60f33790ec96B2342192804b0e9dfFf741\",\"merchant_id\":\"47818ed2d6962bcab1eba829e38ad0c4\"}','2024-05-08 07:35:24','2024-10-13 06:14:28'),(312,'Binance - BTC','BTC','₿',510,'Binance',1.00000000,100.00000000,1.00,1.00000000,1.00000000,'{\"api_key\":\"--------------------\",\"secret_key\":\"--------------------\",\"merchant_id\":\"-------------\"}','2024-05-08 07:36:01','2024-10-14 00:18:37'),(314,'Coinbase Commerce - USD','USD','$',506,'CoinbaseCommerce',1.00000000,10000.00000000,10.00,1.00000000,1.00000000,'{\"api_key\":\"------------------\",\"secret\":\"-------------\"}','2024-05-08 07:41:51','2024-10-14 00:18:55'),(315,'Instamojo - INR','INR','₹',112,'Instamojo',1.00000000,10000.00000000,1.00,1.00000000,85.00000000,'{\"api_key\":\"--------------\",\"auth_token\":\"----------------\",\"salt\":\"------------\"}','2024-05-08 07:42:57','2024-10-14 00:19:23'),(316,'Now payments hosted - BTC','BTC','₿',508,'NowPaymentsHosted',1.00000000,1000.00000000,1.00,1.00000000,1.00000000,'{\"api_key\":\"MAFWEB2-X6146ZP-KJTB98H-QV2WW46\",\"secret_key\":\"yr2n6OSV5tvb9h0YdXy+2Fmihp4LwSnq\"}','2024-05-08 07:43:55','2024-10-13 02:56:13'),(318,'PayStack - NGN','NGN','₦',107,'Paystack',1.00000000,10000.00000000,2.10,2.00000000,1420.00000000,'{\"public_key\":\"pk_test_7a71410e62ae07cad950d94e4a3827b974937450\",\"secret_key\":\"sk_test_e8cf00c8c7fc173b60f02199e2752e2f34e50494\"}','2024-05-08 07:44:50','2025-03-04 03:47:51'),(327,'Authorize.net - USD','USD','$',120,'Authorize',1.00000000,10.00000000,1.00,1.00000000,1.00000000,'{\"login_id\":\"59e4P9DBcZv\",\"transaction_key\":\"47x47TJyLw2E7DbR\"}','2024-09-25 04:57:07','2024-09-29 04:37:21'),(330,'Perfect Money - EUR','EUR','$',102,'PerfectMoney',1.00000000,100.00000000,1.00,1.00000000,1.00000000,'{\"passphrase\":\"h9Rz18d60KeErSFPUViTlTyUX\",\"wallet_id\":\"200\"}','2024-09-25 07:23:23','2024-10-13 05:05:23'),(333,'Binance - BNB','BNB','BNB',510,'Binance',1.00000000,100.00000000,1.00,1.00000000,0.00170000,'{\"api_key\":\"--------------------\",\"secret_key\":\"--------------------\",\"merchant_id\":\"-------------\"}','2024-10-09 06:01:52','2024-10-14 00:18:37'),(334,'Stripe Hosted - JPY','JPY','JPY',103,'Stripe',1.00000000,1000000.00000000,1.00,1.00000000,148.71000000,'{\"secret_key\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\",\"publishable_key\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\"}','2024-10-09 06:06:36','2025-03-15 05:30:13'),(335,'Alipay - CNY','CNY','?',124,'Alipay',1.00000000,100000.00000000,0.00,0.00000000,1.00000000,'{\"app_id\":\"\",\"private_key\":\"\",\"alipay_public_key\":\"\",\"gateway_url\":\"https://openapi.alipay.com/gateway.do\"}','2026-04-12 03:47:20','2026-04-12 03:47:20'),(336,'WeChat Pay - CNY','CNY','?',125,'WechatPay',1.00000000,100000.00000000,0.00,0.00000000,1.00000000,'{\"app_id\":\"\",\"mch_id\":\"\",\"mch_key\":\"\"}','2026-04-12 03:47:20','2026-04-12 03:47:20');
/*!40000 ALTER TABLE `gateway_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gateways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int unsigned NOT NULL DEFAULT '0',
  `code` int DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supported_currencies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crypto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateways`
--

LOCK TABLES `gateways` WRITE;
/*!40000 ALTER TABLE `gateways` DISABLE KEYS */;
INSERT INTO `gateways` VALUES (1,0,101,'Paypal - Basic','Paypal','66f93024b850f1727606820.png',1,'{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-sie1e33346198@business.example.com\"}}','{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-10-13 03:59:25'),(2,0,102,'PerfectMoney','PerfectMoney','66f9305b163861727606875.png',1,'{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"h9Rz18d60KeErSFPUViTlTyUX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}','{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-10-13 05:05:22'),(3,0,103,'Stripe - Hosted','Stripe','66f932d3898531727607507.png',1,'{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\"}}','{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}',0,NULL,NULL,'2019-09-14 13:14:22','2025-03-15 05:30:13'),(5,0,105,'PayTM','Paytm','66f9305278b331727606866.png',1,'{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"-----------\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"-----------\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"-----------\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"-----------\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"-----------\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"-----------\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"-----------\"}}','{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-10-14 00:19:59'),(6,0,106,'Payeer','Payeer','66f93018e4b7c1727606808.png',1,'{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"P1124379867\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"768336\"}}','{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}',0,'{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}',NULL,'2019-09-14 13:14:22','2024-10-13 03:41:46'),(7,0,107,'PayStack','Paystack','66f9303d3ca031727606845.png',1,'{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_7a71410e62ae07cad950d94e4a3827b974937450\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_e8cf00c8c7fc173b60f02199e2752e2f34e50494\"}}','{\"USD\":\"USD\",\"NGN\":\"NGN\"}',0,'{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n',NULL,'2019-09-14 13:14:22','2024-10-13 04:19:28'),(9,0,109,'Flutterwave','Flutterwave','66f92fb282a3a1727606706.png',1,'{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"FLWPUBK_TEST-0ee1835b2e1088d2a529356ec7dcdb30-X\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"FLWSECK_TEST-6c5417024ef775a0eabfb021d41369f8-X\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"FLWSECK_TEST78b28d6fdf42\"}}','{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-10-13 01:33:13'),(10,0,110,'RazorPay','Razorpay','66f93067ae7661727606887.png',1,'{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"-------------\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"------------\"}}','{\"INR\":\"INR\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-10-14 00:20:13'),(12,0,112,'Instamojo','Instamojo','66f92fbe2ccbb1727606718.png',1,'{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"--------------\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"----------------\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"------------\"}}','{\"INR\":\"INR\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-10-14 00:19:23'),(15,0,503,'CoinPayments Crypto','Coinpayments','66f92f90365d41727606672.png',1,'{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"222a8c8825477fbea80812a9d5d70057e4821e43198926daa075fdc08cc98cd6\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"6d049b6B91a5eBe2053bb21eAa0DCb60f33790ec96B2342192804b0e9dfFf741\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"47818ed2d6962bcab1eba829e38ad0c4\"}}','{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"USDT.BEP20\":\"Tether USD (BSC Chain)\",\"USDT.ERC20\":\"Tether USD (ERC20)\",\"USDT.TRC20\":\"Tether USD (Tron/TRC20)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}',1,NULL,NULL,'2019-09-14 13:14:22','2024-10-13 06:14:28'),(16,0,504,'CoinPayments Fiat','CoinpaymentsFiat','66f92fa7d56851727606695.png',1,'{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}','{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-09-29 04:44:55'),(17,0,505,'Coingate','Coingate','66f92f1dafc6e1727606557.png',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"------------------\"}}','{\"USD\":\"USD\",\"EUR\":\"EUR\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-10-14 00:19:09'),(18,0,506,'CoinbaseCommerce','CoinbaseCommerce','66f92e80485251727606400.png',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"------------------\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"-------------\"}}','{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n',0,'{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}',NULL,'2019-09-14 13:14:22','2024-10-14 00:18:55'),(24,0,113,'Paypal - Express','PaypalSdk','66f954f3b28261727616243.png',1,'{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"AYq9c_gjnfFiLpWdotm-5XTw-RwtWtBrxIEW7IJGcjmq6cLDcTOjSSVlIqnIq4dYWnxrOEeK7s0UuuCy\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"ECXn_0gIPEdgVDiPfh-zR3KFm5WfmZe5UvhDrKNNa59i5bTSZ3K4S9QFb9uJNZ-vjBGEwcdKD0SRQsP5\"}}','{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}',0,NULL,NULL,'2019-09-14 13:14:22','2024-10-13 03:59:51'),(25,0,114,'Stripe - Checkout','StripeV3','66f930941abc51727606932.png',1,'{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51Q6RC200ViU9uYNAreOGXIikLFE4VKrRNw92sFrDgqv1mMS7HKsrDsTOd9g6ug6mWVnhQGhAlfzwkzivhLgQJGWR00cmSSbqtf\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51Q6RC200ViU9uYNAdEkyqVKhIzbLzJci72Or96xppTkZgDkzOjRiZC6Pz6Nol5FqUraLUnu9Ug0Zt8K5TXrJ1g8H00qMlrHnMl\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_rRp3g4M3lEcN1RZrbB7Ksa3CSj3GQEN1\"}}','{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}',0,'{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}',NULL,'2019-09-14 13:14:22','2025-03-18 20:17:14'),(36,0,119,'MercadoPago','MercadoPago','66f92fcac0e111727606730.png',1,'{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"--------------\"}}','{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\",\"BRL\":\"BRL\"}',0,NULL,NULL,NULL,'2024-10-14 00:19:38'),(37,0,120,'Authorize.net','Authorize','66f92de1ce5151727606241.png',1,'{\"login_id\":{\"title\":\"Login ID\",\"global\":true,\"value\":\"59e4P9DBcZv\"},\"transaction_key\":{\"title\":\"Transaction Key\",\"global\":true,\"value\":\"47x47TJyLw2E7DbR\"}}','{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}',0,NULL,NULL,NULL,'2024-10-03 03:12:33'),(50,0,507,'BTCPay','BTCPay','66f92dab2d0c81727606187.png',1,'{\"store_id\":{\"title\":\"Store Id\",\"global\":true,\"value\":\"GLeYKqo2vM1jW9e2aFpGsLqokwTbfpQ3yZFQBRy2um58\"},\"api_key\":{\"title\":\"Api Key\",\"global\":true,\"value\":\"a60a2d61645cddd1f552212ca0f802121e47d08c\"},\"server_name\":{\"title\":\"Server Name\",\"global\":true,\"value\":\"https:\\/\\/testnet.demo.btcpayserver.org\"},\"secret_code\":{\"title\":\"Secret Code\",\"global\":true,\"value\":\"SUCdqPn9CDkY7RmJHfpQVHP2Lf2\"}}','{\"BTC\":\"Bitcoin\",\"LTC\":\"Litecoin\"}',1,'{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.BTCPay\"}}',NULL,NULL,'2024-10-14 03:40:52'),(51,0,508,'NowPayments - Hosted','NowPaymentsHosted','66f92ffed509e1727606782.png',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"MAFWEB2-X6146ZP-KJTB98H-QV2WW46\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"yr2n6OSV5tvb9h0YdXy+2Fmihp4LwSnq\"}}','{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}',1,'',NULL,NULL,'2024-10-13 02:56:13'),(52,0,509,'NowPayments - Checkout','NowPaymentsCheckout','66f92ff5897b41727606773.png',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"MAFWEB2-X6146ZP-KJTB98H-QV2WW46\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"yr2n6OSV5tvb9h0YdXy+2Fmihp4LwSnq\"}}','{\"USD\":\"USD\",\"EUR\":\"EUR\"}',1,'',NULL,NULL,'2024-10-13 02:47:13'),(53,0,122,'2Checkout','TwoCheckout','66f93484853cf1727607940.png',1,'{\"merchant_code\":{\"title\":\"Merchant Code\",\"global\":true,\"value\":\"255237318607\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"tNbET^O0mlJ4QHdAf6W#\"}}','{\"AFN\": \"AFN\",\"ALL\": \"ALL\",\"DZD\": \"DZD\",\"ARS\": \"ARS\",\"AUD\": \"AUD\",\"AZN\": \"AZN\",\"BSD\": \"BSD\",\"BDT\": \"BDT\",\"BBD\": \"BBD\",\"BZD\": \"BZD\",\"BMD\": \"BMD\",\"BOB\": \"BOB\",\"BWP\": \"BWP\",\"BRL\": \"BRL\",\"GBP\": \"GBP\",\"BND\": \"BND\",\"BGN\": \"BGN\",\"CAD\": \"CAD\",\"CLP\": \"CLP\",\"CNY\": \"CNY\",\"COP\": \"COP\",\"CRC\": \"CRC\",\"HRK\": \"HRK\",\"CZK\": \"CZK\",\"DKK\": \"DKK\",\"DOP\": \"DOP\",\"XCD\": \"XCD\",\"EGP\": \"EGP\",\"EUR\": \"EUR\",\"FJD\": \"FJD\",\"GTQ\": \"GTQ\",\"HKD\": \"HKD\",\"HNL\": \"HNL\",\"HUF\": \"HUF\",\"INR\": \"INR\",\"IDR\": \"IDR\",\"ILS\": \"ILS\",\"JMD\": \"JMD\",\"JPY\": \"JPY\",\"KZT\": \"KZT\",\"KES\": \"KES\",\"LAK\": \"LAK\",\"MMK\": \"MMK\",\"LBP\": \"LBP\",\"LRD\": \"LRD\",\"MOP\": \"MOP\",\"MYR\": \"MYR\",\"MVR\": \"MVR\",\"MRO\": \"MRO\",\"MUR\": \"MUR\",\"MXN\": \"MXN\",\"MAD\": \"MAD\",\"NPR\": \"NPR\",\"TWD\": \"TWD\",\"NZD\": \"NZD\",\"NIO\": \"NIO\",\"NOK\": \"NOK\",\"PKR\": \"PKR\",\"PGK\": \"PGK\",\"PEN\": \"PEN\",\"PHP\": \"PHP\",\"PLN\": \"PLN\",\"QAR\": \"QAR\",\"RON\": \"RON\",\"RUB\": \"RUB\",\"WST\": \"WST\",\"SAR\": \"SAR\",\"SCR\": \"SCR\",\"SGD\": \"SGD\",\"SBD\": \"SBD\",\"ZAR\": \"ZAR\",\"KRW\": \"KRW\",\"LKR\": \"LKR\",\"SEK\": \"SEK\",\"CHF\": \"CHF\",\"SYP\": \"SYP\",\"THB\": \"THB\",\"TOP\": \"TOP\",\"TTD\": \"TTD\",\"TRY\": \"TRY\",\"UAH\": \"UAH\",\"AED\": \"AED\",\"USD\": \"USD\",\"VUV\": \"VUV\",\"VND\": \"VND\",\"XOF\": \"XOF\",\"YER\": \"YER\"}',0,'{\"approved_url\":{\"title\": \"Approved URL\",\"value\":\"ipn.TwoCheckout\"}}',NULL,NULL,'2024-10-13 05:40:07'),(54,0,123,'Checkout','Checkout','66f92e6bd08e01727606379.png',0,'{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"------\"},\"public_key\":{\"title\":\"PUBLIC KEY\",\"global\":true,\"value\":\"------\"},\"processing_channel_id\":{\"title\":\"PROCESSING CHANNEL\",\"global\":true,\"value\":\"------\"}}','{\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"AUD\":\"AUD\",\"CAN\":\"CAN\",\"CHF\":\"CHF\",\"SGD\":\"SGD\",\"JPY\":\"JPY\",\"NZD\":\"NZD\"}',0,NULL,NULL,NULL,'2024-09-30 01:55:03'),(55,19,1000,'Bank Transfer','bank_transfer','66f95525bfa571727616293.png',1,'[]','[]',0,NULL,'<div style=\"border-left: 3px solid #b5b0b0;\r\n    padding: 12px;\r\n    font-style: italic;\r\n    margin: 30px 0px;\r\n    background: #f9f9f9;\r\n    border-radius: 3px;\"><p style=\"\r\n    margin-bottom: 10px;\r\n    font-weight: bold;\r\n    font-size: 17px;\r\n\">Please send the funds to the information provided below. We cannot be held responsible for any errors if the amount is sent to incorrect details. Kindly complete the form after transferring the funds<br><br>Bank information</p><p style=\"\r\n    margin-bottom: 0;\r\n\">\r\n</p><p style=\"\r\nmargin-bottom: 0;\r\n\"><span style=\"font-weight:500\">Bank Name:</span>&nbsp;Demo Bank</p>\r\n<p style=\"\r\nmargin-bottom: 0;\r\n\"><span style=\"font-weight:500\">Branch:</span>&nbsp;Demo Branch</p>\r\n<p style=\"\r\nmargin-bottom: 0;\r\n\"><span style=\"font-weight:500\">Routing:</span> 1234</p>\r\n<p style=\"\r\n    margin-bottom: 0;\r\n\"><span style=\"font-weight:500\">Account Number:</span> xxx-xxx-<span style=\"color: rgb(67, 64, 79); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">xxx-xxx-xxx</span></p></div>','2024-03-13 23:11:21','2024-10-05 03:08:54'),(56,0,510,'Binance','Binance','66f92d4ae66161727606090.png',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"--------------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"--------------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"-------------\"}}','{\"BTC\":\"Bitcoin\",\"USD\":\"USD\",\"BNB\":\"BNB\"}',1,'{\"cron\":{\"title\": \"Cron Job URL\",\"value\":\"ipn.Binance\"}}',NULL,NULL,'2024-10-14 00:18:37'),(61,0,124,'Alipay','Alipay','66f93024b850f1727606820.png',1,'{\"app_id\":{\"title\":\"App ID\",\"global\":true,\"value\":\"\"},\"private_key\":{\"title\":\"Merchant Private Key\",\"global\":true,\"value\":\"\"},\"alipay_public_key\":{\"title\":\"Alipay Public Key\",\"global\":true,\"value\":\"\"},\"gateway_url\":{\"title\":\"Gateway URL\",\"global\":true,\"value\":\"https://openapi.alipay.com/gateway.do\"}}','{\"CNY\":\"CNY\"}',0,'{\"notify\":{\"title\":\"Notify URL\",\"value\":\"ipn.Alipay\"},\"return\":{\"title\":\"Return URL\",\"value\":\"ipn.Alipay?type=return\"}}',NULL,'2026-04-12 03:47:20','2026-04-12 13:19:51'),(62,0,125,'WeChat Pay','WechatPay','66f93067ae7661727606887.png',1,'{\"app_id\":{\"title\":\"App ID\",\"global\":true,\"value\":\"\"},\"mch_id\":{\"title\":\"MCH ID\",\"global\":true,\"value\":\"\"},\"mch_key\":{\"title\":\"MCH KEY\",\"global\":true,\"value\":\"\"}}','{\"CNY\":\"CNY\"}',0,'{\"notify\":{\"title\":\"Notify URL\",\"value\":\"ipn.WechatPay\"}}',NULL,'2026-04-12 03:47:20','2026-04-12 03:47:20');
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_amounts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cur_text` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `dial_code` int NOT NULL DEFAULT '0',
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code_template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'email configuration',
  `sms_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `firebase_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `global_shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kv` tinyint(1) NOT NULL DEFAULT '0',
  `agent_kv` tinyint(1) NOT NULL DEFAULT '0',
  `merchant_kv` tinyint(1) NOT NULL DEFAULT '0',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'mobile verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms notification, 0 - dont send, 1 - send',
  `pn` tinyint(1) NOT NULL DEFAULT '1',
  `otp_verification` tinyint(1) NOT NULL DEFAULT '0',
  `otp_expiration` int NOT NULL DEFAULT '0',
  `force_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `in_app_payment` tinyint(1) NOT NULL DEFAULT '1',
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT '0',
  `secure_password` tinyint(1) NOT NULL DEFAULT '0',
  `agree` tinyint(1) NOT NULL DEFAULT '0',
  `multi_language` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Off	, 1: On',
  `agent_registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Off , 1: On',
  `merchant_registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Off , 1: On',
  `agent_verification` tinyint(1) NOT NULL DEFAULT '1',
  `merchant_verification` tinyint(1) NOT NULL DEFAULT '1',
  `active_template` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialite_credentials` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_cron` datetime DEFAULT NULL,
  `available_version` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_customized` tinyint(1) NOT NULL DEFAULT '0',
  `paginate_number` int NOT NULL DEFAULT '0',
  `currency_format` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>Both\r\n2=>Text Only\r\n3=>Symbol Only',
  `time_format` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_format` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `allow_precision` int NOT NULL DEFAULT '2',
  `thousand_separator` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_otp_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_pin_digits` int NOT NULL DEFAULT '6',
  `agent_panel_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_panel_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pusher_config` text COLLATE utf8mb4_unicode_ci,
  `qrcode_login` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'DeePay','[\"500\",\"100\",\"50\",\"10\",\"300\"]','EUR','€',0,NULL,'deepveloce@gmail.com','{{Deepay}}','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Email Notification</title>\r\n    <style>\r\n        /* General Styles */\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-family: \'Open Sans\', Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table {\r\n            border-spacing: 0;\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n\r\n        img {\r\n            display: block;\r\n            border: 0;\r\n            line-height: 0;\r\n        }\r\n\r\n        a {\r\n            color: #ff600036;\r\n            text-decoration: none;\r\n        }\r\n\r\n        .email-wrapper {\r\n            width: 100%;\r\n            background-color: #f4f4f4;\r\n            padding: 30px 0;\r\n        }\r\n\r\n        .email-container {\r\n            width: 100%;\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 8px;\r\n            overflow: hidden;\r\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n        }\r\n\r\n        /* Header */\r\n        .email-header {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            padding: 20px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n        }\r\n\r\n        /* Logo */\r\n        .email-logo {\r\n            text-align: center;\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .email-logo img {\r\n            max-width: 180px;\r\n            margin: 0 auto;\r\n        }\r\n\r\n        /* Content */\r\n        .email-content {\r\n            padding: 0 30px 30px 30px;\r\n            text-align: left;\r\n        }\r\n\r\n        .email-content h1 {\r\n            font-size: 22px;\r\n            color: #414a51;\r\n            font-weight: bold;\r\n            margin-bottom: 10px;\r\n        }\r\n\r\n        .email-content p {\r\n            font-size: 16px;\r\n            color: #7f8c8d;\r\n            line-height: 1.6;\r\n            margin: 20px 0;\r\n        }\r\n\r\n        .email-divider {\r\n            margin: 20px auto;\r\n            width: 60px;\r\n            border-bottom: 3px solid #ff600036;\r\n        }\r\n\r\n        /* Footer */\r\n        .email-footer {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            padding: 20px;\r\n        }\r\n\r\n\r\n        /* Responsive Design */\r\n        @media only screen and (max-width: 480px) {\r\n            .email-content {\r\n                padding: 20px;\r\n            }\r\n\r\n            .email-header,\r\n            .email-footer {\r\n                padding: 15px;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"email-wrapper\">\r\n        <table class=\"email-container\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tbody style=\"border: 1px solid #ffddc9\">\r\n                <tr>\r\n                    <td>\r\n                        <!-- Header -->\r\n                        <div class=\"email-header\">\r\n                            System Generated Email\r\n                        </div>\r\n\r\n                        \r\n                        <!-- Logo -->\r\n                        <div class=\"email-logo\">\r\n                            <a href=\"#\">\r\n                                <img src=\"http://preview.ovosolution.com/ovopay/demo/assets/images/logo_icon/logo.png\" alt=\"Company Logo\">\r\n                            </a>\r\n                        </div>\r\n                        <!-- Content -->\r\n                        <div class=\"email-content\">\r\n                            <h1>Hello {{username}}</h1>\r\n                            <p>{{message}}</p>\r\n                        </div>\r\n\r\n                        <!-- Footer -->\r\n                        <div class=\"email-footer\">\r\n                            &copy; 2024 <a href=\"#\" style=\"color: #0087ff;\">{{site_name}}</a>. All Rights Reserved.\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>','hi {{fullname}} ({{username}}), {{message}}','67d91fb3eb7921742282675.jpg','{{Deepay}}','{{Deepay}}','hi {{fullname}} ({{username}}), {{message}}','008999','1ce2ef','{\"name\":\"php\"}','{\"name\":\"infobip\",\"clickatell\":{\"api_key\":\"----------------\"},\"infobip\":{\"username\":\"------------8888888\",\"password\":\"-----------------\"},\"message_bird\":{\"api_key\":\"-------------------\"},\"nexmo\":{\"api_key\":\"----------------------\",\"api_secret\":\"----------------------\"},\"sms_broadcast\":{\"username\":\"----------------------\",\"password\":\"-----------------------------\"},\"twilio\":{\"account_sid\":\"-----------------------\",\"auth_token\":\"---------------------------\",\"from\":\"----------------------\"},\"text_magic\":{\"username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\"},\"custom\":{\"method\":\"get\",\"url\":\"https:\\/\\/hostname.com\\/demo-api-v1\",\"headers\":{\"name\":[\"api_key\"],\"value\":[\"test_api 555\"]},\"body\":{\"name\":[\"from_number\"],\"value\":[\"5657545757\"]}}}','{\"apiKey\":\"BJAblgILvtc0gkn1zE40FZY2vaE0WewJpfEMCJ7KN9o2gjtZAYZF6bjSAyNSwqu5feXwfi790xfWvOinBlTmpxs\",\"authDomain\":\"deepveloce-b2fa5.firebaseapp.com\",\"projectId\":\"222780359486\",\"storageBucket\":\"OvoPay-app.firebasestorage.app\",\"messagingSenderId\":\"222780359486\",\"appId\":\"1:364630175808:web:79a615ef8535a527786fa5\",\"measurementId\":\"532589522\"}','{\n    \"site_name\":\"Name of your site\",\n    \"site_currency\":\"Currency of your site\",\n    \"currency_symbol\":\"Symbol of currency\"\n}',1,1,1,1,1,1,1,1,1,90,1,0,0,0,1,1,1,1,1,1,1,'basic','{\"google\":{\"client_id\":\"------------\",\"client_secret\":\"-------------\",\"status\":1,\"info\":\"Quickly set up Google Login for easy and secure access to your website for all users\"},\"facebook\":{\"client_id\":\"------\",\"client_secret\":\"sdfsdf\",\"status\":1,\"info\":\"Set up Facebook Login for fast, secure user access and seamless integration with your website.\"},\"linkedin\":{\"client_id\":\"-----\",\"client_secret\":\"http:\\/\\/localhost\\/flutter\\/admin_panel\\/user\\/social-login\\/callback\\/linkedin\",\"status\":1,\"info\":\"Set up LinkedIn Login for professional, secure access and easy user authentication on your website.\"}}','2026-04-12 20:31:16','1.0',0,50,1,'h:i A','Y-m-d',2,',','[\"email\",\"sms\"]',6,'1ce2ef','000000','67d6a47cd16341742120060.gif','{\"app_key\":null,\"app_id\":null,\"app_secret\":null,\"cluster\":null}',1,'UTC',NULL,'2026-04-13 04:10:20');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_card_categories`
--

DROP TABLE IF EXISTS `gift_card_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_card_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` int unsigned NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_card_categories`
--

LOCK TABLES `gift_card_categories` WRITE;
/*!40000 ALTER TABLE `gift_card_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_card_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_card_purchases`
--

DROP TABLE IF EXISTS `gift_card_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_card_purchases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `discount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `unit_price` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `sub_total` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `quantity` int NOT NULL DEFAULT '0',
  `total` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `api_provider_id` int NOT NULL DEFAULT '0',
  `api_provider_trx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cron_ordering` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_card_purchases`
--

LOCK TABLES `gift_card_purchases` WRITE;
/*!40000 ALTER TABLE `gift_card_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_card_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_cards`
--

DROP TABLE IF EXISTS `gift_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_cards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `country_id` int unsigned NOT NULL DEFAULT '0',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_global` tinyint(1) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supports_pre_order` tinyint(1) DEFAULT NULL,
  `sender_fee` decimal(28,8) DEFAULT NULL,
  `sender_fee_percentage` decimal(5,2) DEFAULT NULL,
  `discount_percentage` decimal(5,2) DEFAULT NULL,
  `denomination_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_recipient_denomination` decimal(28,8) DEFAULT NULL,
  `max_recipient_denomination` decimal(28,8) DEFAULT NULL,
  `sender_currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_sender_denomination` decimal(28,8) DEFAULT NULL,
  `max_sender_denomination` decimal(28,8) DEFAULT NULL,
  `fixed_recipient_denominations` text COLLATE utf8mb4_unicode_ci,
  `fixed_sender_denominations` text COLLATE utf8mb4_unicode_ci,
  `fixed_recipient_to_sender_map` text COLLATE utf8mb4_unicode_ci,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  `logo_urls` text COLLATE utf8mb4_unicode_ci,
  `brand_id` int DEFAULT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redeem_instruction_concise` text COLLATE utf8mb4_unicode_ci,
  `redeem_instruction_verbose` text COLLATE utf8mb4_unicode_ci,
  `user_id_required` tinyint(1) DEFAULT NULL,
  `recipient_to_sender_exchange_rate` decimal(28,8) DEFAULT NULL,
  `cron_ordering` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_cards`
--

LOCK TABLES `gift_cards` WRITE;
/*!40000 ALTER TABLE `gift_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutions`
--

DROP TABLE IF EXISTS `institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_charge` decimal(28,8) DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) DEFAULT '0.00',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutions`
--

LOCK TABLES `institutions` WRITE;
/*!40000 ALTER TABLE `institutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invest_plans`
--

DROP TABLE IF EXISTS `invest_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invest_plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invest_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>range,1=>fixed',
  `fixed_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `min_invest` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `max_invest` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `interest_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>percent,1=>fixed',
  `interest_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `time_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=>disable,1=>enable',
  `return_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>lifetime,1=>repeat',
  `repeat_times` int NOT NULL DEFAULT '1',
  `capital_back` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invest_plans`
--

LOCK TABLES `invest_plans` WRITE;
/*!40000 ALTER TABLE `invest_plans` DISABLE KEYS */;
INSERT INTO `invest_plans` VALUES (1,'Starter Plan','Entry-level plan for beginners',0,0.00000000,50.00000000,200.00000000,0,5.00000000,'4',1,1,15,1,'2025-12-07 10:17:51',NULL),(2,'Silver Plan','Moderate plan with better returns',0,0.00000000,200.00000000,1000.00000000,0,7.00000000,'2',1,1,13,1,'2025-12-07 10:17:51',NULL),(3,'Gold Plan','Higher returns for serious investors',0,0.00000000,1000.00000000,5000.00000000,0,10.00000000,'1',1,1,12,1,'2025-12-07 10:17:51',NULL),(4,'Platinum Plan','Premium plan for high investors',0,0.00000000,5000.00000000,10000.00000000,0,12.00000000,'1',1,1,10,1,'2025-12-07 10:17:51',NULL),(5,'Fixed Saver Plan','Small fixed investment with stable returns',1,100.00000000,0.00000000,0.00000000,1,10.00000000,'5',1,1,5,1,'2025-12-07 10:17:51',NULL),(6,'Fixed Growth Plan','Fixed investment ideal for long-term growth',1,1000.00000000,0.00000000,0.00000000,1,100.00000000,'4',1,1,3,1,'2025-12-07 10:17:51',NULL),(7,'Fixed Premium Plan','Large fixed investment with premium profit',1,5000.00000000,0.00000000,0.00000000,1,800.00000000,'2',1,1,10,0,'2025-12-07 10:17:51',NULL),(8,'Ultimate Plan','Long-term high yield plan',0,0.00000000,10000.00000000,50000.00000000,0,20.00000000,'3',1,0,0,0,'2025-12-07 10:17:51',NULL);
/*!40000 ALTER TABLE `invest_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invest_times`
--

DROP TABLE IF EXISTS `invest_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invest_times` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=>disable,1=>enable',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invest_times`
--

LOCK TABLES `invest_times` WRITE;
/*!40000 ALTER TABLE `invest_times` DISABLE KEYS */;
INSERT INTO `invest_times` VALUES (1,'Yearly',8760,1,'2025-09-24 02:03:32','2025-10-07 06:24:08'),(2,'Monthly',720,1,'2025-09-24 02:03:41','2025-10-05 14:26:34'),(3,'Weekly',168,1,'2025-09-24 02:03:52','2025-09-24 02:03:52'),(4,'Daily',24,1,'2025-09-24 02:04:00','2025-10-07 06:21:04'),(5,'Hourly',1,1,'2025-09-24 02:04:07','2025-10-05 14:08:22');
/*!40000 ALTER TABLE `invest_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_interests`
--

DROP TABLE IF EXISTS `investment_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_interests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `investment_id` bigint unsigned NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_interests`
--

LOCK TABLES `investment_interests` WRITE;
/*!40000 ALTER TABLE `investment_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `investment_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investments`
--

DROP TABLE IF EXISTS `investments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `plan_id` bigint unsigned NOT NULL,
  `per_interest_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `invest_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total_interest_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total_interest_amount_get` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=>running, 1=>completed',
  `last_return_at` timestamp NULL DEFAULT NULL,
  `next_return_at` timestamp NULL DEFAULT NULL,
  `capital_back` tinyint(1) NOT NULL DEFAULT '1',
  `total_repeat` int NOT NULL DEFAULT '0',
  `total_repeat_get` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `investments_user_id_foreign` (`user_id`),
  KEY `investments_plan_id_foreign` (`plan_id`),
  CONSTRAINT `investments_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `invest_plans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `investments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investments`
--

LOCK TABLES `investments` WRITE;
/*!40000 ALTER TABLE `investments` DISABLE KEYS */;
/*!40000 ALTER TABLE `investments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not default language, 1: default language',
  `image` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en',0,'66dd7636311b31725789750.png','English is a global language with rich vocabulary, bridging international communication and culture.','2020-07-06 03:47:55','2026-04-11 20:05:25'),(14,'Spanish','es',0,'66dd764462e2f1725789764.png','Spanish is a widely spoken language, celebrated for its melodic flow and rich cultural heritage.','2024-09-08 01:35:22','2024-10-03 04:11:19'),(15,'French','fr',0,'66dd7652c06061725789778.png','French is a romantic language, renowned for its elegance, rich literature, and global influence.','2024-09-08 01:35:28','2024-10-02 08:10:07'),(17,'Russian','ru',0,'66dd7a31f25a01725790769.png','Russian is a powerful language, known for its complex grammar and rich literary tradition.','2024-09-08 04:19:30','2024-09-10 05:20:29'),(19,'Portuguese','pt',0,'66e6c31120d4c1726399249.png','Portuguese is a dynamic language with a rich cultural history, known for its expressiveness and global influence.','2024-09-15 05:20:49','2024-09-15 05:25:42'),(23,'Italy','it',0,'670781623fe0d1728545122.png','Italian is a romantic and melodic language, celebrated for its rich history, artistic influence, and cultural significance in music.','2024-10-10 01:25:22','2024-10-10 01:27:28'),(26,'zh-CN','zh-cn',1,'69db19d8934691775966680.png','简体中文 (Chinese Simplified)','2026-04-11 20:04:40','2026-04-11 20:05:25');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make_payments`
--

DROP TABLE IF EXISTS `make_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `make_payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `merchant_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `merchant_post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `user_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make_payments`
--

LOCK TABLES `make_payments` WRITE;
/*!40000 ALTER TABLE `make_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `make_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_password_resets`
--

DROP TABLE IF EXISTS `merchant_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_password_resets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_password_resets`
--

LOCK TABLES `merchant_password_resets` WRITE;
/*!40000 ALTER TABLE `merchant_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `kyc_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kyc_rejection_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: KYC Unverified, 2: KYC pending, 1: KYC verified',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: mobile unverified, 1: mobile verified',
  `profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `ver_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en` tinyint(1) NOT NULL DEFAULT '1',
  `sn` tinyint(1) NOT NULL DEFAULT '1',
  `pn` tinyint(1) NOT NULL DEFAULT '1',
  `is_allow_promotional_notify` tinyint(1) NOT NULL DEFAULT '1',
  `ban_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchants`
--

LOCK TABLES `merchants` WRITE;
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfinances`
--

DROP TABLE IF EXISTS `microfinances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `microfinances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `ngo_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfinances`
--

LOCK TABLES `microfinances` WRITE;
/*!40000 ALTER TABLE `microfinances` DISABLE KEYS */;
/*!40000 ALTER TABLE `microfinances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\Admin',1),(1,'App\\Models\\Admin',4);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_settings`
--

DROP TABLE IF EXISTS `module_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_disabled` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_enabled` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_settings`
--

LOCK TABLES `module_settings` WRITE;
/*!40000 ALTER TABLE `module_settings` DISABLE KEYS */;
INSERT INTO `module_settings` VALUES (1,'USER','Send Money','send_money','Disable this feature to restrict users from sending money to other accounts','Enable this feature to allow users to send money to other accounts','las la-paper-plane',1,'2021-06-14 23:45:01','2025-01-07 04:27:47'),(3,'USER','Cash Out','cash_out','Disable this feature to prevent users from withdrawing cash out','Enable this feature to let users cash out from their accounts','las la-wallet',1,'2021-06-14 23:45:01','2024-01-27 03:57:29'),(4,'USER','Payment','make_payment','Disable this feature to restrict users from making payments.','Enable this feature to allow users to make payments for goods and services.','las la-credit-card',1,'2021-06-14 23:45:01','2024-11-19 00:41:45'),(5,'USER','Add Money','add_money','Disable this feature to prevent users from add money to their accounts.','Enable this feature to allow users to add money to their accounts.','las la-money-bill-wave',1,'2021-06-14 23:45:01','2025-02-16 07:18:11'),(6,'AGENT','Add Money','add_money','Disable this feature to prevent agents from add money to their accounts.','Enable this feature to allow agents to add money to their accounts.','las la-money-bill-wave',1,'2021-06-14 23:45:01','2025-03-09 22:09:20'),(10,'USER','Utility Bill','utility_bill','Disable this feature to prevent users from paying their utility bills.','Enable this feature to let users pay their utility bills conveniently.','las la-file-invoice',1,'2021-06-14 23:45:01','2024-12-08 06:05:44'),(11,'USER','Donation','donation','Disable this feature to restrict users from making donations.','Enable this feature to allow users to donate.','las la-hand-holding-heart',1,'2021-06-14 23:45:01','2024-12-08 06:55:11'),(12,'USER','Bank Transfer','bank_transfer','Disable this feature to restrict users from performing bank transfers.','Enable this feature to allow users to transfer funds to bank accounts.','las la-university',1,'2021-06-14 23:45:01','2023-09-16 07:03:58'),(13,'USER','Request Money','request_money','Disable this feature to restrict users from requesting money.','Enable this feature to let users request money from others.','las la-reply',1,'2021-06-14 23:45:01','2022-11-24 01:01:45'),(14,'USER','Education Fee','education_fee','Disable this feature to restrict users from paying education fees.','Enable this feature to let users pay education fees online.','las la-school',1,'2021-06-14 23:45:01','2022-11-24 01:01:45'),(15,'AGENT','Cash In','cash_in','Disable this feature to restrict agents from cash in to user.','Enable this feature to allow agents to cash in into users accounts.','las la-hand-holding',1,'2021-06-14 23:45:01','2025-03-09 22:09:21'),(16,'USER','Microfinance','microfinance','Disable this feature to restrict access to microfinance services.','Enable this feature to provide microfinance services to users.','las la-hand-holding-usd',1,'2021-06-14 23:45:01','2024-11-19 01:17:45'),(29,'USER','Mobile Recharge','mobile_recharge','Disable this feature to restrict users from performing airtime.','Enable this feature to allow users to performing airtime.','las la-mobile-alt',1,'2021-06-14 23:45:01','2025-03-07 22:30:08'),(30,'USER','Virtual Card','virtual_card','Disable this feature to restrict users from performing virtual card.','Enable this feature to allow users to performing virtual card.','las la-credit-card',1,'2021-06-14 23:45:01','2025-02-16 08:03:53'),(31,'USER','Gift Card','gift_card','Disable this feature to restrict users from performing gift card.','Enable this feature to allow users to performing gift card.','las la-gift',1,'2021-06-15 05:45:01','2025-06-24 20:06:17'),(32,'USER','Investment','investment','Disable this feature to restrict users from investment.','Enable this feature to allow users to investment.','las la-file-invoice-dollar',1,'2021-06-15 05:45:01','2025-11-03 17:36:41');
/*!40000 ALTER TABLE `module_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_requests`
--

DROP TABLE IF EXISTS `money_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `money_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL DEFAULT '0',
  `receiver_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_requests`
--

LOCK TABLES `money_requests` WRITE;
/*!40000 ALTER TABLE `money_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngos`
--

DROP TABLE IF EXISTS `ngos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ngos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_charge` decimal(28,8) DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) DEFAULT '0.00',
  `form_id` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngos`
--

LOCK TABLES `ngos` WRITE;
/*!40000 ALTER TABLE `ngos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ngos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_logs`
--

DROP TABLE IF EXISTS `notification_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `admin_id` int NOT NULL DEFAULT '0',
  `sender` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_to` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notification_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_read` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_logs`
--

LOCK TABLES `notification_logs` WRITE;
/*!40000 ALTER TABLE `notification_logs` DISABLE KEYS */;
INSERT INTO `notification_logs` VALUES (1,1,0,0,0,'php','info@ovosolution.com','modalindasu188@gmail.com','Your Account has been Credited','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Email Notification</title>\r\n    <style>\r\n        /* General Styles */\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-family: \'Open Sans\', Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table {\r\n            border-spacing: 0;\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n\r\n        img {\r\n            display: block;\r\n            border: 0;\r\n            line-height: 0;\r\n        }\r\n\r\n        a {\r\n            color: #ff600036;\r\n            text-decoration: none;\r\n        }\r\n\r\n        .email-wrapper {\r\n            width: 100%;\r\n            background-color: #f4f4f4;\r\n            padding: 30px 0;\r\n        }\r\n\r\n        .email-container {\r\n            width: 100%;\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 8px;\r\n            overflow: hidden;\r\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n        }\r\n\r\n        /* Header */\r\n        .email-header {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            padding: 20px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n        }\r\n\r\n        /* Logo */\r\n        .email-logo {\r\n            text-align: center;\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .email-logo img {\r\n            max-width: 180px;\r\n            margin: 0 auto;\r\n        }\r\n\r\n        /* Content */\r\n        .email-content {\r\n            padding: 0 30px 30px 30px;\r\n            text-align: left;\r\n        }\r\n\r\n        .email-content h1 {\r\n            font-size: 22px;\r\n            color: #414a51;\r\n            font-weight: bold;\r\n            margin-bottom: 10px;\r\n        }\r\n\r\n        .email-content p {\r\n            font-size: 16px;\r\n            color: #7f8c8d;\r\n            line-height: 1.6;\r\n            margin: 20px 0;\r\n        }\r\n\r\n        .email-divider {\r\n            margin: 20px auto;\r\n            width: 60px;\r\n            border-bottom: 3px solid #ff600036;\r\n        }\r\n\r\n        /* Footer */\r\n        .email-footer {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            padding: 20px;\r\n        }\r\n\r\n\r\n        /* Responsive Design */\r\n        @media only screen and (max-width: 480px) {\r\n            .email-content {\r\n                padding: 20px;\r\n            }\r\n\r\n            .email-header,\r\n            .email-footer {\r\n                padding: 15px;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"email-wrapper\">\r\n        <table class=\"email-container\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tbody style=\"border: 1px solid #ffddc9\">\r\n                <tr>\r\n                    <td>\r\n                        <!-- Header -->\r\n                        <div class=\"email-header\">\r\n                            System Generated Email\r\n                        </div>\r\n\r\n                        \r\n                        <!-- Logo -->\r\n                        <div class=\"email-logo\">\r\n                            <a href=\"#\">\r\n                                <img src=\"http://preview.ovosolution.com/ovopay/demo/assets/images/logo_icon/logo.png\" alt=\"Company Logo\">\r\n                            </a>\r\n                        </div>\r\n                        <!-- Content -->\r\n                        <div class=\"email-content\">\r\n                            <h1>Hello aiewwe</h1>\r\n                            <p><div>We\'re writing to inform you that an amount of 3.00 USD has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>OGCHUZZL9CV9</div><div><b>Current Balance:</b> 3.00 USD</div><div><b>Admin Note:</b> 热热热</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div></p>\r\n                        </div>\r\n\r\n                        <!-- Footer -->\r\n                        <div class=\"email-footer\">\r\n                            &copy; 2024 <a href=\"#\" style=\"color: #0087ff;\">OvoPay</a>. All Rights Reserved.\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>','email',NULL,0,'2026-04-12 06:13:49','2026-04-12 06:13:49'),(2,1,0,0,0,'php','info@ovosolution.com','modalindasu188@gmail.com','Your Account has been Credited','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Email Notification</title>\r\n    <style>\r\n        /* General Styles */\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-family: \'Open Sans\', Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table {\r\n            border-spacing: 0;\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n\r\n        img {\r\n            display: block;\r\n            border: 0;\r\n            line-height: 0;\r\n        }\r\n\r\n        a {\r\n            color: #ff600036;\r\n            text-decoration: none;\r\n        }\r\n\r\n        .email-wrapper {\r\n            width: 100%;\r\n            background-color: #f4f4f4;\r\n            padding: 30px 0;\r\n        }\r\n\r\n        .email-container {\r\n            width: 100%;\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 8px;\r\n            overflow: hidden;\r\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n        }\r\n\r\n        /* Header */\r\n        .email-header {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            padding: 20px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n        }\r\n\r\n        /* Logo */\r\n        .email-logo {\r\n            text-align: center;\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .email-logo img {\r\n            max-width: 180px;\r\n            margin: 0 auto;\r\n        }\r\n\r\n        /* Content */\r\n        .email-content {\r\n            padding: 0 30px 30px 30px;\r\n            text-align: left;\r\n        }\r\n\r\n        .email-content h1 {\r\n            font-size: 22px;\r\n            color: #414a51;\r\n            font-weight: bold;\r\n            margin-bottom: 10px;\r\n        }\r\n\r\n        .email-content p {\r\n            font-size: 16px;\r\n            color: #7f8c8d;\r\n            line-height: 1.6;\r\n            margin: 20px 0;\r\n        }\r\n\r\n        .email-divider {\r\n            margin: 20px auto;\r\n            width: 60px;\r\n            border-bottom: 3px solid #ff600036;\r\n        }\r\n\r\n        /* Footer */\r\n        .email-footer {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            padding: 20px;\r\n        }\r\n\r\n\r\n        /* Responsive Design */\r\n        @media only screen and (max-width: 480px) {\r\n            .email-content {\r\n                padding: 20px;\r\n            }\r\n\r\n            .email-header,\r\n            .email-footer {\r\n                padding: 15px;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"email-wrapper\">\r\n        <table class=\"email-container\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tbody style=\"border: 1px solid #ffddc9\">\r\n                <tr>\r\n                    <td>\r\n                        <!-- Header -->\r\n                        <div class=\"email-header\">\r\n                            System Generated Email\r\n                        </div>\r\n\r\n                        \r\n                        <!-- Logo -->\r\n                        <div class=\"email-logo\">\r\n                            <a href=\"#\">\r\n                                <img src=\"http://preview.ovosolution.com/ovopay/demo/assets/images/logo_icon/logo.png\" alt=\"Company Logo\">\r\n                            </a>\r\n                        </div>\r\n                        <!-- Content -->\r\n                        <div class=\"email-content\">\r\n                            <h1>Hello aiewwe</h1>\r\n                            <p><div>We\'re writing to inform you that an amount of 8,898,876.00 USD has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>NWQ3OTM6G6WF</div><div><b>Current Balance:</b> 8,898,879.00 USD</div><div><b>Admin Note:</b> 我</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div></p>\r\n                        </div>\r\n\r\n                        <!-- Footer -->\r\n                        <div class=\"email-footer\">\r\n                            &copy; 2024 <a href=\"#\" style=\"color: #0087ff;\">OvoPay</a>. All Rights Reserved.\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>','email',NULL,0,'2026-04-12 06:18:48','2026-04-12 06:18:48'),(3,1,0,0,0,'php','info@ovosolution.com','modalindasu188@gmail.com','Password Reset','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Email Notification</title>\r\n    <style>\r\n        /* General Styles */\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-family: \'Open Sans\', Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table {\r\n            border-spacing: 0;\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n\r\n        img {\r\n            display: block;\r\n            border: 0;\r\n            line-height: 0;\r\n        }\r\n\r\n        a {\r\n            color: #ff600036;\r\n            text-decoration: none;\r\n        }\r\n\r\n        .email-wrapper {\r\n            width: 100%;\r\n            background-color: #f4f4f4;\r\n            padding: 30px 0;\r\n        }\r\n\r\n        .email-container {\r\n            width: 100%;\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 8px;\r\n            overflow: hidden;\r\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n        }\r\n\r\n        /* Header */\r\n        .email-header {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            padding: 20px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n        }\r\n\r\n        /* Logo */\r\n        .email-logo {\r\n            text-align: center;\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .email-logo img {\r\n            max-width: 180px;\r\n            margin: 0 auto;\r\n        }\r\n\r\n        /* Content */\r\n        .email-content {\r\n            padding: 0 30px 30px 30px;\r\n            text-align: left;\r\n        }\r\n\r\n        .email-content h1 {\r\n            font-size: 22px;\r\n            color: #414a51;\r\n            font-weight: bold;\r\n            margin-bottom: 10px;\r\n        }\r\n\r\n        .email-content p {\r\n            font-size: 16px;\r\n            color: #7f8c8d;\r\n            line-height: 1.6;\r\n            margin: 20px 0;\r\n        }\r\n\r\n        .email-divider {\r\n            margin: 20px auto;\r\n            width: 60px;\r\n            border-bottom: 3px solid #ff600036;\r\n        }\r\n\r\n        /* Footer */\r\n        .email-footer {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            padding: 20px;\r\n        }\r\n\r\n\r\n        /* Responsive Design */\r\n        @media only screen and (max-width: 480px) {\r\n            .email-content {\r\n                padding: 20px;\r\n            }\r\n\r\n            .email-header,\r\n            .email-footer {\r\n                padding: 15px;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"email-wrapper\">\r\n        <table class=\"email-container\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tbody style=\"border: 1px solid #ffddc9\">\r\n                <tr>\r\n                    <td>\r\n                        <!-- Header -->\r\n                        <div class=\"email-header\">\r\n                            System Generated Email\r\n                        </div>\r\n\r\n                        \r\n                        <!-- Logo -->\r\n                        <div class=\"email-logo\">\r\n                            <a href=\"#\">\r\n                                <img src=\"http://preview.ovosolution.com/ovopay/demo/assets/images/logo_icon/logo.png\" alt=\"Company Logo\">\r\n                            </a>\r\n                        </div>\r\n                        <!-- Content -->\r\n                        <div class=\"email-content\">\r\n                            <h1>Hello aiewwe</h1>\r\n                            <p><div>We\'ve received a request to reset the password for your account on <b>2026-04-12 02:19:59 PM</b>. The request originated from\r\n            the following IP address: <b>91.80.66.156</b>, using <b>Handheld Browser</b> on <b>Android</b>.\r\n    </div><br>\r\n    <div><span>To proceed with the password reset, please use the following account recovery code</span>: <span><b><font size=\"6\">642810</font></b></span></div><br>\r\n    <div><span>If you did not initiate this password reset request, please disregard this message. Your account security\r\n            remains our top priority, and we advise you to take appropriate action if you suspect any unauthorized\r\n            access to your account.</span></div></p>\r\n                        </div>\r\n\r\n                        <!-- Footer -->\r\n                        <div class=\"email-footer\">\r\n                            &copy; 2024 <a href=\"#\" style=\"color: #0087ff;\">OvoPay</a>. All Rights Reserved.\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>','email',NULL,0,'2026-04-12 06:19:59','2026-04-12 06:19:59'),(4,1,0,0,0,'infobip','OvoPay','+13803808851','Password Reset','hi Linda Su (aiewwe), To proceed with the password reset, please use the following account recovery code: 642810','sms',NULL,0,'2026-04-12 06:19:59','2026-04-12 06:19:59'),(5,1,0,0,0,'php','info@ovosolution.com','modalindasu188@gmail.com','Password Reset','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Email Notification</title>\r\n    <style>\r\n        /* General Styles */\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-family: \'Open Sans\', Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table {\r\n            border-spacing: 0;\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n\r\n        img {\r\n            display: block;\r\n            border: 0;\r\n            line-height: 0;\r\n        }\r\n\r\n        a {\r\n            color: #ff600036;\r\n            text-decoration: none;\r\n        }\r\n\r\n        .email-wrapper {\r\n            width: 100%;\r\n            background-color: #f4f4f4;\r\n            padding: 30px 0;\r\n        }\r\n\r\n        .email-container {\r\n            width: 100%;\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 8px;\r\n            overflow: hidden;\r\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n        }\r\n\r\n        /* Header */\r\n        .email-header {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            padding: 20px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n        }\r\n\r\n        /* Logo */\r\n        .email-logo {\r\n            text-align: center;\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .email-logo img {\r\n            max-width: 180px;\r\n            margin: 0 auto;\r\n        }\r\n\r\n        /* Content */\r\n        .email-content {\r\n            padding: 0 30px 30px 30px;\r\n            text-align: left;\r\n        }\r\n\r\n        .email-content h1 {\r\n            font-size: 22px;\r\n            color: #414a51;\r\n            font-weight: bold;\r\n            margin-bottom: 10px;\r\n        }\r\n\r\n        .email-content p {\r\n            font-size: 16px;\r\n            color: #7f8c8d;\r\n            line-height: 1.6;\r\n            margin: 20px 0;\r\n        }\r\n\r\n        .email-divider {\r\n            margin: 20px auto;\r\n            width: 60px;\r\n            border-bottom: 3px solid #ff600036;\r\n        }\r\n\r\n        /* Footer */\r\n        .email-footer {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            padding: 20px;\r\n        }\r\n\r\n\r\n        /* Responsive Design */\r\n        @media only screen and (max-width: 480px) {\r\n            .email-content {\r\n                padding: 20px;\r\n            }\r\n\r\n            .email-header,\r\n            .email-footer {\r\n                padding: 15px;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"email-wrapper\">\r\n        <table class=\"email-container\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tbody style=\"border: 1px solid #ffddc9\">\r\n                <tr>\r\n                    <td>\r\n                        <!-- Header -->\r\n                        <div class=\"email-header\">\r\n                            System Generated Email\r\n                        </div>\r\n\r\n                        \r\n                        <!-- Logo -->\r\n                        <div class=\"email-logo\">\r\n                            <a href=\"#\">\r\n                                <img src=\"http://preview.ovosolution.com/ovopay/demo/assets/images/logo_icon/logo.png\" alt=\"Company Logo\">\r\n                            </a>\r\n                        </div>\r\n                        <!-- Content -->\r\n                        <div class=\"email-content\">\r\n                            <h1>Hello aiewwe</h1>\r\n                            <p><div>We\'ve received a request to reset the password for your account on <b>2026-04-12 02:23:22 PM</b>. The request originated from\r\n            the following IP address: <b>91.80.66.156</b>, using <b>Handheld Browser</b> on <b>Android</b>.\r\n    </div><br>\r\n    <div><span>To proceed with the password reset, please use the following account recovery code</span>: <span><b><font size=\"6\">743873</font></b></span></div><br>\r\n    <div><span>If you did not initiate this password reset request, please disregard this message. Your account security\r\n            remains our top priority, and we advise you to take appropriate action if you suspect any unauthorized\r\n            access to your account.</span></div></p>\r\n                        </div>\r\n\r\n                        <!-- Footer -->\r\n                        <div class=\"email-footer\">\r\n                            &copy; 2024 <a href=\"#\" style=\"color: #0087ff;\">OvoPay</a>. All Rights Reserved.\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>','email',NULL,0,'2026-04-12 06:23:22','2026-04-12 06:23:22'),(6,1,0,0,0,'infobip','OvoPay','+13802893808','Password Reset','hi Linda Su (aiewwe), To proceed with the password reset, please use the following account recovery code: 743873','sms',NULL,0,'2026-04-12 06:23:22','2026-04-12 06:23:22'),(7,0,0,0,1,'php','deepveloce@gmail.com','deepveloce@gmail.com','Password Reset','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Email Notification</title>\r\n    <style>\r\n        /* General Styles */\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-family: \'Open Sans\', Arial, sans-serif;\r\n            background-color: #f4f4f4;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table {\r\n            border-spacing: 0;\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n\r\n        img {\r\n            display: block;\r\n            border: 0;\r\n            line-height: 0;\r\n        }\r\n\r\n        a {\r\n            color: #ff600036;\r\n            text-decoration: none;\r\n        }\r\n\r\n        .email-wrapper {\r\n            width: 100%;\r\n            background-color: #f4f4f4;\r\n            padding: 30px 0;\r\n        }\r\n\r\n        .email-container {\r\n            width: 100%;\r\n            max-width: 600px;\r\n            margin: 0 auto;\r\n            background-color: #ffffff;\r\n            border-radius: 8px;\r\n            overflow: hidden;\r\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n        }\r\n\r\n        /* Header */\r\n        .email-header {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            padding: 20px;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n        }\r\n\r\n        /* Logo */\r\n        .email-logo {\r\n            text-align: center;\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .email-logo img {\r\n            max-width: 180px;\r\n            margin: 0 auto;\r\n        }\r\n\r\n        /* Content */\r\n        .email-content {\r\n            padding: 0 30px 30px 30px;\r\n            text-align: left;\r\n        }\r\n\r\n        .email-content h1 {\r\n            font-size: 22px;\r\n            color: #414a51;\r\n            font-weight: bold;\r\n            margin-bottom: 10px;\r\n        }\r\n\r\n        .email-content p {\r\n            font-size: 16px;\r\n            color: #7f8c8d;\r\n            line-height: 1.6;\r\n            margin: 20px 0;\r\n        }\r\n\r\n        .email-divider {\r\n            margin: 20px auto;\r\n            width: 60px;\r\n            border-bottom: 3px solid #ff600036;\r\n        }\r\n\r\n        /* Footer */\r\n        .email-footer {\r\n            background-color: #ff600036;\r\n            color: #000;\r\n            text-align: center;\r\n            font-size: 16px;\r\n            font-weight: 600;\r\n            padding: 20px;\r\n        }\r\n\r\n\r\n        /* Responsive Design */\r\n        @media only screen and (max-width: 480px) {\r\n            .email-content {\r\n                padding: 20px;\r\n            }\r\n\r\n            .email-header,\r\n            .email-footer {\r\n                padding: 15px;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"email-wrapper\">\r\n        <table class=\"email-container\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tbody style=\"border: 1px solid #ffddc9\">\r\n                <tr>\r\n                    <td>\r\n                        <!-- Header -->\r\n                        <div class=\"email-header\">\r\n                            System Generated Email\r\n                        </div>\r\n\r\n                        \r\n                        <!-- Logo -->\r\n                        <div class=\"email-logo\">\r\n                            <a href=\"#\">\r\n                                <img src=\"http://preview.ovosolution.com/ovopay/demo/assets/images/logo_icon/logo.png\" alt=\"Company Logo\">\r\n                            </a>\r\n                        </div>\r\n                        <!-- Content -->\r\n                        <div class=\"email-content\">\r\n                            <h1>Hello admin</h1>\r\n                            <p><div>We\'ve received a request to reset the password for your account on <b>2026-04-12 05:16:17 PM</b>. The request originated from\r\n            the following IP address: <b>79.58.175.115</b>, using <b>Chrome</b> on <b>Windows 10</b>.\r\n    </div><br>\r\n    <div><span>To proceed with the password reset, please use the following account recovery code</span>: <span><b><font size=\"6\">174062</font></b></span></div><br>\r\n    <div><span>If you did not initiate this password reset request, please disregard this message. Your account security\r\n            remains our top priority, and we advise you to take appropriate action if you suspect any unauthorized\r\n            access to your account.</span></div></p>\r\n                        </div>\r\n\r\n                        <!-- Footer -->\r\n                        <div class=\"email-footer\">\r\n                            &copy; 2024 <a href=\"#\" style=\"color: #0087ff;\">DeePay</a>. All Rights Reserved.\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</body>\r\n\r\n</html>','email',NULL,0,'2026-04-12 09:16:17','2026-04-12 09:16:17'),(8,2,0,0,0,'infobip','DeePay','+11234567890','Verify Your Mobile Number','hi   (), Your mobile verification code is 448622. Please enter this code in the appropriate field to verify your mobile number. If you did not request this code, please ignore this message.','sms',NULL,0,'2026-04-12 18:49:23','2026-04-12 18:49:23'),(9,2,0,0,0,'infobip','DeePay','+11234567890','Verify Your Mobile Number','hi   (), Your mobile verification code is 753807. Please enter this code in the appropriate field to verify your mobile number. If you did not request this code, please ignore this message.','sms',NULL,0,'2026-04-12 18:51:38','2026-04-12 18:51:38'),(10,2,0,0,0,'infobip','DeePay','+11234567890','Verify Your Mobile Number','hi   (), Your mobile verification code is 262399. Please enter this code in the appropriate field to verify your mobile number. If you did not request this code, please ignore this message.','sms',NULL,0,'2026-04-12 18:53:40','2026-04-12 18:53:40');
/*!40000 ALTER TABLE `notification_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_templates`
--

DROP TABLE IF EXISTS `notification_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `push_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_status` tinyint(1) NOT NULL DEFAULT '1',
  `email_sent_from_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent_from_address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_status` tinyint(1) NOT NULL DEFAULT '1',
  `sms_sent_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_templates`
--

LOCK TABLES `notification_templates` WRITE;
/*!40000 ALTER TABLE `notification_templates` DISABLE KEYS */;
INSERT INTO `notification_templates` VALUES (1,'BAL_ADD','Balance - Added','Your Account has been Credited','{{site_name}} - Balance Added','<div>We\'re writing to inform you that an amount of {{amount}} {{site_currency}} has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>{{trx}}</div><div><b>Current Balance:</b> {{post_balance}} {{site_currency}}</div><div><b>Admin Note:</b> {{remark}}</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div>','We\'re writing to inform you that an amount of {{amount}} {{site_currency}} has been successfully added to your account.','{{amount}} {{site_currency}} has been successfully added to your account.','{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}',1,'{{site_name}} Finance',NULL,0,NULL,1,'2021-11-03 12:00:00','2025-03-15 04:03:25'),(2,'BAL_SUB','Balance - Subtracted','Your Account has been Debited','{{site_name}} - Balance Subtracted','<div>We wish to inform you that an amount of {{amount}} {{site_currency}} has been successfully deducted from your account.</div><div><br></div><div>Below are the details of the transaction:</div><div><br></div><div><b>Transaction Number:</b> {{trx}}</div><div><b>Current Balance: </b>{{post_balance}} {{site_currency}}</div><div><b>Admin Note:</b> {{remark}}</div><div><br></div><div>Should you require any further clarification or assistance, please do not hesitate to reach out to us. We are here to assist you in any way we can.</div><div><br></div><div>Thank you for your continued trust in {{site_name}}.</div>','We wish to inform you that an amount of {{amount}} {{site_currency}} has been successfully deducted from your account.','{{amount}} {{site_currency}} debited from your account.','{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}',1,'{{site_name}} Finance',NULL,0,NULL,1,'2021-11-03 12:00:00','2025-03-15 04:03:10'),(3,'DEPOSIT_COMPLETE','Deposit - Automated - Successful','Deposit Completed Successfully','{{site_name}} - Deposit successful','<div>We\'re delighted to inform you that your deposit of {{amount}} {{site_currency}} via {{method_name}} has been completed.</div><div><br></div><div>Below, you\'ll find the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge: </b>{{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received:</b> {{method_amount}} {{method_currency}}</div><div><b>Paid via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Your current balance stands at {{post_balance}} {{site_currency}}.</div><div><br></div><div>If you have any questions or need further assistance, feel free to reach out to our support team. We\'re here to assist you in any way we can.</div>','We\'re delighted to inform you that your deposit of {{amount}} {{site_currency}} via {{method_name}} has been completed.','Deposit Completed Successfully','{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}',1,'{{site_name}} Billing',NULL,0,NULL,1,'2021-11-03 12:00:00','2025-03-16 00:37:04'),(4,'DEPOSIT_APPROVE','Deposit - Manual - Approved','Deposit Request Approved','{{site_name}} - Deposit Request Approved','<div>We are pleased to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been approved.</div><div><br></div><div>Here are the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge: </b>{{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received: </b>{{method_amount}} {{method_currency}}</div><div><b>Paid via: </b>{{method_name}}</div><div><b>Transaction Number: </b>{{trx}}</div><div><br></div><div>Your current balance now stands at {{post_balance}} {{site_currency}}.</div><div><br></div><div>Should you have any questions or require further assistance, please feel free to contact our support team. We\'re here to help.</div>','We are pleased to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been approved.','Deposit of {{amount}} {{site_currency}} via {{method_name}} has been approved.','{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}',1,'{{site_name}} Billing',NULL,0,NULL,0,'2021-11-03 12:00:00','2025-03-16 00:37:14'),(5,'DEPOSIT_REJECT','Deposit - Manual - Rejected','Deposit Request Rejected','{{site_name}} - Deposit Request Rejected','<div>We regret to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.</div><div><br></div><div>Here are the details of the rejected deposit:</div><div><br></div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received:</b> {{method_amount}} {{method_currency}}</div><div><b>Paid via:</b> {{method_name}}</div><div><b>Charge:</b> {{charge}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>If you have any questions or need further clarification, please don\'t hesitate to contact us. We\'re here to assist you.</div><div><br></div><div>Rejection Reason:</div><div>{{rejection_message}}</div><div><br></div><div>Thank you for your understanding.</div>','We regret to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.','Your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.','{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"rejection_message\":\"Rejection message by the admin\"}',1,'{{site_name}} Billing',NULL,1,NULL,0,'2021-11-03 12:00:00','2024-05-08 07:20:13'),(6,'DEPOSIT_REQUEST','Deposit - Manual - Requested','Deposit Request Submitted Successfully',NULL,'<div>We are pleased to confirm that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.</div><div><br></div><div>Below are the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Payable:</b> {{method_amount}} {{method_currency}}</div><div><b>Pay via: </b>{{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Should you have any questions or require further assistance, please feel free to reach out to our support team. We\'re here to assist you.</div>','We are pleased to confirm that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.','Your deposit request of {{amount}} {{site_currency}} via {{method_name}} submitted successfully.','{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\"}',1,'{{site_name}} Billing',NULL,1,NULL,0,'2021-11-03 12:00:00','2024-04-25 03:27:42'),(7,'PASS_RESET_CODE','Password - Reset - Code','Password Reset','{{site_name}} Password Reset Code','<div>We\'ve received a request to reset the password for your account on <b>{{time}}</b>. The request originated from\r\n            the following IP address: <b>{{ip}}</b>, using <b>{{browser}}</b> on <b>{{operating_system}}</b>.\r\n    </div><br>\r\n    <div><span>To proceed with the password reset, please use the following account recovery code</span>: <span><b><font size=\"6\">{{code}}</font></b></span></div><br>\r\n    <div><span>If you did not initiate this password reset request, please disregard this message. Your account security\r\n            remains our top priority, and we advise you to take appropriate action if you suspect any unauthorized\r\n            access to your account.</span></div>','To proceed with the password reset, please use the following account recovery code: {{code}}','To proceed with the password reset, please use the following account recovery code: {{code}}','{\"code\":\"Verification code for password reset\",\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}',1,'{{site_name}} Authentication Center',NULL,1,NULL,0,'2021-11-03 12:00:00','2025-03-16 00:41:21'),(8,'PASS_RESET_DONE','Password - Reset - Confirmation','Password Reset Successful',NULL,'<div><div><span>We are writing to inform you that the password reset for your account was successful. This action was completed at {{time}} from the following browser</span>: <span>{{browser}}</span><span>on {{operating_system}}, with the IP address</span>: <span>{{ip}}</span>.</div><br><div><span>Your account security is our utmost priority, and we are committed to ensuring the safety of your information. If you did not initiate this password reset or notice any suspicious activity on your account, please contact our support team immediately for further assistance.</span></div></div>','We are writing to inform you that the password reset for your account was successful.','We are writing to inform you that the password reset for your account was successful.','{\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}',1,'{{site_name}} Authentication Center',NULL,1,NULL,0,'2021-11-03 12:00:00','2024-04-25 03:27:24'),(9,'ADMIN_SUPPORT_REPLY','Support - Reply','Re: {{ticket_subject}} - Ticket #{{ticket_id}}','{{site_name}} - Support Ticket Replied','<div>\r\n    <div><span>Thank you for reaching out to us regarding your support ticket with the subject</span>:\r\n        <span>\"{{ticket_subject}}\"&nbsp;</span><span>and ticket ID</span>: {{ticket_id}}.</div><br>\r\n    <div><span>We have carefully reviewed your inquiry, and we are pleased to provide you with the following\r\n            response</span><span>:</span></div><br>\r\n    <div>{{reply}}</div><br>\r\n    <div><span>If you have any further questions or need additional assistance, please feel free to reply by clicking on\r\n            the following link</span>: <a href=\"{{link}}\" title=\"\" target=\"_blank\">{{link}}</a><span>. This link will take you to\r\n            the ticket thread where you can provide further information or ask for clarification.</span></div><br>\r\n    <div><span>Thank you for your patience and cooperation as we worked to address your concerns.</span></div>\r\n</div>','Thank you for reaching out to us regarding your support ticket with the subject: \"{{ticket_subject}}\" and ticket ID: {{ticket_id}}. We have carefully reviewed your inquiry. To check the response, please go to the following link: {{link}}','Re: {{ticket_subject}} - Ticket #{{ticket_id}}','{\"ticket_id\":\"ID of the support ticket\",\"ticket_subject\":\"Subject  of the support ticket\",\"reply\":\"Reply made by the admin\",\"link\":\"URL to view the support ticket\"}',1,'{{site_name}} Support Team',NULL,1,NULL,0,'2021-11-03 12:00:00','2024-05-08 07:26:06'),(10,'EVER_CODE','Verification - Email','Email Verification Code',NULL,'<div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">{{code}}</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div>','---','---','{\"code\":\"Email verification code\"}',1,'{{site_name}} Verification Center',NULL,0,NULL,0,'2021-11-03 12:00:00','2024-04-25 03:27:12'),(11,'SVER_CODE','Verification - SMS','Verify Your Mobile Number',NULL,'---','Your mobile verification code is {{code}}. Please enter this code in the appropriate field to verify your mobile number. If you did not request this code, please ignore this message.','---','{\"code\":\"SMS Verification Code\"}',0,'{{site_name}} Verification Center',NULL,1,NULL,0,'2021-11-03 12:00:00','2024-04-25 03:27:03'),(12,'WITHDRAW_APPROVE','Withdraw - Approved','Withdrawal Confirmation: Your Request Processed Successfully','{{site_name}} - Withdrawal Request Approved','<div>We are writing to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been processed successfully.</div><div><br></div><div>Below are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>You will receive:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><hr><div><br></div><div><b>Details of Processed Payment:</b></div><div>{{admin_details}}</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div>','We are writing to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been processed successfully.','Withdrawal Confirmation: Your Request Processed Successfully','{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"admin_details\":\"Details provided by the admin\"}',1,'{{site_name}} Finance',NULL,0,NULL,1,'2021-11-03 12:00:00','2025-03-16 00:45:15'),(13,'WITHDRAW_REJECT','Withdraw - Rejected','Withdrawal Request Rejected','{{site_name}} - Withdrawal Request Rejected','<div>We regret to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Expected Amount:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><hr><div><br></div><div><b>Refund Details:</b></div><div>{{amount}} {{site_currency}} has been refunded to your account, and your current balance is {{post_balance}} {{site_currency}}.</div><div><br></div><hr><div><br></div><div><b>Reason for Rejection:</b></div><div>{{admin_details}}</div><div><br></div><div>If you have any questions or concerns regarding this rejection or need further assistance, please do not hesitate to contact our support team. We apologize for any inconvenience this may have caused.</div>','We regret to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.','Withdrawal Request Rejected','{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this action\",\"admin_details\":\"Rejection message by the admin\"}',1,'{{site_name}} Finance',NULL,0,NULL,1,'2021-11-03 12:00:00','2025-03-16 00:45:00'),(14,'WITHDRAW_REQUEST','Withdraw - Requested','Withdrawal Request Confirmation','{{site_name}} - Requested for withdrawal','<div>We are pleased to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Expected Amount:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Your current balance is {{post_balance}} {{site_currency}}.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div>','We are pleased to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.','Withdrawal request submitted successfully','{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this transaction\"}',1,'{{site_name}} Finance',NULL,0,NULL,1,'2021-11-03 12:00:00','2025-03-16 00:44:48'),(15,'DEFAULT','Default Template','{{subject}}','{{subject}}','{{message}}','{{message}}','{{message}}','{\"subject\":\"Subject\",\"message\":\"Message\"}',1,NULL,NULL,1,NULL,1,'2019-09-14 13:14:22','2024-05-16 01:32:53'),(16,'KYC_APPROVE','KYC Approved','KYC Details has been approved','{{site_name}} - KYC Approved','<div><div><span>We are pleased to inform you that your Know Your Customer (KYC) information has been successfully reviewed and approved. This means that you are now eligible to conduct any payout operations within our system.</span></div><br><div><span>Your commitment to completing the KYC process promptly is greatly appreciated, as it helps us ensure the security and integrity of our platform for all users.</span></div><br><div><span>With your KYC verification now complete, you can proceed with confidence to carry out any payout transactions you require. Should you encounter any issues or have any questions along the way, please don\'t hesitate to reach out to our support team. We\'re here to assist you every step of the way.</span></div><br><div><span>Thank you once again for choosing {{site_name}} and for your cooperation in this matter.</span></div></div>','We are pleased to inform you that your Know Your Customer (KYC) information has been successfully reviewed and approved. This means that you are now eligible to conduct any payout operations within our system.','Your  Know Your Customer (KYC) information has been approved successfully','[]',1,'{{site_name}} Verification Center',NULL,0,NULL,1,NULL,'2025-03-16 00:38:19'),(17,'KYC_REJECT','KYC Rejected','KYC has been rejected','{{site_name}} - KYC Rejected','<div><div><span>We regret to inform you that the Know Your Customer (KYC) information provided has been reviewed and unfortunately, it has not met our verification standards. As a result, we are unable to approve your KYC submission at this time.</span></div><br><div><span>We understand that this news may be disappointing, and we want to assure you that we take these matters seriously to maintain the security and integrity of our platform.</span></div><br><div><span>Reasons for rejection may include discrepancies or incomplete information in the documentation provided. If you believe there has been a misunderstanding or if you would like further clarification on why your KYC was rejected, please don\'t hesitate to contact our support team.</span></div><br><div><span>We encourage you to review your submitted information and ensure that all details are accurate and up-to-date. Once any necessary adjustments have been made, you are welcome to resubmit your KYC information for review.</span></div><br><div><span>We apologize for any inconvenience this may cause and appreciate your understanding and cooperation in this matter.</span></div><br><div>Rejection Reason:</div><div>{{reason}}</div><div><br></div><div><span>Thank you for your continued support and patience.</span></div></div>','We regret to inform you that the Know Your Customer (KYC) information provided has been reviewed and unfortunately, it has not met our verification standards. As a result, we are unable to approve your KYC submission at this time. We encourage you to review your submitted information and ensure that all details are accurate and up-to-date. Once any necessary adjustments have been made, you are welcome to resubmit your KYC information for review.','Your  Know Your Customer (KYC) information has been rejected','{\"reason\":\"Rejection Reason\"}',1,'{{site_name}} Verification Center',NULL,1,NULL,1,NULL,'2025-03-16 00:38:30'),(20,'CASH_IN_COMMISSION_AGENT','Cash in Commission Agent','Cash-In Commission Received Successfully','Cash In Commission','<p>Dear <b>{{agent}},</b></p><p>You have successfully received a commission of {{currency_symbol}}{{commission}}&nbsp;for a cash-in transaction.</p><p>Transaction Details:</p><ul><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>New Balance:</strong> {{balance}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for your continued dedication. If you need assistance or have any questions, please don’t hesitate to contact our support team.</p><p>Best regards,<br>{{site_name}}</p>','Dear {{agent}},\r\n\r\nYou have successfully received a commission of {{commission}} for a cash-in transaction.\r\n{{site_name}}','You have successfully received a commission of {{commission}} for a cash-in transaction.','{\"amount\":\"Cash in amount\",\"agent\":\"agent username\",\"trx\":\"Transaction id\",\"time\":\"Cash in time and date\",\"balance\":\"New balance\",\"commission\":\"Cash in commission to agent\"}',0,'{{site_name}} Finance',NULL,0,NULL,1,NULL,'2025-03-16 00:33:49'),(21,'CASH_IN',' 	Cash In','Successful Cash-In Confirmation','New Cash In','<p>Dear {{user}},</p><p>We are pleased to inform you that a cash-in of <strong>{{amount}}</strong> from <strong>{{agent}}</strong> has been successfully completed.</p><p>Here are the details of your transaction:</p><ul><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>New Balance:</strong> {{balance}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>If you have any questions or concerns regarding this transaction, please feel free to contact our support team.</p><p>Thank you for choosing our services!</p><p>Best regards,<br>{{site_name}}</p>','Dear {{user}},\r\n\r\nWe are pleased to inform you that a cash-in of {{amount}} from {{agent}} has been successfully completed.\r\n{{site_name}}','We are pleased to inform you that a cash-in of {{amount}} from {{agent}} has been successfully completed.','{\"amount\":\"Cash in amount\", \"agent\":\"Agent username\",\"user\":\"username\",\"trx\":\"Transaction id\",\"time\":\"Cash in time and date\",\"balance\":\"New balance\"}',1,NULL,NULL,1,NULL,1,NULL,'2025-03-15 06:46:09'),(22,'CASH_IN_AGENT','Cash in Agent','Cash-In Transaction Successful','New Cash In','<p>Dear <b>{{agent}}</b>,</p><p>You have successfully completed a cash-in transaction of <strong>{{amount}}</strong> to <strong>{{user}}</strong>.</p><p>Transaction Details:</p><ul><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>Remaining Balance:</strong> {{balance}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for your continued service and dedication. If you have any concerns or require assistance, please don’t hesitate to reach out to our support team.</p><p>Best regards,<br>{{site_name}}</p>','Dear {{agent}},\r\n\r\nYou have successfully completed a cash-in transaction of {{amount}} to {{user}}.\r\n{{site_name}}','You have successfully completed a cash-in transaction of {{amount}} to {{user}}.','{\"amount\":\"Cash in amount\", \"user\":\"Username\",\"agent\":\"Agent Username\",\"trx\":\"Transaction id\",\"time\":\"Cash in time and date\",\"balance\":\"Remaining balance\"}',0,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:33:10'),(23,'SEND_MONEY','Send Money','Send Money',NULL,'<p>Dear User,</p><p>We are pleased to inform you that your transaction to send <strong>{{amount}}</strong> to <strong>{{to_user}}</strong> has been successfully completed.</p><p>Here are the details of the transaction:</p><ul><li><strong>Amount Sent:</strong> {{amount}}</li><li><strong>Recipient:</strong> {{to_user}}</li><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>Charge:</strong> {{charge}}</li><li><strong>Remaining Balance:</strong> {{balance}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for using our service. If you have any questions or need further assistance, feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','We are pleased to inform you that your transaction to send {{amount}} to {{to_user}} has been successfully completed.\r\n{{site_name}}',NULL,'{\"amount\":\"Transfer amount\", \"to_user\":\"User name or mail of receiver\",\"charge\":\"Transfer charge\",\"trx\":\"Transaction id\",\"time\":\"Transfer time and date\",\"balance\":\"Remaining balance\"}',1,NULL,NULL,1,NULL,0,NULL,'2024-11-25 06:11:25'),(24,'RECEIVED_MONEY','Received Money','Received Money','Received Money','<p>Dear <b>{{to_user}}</b>,</p><p>We are pleased to inform you that you have successfully received <strong>{{amount}}</strong> from <strong>{{from_user}}</strong>.</p><p>Here are the details of the transaction:</p><ul><li><strong>Amount Received:</strong> {{amount}}</li><li><strong>Sender:</strong> {{from_user}}</li><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>New Balance:</strong> {{balance}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for using our service. If you have any questions or need further assistance, feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','Dear User,\r\n\r\nWe are pleased to inform you that you have successfully received {{amount}} from {{from_user}}.\r\n{{site_name}}','Received Money Successfully','{\"amount\":\"Receive amount\",\"to_user\":\"To User name\", \"from_user\":\"From User name\",\"trx\":\"Transaction id\",\"time\":\"Received time and date\",\"balance\":\"New balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:41:42'),(25,'CASH_OUT','Cash Out','Successful Cash-Out Confirmation',NULL,'<p>Dear Customer,</p><p>Your cash-out transaction of <strong>{{amount}}</strong> to <strong>{{agent}}</strong> has been successfully completed.</p><p>Transaction Details:</p><ul><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>Charge:</strong> {{charge}}</li><li><strong>Remaining Balance:</strong> {{balance}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for using our services. If you have any questions or require further assistance, please don’t hesitate to contact our support team.</p><p>Best regards,<br>{{site_name}}</p>','Dear Customer,\r\n\r\nYour cash-out transaction of {{amount}} to {{agent}} has been successfully completed.\r\n{{site_name}}',NULL,'{\"amount\":\"Cash out amount\", \"agent\":\"Agent user name or mail\",\"charge\":\"Cash out charge\",\"trx\":\"Transaction id\",\"time\":\"Cash out time and date\",\"balance\":\"Remaining balance\"}',1,NULL,NULL,1,NULL,0,NULL,'2024-11-25 05:20:30'),(26,'CASH_OUT_COMMISSION_AGENT','Cash-Out Commission Received','Cash-Out Commission Received Successfully','Cash out commission received','<p>Dear <b>{{agent}}</b>,</p><p>You have successfully received a commission of <b>{{commission}}</b>&nbsp;for a cash-out transaction.</p><p>Commission Details:</p><ul><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>Total Commission Earned:</strong> {{commission}}</li><li><strong>New Balance:</strong> {{balance}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for your excellent service. For any inquiries or support, feel free to reach out to us.</p><p>Best regards,<br>{{site_name}}</p>','Dear {{agent}},\r\n\r\nYou have successfully received a commission of {{commission}} for a cash-out transaction.\r\n{{site_name}}','You have successfully received a commission of {{commission}} for a cash-out transaction.','{\"amount\":\"Cash out amount\", \"trx\":\"Transaction id\",\"time\":\"Cash out time and date\", \"agent\":\"Agent name\",\"balance\":\"Remaining balance\",\"commission\":\"Cash out commission\"}',0,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:35:46'),(27,'CASH_OUT_TO_AGENT','Cash Out Agent','Cash-Out Transaction Successful','New Cash Out','<p>Dear<b>&nbsp;{{agent}}</b>,</p><p>You have successfully processed a cash-out transaction of <strong>{{amount}}</strong> from <strong>{{user}}</strong>.</p><p>Transaction Details:</p><ul><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>New Balance:</strong> {{balance}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for your continued support and reliable service. Should you have any questions or need further assistance, please contact our support team.</p><p>Best regards,<br>{{site_name}}</p>','Dear {{agent}},\r\n\r\nYou have successfully processed a cash-out transaction of {{amount}} from {{user}}.\r\n{{site_name}}','You have successfully processed a cash-out transaction of {{amount}} from {{user}}.','{\"amount\":\"Cash out amount\", \"user\":\"User name\", \"agent\":\"Agent name\",\"trx\":\"Transaction id\",\"time\":\"Cash out time and date\",\"balance\":\"Remaining balance\"}',0,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:35:17'),(30,'BANK_TRANSFER_APPROVE','Bank Transfer Approved','Bank Transfer Approved','Bank transfer successfull','<p>Dear {{fullname}},</p><p>We are pleased to inform you that your bank transfer has been successfully approved. Below are the details of the transaction for your reference:</p><p><strong>Transaction Details:</strong></p><ul><li><strong>Amount Transferred:</strong> {{amount}}</li><li><strong>Transfer Charge:</strong> {{charge}}</li><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>Account Number:</strong> {{account_number}}</li><li>Bank Name:&nbsp;{{bank}}</li></ul><p>If you have any questions or need further assistance, please don\'t hesitate to contact through support system.</p><p>Thank you for choosing {{site_name}}.</p>','bank Transfer Approved','Dear {{fullname}},\r\n\r\nWe are pleased to inform you that your bank transfer has been successfully approved','{\"fullname\":\"User Full Name\",\"username\":\"username\",\"amount\":\"Transfer amount\", \"charge\":\"Bank transfer charge\",\"account_number\":\"Account number\",\"bank\":\"Bank name\",\"trx\":\"Transaction number\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-15 04:02:57'),(31,'BANK_TRANSFER_REJECT','Bank Transfer Reject','Bank Transfer Reject','Bank transfer request rejected','<p>Dear {{fullname}},</p><p>We regret to inform you that your bank transfer request has been rejected.</p><p>Please find the details below:</p><ul><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>Amount:</strong>&nbsp;{{amount}}</li><li><strong>Reason for Rejection:</strong> {{reason}}</li></ul><p>If you believe this was an error or require further assistance, kindly contact our support team. We are here to help resolve any issues.</p><p>Thank you for your understanding.</p><p>Best regards,<br>{{site_name}}</p>','Bank Transfer Reject','Dear {{fullname}},\r\n\r\nWe regret to inform you that your bank transfer request has been rejected.','{\"username\":\"Username\",\"fullname\":\"User fullname\",\"amount\":\"Transfer amount\", \"charge\":\"Bank transfer charge\",\"account_number\":\"Account number\",\"bank\":\"Bank name\",\"trx\":\"Transaction number\",\"reason\":\"Rejection reason\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,0,NULL,'2025-03-15 04:06:49'),(32,'EDUCATION_FEE_APPROVE','Education Fee Approved','Education Fee Approved','Education Fee Approved','<p>Dear <b>{{user}}</b>,</p><p>We are pleased to inform you that your education fee has been successfully approved for <strong>{{academy}}</strong>.</p><p>Here are the details:</p><ul><li><strong>Academy Name:</strong> {{academy}}</li><li><strong>Fee Status:</strong>&nbsp;Paid</li><li><span style=\"font-weight: bolder;\">Amount:</span>&nbsp;{{amount}}</li><li><span style=\"font-weight: bolder;\">Charge:</span>&nbsp;{{charge}}</li></ul><p>We appreciate your commitment to your education, and we look forward to supporting your journey. If you have any questions or need further assistance, feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','We are pleased to inform you that your education fee has been successfully approved for {{academy}}.','Your education fee payment has been approved','{\"user\":\"User name\",\"amount\":\"Fee amount\", \"charge\":\"Education Fee charge\",\"academy\":\"Academy name\",\"time\":\"Fee submit time\",\"trx\":\"Transaction number\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:37:38'),(33,'EDUCATION_FEE_REJECT','Education Fee Reject','Education Fee Reject','Education Fee Rejected','<p>Dear<b> {{user}}</b>,</p><p>We regret to inform you that your education fee payment for <strong>{{academy}}</strong> has been rejected.</p><p>Here are the details:</p><ul><li><strong>Academy Name:</strong> {{academy}}</li><li><strong>Fee Status:</strong> Rejected</li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Please review your payment details or contact our support team for further assistance. We understand this may be an inconvenience and are here to help resolve the issue.</p><p>Thank you for your understanding.</p><p>Best regards,<br>{{site_name}}</p>','Dear {{user}},\r\nWe regret to inform you that your education fee payment for {{academy}} has been rejected.','Your education fee payment has been rejected.','{\"user\":\"User Name\",\"amount\":\"Fee amount\", \"charge\":\"Education Fee charge\",\"academy\":\"Academy name\",\"time\":\"Fee submit time\",\"trx\":\"Transaction number\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,0,NULL,'2025-03-16 00:38:01'),(34,'MOBILE_RECHARGE_APPROVE','Mobile Recharge Approved','Mobile Recharge Approved','Mobile Recharge Approved','<p>Dear <b>{{user}}</b>,</p><p>We are pleased to inform you that your mobile recharge request has been successfully approved for <strong>{{operator}}</strong>.</p><p>Here are the details:</p><ul><li><strong>Mobile Number:</strong> {{mobile}}</li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Thank you for using our services. If you have any questions or need further assistance, feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','We are pleased to inform you that your mobile recharge request has been successfully approved for {{operator}}.','Mobile recharge has been approved','{\"user\":\"User name\",\"amount\":\"Recharge amount\", \"charge\":\"Mobile recharge charge\",\"mobile\":\"Mobile number\",\"operator\":\"Operator name\",\"trx\":\"Transaction number\",\"time\":\"Recharge time\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:41:06'),(35,'MOBILE_RECHARGE_REJECT','Mobile Recharge Rejected','Mobile Recharge Reject','Mobile Recharge Reject','<p>Dear <b>{{user}}</b>,</p><p>We regret to inform you that your mobile recharge request has been rejected for <strong>{{operator}}</strong>.</p><p>Here are the details:</p><ul><li><strong>Mobile Number:</strong> {{mobile}}</li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Please verify your payment details or contact our support team for further assistance. We apologize for any inconvenience caused and are here to help resolve the issue.</p><p>Best regards,<br>{{site_name}}</p>','We regret to inform you that your mobile recharge request has been rejected for {{operator}}.','Your mobile recharge request has been rejected.','{\"user\":\"User name\", \"amount\":\"Recharge amount\", \"charge\":\"Mobile recharge charge\",\"mobile\":\"Mobile number\",\"operator\":\"Operator name\",\"trx\":\"Transaction number\",\"time\":\"Recharge time\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:41:04'),(36,'UTILITY_BILL_APPROVE','Utility Bill Approved','Utility Bill Approved','Utility Bill Approved','<p>Dear<b> {{user}}</b>,</p><p>We are pleased to inform you that your utility bill payment has been successfully approved for <strong>{{utility}}</strong>.</p><p>Here are the details of the transaction:</p><ul><li><strong>Utility Name:</strong> {{utility}}</li><li><strong>Payment Status:</strong> Paid</li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Thank you for settling your <strong>{{utility}}</strong> bill. If you have any questions or need further assistance, feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','We are pleased to inform you that your utility bill payment has been successfully approved for {{utility}}.','Your utility bill payment has been approved','{\"user\":\"User name\",\"amount\":\"Bill amount\", \"charge\":\"Utility bill charge\",\"utility\":\"Utility name\",\"trx\":\"Transaction number\",\"time\":\"Bill pay time\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:45:56'),(37,'UTILITY_BILL_REJECT','Utility Bill Rejected','Utility Bill Rejected','Utility Bill Rejected','<p>Dear {<b>{{user}}</b>,</p><p>We regret to inform you that your utility bill payment has been rejected for <strong>{{utility}}</strong>.</p><p>Here are the details of the transaction:</p><ul><li><strong>Utility Name:</strong> {{utility}}</li><li><strong>Payment Status:</strong> Rejected</li><li><span style=\"font-weight: bolder;\">Reason:</span>&nbsp;{{reason}}<br></li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Please review your payment details or contact our support team for further assistance. We apologize for any inconvenience caused and are here to help resolve the issue.</p><p>Best regards,<br>{{site_name}}</p>','We regret to inform you that your utility bill payment has been rejected for {{utility}}.','Your utility bill payment has been rejected.','{\"user\":\"User name\",\"amount\":\"Bill amount\", \"charge\":\"Utility bill charge\",\"utility\":\"Utility name\",\"trx\":\"Transaction number\",\"reason\":\"Reason of Rejection\",\"time\":\"Bill pay time\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:45:36'),(38,'MERCHANT_PAYMENT_COMPLETE','Payment Successful','Payment Successful','Payment Successful','<p>Dear <b>{{user}}</b>,</p><p>We are pleased to inform you that your payment of {{amount}} has been successfully completed to {{merchant}}.</p><p>Here are the details of the transaction:</p><ul><li><strong>Amount:</strong> {{amount}}</li><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for your payment. If you have any questions or need further assistance, please feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','We are pleased to inform you that your payment of {{amount}} has been successfully completed to {{merchant}}.\r\n{{site_name}}','Your payment is Successful','{\"user\":\"User name\", \"amount\":\"Paid amount\", \"merchant\":\"Merchant full name\",\"charge\":\"Payment charge\",\"trx\":\"Transaction id\",\"time\":\"Payment time and date\",\"balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:42:35'),(39,'MAKE_PAYMENT_RECEIVE','Payment Received','Payment Received','Payment Received','<p>Dear <b>{{merchant}}</b>,</p><p>We are pleased to inform you that a payment of {{amount}} has been successfully received from <strong>{{user}}</strong>.</p><p>Here are the details of the transaction:</p><ul><li><strong>Received From:</strong> {{user}}</li><li><strong>Amount:</strong> {{amount}}</li><li><span style=\"font-weight: bolder;\">Charge:</span>&nbsp;{{charge}}<br></li><li><span style=\"font-weight: bolder;\">After Charge:</span>&nbsp;{{after_charge}}</li><li><strong>Transaction ID:</strong> {{trx}}</li><li><strong>Date &amp; Time:</strong> {{time}}</li></ul><p>Thank you for your payment. If you have any questions or need further assistance, please feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','Dear Merchant,\r\n\r\nWe are pleased to inform you that a payment of {{amount}} has been successfully received from {{user}}.','Payment Received Successfully','{\"merchant\":\"Merchant name\",\"amount\":\"Total amount\",\"after_charge\":\"Amount after charge\", \"user\":\"User name \",\"charge\":\"Payment charge\",\"trx\":\"Transaction id\",\"time\":\"Payment time and date\",\"balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:42:08'),(40,'DONATION','Donation Successful','Donation Successful',NULL,'<p>Dear {{name}},</p><p>Thank you for your generous donation of <strong>{{amount}}</strong> to <strong>{{donation_for}}</strong> through <strong>{{site_name}}</strong>. Your contribution makes a significant impact and helps further their mission.</p><p>Here are the details of your transaction:</p><ul><li><strong>Donation For:</strong> {{donation_for}}</li><li><strong>Donation Amount:</strong> {{amount}}</li><li><strong>Your New Balance:</strong> {{balance}}</li></ul><p>We truly appreciate your trust in <strong>{{site_name}}</strong> as a platform for giving. If you have any questions or require assistance, please don’t hesitate to contact us.</p><p>Thank you for supporting <strong>{{donation_for}}</strong> and making a difference!</p><p>Best regards,<br>The {{site_name}} Team</p>','Donation Successful',NULL,'{\"amount\":\"Doantion amount\",\"name\":\"Donar name\", \"email\":\"Donar email\",\"charge\":\"Donation charge\",\"donation_for\":\"Donation for\",\"trx\":\"Transaction id\",\"time\":\"Payment time and date\",\"balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,0,NULL,'2024-11-25 05:44:17'),(41,'MICROFINANCE_PAY_REJECT','Microfinance payment Rejected','Microfinance payment Rejected','Microfinance payment Rejected','<p>Dear user,</p><p>We regret to inform you that your microfinance payment has been rejected for <strong>{{organization}}</strong>.</p><p>Here are the details of the transaction:</p><ul><li><strong>Organization Name:</strong> {{organization}}</li><li><strong>Payment Status:</strong> Rejected</li><li><span style=\"font-weight: bolder;\">Reason:</span>&nbsp;{{reason}}</li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Please review the payment details or contact our support team for further assistance. We apologize for any inconvenience caused and are here to help resolve the issue.</p><p>Best regards,<br>{{site_name}}</p>','Microfinance payment Rejected','Dear user,\r\n\r\nWe regret to inform you that your microfinance payment  has been rejected.','{\"user\":\"User name\",\"amount\":\"Pay amount\", \"charge\":\"Microfinance payment charge\",\"organization\":\"Microfinance organization name\",\"trx\":\"Transaction number\",\"reason\":\"Rejection reason\",\"time\":\"Payment time\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:39:58'),(42,'MICROFINANCE_PAY_APPROVE','Microfinance payment Approved','Microfinance payment Approved','Microfinance Payment','<p>Dear <b>{{user}}</b>,</p><p>We are pleased to inform you that your microfinance payment has been successfully approved for <strong>{{organization}}</strong>.</p><p>Here are the details of the transaction:</p><ul><li><strong>Organization Name:</strong> {{organization}}</li><li><strong>Payment Status:</strong>&nbsp;Paid</li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Thank you for your continued trust in <b>{{site_name}}</b>. If you have any questions or need further assistance, feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','We are pleased to inform you that your microfinance payment has been successfully approved for {{organization}}.','Your microfinance payment has been successfully processed and approved.','{\"user\":\"User name\",\"amount\":\"Pay amount\", \"charge\":\"Microfinance payment charge\",\"organization\":\"Microfinance organization name\",\"trx\":\"Transaction number\",\"time\":\"Payment time\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:39:08'),(46,'SEND_OTP','OTP Verification','OTP Verification code',NULL,'Your OTP verification code is&nbsp;<strong>{{code}}</strong>.','Your OTP verification code is {{code}}.',NULL,'{\"code\":\"OTP  Verification Code\"}',1,NULL,NULL,1,NULL,0,NULL,'2025-02-08 01:03:32'),(47,'REQUESTED_MONEY_RECEIVED','Request Money Accept','Request Money Accept',NULL,'<div>Your have Accepted Money Request <b>{{amount}}</b><font color=\"#212529\"><b>{{site_currency}}</b></font>&nbsp;from&nbsp;<b> {{from_user}}</b>&nbsp; at <b>{{time}}</b>.&nbsp;</div><div>TrxID : <b>{{trx}}</b><br></div>','Your\'ve Accepted Money Request {{amount}} {{site_currency}} from {{from_user}} at {{time}}. \r\nTrxID : {{trx}}',NULL,'{\"amount\":\"Request amount\",\"from_user\":\"Requestor\",\"time\":\"Accept time and date\",\"trx\":\"Transaction id\"}',1,NULL,NULL,1,NULL,0,NULL,'2025-02-10 02:41:01'),(48,'MONEY_REQUESTED','Request Money','Request Money','Request  Money','<div><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); color: hsl(var(--body-color)); font-size: 0.875rem; background-color: hsl(var(--white)); display: inline !important;\">Dear&nbsp;</span><span style=\"text-align: var(--bs-body-text-align); color: hsl(var(--body-color)); font-size: 0.875rem; background-color: hsl(var(--white)); font-weight: bolder;\">{{to_user}}</span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); color: hsl(var(--body-color)); font-size: 0.875rem; background-color: hsl(var(--white)); display: inline !important;\">,</span></div><div><p>We are pleased to inform you that you have money request&nbsp;<span style=\"font-weight: bolder;\">{{amount}}</span>&nbsp;from&nbsp;<span style=\"font-weight: bolder;\">{{from_user}}</span>.</p><p>Here are the details of the transaction:</p><ul><li><span style=\"font-weight: bolder;\">Amount :</span>&nbsp;{{amount}}</li><li><span style=\"font-weight: bolder;\">Sender:</span>&nbsp;{{from_user}}</li><li><span style=\"font-weight: bolder;\">Date &amp; Time:</span>&nbsp;{{time}}</li></ul><p><span style=\"color: rgb(0, 0, 0); font-size: 16px; display: inline !important;\">{{note}}</span></p><p>Thank you for using our service. If you have any questions or need further assistance, feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p></div>','Money Request {{amount}} {{site_currency}} from {{from_user}} at {{time}}.','New Request  Money is created','{\"amount\":\"Receive amount\",\"to_user\":\"To user name\", \"from_user\":\"From user name \",\"time\":\"Request time and date\",\"note\":\"Note from requestor\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 00:47:21'),(50,'MONEY_REQUEST_REJECT','Request Money - Reject','Request Money Reject','The request money is rejected','<div><span style=\"background-color: hsl(var(--white)); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Request Money Reject&nbsp;</span><b>{{amount}} {{site_currency}}</b> from <b>{{from_user}}</b>&nbsp;at <b>{{time}}</b>.</div>','Request Money Reject {{amount}} {{site_currency}} from {{from_user}} at {{time}}.','Request Money Reject {{amount}} {{site_currency}} from {{from_user}} at {{time}}.','{}',1,NULL,NULL,0,NULL,0,NULL,'2025-03-16 00:48:15'),(51,'GIFT_CARD_APPROVE','Gift  Card Approved','Gift Card Approved','Gift Card Approved','<p>Dear<b> {{user}}</b>,</p><p>We are pleased to inform you that your gift card purchase has been successfully approved for <strong>{{utility}}</strong>.</p><p>Here are the details of the transaction:</p><ul><li><strong>Utility Name:</strong> {{product}}</li><li><strong>Payment Status:</strong> Paid</li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Thank you for settling your <strong>{{product}}</strong> bill. If you have any questions or need further assistance, feel free to contact us.</p><p>Best regards,<br>{{site_name}}</p>','We are pleased to inform you that your gift card purchase has been successfully approved for {{product}}.','Your gift card purchase has been approved','{\"user\":\"User name\",\"amount\":\"Gift card amount\", \"charge\":\"Gift card purchase charge\",\"product\":\"Gift Card name\",\"trx\":\"Transaction number\",\"time\":\"Gift Card Purchase time\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 06:45:56'),(52,'GIFT_CARD_REJECT','Gift Card Rejected','Gift Card Purchase Rejected','Gift Card Purchase Rejected','<p>Dear {<b>{{user}}</b>,</p><p>We regret to inform you that your gift card purchase has been rejected for <strong>{{utility}}</strong>.</p><p>Here are the details of the transaction:</p><ul><li><strong>Gift Card Name:</strong> {{product}}</li><li><strong>Payment Status:</strong> Rejected</li><li><span style=\"font-weight: bolder;\">Reason:</span>&nbsp;{{reason}}<br></li><li><strong>Amount:</strong> {{amount}}</li><li><strong>Charge:</strong> {{charge}}</li></ul><p>Please review your payment details or contact our support team for further assistance. We apologize for any inconvenience caused and are here to help resolve the issue.</p><p>Best regards,<br>{{site_name}}</p>','We regret to inform you that your gift card purchase has been rejected for {{product}}.','Your gift card purchase has been rejected.','{\"user\":\"User name\",\"amount\":\"Gift card amount\", \"charge\":\"Gift card charge\",\"product\":\"Gift card name\",\"trx\":\"Transaction number\",\"reason\":\"Reason of Rejection\",\"time\":\"Gift card purchase time\",\"post_balance\":\"Remaining balance\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 06:45:36'),(53,'GIFT_CARD_PURCHASE_COMPLETED','Gift Card Purchase Completed','Gift Card Purchase Completed Successfully','Gift Card Purchase Completed Successfully','<p>We’re pleased to inform you that your gift card purchase has been <strong>successfully completed</strong>.</p>\r\n\r\n<p>Here are the details of your transaction:</p>\r\n\r\n<ul>\r\n <li><strong>Gift Card Name:</strong> {{product}}</li>\r\n <li><strong>Quantity:</strong> {{quantity}}</li>\r\n <li><strong>Gift Card Amount:</strong> {{amount}} {{site_currency}}</li>\r\n <li><strong>Charge:</strong> {{charge}} {{site_currency}}</li>\r\n <li><strong>Transaction Number:</strong> {{trx}}</li>\r\n <li><strong>Purchase Time:</strong> {{time}}</li>\r\n <li><strong>Recipient Email:</strong> {{email}}</li>\r\n <li><strong>Remaining Balance:</strong> {{post_balance}} {{site_currency}}</li>\r\n</ul>\r\n\r\n<p>Your gift card(s) have been processed successfully and are now available for use or delivery to the recipient.</p>\r\n\r\n<p>Thank you for choosing our service. We appreciate your trust and look forward to serving you again!</p>\r\n\r\n<p>Best regards,<br>{{site_name}}</p>','We are happy to inform you that your gift card purchase has been approved.','We are happy to inform you that your gift card purchase has been approved.','{\"user\":\"User name\",\"amount\":\"Gift card amount\", \"charge\":\"Gift card charge\",\"product\":\"Gift card name\",\"trx\":\"Transaction number\",\"reason\":\"Reason of Rejection\",\"time\":\"Gift card purchase time\",\"post_balance\":\"Remaining balance\",\"quantity\":\"Gift Card Quantity\",\"email\":\"Receipient Email\"}',1,NULL,NULL,0,NULL,1,NULL,'2025-03-16 06:45:36'),(54,'INVESTMENT_INTEREST','Investment Interest','Investment Interest Return','New Investment Interest','\r\n<p>We are pleased to inform you that your investment has just generated a profit of <strong>{{amount}}</strong>.</p>\r\n\r\n<p>Interest Credit Details:</p>\r\n<ul>\r\n  <li><strong>Transaction ID:</strong> {{trx}}</li>\r\n  <li><strong>Plan Name:</strong> {{plan_name}}</li>\r\n  <li><strong>Credited Interest:</strong> {{amount}}</li>\r\n  <li><strong>Date &amp; Time:</strong> {{time}}</li>\r\n  <li><strong>Current Balance:</strong> {{remain_balance}}</li>\r\n</ul>\r\n\r\n<p>This profit has been added to your account balance. Keep investing with us to maximize your returns and achieve your financial goals.</p>\r\n\r\n<p>Thank you for trusting <b>{{site_name}}</b>.  \r\nIf you have any questions, please feel free to contact our support team.</p>\r\n\r\n<p>Best regards,<br>{{site_name}}</p>\r\n','Dear {{user}}, your investment in {{plan_name}} has earned you {{amount}} as profit. \r\nTrx: {{trx}}, Balance: {{remain_balance}}. \r\n- {{site_name}}\r\n','Hi {{user}}, your investment in {{plan_name}} just earned {{amount}} profit. Current Balance: {{remain_balance}}. Trx: {{trx}}.\r\n','{\r\n  \"user\": \"Investor name\",\r\n  \"trx\": \"Transaction ID of credited interest\",\r\n  \"amount\": \"Credited interest amount\",\r\n  \"plan_name\": \"Investment plan name\",\r\n  \"interest_rate\": \"Plan interest rate (%)\",\r\n  \"duration\": \"Investment duration in hours\",\r\n  \"time\": \"Date & time of interest credit\",\r\n  \"remain_balance\": \"User\'s current balance after interest\",\r\n  \"site_name\": \"Website or platform name\"\r\n}\r\n',1,NULL,NULL,0,NULL,1,NULL,'2025-10-01 16:45:27'),(55,'INVESTMENT_SUCCESS','Investment Success','Investment Successful','New Investment','<p>You have successfully made an investment of <strong>{{amount}}</strong> in the plan <strong>{{plan_name}}</strong>.</p>\r\n\r\n<p>Investment Details:</p>\r\n<ul>\r\n  <li><strong>Investment Trx:</strong> {{trx}}</li>\r\n  <li><strong>Plan Name:</strong> {{plan_name}}</li>\r\n  <li><strong>Invested Amount:</strong> {{amount}}</li>\r\n  <li><strong>Amount Per Interest:</strong> {{amount_per_interest}}</li><li><strong>Total Interest Amount:</strong>&nbsp;{{total_interest_amount}}</li><li><strong>Next Return AT:</strong>&nbsp;{{next_return_at}}</li><li><strong>Investment time:&nbsp;</strong>{{time}}</li>\r\n<li><strong>Remaining Balance:</strong> {{remain_balance}}</li>\r\n</ul>\r\n\r\n<p>Thank you for investing with us. We are committed to helping you grow your wealth.  \r\nIf you have any questions, please contact our support team.</p>\r\n\r\n<p>Best regards,<br>{{site_name}}</p>','Dear {{user}}, you have successfully invested {{amount}} in plan \"{{plan_name}}\". \r\nInvestment ID: {{trx}}, Interest: {{interest_rate}}%, Duration: {{duration}}, Date: {{time}}. \r\nThank you for choosing {{site_name}}.\r\n','{{user}}, your investment of {{amount}} in \"{{plan_name}}\" is successful. ID: {{trx}}, Interest: {{interest_rate}}%, Duration: {{duration}}.','{\n  \"user\": \"Investor name\",\n  \"trx\": \"Investment transaction ID\",\n  \"amount\": \"Invested amount\",\n  \"plan_name\": \"Investment plan name\",\n  \"time\": \"Investment date and time\",\n  \"remain_balance\": \"Remain Balance\",\n  \"amount_per_interest\": \"Amount per interest\",\n  \"total_interest_amount\": \"Total interest amount\",\n  \"capital_back\": \"Capital back\",\n  \"next_return_at\": \"Next return date and time\"\n}',1,NULL,NULL,0,NULL,1,NULL,'2025-12-07 07:11:38'),(56,'INVESTMENT_COMPLETED','Investment Completed','Your Investment Has Been Completed','Investment Completed','<p>Your investment plan <strong>{{plan_name}}</strong> has been successfully completed.</p>\n<p>Completion Details:</p>\n<ul>\n  <li><strong>Transaction ID:</strong> {{trx}}</li>\n  <li><strong>Plan Name:</strong> {{plan_name}}</li>\n  <li><strong>Total Invested:</strong> {{invest_amount}}</li>\n  <li><strong>Total Return:</strong> {{total_return}}</li>\n  <li><strong>Completion Date &amp; Time:</strong> {{time}}</li>\n  <li><strong>Current Balance:</strong> {{remain_balance}}</li>\n</ul>\n<p>Your principal amount and earned profit have been added to your account balance.</p>\n\n<p>Thank you for trusting <b>{{site_name}}</b>.  \nIf you have any questions, please feel free to contact our support team.</p>\n\n<p>Best regards,<br>{{site_name}}</p>','Dear {{user}}, your investment in {{plan_name}} is now completed.\nTotal Return: {{total_return}}, Trx: {{trx}}, Balance: {{remain_balance}}.\n- {{site_name}}','Hi {{user}}, your investment in {{plan_name}} has been completed. You earned {{total_return}}. Trx: {{trx}}.','{\n    \"user\": \"Investor name\",\n    \"trx\": \"Transaction ID of completed investment\",\n    \"plan_name\": \"Investment plan name\",\n    \"invest_amount\": \"The initial invested amount\",\n    \"total_return\": \"Total return including principal and profit\",\n    \"time\": \"Completion date & time\",\n    \"remain_balance\": \"User\'s current balance after completion\",\n    \"site_name\": \"Website or platform name\"\n  }',1,NULL,NULL,0,NULL,1,'2025-10-01 16:45:27','2025-10-01 16:45:27'),(57,'INVESTMENT_CAPITAL_BACK','Capital Returned','Your Capital Has Been Returned','Investment Capital Returned','<p>We are pleased to inform you that the capital you invested in <strong>{{plan_name}}</strong> has been successfully returned.</p> <p>Capital Return Details:</p> <ul> <li><strong>Transaction ID:</strong> {{trx}}</li> <li><strong>Plan Name:</strong> {{plan_name}}</li> <li><strong>Returned Capital:</strong> {{capital_amount}}</li> <li><strong>Date & Time:</strong> {{time}}</li> <li><strong>Current Balance:</strong> {{remain_balance}}</li> </ul> <p>Your original investment amount has been added back to your account balance.</p> <p>Thank you for choosing <b>{{site_name}}</b>.</p> <p>Best regards,<br>{{site_name}}</p>','Dear {{user}}, your capital for {{plan_name}} has been returned. Amount: {{capital_amount}}. Trx: {{trx}}. Balance: {{remain_balance}} - {{site_name}}','Hi {{user}}, your capital for {{plan_name}} has been returned. Amount: {{capital_amount}}. Trx: {{trx}}.','{ \"user\": \"Investor name\", \"trx\": \"Transaction ID of capital return\", \"plan_name\": \"Investment plan name\", \"capital_amount\": \"Returned capital amount\", \"time\": \"Date & time of capital return\", \"remain_balance\": \"User balance after capital return\", \"site_name\": \"Platform name\" }',1,NULL,NULL,0,NULL,1,NULL,'2026-04-12 03:14:36');
/*!40000 ALTER TABLE `notification_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `merchant_id` int NOT NULL DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` tinyint(1) NOT NULL COMMENT '1=fixed, 2=percent',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `min_payment` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `maximum_discount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operating_countries`
--

DROP TABLE IF EXISTS `operating_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operating_countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number_digit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `operating_countries_name_unique` (`name`),
  UNIQUE KEY `operating_countries_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operating_countries`
--

LOCK TABLES `operating_countries` WRITE;
/*!40000 ALTER TABLE `operating_countries` DISABLE KEYS */;
INSERT INTO `operating_countries` VALUES (1,'United States','US','1','10',1,'2025-03-19 23:56:30','2025-03-19 23:56:30'),(2,'Italy','IT','39','39',1,'2026-04-12 13:09:16','2026-04-12 13:09:16'),(3,'China','CN','86','86',1,'2026-04-12 13:09:43','2026-04-12 13:09:43'),(4,'France','FR','33','33',1,'2026-04-12 13:11:34','2026-04-12 13:11:34'),(5,'Greece','GR','30','30',1,'2026-04-12 16:38:33','2026-04-12 16:38:33'),(6,'Germany','DE','49','49',1,'2026-04-12 16:40:00','2026-04-12 16:40:00'),(7,'Luxembourg','LU','352','352',1,'2026-04-12 16:41:08','2026-04-12 16:41:08'),(8,'Hungary','HU','36','36',1,'2026-04-12 16:43:09','2026-04-12 16:43:09'),(9,'Hong Kong','HK','852','852',1,'2026-04-12 16:43:44','2026-04-12 16:43:44'),(10,'Portugal','PT','351','351',1,'2026-04-12 16:44:59','2026-04-12 16:44:59'),(11,'Netherlands','NL','31','31',1,'2026-04-12 16:46:26','2026-04-12 16:46:26'),(12,'Austria','AT','43','43',1,'2026-04-12 16:48:48','2026-04-12 16:48:48'),(13,'Mexico','MX','52','52',1,'2026-04-12 16:49:56','2026-04-12 16:49:56');
/*!40000 ALTER TABLE `operating_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operators` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country_id` int unsigned NOT NULL DEFAULT '0',
  `unique_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bundle` tinyint(1) NOT NULL DEFAULT '0',
  `data` tinyint(1) NOT NULL DEFAULT '0',
  `pin` tinyint(1) NOT NULL DEFAULT '0',
  `supports_local_amount` tinyint(1) NOT NULL DEFAULT '0',
  `supports_geographical_recharge_plans` tinyint(1) NOT NULL DEFAULT '0',
  `denomination_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sender_currency_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sender_currency_symbol` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destination_currency_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destination_currency_symbol` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commission` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `international_discount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `local_discount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `most_popular_amount` decimal(28,8) DEFAULT NULL,
  `most_popular_local_amount` decimal(28,8) DEFAULT NULL,
  `min_amount` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `max_amount` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `local_min_amount` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `local_max_amount` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rate` decimal(28,8) DEFAULT '0.00000000',
  `logo_urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `fixed_amounts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `fixed_amounts_descriptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `local_fixed_amounts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `local_fixed_amounts_descriptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `suggested_amounts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `suggested_amounts_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `fees` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `geographical_recharge_plans` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `reloadly_status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cron_ordering` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators`
--

LOCK TABLES `operators` WRITE;
/*!40000 ALTER TABLE `operators` DISABLE KEYS */;
/*!40000 ALTER TABLE `operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'HOME','/','templates.basic.','[\"service\",\"how_to_work\",\"counter\",\"testimonial\",\"faq\",\"blog\",\"cta\"]','{\"image\":\"69dbeb7d988551776020349.png\",\"description\":null,\"social_title\":null,\"social_description\":null,\"keywords\":null}',1,'2020-07-11 06:23:58','2026-04-12 10:59:09'),(4,'Blog','blog','templates.basic.','[\"cta\"]',NULL,1,'2020-10-22 01:14:43','2025-03-06 08:14:22'),(5,'Contact','contact','templates.basic.','[\"cta\"]',NULL,1,'2020-10-22 01:14:53','2025-03-06 08:14:10'),(28,'Service','service','templates.basic.','[\"service\",\"cta\"]',NULL,0,'2025-02-08 03:58:35','2025-03-06 08:13:50');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES (1,'3803808851','642810','2026-04-12 06:19:59','2026-04-12 06:19:59'),(2,'3802893808','743873','2026-04-12 06:23:22','2026-04-12 06:23:22');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'view send money','admin','send money','2025-04-21 18:47:48','2025-04-21 18:47:48'),(2,'manage send money charge','admin','send money','2025-04-21 18:47:48','2025-04-21 18:47:48'),(3,'view cash out','admin','cash out','2025-04-21 18:47:48','2025-04-21 18:47:48'),(4,'manage cash out charge','admin','cash out','2025-04-21 18:47:48','2025-04-21 18:47:48'),(5,'view cash in','admin','cash in','2025-04-21 18:47:48','2025-04-21 18:47:48'),(6,'manage cash in charge','admin','cash in','2025-04-21 18:47:48','2025-04-21 18:47:48'),(7,'view payment','admin','payment','2025-04-21 18:47:48','2025-04-21 18:47:48'),(8,'manage payment charge','admin','payment','2025-04-21 18:47:48','2025-04-21 18:47:48'),(9,'view bank transfer','admin','bank transfer','2025-04-21 18:47:48','2025-04-21 18:47:48'),(10,'manage bank transfer bank','admin','bank transfer','2025-04-21 18:47:48','2025-04-21 18:47:48'),(11,'manage bank transfer charge','admin','bank transfer','2025-04-21 18:47:48','2025-04-21 18:47:48'),(12,'approve bank transfer','admin','bank transfer','2025-04-21 18:47:48','2025-04-21 18:47:48'),(13,'reject bank transfer','admin','bank transfer','2025-04-21 18:47:48','2025-04-21 18:47:48'),(14,'view microfinance','admin','microfinance','2025-04-21 18:47:48','2025-04-21 18:47:48'),(15,'manage microfinance ngo','admin','microfinance','2025-04-21 18:47:48','2025-04-21 18:47:48'),(16,'manage microfinance charge','admin','microfinance','2025-04-21 18:47:48','2025-04-21 18:47:48'),(17,'approve microfinance','admin','microfinance','2025-04-21 18:47:48','2025-04-21 18:47:48'),(18,'reject microfinance','admin','microfinance','2025-04-21 18:47:48','2025-04-21 18:47:48'),(19,'view mobile recharge','admin','mobile recharge','2025-04-21 18:47:48','2025-04-21 18:47:48'),(20,'manage mobile operator','admin','mobile recharge','2025-04-21 18:47:48','2025-04-21 18:47:48'),(21,'manage mobile recharge charge','admin','mobile recharge','2025-04-21 18:47:48','2025-04-21 18:47:48'),(22,'approve mobile recharge','admin','mobile recharge','2025-04-21 18:47:48','2025-04-21 18:47:48'),(23,'reject mobile recharge','admin','mobile recharge','2025-04-21 18:47:48','2025-04-21 18:47:48'),(24,'view airtime','admin','airtime','2025-04-21 18:47:48','2025-04-21 18:47:48'),(25,'manage airtime operator','admin','airtime','2025-04-21 18:47:48','2025-04-21 18:47:48'),(26,'view utility bill','admin','utility bill','2025-04-21 18:47:48','2025-04-21 18:47:48'),(27,'manage utility bill charge','admin','utility bill','2025-04-21 18:47:48','2025-04-21 18:47:48'),(28,'manage bill category','admin','utility bill','2025-04-21 18:47:48','2025-04-21 18:47:48'),(29,'manage bill company','admin','utility bill','2025-04-21 18:47:48','2025-04-21 18:47:48'),(30,'approve utility bill','admin','utility bill','2025-04-21 18:47:48','2025-04-21 18:47:48'),(31,'reject utility bill','admin','utility bill','2025-04-21 18:47:48','2025-04-21 18:47:48'),(32,'view education fee','admin','education fee','2025-04-21 18:47:48','2025-04-21 18:47:48'),(33,'manage education fee charge','admin','education fee','2025-04-21 18:47:48','2025-04-21 18:47:48'),(34,'manage institution','admin','education fee','2025-04-21 18:47:48','2025-04-21 18:47:48'),(35,'manage institution category','admin','education fee','2025-04-21 18:47:48','2025-04-21 18:47:48'),(36,'approve education fee','admin','education fee','2025-04-21 18:47:48','2025-04-21 18:47:48'),(37,'reject education fee','admin','education fee','2025-04-21 18:47:48','2025-04-21 18:47:48'),(38,'view donation','admin','donation','2025-04-21 18:47:48','2025-04-21 18:47:48'),(39,'manage charity','admin','donation','2025-04-21 18:47:48','2025-04-21 18:47:48'),(40,'view virtual card','admin','virtual card','2025-04-21 18:47:48','2025-04-21 18:47:48'),(41,'configure virtual card provider','admin','virtual card','2025-04-21 18:47:48','2025-04-21 18:47:48'),(42,'manage virtual card charge','admin','virtual card','2025-04-21 18:47:48','2025-04-21 18:47:48'),(43,'view money requests','admin','request money','2025-04-21 18:47:48','2025-04-21 18:47:48'),(44,'view users','admin','manage user','2025-04-21 18:47:48','2025-04-21 18:47:48'),(45,'send user notification','admin','manage user','2025-04-21 18:47:48','2025-04-21 18:47:48'),(46,'view user notifications','admin','manage user','2025-04-21 18:47:48','2025-04-21 18:47:48'),(47,'update user balance','admin','manage user','2025-04-21 18:47:48','2025-04-21 18:47:48'),(48,'ban user','admin','manage user','2025-04-21 18:47:48','2025-04-21 18:47:48'),(49,'login as user','admin','manage user','2025-04-21 18:47:48','2025-04-21 18:47:48'),(50,'update user','admin','manage user','2025-04-21 18:47:48','2025-04-21 18:47:48'),(51,'view agents','admin','manage agent','2025-04-21 18:47:48','2025-04-21 18:47:48'),(52,'send agent notification','admin','manage agent','2025-04-21 18:47:48','2025-04-21 18:47:48'),(53,'view agent notifications','admin','manage agent','2025-04-21 18:47:48','2025-04-21 18:47:48'),(54,'update agent balance','admin','manage agent','2025-04-21 18:47:48','2025-04-21 18:47:48'),(55,'ban agent','admin','manage agent','2025-04-21 18:47:48','2025-04-21 18:47:48'),(56,'login as agent','admin','manage agent','2025-04-21 18:47:48','2025-04-21 18:47:48'),(57,'update agent','admin','manage agent','2025-04-21 18:47:48','2025-04-21 18:47:48'),(58,'verify agent kyc','admin','manage agent','2025-04-21 18:47:48','2025-04-21 18:47:48'),(59,'view merchants','admin','manage merchant','2025-04-21 18:47:48','2025-04-21 18:47:48'),(60,'send merchant notification','admin','manage merchant','2025-04-21 18:47:48','2025-04-21 18:47:48'),(61,'view merchant notifications','admin','manage merchant','2025-04-21 18:47:48','2025-04-21 18:47:48'),(62,'update merchant balance','admin','manage merchant','2025-04-21 18:47:48','2025-04-21 18:47:48'),(63,'ban merchant','admin','manage merchant','2025-04-21 18:47:48','2025-04-21 18:47:48'),(64,'login as merchant','admin','manage merchant','2025-04-21 18:47:48','2025-04-21 18:47:48'),(65,'update merchant','admin','manage merchant','2025-04-21 18:47:48','2025-04-21 18:47:48'),(66,'verify merchant kyc','admin','manage merchant','2025-04-21 18:47:48','2025-04-21 18:47:48'),(67,'manage banners','admin','promotion','2025-04-21 18:47:48','2025-04-21 18:47:48'),(68,'manage offers','admin','promotion','2025-04-21 18:47:48','2025-04-21 18:47:48'),(69,'view admin','admin','admin','2025-04-21 18:47:48','2025-04-21 18:47:48'),(70,'add admin','admin','admin','2025-04-21 18:47:48','2025-04-21 18:47:48'),(71,'edit admin','admin','admin','2025-04-21 18:47:49','2025-04-21 18:47:49'),(72,'view user add money','admin','user add money','2025-04-21 18:47:49','2025-04-21 18:47:49'),(73,'approve user add money','admin','user add money','2025-04-21 18:47:49','2025-04-21 18:47:49'),(74,'reject user add money','admin','user add money','2025-04-21 18:47:49','2025-04-21 18:47:49'),(75,'view agent add money','admin','agent add money','2025-04-21 18:47:49','2025-04-21 18:47:49'),(76,'approve agent add money','admin','agent add money','2025-04-21 18:47:49','2025-04-21 18:47:49'),(77,'reject agent add money','admin','agent add money','2025-04-21 18:47:49','2025-04-21 18:47:49'),(78,'view agent withdraw','admin','agent withdraw','2025-04-21 18:47:49','2025-04-21 18:47:49'),(79,'approve agent withdraw','admin','agent withdraw','2025-04-21 18:47:49','2025-04-21 18:47:49'),(80,'reject agent withdraw','admin','agent withdraw','2025-04-21 18:47:49','2025-04-21 18:47:49'),(81,'view merchant withdraw','admin','merchant withdraw','2025-04-21 18:47:49','2025-04-21 18:47:49'),(82,'approve merchant withdraw','admin','merchant withdraw','2025-04-21 18:47:49','2025-04-21 18:47:49'),(83,'reject merchant withdraw','admin','merchant withdraw','2025-04-21 18:47:49','2025-04-21 18:47:49'),(84,'view roles','admin','role','2025-04-21 18:47:49','2025-04-21 18:47:49'),(85,'add role','admin','role','2025-04-21 18:47:49','2025-04-21 18:47:49'),(86,'edit role','admin','role','2025-04-21 18:47:49','2025-04-21 18:47:49'),(87,'assign permissions','admin','role','2025-04-21 18:47:49','2025-04-21 18:47:49'),(88,'manage gateways','admin','gateway','2025-04-21 18:47:49','2025-04-21 18:47:49'),(89,'manage withdraw methods','admin','gateway','2025-04-21 18:47:49','2025-04-21 18:47:49'),(90,'update general settings','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(91,'update brand settings','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(92,'system configuration','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(93,'notification settings','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(94,'module settings','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(95,'manage reloadly api','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(96,'country settings','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(97,'manage qr code','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(98,'update maintenance mode','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(99,'security settings','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(100,'seo settings','admin','setting','2025-04-21 18:47:49','2025-04-21 18:47:49'),(101,'view all transactions','admin','report','2025-04-21 18:47:49','2025-04-21 18:47:49'),(102,'view user transactions','admin','report','2025-04-21 18:47:49','2025-04-21 18:47:49'),(103,'view agent transactions','admin','report','2025-04-21 18:47:49','2025-04-21 18:47:49'),(104,'view merchant transactions','admin','report','2025-04-21 18:47:49','2025-04-21 18:47:49'),(105,'view login history','admin','report','2025-04-21 18:47:49','2025-04-21 18:47:49'),(106,'view all notifications','admin','report','2025-04-21 18:47:49','2025-04-21 18:47:49'),(107,'view user tickets','admin','support ticket','2025-04-21 18:47:49','2025-04-21 18:47:49'),(108,'view agent tickets','admin','support ticket','2025-04-21 18:47:49','2025-04-21 18:47:49'),(109,'view merchant tickets','admin','support ticket','2025-04-21 18:47:49','2025-04-21 18:47:49'),(110,'answer tickets','admin','support ticket','2025-04-21 18:47:49','2025-04-21 18:47:49'),(111,'close tickets','admin','support ticket','2025-04-21 18:47:49','2025-04-21 18:47:49'),(112,'manage pages','admin','manage content','2025-04-21 18:47:49','2025-04-21 18:47:49'),(113,'manage sections','admin','manage content','2025-04-21 18:47:49','2025-04-21 18:47:49'),(114,'view dashboard','admin','other','2025-04-21 18:47:49','2025-04-21 18:47:49'),(115,'manage extensions','admin','other','2025-04-21 18:47:49','2025-04-21 18:47:49'),(116,'manage languages','admin','other','2025-04-21 18:47:49','2025-04-21 18:47:49'),(117,'manage subscribers','admin','other','2025-04-21 18:47:49','2025-04-21 18:47:49'),(120,'manage cron job','admin','other','2025-04-29 03:58:32','2025-04-29 03:58:32'),(121,'view application info','admin','other','2025-04-29 04:02:38','2025-04-29 04:02:38'),(122,'manage gift card category','admin','gift card','2025-10-13 07:35:09','2025-10-13 07:35:09'),(123,'manage gift card','admin','gift card','2025-10-13 07:35:09','2025-10-13 07:35:09'),(124,'view gift card purchases','admin','gift card','2025-10-13 07:35:09','2025-10-13 07:35:09'),(125,'view investment','admin','investment','2025-09-23 12:01:52','2025-09-23 12:01:52'),(126,'manage investment plan','admin','investment','2025-09-23 12:01:52','2025-09-23 12:01:52'),(127,'manage investment time','admin','investment','2025-09-23 12:01:52','2025-09-23 12:01:52');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_codes`
--

DROP TABLE IF EXISTS `qr_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qr_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `unique_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_user_login` tinyint NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `for_agent_login` tinyint(1) NOT NULL DEFAULT '1',
  `for_merchant_login` tinyint(1) NOT NULL DEFAULT '1',
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_codes`
--

LOCK TABLES `qr_codes` WRITE;
/*!40000 ALTER TABLE `qr_codes` DISABLE KEYS */;
INSERT INTO `qr_codes` VALUES (8,0,0,0,'m0a4yd92t5mbyxu',1,1,1,0,'2026-04-12 08:49:50','2026-04-12 08:49:50'),(9,0,0,0,'hsjlksdc6ywqm9q',1,1,1,0,'2026-04-12 11:19:49','2026-04-12 11:19:49'),(10,0,0,0,'mqt1aykrclsabfe',1,1,1,0,'2026-04-12 12:31:16','2026-04-12 12:31:16'),(11,1,0,0,'ej5nend7xwaurjy',1,1,1,0,'2026-04-12 12:44:26','2026-04-12 12:44:26');
/*!40000 ALTER TABLE `qr_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(87,2),(88,2),(89,2),(90,2),(91,2),(92,2),(93,2),(94,2),(95,2),(96,2),(97,2),(98,2),(99,2),(100,2),(101,2),(102,2),(103,2),(104,2),(105,2),(106,2),(107,2),(108,2),(109,2),(110,2),(111,2),(112,2),(113,2),(114,2),(115,2),(116,2),(117,2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','admin',1,NULL,NULL),(2,'Admin','admin',1,'2025-04-23 04:48:51','2025-04-23 04:48:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_money`
--

DROP TABLE IF EXISTS `send_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `send_money` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL DEFAULT '0',
  `receiver_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `sender_post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `receiver_post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_money`
--

LOCK TABLES `send_money` WRITE;
/*!40000 ALTER TABLE `send_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `send_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_attachments`
--

DROP TABLE IF EXISTS `support_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `support_message_id` int unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_attachments`
--

LOCK TABLES `support_attachments` WRITE;
/*!40000 ALTER TABLE `support_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_messages`
--

DROP TABLE IF EXISTS `support_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `support_ticket_id` int unsigned NOT NULL DEFAULT '0',
  `admin_id` int unsigned NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_messages`
--

LOCK TABLES `support_messages` WRITE;
/*!40000 ALTER TABLE `support_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_tickets`
--

LOCK TABLES `support_tickets` WRITE;
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topups`
--

DROP TABLE IF EXISTS `topups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `operator_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_number` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topups`
--

LOCK TABLES `topups` WRITE;
/*!40000 ALTER TABLE `topups` DISABLE KEYS */;
/*!40000 ALTER TABLE `topups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_charges`
--

DROP TABLE IF EXISTS `transaction_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_charges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_charge` decimal(28,8) DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `min_limit` decimal(28,8) DEFAULT '0.00000000',
  `max_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `agent_commission_fixed` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `agent_commission_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `merchant_fixed_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `merchant_percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `monthly_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `daily_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `daily_request_accept_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `monthly_request_accept_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `cap` decimal(28,8) DEFAULT '0.00000000',
  `maximum_card_generate` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_charges_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_charges`
--

LOCK TABLES `transaction_charges` WRITE;
/*!40000 ALTER TABLE `transaction_charges` DISABLE KEYS */;
INSERT INTO `transaction_charges` VALUES (1,'Send Money','send_money',1.00000000,1.00,1.00000000,10000.00000000,0.00000000,0.00,0.00000000,0.00,100000.00000000,10000.00000000,-1.00000000,-1.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-18 13:54:33'),(7,'Cash Out','cash_out',1.00000000,1.50,10.00000000,50000.00000000,1.00000000,0.50,0.00000000,0.00,100000.00000000,10000.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-18 13:49:41'),(8,'Cash In','cash_in',0.00000000,0.00,10.00000000,10000.00000000,1.00000000,0.50,0.00000000,0.00,100000.00000000,-1.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-18 13:54:41'),(9,'Payment Charge','payment_charge',1.00000000,1.00,0.00000000,0.00000000,0.00000000,0.00,0.00000000,2.00,0.00000000,0.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-17 14:14:59'),(10,'Mobile Recharge','mobile_recharge',1.00000000,5.00,10.00000000,500.00000000,0.00000000,0.00,0.00000000,0.00,0.00000000,0.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-17 14:54:12'),(12,'Bank Transfer','bank_transfer',0.00000000,5.00,10.00000000,10000.00000000,0.00000000,0.00,0.00000000,0.00,100000000.00000000,-1.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-17 15:32:44'),(14,'Api Charge','api_charge',0.00000000,0.00,0.00000000,0.00000000,0.00000000,0.00,0.00000000,0.00,0.00000000,0.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2024-11-05 05:41:36'),(15,'Microfinance Charge','microfinance_charge',10.00000000,2.00,10.00000000,100000.00000000,0.00000000,0.00,0.00000000,0.00,10000.00000000,-1.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-17 14:48:57'),(16,'Utility Bill Charge','utility_charge',1.00000000,1.50,1.00000000,10000.00000000,0.00000000,0.00,0.00000000,0.00,-1.00000000,-1.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-17 14:17:10'),(17,'Education Fee Charge','education_charge',1.00000000,2.00,10.00000000,10000.00000000,0.00000000,0.00,0.00000000,0.00,-1.00000000,-1.00000000,0.00000000,0.00000000,-1.00000000,0,'2021-06-11 13:02:22','2025-03-17 14:17:29'),(18,NULL,'virtual_card',1.00000000,1.50,5.00000000,100000.00000000,0.00000000,0.00,0.00000000,0.00,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,10,'2025-03-03 02:51:57','2025-03-17 14:21:59');
/*!40000 ALTER TABLE `transaction_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `virtual_card_id` int NOT NULL DEFAULT '0',
  `for_virtual_card_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,0,0,3.00000000,0.00000000,3.00000000,'+','OGCHUZZL9CV9','热热热','balance_add',0,0,'2026-04-12 06:13:49','2026-04-12 06:13:49'),(2,1,0,0,8898876.00000000,0.00000000,8898879.00000000,'+','NWQ3OTM6G6WF','我','balance_add',0,0,'2026-04-12 06:18:48','2026-04-12 06:18:48');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_actions`
--

DROP TABLE IF EXISTS `user_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `otp` int DEFAULT NULL,
  `remark` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `used_at` datetime DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `platform` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Web,2A',
  `sent_via` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_actions`
--

LOCK TABLES `user_actions` WRITE;
/*!40000 ALTER TABLE `user_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_banks`
--

DROP TABLE IF EXISTS `user_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_banks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `bank_id` int unsigned NOT NULL,
  `account_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_banks`
--

LOCK TABLES `user_banks` WRITE;
/*!40000 ALTER TABLE `user_banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_companies`
--

DROP TABLE IF EXISTS `user_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_companies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `company_id` bigint unsigned NOT NULL DEFAULT '0',
  `unique_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_companies`
--

LOCK TABLES `user_companies` WRITE;
/*!40000 ALTER TABLE `user_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `user_ip` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` VALUES (1,1,0,0,'91.80.66.156','','','','','','Handheld Browser','Android','2026-04-11 21:35:49','2026-04-11 21:35:49'),(2,2,0,0,'91.80.66.156','','','','','','Handheld Browser','Android','2026-04-12 18:49:23','2026-04-12 18:49:23');
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `kyc_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kyc_rejection_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: KYC Unverified, 2: KYC pending, 1: KYC verified',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: mobile unverified, 1: mobile verified',
  `en` tinyint(1) NOT NULL DEFAULT '1',
  `sn` tinyint(1) NOT NULL DEFAULT '1',
  `pn` tinyint(1) NOT NULL DEFAULT '1',
  `is_allow_promotional_notify` tinyint(1) NOT NULL DEFAULT '1',
  `profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `ver_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Linda','Su','aiewwe','modalindasu188@gmail.com','1','3802893808',0,8898879.00000000,NULL,'$2y$12$dysNSUAAKDCx/3DH7OCmSOCdROSaVwlOx.feDVuR78U069ikVirpK','United States','US','Prato','Prato','59100','Viaroma',1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,'2026-04-11 21:35:49','2026-04-12 06:22:33'),(2,NULL,NULL,NULL,NULL,'1','1234567890',0,0.00000000,NULL,NULL,'United States','US',NULL,NULL,NULL,NULL,1,NULL,NULL,0,0,0,1,1,1,1,0,'262399','2026-04-13 02:53:40',0,1,NULL,NULL,NULL,NULL,NULL,'2026-04-12 18:49:23','2026-04-12 18:53:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_bills`
--

DROP TABLE IF EXISTS `utility_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_bills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_provider_id` int NOT NULL DEFAULT '0',
  `api_provider_trx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cron_ordering` bigint NOT NULL DEFAULT '0',
  `token` text COLLATE utf8mb4_unicode_ci,
  `rate` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_bills`
--

LOCK TABLES `utility_bills` WRITE;
/*!40000 ALTER TABLE `utility_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `utility_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtual_card_holders`
--

DROP TABLE IF EXISTS `virtual_card_holders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtual_card_holders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `card_holder_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id from provider',
  `user_id` int unsigned NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `document_front` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_back` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtual_card_holders_email_unique` (`email`),
  UNIQUE KEY `virtual_card_holders_phone_number_unique` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtual_card_holders`
--

LOCK TABLES `virtual_card_holders` WRITE;
/*!40000 ALTER TABLE `virtual_card_holders` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtual_card_holders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtual_cards`
--

DROP TABLE IF EXISTS `virtual_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtual_cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `last4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardholder_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `usability_type` tinyint NOT NULL DEFAULT '1' COMMENT '   reuseable = 1;onetime = 2;',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtual_cards`
--

LOCK TABLES `virtual_cards` WRITE;
/*!40000 ALTER TABLE `virtual_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtual_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_methods`
--

DROP TABLE IF EXISTS `withdraw_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT '0.00000000',
  `max_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `fixed_charge` decimal(28,8) DEFAULT '0.00000000',
  `rate` decimal(28,8) DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `merchant_fixed_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `merchant_percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `merchant_min_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `merchant_max_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_methods`
--

LOCK TABLES `withdraw_methods` WRITE;
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_save_accounts`
--

DROP TABLE IF EXISTS `withdraw_save_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_save_accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_id` bigint unsigned NOT NULL DEFAULT '0',
  `merchant_id` bigint unsigned NOT NULL DEFAULT '0',
  `withdraw_method_id` bigint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_save_accounts`
--

LOCK TABLES `withdraw_save_accounts` WRITE;
/*!40000 ALTER TABLE `withdraw_save_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_save_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_id` int unsigned NOT NULL DEFAULT '0',
  `save_account_id` bigint unsigned DEFAULT '0',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `agent_id` int NOT NULL DEFAULT '0',
  `merchant_id` int NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `after_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `withdraw_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawals`
--

LOCK TABLES `withdrawals` WRITE;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ovovovov'
--

--
-- Dumping routines for database 'ovovovov'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14  4:58:08
