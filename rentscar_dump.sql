-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: rentscar
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'806 Vel Street','1674011291899','rutrum@rutrum.co.uk','Murphy Allison','3619-9794','2019-06-05 21:45:06'),(2,'8043 Scelerisque Rd.','1631051428099','Nulla.tempor.augue@parturient.ca','MacKenzie Stephens','3389-5823','2019-06-05 21:45:06'),(3,'P.O. Box 150, 9030 Elementum Av.','1682010734399','pede@eutemporerat.com','Adrian Abbott','94524-7757','2019-06-05 21:45:06'),(4,'Ap #893-4583 Tristique Ave','1696022586899','id.libero.Donec@vulputatemauris.ca','Allistair K. Sloan','96939-0213','2019-06-05 21:45:06'),(5,'792-3413 Eros. St.','1698112957899','at.sem@idanteNunc.net','Brett T. Horton','3208-9257','2019-06-05 21:45:06'),(6,'4777 Aliquam Road','1682101304299','mi.Aliquam.gravida@Sedmalesuadaaugue.edu','Ursa V. Welch','3027-3342','2019-06-05 21:45:06'),(7,'5912 Dui, St.','1660081626699','natoque.penatibus.et@ultrices.co.uk','Timon Clements','94560-2455','2019-06-05 21:45:06'),(8,'Ap #574-6284 Dui Avenue','1655101982499','eu.metus@dolor.co.uk','Jaden Lancaster','97523-2935','2019-06-05 21:45:06'),(9,'Ap #112-962 Adipiscing Rd.','1635081339199','Cras.vulputate@luctuslobortis.com','Jonas R. Michael','94813-9316','2019-06-05 21:45:06'),(10,'Ap #888-2660 Arcu. Rd.','1654011865099','enim.mi@erat.net','Ahmed Cline','93492-6661','2019-06-05 21:45:06'),(11,'220-6131 Erat Road','1615032544299','placerat.augue@faucibus.net','Hilda U. Hurst','3442-5058','2019-06-05 21:45:06'),(12,'P.O. Box 897, 9594 Per Ave','1651052589699','adipiscing@Nam.co.uk','Ainsley I. Monroe','3714-2503','2019-06-05 21:45:06'),(13,'3968 Quam Rd.','1659051488799','in.aliquet.lobortis@sagittis.org','Meredith F. Fitzpatrick','3886-2045','2019-06-05 21:45:06'),(14,'P.O. Box 156, 9506 Penatibus St.','1606061586099','diam.dictum@volutpatornarefacilisis.co.uk','Barry Keith','3268-2382','2019-06-05 21:45:06'),(15,'P.O. Box 475, 3833 Vel, St.','1641050339499','nunc@loremvehiculaet.co.uk','Kevin Norton','98176-9603','2019-06-05 21:45:06'),(16,'148 Libero St.','1641121598199','amet.consectetuer.adipiscing@blandit.ca','Amela P. Herring','3532-1306','2019-06-05 21:45:06'),(17,'Ap #906-6251 Aliquam Avenue','1662040373699','lectus.pede@auctor.ca','Logan M. Jenkins','3602-8769','2019-06-05 21:45:06'),(18,'979-4774 Egestas Av.','1629091452899','dignissim.lacus@habitantmorbi.com','Edan Le','99672-1032','2019-06-05 21:45:06'),(19,'P.O. Box 298, 870 Metus Rd.','1619062708599','ornare.lectus@pedePraesent.co.uk','Rhona Hopper','96469-2092','2019-06-05 21:45:06'),(20,'Ap #940-4086 Fermentum Rd.','1685091620099','viverra.Maecenas.iaculis@Duiscursus.com','Yen Robbins','3738-3097','2019-06-05 21:45:06'),(21,'P.O. Box 404, 4780 Vel, Av.','1635092242199','Etiam@mattisvelitjusto.com','Dennis N. Duke','3525-4257','2019-06-05 21:45:06'),(22,'P.O. Box 682, 8090 Amet Avenue','1653091785299','lorem.luctus.ut@litora.edu','Galvin A. Holt','92430-1334','2019-06-05 21:45:06'),(23,'Ap #302-9265 Ut St.','1606081972099','id.erat@dictumplacerat.net','Dorian I. Fletcher','3114-3544','2019-06-05 21:45:06'),(24,'Ap #532-2904 Integer Road','1636022826099','ligula.Nullam.feugiat@nibhdolor.org','Rana M. Fulton','3443-2040','2019-06-05 21:45:06'),(25,'P.O. Box 812, 9323 Enim St.','1653021236799','tempor.diam@facilisismagnatellus.com','Scarlet Robbins','3631-1600','2019-06-05 21:45:06'),(26,'2502 Nam Ave','1683021099999','vitae@sociisnatoquepenatibus.com','Daniel Z. Mills','98392-4889','2019-06-05 21:45:06'),(27,'319-5533 Porttitor Rd.','1616040183799','inceptos@vulputate.co.uk','Giselle Pope','3168-0324','2019-06-05 21:45:06'),(28,'P.O. Box 932, 8115 Justo Avenue','1633102986699','tempus.non@Nulla.org','Ivy C. Bradley','99771-3418','2019-06-05 21:45:06'),(29,'9671 Arcu. Street','1628061391999','eu.enim@molestie.com','Lamar I. Phillips','3006-9986','2019-06-05 21:45:06'),(30,'Ap #284-3874 Lorem Ave','1678051880099','eu.eros.Nam@vulputate.edu','Ina N. Casey','3389-1772','2019-06-05 21:45:06'),(31,'314-7451 Cras St.','1680072865799','dui.Fusce@magnaetipsum.co.uk','Sybill Salazar','3442-6270','2019-06-05 21:45:06'),(32,'P.O. Box 703, 8486 Integer Rd.','1699120576599','et.magna@maurissapien.org','Abdul Parks','3479-5488','2019-06-05 21:45:06'),(33,'433-9784 Interdum. Av.','1617031445899','elit@sagittissemperNam.net','Malik Moore','90872-4517','2019-06-05 21:45:06'),(34,'Ap #997-5785 Vestibulum Av.','1605110255699','turpis.egestas.Fusce@etrutrumeu.org','Andrew P. Mcgowan','3365-9447','2019-06-05 21:45:06'),(35,'Ap #616-7717 Magna Avenue','1680020363099','cursus@duiCras.net','James L. Black','95675-3764','2019-06-05 21:45:06'),(36,'Ap #562-2710 Sodales St.','1691032711299','Praesent.eu.dui@Phasellusdolor.net','Kirsten Witt','94426-7636','2019-06-05 21:45:06'),(37,'Ap #744-8747 Blandit Av.','1633092996999','ipsum.Suspendisse.non@Aeneaneuismodmauris.co.uk','Yuri Conner','99268-9533','2019-06-05 21:45:06'),(38,'601-1126 Nullam St.','1675032457299','pede.sagittis@intempus.org','Brooke G. Watson','3507-3983','2019-06-05 21:45:06'),(39,'376-491 Tortor Ave','1693030264699','ultrices@Sed.net','Minerva Gray','3343-4765','2019-06-05 21:45:06'),(40,'P.O. Box 707, 4534 Ac Street','1638120469799','Curabitur.dictum@necmetus.org','Avye Hobbs','3918-5042','2019-06-05 21:45:06'),(41,'658-8128 Est Av.','1654082595699','enim@sedsem.co.uk','Patricia Atkinson','3971-8605','2019-06-05 21:45:06'),(42,'Ap #754-2898 Massa. Avenue','1648112020799','dictum@egetvolutpat.co.uk','Mercedes Craig','93252-9782','2019-06-05 21:45:06'),(43,'P.O. Box 704, 9076 Fusce Road','1656023044399','Lorem@vitaesodales.edu','Kirby H. Barr','98103-8089','2019-06-05 21:45:06'),(44,'3947 Pellentesque, Rd.','1677102482199','euismod.enim@Nullamscelerisque.edu','Roary Y. Stephenson','93334-4207','2019-06-05 21:45:06'),(45,'Ap #878-4482 Duis St.','1672062251799','turpis.egestas.Fusce@necimperdietnec.co.uk','Merritt Mcclure','96417-5096','2019-06-05 21:45:06'),(46,'837-913 Duis Rd.','1643040752499','Ut.tincidunt@Integer.com','Minerva Sanders','98925-8722','2019-06-05 21:45:06'),(47,'Ap #563-2693 Elit Avenue','1664030368499','mollis.non@pharetra.com','Lester Flores','3313-7221','2019-06-05 21:45:06'),(48,'219-431 Dictum Av.','1628030329299','Proin@Nullamlobortis.org','Stacey Hudson','3094-5944','2019-06-05 21:45:06'),(49,'6218 Dolor. Road','1617040998999','odio@at.org','Lesley M. Hamilton','3078-4902','2019-06-05 21:45:06'),(50,'8048 Amet, Av.','1683100863099','malesuada.malesuada@sitamet.co.uk','Mark Maynard','3741-6525','2019-06-05 21:45:06'),(51,'P.O. Box 695, 2491 Elit Road','1684110674799','felis@semperegestasurna.org','Sybill R. Mathis','3161-1801','2019-06-05 21:45:06'),(52,'2192 Erat. Ave','1663051103399','nec.orci.Donec@luctusipsum.co.uk','Carol Mathis','3729-7478','2019-06-05 21:45:06'),(53,'151-6174 Penatibus Av.','1639121674299','quis@eunequepellentesque.ca','Libby Y. Mays','91597-8894','2019-06-05 21:45:06'),(54,'Ap #186-869 Egestas. Road','1602021661699','elit@lacusQuisquepurus.co.uk','Tyler Fox','91442-5041','2019-06-05 21:45:06'),(55,'9495 A Ave','1645021658999','malesuada@tristiquepharetraQuisque.ca','Jena Y. Fitzpatrick','95317-7547','2019-06-05 21:45:06'),(56,'5945 Eget Avenue','1667062704899','semper@maurisSuspendissealiquet.edu','Sebastian Morin','94844-0293','2019-06-05 21:45:06'),(57,'P.O. Box 737, 4852 Erat Road','1610021069099','sem@pede.ca','Nadine Z. Booth','91462-5099','2019-06-05 21:45:06'),(58,'Ap #860-9176 Curabitur Road','1631040157799','adipiscing.elit@nec.com','Rudyard K. Boyle','99542-5069','2019-06-05 21:45:06'),(59,'P.O. Box 135, 6381 At, Rd.','1690053077999','elementum@Suspendisse.co.uk','Charles J. Hebert','3936-1917','2019-06-05 21:45:06'),(60,'3153 Dolor, Avenue','1651112064999','sociis@intempuseu.org','Heather Atkins','3609-6325','2019-06-05 21:45:06'),(61,'365-9773 Aliquam Avenue','1631040149499','nunc.sed.libero@Duiselementum.com','Maile Mccoy','3900-4550','2019-06-05 21:45:06'),(62,'2829 Nec St.','1667042034899','velit.egestas@sitametmassa.com','Ulysses Rivera','92363-2370','2019-06-05 21:45:06'),(63,'P.O. Box 942, 4756 Semper Avenue','1674112232199','in.molestie@eleifend.net','Warren Gibson','3261-8801','2019-06-05 21:45:06'),(64,'3587 Dictum. Rd.','1664110318699','faucibus.orci.luctus@mollisDuissit.edu','Brian A. Nielsen','93176-0737','2019-06-05 21:45:06'),(65,'Ap #973-2369 Tempor, St.','1680112849999','senectus.et.netus@Suspendissesagittis.co.uk','Mara M. Davenport','99101-6820','2019-06-05 21:45:06'),(66,'P.O. Box 904, 7931 Nibh Av.','1656052832399','ipsum.dolor@nibhDonec.ca','Rylee X. Brady','3089-0150','2019-06-05 21:45:06'),(67,'451-8201 Purus Av.','1619042941199','velit.Quisque.varius@Aliquam.com','Nasim R. Whitney','3768-0006','2019-06-05 21:45:06'),(68,'2666 Orci Street','1675120118999','tempor.erat@ipsum.co.uk','Aaron Wolf','3947-8810','2019-06-05 21:45:06'),(69,'2292 Consequat Avenue','1661012333299','magna.tellus.faucibus@egestasrhoncus.net','Quon U. Brennan','3384-5325','2019-06-05 21:45:06'),(70,'299-6810 Sociis Rd.','1602040250299','ligula.eu.enim@eu.edu','Alisa Merritt','95205-2191','2019-06-05 21:45:06'),(71,'830-3752 Tempus St.','1648111927699','sodales.elit@facilisisnonbibendum.ca','Ila Z. Stafford','97345-8477','2019-06-05 21:45:06'),(72,'Ap #320-1454 Vel Street','1683102233299','arcu.Vestibulum@aliquet.edu','Dieter A. Gilbert','91795-3104','2019-06-05 21:45:06'),(73,'P.O. Box 140, 7524 Velit Av.','1694070298599','vitae@temporaugueac.edu','Germane Freeman','91587-2600','2019-06-05 21:45:06'),(74,'P.O. Box 591, 1609 Donec Rd.','1685120967599','dis@facilisis.com','Amelia Hendrix','96155-4576','2019-06-05 21:45:06'),(75,'432-6553 Amet Street','1663032069199','eget.odio.Aliquam@commodoat.org','Maisie Montgomery','96545-5823','2019-06-05 21:45:06'),(76,'P.O. Box 111, 7713 Turpis Road','1629033093799','In.at@scelerisquenequesed.org','Robin Watts','3972-8132','2019-06-05 21:45:06'),(77,'P.O. Box 335, 849 Sagittis Road','1644121617199','rutrum@enimconsequat.edu','Amber X. Boyd','92567-4461','2019-06-05 21:45:06'),(78,'Ap #363-8930 Congue Rd.','1688061171099','quis.urna.Nunc@montesnasceturridiculus.edu','Scott Keith','97323-0056','2019-06-05 21:45:06'),(79,'Ap #158-6297 Ut Avenue','1634121784399','tortor.dictum.eu@amet.ca','Reed R. Lynch','3945-1688','2019-06-05 21:45:06'),(80,'6453 Iaculis, Av.','1614010938999','risus.In.mi@metusvitae.co.uk','Maryam Kirby','3379-8046','2019-06-05 21:45:06'),(81,'180-4698 Suspendisse St.','1684072185299','et@commodoat.org','Yoshio E. Aguirre','3602-5461','2019-06-05 21:45:06'),(82,'4992 In, Ave','1601110591999','ante.Vivamus@augueeutempor.co.uk','Nerea Bishop','90673-2329','2019-06-05 21:45:06'),(83,'P.O. Box 296, 6099 Felis, Road','1681031118199','Cras@enimsit.ca','Callie Carney','99918-5348','2019-06-05 21:45:06'),(84,'272-2011 Dui. Avenue','1649042135399','enim@ipsumdolorsit.ca','Angela Shepherd','99951-8354','2019-06-05 21:45:06'),(85,'P.O. Box 368, 5912 Vitae, Road','1699011140099','lectus.pede@quisarcuvel.edu','Anthony G. Joyner','90349-4865','2019-06-05 21:45:06'),(86,'1696 Amet Rd.','1690040472199','magnis.dis@Fuscefermentum.edu','Neville Ruiz','98593-5731','2019-06-05 21:45:06'),(87,'Ap #451-643 Vel Road','1670082607699','neque.et@Pellentesquehabitant.com','Claire E. Rodgers','97444-0025','2019-06-05 21:45:06'),(88,'Ap #481-8073 Ac Avenue','1605112894599','rutrum.Fusce@est.com','Garrison O. Clark','95896-8416','2019-06-05 21:45:06'),(89,'Ap #376-5929 Porttitor Rd.','1674011354199','augue.eu.tellus@justoeuarcu.net','Melvin D. Rasmussen','93868-3164','2019-06-05 21:45:06'),(90,'8021 Nec, Avenue','1647102382499','enim.gravida@Etiam.org','Carissa X. Freeman','99852-8826','2019-06-05 21:45:06'),(91,'P.O. Box 347, 5444 Leo. St.','1650072077499','urna.suscipit.nonummy@orciPhasellusdapibus.com','Connor W. Koch','3991-5659','2019-06-05 21:45:06'),(92,'P.O. Box 278, 1855 Sociis St.','1639012814299','a.magna.Lorem@et.net','Edan Oneil','3605-9996','2019-06-05 21:45:06'),(93,'9094 Tristique Road','1698070778399','a@vitae.edu','Shoshana Norman','3442-4360','2019-06-05 21:45:06'),(94,'P.O. Box 347, 7183 Est St.','1629121463099','Aliquam.nec.enim@Quisquevarius.ca','Ariel S. Conner','96570-6599','2019-06-05 21:45:06'),(95,'Ap #140-163 Facilisis Av.','1656101330999','Aliquam.erat.volutpat@massaVestibulumaccumsan.co.uk','Bruno Fitzpatrick','92576-5957','2019-06-05 21:45:06'),(96,'1076 Metus Road','1676071110099','arcu.Sed@natoque.ca','Karen I. Horne','3287-7604','2019-06-05 21:45:06'),(97,'P.O. Box 806, 9753 A, Rd.','1645080290799','tellus.faucibus.leo@lectusantedictum.com','Oscar Z. Parks','3122-8774','2019-06-05 21:45:06'),(98,'P.O. Box 251, 9088 Bibendum St.','1665030114299','quam.a.felis@commodo.net','Angelica Payne','97919-4554','2019-06-05 21:45:06'),(99,'255-3912 Ipsum Av.','1635031906399','neque.pellentesque@rutrumjusto.org','Clio Y. Barry','3869-3931','2019-06-05 21:45:06'),(100,'P.O. Box 322, 3310 Convallis Rd.','1662112611999','dolor.dolor.tempus@egetvenenatis.edu','Harding Deleon','90060-7866','2019-06-05 21:45:06');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `vehicle_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sales_ibfk_2` (`vehicle_id`),
  KEY `sales_ibfk_1` (`customer_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (15,2,3,'2019-06-05 21:59:14');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` char(7) NOT NULL,
  `price` float(8,2) NOT NULL,
  `year` char(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'Wolksvagem','Preto','Golf','XXX1111',100000.00,'2019','2019-06-05 21:56:04'),(2,'Fiat','Cinza','Argo','CSS0123',100000.00,'2015','2019-06-05 21:56:04'),(3,'Chevolet','Cinza','Celta','CFA3322',100000.00,'2017','2019-06-05 21:56:04'),(4,'Honda','Cinza','Civic','ASD1234',100000.00,'2017','2019-06-05 21:56:04'),(5,'Chevrolet','Cinza','Celta','KKK1234',100000.00,'2015','2019-06-05 21:56:04'),(6,'Chevrolet','Azul','Camaro','PDF4321',100000.00,'2015','2019-06-05 21:56:04'),(9,'Wolksvagem','Azul','Gol','PHP1234',100000.00,'2015','2019-06-05 21:56:04'),(10,'Honda','Azul','Civic','JSS4321',300000.00,'2015','2019-06-05 21:56:04'),(11,'BMW','orange','PUNTO','FDH0581',0.00,'2020','2019-06-05 21:56:04'),(12,'Renault','yellow','TOROS','JUL0852',0.00,'2019','2019-06-05 21:56:04'),(13,'Fiat','orange','PUNTO','IQZ5610',0.00,'2019','2019-06-05 21:56:04'),(14,'Ford','green','UNO','RXG7427',0.00,'2019','2019-06-05 21:56:04'),(15,'BMW','red','Civic','OUO1496',0.00,'2019','2019-06-05 21:56:04'),(16,'Toyota','violet','MOBI','REW6790',0.00,'2019','2019-06-05 21:56:04'),(17,'Ford','yellow','Corolla','IKO0004',0.00,'2020','2019-06-05 21:56:04'),(18,'Renault','indigo','PALIO','OCA6203',0.00,'2018','2019-06-05 21:56:04'),(19,'Mercedes-Benz','yellow','CAPTIVA','SEU7156',0.00,'2018','2019-06-05 21:56:04'),(20,'Nissan','orange','Civic','ILW2993',0.00,'2019','2019-06-05 21:56:04'),(21,'Nissan','violet','PUNTO','WUA9805',0.00,'2019','2019-06-05 21:56:04'),(22,'Nissan','yellow','Corolla','IZB7205',0.00,'2019','2019-06-05 21:56:04'),(23,'Volkswagen','red','MOBI','KGA5074',0.00,'2019','2019-06-05 21:56:04'),(24,'Ford','yellow','PRISMA','DWA7699',0.00,'2018','2019-06-05 21:56:04'),(25,'Volkswagen','blue','IDEA','JGC3090',0.00,'2019','2019-06-05 21:56:04'),(26,'Mercedes-Benz','red','CELTA','LQH6131',0.00,'2018','2019-06-05 21:56:04'),(27,'Peugeot','orange','CAPTIVA','DJB7291',0.00,'2018','2019-06-05 21:56:04'),(28,'Ford','blue','PRISMA','PWI7357',0.00,'2018','2019-06-05 21:56:04'),(29,'Chevrolet','violet','PALIO','NJL3423',0.00,'2018','2019-06-05 21:56:04'),(30,'Toyota','violet','PUNTO','ADP8980',0.00,'2019','2019-06-05 21:56:04'),(31,'Mitsubishi','yellow','UNO','KJU6948',0.00,'2018','2019-06-05 21:56:04'),(32,'Mercedes-Benz','indigo','PALIO','OBA0540',0.00,'2019','2019-06-05 21:56:04'),(33,'Nissan','indigo','CAPTIVA','CMD7096',0.00,'2020','2019-06-05 21:56:04'),(34,'Chevrolet','yellow','CORSA','XTC8903',0.00,'2018','2019-06-05 21:56:04'),(35,'Mercedes-Benz','red','IDEA','UVE1563',0.00,'2020','2019-06-05 21:56:04'),(36,'Hyundai','red','Civic','KLI2161',0.00,'2019','2019-06-05 21:56:04'),(37,'Hyundai','orange','ONIX','CYM7904',0.00,'2018','2019-06-05 21:56:04'),(38,'Fiat','orange','PUNTO','TYA1445',0.00,'2018','2019-06-05 21:56:04'),(39,'Kia Motors','orange','CLASSIC','GII4154',0.00,'2020','2019-06-05 21:56:04'),(40,'Toyota','blue','MOBI','SLB9652',0.00,'2019','2019-06-05 21:56:04'),(41,'BMW','orange','PRISMA','SGZ5475',0.00,'2018','2019-06-05 21:56:04'),(42,'Mercedes-Benz','orange','Civic','BNW9991',0.00,'2019','2019-06-05 21:56:04'),(43,'Fiat','yellow','CELTA','DKL4076',0.00,'2020','2019-06-05 21:56:04'),(44,'Toyota','green','TOROS','TRV8099',0.00,'2020','2019-06-05 21:56:04'),(45,'Honda','green','ONIX','XWP2862',0.00,'2020','2019-06-05 21:56:04'),(46,'Renault','green','CLASSIC','EAM3806',0.00,'2019','2019-06-05 21:56:04'),(47,'Volkswagen','red','SIENA','WIA3180',0.00,'2018','2019-06-05 21:56:04'),(48,'Peugeot','blue','Corolla','UAS9041',0.00,'2019','2019-06-05 21:56:04'),(49,'Kia Motors','blue','CORSA','NZZ0043',0.00,'2019','2019-06-05 21:56:04'),(50,'Peugeot','yellow','Civic','DAT4034',0.00,'2020','2019-06-05 21:56:04'),(51,'Nissan','indigo','MOBI','ESG1383',0.00,'2020','2019-06-05 21:56:04'),(52,'Fiat','red','TOROS','SBV1541',0.00,'2020','2019-06-05 21:56:04'),(53,'Kia Motors','yellow','TOROS','EBZ6905',0.00,'2019','2019-06-05 21:56:04'),(54,'BMW','green','PRISMA','TSI6241',0.00,'2018','2019-06-05 21:56:04'),(55,'Volkswagen','blue','IDEA','FOO6966',0.00,'2019','2019-06-05 21:56:04'),(56,'Peugeot','blue','PUNTO','CAD2540',0.00,'2018','2019-06-05 21:56:04'),(57,'Chevrolet','green','CORSA','NAT2726',0.00,'2019','2019-06-05 21:56:04'),(58,'Mitsubishi','red','IDEA','SEF8262',0.00,'2018','2019-06-05 21:56:04'),(59,'Chevrolet','red','CELTA','IRB6835',0.00,'2019','2019-06-05 21:56:04'),(60,'Volkswagen','indigo','CELTA','MEW8927',0.00,'2019','2019-06-05 21:56:04'),(61,'Renault','red','Civic','SRY8108',0.00,'2020','2019-06-05 21:56:04'),(62,'Chevrolet','blue','UNO','WVM5544',0.00,'2020','2019-06-05 21:56:04'),(63,'Volkswagen','indigo','CORSA','FBH2491',0.00,'2020','2019-06-05 21:56:04'),(64,'Mitsubishi','green','SIENA','VVU9172',0.00,'2018','2019-06-05 21:56:04'),(65,'Ford','blue','IDEA','FBY2507',0.00,'2019','2019-06-05 21:56:04'),(66,'Renault','yellow','Corolla','FMN3563',0.00,'2020','2019-06-05 21:56:04'),(67,'BMW','blue','PUNTO','UWJ6529',0.00,'2019','2019-06-05 21:56:04'),(68,'Volkswagen','red','MOBI','SIU8852',0.00,'2019','2019-06-05 21:56:04'),(69,'Honda','green','MOBI','MOX2967',0.00,'2019','2019-06-05 21:56:04'),(70,'Kia Motors','blue','MOBI','MQL5076',0.00,'2019','2019-06-05 21:56:04'),(71,'Kia Motors','red','PRISMA','AXX1957',0.00,'2020','2019-06-05 21:56:04'),(72,'Chevrolet','orange','ONIX','KGB7673',0.00,'2018','2019-06-05 21:56:04'),(73,'BMW','yellow','UNO','NPH7730',0.00,'2019','2019-06-05 21:56:04'),(74,'Honda','yellow','Civic','MRQ9019',0.00,'2018','2019-06-05 21:56:04'),(75,'BMW','red','PUNTO','BSY1128',0.00,'2019','2019-06-05 21:56:04'),(76,'Renault','blue','CELTA','KMF8845',0.00,'2018','2019-06-05 21:56:04'),(77,'Mercedes-Benz','violet','Civic','LSX9018',0.00,'2018','2019-06-05 21:56:04'),(78,'Kia Motors','green','Civic','VWN1478',0.00,'2020','2019-06-05 21:56:04'),(79,'Volkswagen','indigo','PRISMA','CXX2423',0.00,'2019','2019-06-05 21:56:04'),(80,'Mitsubishi','orange','TOROS','JEQ9374',0.00,'2018','2019-06-05 21:56:04'),(81,'Nissan','green','PRISMA','QFS9535',0.00,'2019','2019-06-05 21:56:04'),(82,'Mitsubishi','indigo','Civic','XXC3158',0.00,'2019','2019-06-05 21:56:04'),(83,'Ford','orange','SIENA','ZAT6626',0.00,'2019','2019-06-05 21:56:04'),(84,'Renault','blue','Civic','PLM4470',0.00,'2019','2019-06-05 21:56:04'),(85,'Volkswagen','yellow','IDEA','BAO1187',0.00,'2018','2019-06-05 21:56:04'),(86,'Renault','violet','IDEA','WYJ7260',0.00,'2019','2019-06-05 21:56:04'),(87,'Chevrolet','blue','ONIX','RAR8665',0.00,'2019','2019-06-05 21:56:04'),(88,'Mitsubishi','green','UNO','AES5475',0.00,'2018','2019-06-05 21:56:04'),(89,'Honda','violet','PALIO','EBH8479',0.00,'2018','2019-06-05 21:56:04'),(90,'Mitsubishi','green','TOROS','EXA8995',0.00,'2020','2019-06-05 21:56:04'),(91,'Mercedes-Benz','violet','Civic','DLB7856',0.00,'2018','2019-06-05 21:56:04'),(92,'Renault','red','CAPTIVA','PNX4834',0.00,'2019','2019-06-05 21:56:04'),(93,'Fiat','indigo','IDEA','WOG9826',0.00,'2020','2019-06-05 21:56:04'),(94,'Kia Motors','violet','PRISMA','GFH2136',0.00,'2019','2019-06-05 21:56:04'),(95,'Chevrolet','orange','CORSA','IYJ6645',0.00,'2019','2019-06-05 21:56:04'),(96,'Mercedes-Benz','orange','TOROS','FTX0219',0.00,'2019','2019-06-05 21:56:04'),(97,'Volkswagen','green','PALIO','QFL7405',0.00,'2019','2019-06-05 21:56:04'),(98,'BMW','red','IDEA','KCV4086',0.00,'2018','2019-06-05 21:56:04'),(99,'BMW','blue','CORSA','ASG7144',0.00,'2020','2019-06-05 21:56:04'),(100,'Nissan','blue','CORSA','PXX7713',0.00,'2018','2019-06-05 21:56:04'),(101,'Chevrolet','blue','CELTA','WNJ3262',0.00,'2019','2019-06-05 21:56:04'),(102,'Nissan','blue','IDEA','AXG7878',0.00,'2020','2019-06-05 21:56:04'),(103,'Renault','orange','ONIX','POI1726',0.00,'2019','2019-06-05 21:56:04'),(104,'Volkswagen','orange','UNO','EPP8439',0.00,'2019','2019-06-05 21:56:04'),(105,'Chevrolet','red','Civic','IMV2802',0.00,'2018','2019-06-05 21:56:04'),(106,'Kia Motors','yellow','PUNTO','ZTP8750',0.00,'2018','2019-06-05 21:56:04'),(107,'Peugeot','violet','MOBI','VDG3360',0.00,'2018','2019-06-05 21:56:04'),(108,'Chevrolet','green','CAPTIVA','SGX5796',0.00,'2018','2019-06-05 21:56:04'),(109,'Mitsubishi','indigo','Corolla','FEH7015',0.00,'2018','2019-06-05 21:56:04'),(110,'Ford','violet','CLASSIC','AGA4310',0.00,'2018','2019-06-05 21:56:04');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-05 19:19:23