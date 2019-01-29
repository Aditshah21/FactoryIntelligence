/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.0.27-community-nt : Database - factory_intelligence
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`factory_intelligence` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `factory_intelligence`;

/*Table structure for table `casetable` */

DROP TABLE IF EXISTS `casetable`;

CREATE TABLE `casetable` (
  `id` int(11) NOT NULL auto_increment,
  `caseDescription` varchar(255) default NULL,
  `caseName` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `casetable` */

insert  into `casetable`(`id`,`caseDescription`,`caseName`) values (1,'asdasa51as3210652','adad'),(2,'idsfguhdui','dfhbv');

/*Table structure for table `complaintable` */

DROP TABLE IF EXISTS `complaintable`;

CREATE TABLE `complaintable` (
  `id` int(11) NOT NULL auto_increment,
  `complainDescription` varchar(255) default NULL,
  `complainName` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaintable` */

insert  into `complaintable`(`id`,`complainDescription`,`complainName`) values (1,'wxyz','abcd'),(2,'sdcldskbvd\r\n','hi');

/*Table structure for table `csvtable` */

DROP TABLE IF EXISTS `csvtable`;

CREATE TABLE `csvtable` (
  `id` int(11) NOT NULL auto_increment,
  `csvName` varchar(255) default NULL,
  `csvPath` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `csvtable` */

insert  into `csvtable`(`id`,`csvName`,`csvPath`) values (1,'case.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(2,'complain.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(3,'case.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(4,'complain.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(5,'dataset.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(6,'post.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(7,'case.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(8,'complain.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(9,'dataset.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(10,'post.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(11,'case.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(12,'complain.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs'),(13,'dataset.csv','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\CSVs');

/*Table structure for table `filetable` */

DROP TABLE IF EXISTS `filetable`;

CREATE TABLE `filetable` (
  `id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filetable` */

insert  into `filetable`(`id`,`filename`,`path`) values (4,'u.txt','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\Factory_Intelligence\\docs'),(5,'Screenshot (2).png','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\Factory_Intelligence\\docs'),(6,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\Factory_Intelligence\\docs');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `loginId` int(11) NOT NULL auto_increment,
  `enable` varchar(255) default NULL,
  `passWord` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `userName` varchar(255) default NULL,
  PRIMARY KEY  (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`loginId`,`enable`,`passWord`,`role`,`userName`) values (1,'1','admin','ROLE_ADMIN','admin');

/*Table structure for table `posttable` */

DROP TABLE IF EXISTS `posttable`;

CREATE TABLE `posttable` (
  `id` int(11) NOT NULL auto_increment,
  `postDescription` varchar(255) default NULL,
  `postName` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `posttable` */

insert  into `posttable`(`id`,`postDescription`,`postName`) values (1,'assddfcdsf5','ad'),(2,'xzxzx','dvf12111111/fvsfvdf65641651vcsdcsc'),(3,'rrr','651vcsdcsc');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `registerid` int(11) NOT NULL auto_increment,
  `Address` varchar(255) default NULL,
  `Email` varchar(255) default NULL,
  `Gender` varchar(255) default NULL,
  `fileName` varchar(255) default NULL,
  `firstName` varchar(255) default NULL,
  `lastName` varchar(255) default NULL,
  `mobileNumber` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  `loginVO_loginId` int(11) default NULL,
  PRIMARY KEY  (`registerid`),
  KEY `FK_2h881b9a1aw7u5bfixp2yqyft` (`loginVO_loginId`),
  CONSTRAINT `FK_2h881b9a1aw7u5bfixp2yqyft` FOREIGN KEY (`loginVO_loginId`) REFERENCES `login` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`registerid`,`Address`,`Email`,`Gender`,`fileName`,`firstName`,`lastName`,`mobileNumber`,`path`,`loginVO_loginId`) values (1,'G/10,Sabar Flats,Narayanagar Road,Paldi,Ahmedabad-380007','aditshah26@gmail.com','Male','HIT_7656.JPG','Adit','Shah','9978758769','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\Factory_Intelligence\\ProfilePics',1);

/*Table structure for table `testingtable` */

DROP TABLE IF EXISTS `testingtable`;

CREATE TABLE `testingtable` (
  `id` int(11) NOT NULL auto_increment,
  `picName` varchar(255) default NULL,
  `picPath` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testingtable` */

insert  into `testingtable`(`id`,`picName`,`picPath`) values (1,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(2,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(3,'workman.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(4,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(5,'close.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(6,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(7,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(8,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(9,'close.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(10,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(11,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(12,'man.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(13,'Photo(1).jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(14,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(15,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(16,'Photo.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing'),(17,'portrait-confident-factory-worker-standing-arms-crossed-29668228.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\testing');

/*Table structure for table `worker_objectdetection` */

DROP TABLE IF EXISTS `worker_objectdetection`;

CREATE TABLE `worker_objectdetection` (
  `id` int(50) NOT NULL auto_increment,
  `img_name` varchar(10) default NULL,
  `img_path` varchar(255) default NULL,
  `Helmet_Detect` varchar(20) default NULL,
  `Gloves_Detect` varchar(20) default NULL,
  `Uniform_Detect` varchar(20) default NULL,
  `Shoes_Detect` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `worker_objectdetection` */

insert  into `worker_objectdetection`(`id`,`img_name`,`img_path`,`Helmet_Detect`,`Gloves_Detect`,`Uniform_Detect`,`Shoes_Detect`) values (1,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images','Not Helmet: 84.67%','Gloves: 53.05%','Uniform: 99.69%','Not Shoes: 72.70%'),(2,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images','Not Helmet: 87.74%','Gloves: 90.47%','Uniform: 85.55%','Not Shoes: 74.79%'),(3,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images','Not Helmet: 87.74%','Gloves: 90.47%','Uniform: 85.55%','Not Shoes: 74.79%'),(4,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images','Not Helmet: 87.74%','Gloves: 90.47%','Uniform: 85.55%','Not Shoes: 74.79%'),(5,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images','Not Helmet: 84.67%','Gloves: 53.05%','Uniform: 99.69%','Not Shoes: 72.70%'),(6,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images\\conf.jpg','Not Helmet: 84.67%','Gloves: 53.05%','Uniform: 99.69%','Not Shoes: 72.70%'),(7,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images\\{}','Not Helmet: 84.67%','Gloves: 53.05%','Uniform: 99.69%','Not Shoes: 72.70%'),(8,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images','Not Helmet: 84.67%','Gloves: 53.05%','Uniform: 99.69%','Not Shoes: 72.70%'),(9,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images','Not Helmet: 84.67%','Gloves: 53.05%','Uniform: 99.69%','Not Shoes: 72.70%'),(10,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images\\{}','Not Helmet: 87.74%','Gloves: 90.47%','Uniform: 85.55%','Not Shoes: 74.79%'),(11,'conf.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images\\{}','Not Helmet: 84.67%','Gloves: 53.05%','Uniform: 99.69%','Not Shoes: 72.70%'),(12,'crop.jpg','C:\\Users\\Adit Shah\\Desktop\\WorkspaceDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\Factory_Intelligence\\images\\{}','Not Helmet: 87.74%','Gloves: 90.47%','Uniform: 85.55%','Not Shoes: 74.79%');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
