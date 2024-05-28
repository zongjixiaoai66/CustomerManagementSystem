/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t036`;
CREATE DATABASE IF NOT EXISTS `t036` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t036`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot03445/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot03445/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot03445/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `kehuxinxi`;
CREATE TABLE IF NOT EXISTS `kehuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `xingyeleixing` varchar(200) NOT NULL COMMENT '行业类型',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `beizhu` longtext COMMENT '备注',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615380007349 DEFAULT CHARSET=utf8mb3 COMMENT='客户信息';

DELETE FROM `kehuxinxi`;
INSERT INTO `kehuxinxi` (`id`, `addtime`, `kehumingcheng`, `xingyeleixing`, `xingbie`, `nianling`, `zhaopian`, `shouji`, `shenfenzheng`, `beizhu`, `gonghao`, `xingming`) VALUES
	(21, '2021-03-10 12:37:42', '客户名称1', '行业类型1', '男', '年龄1', 'http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian1.jpg', '13823888881', '440300199101010001', '备注1', '工号1', '姓名1'),
	(22, '2021-03-10 12:37:42', '客户名称2', '行业类型2', '男', '年龄2', 'http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian2.jpg', '13823888882', '440300199202020002', '备注2', '工号2', '姓名2'),
	(23, '2021-03-10 12:37:42', '客户名称3', '行业类型3', '男', '年龄3', 'http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian3.jpg', '13823888883', '440300199303030003', '备注3', '工号3', '姓名3'),
	(24, '2021-03-10 12:37:42', '客户名称4', '行业类型4', '男', '年龄4', 'http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian4.jpg', '13823888884', '440300199404040004', '备注4', '工号4', '姓名4'),
	(25, '2021-03-10 12:37:42', '客户名称5', '行业类型5', '男', '年龄5', 'http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian5.jpg', '13823888885', '440300199505050005', '备注5', '工号5', '姓名5'),
	(26, '2021-03-10 12:37:42', '客户名称6', '行业类型6', '男', '年龄6', 'http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian6.jpg', '13823888886', '440300199606060006', '备注6', '工号6', '姓名6'),
	(1615380007348, '2021-03-10 12:40:07', '测试', 'XX行业', '女', '22', 'http://localhost:8080/springboot03445/upload/1615379995482.png', '15214121412', '121111111111111111', '11111111', '001', '测试');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'ajesdit2o8gexgeruamopwqkmr99lyjy', '2021-03-10 12:38:42', '2024-01-09 02:38:54'),
	(2, 1615379969781, '001', 'yuangong', '员工', 'a7a0kurb4alc7myys1wu3hhkr0fmv70v', '2021-03-10 12:39:34', '2021-03-10 13:41:01'),
	(3, 11, '员工1', 'yuangong', '员工', 'o2s47emd3dz5yzwdgpito7a2spxq2hpz', '2024-01-09 01:38:36', '2024-01-09 02:39:44');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-10 12:37:42');

DROP TABLE IF EXISTS `xiangmuleixing`;
CREATE TABLE IF NOT EXISTS `xiangmuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='项目类型';

DELETE FROM `xiangmuleixing`;
INSERT INTO `xiangmuleixing` (`id`, `addtime`, `xiangmuleixing`) VALUES
	(51, '2021-03-10 12:37:42', 'XX类型'),
	(52, '2021-03-10 12:37:42', '项目类型2'),
	(53, '2021-03-10 12:37:42', '项目类型3'),
	(54, '2021-03-10 12:37:42', '项目类型4'),
	(55, '2021-03-10 12:37:42', '项目类型5'),
	(56, '2021-03-10 12:37:42', '项目类型6');

DROP TABLE IF EXISTS `xiangmushouyi`;
CREATE TABLE IF NOT EXISTS `xiangmushouyi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `qiandanjine` varchar(200) DEFAULT NULL COMMENT '签单金额',
  `fenpeileixing` varchar(200) DEFAULT NULL COMMENT '分配类型',
  `fenpeijine` int NOT NULL COMMENT '分配金额',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615380216831 DEFAULT CHARSET=utf8mb3 COMMENT='项目收益';

DELETE FROM `xiangmushouyi`;
INSERT INTO `xiangmushouyi` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `qiandanjine`, `fenpeileixing`, `fenpeijine`, `riqi`) VALUES
	(61, '2021-03-10 12:37:42', '项目名称1', '项目类型1', '签单金额1', '集团', 1, '2021-03-10'),
	(62, '2021-03-10 12:37:42', '项目名称2', '项目类型2', '签单金额2', '集团', 2, '2021-03-10'),
	(63, '2021-03-10 12:37:42', '项目名称3', '项目类型3', '签单金额3', '集团', 3, '2021-03-10'),
	(64, '2021-03-10 12:37:42', '项目名称4', '项目类型4', '签单金额4', '集团', 4, '2021-03-10'),
	(65, '2021-03-10 12:37:42', '项目名称5', '项目类型5', '签单金额5', '集团', 5, '2021-03-10'),
	(66, '2021-03-10 12:37:42', '项目名称6', '项目类型6', '签单金额6', '集团', 6, '2021-03-10'),
	(1615380190610, '2021-03-10 12:43:10', '11111', 'XX类型', '500000', '集团', 250000, '2021-03-01'),
	(1615380200029, '2021-03-10 12:43:19', '11111', 'XX类型', '500000', '售前', 100000, '2021-03-01'),
	(1615380208316, '2021-03-10 12:43:27', '11111', 'XX类型', '500000', '售后', 100000, '2021-03-01'),
	(1615380216830, '2021-03-10 12:43:36', '11111', 'XX类型', '500000', '部门', 50000, '2021-03-01');

DROP TABLE IF EXISTS `xiangmuxinxi`;
CREATE TABLE IF NOT EXISTS `xiangmuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) NOT NULL COMMENT '项目类型',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `qiandanjine` int DEFAULT NULL COMMENT '签单金额',
  `qiandanshuliang` int DEFAULT NULL COMMENT '签单数量',
  `xiangmujindu` longtext COMMENT '项目进度',
  `qiandingriqi` date DEFAULT NULL COMMENT '签订日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `qiandanren` varchar(200) DEFAULT NULL COMMENT '签单人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615380094925 DEFAULT CHARSET=utf8mb3 COMMENT='项目信息';

