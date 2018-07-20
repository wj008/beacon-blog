/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : wj008

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-07-20 08:02:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sl_article
-- ----------------------------
DROP TABLE IF EXISTS `sl_article`;
CREATE TABLE `sl_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '文章标题',
  `columnCategory` json DEFAULT NULL COMMENT '栏目类别',
  `columnId` int(11) DEFAULT NULL COMMENT '栏目类别',
  `categoryId` int(11) DEFAULT NULL COMMENT '栏目类别',
  `cover` varchar(100) DEFAULT NULL COMMENT '封面图片',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `source` varchar(100) DEFAULT NULL COMMENT '来源',
  `clicks` int(11) DEFAULT NULL COMMENT '点击数',
  `content` text COMMENT '文章内容',
  `addtime` datetime DEFAULT NULL COMMENT '创建时间',
  `tags` json DEFAULT NULL COMMENT '选择标签',
  `isTop` tinyint(1) DEFAULT NULL COMMENT '是否置顶',
  `allow` tinyint(1) DEFAULT NULL COMMENT '是否审核',
  `isComment` tinyint(1) DEFAULT NULL COMMENT '是否开放评论',
  `abstract` text COMMENT '摘要',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_article
-- ----------------------------
INSERT INTO `sl_article` VALUES ('1', '测试文章1', null, '1', '1', '/upfiles/images/15319604792679.jpg', 'wj008', '叶子的博客', '30', '<div class=\"js-content\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px;\"></p></div>什么是教养?恐怕有很多种解释。教养、修养有什么不同?我认为没有什么区别。儒家学说修身、齐家、平天下。《礼记·大学》:“古之欲明明德于天下者，先治其国;欲治其国者，先齐其家;欲齐其家者，先修其身;欲修其身者，先正其心;欲正其心者，先诚其意;欲诚其意者，先致其知，致知在格物。物格而后知至，知至而后意诚，意诚而后心正，心正而后身修，身修而后家齐，家齐而后国治，国治而后天下平。”什么是教养?恐怕有很多种解释。教养、修养有什么不同?我认为没有什么区别。儒家学说修身、齐家、平天下。《礼记·大学》:“古之欲明明德于天下者，先治其国;欲治其国者，先齐其家;欲齐其家者，先修其身;欲修其身者，<br /><br />先正其心;欲正其心者，先诚其意;欲诚其意者，先致其知，致知在格物。物格而后知至，知至而后意诚，意诚而后心正，心正而后身修，身修而后家齐，家齐而后国治，国治而后天下平。”什么是教养?恐怕有很多种解释。教养、修养有什么不同?我认为没有什么区别。儒家学说修身、齐家、平天下。《礼记·大学》:“古之欲明明德于天下者，先治其国;欲治其国者，先齐其家;欲齐其家者，先修其身;欲修其身者，先正其心;欲正其心者，先诚其意;欲诚其意者，先致其知，致知在格物。物格而后知至，知至而后意诚，意诚而后心正，心正而后身修，身修而后家齐，家齐而后国治，国治而后天下平。”什么是教养?恐怕有很多种解释。教养、修养有什么不同?我认为没有什么区别。儒家学说修身、齐家、平天下。《礼记·大学》:“古之欲明明德于天下者，先治其国;欲治其国者，先齐其家;欲齐其家者，先修其身;欲修其身者，先正其心;欲正其心者，先诚其意;欲诚其意者，先致其知，致知在格物。物格而后知至，知至而后意诚，意诚而后心正，心正而后身修，身修而后家齐，家齐而后国治，国治而后天下平。”<br /><br />什么是教养?恐怕有很多种解释。教养、修养有什么不同?我认为没有什么区别。儒家学说修身、齐家、平天下。《礼记·大学》:“古之欲明明德于天下者，先治其国;欲治其国者，先齐其家;欲齐其家者，先修其身;欲修其身者，先正其心;欲正其心者，先诚其意;欲诚其意者，先致其知，致知在格物。物格而后知至，知至而后意诚，意诚而后心正，心正而后身修，身修而后家齐，家齐而后国治，国治而后天下平。”<br /><p class=\"b-copyright\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; width: 750px; line-height: 30px; color: rgb(238, 84, 42); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color:#337ab7;\"><span style=\"box-sizing: border-box; transition-duration: 0.5s; transition-delay: initial; transition-property: all;\"></span></span></p>', '2018-07-19 08:34:50', '[2, 1]', '1', '1', '0', '什么是教养?恐怕有很多种解释。教养、修养有什么不同?我认为没有什么区别。儒家学说修身、齐家、平天下。《礼记·大学》:“古之欲明明德于天下者，先治其国;欲治其国者，先齐其家;欲齐其家者，先修其身;欲修其身者，先正其心;欲正其心者，先诚其意;欲诚其意者，先致其知，致知在格物。物格而后知至，知至而后意诚，意诚而后心正，心正而后身修，身修而后家齐，家齐而后国治，国治而后天下平。”', '1');
INSERT INTO `sl_article` VALUES ('2', 'Nginx的connect() failed 错误解决', null, '1', '1', '/upfiles/images/15320408007126.png', 'wj008', '叶子的博客', '20', '<p style=\"margin: 5px 0px; padding: 0px; line-height: 23.4px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\">最近网站打开总是异常，网站会偶尔死掉，我用的是阿里云的一台低配linux服务器，第一想法就是登陆进去查看日志</p><p style=\"margin: 5px 0px; padding: 0px; line-height: 23.4px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\"><img src=\"https://www.sunnyos.com/upfiles/images/201711/0315096809099689.png\" title=\"0315096809099689.png\" alt=\"image.png\" style=\"border: 1px solid rgb(221, 221, 221); max-width: 650px; margin: 5px auto; padding: 1px; background: rgb(238, 238, 238);\" /></p><div class=\"snippet-container\" style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\"><div class=\"sh_zellner snippet-wrap\" style=\"margin: 0px; padding: 0px; background: none; border: 0px none; position: relative;\"><pre class=\"brush:bash;toolbar:false sh_css snippet-formatted sh_sourceCode\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 1em; line-height: 1.8em; overflow: auto; position: relative; border-radius: 15px; box-shadow: rgb(0, 0, 0) 2px 2px 5px;\"><ol class=\"snippet-num\" style=\"margin: 1em 0px 1em 1em; padding: 0px 0px 0px 3em;\"><li style=\"margin: 0px 0px 0px 20px; padding: 0px 0px 0px 1.5em; list-style: decimal-leading-zero outside none;\"><span class=\"sh_symbol\">[</span>error<span class=\"sh_symbol\">]</span>&nbsp;7120<span class=\"sh_selector\" style=\"color: rgb(34, 95, 45);\">#0</span><span class=\"sh_symbol\">:</span>&nbsp;<span class=\"sh_symbol\">*</span>7779&nbsp;connect<span class=\"sh_symbol\">()</span>&nbsp;failed&nbsp;<span class=\"sh_symbol\">(</span>111<span class=\"sh_symbol\">:</span>&nbsp;Connection&nbsp;refused<span class=\"sh_symbol\">)</span>&nbsp;while&nbsp;connecting&nbsp;to&nbsp;upstream<span class=\"sh_symbol\">,</span>&nbsp;client<span class=\"sh_symbol\">:</span>&nbsp;xxx<span class=\"sh_symbol\">,</span>&nbsp;server<span class=\"sh_symbol\">:</span>&nbsp;xxx<span class=\"sh_symbol\">,</span>&nbsp;request<span class=\"sh_symbol\">:</span>&nbsp;&quot;GET&nbsp;xxx&nbsp;HTTP<span class=\"sh_symbol\">/</span>1<span class=\"sh_selector\" style=\"color: rgb(34, 95, 45);\">.1</span>&quot;<span class=\"sh_symbol\">,</span>&nbsp;upstream<span class=\"sh_symbol\">:</span>&nbsp;&quot;fastcgi<span class=\"sh_symbol\">:</span><span class=\"sh_comment\" style=\"color: red;\">//127.0.0.1:9000&quot;,&nbsp;host:&nbsp;&quot;xxx&quot;,&nbsp;referrer:&nbsp;&quot;xxx&quot;</span></li><li style=\"margin: 0px 0px 0px 20px; padding: 0px 0px 0px 1.5em; list-style: decimal-leading-zero outside none;\"><span class=\"sh_symbol\">[</span>error<span class=\"sh_symbol\">]</span>&nbsp;7120<span class=\"sh_selector\" style=\"color: rgb(34, 95, 45);\">#0</span><span class=\"sh_symbol\">:</span>&nbsp;<span class=\"sh_symbol\">*</span>7982&nbsp;recv<span class=\"sh_symbol\">()</span>&nbsp;failed&nbsp;<span class=\"sh_symbol\">(</span>104<span class=\"sh_symbol\">:</span>&nbsp;Connection&nbsp;reset&nbsp;by&nbsp;peer<span class=\"sh_symbol\">)</span>&nbsp;while&nbsp;reading&nbsp;response&nbsp;header&nbsp;from&nbsp;upstream<span class=\"sh_symbol\">,</span>&nbsp;client<span class=\"sh_symbol\">:</span>&nbsp;xxx<span class=\"sh_symbol\">,</span>&nbsp;server<span class=\"sh_symbol\">:</span>&nbsp;xxx<span class=\"sh_symbol\">,</span>&nbsp;request<span class=\"sh_symbol\">:</span>&nbsp;&quot;GET&nbsp;xxx&nbsp;HTTP<span class=\"sh_symbol\">/</span>1<span class=\"sh_selector\" style=\"color: rgb(34, 95, 45);\">.1</span>&quot;<span class=\"sh_symbol\">,</span>&nbsp;upstream<span class=\"sh_symbol\">:</span>&nbsp;&quot;fastcgi<span class=\"sh_symbol\">:</span><span class=\"sh_comment\" style=\"color: red;\">//127.0.0.1:9000&quot;,&nbsp;host:&nbsp;&quot;xxx&quot;</span></li><li style=\"margin: 0px 0px 0px 20px; padding: 0px 0px 0px 1.5em; list-style: decimal-leading-zero outside none;\"><span class=\"sh_symbol\">[</span>error<span class=\"sh_symbol\">]</span>&nbsp;7120<span class=\"sh_selector\" style=\"color: rgb(34, 95, 45);\">#0</span><span class=\"sh_symbol\">:</span>&nbsp;<span class=\"sh_symbol\">*</span>7847&nbsp;connect<span class=\"sh_symbol\">()</span>&nbsp;failed&nbsp;<span class=\"sh_symbol\">(</span>110<span class=\"sh_symbol\">:</span>&nbsp;Connection&nbsp;timed&nbsp;out<span class=\"sh_symbol\">)</span>&nbsp;while&nbsp;connecting&nbsp;to&nbsp;upstream<span class=\"sh_symbol\">,</span>&nbsp;client<span class=\"sh_symbol\">:</span>&nbsp;xxx<span class=\"sh_symbol\">,</span>&nbsp;server<span class=\"sh_symbol\">:</span>&nbsp;xxx<span class=\"sh_symbol\">,</span>&nbsp;request<span class=\"sh_symbol\">:</span>&nbsp;&quot;GET&nbsp;xxx&nbsp;HTTP<span class=\"sh_symbol\">/</span>1<span class=\"sh_selector\" style=\"color: rgb(34, 95, 45);\">.1</span>&quot;<span class=\"sh_symbol\">,</span>&nbsp;upstream<span class=\"sh_symbol\">:</span>&nbsp;&quot;fastcgi<span class=\"sh_symbol\">:</span><span class=\"sh_comment\" style=\"color: red;\">//127.0.0.1:9000&quot;,&nbsp;host:&nbsp;&quot;xxx&quot;</span></li></ol></pre></div></div><p style=\"margin: 5px 0px; padding: 0px; line-height: 23.4px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\">看到这样的日志马上就联想到了是fastcgi出了问题，这应该是在连接到php那边的时候出了问题所导致的，所以我们要去排除问题就得先从php-fpm下手因为采用的方法所nginx代理php-fpm的9000端口，既然知道原因就好办了。<br /></p><p style=\"margin: 5px 0px; padding: 0px; line-height: 23.4px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\">第一步：查看php-fpm是否启动，可以通过以下办法排除</p><div class=\"snippet-container\" style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\"><div class=\"sh_zellner snippet-wrap\" style=\"margin: 0px; padding: 0px; background: none; border: 0px none; position: relative;\"><pre class=\"brush:bash;toolbar:false sh_css snippet-formatted sh_sourceCode\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 1em; line-height: 1.8em; overflow: auto; position: relative; border-radius: 15px; box-shadow: rgb(0, 0, 0) 2px 2px 5px;\"><ol class=\"snippet-num\" style=\"margin: 1em 0px 1em 1em; padding: 0px 0px 0px 3em;\"><li style=\"margin: 0px 0px 0px 20px; padding: 0px 0px 0px 1.5em; list-style: decimal-leading-zero outside none;\">ps&nbsp;<span class=\"sh_symbol\">-</span>aux&nbsp;<span class=\"sh_symbol\">|</span>&nbsp;grep&nbsp;php<span class=\"sh_symbol\">-</span>fpm&nbsp;这条命令查看是否有php<span class=\"sh_symbol\">-</span>fpm的进程在运行</li></ol></pre></div></div><p style=\"margin: 5px 0px; padding: 0px; line-height: 23.4px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\">刚刚我还提到了一个点就是9000端口，那么我也可以通过查看网络端口确定是否在运行<br /></p><div class=\"snippet-container\" style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\"><div class=\"sh_zellner snippet-wrap\" style=\"margin: 0px; padding: 0px; background: none; border: 0px none; position: relative;\"><pre class=\"brush:bash;toolbar:false sh_css snippet-formatted sh_sourceCode\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 1em; line-height: 1.8em; overflow: auto; position: relative; border-radius: 15px; box-shadow: rgb(0, 0, 0) 2px 2px 5px;\"><ol class=\"snippet-num\" style=\"margin: 1em 0px 1em 1em; padding: 0px 0px 0px 3em;\"><li style=\"margin: 0px 0px 0px 20px; padding: 0px 0px 0px 1.5em; list-style: decimal-leading-zero outside none;\">netstat&nbsp;<span class=\"sh_symbol\">-</span>tanlp&nbsp;<span class=\"sh_symbol\">|</span>&nbsp;grep&nbsp;9000</li></ol></pre></div></div><p style=\"margin: 5px 0px; padding: 0px; line-height: 23.4px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\">以上方法可以帮助我们排除php-fpm是否处于正常运行状态<br /></p><p style=\"margin: 5px 0px; padding: 0px; line-height: 23.4px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\">第二步：修改php-fpm.conf配置文件，因为出现上述问题是因为php-fpm队列满了的原因导致的，因此我们需要修改一个参数</p><div class=\"snippet-container\" style=\"margin: 0px; padding: 0px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\"><div class=\"sh_zellner snippet-wrap\" style=\"margin: 0px; padding: 0px; background: none; border: 0px none; position: relative;\"><pre class=\"brush:bash;toolbar:false sh_css snippet-formatted sh_sourceCode\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 1em; line-height: 1.8em; overflow: auto; position: relative; border-radius: 15px; box-shadow: rgb(0, 0, 0) 2px 2px 5px;\"><ol class=\"snippet-num\" style=\"margin: 1em 0px 1em 1em; padding: 0px 0px 0px 3em;\"><li style=\"margin: 0px 0px 0px 20px; padding: 0px 0px 0px 1.5em; list-style: decimal-leading-zero outside none;\">pm<span class=\"sh_selector\" style=\"color: rgb(34, 95, 45);\">.max_children</span>&nbsp;这个值修改稍微大一点，修改多少取决自己实际情况和机器配置</li></ol></pre></div></div><p style=\"margin: 5px 0px; padding: 0px; line-height: 23.4px; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, Arial, &quot;Lucida Grande&quot;, Tahoma, sans-serif; font-size: 13px;\">第三步：重启php-fpm然后继续观察nginx的错误日志，等待网站运行一段时间看看还有没有这个错误，如果没有问题解决。</p>', '2018-07-20 06:54:20', '[]', '0', '1', '0', '最近网站打开总是异常，网站会偶尔死掉，我用的是阿里云的一台低配linux服务器，第一想法就是登陆进去查看日志看到这样的日志马上就联想到了是fastcgi出了问题，这应该是在连接到php那边的时候出了问题所导致的，所以我们要去排除问题就得先从php-fpm下手因为采用的方法所nginx代理php-fpm的9000端口，既然知道原因就好办了。\r\n', '11');

-- ----------------------------
-- Table structure for sl_category
-- ----------------------------
DROP TABLE IF EXISTS `sl_category`;
CREATE TABLE `sl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '类别名称',
  `columnId` int(11) DEFAULT NULL COMMENT '所属栏目',
  `sort` varchar(100) DEFAULT NULL COMMENT '排序',
  `allow` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_category
