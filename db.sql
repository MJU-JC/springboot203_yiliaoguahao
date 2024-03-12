/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiliaoguahao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiliaoguahao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiliaoguahao`;

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guahao_id` int(11) DEFAULT NULL COMMENT '挂号',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '病例编号 Search111 ',
  `zhusu_content` text COMMENT '患者主诉 ',
  `zhenduan_content` text COMMENT '诊断结果',
  `kaiyao_content` text COMMENT '开药详情',
  `bingli_types` int(11) DEFAULT NULL COMMENT '状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='病例';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`guahao_id`,`yisheng_id`,`bingli_uuid_number`,`zhusu_content`,`zhenduan_content`,`kaiyao_content`,`bingli_types`,`insert_time`,`create_time`) values (1,1,3,'164752339691018','患者主诉1','诊断结果1','开药详情1',3,'2022-03-17 21:23:16','2022-03-17 21:23:16'),(2,2,3,'16475233969109','患者主诉2','诊断结果2','开药详情2',2,'2022-03-17 21:23:16','2022-03-17 21:23:16'),(3,3,3,'164752339691010','患者主诉3','诊断结果3','开药详情3',3,'2022-03-17 21:23:16','2022-03-17 21:23:16'),(4,4,2,'164752339691015','患者主诉4','诊断结果4','开药详情4',2,'2022-03-17 21:23:16','2022-03-17 21:23:16'),(5,5,2,'16475233969100','患者主诉5','诊断结果5','开药详情5',3,'2022-03-17 21:23:16','2022-03-17 21:23:16'),(6,3,1,'1647566446043','<p>wwe</p>','<p>sd</p>','<p>dfg</p>',3,'2022-03-18 09:20:52','2022-03-18 09:20:52'),(7,6,2,'1647567269835','<p>11</p>','<p>22</p>','<p>33</p>',3,'2022-03-18 09:34:40','2022-03-18 09:34:40');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-17 21:22:22'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-17 21:22:22'),(3,'keshi_types','科室',1,'骨科',NULL,NULL,'2022-03-17 21:22:22'),(4,'keshi_types','科室',2,'眼科',NULL,NULL,'2022-03-17 21:22:22'),(5,'keshi_types','科室',3,'内科',NULL,NULL,'2022-03-17 21:22:22'),(6,'zhiwei_types','职位',1,'普通医生',NULL,NULL,'2022-03-17 21:22:22'),(7,'zhiwei_types','职位',2,'主治医师',NULL,NULL,'2022-03-17 21:22:22'),(8,'zhiwei_types','职位',3,'主任',NULL,NULL,'2022-03-17 21:22:22'),(9,'bingli_types','状态',1,'已出单',NULL,NULL,'2022-03-17 21:22:22'),(10,'bingli_types','状态',2,'已划价',NULL,NULL,'2022-03-17 21:22:22'),(11,'bingli_types','状态',3,'已取药',NULL,NULL,'2022-03-17 21:22:22'),(12,'yaopin_types','药品类型',1,'药品类型1',NULL,NULL,'2022-03-17 21:22:22'),(13,'yaopin_types','药品类型',2,'药品类型2',NULL,NULL,'2022-03-17 21:22:22'),(14,'yaopin_types','药品类型',3,'药品类型3',NULL,NULL,'2022-03-17 21:22:22'),(15,'yaopin_types','药品类型',4,'药品类型4',NULL,NULL,'2022-03-17 21:22:22'),(16,'yaopin_types','药品类型',5,'药品类型5',NULL,'','2022-03-18 09:31:27');

/*Table structure for table `guahao` */

DROP TABLE IF EXISTS `guahao`;

