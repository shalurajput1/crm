-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema crm
--

CREATE DATABASE IF NOT EXISTS crm;
USE crm;

--
-- Definition of table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `b_id` varchar(10) NOT NULL,
  `invoice` varchar(10) default NULL,
  `us` varchar(17) default NULL,
  `mid` varchar(10) NOT NULL,
  `vid` varchar(10) NOT NULL,
  `cid` varchar(17) default NULL,
  `ind` date NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `userid` varchar(10) NOT NULL,
  `terr` varchar(25) NOT NULL,
  PRIMARY KEY  USING BTREE (`b_id`),
  KEY `FK_bill_2` USING BTREE (`mid`),
  KEY `FK_bill_3` (`vid`),
  KEY `FK_bill_1` (`us`),
  KEY `FK_bill_6` (`cid`),
  KEY `FK_bill_5` USING BTREE (`userid`),
  CONSTRAINT `FK_bill_1` FOREIGN KEY (`us`) REFERENCES `customer` (`us`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_bill_2` FOREIGN KEY (`mid`) REFERENCES `porduct_id` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_bill_3` FOREIGN KEY (`vid`) REFERENCES `varient` (`vid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_bill_5` FOREIGN KEY (`userid`) REFERENCES `sales` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_bill_6` FOREIGN KEY (`cid`) REFERENCES `colors` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` (`b_id`,`invoice`,`us`,`mid`,`vid`,`cid`,`ind`,`amount`,`userid`,`terr`) VALUES 
 ('12wer','1234redf','1234','m014','V061','x00002','2011-04-05',123456,'123456','DELHI'),
 ('34567','0987699','34344234','m008','V031','x00002','2011-05-05',555555,'123456','DELHI');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;


--
-- Definition of table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` varchar(19) NOT NULL,
  `sid` varchar(25) default NULL,
  `city` varchar(35) default NULL,
  PRIMARY KEY  (`city_id`),
  KEY `FK_city_1` (`sid`),
  CONSTRAINT `FK_city_1` FOREIGN KEY (`sid`) REFERENCES `state` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`city_id`,`sid`,`city`) VALUES 
 ('C0004','S002','Guntur'),
 ('C0005','S002','Hyderabad'),
 ('C0006','S002','Karimnagar'),
 ('C0007','S002','Kurnool'),
 ('C0008','S002','Nellore'),
 ('C0009','S002','Nizamabad'),
 ('C0010','S002','Ongole '),
 ('C00100','S018','Khargone'),
 ('C00101','S018','Jabalpur'),
 ('C001010','s019','Beed'),
 ('C001011','s019','Baramati'),
 ('C001012','s019','Mumba'),
 ('C001013','s019','Aurangabad'),
 ('C001014','s019','Akola '),
 ('C001015','s019','Amravati'),
 ('C001016','s019','Nagpur'),
 ('C001017','s019','Pune'),
 ('C001018','s019','Panvel'),
 ('C001019','s019','Nashik'),
 ('C00102','S018','Indore'),
 ('C001020','s019','Nanded'),
 ('C001021','S020','IMPHAL'),
 ('C001022','S021','SHILONG'),
 ('C001023','S022','DIMAPUR'),
 ('C001024','S023','Angul'),
 ('C001025','S023','Sambalpur'),
 ('C001026','S023','Rourkela '),
 ('C001027','S023','Cuttack'),
 ('C001028','S023','Bhubaneswar'),
 ('C001029','S023','Berhampur'),
 ('C00103','s019','Ahmadnagar'),
 ('C001030','S023','Balasore '),
 ('C001031','S024','PONDICHERY'),
 ('C001032','S025','Mohali'),
 ('C001033','S025','Sangrur '),
 ('C001034','S025','Firozpur '),
 ('C001035','S025','Hoshiarpur '),
 ('C001036','S025','Jalandhar'),
 ('C001037','S025','Mandi Gobindgarh'),
 ('C001038','S025','Moga '),
 ('C001039','S025','Ludhiana'),
 ('C00104','s019','Ratnagiri'),
 ('C001040','S025','Muktsar'),
 ('C001041','S025','Nagrota'),
 ('C001042','S025','Nawanshahr'),
 ('C001043','S025','Rupnaga'),
 ('C001044','S025','Pathankot'),
 ('C001045','S025','Patiala'),
 ('C001046','S025','Rajpura'),
 ('C001047','S026','Ajmer'),
 ('C001048','S026','Sriganganagar '),
 ('C001049','S026','Sikar '),
 ('C00105','s019','Latur'),
 ('C001050','S026','Kota '),
 ('C001051','S026','Jodhpur'),
 ('C001052','S026','Jhunjhunu'),
 ('C001053','S026','Jaipur '),
 ('C001054','S026','Chittorgarh'),
 ('C001055','S026','Bikaner '),
 ('C001056','S026','Bhilwara'),
 ('C001057','S026','Bharatpu'),
 ('C001058','S026','Banswara'),
 ('C001059','S026','Alwar'),
 ('C00106','s019','Kolhapur'),
 ('C001060','S026','Pali'),
 ('C001061','S026','Rajsamand'),
 ('C001062','S027','GANGTOK'),
 ('C001063','S028','Chennai'),
 ('C001064','S029','Tirunelveli'),
 ('C001065','S029','Namakkal'),
 ('C001066','S029','Nagercoil'),
 ('C001067','S029','Mallapuram'),
 ('C001068','S029','Madurai'),
 ('C001069','S029','Karur'),
 ('C00107','s019','Jalgaon'),
 ('C001070','S029','Hosur'),
 ('C001072','S029','Erode'),
 ('C001073','S029','Dindigul'),
 ('C001074','S029','Cuddalore'),
 ('C001075','S029','Coimbatore'),
 ('C001076','S029','Salem'),
 ('C001077','S029','Thanjavur'),
 ('C001078','S029','Sivakasi'),
 ('C001079','S030','AGARTALA'),
 ('C00108','s019','Dhule'),
 ('C001080','S031','Agra'),
 ('C001081','S031','Shahjahanpur '),
 ('C001082','S031','Lucknow '),
 ('C001083','S031','Kanpur'),
 ('C001084','S031','Jhansi'),
 ('C001085','S031','Ghaziabad'),
 ('C001086','S031','Gorakhpur'),
 ('C001087','S031','Faizabad'),
 ('C001088','S031','Azamgarh'),
 ('C001089','S031','Bareli'),
 ('C00109','s019','Chandrapur'),
 ('C001090','S031','Allahabad '),
 ('C001091','S031','Aligarh'),
 ('C001092','S031','Meerut'),
 ('C001093','S031','Moradabad'),
 ('C001094','S031','Muzaffarnagar'),
 ('C001095','S031','Noida '),
 ('C001096','S032','Dehradun '),
 ('C001097','S032','Rudrapur'),
 ('C001098','S032','Roorkee'),
 ('C001099','S032','Haldwani'),
 ('C0011','S002','Vishakhapatnam'),
 ('C0012','S002','Warangal'),
 ('C001200','S033','KOLKATA'),
 ('C0013','S002','Tirupati'),
 ('C0014','S002','Vijaywada '),
 ('C0015','S002','Rajahumundry'),
 ('C0016','S002','Nellore '),
 ('C0017','S002','Ongole '),
 ('C0018','S002','Nizamabad '),
 ('C0019','S003','Itanagar'),
 ('C0020','S004','Bongaigaon '),
 ('C00201','S033','Malda'),
 ('C00202','S033','Asansol'),
 ('C00203','S033','Bardhaman'),
 ('C00204','S033','Howrah '),
 ('C00205','S033','Kharagpur'),
 ('C00206','S033','Siliguri'),
 ('C0021','S004','Dibrugarh'),
 ('C0022','S004','Golaghat'),
 ('C0023','S004','Guwahati'),
 ('C0024','S004','Silcharp'),
 ('C0025','S004','Jorhat '),
 ('C0026','S004','Nagaon'),
 ('C0027','S004','North Lakhimpur'),
 ('C0028','S004','Sibsagar'),
 ('C0029','S004','Silchar'),
 ('C003','S002','Bhimavaram'),
 ('C0030','S004','Tejpur'),
 ('C0031','S004','Tinsukia'),
 ('C0032','S004','Nagaon'),
 ('C0033','S004','North Lakhimpur'),
 ('C0034','S004','Sibsagar '),
 ('C0035','S005','BHUTAN'),
 ('C0036','S006','Patna '),
 ('C0037','S006','Begusarai '),
 ('C0038','S006','Bhagalpur '),
 ('C0039','S006','Bodh Gaya'),
 ('C0040','S006','Darbhanga '),
 ('C0041','S006','Muzaffurpur '),
 ('C0042','S007','Chandigarh'),
 ('C0043','S008','Raipur'),
 ('C0044','S006','Ambikapur'),
 ('C0045','S008','Bhilai '),
 ('C0046','S008','Bilaspur'),
 ('C0047','S008','Jagdalpur'),
 ('C0048','S008','KORBA'),
 ('C0049','S009','DAMAN'),
 ('C0050','S010','DADARA'),
 ('C0051','S011','DELHI'),
 ('C0052','S012','GOA'),
 ('C0053','S013','Himmatnagar'),
 ('C0054','S013','Ahmedabad '),
 ('C0055','S013','Anand'),
 ('C0056','S013','Bharuch '),
 ('C0057','S013','Bhavnagar '),
 ('C0058','S013','Bhuj Kuchchh '),
 ('C0059','S013','Gandhi Nagar '),
 ('C0060','S013','Gandhidham'),
 ('C0061','S013','Godhra'),
 ('C0062','S013','Jamnagar'),
 ('C0063','S013','Junagadh '),
 ('C0064','S013','Mahesana'),
 ('C0065','S013','Morbi'),
 ('C0066','S013','Palanpur '),
 ('C0067','S013','Porbandar'),
 ('C0068','S013','Rajkot'),
 ('C0069','S013','Surat'),
 ('C0070','S013','Vadodara'),
 ('C0071','S013','Vapi '),
 ('C0072','S014','Ambala'),
 ('C0073','S014','Kurukshetra'),
 ('C0074','S014','Karnal'),
 ('C0075','S014','Kaithal'),
 ('C0076','S014','Hissar'),
 ('C0077','S014','Gurgaon'),
 ('C0078','S014','Fatehabad '),
 ('C0079','S014','Faridabad '),
 ('C0080','S014','Bhiwani'),
 ('C0081','S015','Hamirpur'),
 ('C0082','S015','Solan '),
 ('C0083','S015','Shimla '),
 ('C0084','S015','Mandi '),
 ('C0085','S016','Jammu'),
 ('C0086','S016','Udhampur'),
 ('C0087','S016','Srinagar'),
 ('C0088','S017','Alleppey'),
 ('C0089','S017','Pallakad'),
 ('C0090','S017','Muvattupuzha'),
 ('C0091','S017','Malappuram'),
 ('C0092','S017','Kottayam'),
 ('C0093','S017','Calicut '),
 ('C0094','S017','Kasaragod'),
 ('C0095','S017','Cochin'),
 ('C0096','S017','Kannur'),
 ('C0097','S018','Gwalior'),
 ('C0098','S018','Sagar'),
 ('C0099','S018','Ratlam '),
 ('COO01','S001','Port Blair '),
 ('COO02','S002','Anantapur');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `colors`
--

DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors` (
  `cid` varchar(10) NOT NULL,
  `cname` varchar(15) NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` (`cid`,`cname`) VALUES 
 ('x00001','red'),
 ('x00002','black'),
 ('x00003','white'),
 ('x00004','blue'),
 ('x00005','yellow'),
 ('x00006','brown'),
 ('x00007','gray');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;


--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `us` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `title` varchar(4) NOT NULL,
  `address` varchar(35) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` int(10) unsigned default NULL,
  `phone` int(10) unsigned NOT NULL,
  `phone1` int(10) unsigned NOT NULL,
  `mobile` bigint(20) unsigned NOT NULL,
  `email` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `Income` bigint(20) unsigned NOT NULL,
  `occuption` varchar(20) NOT NULL,
  PRIMARY KEY  USING BTREE (`us`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`us`,`name`,`title`,`address`,`city`,`state`,`pin`,`phone`,`phone1`,`mobile`,`email`,`dob`,`Income`,`occuption`) VALUES 
 ('1234','ds','mrs','ss','ss','s001',12,0,0,123456,'dfdfdfd','2011-03-01',12345,'jjjjjjj'),
 ('123456','Ragahav','Ms.','kapoor','llucknow','s017',234567,0,0,1212333333,'dfd@de.com','2011-04-04',122222,'businesssd'),
 ('34344234','fdfd','Mr.','fdfdf','dfd','s017',1234,0,0,1212122222,'dsds@gh.lkj','2011-04-04',123,'xcx'),
 ('ghdsdsdsd','fdfd','Mr.','fdfdf','dfd','s018',1234,0,0,111000,'dsds@gh.lkj','2011-04-04',123,'cvcv');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `img`
--

DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `iid` varchar(12) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `img`
--

/*!40000 ALTER TABLE `img` DISABLE KEYS */;
INSERT INTO `img` (`iid`,`name`) VALUES 
 ('1','images.jpg');
/*!40000 ALTER TABLE `img` ENABLE KEYS */;


--
-- Definition of table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `Invoice` varchar(20) NOT NULL,
  `Chachis` varchar(25) NOT NULL,
  `Engine` varchar(25) NOT NULL,
  `mid` varchar(9) NOT NULL,
  `vid` varchar(9) NOT NULL,
  `cid` varchar(9) NOT NULL,
  `assign` varchar(29) NOT NULL,
  `Invo. Date` date NOT NULL,
  `Amount` bigint(20) unsigned NOT NULL,
  `Margin` varchar(9) NOT NULL,
  PRIMARY KEY  USING BTREE (`Invoice`,`Chachis`,`Engine`),
  KEY `FK_Invoice_3` (`cid`),
  KEY `FK_Invoice_1` USING BTREE (`mid`),
  KEY `FK_Invoice_2` (`vid`),
  KEY `FK_invoice_4` USING BTREE (`assign`),
  CONSTRAINT `FK_Invoice_1` FOREIGN KEY (`mid`) REFERENCES `porduct_id` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Invoice_2` FOREIGN KEY (`vid`) REFERENCES `varient` (`vid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Invoice_3` FOREIGN KEY (`cid`) REFERENCES `colors` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`Invoice`,`Chachis`,`Engine`,`mid`,`vid`,`cid`,`assign`,`Invo. Date`,`Amount`,`Margin`) VALUES 
 ('09876gg','jkjk','lkio','m008','V031','x00002','DELHI','2011-04-05',11111111,'44444'),
 ('12345','dfd','vbb','m002','V004','x00001','DELHI','2011-04-04',33333333,'6666'),
 ('1234redf','cd2345','4re35','m014','V061','x00002','JHARKHAND','2011-04-04',11111111,'22'),
 ('as12345','xsdfghj','xsdfghj3456','m013','V053','x00002','DELHI','2011-04-04',12345666,'56789'),
 ('xcdr56','fd','df','m004','V012','x00003','DELHI','2011-04-07',22222222,'1234');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `LOGIN_ID` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `CATEGORY` varchar(19) NOT NULL,
  PRIMARY KEY  (`LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`LOGIN_ID`,`pass`,`CATEGORY`) VALUES 
 ('123456','123456','SALES MANAGER'),
 ('234567','234567','SALES MANAGER'),
 ('admin','admin','admin');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `model_req`
--

DROP TABLE IF EXISTS `model_req`;
CREATE TABLE `model_req` (
  `sid` varchar(10) NOT NULL,
  `mid` varchar(10) NOT NULL,
  `vid` varchar(10) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `quota` int(10) unsigned NOT NULL,
  KEY `FK_model_req_1` (`sid`),
  KEY `FK_model_req_2` (`mid`),
  KEY `FK_model_req_3` (`vid`),
  KEY `FK_model_req_4` (`cid`),
  CONSTRAINT `FK_model_req_1` FOREIGN KEY (`sid`) REFERENCES `state` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_model_req_2` FOREIGN KEY (`mid`) REFERENCES `porduct_id` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_model_req_3` FOREIGN KEY (`vid`) REFERENCES `varient` (`vid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_model_req_4` FOREIGN KEY (`cid`) REFERENCES `colors` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model_req`
--

/*!40000 ALTER TABLE `model_req` DISABLE KEYS */;
INSERT INTO `model_req` (`sid`,`mid`,`vid`,`cid`,`quota`) VALUES 
 ('s011','m005','V015','x00005',4);
/*!40000 ALTER TABLE `model_req` ENABLE KEYS */;


--
-- Definition of table `porduct_id`
--

DROP TABLE IF EXISTS `porduct_id`;
CREATE TABLE `porduct_id` (
  `mid` varchar(10) NOT NULL,
  `model` varchar(25) NOT NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `porduct_id`
--

/*!40000 ALTER TABLE `porduct_id` DISABLE KEYS */;
INSERT INTO `porduct_id` (`mid`,`model`) VALUES 
 ('M001','Maruti 800'),
 ('m002','Maruti Alto'),
 ('m003','Maruti Alto K10'),
 ('m004','Maruti Astar'),
 ('m005','Maruti Eeco'),
 ('m006','Maruti Gypsy'),
 ('m007','Maruit Omini'),
 ('m008','Maruti Ritz'),
 ('m009','Maruti SX4'),
 ('m010','Maruti Suzuki Kizashi'),
 ('m011','Maruti Swift'),
 ('m012','Maruti Swift Dzire'),
 ('m013','Maruti WagonR'),
 ('m014','Maruti Zen Estilo'),
 ('m015','Suzuki Grand Vitara');
/*!40000 ALTER TABLE `porduct_id` ENABLE KEYS */;


--
-- Definition of table `quotarec`
--

DROP TABLE IF EXISTS `quotarec`;
CREATE TABLE `quotarec` (
  `invoice` varchar(28) NOT NULL,
  `chachis` varchar(27) NOT NULL,
  `engine` varchar(25) NOT NULL,
  `mid` varchar(10) NOT NULL,
  `vid` varchar(10) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `staus` varchar(10) NOT NULL,
  PRIMARY KEY  (`invoice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotarec`
--

/*!40000 ALTER TABLE `quotarec` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotarec` ENABLE KEYS */;


--
-- Definition of table `quotastate`
--

DROP TABLE IF EXISTS `quotastate`;
CREATE TABLE `quotastate` (
  `invoice` varchar(29) NOT NULL,
  `chachis` varchar(28) NOT NULL,
  `engine` varchar(27) NOT NULL,
  `mid` varchar(10) NOT NULL,
  `vid` varchar(10) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `staus` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  KEY `FK_QuotaState_3` (`invoice`,`chachis`,`engine`),
  KEY `FK_QuotaState_4` (`mid`),
  KEY `FK_QuotaState_5` (`vid`),
  KEY `FK_QuotaState_6` (`cid`),
  CONSTRAINT `FK_QuotaState_1` FOREIGN KEY (`invoice`, `chachis`, `engine`) REFERENCES `invoice` (`Invoice`, `Chachis`, `Engine`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_QuotaState_2` FOREIGN KEY (`invoice`, `chachis`, `engine`) REFERENCES `invoice` (`Invoice`, `Chachis`, `Engine`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_QuotaState_3` FOREIGN KEY (`invoice`, `chachis`, `engine`) REFERENCES `invoice` (`Invoice`, `Chachis`, `Engine`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_QuotaState_4` FOREIGN KEY (`mid`) REFERENCES `porduct_id` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_QuotaState_5` FOREIGN KEY (`vid`) REFERENCES `varient` (`vid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_QuotaState_6` FOREIGN KEY (`cid`) REFERENCES `colors` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotastate`
--

/*!40000 ALTER TABLE `quotastate` DISABLE KEYS */;
INSERT INTO `quotastate` (`invoice`,`chachis`,`engine`,`mid`,`vid`,`cid`,`staus`,`state`) VALUES 
 ('as12345','xsdfghj','xsdfghj3456','m013','V053','x00002','instock','KARNATAKA'),
 ('12345','dfd','vbb','m002','V004','x00001','sale','DELHI'),
 ('09876gg','jkjk','lkio','m008','V031','x00002','sale','JHARKHAND'),
 ('xcdr56','fd','df','m004','V012','x00003','instock','JHARKHAND'),
 ('1234redf','cd2345','4re35','m014','V061','x00002','sale','DELHI');
/*!40000 ALTER TABLE `quotastate` ENABLE KEYS */;


--
-- Definition of table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `userid` varchar(20) NOT NULL,
  `cate` varchar(19) NOT NULL,
  `password` varchar(15) NOT NULL,
  `password1` varchar(15) NOT NULL,
  `title` varchar(5) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) default NULL,
  `address` varchar(35) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `pin` int(10) unsigned default NULL,
  `phone` int(10) unsigned default NULL,
  `phone1` int(10) unsigned NOT NULL,
  `Mobile` bigint(20) unsigned NOT NULL default '0',
  `email` varchar(45) NOT NULL default '',
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `sid` varchar(25) NOT NULL,
  PRIMARY KEY  USING BTREE (`userid`,`Mobile`,`email`),
  KEY `FK_sales_1` (`sid`),
  CONSTRAINT `FK_sales_1` FOREIGN KEY (`sid`) REFERENCES `state` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`userid`,`cate`,`password`,`password1`,`title`,`fname`,`lname`,`address`,`state`,`city`,`pin`,`phone`,`phone1`,`Mobile`,`email`,`dob`,`doj`,`sid`) VALUES 
 ('123456','SALES MANAGER','2222222','2222222','Mr.','df','fd','fd','s001','fd',0,0,0,5555555555,'dfd@we.kjl','2011-04-11','2011-04-18','s017'),
 ('234567','SALES MANAGER','234567','234567','Mr.','pq','dfd','fd','s018','dfd',0,0,0,1111111111,'df@we.com','2011-04-26','2011-04-30','s011');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;


--
-- Definition of table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `sid` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `locatid` varchar(15) NOT NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`sid`,`name`,`locatid`) VALUES 
 ('s001','ANDAMAN',''),
 ('s002','ANDHRA PRADESH',''),
 ('s003','ARUNANCHAL PRADESH',''),
 ('s004','ASSAM',''),
 ('s005','BHUTAN',''),
 ('s006','BIHAR',''),
 ('s007','CHANDIGARH',''),
 ('s008','CHATTISGARH',''),
 ('s009','DADRA NAGAR HAVELI',''),
 ('s010','DAMAN',''),
 ('s011','DELHI',''),
 ('s012','GOA',''),
 ('s013','GUJRAT',''),
 ('s014','HARYANA',''),
 ('s015','HIMACHAL PRADESH',''),
 ('s016','JAMMU KASHMIR',''),
 ('s017','JHARKHAND',''),
 ('s018','KARNATAKA',''),
 ('s019','KERALA',''),
 ('s020','MADHYA PRADESH',''),
 ('s021','MAHARASHTRA',''),
 ('s022','MANIPUR',''),
 ('s023','MEGHALAYA',''),
 ('s024','MIZORAM',''),
 ('s025','NAGALAND',''),
 ('s026','ORISSA',''),
 ('s027','PONDICHERRY',''),
 ('s028','PUNJAB',''),
 ('s029','RAJASTHAN',''),
 ('s030','SIKKIM',''),
 ('s031','TAMIL NADU',''),
 ('s032','TRIPURA',''),
 ('s033','UTTAR PRADESH',''),
 ('s034','UTTARANCHAL',''),
 ('s035','WEST BENGAL','');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;


--
-- Definition of table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `invoice` varchar(19) NOT NULL,
  `chachis` varchar(19) NOT NULL,
  `engine` varchar(19) NOT NULL,
  `model` varchar(9) NOT NULL,
  `vid` varchar(9) default NULL,
  `cid` varchar(10) NOT NULL,
  `transfer` varchar(20) default NULL,
  `tdate` date default NULL,
  `recieve` varchar(25) default NULL,
  `rdate` date default NULL,
  KEY `FK_transfer_3` (`invoice`,`chachis`,`engine`),
  KEY `FK_transfer_4` (`cid`),
  CONSTRAINT `FK_transfer_1` FOREIGN KEY (`invoice`, `chachis`, `engine`) REFERENCES `invoice` (`Invoice`, `Chachis`, `Engine`),
  CONSTRAINT `FK_transfer_2` FOREIGN KEY (`invoice`, `chachis`, `engine`) REFERENCES `invoice` (`Invoice`, `Chachis`, `Engine`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transfer_3` FOREIGN KEY (`invoice`, `chachis`, `engine`) REFERENCES `invoice` (`Invoice`, `Chachis`, `Engine`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transfer_4` FOREIGN KEY (`cid`) REFERENCES `colors` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` (`invoice`,`chachis`,`engine`,`model`,`vid`,`cid`,`transfer`,`tdate`,`recieve`,`rdate`) VALUES 
 ('as12345','xsdfghj','xsdfghj3456','m013','V053','x00002','KARNATAKA','2011-04-11','DELHI','2011-04-11'),
 ('09876gg','jkjk','lkio','m008','V031','x00002','JHARKHAND','2011-04-12','DELHI','2011-04-12'),
 ('xcdr56','fd','df','m004','V012','x00003','JHARKHAND','2011-04-19','DELHI','2011-04-19'),
 ('xcdr56','fd','df','m004','V012','x00003','JHARKHAND','2011-04-19','DELHI','2011-04-19'),
 ('1234redf','cd2345','4re35','m014','V061','x00002','DELHI','2011-04-19','JHARKHAND','2011-04-19');
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;


--
-- Definition of table `varient`
--

DROP TABLE IF EXISTS `varient`;
CREATE TABLE `varient` (
  `vid` varchar(10) NOT NULL,
  `mid` varchar(10) NOT NULL,
  `vname` varchar(35) NOT NULL,
  PRIMARY KEY  (`vid`),
  KEY `FK_varient_1` (`mid`),
  CONSTRAINT `FK_varient_1` FOREIGN KEY (`mid`) REFERENCES `porduct_id` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `varient`
--

/*!40000 ALTER TABLE `varient` DISABLE KEYS */;
INSERT INTO `varient` (`vid`,`mid`,`vname`) VALUES 
 ('V001','M001','MARUTI 800 UNIQ'),
 ('V002','M001','MARUTI 800  STD CNG'),
 ('V003','M001','MARUTI 800  STD'),
 ('V004','M002','MARUTI ALTO LX'),
 ('V005','M002','MARUTI ALTO LXI'),
 ('V006','M002','MARUTI ALTO LX CNG'),
 ('V007','M002','MARUTI ALTO LXI CNG'),
 ('V008','M002','MARUTI ALTO VX'),
 ('V009','M002','MARUTI ALTO AX'),
 ('V010','M002','MARUTI ALTO VXI'),
 ('V011','M002','MARUTI ALTO STANDERED'),
 ('V012','M004','MARUTI A-STAR ZXI'),
 ('V013','M004','MARUTI A-STAR VXI'),
 ('V014','M004','MARUTI A-STAR LXI'),
 ('V015','M005','MARUTI EeCO 5 STAR STD'),
 ('V016','M005','MARUTI EeCO 5 STAR AC'),
 ('V017','M005','MARUTI EeCO 7 STAR STD'),
 ('V018','M005','MARUTI EeCO CNG 5 SEATAR'),
 ('V019','M005','MARUTI EeCO VARSA CARGO'),
 ('V020','M005','MARUTI EeCO AMBULANCE'),
 ('V021','M005','MARUTI EeCO VARSA DX'),
 ('V022','M006','MARUTI GYPSY 1.3'),
 ('V023','M006','MARUTI GYPSY 1.0'),
 ('V024','M006','MARUTI GYPSY AMBULENCE'),
 ('V025','M007','MARUTI OMINI CNG'),
 ('V026','M007','MARUTI OMINI LPG'),
 ('V027','M007','MARUTI OMINI AMBULENCE'),
 ('V028','M007','MARUTI OMINI 5 SEATER'),
 ('V030','M007','MARUTI OMINI 8 SEATER'),
 ('V031','M008','MARUTI RITZ LXI'),
 ('V032','M008','MARUTI RITZ VXI'),
 ('V033','M008','MARUTI RITZ ZXI'),
 ('V034','M008','MARUTI RITZ LDI'),
 ('V035','M008','MARUTI RITZ VDI'),
 ('V036','M010','MARUTI SX4 AX'),
 ('V037','M010','MARUTI SX4 AT'),
 ('V038','M010','MARUTI SX4  VXI'),
 ('V039','M010','MARUTI SX4 ZXI'),
 ('V040','M011',' MARUTI SWIFT LXI'),
 ('V041','M011','MARUTI SWIFT VXI'),
 ('V042','M011','MARUTI SWIFT VXI ABS'),
 ('V043','M011','MARUTI SWIFT ZXI'),
 ('V044','M011','MARUTI SWIFT LDI'),
 ('V045','M011','MARUTI SWIFT VDI'),
 ('V046','M011','MARUTI SWIFT VDI ABS'),
 ('V047','M011','MARUTI SWIFT ZDI'),
 ('V048','M012',' SWIFT DEZIRE ZXI'),
 ('V049','M012','SWIFT DEZIRE LXI'),
 ('V050','M012','SWIFT DEZIRE VXI'),
 ('V051','M012','SWIFT DEZIRE LDI'),
 ('V052','M012','SWIFT DEZIRE VDI'),
 ('V053','M013','WAGONR LX'),
 ('V054','M013','WAGONR LXI'),
 ('V055','M013','WAGONR ZXI'),
 ('V056','M013','WAGONR VX'),
 ('V057','M013','WAGONR VXI'),
 ('V058','M013','WAGONR AX'),
 ('V059','M013','WAGONR LX LPG'),
 ('V060','M013','WAGONR LXI LPG'),
 ('V061','M014','MARUTI ZEN LX'),
 ('V062','M014','MARUTI ZEN LXI'),
 ('V063','M014','MARUTI ZEN VX'),
 ('V064','M014','MARUTI ZEN  VXI'),
 ('V065','M014','MARUTI ZEN AT');
/*!40000 ALTER TABLE `varient` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
