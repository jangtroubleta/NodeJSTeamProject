-- MySQL dump 10.17  Distrib 10.3.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: node_project
-- ------------------------------------------------------
-- Server version	10.3.14-MariaDB

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_id` int(11) NOT NULL,
  `a_name` varchar(40) NOT NULL,
  `a_answer` text NOT NULL,
  `a_target_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `a_user_id` (`a_user_id`),
  KEY `a_target_id` (`a_target_id`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`a_user_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`a_target_id`) REFERENCES `questions` (`q_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (2,5,'장현호','참고바람',7,'2019-06-15 04:19:18','2019-06-15 04:19:18'),(3,5,'장현호','아 맞다',7,'2019-06-15 04:23:36','2019-06-15 04:23:36'),(4,4,'김민중','여기가 댓글이에요',3,'2019-06-15 07:19:37','2019-06-15 07:19:37'),(5,4,'김민중','이게 댓글이라구요',3,'2019-06-15 07:19:48','2019-06-15 07:19:48'),(6,4,'김민중','허리 너무아파요',32,'2019-06-15 07:20:18','2019-06-15 07:20:18'),(7,4,'김민중','글글<br>글글<br>글글글글 ',9,'2019-06-15 07:20:31','2019-06-15 07:20:31'),(8,4,'김민중','첫 댓글 ^^ ㅋㅋㅋ',1,'2019-06-15 07:20:43','2019-06-15 07:20:43'),(9,4,'김민중','딱따구리',37,'2019-06-15 07:20:51','2019-06-15 07:20:51'),(10,4,'김민중','걱정은 일본어로 심파이',29,'2019-06-15 07:20:59','2019-06-15 07:20:59'),(11,4,'김민중','노가다',23,'2019-06-15 07:21:07','2019-06-15 07:21:07'),(12,2,'장재일','다이조부?<br>',38,'2019-06-15 07:22:13','2019-06-15 07:22:13'),(13,2,'장재일','ㅠㅠ',33,'2019-06-15 07:22:22','2019-06-15 07:22:22'),(14,2,'장재일','이타이노?',34,'2019-06-15 07:22:28','2019-06-15 07:22:28'),(15,2,'장재일','걱정시나이데쿠다사이<br>',29,'2019-06-15 07:22:43','2019-06-15 07:22:43'),(16,2,'장재일','내공냠냠',40,'2019-06-15 07:50:48','2019-06-15 07:50:48'),(17,2,'장재일','내공냠냠',46,'2019-06-15 07:50:52','2019-06-15 07:50:52'),(18,2,'장재일','같이하자',49,'2019-06-15 07:51:00','2019-06-15 07:51:00'),(19,2,'장재일','편하다',43,'2019-06-15 07:51:06','2019-06-15 07:51:06'),(20,2,'장재일','좋다',42,'2019-06-15 07:51:11','2019-06-15 07:51:11'),(21,2,'장재일','싸다',41,'2019-06-15 07:51:16','2019-06-15 07:51:16'),(22,2,'장재일','조으닫',44,'2019-06-15 07:51:23','2019-06-15 07:51:23'),(23,2,'장재일','ㅍㅇㅌ',45,'2019-06-15 07:51:27','2019-06-15 07:51:27'),(24,2,'장재일','책',47,'2019-06-15 07:51:34','2019-06-15 07:51:34'),(25,2,'장재일','덥다',48,'2019-06-15 07:51:46','2019-06-15 07:51:46'),(26,5,'장현호','재일아<br>일본어 공부안하고 뭐하니<br>히오스 하스스톤 하지말고 일본어 하는게 좋지 않을까?^^',49,'2019-06-15 08:23:44','2019-06-15 08:23:44'),(27,5,'장현호','죄송합니다..ㅠㅠ',51,'2019-06-15 08:24:02','2019-06-15 08:24:02'),(28,5,'장현호','힘내',28,'2019-06-15 08:24:38','2019-06-15 08:24:38'),(29,5,'장현호','댓댓댓',50,'2019-06-15 08:24:51','2019-06-15 08:24:51'),(30,5,'장현호','ㅡㅡ',46,'2019-06-15 08:25:04','2019-06-15 08:25:04');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japans`
--

DROP TABLE IF EXISTS `japans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japans` (
  `j_id` int(11) NOT NULL AUTO_INCREMENT,
  `j_place` varchar(20) NOT NULL,
  `j_explain` varchar(200) NOT NULL,
  `j_img` varchar(200) NOT NULL,
  PRIMARY KEY (`j_id`),
  UNIQUE KEY `j_place` (`j_place`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japans`
--

LOCK TABLES `japans` WRITE;
/*!40000 ALTER TABLE `japans` DISABLE KEYS */;
INSERT INTO `japans` VALUES (1,'오호리 공원','전국에서 손꼽히는 수경 공원인 오호리 공원의 연못은 국가 등록 기념물로, 주위에 산책로, 어린이 놀이동산 등을 배치하여 산책과 조깅, 휴식 장소로서 널리 이용되고 있습니다.','./images/1.jpg'),(2,'우미노나카미치','계절마다 다양한 축제가 마련되어 있고 , 아무런 준비물 없이도 이용할 수 있는 일일캠프장, 450종의 물고기가 있는 수족관인 ‘마린월드’, 모든 객실에서 바다가 보이는 리조트호텔 ‘더 루이간즈’ 등 일대가 도시형 리조트를 이루고 있습니다','./images/2.jpg'),(3,'캐널시티','중앙의 180m 인공 운하를 따라서 다양한 건물이 늘어서 있는 대형 복합시설물. 운하에 있는 선플라자 스테이지에서는 분수 쇼나 라이브 공연 등을 즐길 수 있으며, 전국 각지에서 모인 다양한 브랜드 제품과 라멘 스타디움이 있는 곳입니다. 상점은 21시, 레스토랑은 23시에 영업을 종료하니 참고하시기 바랍니다.','./images/4.jpg'),(4,'아이노시마 섬','고양이 섬으로 유명한 관광명소. 이곳 고양이들은 사람들을 무서워하거나 피하지 않습니다. 고양이를 좋아하는 애묘인들을 위해 추천드립니다','./images/3.jpg'),(5,'아사히 맥주공장','전세계에서 많은 인기를 얻고 있는 일본 대표 맥주 아사히의 맥주공장 견학을 할 수 있습니다. 전임 안내 담당자가 맥주가 생산되는 과정을 안내하며, 영상을 통한 아사히 맥주 공장 해설, 원료 전시, 제조공정 견학, 마지막에는 아사히 슈퍼드라이 시음도 할 수 있습니다.','./images/5.jpg');
/*!40000 ALTER TABLE `japans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(40) NOT NULL,
  `m_num` varchar(10) NOT NULL,
  `m_img` varchar(200) NOT NULL,
  `m_comm` varchar(40) NOT NULL,
  `m_res` varchar(40) NOT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `m_name` (`m_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'이혜진','1801230','./images/1801230.jpg','포기하지 말자','나의 길을 가겠다~'),(2,'장재일','1501253','./images/1501253.jpg','팀원과 서로 돕고 협동해서 공부하는데 많은 도움이 되었다.','열심히 해서 좋은 성과를 거두겠다.'),(3,'조준경','1601271','./images/1601271.jpg','후회없이 살자','한 번 시작했으니 포기하지 않겠습니다'),(4,'김민중','1801044','./images/1801044.jpg','팀 프로젝트는 협동심','다음 프로젝트는 웹페이지와 안드로이드를 연동 시킬 것이다'),(5,'장현호','1801249','./images/1801249.jpg','지피지기','열씸히 해서 좋은 결과를 만들자!');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `q_user_id` int(11) NOT NULL,
  `q_name` varchar(40) NOT NULL,
  `q_title` varchar(40) NOT NULL,
  `q_question` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`q_id`),
  KEY `q_user_id` (`q_user_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`q_user_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,5,'장현호','여기는 말이지','질의응답 게시판입니다.<br>궁금한 사항 있으면 글남겨주세요~','2019-06-14 11:55:41','2019-06-14 11:55:41'),(2,5,'장현호','글 작성 중입니다','내용은 여기에 입력하면<br>됩니다.<br><br><br>아아아아가가','2019-06-15 03:53:32','2019-06-15 03:53:32'),(3,5,'장현호','가나다라','마바사<br>앙아아아','2019-06-15 03:58:35','2019-06-15 03:58:35'),(4,5,'장현호','작성중','나앰ㄴㅁㄹ멂ㄶ<br>ㄴ어ㅑㅇㅁㄴ헌<br>ㅁㄴ어햐ㅐㅁㄴ험<br>ㄴㅇ험내ㅑㅎㅁ','2019-06-15 04:01:11','2019-06-15 04:01:11'),(5,5,'장현호','ㅁㄹㅇㄴㄻ','ㅁㅎㅁㄶㅎㅁㄹㄴㄹㄴㅁ','2019-06-15 04:05:56','2019-06-15 04:05:56'),(7,5,'장현호','일본어 듣기 스크립트','ホテルのロビーで男の人が話しています。おれから何をする予定ですか。<br>男：こちらが、ホテルのお食事のチケットです。夕食は7時、朝食は6時半からです。<br>時間になりましたら、直接、右手奥のレストランのほうまでお越しください。<br>これから、みなさん一緒に、美術館見学に参りますが、その後、夕食までは、<br>お買い物をされたり、ホテルに戻ってお部屋でくつろがれたり、ご自由にお過ごしください。<br>なお、たいてのお店は、6時には閉まってしまいますので、お買い物をされる方は、お早めに行かれたほうがいいかと思います。','2019-06-15 04:08:53','2019-06-15 04:08:53'),(8,5,'장현호','글만들기','글글글<br><br>글글글<br><br>글글글','2019-06-15 04:51:21','2019-06-15 04:51:21'),(9,5,'장현호','글만들기','글글글<br><br>글글글<br><br>글글글','2019-06-15 04:51:27','2019-06-15 04:51:27'),(10,5,'장현호','글 수정중','글글글<br><br>글글글<br><br>글글글','2019-06-15 04:51:30','2019-06-15 04:55:59'),(14,5,'장현호','글만들기','글글글<br><br>글글글<br><br>글글글<br><br>아아아아악<br>djskdhalfasf','2019-06-15 04:51:54','2019-06-15 07:47:34'),(20,5,'장현호','글만들기 메롱','글글글<br><br>글글글<br><br>글글글','2019-06-15 04:52:21','2019-06-15 07:31:33'),(23,5,'장현호','목록을위한 글 노가다','글노가다 뛰는중','2019-06-15 05:56:01','2019-06-15 05:56:01'),(24,4,'김민중','마지막','마지막<br>마지막','2019-06-15 07:17:00','2019-06-15 07:17:00'),(25,4,'김민중','프로젝트','프로젝트','2019-06-15 07:17:18','2019-06-15 07:17:18'),(26,4,'김민중','캡스톤','캡스톤','2019-06-15 07:17:37','2019-06-15 07:17:37'),(27,4,'김민중','어떻게','어떻게','2019-06-15 07:17:45','2019-06-15 07:17:45'),(28,4,'김민중','완성할지','완성할지','2019-06-15 07:17:52','2019-06-15 07:17:52'),(29,4,'김민중','걱정','걱정','2019-06-15 07:17:58','2019-06-15 07:17:58'),(30,4,'김민중','된다 ','된다<br><br><br>된다고','2019-06-15 07:18:06','2019-06-15 07:18:06'),(31,4,'김민중','글도 ','글도','2019-06-15 07:18:25','2019-06-15 07:18:25'),(32,4,'김민중','많이서야','많이서야<br><br><br><br>sldk30924sdjlㅇㄹㄴㅇㅁ','2019-06-15 07:18:37','2019-06-15 07:18:37'),(33,4,'김민중','허리너무','허리너무','2019-06-15 07:18:46','2019-06-15 07:18:46'),(34,4,'김민중','아프다','아프다','2019-06-15 07:18:52','2019-06-15 07:18:52'),(35,4,'김민중','의자','의자','2019-06-15 07:18:57','2019-06-15 07:18:57'),(36,4,'김민중','너무','너무','2019-06-15 07:19:01','2019-06-15 07:19:01'),(37,4,'김민중','딱딱','딱닥','2019-06-15 07:19:08','2019-06-15 07:19:08'),(38,4,'김민중','하다','하다','2019-06-15 07:19:13','2019-06-15 07:19:13'),(39,2,'장재일','물은','하루e리터ㄷ222','2019-06-15 07:22:59','2019-06-15 07:23:43'),(40,2,'장재일','mysql','좋네<br>','2019-06-15 07:48:47','2019-06-15 07:48:47'),(41,2,'장재일','미니소','마우스','2019-06-15 07:49:01','2019-06-15 07:49:01'),(42,2,'장재일','삼성','노트북','2019-06-15 07:49:10','2019-06-15 07:49:10'),(43,2,'장재일','삼성','마우스','2019-06-15 07:49:22','2019-06-15 07:49:22'),(44,2,'장재일','갤럭시ㅣㅣㅣ','s9','2019-06-15 07:49:30','2019-06-15 07:49:30'),(45,2,'장재일','7조','ㅍㅇㅌ','2019-06-15 07:49:45','2019-06-15 07:49:45'),(46,2,'장재일','일본어뱅크','독해1','2019-06-15 07:50:02','2019-06-15 07:50:02'),(47,2,'장재일','동양','북스<br>','2019-06-15 07:50:09','2019-06-15 07:50:09'),(48,2,'장재일','검은','사막','2019-06-15 07:50:19','2019-06-15 07:50:19'),(49,2,'장재일','히오스','하고싶다<br>','2019-06-15 07:50:25','2019-06-15 07:50:25'),(50,1,'이혜진','이혜진 글','글글글','2019-06-15 07:53:29','2019-06-15 07:53:29'),(51,1,'이혜진','담배냄새나네','난다','2019-06-15 07:53:50','2019-06-15 07:53:50'),(52,1,'이혜진','노드 화이팅','화이팅','2019-06-15 07:54:01','2019-06-15 07:54:01'),(53,1,'이혜진','완성~','완성','2019-06-15 07:55:18','2019-06-15 07:55:18');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_userId` varchar(40) NOT NULL,
  `u_name` varchar(40) NOT NULL,
  `u_password` varchar(100) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_userId` (`u_userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'iiiii','이혜진','$2b$12$6naHvxHNxiMHOrmHc7z9TO4xrDDKQei7EDvlvHFlCX52.215y7j5y','2019-06-14 10:03:23','2019-06-14 10:03:23',NULL),(2,'scope15','장재일','$2b$12$8vugApwgF61PwWvUJstfie51fUcBNO2wCYh8mMlCH1n5OHZ/CWH3O','2019-06-14 10:04:26','2019-06-14 10:04:26',NULL),(3,'scope','조준경','$2b$12$fNYi6iXIqIbPoAEIn1o4JuwSro9pdNAmEhO7oEqOsHIPfNrbrt5nq','2019-06-14 10:04:58','2019-06-14 10:04:58',NULL),(4,'alswnd0929','김민중','$2b$12$nG1w9LW29i9gNQLAdw7bs.1QJuVR0KtMVoUebrTwvgYlNBqZssN6e','2019-06-14 10:05:41','2019-06-14 10:05:41',NULL),(5,'jhh217','장현호','$2b$12$wtiHbPbPOL6fF/liGhCv4OPVIcE9XWE60UEXqs90PCjgJ96btoCpu','2019-06-14 10:06:00','2019-06-14 10:06:00',NULL);
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

-- Dump completed on 2019-06-15 17:30:06
