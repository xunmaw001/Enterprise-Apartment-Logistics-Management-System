-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmon1z9
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831622821 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-27 07:18:00',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-27 07:18:00',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-27 07:18:00',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-27 07:18:00',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-27 07:18:00',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-27 07:18:00',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616831622820,'2021-03-27 07:53:42',1616831341540,'广东省梅州市梅江区江南街道梅新路84号玉英医院','11','11111111111','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831778608 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-27 07:18:00',1,1,'提问1','回复1',1),(52,'2021-03-27 07:18:00',2,2,'提问2','回复2',2),(53,'2021-03-27 07:18:00',3,3,'提问3','回复3',3),(54,'2021-03-27 07:18:00',4,4,'提问4','回复4',4),(55,'2021-03-27 07:18:00',5,5,'提问5','回复5',5),(56,'2021-03-27 07:18:00',6,6,'提问6','回复6',6),(1616831735334,'2021-03-27 07:55:34',1616831341540,NULL,'第三方士大夫',NULL,0),(1616831778607,'2021-03-27 07:56:18',1616831341540,1,NULL,'第三方地方士大夫士大夫',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmon1z9/upload/1616831462460.png'),(2,'picture2','http://localhost:8080/ssmon1z9/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmon1z9/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgongyuxinxi`
--

DROP TABLE IF EXISTS `discussgongyuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgongyuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831513826 DEFAULT CHARSET=utf8 COMMENT='公寓信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgongyuxinxi`
--

LOCK TABLES `discussgongyuxinxi` WRITE;
/*!40000 ALTER TABLE `discussgongyuxinxi` DISABLE KEYS */;
INSERT INTO `discussgongyuxinxi` VALUES (101,'2021-03-27 07:18:00',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-27 07:18:00',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-27 07:18:00',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-27 07:18:00',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-27 07:18:00',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-27 07:18:00',6,6,'用户名6','评论内容6','回复内容6'),(1616831513825,'2021-03-27 07:51:52',1616831422044,1616831341540,'22','电饭锅电饭锅',NULL);
/*!40000 ALTER TABLE `discussgongyuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyuhuxing`
--

DROP TABLE IF EXISTS `gongyuhuxing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyuhuxing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huxing` varchar(200) DEFAULT NULL COMMENT '户型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831390272 DEFAULT CHARSET=utf8 COMMENT='公寓户型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyuhuxing`
--

LOCK TABLES `gongyuhuxing` WRITE;
/*!40000 ALTER TABLE `gongyuhuxing` DISABLE KEYS */;
INSERT INTO `gongyuhuxing` VALUES (31,'2021-03-27 07:18:00','户型1'),(32,'2021-03-27 07:18:00','户型2'),(33,'2021-03-27 07:18:00','户型3'),(34,'2021-03-27 07:18:00','户型4'),(35,'2021-03-27 07:18:00','户型5'),(36,'2021-03-27 07:18:00','户型6'),(1616831390271,'2021-03-27 07:49:49','地方是');
/*!40000 ALTER TABLE `gongyuhuxing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyuxinxi`
--

DROP TABLE IF EXISTS `gongyuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyubianhao` varchar(200) DEFAULT NULL COMMENT '公寓编号',
  `gongyumingcheng` varchar(200) DEFAULT NULL COMMENT '公寓名称',
  `gongyuhuxing` varchar(200) DEFAULT NULL COMMENT '公寓户型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gongyusheshi` varchar(200) DEFAULT NULL COMMENT '公寓设施',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `gongyuxiangqing` longtext COMMENT '公寓详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyubianhao` (`gongyubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831422045 DEFAULT CHARSET=utf8 COMMENT='公寓信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyuxinxi`
--

LOCK TABLES `gongyuxinxi` WRITE;
/*!40000 ALTER TABLE `gongyuxinxi` DISABLE KEYS */;
INSERT INTO `gongyuxinxi` VALUES (21,'2021-03-27 07:18:00','公寓编号1','公寓名称1','公寓户型1','http://localhost:8080/ssmon1z9/upload/gongyuxinxi_tupian1.jpg','公寓设施1','位置1','面积1','公寓详情1','2021-03-27',1,1,'2021-03-27 15:18:00',1,10000),(22,'2021-03-27 07:18:00','公寓编号2','公寓名称2','公寓户型2','http://localhost:8080/ssmon1z9/upload/gongyuxinxi_tupian2.jpg','公寓设施2','位置2','面积2','公寓详情2','2021-03-27',2,2,'2021-03-27 15:54:59',3,10000),(23,'2021-03-27 07:18:00','公寓编号3','公寓名称3','公寓户型3','http://localhost:8080/ssmon1z9/upload/gongyuxinxi_tupian3.jpg','公寓设施3','位置3','面积3','公寓详情3','2021-03-27',3,3,'2021-03-27 15:18:00',3,10000),(24,'2021-03-27 07:18:00','公寓编号4','公寓名称4','公寓户型4','http://localhost:8080/ssmon1z9/upload/gongyuxinxi_tupian4.jpg','公寓设施4','位置4','面积4','公寓详情4','2021-03-27',4,4,'2021-03-27 15:18:00',4,10000),(25,'2021-03-27 07:18:00','公寓编号5','公寓名称5','公寓户型5','http://localhost:8080/ssmon1z9/upload/gongyuxinxi_tupian5.jpg','公寓设施5','位置5','面积5','公寓详情5','2021-03-27',5,5,'2021-03-27 15:18:00',5,10000),(26,'2021-03-27 07:18:00','公寓编号6','公寓名称6','公寓户型6','http://localhost:8080/ssmon1z9/upload/gongyuxinxi_tupian6.jpg','公寓设施6','位置6','面积6','公寓详情6','2021-03-27',6,6,'2021-03-27 15:18:00',6,10000),(1616831422044,'2021-03-27 07:50:21','1616831328474','的撒发送到','地方是','http://localhost:8080/ssmon1z9/upload/1616831403648.png','是东方闪电','士大夫收到f','4500','<p>收到发送到收到士大夫</p><p><img src=\"http://localhost:8080/ssmon1z9/upload/1616831416866.jpg\"><img src=\"http://localhost:8080/ssmon1z9/upload/1616831419933.png\"></p>','2021-03-27',1,0,'2021-03-27 15:55:21',10,50000);
/*!40000 ALTER TABLE `gongyuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831454185 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-03-27 07:18:00','标题1','简介1','http://localhost:8080/ssmon1z9/upload/news_picture1.jpg','内容1'),(92,'2021-03-27 07:18:00','标题2','简介2','http://localhost:8080/ssmon1z9/upload/news_picture2.jpg','内容2'),(93,'2021-03-27 07:18:00','标题3','简介3','http://localhost:8080/ssmon1z9/upload/news_picture3.jpg','内容3'),(94,'2021-03-27 07:18:00','标题4','简介4','http://localhost:8080/ssmon1z9/upload/news_picture4.jpg','内容4'),(95,'2021-03-27 07:18:00','标题5','简介5','http://localhost:8080/ssmon1z9/upload/news_picture5.jpg','内容5'),(96,'2021-03-27 07:18:00','标题6','简介6','http://localhost:8080/ssmon1z9/upload/news_picture6.jpg','内容6'),(1616831454184,'2021-03-27 07:50:53','士大夫收到','地方士大夫收到sd','http://localhost:8080/ssmon1z9/upload/1616831443051.png','<p> 发送到发送到发送到</p><p><img src=\"http://localhost:8080/ssmon1z9/upload/1616831448901.png\"><img src=\"http://localhost:8080/ssmon1z9/upload/1616831451490.png\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'gongyuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831721741 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1616831721740,'2021-03-27 07:55:21','202132715541186555062','gongyuxinxi',1616831341540,1616831422044,'1616831328474','http://localhost:8080/ssmon1z9/upload/1616831403648.png',1,50000,50000,50000,50000,2,'已完成','广东省梅州市梅江区江南街道梅新路84号玉英医院');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831517215 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616831517214,'2021-03-27 07:51:56',1616831341540,1616831422044,'gongyuxinxi','1616831328474','http://localhost:8080/ssmon1z9/upload/1616831403648.png');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','tjfmms051o1wf07ehasq18r56iqgun6j','2021-03-27 07:37:23','2021-03-27 08:55:55'),(2,1616830665465,'1','yuangong','员工','jysdr7zfmu5xfd26fkuhqjgyfvsxqe5v','2021-03-27 07:37:49','2021-03-27 08:37:49'),(3,1616831341540,'22','yuangong','员工','442to87sgli7zlthex2kqiz1i49crzl1','2021-03-27 07:49:06','2021-03-27 08:56:35');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-27 07:18:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jifen` float DEFAULT '0' COMMENT '积分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831341541 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2021-03-27 07:18:00','员工1','123456','姓名1','男','年龄1','13823888881','440300199101010001','http://localhost:8080/ssmon1z9/upload/yuangong_tupian1.jpg',10000),(12,'2021-03-27 07:18:00','员工2','123456','姓名2','男','年龄2','13823888882','440300199202020002','http://localhost:8080/ssmon1z9/upload/yuangong_tupian2.jpg',10000),(13,'2021-03-27 07:18:00','员工3','123456','姓名3','男','年龄3','13823888883','440300199303030003','http://localhost:8080/ssmon1z9/upload/yuangong_tupian3.jpg',10000),(14,'2021-03-27 07:18:00','员工4','123456','姓名4','男','年龄4','13823888884','440300199404040004','http://localhost:8080/ssmon1z9/upload/yuangong_tupian4.jpg',10000),(15,'2021-03-27 07:18:00','员工5','123456','姓名5','男','年龄5','13823888885','440300199505050005','http://localhost:8080/ssmon1z9/upload/yuangong_tupian5.jpg',10000),(16,'2021-03-27 07:18:00','员工6','123456','姓名6','男','年龄6','13823888886','440300199606060006','http://localhost:8080/ssmon1z9/upload/yuangong_tupian6.jpg',10000),(1616830665465,'2021-03-27 07:37:45','1','1','1',NULL,NULL,NULL,NULL,NULL,0),(1616831341540,'2021-03-27 07:49:01','22','22','发','男','22','13333333333','441421111111111111','http://localhost:8080/ssmon1z9/upload/1616831357518.jpg',100000);
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongjifen`
--

DROP TABLE IF EXISTS `yuangongjifen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongjifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616831436050 DEFAULT CHARSET=utf8 COMMENT='员工积分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongjifen`
--

LOCK TABLES `yuangongjifen` WRITE;
/*!40000 ALTER TABLE `yuangongjifen` DISABLE KEYS */;
INSERT INTO `yuangongjifen` VALUES (41,'2021-03-27 07:18:00','工号1','姓名1','手机1','10000','2021-03-27'),(42,'2021-03-27 07:18:00','工号2','姓名2','手机2','10000','2021-03-27'),(43,'2021-03-27 07:18:00','工号3','姓名3','手机3','10000','2021-03-27'),(44,'2021-03-27 07:18:00','工号4','姓名4','手机4','10000','2021-03-27'),(45,'2021-03-27 07:18:00','工号5','姓名5','手机5','10000','2021-03-27'),(46,'2021-03-27 07:18:00','工号6','姓名6','手机6','10000','2021-03-27'),(1616831436049,'2021-03-27 07:50:35','22','发','13333333333','150000','2021-03-27');
/*!40000 ALTER TABLE `yuangongjifen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-31 12:31:36
