/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuansiwuzhaoling
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuansiwuzhaoling` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1636451143961.jpg'),(2,'picture2','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1636451151455.jpg'),(3,'picture3','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1636451158274.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-09 17:29:17'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-09 17:29:18'),(67,'shiwuzhaoling_types','物品类型名称',1,'物品类型1',NULL,NULL,'2022-03-09 17:29:18'),(68,'shiwuzhaoling_types','物品类型名称',2,'物品类型2',NULL,NULL,'2022-03-09 17:29:18'),(69,'status_types','物品状态',1,'未找回',NULL,NULL,'2022-03-09 17:29:18'),(70,'status_types','物品状态',2,'已找回',NULL,NULL,'2022-03-09 17:29:18'),(73,'yesno_types','审核',1,'未审核',NULL,NULL,'2022-03-09 17:29:18'),(74,'yesno_types','审核',2,'通过',NULL,NULL,'2022-03-09 17:29:18'),(75,'yesno_types','审核',3,'拒绝',NULL,NULL,'2022-03-09 17:29:18'),(76,'news_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-03-09 17:29:18'),(77,'news_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-03-09 17:29:18'),(78,'xuanchuanshipin_types','视频类型',1,'视频类型1',NULL,NULL,NULL),(79,'xuanchuanshipin_types','视频类型',2,'视频类型2',NULL,NULL,NULL),(80,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-02-16 17:19:59'),(81,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-02-16 17:19:59');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'标题1',1,NULL,'帖子内容1',NULL,1,'2022-02-16 17:26:18',NULL,'2022-02-16 17:26:18'),(2,NULL,1,NULL,'评论内容1',1,2,'2022-02-16 17:26:26',NULL,'2022-02-16 17:26:26'),(10,NULL,NULL,1,'管理回帖',1,2,'2022-02-16 19:43:00',NULL,'2022-02-16 19:43:00');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/xiaoyuansiwuzhaoling/upload/1636451095323.jpg','2022-03-09 17:44:59','<p><span style=\"color: rgb(96, 98, 102);\">公告详情1</span></p>','2022-03-09 17:44:59');

/*Table structure for table `shiwurenling` */

DROP TABLE IF EXISTS `shiwurenling`;

CREATE TABLE `shiwurenling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiwuzhaoling_id` int(11) DEFAULT NULL COMMENT '失物id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '认领用户',
  `yesno_types` int(11) DEFAULT NULL COMMENT '审核',
  `shiwurenling_text` text COMMENT '详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '认领时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='失物认领';

/*Data for the table `shiwurenling` */

insert  into `shiwurenling`(`id`,`shiwuzhaoling_id`,`yonghu_id`,`yesno_types`,`shiwurenling_text`,`insert_time`,`create_time`) values (1,2,1,3,'123','2022-03-09 09:33:48','2022-03-09 09:33:48'),(6,2,1,1,'111','2022-03-09 10:52:25','2022-03-09 10:52:25'),(8,4,1,1,'333','2022-02-16 17:47:29','2022-02-16 17:47:29');

/*Table structure for table `shiwuzhaoling` */

DROP TABLE IF EXISTS `shiwuzhaoling`;

CREATE TABLE `shiwuzhaoling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiwuzhaoling_uuid_number` varchar(200) DEFAULT NULL COMMENT '失物编号',
  `shiwuzhaoling_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `shiwuzhaoling_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `status_types` int(11) DEFAULT NULL COMMENT '物品状态 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shiwuzhaoling_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `shiwuzhaoling_time` timestamp NULL DEFAULT NULL COMMENT '拾遗时间',
  `shiwuzhaoling_dizhi` varchar(200) DEFAULT NULL COMMENT '拾遗地址',
  `shiwuzhaoling_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='失物招领';

/*Data for the table `shiwuzhaoling` */

insert  into `shiwuzhaoling`(`id`,`shiwuzhaoling_uuid_number`,`shiwuzhaoling_name`,`shiwuzhaoling_types`,`status_types`,`yonghu_id`,`shiwuzhaoling_photo`,`shiwuzhaoling_time`,`shiwuzhaoling_dizhi`,`shiwuzhaoling_content`,`create_time`) values (2,'1636450742221','物品1',1,2,1,'http://localhost:8080/xiaoyuansiwuzhaoling/upload/1636450760144.jpg','2022-03-09 00:00:00','拾遗地址1','<p><span style=\"color: rgb(96, 98, 102);\">详情1</span></p>','2022-03-09 17:39:39'),(4,'1645002313680','物品名称2',2,1,3,'http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645002341273.jpg','2022-02-17 00:00:00','拾遗地址12','<p><span style=\"color: rgb(96, 98, 102);\">详情123</span></p>','2022-02-16 17:05:50'),(5,'1645005212515','物品名称3',1,1,1,'http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645005237871.jpg','2022-03-05 00:00:00','拾遗地址3','<p><span style=\"color: rgb(96, 98, 102);\">详情3</span></p>','2022-02-16 17:54:07'),(6,'1645005250379','物品名称4',2,2,3,'http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645005265927.jpg','2022-03-12 00:00:00','拾遗地址4','<p><span style=\"color: rgb(96, 98, 102);\">详情4</span></p>','2022-02-16 17:54:39');