CREATE TABLE `guahao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `guahaorenyuan_id` int(11) DEFAULT NULL COMMENT '挂号人员',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `guahao_uuid_number` varchar(200) DEFAULT NULL COMMENT '号 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '挂号时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='挂号';

/*Data for the table `guahao` */

insert  into `guahao`(`id`,`huanzhe_id`,`guahaorenyuan_id`,`yisheng_id`,`guahao_uuid_number`,`insert_time`,`create_time`) values (1,1,2,3,'164752339691711','2022-03-17 21:23:16','2022-03-17 21:23:16'),(2,2,2,1,'164752339691715','2022-03-17 21:23:16','2022-03-17 21:23:16'),(3,3,1,1,'16475233969177','2022-03-17 21:23:16','2022-03-17 21:23:16'),(4,4,3,2,'16475233969177','2022-03-17 21:23:16','2022-03-17 21:23:16'),(5,5,3,3,'16475233969170','2022-03-17 21:23:16','2022-03-17 21:23:16'),(6,4,1,2,'1647566118329','2022-03-18 09:15:25','2022-03-18 09:15:25'),(7,4,1,2,'1647567154198','2022-03-18 09:32:40','2022-03-18 09:32:40');

/*Table structure for table `guahaorenyuan` */

DROP TABLE IF EXISTS `guahaorenyuan`;

CREATE TABLE `guahaorenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `guahaorenyuan_name` varchar(200) DEFAULT NULL COMMENT '挂号人员姓名 Search111 ',
  `guahaorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '挂号人员手机号',
  `guahaorenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '挂号人员身份证号',
  `guahaorenyuan_photo` varchar(200) DEFAULT NULL COMMENT '挂号人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='挂号人员';

/*Data for the table `guahaorenyuan` */

insert  into `guahaorenyuan`(`id`,`username`,`password`,`guahaorenyuan_name`,`guahaorenyuan_phone`,`guahaorenyuan_id_number`,`guahaorenyuan_photo`,`sex_types`,`create_time`) values (1,'a1','123456','挂号人员姓名1','17703786901','410224199610232001','http://localhost:8080/yiliaoguahao/upload/guahaorenyuan1.jpg',1,'2022-03-17 21:23:16'),(2,'a2','123456','挂号人员姓名2','17703786902','410224199610232002','http://localhost:8080/yiliaoguahao/upload/guahaorenyuan2.jpg',2,'2022-03-17 21:23:16'),(3,'a3','123456','挂号人员姓名3','17703786903','410224199610232003','http://localhost:8080/yiliaoguahao/upload/guahaorenyuan3.jpg',1,'2022-03-17 21:23:16');

/*Table structure for table `huajiarenyuan` */

DROP TABLE IF EXISTS `huajiarenyuan`;

CREATE TABLE `huajiarenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huajiarenyuan_name` varchar(200) DEFAULT NULL COMMENT '划价人员姓名 Search111 ',
  `huajiarenyuan_phone` varchar(200) DEFAULT NULL COMMENT '划价人员手机号',
  `huajiarenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '划价人员身份证号',
  `huajiarenyuan_photo` varchar(200) DEFAULT NULL COMMENT '划价人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='划价人员';

/*Data for the table `huajiarenyuan` */

insert  into `huajiarenyuan`(`id`,`username`,`password`,`huajiarenyuan_name`,`huajiarenyuan_phone`,`huajiarenyuan_id_number`,`huajiarenyuan_photo`,`sex_types`,`create_time`) values (1,'a1','123456','划价人员姓名1','17703786901','410224199610232001','http://localhost:8080/yiliaoguahao/upload/huajiarenyuan1.jpg',2,'2022-03-17 21:23:16'),(2,'a2','123456','划价人员姓名2','17703786902','410224199610232002','http://localhost:8080/yiliaoguahao/upload/huajiarenyuan2.jpg',2,'2022-03-17 21:23:16'),(3,'a3','123456','划价人员姓名3','17703786903','410224199610232003','http://localhost:8080/yiliaoguahao/upload/huajiarenyuan3.jpg',1,'2022-03-17 21:23:16');

/*Table structure for table `huanzhe` */

DROP TABLE IF EXISTS `huanzhe`;

CREATE TABLE `huanzhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_name` varchar(200) DEFAULT NULL COMMENT '患者姓名 Search111 ',
  `huanzhe_phone` varchar(200) DEFAULT NULL COMMENT '患者手机号',
  `huanzhe_id_number` varchar(200) DEFAULT NULL COMMENT '患者身份证号',
  `huanzhe_photo` varchar(200) DEFAULT NULL COMMENT '患者头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='患者';

/*Data for the table `huanzhe` */

insert  into `huanzhe`(`id`,`huanzhe_name`,`huanzhe_phone`,`huanzhe_id_number`,`huanzhe_photo`,`sex_types`,`create_time`) values (1,'患者姓名1','17703786901','410224199610232001','http://localhost:8080/yiliaoguahao/upload/yisheng1.jpg',2,'2022-03-17 21:23:16'),(2,'患者姓名2','17703786902','410224199610232002','http://localhost:8080/yiliaoguahao/upload/yisheng2.jpg',1,'2022-03-17 21:23:16'),(3,'患者姓名3','17703786903','410224199610232003','http://localhost:8080/yiliaoguahao/upload/yisheng3.jpg',2,'2022-03-17 21:23:16'),(4,'患者姓名4','17703786904','410224199610232004','http://localhost:8080/yiliaoguahao/upload/huajiarenyuan1.jpg',2,'2022-03-17 21:23:16'),(5,'患者姓名5','17703786905','410224199610232005','http://localhost:8080/yiliaoguahao/upload/huajiarenyuan2.jpg',2,'2022-03-17 21:23:16');

/*Table structure for table `menzhen` */

DROP TABLE IF EXISTS `menzhen`;

CREATE TABLE `menzhen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `menzhen_name` varchar(200) DEFAULT NULL COMMENT '门诊名称 Search111 ',
  `menzhen_address` varchar(200) DEFAULT NULL COMMENT '门诊位置',
  `xingqiji` varchar(200) DEFAULT NULL COMMENT '星期几坐诊 Search111 ',
  `qita_content` text COMMENT '门诊详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='门诊';

