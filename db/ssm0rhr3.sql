-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm0rhr3
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2020-11-13 05:46:53',1,'地址1','收货人1','电话1','是否默认地址[是/否]1'),(2,'2020-11-13 05:46:53',2,'地址2','收货人2','电话2','是否默认地址[是/否]2'),(3,'2020-11-13 05:46:53',3,'地址3','收货人3','电话3','是否默认地址[是/否]3');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2020-11-13 05:46:53','商品表名1',1,1,'商品名称1','http://localhost:8080/ssm0rhr3/upload/cart_picture1.jpg',1,1,1),(2,'2020-11-13 05:46:53','商品表名2',2,2,'商品名称2','http://localhost:8080/ssm0rhr3/upload/cart_picture2.jpg',2,2,2),(3,'2020-11-13 05:46:53','商品表名3',3,3,'商品名称3','http://localhost:8080/ssm0rhr3/upload/cart_picture3.jpg',3,3,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2020-11-13 05:46:53',1,1,'提问1','回复1',1),(2,'2020-11-13 05:46:53',2,2,'提问2','回复2',2),(3,'2020-11-13 05:46:53',3,3,'提问3','回复3',3);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm0rhr3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm0rhr3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm0rhr3/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssm0rhr3/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssm0rhr3/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (1,'2020-11-13 05:46:53',1,'评论内容1',1),(2,'2020-11-13 05:46:53',2,'评论内容2',2),(3,'2020-11-13 05:46:53',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kucuntongji`
--

DROP TABLE IF EXISTS `kucuntongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kucuntongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `kucunshuliang` int(11) DEFAULT NULL COMMENT '库存数量',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='库存统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kucuntongji`
--

LOCK TABLES `kucuntongji` WRITE;
/*!40000 ALTER TABLE `kucuntongji` DISABLE KEYS */;
INSERT INTO `kucuntongji` VALUES (1,'2020-11-13 05:46:53','名称1','商品名称1',1,'2020-11-13'),(2,'2020-11-13 05:46:53','名称2','商品名称2',2,'2020-11-13'),(3,'2020-11-13 05:46:53','名称3','商品名称3',3,'2020-11-13');
/*!40000 ALTER TABLE `kucuntongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leixingxinxi`
--

DROP TABLE IF EXISTS `leixingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leixingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shuiguoleixing` varchar(200) NOT NULL COMMENT '水果类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='类型信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leixingxinxi`
--

LOCK TABLES `leixingxinxi` WRITE;
/*!40000 ALTER TABLE `leixingxinxi` DISABLE KEYS */;
INSERT INTO `leixingxinxi` VALUES (1,'2020-11-13 05:46:53','水果类型1'),(2,'2020-11-13 05:46:53','水果类型2'),(3,'2020-11-13 05:46:53','水果类型3');
/*!40000 ALTER TABLE `leixingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2020-11-13 05:46:53','订单id1','商品表名1',1,1,'商品名称1','http://localhost:8080/ssm0rhr3/upload/orders_picture1.jpg',1,1,1,1,1,1,'状态1','地址1'),(2,'2020-11-13 05:46:53','订单id2','商品表名2',2,2,'商品名称2','http://localhost:8080/ssm0rhr3/upload/orders_picture2.jpg',2,2,2,2,2,2,'状态2','地址2'),(3,'2020-11-13 05:46:53','订单id3','商品表名3',3,3,'商品名称3','http://localhost:8080/ssm0rhr3/upload/orders_picture3.jpg',3,3,3,3,3,3,'状态3','地址3');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) NOT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shuiguoleixing` varchar(200) DEFAULT NULL COMMENT '水果类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (1,'2020-11-13 05:46:53','商品编号1','商品名称1','水果类型1','http://localhost:8080/ssm0rhr3/upload/shangpinxinxi_tupian1.jpg','详情1','保质期1',1,1,1),(2,'2020-11-13 05:46:53','商品编号2','商品名称2','水果类型2','http://localhost:8080/ssm0rhr3/upload/shangpinxinxi_tupian2.jpg','详情2','保质期2',2,2,2),(3,'2020-11-13 05:46:53','商品编号3','商品名称3','水果类型3','http://localhost:8080/ssm0rhr3/upload/shangpinxinxi_tupian3.jpg','详情3','保质期3',3,3,3);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2020-11-13 05:46:53',1,1,'表名1','收藏名称1','http://localhost:8080/ssm0rhr3/upload/storeup_picture1.jpg'),(2,'2020-11-13 05:46:53',2,2,'表名2','收藏名称2','http://localhost:8080/ssm0rhr3/upload/storeup_picture2.jpg'),(3,'2020-11-13 05:46:53',3,3,'表名3','收藏名称3','http://localhost:8080/ssm0rhr3/upload/storeup_picture3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-11-13 05:46:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshoutongji`
--

DROP TABLE IF EXISTS `xiaoshoutongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `xiaoshouzongshu` int(11) DEFAULT NULL COMMENT '销售总数',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='销售统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshoutongji`
--

LOCK TABLES `xiaoshoutongji` WRITE;
/*!40000 ALTER TABLE `xiaoshoutongji` DISABLE KEYS */;
INSERT INTO `xiaoshoutongji` VALUES (1,'2020-11-13 05:46:53','名称1','商品名称1',1,'2020-11-13'),(2,'2020-11-13 05:46:53','名称2','商品名称2',2,'2020-11-13'),(3,'2020-11-13 05:46:53','名称3','商品名称3',3,'2020-11-13');
/*!40000 ALTER TABLE `xiaoshoutongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-11-13 05:46:53','用户1','123456','姓名1','男','13823888881','http://localhost:8080/ssm0rhr3/upload/yonghu_zhaopian1.jpg',1),(2,'2020-11-13 05:46:53','用户2','123456','姓名2','男','13823888882','http://localhost:8080/ssm0rhr3/upload/yonghu_zhaopian2.jpg',2),(3,'2020-11-13 05:46:53','用户3','123456','姓名3','男','13823888883','http://localhost:8080/ssm0rhr3/upload/yonghu_zhaopian3.jpg',3);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 15:21:47