/*Table structure for table `shiwuzhaoling_liuyan` */

DROP TABLE IF EXISTS `shiwuzhaoling_liuyan`;

CREATE TABLE `shiwuzhaoling_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiwuzhaoling_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shiwuzhaoling_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='失物招领留言';

/*Data for the table `shiwuzhaoling_liuyan` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','d2fgkwkd6eq4io3qy212s6te78xkti9z','2022-03-09 17:23:39','2022-02-16 20:52:28'),(2,1,'111','yonghu','用户','ih3j5ki0tjjiwhkx6uyiyiy57d01i9kd','2022-03-09 17:46:09','2022-02-16 20:50:53'),(3,2,'222','yonghu','用户','3g5snwvumqiu8ak72p2b4j5zupwx4tf1','2022-03-09 10:10:16','2022-03-09 11:59:13'),(4,3,'123','yonghu','用户','lrujyt7pw0a0uor8vuklaszaanaoste9','2022-03-09 10:54:01','2022-02-16 20:43:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-03-09 15:59:12');

/*Table structure for table `wupinguashi` */

DROP TABLE IF EXISTS `wupinguashi`;

CREATE TABLE `wupinguashi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wupinguashi_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `shiwuzhaoling_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `status_types` int(11) DEFAULT NULL COMMENT '物品状态 Search111',
  `wupinguashi_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `wupinguashi_time` timestamp NULL DEFAULT NULL COMMENT '丢失时间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupinguashi_dizhi` varchar(200) DEFAULT NULL COMMENT '丢失地址',
  `wupinguashi_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='物品挂失';

/*Data for the table `wupinguashi` */

insert  into `wupinguashi`(`id`,`wupinguashi_name`,`shiwuzhaoling_types`,`status_types`,`wupinguashi_photo`,`wupinguashi_time`,`yonghu_id`,`wupinguashi_dizhi`,`wupinguashi_content`,`create_time`) values (2,'物品名称1',1,1,'http://localhost:8080/xiaoyuansiwuzhaoling/upload/1636450836093.jpg','2021-11-04 13:04:07',1,'丢失地址1','<p><span style=\"color: rgb(96, 98, 102);\">详情1</span></p>','2022-03-09 17:37:49'),(4,'物品名称2',2,2,'http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645005296242.jpg','2022-03-12 00:00:00',3,'丢失地址2','<p><span style=\"color: rgb(96, 98, 102);\">详情2</span></p>','2022-03-09 10:53:55');

/*Table structure for table `wupinguashi_liuyan` */

DROP TABLE IF EXISTS `wupinguashi_liuyan`;

CREATE TABLE `wupinguashi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wupinguashi_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupinguashi_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='物品挂失留言';

/*Data for the table `wupinguashi_liuyan` */

insert  into `wupinguashi_liuyan`(`id`,`wupinguashi_id`,`yonghu_id`,`wupinguashi_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (2,2,1,'留言111111',NULL,'2022-02-16 19:04:35',NULL,'2022-02-16 19:04:35'),(3,4,1,'留言1111','回复','2022-02-16 19:36:34','2022-02-16 19:42:47','2022-03-09 17:37:49');

/*Table structure for table `xuanchuanshipin` */

DROP TABLE IF EXISTS `xuanchuanshipin`;

CREATE TABLE `xuanchuanshipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuanchuanshipin_name` varchar(200) DEFAULT NULL COMMENT '视频标题  Search111',
  `xuanchuanshipin_photo` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `xuanchuanshipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `xuanchuanshipin_types` int(11) DEFAULT NULL COMMENT '视频类型 Search111',
  `xuanchuanshipin_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='宣传视频';

/*Data for the table `xuanchuanshipin` */

insert  into `xuanchuanshipin`(`id`,`xuanchuanshipin_name`,`xuanchuanshipin_photo`,`xuanchuanshipin_video`,`xuanchuanshipin_types`,`xuanchuanshipin_content`,`create_time`) values (4,'视频标题1','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645003018442.png','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645003014562.mp4',2,'<p><span style=\"color: rgb(96, 98, 102);\">详情1</span></p>','2022-02-16 17:12:41'),(5,'视频标题2','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645003026577.png','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645003029577.mp4',2,'<p><span style=\"color: rgb(96, 98, 102);\">详情2</span></p>','2022-02-16 17:13:27'),(6,'视频标题3','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645003045658.png','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1645003041631.mp4',2,'<p><span style=\"color: rgb(96, 98, 102);\">详情3</span></p>','2022-02-16 17:13:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'a1','123456','用户a1',2,'410882200011121114','17788559631','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1636450676144.jpg','2022-03-09 17:37:49'),(3,'a2','123456','用户a2',2,'410882199901126124','13314414414','http://localhost:8080/xiaoyuansiwuzhaoling/upload/1637722494550.jpg','2022-03-09 10:53:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
