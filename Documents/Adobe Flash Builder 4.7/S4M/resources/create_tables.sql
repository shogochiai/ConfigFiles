-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- ホスト: localhost
-- 生成日時: 2013 年 3 月 27 日 09:19
-- サーバのバージョン: 5.5.29
-- PHP のバージョン: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `tobiume_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `fuji`
--

CREATE TABLE `fuji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score_version_id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `kana` varchar(127) NOT NULL,
  `interpret` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `score_version_id` (`score_version_id`),
  KEY `name` (`name`),
  KEY `kana` (`kana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `fuji_class_category`
--

CREATE TABLE `fuji_class_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `fuji_class_category_version`
--

CREATE TABLE `fuji_class_category_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `last_updated_user_id` int(11) NOT NULL,
  `version_comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `fuji_class_item`
--

CREATE TABLE `fuji_class_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `interpret` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version_id` (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `fuji_data`
--

CREATE TABLE `fuji_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score_version_id` int(11) NOT NULL,
  `fuji_class_category_version_id` int(11) DEFAULT NULL,
  `layout_cell_w` int(11) NOT NULL,
  `layout_cell_h` int(11) NOT NULL,
  `layout_fuji_w` int(11) NOT NULL,
  `layout_fuji_h` int(11) NOT NULL,
  `layout_percents_w` text NOT NULL,
  `layout_percents_h` text NOT NULL,
  `layout_center_x` mediumint(9) NOT NULL,
  `layout_center_y` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `score_version_id` (`score_version_id`),
  KEY `fuji_class_category_version_id` (`fuji_class_category_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `last_updated_user_id` int(11) DEFAULT NULL,
  `ident_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_id` (`ident_name`),
  KEY `last_updated_user_id` (`last_updated_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `score_images`
--

CREATE TABLE `score_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score_uid` int(11) NOT NULL,
  `filename` varchar(127) NOT NULL,
  `image` longblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filename` (`filename`),
  KEY `score_uid` (`score_uid`),
  KEY `score_uid_2` (`score_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `score_versions`
--

CREATE TABLE `score_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score_uid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `last_updated_user_id` int(11) DEFAULT NULL,
  `songname` varchar(255) NOT NULL DEFAULT '',
  `subtitle1` varchar(255) DEFAULT '',
  `subtitle2` varchar(255) DEFAULT '',
  `songname_kana` varchar(255) DEFAULT '',
  `subtitle1_kana` varchar(255) DEFAULT '',
  `subtitle2_kana` varchar(255) DEFAULT '',
  `source` varchar(255) DEFAULT '' COMMENT '出典',
  `publish_place` varchar(128) DEFAULT '' COMMENT '出版地',
  `holder` varchar(128) DEFAULT '' COMMENT '所蔵',
  `publisher` varchar(128) DEFAULT '' COMMENT '出版者',
  `publish_year` varchar(128) DEFAULT '' COMMENT '刊行年',
  `premiere_year` varchar(128) DEFAULT '' COMMENT '初演年',
  `book_type` varchar(128) DEFAULT '' COMMENT '書型',
  `pages_and_lines` varchar(128) DEFAULT '' COMMENT '巻冊数・行数丁数',
  `remarks` varchar(128) DEFAULT '' COMMENT '備考',
  `freecolumn` text COMMENT '自由項目',
  PRIMARY KEY (`id`),
  KEY `score_uid` (`score_uid`),
  KEY `songname` (`songname`),
  KEY `subtitle1` (`subtitle1`,`subtitle2`),
  KEY `subtitle2` (`subtitle2`),
  KEY `songname_kana` (`songname_kana`),
  KEY `subtitle1_kana` (`subtitle1_kana`),
  KEY `subtitle2_kana` (`subtitle2_kana`),
  KEY `source` (`source`),
  KEY `publish_place` (`publish_place`),
  KEY `holder` (`holder`),
  KEY `publisher` (`publisher`),
  KEY `publish_year` (`publish_year`),
  KEY `premiere_year` (`premiere_year`),
  KEY `book_type` (`book_type`),
  KEY `pages_and_lines` (`pages_and_lines`),
  KEY `remarks` (`remarks`),
  KEY `last_updated_user_id` (`last_updated_user_id`),
  KEY `last_updated_user_id_2` (`last_updated_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `user_type` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `fuji`
--
ALTER TABLE `fuji`
  ADD CONSTRAINT `fuji_ibfk_1` FOREIGN KEY (`score_version_id`) REFERENCES `score_versions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- テーブルの制約 `fuji_class_item`
--
ALTER TABLE `fuji_class_item`
  ADD CONSTRAINT `fuji_class_item_ibfk_1` FOREIGN KEY (`version_id`) REFERENCES `fuji_class_category_version` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- テーブルの制約 `fuji_data`
--
ALTER TABLE `fuji_data`
  ADD CONSTRAINT `fuji_data_ibfk_2` FOREIGN KEY (`fuji_class_category_version_id`) REFERENCES `fuji_class_category_version` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fuji_data_ibfk_1` FOREIGN KEY (`score_version_id`) REFERENCES `score_versions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- テーブルの制約 `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`last_updated_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- テーブルの制約 `score_images`
--
ALTER TABLE `score_images`
  ADD CONSTRAINT `score_images_ibfk_1` FOREIGN KEY (`score_uid`) REFERENCES `scores` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- テーブルの制約 `score_versions`
--
ALTER TABLE `score_versions`
  ADD CONSTRAINT `score_versions_ibfk_3` FOREIGN KEY (`last_updated_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `score_versions_ibfk_1` FOREIGN KEY (`score_uid`) REFERENCES `scores` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