/*Data for the table `menzhen` */

insert  into `menzhen`(`id`,`yisheng_id`,`menzhen_name`,`menzhen_address`,`xingqiji`,`qita_content`,`insert_time`,`create_time`) values (1,3,'门诊名称1','门诊位置1','星期一整天','门诊详情1','2022-03-17 21:23:16','2022-03-17 21:23:16'),(2,2,'门诊名称2','门诊位置2','星期二整天','门诊详情2','2022-03-17 21:23:16','2022-03-17 21:23:16'),(3,3,'门诊名称3','门诊位置3','星期三整天','门诊详情3','2022-03-17 21:23:16','2022-03-17 21:23:16'),(4,2,'门诊名称4','门诊位置4','星期四整天','门诊详情4','2022-03-17 21:23:16','2022-03-17 21:23:16'),(5,2,'门诊名称5','门诊位置51111','星期五整天','<p>门诊详情511</p>','2022-03-17 21:23:16','2022-03-17 21:23:16');

/*Table structure for table `tijian` */

DROP TABLE IF EXISTS `tijian`;

CREATE TABLE `tijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `tijian_uuid_number` varchar(200) DEFAULT NULL COMMENT '体检编号 Search111 ',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `zuoyandushu` varchar(200) DEFAULT NULL COMMENT '左眼度数',
  `youyandushu` varchar(200) DEFAULT NULL COMMENT '右眼度数',
  `xinlv` varchar(200) DEFAULT NULL COMMENT '心率',
  `xinyin` varchar(200) DEFAULT NULL COMMENT '心音',
  `feibutingzhen` varchar(200) DEFAULT NULL COMMENT '肺部听诊',
  `ganzangtingzhen` varchar(200) DEFAULT NULL COMMENT '肝脏听诊',
  `xuechanggui_text` text COMMENT '血常规详情 ',
  `niaochanggui_text` text COMMENT '尿常规详情 ',
  `qita_text` text COMMENT '其他详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='体检';

/*Data for the table `tijian` */

insert  into `tijian`(`id`,`yisheng_id`,`huanzhe_id`,`tijian_uuid_number`,`tizhong`,`shengao`,`zuoyandushu`,`youyandushu`,`xinlv`,`xinyin`,`feibutingzhen`,`ganzangtingzhen`,`xuechanggui_text`,`niaochanggui_text`,`qita_text`,`insert_time`,`create_time`) values (1,3,1,'16475233969325','体重1','身高1','左眼度数1','右眼度数1','心率1','心音1','肺部听诊1','肝脏听诊1','血常规详情1','尿常规详情1','其他详情1','2022-03-17 21:23:16','2022-03-17 21:23:16'),(2,3,2,'164752339693219','体重2','身高2','左眼度数2','右眼度数2','心率2','心音2','肺部听诊2','肝脏听诊2','血常规详情2','尿常规详情2','其他详情2','2022-03-17 21:23:16','2022-03-17 21:23:16'),(3,2,3,'164752339693216','体重3','身高3','左眼度数3','右眼度数3','心率3','心音3','肺部听诊3','肝脏听诊3','血常规详情3','尿常规详情3','其他详情3','2022-03-17 21:23:16','2022-03-17 21:23:16'),(4,2,4,'164752339693215','体重4','身高4','左眼度数4','右眼度数4','心率4','心音4','肺部听诊4','肝脏听诊4','血常规详情4','尿常规详情4','其他详情4','2022-03-17 21:23:16','2022-03-17 21:23:16'),(5,3,5,'164752339693316','体重5','身高5','左眼度数5','右眼度数5','心率5','心音5','肺部听诊5','肝脏听诊5','血常规详情5','尿常规详情5','其他详情523','2022-03-17 21:23:16','2022-03-17 21:23:16');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','a798gpf0vo0ibg93tabsrnp8cebod3s2','2022-03-17 21:28:53','2022-03-18 10:37:55'),(2,1,'a1','guahaorenyuan','挂号人员','6lucr7egnb5uilijqyzlpy1fuk7jfx80','2022-03-18 09:12:09','2022-03-18 10:33:03'),(3,1,'a1','yisheng','医生','gb64ngrlc7jv2pheti0f7k96qqpjt7ul','2022-03-18 09:17:12','2022-03-18 10:32:52'),(4,1,'a1','huajiarenyuan','划价人员','498tis50db1q6wt0woe6x0evexlitkxx','2022-03-18 09:22:38','2022-03-18 10:34:55'),(5,2,'a2','yisheng','医生','ykbnkcfbevz7r042bqleeuusq9fro8vk','2022-03-18 09:33:20','2022-03-18 10:33:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号  Search111 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_content` text COMMENT '药品介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='药品';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yaopin_uuid_number`,`yaopin_name`,`yaopin_photo`,`yaopin_types`,`yaopin_content`,`insert_time`,`create_time`) values (1,'164752339693512','药品名称1','http://localhost:8080/yiliaoguahao/upload/yaopin1.jpg',4,'药品介绍1','2022-03-17 21:23:16','2022-03-17 21:23:16'),(2,'16475233969350','药品名称2','http://localhost:8080/yiliaoguahao/upload/yaopin2.jpg',2,'药品介绍2','2022-03-17 21:23:16','2022-03-17 21:23:16'),(3,'164752339693516','药品名称3','http://localhost:8080/yiliaoguahao/upload/yaopin3.jpg',1,'药品介绍3','2022-03-17 21:23:16','2022-03-17 21:23:16'),(4,'164752339693512','药品名称4','http://localhost:8080/yiliaoguahao/upload/yaopin4.jpg',4,'药品介绍4','2022-03-17 21:23:16','2022-03-17 21:23:16'),(5,'164752339693511','药品名称5','http://localhost:8080/yiliaoguahao/upload/yaopin5.jpg',2,'药品介绍5','2022-03-17 21:23:16','2022-03-17 21:23:16');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生联系方式',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `keshi_types` int(11) DEFAULT NULL COMMENT '科室 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `guahaofei` decimal(10,2) DEFAULT NULL COMMENT '挂号费',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`yisheng_phone`,`yisheng_photo`,`sex_types`,`keshi_types`,`zhiwei_types`,`guahaofei`,`create_time`) values (1,'a1','123456','医生姓名1','17703786901','http://localhost:8080/yiliaoguahao/upload/yisheng1.jpg',2,2,3,'761.51','2022-03-17 21:23:16'),(2,'a2','123456','医生姓名2','17703786902','http://localhost:8080/yiliaoguahao/upload/yisheng2.jpg',2,3,1,'956.53','2022-03-17 21:23:16'),(3,'a3','123456','医生姓名3','17703786903','http://localhost:8080/yiliaoguahao/upload/yisheng3.jpg',2,3,2,'30.00','2022-03-17 21:23:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
