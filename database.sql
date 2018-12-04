/*
SQLyog Community v12.2.6 (64 bit)
MySQL - 10.1.25-MariaDB : Database - simkonstruksi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`simkonstruksi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `simkonstruksi`;

/*Table structure for table `detail_proyek` */

DROP TABLE IF EXISTS `detail_proyek`;

CREATE TABLE `detail_proyek` (
  `detail_id` int(20) NOT NULL AUTO_INCREMENT,
  `proyek_id` int(20) DEFAULT NULL,
  `master_id` int(20) DEFAULT NULL,
  `peg_id` int(20) DEFAULT NULL,
  `detail_material` varchar(50) DEFAULT NULL,
  `detail_pegawai` varchar(50) DEFAULT NULL,
  `detail_lama` datetime DEFAULT NULL,
  `detail_status` int(20) DEFAULT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detail_proyek` */

/*Table structure for table `history_pembelian` */

DROP TABLE IF EXISTS `history_pembelian`;

CREATE TABLE `history_pembelian` (
  `his_id` int(20) NOT NULL AUTO_INCREMENT,
  `master_id` int(20) DEFAULT NULL,
  `his_jumlah` int(20) DEFAULT NULL,
  `his_harga` int(20) DEFAULT NULL,
  `his_tanggal` date DEFAULT NULL,
  `his_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`his_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `history_pembelian` */

/*Table structure for table `master_material` */

DROP TABLE IF EXISTS `master_material`;

CREATE TABLE `master_material` (
  `master_id` int(20) NOT NULL AUTO_INCREMENT,
  `master_nama` varchar(50) DEFAULT NULL,
  `master_stok` int(20) DEFAULT NULL,
  `master_status` int(10) DEFAULT NULL,
  `master_tipe` int(20) DEFAULT NULL,
  PRIMARY KEY (`master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `master_material` */

/*Table structure for table `master_proyek` */

DROP TABLE IF EXISTS `master_proyek`;

CREATE TABLE `master_proyek` (
  `proyek_id` int(20) NOT NULL AUTO_INCREMENT,
  `proyek_nama` varchar(50) DEFAULT NULL,
  `proyek_awal` datetime DEFAULT NULL,
  `proyek_akhir` datetime DEFAULT NULL,
  `proyek_alamat` text,
  `proyek_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`proyek_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `master_proyek` */

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `peg_id` int(20) NOT NULL AUTO_INCREMENT,
  `peg_nama` varchar(50) DEFAULT NULL,
  `peg_jabatan` varchar(50) DEFAULT NULL,
  `peg_hp` varchar(30) DEFAULT NULL,
  `peg_alamat` text,
  `peg_tingkat` varchar(50) DEFAULT NULL,
  `peg_status` int(20) DEFAULT NULL,
  PRIMARY KEY (`peg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pegawai` */

insert  into `pegawai`(`peg_id`,`peg_nama`,`peg_jabatan`,`peg_hp`,`peg_alamat`,`peg_tingkat`,`peg_status`) values 
(1,'we','we','we','esdf','1',1);

/*Table structure for table `progres` */

DROP TABLE IF EXISTS `progres`;

CREATE TABLE `progres` (
  `progres_id` int(20) NOT NULL AUTO_INCREMENT,
  `proyek_id` int(20) DEFAULT NULL,
  `progres_keterangan` varchar(100) DEFAULT NULL,
  `progres_minggu` datetime DEFAULT NULL,
  `progres_status` int(20) DEFAULT NULL,
  PRIMARY KEY (`progres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `progres` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`id_pegawai`) values 
(1,'admin','21232f297a57a5a743894a0e4a801fc3',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