-- ----------------------------
INSERT INTO `sl_category` VALUES ('1', 'PHP', '1', '10', '1');
INSERT INTO `sl_category` VALUES ('2', 'JavaScript', '1', '20', '1');
INSERT INTO `sl_category` VALUES ('3', 'NodeJs', '1', '30', '1');
INSERT INTO `sl_category` VALUES ('4', 'Java', '1', '40', '1');
INSERT INTO `sl_category` VALUES ('5', 'Rust', '1', '50', '1');

-- ----------------------------
-- Table structure for sl_column
-- ----------------------------
DROP TABLE IF EXISTS `sl_column`;
CREATE TABLE `sl_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '栏目名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `allow` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_column
-- ----------------------------
INSERT INTO `sl_column` VALUES ('1', '编程语言', '10', '1');
INSERT INTO `sl_column` VALUES ('2', '数据库', '20', '1');
INSERT INTO `sl_column` VALUES ('3', '聊架构', '30', '1');
INSERT INTO `sl_column` VALUES ('4', '说系统', '40', '1');
INSERT INTO `sl_column` VALUES ('5', '杂七杂八', '50', '1');
INSERT INTO `sl_column` VALUES ('6', '开源项目', '60', '1');

-- ----------------------------
-- Table structure for sl_comment
-- ----------------------------
DROP TABLE IF EXISTS `sl_comment`;
CREATE TABLE `sl_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '评论人',
  `addtime` datetime DEFAULT NULL COMMENT '评论时间',
  `allow` tinyint(1) DEFAULT NULL COMMENT '是否审核',
  `articleId` int(11) DEFAULT NULL COMMENT '文章id',
  `replyId` int(11) DEFAULT NULL COMMENT '回复id',
  `content` text COMMENT '评论内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_comment
