-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 
-- 服务器版本: 5.7.26
-- PHP 版本: 7.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `xn4`
--

-- --------------------------------------------------------

--
-- 表的结构 `bbs_attach`
--

CREATE TABLE IF NOT EXISTS `bbs_attach` (
  `aid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `filesize` int(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `filename` char(120) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `orgfilename` char(120) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `filetype` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `comment` char(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `credits` int(11) NOT NULL DEFAULT '0',
  `golds` int(11) NOT NULL DEFAULT '0',
  `rmbs` int(11) NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_cache`
--

CREATE TABLE IF NOT EXISTS `bbs_cache` (
  `k` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `v` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`k`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `bbs_cache`
--

INSERT INTO `bbs_cache` (`k`, `v`, `expiry`) VALUES
('bbs_forumlist', '{\n    "1": {\n        "fid": "1",\n        "name": "默认版块",\n        "rank": "0",\n        "threads": "0",\n        "todayposts": "0",\n        "todaythreads": "0",\n        "brief": "默认版块介绍",\n        "announcement": "",\n        "accesson": "0",\n        "orderby": "0",\n        "create_date": "0",\n        "icon": "0",\n        "moduids": "",\n        "seo_title": "",\n        "seo_keywords": "",\n        "create_date_fmt": "1970-1-1",\n        "icon_url": "view/img/forum.png",\n        "accesslist": [],\n        "modlist": []\n    }\n}', 1620474951),
('bbs_grouplist', '{\n    "0": {\n        "gid": "0",\n        "name": "游客组",\n        "creditsfrom": "0",\n        "creditsto": "0",\n        "allowread": "1",\n        "allowthread": "0",\n        "allowpost": "1",\n        "allowattach": "0",\n        "allowdown": "1",\n        "allowtop": "0",\n        "allowupdate": "0",\n        "allowdelete": "0",\n        "allowmove": "0",\n        "allowbanuser": "0",\n        "allowdeleteuser": "0",\n        "allowviewip": "0"\n    },\n    "1": {\n        "gid": "1",\n        "name": "管理员组",\n        "creditsfrom": "0",\n        "creditsto": "0",\n        "allowread": "1",\n        "allowthread": "1",\n        "allowpost": "1",\n        "allowattach": "1",\n        "allowdown": "1",\n        "allowtop": "1",\n        "allowupdate": "1",\n        "allowdelete": "1",\n        "allowmove": "1",\n        "allowbanuser": "1",\n        "allowdeleteuser": "1",\n        "allowviewip": "1"\n    },\n    "2": {\n        "gid": "2",\n        "name": "超级版主组",\n        "creditsfrom": "0",\n        "creditsto": "0",\n        "allowread": "1",\n        "allowthread": "1",\n        "allowpost": "1",\n        "allowattach": "1",\n        "allowdown": "1",\n        "allowtop": "1",\n        "allowupdate": "1",\n        "allowdelete": "1",\n        "allowmove": "1",\n        "allowbanuser": "1",\n        "allowdeleteuser": "1",\n        "allowviewip": "1"\n    },\n    "4": {\n        "gid": "4",\n        "name": "版主组",\n        "creditsfrom": "0",\n        "creditsto": "0",\n        "allowread": "1",\n        "allowthread": "1",\n        "allowpost": "1",\n        "allowattach": "1",\n        "allowdown": "1",\n        "allowtop": "1",\n        "allowupdate": "1",\n        "allowdelete": "1",\n        "allowmove": "1",\n        "allowbanuser": "1",\n        "allowdeleteuser": "0",\n        "allowviewip": "1"\n    },\n    "5": {\n        "gid": "5",\n        "name": "实习版主组",\n        "creditsfrom": "0",\n        "creditsto": "0",\n        "allowread": "1",\n        "allowthread": "1",\n        "allowpost": "1",\n        "allowattach": "1",\n        "allowdown": "1",\n        "allowtop": "1",\n        "allowupdate": "1",\n        "allowdelete": "0",\n        "allowmove": "1",\n        "allowbanuser": "0",\n        "allowdeleteuser": "0",\n        "allowviewip": "0"\n    },\n    "6": {\n        "gid": "6",\n        "name": "待验证用户组",\n        "creditsfrom": "0",\n        "creditsto": "0",\n        "allowread": "1",\n        "allowthread": "0",\n        "allowpost": "1",\n        "allowattach": "0",\n        "allowdown": "1",\n        "allowtop": "0",\n        "allowupdate": "0",\n        "allowdelete": "0",\n        "allowmove": "0",\n        "allowbanuser": "0",\n        "allowdeleteuser": "0",\n        "allowviewip": "0"\n    },\n    "7": {\n        "gid": "7",\n        "name": "禁止用户组",\n        "creditsfrom": "0",\n        "creditsto": "0",\n        "allowread": "0",\n        "allowthread": "0",\n        "allowpost": "0",\n        "allowattach": "0",\n        "allowdown": "0",\n        "allowtop": "0",\n        "allowupdate": "0",\n        "allowdelete": "0",\n        "allowmove": "0",\n        "allowbanuser": "0",\n        "allowdeleteuser": "0",\n        "allowviewip": "0"\n    },\n    "101": {\n        "gid": "101",\n        "name": "一级用户组",\n        "creditsfrom": "0",\n        "creditsto": "10000000",\n        "allowread": "1",\n        "allowthread": "1",\n        "allowpost": "1",\n        "allowattach": "1",\n        "allowdown": "1",\n        "allowtop": "0",\n        "allowupdate": "0",\n        "allowdelete": "0",\n        "allowmove": "0",\n        "allowbanuser": "0",\n        "allowdeleteuser": "0",\n        "allowviewip": "0"\n    }\n}', 0),
('bbs_runtime', '{\n    "users": 1,\n    "posts": 0,\n    "threads": 0,\n    "todayusers": 0,\n    "todayposts": 0,\n    "todaythreads": 0,\n    "onlines": 1,\n    "cron_1_last_date": 1620474887,\n    "cron_2_last_date": 1620403200\n}', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bbs_forum`
--

CREATE TABLE IF NOT EXISTS `bbs_forum` (
  `fid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(16) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `threads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todayposts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todaythreads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `brief` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `announcement` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `accesson` int(11) unsigned NOT NULL DEFAULT '0',
  `orderby` tinyint(11) NOT NULL DEFAULT '0',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `icon` int(11) unsigned NOT NULL DEFAULT '0',
  `moduids` char(120) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `seo_title` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `seo_keywords` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bbs_forum`
--

INSERT INTO `bbs_forum` (`fid`, `name`, `rank`, `threads`, `todayposts`, `todaythreads`, `brief`, `announcement`, `accesson`, `orderby`, `create_date`, `icon`, `moduids`, `seo_title`, `seo_keywords`) VALUES
(1, '默认版块', 0, 0, 0, 0, '默认版块介绍', '', 0, 0, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `bbs_forum_access`
--

CREATE TABLE IF NOT EXISTS `bbs_forum_access` (
  `fid` int(11) unsigned NOT NULL DEFAULT '0',
  `gid` int(11) unsigned NOT NULL DEFAULT '0',
  `allowread` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowthread` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowattach` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowdown` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_group`
--

CREATE TABLE IF NOT EXISTS `bbs_group` (
  `gid` smallint(6) unsigned NOT NULL,
  `name` char(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `creditsfrom` int(11) NOT NULL DEFAULT '0',
  `creditsto` int(11) NOT NULL DEFAULT '0',
  `allowread` int(11) NOT NULL DEFAULT '0',
  `allowthread` int(11) NOT NULL DEFAULT '0',
  `allowpost` int(11) NOT NULL DEFAULT '0',
  `allowattach` int(11) NOT NULL DEFAULT '0',
  `allowdown` int(11) NOT NULL DEFAULT '0',
  `allowtop` int(11) NOT NULL DEFAULT '0',
  `allowupdate` int(11) NOT NULL DEFAULT '0',
  `allowdelete` int(11) NOT NULL DEFAULT '0',
  `allowmove` int(11) NOT NULL DEFAULT '0',
  `allowbanuser` int(11) NOT NULL DEFAULT '0',
  `allowdeleteuser` int(11) NOT NULL DEFAULT '0',
  `allowviewip` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `bbs_group`
--

INSERT INTO `bbs_group` (`gid`, `name`, `creditsfrom`, `creditsto`, `allowread`, `allowthread`, `allowpost`, `allowattach`, `allowdown`, `allowtop`, `allowupdate`, `allowdelete`, `allowmove`, `allowbanuser`, `allowdeleteuser`, `allowviewip`) VALUES
(0, '游客组', 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(1, '管理员组', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, '超级版主组', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, '版主组', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(5, '实习版主组', 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0),
(6, '待验证用户组', 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(7, '禁止用户组', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, '一级用户组', 0, 10000000, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bbs_kv`
--

CREATE TABLE IF NOT EXISTS `bbs_kv` (
  `k` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `v` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`k`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_modlog`
--

CREATE TABLE IF NOT EXISTS `bbs_modlog` (
  `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rmbs` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `action` char(16) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`),
  KEY `uid` (`uid`,`logid`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_mypost`
--

CREATE TABLE IF NOT EXISTS `bbs_mypost` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`pid`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_mythread`
--

CREATE TABLE IF NOT EXISTS `bbs_mythread` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_post`
--

CREATE TABLE IF NOT EXISTS `bbs_post` (
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `isfirst` int(11) unsigned NOT NULL DEFAULT '0',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `userip` int(11) unsigned NOT NULL DEFAULT '0',
  `images` smallint(6) NOT NULL DEFAULT '0',
  `files` smallint(6) NOT NULL DEFAULT '0',
  `doctype` tinyint(3) NOT NULL DEFAULT '0',
  `quotepid` int(11) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message_fmt` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `tid` (`tid`,`pid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_queue`
--

CREATE TABLE IF NOT EXISTS `bbs_queue` (
  `queueid` int(11) unsigned NOT NULL DEFAULT '0',
  `v` int(11) NOT NULL DEFAULT '0',
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `queueid` (`queueid`,`v`),
  KEY `expiry` (`expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_session`
--

CREATE TABLE IF NOT EXISTS `bbs_session` (
  `sid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `fid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `url` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `useragent` char(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bigdata` tinyint(1) NOT NULL DEFAULT '0',
  `last_date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `ip` (`ip`),
  KEY `fid` (`fid`),
  KEY `uid_last_date` (`uid`,`last_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `bbs_session`
--

INSERT INTO `bbs_session` (`sid`, `uid`, `fid`, `url`, `ip`, `useragent`, `data`, `bigdata`, `last_date`) VALUES
('bpb64kfpo95mv1bktahtprmg0n', 1, 0, '', 2130706433, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '', 0, 1620474897);

-- --------------------------------------------------------

--
-- 表的结构 `bbs_session_data`
--

CREATE TABLE IF NOT EXISTS `bbs_session_data` (
  `sid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `last_date` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_table_day`
--

CREATE TABLE IF NOT EXISTS `bbs_table_day` (
  `year` smallint(11) unsigned NOT NULL DEFAULT '0' COMMENT '年',
  `month` tinyint(11) unsigned NOT NULL DEFAULT '0' COMMENT '月',
  `day` tinyint(11) unsigned NOT NULL DEFAULT '0' COMMENT '日',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '时间戳',
  `table` char(16) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT '表名',
  `maxid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最大ID',
  `count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '总数',
  PRIMARY KEY (`year`,`month`,`day`,`table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_thread`
--

CREATE TABLE IF NOT EXISTS `bbs_thread` (
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `userip` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` char(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `last_date` int(11) unsigned NOT NULL DEFAULT '0',
  `views` int(11) unsigned NOT NULL DEFAULT '0',
  `posts` int(11) unsigned NOT NULL DEFAULT '0',
  `images` tinyint(6) NOT NULL DEFAULT '0',
  `files` tinyint(6) NOT NULL DEFAULT '0',
  `mods` tinyint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `firstpid` int(11) unsigned NOT NULL DEFAULT '0',
  `lastuid` int(11) unsigned NOT NULL DEFAULT '0',
  `lastpid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `lastpid` (`lastpid`),
  KEY `fid` (`fid`,`tid`),
  KEY `fid_2` (`fid`,`lastpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_thread_top`
--

CREATE TABLE IF NOT EXISTS `bbs_thread_top` (
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `top` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `top` (`top`,`tid`),
  KEY `fid` (`fid`,`top`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bbs_user`
--

CREATE TABLE IF NOT EXISTS `bbs_user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `gid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '用户组编号',
  `email` char(40) NOT NULL DEFAULT '' COMMENT '邮箱',
  `username` char(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `realname` char(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `password_sms` char(16) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(16) NOT NULL DEFAULT '' COMMENT '密码混杂',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `qq` char(15) NOT NULL DEFAULT '' COMMENT 'QQ',
  `threads` int(11) NOT NULL DEFAULT '0' COMMENT '发帖数',
  `posts` int(11) NOT NULL DEFAULT '0' COMMENT '回帖数',
  `credits` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `golds` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `rmbs` int(11) NOT NULL DEFAULT '0' COMMENT '人民币',
  `create_ip` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时IP',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `login_ip` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录时IP',
  `login_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `logins` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户最后更新图像时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bbs_user`
--

INSERT INTO `bbs_user` (`uid`, `gid`, `email`, `username`, `realname`, `password`, `password_sms`, `salt`, `mobile`, `qq`, `threads`, `posts`, `credits`, `golds`, `rmbs`, `create_ip`, `create_date`, `login_ip`, `login_date`, `logins`, `avatar`) VALUES
(1, 1, 'admin@admin.com', 'admin', '', '640000266c16283898f28e26074a476d', '', '44MTRBA93RX5MRU4', '', '', 0, 0, 0, 0, 0, 2130706433, 1620474879, 2130706433, 1620474896, 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
