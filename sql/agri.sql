/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.1.48-community : Database - agriculture
*********************************************************************
Server version : 5.1.48-community
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `agriculture`;

USE `agriculture`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`name`,`email`,`subject`,`message`) values ('akshu','aa@gmail.com','about not issued crops ','i oreder some crops not issued');

/*Table structure for table `oprod` */

DROP TABLE IF EXISTS `oprod`;

CREATE TABLE `oprod` (
  `pname` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `cprice` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oprod` */

insert  into `oprod`(`pname`,`cname`,`cprice`,`addr`,`mobile`) values ('wheat','Akshatha S Gaddi','67878','dvg','9071256734');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`username`,`email`,`mobile`,`addr`,`pname`,`date`,`price`,`quantity`,`total`) values ('aa','aa@gmail.com','9071256734','dvg\r\ndvg',NULL,NULL,'33','4','132'),('aa','aa@gmail.com','9071256734','dvg\r\ndvg','paddy',NULL,'300','2','600'),('Akshu','aa@gmail.com','9071256734','dvg\r\ndvg','wheat','2020-05-29','67878','1','67878'),('a','aa@gmail.com','9071256734','dvg\r\ndvg','wheat','2020-05-29','67878','5','339390'),('aa','aa@gmail.com','9071256734','dvg\r\ndvg','wheat','2020-05-22','67878','1','67878');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`username`,`password`,`email`,`mobile`) values ('a','a','aa@gmail.com','a'),('Akshu','aa','akshthagaddi@gmail.com','9071256734'),('aa','aa','aa@gmail.com','9071256734'),('Akshu','aa','aa@gmail.com','9071256734');

/*Table structure for table `training` */

DROP TABLE IF EXISTS `training`;

CREATE TABLE `training` (
  `trainingname` varchar(100) DEFAULT NULL,
  `trainername` varchar(100) DEFAULT NULL,
  `dur` varchar(100) DEFAULT NULL,
  `dfro` varchar(100) DEFAULT NULL,
  `dto` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `about` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `training` */

insert  into `training`(`trainingname`,`trainername`,`dur`,`dfro`,`dto`,`addr`,`about`) values ('akshatha','aksh@gmail.com','crops','01-11-2020','kar','dvg','india');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