-- ----------------------------
INSERT INTO `sl_comment` VALUES ('1', '1', '2018-07-19 09:14:26', '1', '1', '1', '1111111111111');
INSERT INTO `sl_comment` VALUES ('2', '2', '2018-07-19 09:31:12', '1', '2', '2', '到了看到了第三代\r\n是的是的开始的角度讲\r\n但是考虑到是的');

-- ----------------------------
-- Table structure for sl_link
-- ----------------------------
DROP TABLE IF EXISTS `sl_link`;
CREATE TABLE `sl_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '链接名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `allow` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  `address` varchar(100) DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_link
-- ----------------------------
INSERT INTO `sl_link` VALUES ('1', '测试', '10', '1', '1');

-- ----------------------------
-- Table structure for sl_manage
-- ----------------------------
DROP TABLE IF EXISTS `sl_manage`;
CREATE TABLE `sl_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `realname` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '管理员类型',
  `errtice` int(11) DEFAULT '0' COMMENT '错误次数',
  `errtime` date DEFAULT NULL COMMENT '错误时间',
  `thistime` datetime DEFAULT NULL COMMENT '本次登录时间',
  `lasttime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `thisip` varchar(255) DEFAULT NULL COMMENT '本次登录IP',
  `lastip` varchar(255) DEFAULT NULL COMMENT '最后一次登录IP',
  `islock` int(1) DEFAULT '0' COMMENT '是否锁定账号',
  `email` varchar(255) DEFAULT NULL COMMENT '管理员邮箱',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_manage
-- ----------------------------
INSERT INTO `sl_manage` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'wj008', '1', '0', '1999-01-01', '2018-07-20 02:42:26', '2018-07-20 02:11:58', '127.0.0.1', '127.0.0.1', '0', '');

-- ----------------------------
-- Table structure for sl_member
-- ----------------------------
DROP TABLE IF EXISTS `sl_member`;
CREATE TABLE `sl_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `face` varchar(250) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_member
-- ----------------------------

-- ----------------------------
-- Table structure for sl_setting
-- ----------------------------
DROP TABLE IF EXISTS `sl_setting`;
CREATE TABLE `sl_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogName` varchar(100) DEFAULT NULL COMMENT '博客名称',
  `blogSign` text COMMENT '博客签名',
  `blogCover` varchar(100) DEFAULT NULL COMMENT '上传封面',
  `blogger` varchar(100) DEFAULT NULL COMMENT '博主',
  `face` varchar(100) DEFAULT NULL COMMENT '头像',
  `introduce` text COMMENT '个人介绍',
  `auxiliaryName` varchar(100) DEFAULT NULL COMMENT '辅名',
  `webname` varchar(100) DEFAULT NULL COMMENT '网站标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_setting
-- ----------------------------
INSERT INTO `sl_setting` VALUES ('1', '叶子 · WJ008 的博客', '从明天起，做一个幸福的人，敲码，写博客，周游世界，从明天起 关心技术与PHP 我要一所房子面朝大海春暖花开。', '/upfiles/images/15320249073713.jpg', 'wj008', '/upfiles/images/15320419651295.png', '出路出路，走出去了，总是会有路的。困难苦难，困在家里就是难。', '千一叶', '叶子的博客');

