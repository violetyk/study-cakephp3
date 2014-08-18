/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost
 Source Database       : ldgourmet

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : utf-8

 Date: 08/19/2014 07:46:57 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `areas`
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pref_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `name_kana` varchar(255) DEFAULT NULL,
  `parent1` int(10) unsigned DEFAULT NULL,
  `parent2` int(10) unsigned DEFAULT NULL,
  `similar` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `prefs`
-- ----------------------------
DROP TABLE IF EXISTS `prefs`;
CREATE TABLE `prefs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `rating_votes`
-- ----------------------------
DROP TABLE IF EXISTS `rating_votes`;
CREATE TABLE `rating_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `raiting_id` int(10) unsigned DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`raiting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ratings`
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(10) unsigned DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `food` int(11) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `atmosphere` int(11) DEFAULT NULL,
  `cost_performance` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `purpose` text,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `restaurants`
-- ----------------------------
DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `alphabet` varchar(255) DEFAULT NULL,
  `name_kana` varchar(255) DEFAULT NULL,
  `pref_id` int(10) unsigned DEFAULT NULL,
  `station_id1` int(10) unsigned DEFAULT NULL,
  `station_time1` int(11) DEFAULT NULL,
  `station_distance1` int(11) DEFAULT NULL,
  `station_id2` int(10) unsigned DEFAULT NULL,
  `station_time2` int(11) DEFAULT NULL,
  `station_distance2` int(11) DEFAULT NULL,
  `station_id3` int(10) unsigned DEFAULT NULL,
  `station_time3` int(11) DEFAULT NULL,
  `station_distance3` int(11) DEFAULT NULL,
  `category_id1` int(10) unsigned DEFAULT NULL,
  `category_id2` int(10) unsigned DEFAULT NULL,
  `category_id3` int(10) unsigned DEFAULT NULL,
  `category_id4` int(10) unsigned DEFAULT NULL,
  `category_id5` int(10) unsigned DEFAULT NULL,
  `zip` varchar(8) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latlon` geometry DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `open_morning` tinyint(1) DEFAULT NULL,
  `open_lunch` tinyint(1) DEFAULT NULL,
  `open_late` tinyint(1) DEFAULT NULL,
  `photo_count` int(11) DEFAULT NULL,
  `special_count` int(11) DEFAULT NULL,
  `menu_count` int(11) DEFAULT NULL,
  `fun_count` int(11) DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `closed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `stations`
-- ----------------------------
DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `int` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pref_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_kana` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`int`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
