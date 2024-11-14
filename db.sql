/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xinghuowangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinghuowangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xinghuowangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xinghuowangzhan/upload/1620632178582.jpg'),(2,'轮播图2','http://localhost:8080/xinghuowangzhan/upload/1620632185809.jpg'),(3,'轮播图3','http://localhost:8080/xinghuowangzhan/upload/1620639620254.jpg');

/*Table structure for table `dianying` */

DROP TABLE IF EXISTS `dianying`;

CREATE TABLE `dianying` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_name` varchar(200) DEFAULT NULL COMMENT '电影名称  Search111 ',
  `dianying_types` int(11) DEFAULT NULL COMMENT '电影类型  Search111 ',
  `dianying_photo` varchar(200) DEFAULT NULL COMMENT '电影图片',
  `dianying_video` varchar(200) DEFAULT NULL COMMENT '电影视频',
  `dianying_content` text COMMENT '电影详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='电影';

/*Data for the table `dianying` */

insert  into `dianying`(`id`,`dianying_name`,`dianying_types`,`dianying_photo`,`dianying_video`,`dianying_content`,`create_time`) values (1,'电影1',4,'http://localhost:8080/xinghuowangzhan/file/download?fileName=1620632240634.jpg','http://localhost:8080/xinghuowangzhan/file/download?fileName=1620632199498.mp4','电影1的详情\r\n','2021-05-10 15:37:27'),(2,'电影2',5,'http://localhost:8080/xinghuowangzhan/file/download?fileName=1620632259358.jpg','http://localhost:8080/xinghuowangzhan/file/download?fileName=1620632274477.mp4','电影2的详情\r\n','2021-05-10 15:38:15'),(3,'电影3',4,'http://localhost:8080/xinghuowangzhan/file/download?fileName=1620639677407.jpg','http://localhost:8080/xinghuowangzhan/file/download?fileName=1620639664795.mp4','电影3的详情\r\n','2021-05-10 17:41:29');

/*Table structure for table `dianying_collection` */

DROP TABLE IF EXISTS `dianying_collection`;

CREATE TABLE `dianying_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='电影收藏';

/*Data for the table `dianying_collection` */