-- ----------------------------
-- Table structure for sl_sysmenu
-- ----------------------------
DROP TABLE IF EXISTS `sl_sysmenu`;
CREATE TABLE `sl_sysmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `allow` int(1) DEFAULT '0' COMMENT '是否启用',
  `pid` varchar(255) DEFAULT NULL COMMENT '所属上级菜单',
  `show` int(1) DEFAULT '0' COMMENT '是否展开',
  `url` varchar(255) DEFAULT NULL COMMENT '栏目路径',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `remark` text COMMENT '备注',
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_sysmenu
-- ----------------------------
INSERT INTO `sl_sysmenu` VALUES ('1', '首页', '1', '0', '1', '', '10', '', '');
INSERT INTO `sl_sysmenu` VALUES ('2', '系统账号管理', '1', '1', '1', '', '0', '', 'icofont icofont-user-male');
INSERT INTO `sl_sysmenu` VALUES ('3', '管理员管理', '1', '2', '1', '~/Manage', '12', null, null);
INSERT INTO `sl_sysmenu` VALUES ('4', '修改管理密码', '1', '2', '1', '~/Manage/modifyPass', '0', '', '');
INSERT INTO `sl_sysmenu` VALUES ('5', '网站信息管理', '1', '1', '1', '', '20', '', 'icofont icofont-king-crown');
INSERT INTO `sl_sysmenu` VALUES ('6', '系统菜单', '1', '0', '1', null, '400', null, null);
INSERT INTO `sl_sysmenu` VALUES ('7', '工具箱', '1', '6', '1', '', '0', '', 'icofont icofont-tools-alt-2');
INSERT INTO `sl_sysmenu` VALUES ('8', '系统菜单管理', '1', '7', '1', '~/Sysmenu', '50', null, null);
INSERT INTO `sl_sysmenu` VALUES ('10', '项目管理', '1', '7', '0', '^/tool/ToolApplication', '1', '', '');
INSERT INTO `sl_sysmenu` VALUES ('11', '表单模型', '1', '7', '0', '^/tool/ToolForm', '2', '', '');
INSERT INTO `sl_sysmenu` VALUES ('12', '列表模型', '1', '7', '0', '^/tool/ToolList', '3', '', '');
INSERT INTO `sl_sysmenu` VALUES ('13', '栏目管理', '1', '5', '0', '^/admin/Column', '410', '', '');
INSERT INTO `sl_sysmenu` VALUES ('14', '类别管理', '1', '5', '0', '^/admin/Category', '420', '', '');
INSERT INTO `sl_sysmenu` VALUES ('15', '标签管理', '1', '5', '0', '^/admin/Tag', '430', '', '');
INSERT INTO `sl_sysmenu` VALUES ('16', '文章管理', '1', '5', '0', '^/admin/Article', '440', '', '');
INSERT INTO `sl_sysmenu` VALUES ('17', '评论管理', '1', '5', '0', '^/admin/Comment', '450', '', '');
INSERT INTO `sl_sysmenu` VALUES ('18', '网站配置', '1', '2', '0', '~/Setting/edit?id=1', '460', '', '');
INSERT INTO `sl_sysmenu` VALUES ('19', '友情链接', '1', '2', '0', '~/Link', '470', '', '');

-- ----------------------------
-- Table structure for sl_tag
-- ----------------------------
DROP TABLE IF EXISTS `sl_tag`;
CREATE TABLE `sl_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '标签名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `allow` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_tag
-- ----------------------------
INSERT INTO `sl_tag` VALUES ('1', '测试', '10', '1');
INSERT INTO `sl_tag` VALUES ('2', '标签', '20', '1');