DELETE FROM `xiangmuxinxi`;
INSERT INTO `xiangmuxinxi` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `kehumingcheng`, `qiandanjine`, `qiandanshuliang`, `xiangmujindu`, `qiandingriqi`, `gonghao`, `qiandanren`) VALUES
	(41, '2021-03-10 12:37:42', '项目名称1', '项目类型1', '客户名称1', 1, 1, '项目进度1', '2021-03-10', '工号1', '签单人1'),
	(42, '2021-03-10 12:37:42', '项目名称2', '项目类型2', '客户名称2', 2, 2, '项目进度2', '2021-03-10', '工号2', '签单人2'),
	(43, '2021-03-10 12:37:42', '项目名称3', '项目类型3', '客户名称3', 3, 3, '项目进度3', '2021-03-10', '工号3', '签单人3'),
	(44, '2021-03-10 12:37:42', '项目名称4', '项目类型4', '客户名称4', 4, 4, '项目进度4', '2021-03-10', '工号4', '签单人4'),
	(45, '2021-03-10 12:37:42', '项目名称5', '项目类型5', '客户名称5', 5, 5, '项目进度5', '2021-03-10', '工号5', '签单人5'),
	(46, '2021-03-10 12:37:42', '项目名称6', '项目类型6', '客户名称6', 6, 6, '项目进度6', '2021-03-10', '工号6', '签单人6'),
	(1615380094924, '2021-03-10 12:41:34', '11111', 'XX类型', '测试', 500000, 1000, '2121已经在开发中', '2021-03-01', '001', '测试');

DROP TABLE IF EXISTS `xingyeleixing`;
CREATE TABLE IF NOT EXISTS `xingyeleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingyeleixing` varchar(200) DEFAULT NULL COMMENT '行业类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='行业类型';

DELETE FROM `xingyeleixing`;
INSERT INTO `xingyeleixing` (`id`, `addtime`, `xingyeleixing`) VALUES
	(31, '2021-03-10 12:37:42', 'XX行业'),
	(32, '2021-03-10 12:37:42', '行业类型2'),
	(33, '2021-03-10 12:37:42', '行业类型3'),
	(34, '2021-03-10 12:37:42', '行业类型4'),
	(35, '2021-03-10 12:37:42', '行业类型5'),
	(36, '2021-03-10 12:37:42', '行业类型6');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615379969782 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `gonghao`, `mima`, `xingming`, `xingbie`, `zhaopian`, `shenfenzheng`, `shouji`, `youxiang`) VALUES
	(11, '2021-03-10 12:37:42', '员工1', '123456', '姓名1', '男', 'http://localhost:8080/springboot03445/upload/yuangong_zhaopian1.jpg', '440300199101010001', '13823888881', '773890001@qq.com'),
	(12, '2021-03-10 12:37:42', '员工2', '123456', '姓名2', '男', 'http://localhost:8080/springboot03445/upload/yuangong_zhaopian2.jpg', '440300199202020002', '13823888882', '773890002@qq.com'),
	(13, '2021-03-10 12:37:42', '员工3', '123456', '姓名3', '男', 'http://localhost:8080/springboot03445/upload/yuangong_zhaopian3.jpg', '440300199303030003', '13823888883', '773890003@qq.com'),
	(14, '2021-03-10 12:37:42', '员工4', '123456', '姓名4', '男', 'http://localhost:8080/springboot03445/upload/yuangong_zhaopian4.jpg', '440300199404040004', '13823888884', '773890004@qq.com'),
	(15, '2021-03-10 12:37:42', '员工5', '123456', '姓名5', '男', 'http://localhost:8080/springboot03445/upload/yuangong_zhaopian5.jpg', '440300199505050005', '13823888885', '773890005@qq.com'),
	(16, '2021-03-10 12:37:42', '员工6', '123456', '姓名6', '男', 'http://localhost:8080/springboot03445/upload/yuangong_zhaopian6.jpg', '440300199606060006', '13823888886', '773890006@qq.com'),
	(1615379969781, '2021-03-10 12:39:29', '001', '001', '测试', '男', 'http://localhost:8080/springboot03445/upload/1615379980447.png', '441211111111111111', '15221111111', '12121@163.com');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