insert  into `dianying_collection`(`id`,`dianying_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-05-10 17:38:19','2021-05-10 17:38:19'),(2,3,2,'2021-05-10 17:41:54','2021-05-10 17:41:54');

/*Table structure for table `dianying_liuyan` */

DROP TABLE IF EXISTS `dianying_liuyan`;

CREATE TABLE `dianying_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianying_liuyan_content` text COMMENT '评论内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='电影评论';

/*Data for the table `dianying_liuyan` */

insert  into `dianying_liuyan`(`id`,`dianying_id`,`yonghu_id`,`dianying_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,3,2,'挺好看的\r\n','还得\r\n','2021-05-10 17:43:52','2021-05-10 17:43:52');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-10 14:46:14'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-10 14:46:14'),(3,'huiyuan_types','是否会员',1,'不是会员',NULL,'2021-05-10 14:46:14'),(4,'huiyuan_types','是否会员',2,'是会员',NULL,'2021-05-10 14:46:14'),(5,'xiaoshuo_types','小说类型名称',1,'玄幻',NULL,'2021-05-10 14:46:14'),(6,'xiaoshuo_types','小说类型名称',2,'奇幻',NULL,'2021-05-10 14:46:14'),(7,'xiaoshuo_types','小说类型名称',3,'都市',NULL,'2021-05-10 14:46:14'),(8,'xiaoshuo_types','小说类型名称',4,'仙侠',NULL,'2021-05-10 14:46:14'),(9,'xiaoshuo_types','小说类型名称',5,'科幻',NULL,'2021-05-10 14:46:14'),(10,'dianying_types','电影类型名称',1,'动作片',NULL,'2021-05-10 14:46:14'),(11,'dianying_types','电影类型名称',2,'奇幻片',NULL,'2021-05-10 14:46:14'),(12,'dianying_types','电影类型名称',3,'喜剧片',NULL,'2021-05-10 14:46:14'),(13,'dianying_types','电影类型名称',4,'恐怖片',NULL,'2021-05-10 14:46:14'),(14,'dianying_types','电影类型名称',5,'爱情片',NULL,'2021-05-10 14:46:14'),(15,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-05-10 14:46:14'),(16,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-05-10 14:46:14'),(17,'single_seach_types','单页数据类型',1,'网站介绍',NULL,'2021-05-10 14:46:14'),(18,'single_seach_types','单页数据类型',2,'公司介绍',NULL,'2021-05-10 14:46:14'),(19,'news_types','新闻类型名称',3,'新闻类型3',NULL,'2021-05-10 17:47:00');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620640081830 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (102,'2021-03-18 17:31:37','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(103,'2021-03-18 17:31:37','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(104,'2021-03-18 17:31:37','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(105,'2021-03-18 17:31:37','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(1620634909803,'2021-05-10 16:21:49','标题11111','<p>内容11111</p>',0,1,'a1','开放'),(1620635086649,'2021-05-10 16:24:46',NULL,'评论11111',1620634909803,1,'a1',NULL),(1620640070140,'2021-05-10 17:47:49','论调焦炉11`11','<p>交流内容</p>',0,2,'a2','开放'),(1620640081829,'2021-05-10 17:48:01',NULL,'评论123',1620640070140,2,'a2',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'新闻1',2,'http://localhost:8080/xinghuowangzhan/file/download?fileName=1620634872759.jfif','2021-05-10 16:21:16','新闻1\r\n','2021-05-10 16:21:16'),(4,'新闻2',1,'http://localhost:8080/xinghuowangzhan/file/download?fileName=1620634884895.jpg','2021-05-10 16:21:29','新闻2的详情\r\n','2021-05-10 16:21:29');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (1,'公司介绍',2,'公司介绍详情\r\n','2021-05-10 16:20:26'),(2,'网站介绍',1,'起点中文网是国内最大文学阅读与写作平台之一，是目前国内领先的原创文学门户网站。玄幻、魔幻、武侠、军文小说为主！男生看得比较多！\r\n　　起点女生网 是女生频道，以女生爱看的各种小说类型比较多如\r\n　　小白版；《相公是只猪》、《黯乡魂》、《穿越之绝色赌妃》 　　魂泣版；《绾青丝》、《妃天绝盗》、《妖亦非妖》 　　N P版；《八夫临门》、《菊领风骚》 　　古代言情；《妾大不如妻》、《苏小妹的恋爱史》 　　宫斗版：《攻心是妃》 　　历史时空：《绾青丝》、《平凡的清穿日子》 　　玄幻奇幻：《龙龙龙》、《小楼传说》 　　现代版；《金瓶莲》、《涩女日记》 　　耽美版；《风起云涌之双生》《一攻天下》 　　武侠版；《江湖遍地卖装备》、《星际花匠生活》 　　灵异版；《都市妖奇谈》、《驱魔人》\r\n　　小说阅读网 网站按内容分为\"女生版\"、\"男生版\"和\"校园版\"三个分站，主要提供海量言情类女性文学、青春校园及仙侠玄幻类男性文学作品。女生版分类：\r\n　　古代言情、都市言情、穿越时空、浪漫幻想、婚姻职场、完结小说。\r\n　　校园版分类：\r\n　　青春校园、同人小说、素锦年华、黑街极道、贵爵童话。\r\n　　男生版分类：\r\n　　奇幻玄幻、武侠仙侠、网游科幻、历史军事、灵异推理、都市\r\n　　潇湘书院\r\n　　集原创，武侠，言情，古典，当代，科幻，侦探等门类齐全的公益性综合小说阅读网站。用户年龄层基本分布在15-40岁之间，女性用户偏多一些。本人的最爱！小说更新速度快，内容种类丰富很符合女生的各种口味！\r\n','2021-05-10 16:20:38');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','flmufrtdtwbna94dzrygdakytqixigfe','2021-05-10 15:34:59','2021-05-10 18:39:16'),(2,1,'a1','yonghu','用户','pefgt4afmflegevz8p4907yyeljwrd93','2021-05-10 16:03:02','2021-05-10 18:36:21'),(3,2,'a2','yonghu','用户','6xorscodbd5g9meym31yabdo2t0sy886','2021-05-10 17:40:31','2021-05-10 18:49:37'),(4,3,'a3','yonghu','用户','utpvl6ux12chv6bz7ydxull3tpbzbtzt','2021-05-10 17:51:33','2021-05-10 18:51:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xiaoshuo` */

DROP TABLE IF EXISTS `xiaoshuo`;

CREATE TABLE `xiaoshuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshuo_name` varchar(200) DEFAULT NULL COMMENT '小说名称  Search111 ',
  `xiaoshuo_types` int(11) DEFAULT NULL COMMENT '小说类型  Search111 ',
  `xiaoshuo_photo` varchar(200) DEFAULT NULL COMMENT '小说封面',
  `xiaoshuo_file` varchar(200) DEFAULT NULL COMMENT '小说文件',
  `xiaoshuo_content` text COMMENT '小说介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='小说';

/*Data for the table `xiaoshuo` */

insert  into `xiaoshuo`(`id`,`xiaoshuo_name`,`xiaoshuo_types`,`xiaoshuo_photo`,`xiaoshuo_file`,`xiaoshuo_content`,`create_time`) values (1,'科幻世界',5,'http://localhost:8080/xinghuowangzhan/file/download?fileName=1620635125595.jpg','http://localhost:8080/xinghuowangzhan/file/download?fileName=1620635132335.txt','科幻世界的详情\r\n','2021-05-10 16:25:46'),(2,'心',3,'http://localhost:8080/xinghuowangzhan/file/download?fileName=1620635170259.jpg','http://localhost:8080/xinghuowangzhan/file/download?fileName=1620635160810.txt','心这本书主要讲的是.......\r\n','2021-05-10 16:26:25');

/*Table structure for table `xiaoshuo_collection` */

DROP TABLE IF EXISTS `xiaoshuo_collection`;

CREATE TABLE `xiaoshuo_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshuo_id` int(11) DEFAULT NULL COMMENT '小说',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='小说收藏';

/*Data for the table `xiaoshuo_collection` */

insert  into `xiaoshuo_collection`(`id`,`xiaoshuo_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-05-10 17:38:23','2021-05-10 17:38:23'),(2,1,2,'2021-05-10 17:47:28','2021-05-10 17:47:28');

/*Table structure for table `xiaoshuo_liuyan` */

DROP TABLE IF EXISTS `xiaoshuo_liuyan`;

CREATE TABLE `xiaoshuo_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshuo_id` int(11) DEFAULT NULL COMMENT '小说',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiaoshuo_liuyan_content` text COMMENT '评论内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='小说评论';

/*Data for the table `xiaoshuo_liuyan` */

insert  into `xiaoshuo_liuyan`(`id`,`xiaoshuo_id`,`yonghu_id`,`xiaoshuo_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,1,'好看的很',NULL,'2021-05-10 17:38:32','2021-05-10 17:38:32'),(2,2,1,'还可以',NULL,'2021-05-10 17:38:40','2021-05-10 17:38:40');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `huiyuan_types` int(11) DEFAULT NULL COMMENT '是否会员',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yuangong_photo`,`new_money`,`sex_types`,`huiyuan_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/xinghuowangzhan/file/download?fileName=1620632157383.jpg','10.00',1,2,'2021-05-10 15:36:04'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/xinghuowangzhan/file/download?fileName=1620639590923.jpg','50.00',1,2,'2021-05-10 17:40:05'),(3,'a3','123456','张3','17703786903','410224199610232003','http://localhost:8080/xinghuowangzhan/upload/1620640304849.jpg','0.00',1,1,'2021-05-10 17:51:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