-- ----------------------------
-- Table structure for sl_tool_application
-- ----------------------------
DROP TABLE IF EXISTS `sl_tool_application`;
CREATE TABLE `sl_tool_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_tool_application
-- ----------------------------
INSERT INTO `sl_tool_application` VALUES ('1', '系统后台', 'app\\admin', 'admin');

-- ----------------------------
-- Table structure for sl_tool_field
-- ----------------------------
DROP TABLE IF EXISTS `sl_tool_field`;
CREATE TABLE `sl_tool_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL DEFAULT '0' COMMENT '表单ID',
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `boxName` text,
  `type` varchar(255) DEFAULT NULL,
  `hideBox` tinyint(1) DEFAULT NULL,
  `dbfield` tinyint(1) DEFAULT NULL,
  `dbtype` varchar(255) DEFAULT NULL,
  `dblen` int(11) DEFAULT NULL,
  `dbpoint` varchar(500) DEFAULT NULL,
  `dbcomment` varchar(255) DEFAULT NULL,
  `beforeText` varchar(255) DEFAULT NULL,
  `afterText` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `viewMerge` int(11) DEFAULT NULL,
  `close` tinyint(1) DEFAULT NULL,
  `viewClose` tinyint(1) DEFAULT NULL,
  `offEdit` tinyint(1) DEFAULT NULL,
  `forceDefault` tinyint(1) DEFAULT NULL,
  `default` text,
  `extendAttrs` text,
  `customAttrs` text,
  `dynamic` text,
  `boxPlaceholder` text,
  `boxClass` text,
  `boxStyle` text,
  `boxAttrs` text,
  `tips` text,
  `isEditTips` tinyint(1) DEFAULT NULL,
  `editTips` text,
  `viewTplName` varchar(255) DEFAULT NULL,
  `viewTplCode` text,
  `viewAsterisk` tinyint(4) DEFAULT NULL,
  `dataVal` text,
  `dataValMsg` text,
  `dataValGroup` text,
  `isEditDataVal` tinyint(1) DEFAULT NULL,
  `editDataVal` text,
  `editDataValMsg` text,
  `dataValInfo` text,
  `dataValValid` text,
  `dataValFor` varchar(255) DEFAULT NULL,
  `dataValOff` tinyint(1) DEFAULT NULL,
  `dataValEvents` varchar(255) DEFAULT NULL,
  `names` text,
  `viewTabIndex` varchar(255) DEFAULT NULL,
  `valueFunc` varchar(255) DEFAULT NULL,
  `validFunc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_tool_field
-- ----------------------------
INSERT INTO `sl_tool_field` VALUES ('1', '1', 'name', '栏目名称', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '10', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('2', '1', 'sort', '排序', '', 'integer', '0', '1', 'int', '11', '0', '', '', '', '20', '0', '0', '0', '0', '0', '@{\"inner\":\"maxsort\"}', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('3', '1', 'allow', '是否启用', '', 'check', '0', '1', 'tinyint', '1', '0', '', '', '', '30', '0', '0', '0', '0', '0', '1', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('4', '2', 'name', '类别名称', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '10', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '{\"required\":true}', '{\"required\":\"类别名称必须填写\"}', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('5', '2', 'columnId', '所属栏目', '', 'select', '0', '1', 'int', '11', '0', '', '', '', '20', '0', '0', '0', '0', '0', '', '{\"headerText\":\"请选择栏目\",\"headerValue\":\"\",\"optionsType\":\"2\",\"options\":\"[]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"select id,name from @pf_column\",\"optionsField\":\"id,name\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('6', '2', 'sort', '排序', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '30', '0', '0', '0', '0', '0', '@{\"inner\":\"maxsort\"}', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('7', '2', 'allow', '是否启用', '', 'check', '0', '1', 'tinyint', '1', '0', '', '', '', '40', '0', '0', '0', '0', '0', '1', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('8', '3', 'name', '标签名称', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '10', '0', '0', '0', '0', '0', '', '[]', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '{\"required\":true}', '{\"required\":\"标签名称必须填写\"}', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('9', '3', 'sort', '排序', '', 'integer', '0', '1', 'int', '11', '0', '', '', '', '20', '0', '0', '0', '0', '0', '@{\"inner\":\"maxsort\"}', '[]', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('10', '3', 'allow', '是否启用', '', 'check', '0', '1', 'tinyint', '1', '0', '', '', '', '30', '0', '0', '0', '0', '0', '1', '[]', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('11', '4', 'title', '文章标题', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '10', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', 'width:400px', '[]', '', '0', '', '', '', '0', '{\"required\":true}', '{\"required\":\"文章标题必须填写\"}', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('12', '4', 'columnCategory', '栏目类别', '', 'linkage', '0', '1', 'json', '0', '0', '', '', '', '20', '0', '0', '0', '0', '0', '', '{\"dataSource\":\"^\\/admin\\/Index\\/linkage\",\"dataMethod\":\"get\",\"dataLevel\":0,\"dataHeader\":\"[{\\\"name\\\":\\\"选择栏目\\\"},{\\\"name\\\":\\\"选择类别\\\"}]\",\"names\":\"[{\\\"field\\\":\\\"columnId\\\",\\\"type\\\":\\\"int\\\"},{\\\"field\\\":\\\"categoryId\\\",\\\"type\\\":\\\"int\\\"}]\",\"dataValGroup\":\"{\\\"rule\\\":[{\\\"required\\\":true},{\\\"required\\\":true}],\\\"msg\\\":[{\\\"required\\\":\\\"请选择栏目\\\"},{\\\"required\\\":\\\"请选择类别\\\"}]}\",\"isEditDataValGroup\":0,\"editDataValGroup\":\"\"}', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[{\"field\":\"columnId\",\"type\":\"int\"},{\"field\":\"categoryId\",\"type\":\"int\"}]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('13', '4', 'cover', '封面图片', '', 'upimg', '0', '1', 'varchar', '100', '0', '', '', '', '30', '0', '0', '0', '0', '0', '', '{\"dataUrl\":\"\\/service\\/upfile\",\"dataExtensions\":\"jpg,jpeg,bmp,gif,png\",\"dataFieldName\":\"filedata\",\"dataBtnWidth\":160,\"dataBtnHeight\":120}', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('14', '4', 'author', '作者', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '40', '0', '0', '0', '0', '0', 'wj008', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('15', '4', 'source', '来源', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '50', '0', '0', '0', '0', '0', '叶子的博客', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('16', '4', 'clicks', '点击数', '', 'integer', '0', '1', 'int', '11', '0', '', '', '', '60', '0', '0', '0', '0', '1', '0', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('17', '4', 'content', '文章内容', '', 'xheditor', '0', '1', 'text', '0', '0', '', '', '', '70', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', 'height:300px;', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('18', '4', 'addtime', '创建时间', '', 'datetime', '0', '1', 'datetime', '0', '0', '', '', '', '80', '0', '0', '1', '1', '1', '@{\"inner\":\"datetime\"}', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('19', '4', 'tags', '选择标签', '', 'multiple', '0', '1', 'json', '0', '0', '', '', '', '55', '0', '0', '0', '0', '0', '', '{\"dataHref\":\"^\\/admin\\/SelectTag\",\"dataText\":\"@{\\\"sql\\\":\\\"select name from @pf_tag where id=?\\\",\\\"field\\\":\\\"name\\\"}\",\"itemType\":\"integer\"}', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('20', '4', 'isTop', '是否置顶', '', 'check', '0', '1', 'tinyint', '1', '0', '', '', '勾选置顶', '90', '0', '0', '0', '0', '0', '0', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('21', '4', 'allow', '是否审核', '', 'check', '0', '1', 'tinyint', '1', '0', '', '', '勾选审核', '100', '0', '0', '0', '0', '0', '1', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('22', '5', 'userId', '评论人', '', 'integer', '0', '1', 'int', '11', '0', '', '', '', '10', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('23', '5', 'addtime', '评论时间', '', 'datetime', '0', '1', 'datetime', '0', '0', '', '', '', '20', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('24', '5', 'allow', '是否审核', '', 'check', '0', '1', 'tinyint', '1', '0', '', '', '', '30', '0', '0', '0', '0', '0', '0', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('25', '5', 'articleId', '文章id', '', 'integer', '0', '1', 'int', '11', '0', '', '', '', '40', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('26', '5', 'replyId', '回复id', '', 'integer', '0', '1', 'int', '11', '0', '', '', '', '50', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('27', '5', 'content', '评论内容', '', 'textarea', '0', '1', 'text', '0', '0', '', '', '', '60', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('28', '6', 'userName', '用户名称', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '10', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('29', '6', 'face', '用户头像', '', 'text', '0', '1', 'varchar', '250', '0', '', '', '', '20', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('30', '4', 'isComment', '是否开放评论', '', 'check', '0', '1', 'tinyint', '1', '0', '', '', '勾选开放评论', '110', '0', '0', '0', '0', '0', '0', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('31', '7', 'blogName', '博客名称', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '10', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('32', '7', 'blogSign', '博客签名', '', 'textarea', '0', '1', 'text', '0', '0', '', '', '', '20', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('33', '7', 'blogCover', '上传封面', '', 'upimg', '0', '1', 'varchar', '100', '0', '', '', '', '30', '0', '0', '0', '0', '0', '', '{\"dataUrl\":\"\\/service\\/upfile\",\"dataExtensions\":\"jpg,jpeg,bmp,gif,png\",\"dataFieldName\":\"filedata\",\"dataBtnWidth\":396,\"dataBtnHeight\":80}', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('34', '4', 'abstract', '摘要', '', 'textarea', '0', '1', 'text', '0', '0', '', '', '', '35', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', 'height:120px;width:500px', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('35', '8', 'name', '链接名称', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '10', '0', '0', '0', '0', '0', '', '[]', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('36', '8', 'sort', '排序', '', 'integer', '0', '1', 'int', '11', '0', '', '', '', '20', '0', '0', '0', '0', '0', '@{\"inner\":\"maxsort\"}', '[]', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('37', '8', 'allow', '是否启用', '', 'check', '0', '1', 'tinyint', '1', '0', '', '', '', '30', '0', '0', '0', '0', '0', '1', '[]', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('38', '8', 'address', '链接地址', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '15', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('39', '4', 'sort', '排序', '', 'integer', '0', '1', 'int', '11', '0', '', '', '', '65', '0', '0', '0', '0', '0', '@{\"inner\":\"maxsort\"}', '[]', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('40', '7', 'personalData', '个人资料', '', 'line', '0', '0', '', '100', '0', '', '', '', '40', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('41', '7', 'blogger', '博主', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '50', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('42', '7', 'face', '头像', '', 'upimg', '0', '1', 'varchar', '100', '0', '', '', '', '60', '0', '0', '0', '0', '0', '', '{\"dataUrl\":\"\\/service\\/upfile\",\"dataExtensions\":\"jpg,jpeg,bmp,gif,png\",\"dataFieldName\":\"filedata\",\"dataBtnWidth\":64,\"dataBtnHeight\":64}', '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('43', '7', 'introduce', '个人介绍', '', 'textarea', '0', '1', 'text', '0', '0', '', '', '', '70', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', 'height:80px', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('44', '7', 'auxiliaryName', '辅名', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '55', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');
INSERT INTO `sl_tool_field` VALUES ('45', '7', 'webname', '网站标题', '', 'text', '0', '1', 'varchar', '100', '0', '', '', '', '5', '0', '0', '0', '0', '0', '', null, '[]', '', '', '', '', '[]', '', '0', '', '', '', '0', '', '', null, '0', '', '', '', '', '', '0', '', '[]', null, '', '');

-- ----------------------------
-- Table structure for sl_tool_form
-- ----------------------------
DROP TABLE IF EXISTS `sl_tool_form`;
CREATE TABLE `sl_tool_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proId` int(11) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `tbName` varchar(255) DEFAULT NULL,
  `tbEngine` varchar(255) DEFAULT NULL,
  `tbCreate` tinyint(1) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `version` int(255) DEFAULT NULL,
  `extType` int(11) DEFAULT NULL,
  `extTbname` varchar(255) DEFAULT NULL,
  `extMode` int(11) DEFAULT NULL,
  `extFields` text,
  `useAjax` tinyint(4) DEFAULT NULL,
  `description` text,
  `isEditDescription` tinyint(4) DEFAULT NULL,
  `editDescription` text,
  `information` text,
  `attention` text,
  `script` text,
  `validateMode` int(11) DEFAULT NULL,
  `viewUseTab` tinyint(1) DEFAULT NULL,
  `viewTabs` text,
  `valueFuncArgs` varchar(255) DEFAULT NULL,
  `valueFuncSql` text,
  `valueFuncField` varchar(255) DEFAULT NULL,
  `viewNotBack` tinyint(1) DEFAULT NULL,
  `viewTemplate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_tool_form
-- ----------------------------
INSERT INTO `sl_tool_form` VALUES ('1', '1', 'app\\admin', 'Column', '栏目版块', '', 'column', 'InnoDB', '1', null, null, '1', '', '0', '[\"name\",\"allow\",\"sort\"]', '1', '', '0', '', '', '', '', '0', '0', '[]', null, null, null, '0', '');
INSERT INTO `sl_tool_form` VALUES ('2', '1', 'app\\admin', 'Category', '博文类别', '', 'category', 'InnoDB', '1', null, null, '1', '', '0', '[\"name\",\"allow\",\"sort\"]', '1', '', '0', '', '', '', '', '0', '0', '[]', null, null, null, '0', '');
INSERT INTO `sl_tool_form` VALUES ('3', '1', 'app\\admin', 'Tag', 'Tag标签', '', 'tag', 'InnoDB', '1', null, null, '1', '', '0', '[\"name\",\"allow\",\"sort\"]', '1', '', '0', '', '', '', '', '0', '0', '[]', null, null, null, '1', '');
INSERT INTO `sl_tool_form` VALUES ('4', '1', 'app\\admin', 'Article', '文章内容', '', 'article', 'InnoDB', '1', null, null, '1', '', '0', '[\"name\",\"allow\",\"sort\"]', '1', '', '0', '', '', '', '', '0', '0', '[]', null, null, null, '0', '');
INSERT INTO `sl_tool_form` VALUES ('5', '1', 'app\\admin', 'Comment', '评论', '', 'comment', 'InnoDB', '1', null, null, '1', '', '0', '[\"name\",\"allow\",\"sort\"]', '1', '', '0', '', '', '', '', '0', '0', '[]', null, null, null, '0', '');
INSERT INTO `sl_tool_form` VALUES ('6', '1', 'app\\admin', 'Member', '用户管理', '', 'member', 'InnoDB', '1', null, null, '1', '', '0', '[\"name\",\"allow\",\"sort\"]', '1', '', '0', '', '', '', '', '0', '0', '[]', null, null, null, '0', '');
INSERT INTO `sl_tool_form` VALUES ('7', '1', 'app\\admin', 'Setting', '配置设置', '', 'setting', 'InnoDB', '1', null, null, '1', '', '0', '[\"name\",\"allow\",\"sort\"]', '1', '', '0', '', '', '', '', '0', '0', '[]', null, null, null, '1', '');
INSERT INTO `sl_tool_form` VALUES ('8', '1', 'app\\admin', 'Link', '友情链接', '', 'link', 'InnoDB', '1', null, null, '1', '', '0', '[\"name\",\"allow\",\"sort\"]', '1', '', '0', '', '', '', '', '0', '0', '[]', null, null, null, '0', '');

-- ----------------------------
-- Table structure for sl_tool_list
-- ----------------------------
DROP TABLE IF EXISTS `sl_tool_list`;
CREATE TABLE `sl_tool_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `formId` int(11) DEFAULT NULL,
  `proId` int(11) DEFAULT NULL,
  `fields` text,
  `orgFields` text,
  `listResize` tinyint(1) DEFAULT NULL,
  `usePageList` tinyint(1) DEFAULT NULL,
  `pageSize` int(11) DEFAULT NULL,
  `baseController` varchar(255) DEFAULT NULL,
  `useCustomTemplate` tinyint(1) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `templateHack` varchar(255) DEFAULT NULL,
  `baseLayout` varchar(255) DEFAULT NULL,
  `tbName` varchar(255) DEFAULT NULL,
  `tbNameAlias` varchar(255) DEFAULT NULL,
  `tbJoin` text,
  `tbField` text,
  `tbWhere` text,
  `tbOrder` text,
  `useSqlTemplate` tinyint(1) DEFAULT NULL,
  `sqlTemplate` text,
  `sqlCountTemplate` text,
  `actions` text,
  `topBtns` text,
  `thTitle` varchar(255) DEFAULT NULL,
  `thFixed` varchar(255) DEFAULT NULL,
  `thAlign` varchar(255) DEFAULT NULL,
  `thWidth` varchar(255) DEFAULT NULL,
  `thAttrs` text,
  `tdAlign` varchar(255) DEFAULT NULL,
  `tdAttrs` text,
  `listBtns` text,
  `useSelect` tinyint(4) DEFAULT NULL,
  `selectType` varchar(255) DEFAULT NULL,
  `selectBtns` text,
  `headTemplate` text,
  `buttomTemplate` text,
  `information` text,
  `attention` text,
  `assign` text,
  `viewTabs` text,
  `viewTabRight` text,
  `viewUseTab` tinyint(1) DEFAULT NULL,
  `leftFixed` int(11) DEFAULT NULL,
  `rightFixed` int(11) DEFAULT NULL,
  `useTwoLine` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_tool_list
-- ----------------------------
INSERT INTO `sl_tool_list` VALUES ('1', 'app\\admin', 'Column', '栏目版块', '栏目版块', '1', '1', '[{\"title\":\"id\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"40\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"id\",\"code\":\"{$rs.id}\"},{\"title\":\"栏目名称\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"name\",\"code\":\"{$rs.name}\"},{\"title\":\"排序\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"sort\",\"code\":\"{sort id=$rs.id sort=$rs.sort}\"},{\"title\":\"是否启用\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"allow\",\"code\":\"{if $rs.allow}<span class=green>启用<\\/span>{else}禁用{\\/if}\"}]', '', '0', '0', '20', '', '0', '', '', 'layoutDataTable.tpl', '', '', '[]', '', '[]', 'id asc', '0', '', '', '[\"addAction\",\"editAction\",\"deleteAction\",\"sortAction\",\"changeAllowAction\"]', '[{\"code\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\",\"temp\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\"}]', '操作', '', 'center', '180', '', 'center', '', '[{\"code\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\"}]', '0', 'search', '[]', '', '', '', '', '[]', '[]', '', '0', '0', '0', '0');
INSERT INTO `sl_tool_list` VALUES ('2', 'app\\admin', 'Category', '博文类别', '博文类别', '2', '1', '[{\"title\":\"id\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"id\",\"code\":\"{$rs.id}\"},{\"title\":\"类别名称\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"name\",\"code\":\"{$rs.name}\"},{\"title\":\"所属栏目\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"columnId\",\"code\":\"{$rs.columnId|dbval:\'@pf_column\'}\"},{\"title\":\"排序\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"sort\",\"code\":\"{sort id=$rs.id sort=$rs.sort}\"},{\"title\":\"是否启用\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"allow\",\"code\":\"{if $rs.allow}<span class=green>启用<\\/span>{else}禁用{\\/if}\"}]', '', '0', '0', '20', '', '0', '', '', 'layoutDataTable.tpl', '', '', '[]', '', '[]', 'id asc', '0', '', '', '[\"addAction\",\"editAction\",\"deleteAction\",\"sortAction\",\"changeAllowAction\"]', '[{\"code\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\",\"temp\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\"}]', '操作', '', 'center', '180', '', 'center', '', '[{\"code\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\"}]', '0', 'search', '[]', '', '', '', '', '[]', '[]', '', '0', '0', '0', '0');
INSERT INTO `sl_tool_list` VALUES ('3', 'app\\admin', 'Tag', 'Tag标签', 'Tag标签', '3', '1', '[{\"title\":\"id\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"40\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"id\",\"code\":\"{$rs.id}\"},{\"title\":\"TAG名称\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"name\",\"code\":\"{$rs.name}\"},{\"title\":\"排序\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"sort\",\"code\":\"{sort id=$rs.id sort=$rs.sort}\"},{\"title\":\"是否启用\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"allow\",\"code\":\"{if $rs.allow}<span class=green>启用<\\/span>{else}禁用{\\/if}\"}]', '', '0', '0', '20', '', '0', '', '', 'layoutDataTable.tpl', '', '', '[]', '', '[]', 'id desc', '0', '', '', '[\"addAction\",\"editAction\",\"deleteAction\",\"sortAction\",\"changeAllowAction\"]', '[{\"code\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" yee-module=\'dialog\' data-width=\'600\' data-height=\'340\' class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\",\"temp\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\"}]', '操作', '', 'center', '180', '', 'center', '', '[{\"code\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\"  yee-module=\'dialog\' data-width=\'600\' data-height=\'340\'  class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\"}]', '0', 'search', '[]', '', '', '', '', '[]', '[]', '', '0', '0', '0', null);
INSERT INTO `sl_tool_list` VALUES ('4', 'app\\admin', 'SelectTag', 'Tag标签', 'Tag标签', '3', '1', '[{\"title\":\"id\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"40\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"id\",\"code\":\"{$rs.id}\"},{\"title\":\"TAG名称\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"name\",\"code\":\"{$rs.name}\"},{\"title\":\"排序\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"sort\",\"code\":\"{sort id=$rs.id sort=$rs.sort}\"},{\"title\":\"是否启用\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"allow\",\"code\":\"{if $rs.allow}<span class=green>启用<\\/span>{else}禁用{\\/if}\"}]', '', '0', '1', '20', '', '0', '', '', 'multipleList.tpl', '', '', '[]', '', '[]', 'id desc', '0', '', '', '[\"addAction\",\"editAction\",\"deleteAction\",\"sortAction\",\"changeAllowAction\"]', '[{\"code\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\"  yee-module=\'dialog\' data-width=\'600\' data-height=\'340\'  class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\",\"temp\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\"}]', '操作', '', 'center', '180', '', 'center', '', '[{\"code\":\"<input type=\\\"checkbox\\\" data-text=\\\"{$rs.name}\\\" class=\\\"check-item\\\" name=\\\"sel_id\\\" value=\'{$rs.id}\'\\/>\",\"temp\":\"<a href=\\\"javascript:;\\\" yee-module=\\\"select_dialog\\\" data-value=\\\"{$rs.id}\\\" data-text=\\\"{$rs.name}\\\"  class=\\\"yee-btn edit\\\">选择<\\/a>\"}]', '0', 'search', '[]', '', '', '', '', '[]', '[]', '', '0', '0', '0', null);
INSERT INTO `sl_tool_list` VALUES ('5', 'app\\admin', 'Article', '文章内容', '文章内容', '4', '1', '[{\"title\":\"id\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"40\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"id\",\"code\":\"{$rs.id}\"},{\"title\":\"文章标题\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"title\",\"code\":\"{$rs.title}\"},{\"title\":\"栏目类别\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"columnId\",\"code\":\"{$rs.columnId|dbval:\'@pf_column\'}\"},{\"title\":\"栏目类别\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"categoryId\",\"code\":\"{$rs.categoryId|dbval:\'@pf_category\'}\"},{\"title\":\"点击数\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"clicks\",\"code\":\"{$rs.clicks}\"},{\"title\":\"创建时间\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"120\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"addtime\",\"code\":\"{$rs.addtime}\"},{\"title\":\"排序\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"sort\",\"code\":\"{sort sort=$rs.sort id=$rs.id}\"},{\"title\":\"是否置顶\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"isTop\",\"code\":\"{if $rs.isTop}<span class=blue>置顶<\\/span>{else}-{\\/if}\"},{\"title\":\"是否审核\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"allow\",\"code\":\"{if $rs.allow}<span class=green>启用<\\/span>{else}禁用{\\/if}\"},{\"title\":\"开放评论\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"isComment\",\"code\":\"{if $rs.isComment}<span class=green>开放<\\/span>{else}关闭{\\/if}\"}]', '', '0', '0', '20', '', '0', '', '', 'layoutDataTable.tpl', '', '', '[]', '', '[]', 'sort desc,id desc', '0', '', '', '[\"addAction\",\"editAction\",\"deleteAction\",\"sortAction\",\"changeAllowAction\"]', '[{\"code\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\",\"temp\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\"}]', '操作', '', 'center', '180', '', 'center', '', '[{\"code\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\"}]', '0', 'search', '[]', '', '', '', '', '[]', '[]', '', '0', '0', '0', '0');
INSERT INTO `sl_tool_list` VALUES ('6', 'app\\admin', 'Comment', '评论', '评论', '5', '1', '[{\"title\":\"id\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"id\",\"code\":\"{$rs.id}\"},{\"title\":\"评论人\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"userId\",\"code\":\"{$rs.userId}\"},{\"title\":\"评论时间\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"180\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"addtime\",\"code\":\"{$rs.addtime}\"},{\"title\":\"评论内容\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"valign=\\\"top\\\" style=\'line-height:24px\'\",\"keyname\":\"\",\"field\":\"content\",\"code\":\"<div style=\'width:90px; height:30px; float:left;\'><b>回复内容：<\\/b><\\/div><div style=\'float:left;\'>{nl2br value=$rs.content}<\\/div>\"}]', '', '0', '1', '20', '', '1', '', '', 'layoutDataTable.tpl', '', '', '[]', '', '[]', 'id desc', '0', '', '', '[\"addAction\",\"editAction\",\"deleteAction\"]', '[{\"code\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\",\"temp\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\"}]', '操作', '', 'center', '180', '', 'center', '', '[{\"code\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\"}]', '0', 'search', '[]', '', '', '', '', '[]', '[]', '', '0', '0', '0', '1');
INSERT INTO `sl_tool_list` VALUES ('7', 'app\\admin', 'Setting', '配置设置', '配置设置', '7', '1', '[]', '', '0', '0', '20', '', '0', '', '', 'layoutDataTable.tpl', '', '', '[]', '', '[]', 'id desc', '0', '', '', '[\"addAction\",\"editAction\"]', '[]', '操作', '', 'center', '180', '', 'center', '', '[]', '0', 'search', '[]', '', '', '', '', '[]', '[]', '', '0', '0', '0', '0');
INSERT INTO `sl_tool_list` VALUES ('8', 'app\\admin', 'Link', '友情链接', '友情链接', '8', '1', '[{\"title\":\"id\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"40\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"id\",\"code\":\"{$rs.id}\"},{\"title\":\"链接名称\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"name\",\"code\":\"{$rs.name}\"},{\"title\":\"链接地址\",\"orderName\":\"\",\"thAlign\":\"left\",\"thWidth\":\"200\",\"thAttrs\":\"\",\"tdAlign\":\"left\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"address\",\"code\":\"{$rs.address}\"},{\"title\":\"排序\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"sort\",\"code\":\"{sort id=$rs.id sort=$rs.sort}\"},{\"title\":\"是否启用\",\"orderName\":\"\",\"thAlign\":\"center\",\"thWidth\":\"80\",\"thAttrs\":\"\",\"tdAlign\":\"center\",\"tdAttrs\":\"\",\"keyname\":\"\",\"field\":\"allow\",\"code\":\"{if $rs.allow}<span class=green>启用<\\/span>{else}禁用{\\/if}\"}]', '', '0', '0', '20', '', '0', '', '', 'layoutDataTable.tpl', '', '', '[]', '', '[]', 'id asc', '0', '', '', '[\"addAction\",\"editAction\",\"deleteAction\",\"sortAction\",\"changeAllowAction\"]', '[{\"code\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\",\"temp\":\"<a id=\\\"add-btn\\\" href=\\\"{url act=\'add\'}\\\" class=\\\"yee-btn add\\\"><i class=\\\"icofont icofont-ui-add\\\"><\\/i>新增<\\/a>\"}]', '操作', '', 'center', '180', '', 'center', '', '[{\"code\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'edit\' id=$rs.id}\\\" class=\\\"yee-btn small edit\\\"><i class=\\\"icofont icofont-edit\\\"><\\/i>编辑<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'changeAllow\' id=$rs.id}\\\" yee-module=\\\"ajaxlink\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\" class=\\\"yee-btn small edit\\\">{if $rs.allow}<i class=\\\"icofont icofont-not-allowed\\\"><\\/i>撤审{else}<i class=\\\"icofont icofont-check-circled\\\"><\\/i>审核{\\/if}<\\/a>\"},{\"code\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\",\"temp\":\"<a href=\\\"{url act=\'delete\' id=$rs.id}\\\" yee-module=\\\"confirm ajaxlink\\\" data-confirm=\\\"确定要删除该信息了吗？\\\" class=\\\"yee-btn small del\\\" onsuccess=\\\" $(\'#list\').trigger(\'reload\');\\\"><i class=\\\"icofont icofont-bin\\\"><\\/i>删除<\\/a>\"}]', '0', 'search', '[]', '', '', '', '', '[]', '[]', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for sl_tool_search
-- ----------------------------
DROP TABLE IF EXISTS `sl_tool_search`;
CREATE TABLE `sl_tool_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listId` int(11) NOT NULL DEFAULT '0' COMMENT '表单ID',
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `hideBox` tinyint(1) DEFAULT NULL,
  `beforeText` varchar(255) DEFAULT NULL,
  `afterText` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `viewMerge` int(11) DEFAULT NULL,
  `default` text,
  `forceDefault` tinyint(1) DEFAULT NULL,
  `extendAttrs` text,
  `customAttrs` text,
  `boxPlaceholder` text,
  `boxClass` text,
  `boxStyle` text,
  `boxAttrs` text,
  `names` text,
  `viewTabIndex` varchar(255) DEFAULT NULL,
  `tbWhere` text,
  `tbWhereType` int(11) DEFAULT NULL,
  `varType` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_tool_search
-- ----------------------------
INSERT INTO `sl_tool_search` VALUES ('1', '1', 'name', '栏目名称', 'text', '0', '', '', '10', '0', '', '0', null, '[]', '', '', '', '[]', '[]', 'base', '`name` like concat(\'%\',?,\'%\')', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('2', '1', 'allow', '是否启用', 'select', '0', '', '', '20', '0', '', '0', '{\"headerText\":\"全部\",\"headerValue\":\"\",\"optionsType\":\"1\",\"options\":\"[{\\\"value\\\":\\\"1\\\",\\\"text\\\":\\\"启用\\\",\\\"tips\\\":\\\"\\\"},{\\\"value\\\":\\\"0\\\",\\\"text\\\":\\\"禁用\\\",\\\"tips\\\":\\\"\\\"}]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"\",\"optionsField\":\"\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '[]', '[]', 'base', '`allow` = ?', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('3', '2', 'name', '栏目名称', 'text', '0', '', '', '10', '0', '', '0', null, '[]', '', '', '', '[]', '[]', 'base', '`name` like concat(\'%\',?,\'%\')', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('4', '2', 'allow', '是否启用', 'select', '0', '', '', '20', '0', '', '0', '{\"headerText\":\"全部\",\"headerValue\":\"\",\"optionsType\":\"1\",\"options\":\"[{\\\"value\\\":\\\"1\\\",\\\"text\\\":\\\"启用\\\",\\\"tips\\\":\\\"\\\"},{\\\"value\\\":\\\"0\\\",\\\"text\\\":\\\"禁用\\\",\\\"tips\\\":\\\"\\\"}]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"\",\"optionsField\":\"\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '[]', '[]', 'base', '`allow` = ?', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('5', '2', 'columnId', '所属栏目', 'select', '0', '', '', '15', '0', '', '0', '{\"headerText\":\"请选择栏目\",\"headerValue\":\"\",\"optionsType\":\"2\",\"options\":\"[]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"select id,name from @pf_column\",\"optionsField\":\"id,name\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '[]', '[]', 'base', '`columnId` = ?', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('6', '3', 'name', 'TAG名称', 'text', '0', '', '', '10', '0', '', '0', null, '[]', '', '', '', '[]', '[]', 'base', '`name` like concat(\'%\',?,\'%\')', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('7', '3', 'allow', '是否启用', 'select', '0', '', '', '20', '0', '', '0', '{\"headerText\":\"全部\",\"headerValue\":\"\",\"optionsType\":\"1\",\"options\":\"[{\\\"value\\\":\\\"1\\\",\\\"text\\\":\\\"启用\\\",\\\"tips\\\":\\\"\\\"},{\\\"value\\\":\\\"0\\\",\\\"text\\\":\\\"禁用\\\",\\\"tips\\\":\\\"\\\"}]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"\",\"optionsField\":\"\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '[]', '[]', 'base', '`allow` = ?', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('8', '4', 'name', 'TAG名称', 'text', '0', '', '', '10', '0', '', '0', null, '[]', '', '', '', '[]', '[]', 'base', '`name` like concat(\'%\',?,\'%\')', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('9', '4', 'allow', '是否启用', 'select', '0', '', '', '20', '0', '', '0', '{\"headerText\":\"全部\",\"headerValue\":\"\",\"optionsType\":\"1\",\"options\":\"[{\\\"value\\\":\\\"1\\\",\\\"text\\\":\\\"启用\\\",\\\"tips\\\":\\\"\\\"},{\\\"value\\\":\\\"0\\\",\\\"text\\\":\\\"禁用\\\",\\\"tips\\\":\\\"\\\"}]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"\",\"optionsField\":\"\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '[]', '[]', 'base', '`allow` = ?', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('10', '5', 'title', '文章标题', 'text', '0', '', '', '10', '0', '', '0', null, '[]', '', '', '', '[]', '[]', 'base', '`title` like concat(\'%\',?,\'%\')', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('11', '5', 'columnCategory', '栏目类别', 'linkage', '0', '', '', '20', '0', '', '0', '{\"dataSource\":\"^\\/admin\\/Index\\/linkage\",\"dataMethod\":\"get\",\"dataLevel\":2,\"dataHeader\":\"[{\\\"name\\\":\\\"选择栏目\\\"},{\\\"name\\\":\\\"选择类别\\\"}]\",\"names\":\"[{\\\"field\\\":\\\"columnId\\\",\\\"type\\\":\\\"int\\\"},{\\\"field\\\":\\\"categoryId\\\",\\\"type\\\":\\\"int\\\"}]\",\"dataValGroup\":\"{\\\"rule\\\":[{\\\"required\\\":true},{\\\"required\\\":true}],\\\"msg\\\":[{\\\"required\\\":\\\"请选择栏目\\\"},{\\\"required\\\":\\\"请选择类别\\\"}]}\",\"isEditDataValGroup\":0,\"editDataValGroup\":\"\"}', '[]', '', '', '', '[]', '[{\"field\":\"columnId\",\"type\":\"int\"},{\"field\":\"categoryId\",\"type\":\"int\"}]', 'base', '`columnCategory` like concat(\'%\',?,\'%\')', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('12', '5', 'isTop', '是否置顶', 'select', '0', '', '', '30', '0', '', '0', '{\"headerText\":\"全部\",\"headerValue\":\"\",\"optionsType\":\"1\",\"options\":\"[{\\\"value\\\":\\\"1\\\",\\\"text\\\":\\\"置顶\\\",\\\"tips\\\":\\\"\\\"},{\\\"value\\\":\\\"0\\\",\\\"text\\\":\\\"默认\\\",\\\"tips\\\":\\\"\\\"}]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"\",\"optionsField\":\"\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '[]', '[]', 'base', '`isTop` = ?', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('13', '5', 'allow', '是否审核', 'select', '0', '', '', '40', '0', '', '0', '{\"headerText\":\"全部\",\"headerValue\":\"\",\"optionsType\":\"1\",\"options\":\"[{\\\"value\\\":\\\"1\\\",\\\"text\\\":\\\"启用\\\",\\\"tips\\\":\\\"\\\"},{\\\"value\\\":\\\"0\\\",\\\"text\\\":\\\"禁用\\\",\\\"tips\\\":\\\"\\\"}]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"\",\"optionsField\":\"\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '[]', '[]', 'base', '`allow` = ?', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('14', '8', 'name', '链接名称', 'text', '0', '', '', '10', '0', '', '0', null, '[]', '', '', '', '[]', '[]', 'base', '`name` like concat(\'%\',?,\'%\')', '2', 'string');
INSERT INTO `sl_tool_search` VALUES ('15', '8', 'allow', '是否启用', 'select', '0', '', '', '20', '0', '', '0', '{\"headerText\":\"全部\",\"headerValue\":\"\",\"optionsType\":\"1\",\"options\":\"[{\\\"value\\\":\\\"1\\\",\\\"text\\\":\\\"启用\\\",\\\"tips\\\":\\\"\\\"},{\\\"value\\\":\\\"0\\\",\\\"text\\\":\\\"禁用\\\",\\\"tips\\\":\\\"\\\"}]\",\"optionsMethod\":\"req\",\"optionsParam\":\"\",\"optionsSql\":\"\",\"optionsField\":\"\",\"dataOptions\":\"\",\"configName\":\"\"}', '[]', '', '', '', '[]', '[]', 'base', '`allow` = ?', '2', 'string');
