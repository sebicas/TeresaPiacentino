-- MySQL dump 10.11
--
-- Host: localhost    Database: teresapi_base
-- ------------------------------------------------------
-- Server version	5.0.96-community

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
-- Table structure for table `Cuadros`
--

DROP TABLE IF EXISTS `Cuadros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuadros` (
  `CuadroID` tinyint(3) unsigned NOT NULL auto_increment,
  `Catalogo` tinyint(3) unsigned zerofill default NULL,
  `Artista` varchar(50) NOT NULL,
  `PageName` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL default '',
  `Ano` varchar(255) NOT NULL default '',
  `Tamano` varchar(255) NOT NULL default '',
  `Tecnica` varchar(255) NOT NULL default '',
  `Precio` varchar(255) NOT NULL default '',
  `Precio_USD` varchar(255) NOT NULL,
  `Precio_EUR` varchar(255) NOT NULL,
  `PrecioRep` varchar(255) NOT NULL,
  `PrecioRep_USD` varchar(255) NOT NULL,
  `PrecioRep_EUR` varchar(255) NOT NULL,
  `Status` enum('Disponible','Vendido') NOT NULL default 'Disponible',
  PRIMARY KEY  (`CuadroID`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuadros`
--

LOCK TABLES `Cuadros` WRITE;
/*!40000 ALTER TABLE `Cuadros` DISABLE KEYS */;
INSERT INTO `Cuadros` VALUES (1,002,'Teresa Piacentino','pintura-oleo','Flores en las Rocas','2007','50 x 50 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 200','€ 200','Vendido'),(2,003,'Teresa Piacentino','cuadros-originales-oleo','La Tranquera','2007','44 x 60 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 200','€ 200','Vendido'),(3,004,'Teresa Piacentino','cuadros-al-oleo','Recorriendo el Paraná (Díptico)','2008','Díptico I : 35 x 50 cm - Díptico II : 35 X 50 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 200 each','€ 180 c/u','Vendido'),(4,005,'Teresa Piacentino','venta-de-cuadros-online','El Arbol','2008','37 X 50 cm','Oleo sobre Tela','Vendido','','','No Disponible','Unavailable','No Disponible','Vendido'),(5,006,'Teresa Piacentino','galeria-de-cuadros-al-oleo','Otoño Intimo','2008','70 x 50 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 350','€ 250','Vendido'),(6,007,'Teresa Piacentino','venta-de-arte-oleo','Reflejos','2008','30  x 30 cm','Oleo sobre Tela','$900','<STRIKE> U$ 800 </STRIKE> - Ahora U$S 560 - 30% Off','<STRIKE> €600 </STRIKE> - Ahora € 420 - 25% Off','Consultar','U$S 100','€ 100','Disponible'),(10,010,'Teresa Piacentino','cuadros-pinturas','Cerro de los Siete Colores','2008','50 x 50 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 250','€ 230','Vendido'),(7,008,'Teresa Piacentino','cuadros-arte','Un Lugar (Díptico)','2008','Díptico I : 50 X 50 cm - Díptico II : 37 X 50 cm','Oleo sobre Tela','Vendido','','','No Disponible','Unavailable','No Disponible','Vendido'),(8,009,'Teresa Piacentino','cuadros-de-mariposas','Mariposa Transparente','2008','50 x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 350','€ 250','Vendido'),(9,011,'Teresa Piacentino','pintura-al-oleo','Pariendo Emociones (Díptico)','2008','Díptico I : 30 x 60 cm - Díptico II : 30 x 60 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 400','€ 320','Vendido'),(11,012,'Teresa Piacentino','cuadros-modernos','Encuentros Fugaces (Díptico)','2008','Díptico I : 30 x 60 cm - Díptico II : 60 x 60 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 420','€ 370','Vendido'),(12,013,'Teresa Piacentino','galeria-cuadros','Azaleas y Mariposa','2008','35 x 50 cm','Oleo sobre Tela','$ 3,200','U$S 1,250','€ 1100','Consultar','U$S 180','€ 180','Disponible'),(13,014,'Teresa Piacentino','cuadros-modernos-abstractos','Misterios Naturales (Díptico)','2008','Díptico I : 40X70 cm - Díptico II : 70X70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 700','€ 600','Vendido'),(14,015,'Teresa Piacentino','cuadros-abstractos','Transmutación (Díptico)','2008','Díptico I : 30 x 60 cm - Díptico II : 30 X 60 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 400','€ 320','Vendido'),(15,016,'Teresa Piacentino','cuadros-para-decoracion','Mariposa Azul','2008','60 x 60 cm','Oleo sobre Tela','$ 3,800','U$S 1,200','€ 1,050','Consultar','U$S 400','€ 320','Disponible'),(16,017,'Teresa Piacentino','cuadros-de-buenos-aires-oleo','Agua, Luz y Hormigón','2008','50 x 70 cm','Oleo sobre Tela','$ 4,700','U$S 1,750','€ 1,330','Consultar','U$S 350','€ 250','Disponible'),(17,018,'Teresa Piacentino','cuadros-al-oleo-buenos-aires','Amanecer del Plata','2008','70 x 100 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 450','€ 400','Vendido'),(18,019,'Teresa Piacentino','cuadros-modernos-al-oleo','Fuga de Colores','2008','70 x 100 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 450','€ 400','Vendido'),(19,020,'Teresa Piacentino','cuadros-abstractos-al-oleo','Encuentros y Desencuentros (Díptico)','2008','Díptico I : 50 x 70 cm - Díptico II :70 x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 700','€ 600','Vendido'),(20,021,'Teresa Piacentino','venta-de-cuadros-modernos','Direcciones Mágicas','2008','70 x 120 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 700','€ 600','Vendido'),(21,023,'Teresa Piacentino','venta-de-arte-abstracto','Fulgores','2008','50 x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 350','€ 250','Vendido'),(22,024,'Teresa Piacentino','venta-de-pinturas-modernas','A Través','2009','50 x 70 cm','Oleo sobre Tela','$ 2,800','U$S 1,250','€ 1,100','Consultar','U$S 350','€ 250','Disponible'),(23,025,'Teresa Piacentino','venta-de-cuadros','Soledad Acromática','2009','50 x 70 cm','Oleo sobre Tela','$ 3,800','U$S 1,150','€ 1,090','Consultar','U$S 350','€ 250','Disponible'),(24,026,'Teresa Piacentino','galeria-de-cuadros-precios','Iluminada','2009','40 x 70 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','U$S 350','€ 250','Vendido'),(25,036,'Teresa Piacentino','cuadros-modernos-de-flores','Génesis Proyectado','2009','80 x 80 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','U$S 650','€ 550','Vendido'),(26,027,'Teresa Piacentino','venta-de-cuadros-al-oleo','Preferencias de la Abuela','2009','30 x 60 cm','Oleo sobre Tela','$ 1,400','U$S 720','€ 690','Consultar','U$S 200','€ 170','Disponible'),(77,167,'Teresa Piacentino','oleos-abstractos-modernos','Serie Urbano No. 17','2011','70 cm x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 420','€ 370','Vendido'),(28,029,'Teresa Piacentino','pintura-al-oleo-moderna','Fragmento 2 de la Serie Fugas','2009','40 x 80 cm','Oleo sobre Tela','$ 2,250','U$S 1,150','€ 1,100','Consultar','U$S 200','€ 200','Disponible'),(29,030,'Teresa Piacentino','cuadros-al-oleo-arte-moderno','Particula de un Fragmento','2009','50 x 70 cm','Oleo sobre Tela','$ 2,520','U$S 1,150','€ 1,180','Consultar','U$S 350','€ 250','Disponible'),(27,028,'Teresa Piacentino','cuadros-modernos-en-venta','Fragmento 1 de la Serie Fugas','2009','50 x 70 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','U$S 350','€ 250','Disponible'),(30,031,'Teresa Piacentino','venta-de-cuadros-modernos-originales-oleo','Sinfonia en Color','2009','50 x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 350','€ 250','Vendido'),(31,032,'Teresa Piacentino','cuadros-originales-modernos-al-oleo','Cruces Cromáticos','2009','50 x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 350','€ 250','Vendido'),(32,034,'Teresa Piacentino','cuadros-modernos-oleo','Serie Urbano No.4 (Díptico)','2009','Díptico I : 50 x 70 cm - Díptico II :70 x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 700','€ 600','Vendido'),(33,033,'Teresa Piacentino','comprar-cuadros-modernos','Des-estructura','2009','50 x 70 cm','Oleo sobre Tela','$ 2,200','U$S 1,100','€ 1,120','Consultar','U$S 350','€ 250','Disponible'),(34,035,'Teresa Piacentino','cuadros-oleo-modernos','Serie Urbano No.5 (Díptico)','2009','Díptico I : 100 x 100 cm - Díptico II : 100 x 60 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 1,100','€ 1,000','Vendido'),(35,037,'Teresa Piacentino','cuadros-modernos-azul','Serie Urbano No.6 (Díptico)','2009','Díptico I : 100 x 60 cm - Díptico II : 100 x 100 cm','Oleo sobre Tela','$ 12,900','U$S 5,050','€ 4,700','Consultar','U$S 1,100','€ 1,000','Disponible'),(36,038,'Teresa Piacentino','cuadros-modernos-color','Juegos Oníricos No.1','2009','70 x 100 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 450','€ 400','Vendido'),(37,022,'Teresa Piacentino','cuadros-oleos-paisajes','Arboles Azules (Díptico)','2009','Díptico I : 30 x 50 cm - Díptico II : 50 x 50 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 350','€ 250','Vendido'),(38,152,'Teresa Piacentino','dipticos-abstractos','Realidad Sutil','2009','Díptico I : 30 x 30 cm - Díptico II : 24 x 30 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 200','€ 180','Vendido'),(49,149,'Teresa Piacentino','oleos-flores-coloridos','Expansivo II','2010','70 cm x 100 cm','Oleo sobre Tela','$ 3,450','U$S 1,800','€ 1,580','Consultar','U$S 450','€ 400','Disponible'),(39,039,'Teresa Piacentino','flores-oleo-violeta','Policromia Organica','2009','50 x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 350','€ 250','Vendido'),(40,041,'Teresa Piacentino','cuadros-flores-modernos','Juegos Oníricos No.2','2009','70 x 100 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 450','€ 400','Vendido'),(41,040,'Teresa Piacentino','cuadros-flores-oleo','Flores del Tuyu','2009','50 x 70 cm','Oleo sobre Tela','$ 4,100','U$S 1,650','€ 1,190','Consultar','U$S 350','€ 250','Disponible'),(42,042,'Teresa Piacentino','pintura-abstracta-negro-rojo','Serie Urbano No.7','2009','70 cm x 100 cm','Oleo sobre Tela','$ 6,300','U$S 2,650','€ 2,100','Consultar','U$S 450','€ 400','Disponible'),(43,043,'Teresa Piacentino','cuadros-coloridos-oleo','Policromia Sonora','2009','100 x 70 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 450','€ 400','Vendido'),(44,044,'Teresa Piacentino','oleos-modernos-abstractos','Juegos Oníricos No.3','2009','70 cm x 100 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','U$S 450','€ 400','Disponible'),(45,045,'Teresa Piacentino','cuadros-mucho-color','Fulgores No.3','2009','50 cm x 70 cm','Oleo sobre Tela','$ 3,800','U$S 1,150','€ 1,190','Consultar','U$S 350','€ 250','Disponible'),(46,146,'Teresa Piacentino','cuadros-abstractos-muchos-colores','Singular (Triptico)','2009','I : 30 x 30 cm - II : 27 x 30 cm - III : 24 x 30 cm','Oleo sobre Tela','$1,650','U$S 880','€ 760','Consultar','U$S 200','€ 200','Disponible'),(47,147,'Teresa Piacentino','cuadros-flores-modernas-abstractas','Policromia en Movimiento','2010','70 cm x 100 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 450','€ 400','Vendido'),(48,148,'Teresa Piacentino','oleos-modernos-colores','Expansivo No. I','2010','50 cm x 120 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 600','€ 500','Vendido'),(50,150,'Teresa Piacentino','cuadros-flores-colores','Expansivo III (Diptico)','2010','Díptico I : 50 x 70 cm - Díptico II : 50 x 50 cm','Oleo sobre Tela','$3,350 Ambos <BR> Díptico I $2,150 - Diptico II : $1,200','U$S 1,450 Ambos <BR> Díptico I U$S 950 - Diptico II : U$S 500','€ 1,200 Ambos <BR> Díptico I € 750 - Diptico II : € 450','Consultar','U$S 600 Ambos','€ 500 Ambos','Disponible'),(51,151,'Teresa Piacentino','pintura-flores-modernas','Expansivo IV','2010','70 cm x 100 cm','Oleo sobre Tela','$ 3,150','U$S 1,800','€ 1,680','Consultar','U$S 450','€ 400','Disponible'),(52,NULL,'Silvia Martins','cuadros-flores-amarillas','Danza de Abril','2008','50 cm x 70 cm','Oleo sobre Tela','Vendido','','','No Disponible','No Disponible','No Disponible','Vendido'),(53,NULL,'Silvia Martins','naturaleza-muerta-oleos','Jugosas e Iluminadas','2008','50 cm x 35 cm','Oleo sobre Tela','$600','U$S 400','€ 300','No Disponible','No Disponible','No Disponible','Disponible'),(54,NULL,'Silvia Martins','hojas-pintadas-oleo','Sueño otoñal','2005','50 cm x 70 cm','Oleo sobre Tela','$500','U$S 350','€ 250','No Disponible','No Disponible','No Disponible','Disponible'),(55,NULL,'Silvia Martins','cuadro-playa-oleo','Ihla Grande','2007','50 cm x 35 cm','Oleo sobre Tela','Vendido','','','No Disponible','No Disponible','No Disponible','Vendido'),(56,NULL,'Silvia Martins','paisajes-oleo-mar','Santa Rosa de Tastil','2008','50 cm x 70 cm','Oleo sobre Tela','Vendido','','','No Disponible','No Disponible','No Disponible','Vendido'),(57,153,'Teresa Piacentino','venta-cuadros-modernos-oleos','Serie Urbano No. 8','2010','80 cm x 120 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 800','€ 730','Vendido'),(58,154,'Teresa Piacentino','cuadros-coloridos-abstractos','Juegos Oníricos IV','2010','70 cm x 100 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 450','€ 400','Vendido'),(59,155,'Teresa Piacentino','cuadros-modernos-abstractos','Serie Urbano No. 9','2010','Díptico I : 100 x 100 cm - Díptico II : 100 x 60 cm','Oleo sobre Tela','Vendido','','','Consultar','U$S 1,100','€ 1,000','Vendido'),(60,NULL,'Silvia Martins','cuadro-volcan-oleo','Momento','2007','60 cm x 85 cm','Oleo sobre Tela','<STRIKE>&nbsp;$1,300&nbsp;</STRIKE> - Ahora $975 - 25% Off','<STRIKE>&nbsp;U$S 900&nbsp;</STRIKE> - Ahora U$S 675 - 25% Off','<STRIKE>&nbsp;€ 700&nbsp;</STRIKE> - Ahora € 525 - 25% Off','No Disponible','No Disponible','No Disponible','Disponible'),(61,NULL,'Silvia Martins','paisaje-oleo-cuadro','Antiparos','2008','50 cm x 70 cm','Oleo sobre Tela','$850','U$S 600','€ 400','No Disponible','No Disponible','No Disponible','Disponible'),(63,156,'Teresa Piacentino','cuadros-oleo-coloridos-originales','Juegos Oníricos V','2010','70 cm x 100 cm','Oleo sobre Tela','$ 5,400','U$S 2,550','€ 1,900','Consultar','U$S 450','€ 400','Disponible'),(62,NULL,'Silvia Martins','molino-oleo-pintura','Pasiones de la Tierra','2007','50 cm x 70 cm','Oleo sobre Tela','$950','U$S 600','€ 450','No Disponible','No Disponible','No Disponible','Disponible'),(64,157,'Teresa Piacentino','oleos-modernos-abstractos-originales','Serie Urbano No. 10','2010','Díptico I : 100 x 60 cm - Díptico II : 100 x 100 cm','Oleo sobre Tela','$ 12,900','U$S 5,300','€ 4,200','Consultar','U$S 1,100','€ 1,000','Disponible'),(65,158,'Teresa Piacentino','cuadros-flores-oleos-cuerpos','De a Dos','2010','50 cm x 70 cm','Oleo sobre Tela','$ 5,100','U$S 2,250','€ 1,650','Consultar','U$S 350','€ 250','Disponible'),(66,159,'Teresa Piacentino','cuadros-modernos-oleo','Serie Urbano No. 11','2010','Díptico I : 100 x 100 cm - Díptico II : 100 x 60 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','U$S 1,100','€ 1,000','Vendido'),(67,160,'Teresa Piacentino','cuadros-oleos-modernos-ciudad','Serie Urbano No.12','2010','80 cm x 120 cm','Oleo sobre Tela','$ 12,000','U$S 4,900','€ 3,500','Consultar','U$S 800','€ 730','Disponible'),(68,161,'Teresa Piacentino','cuadros-abstractos-colores','Fulgores IV','2010','100 cm x 70 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','U$S 450','€ 400','Vendido'),(69,162,'Teresa Piacentino','cuadros-flores-abstractas','Policromia Organica III','2010','100 cm x 70 cm','Oleo sobre Tela','$ 5,900','U$S 2,650','€ 2,250','Consultar','U$S 450','€ 400','Disponible'),(70,163,'Teresa Piacentino','cuadros-modernos-pintados-oleo','Serie Urbano No. 14','2010','70 cm x 70 cm','Oleo sobre Tela','$ 4,900','U$S 2,300','€ 1,990','Consultar','U$S 420','€ 370','Disponible'),(71,164,'Teresa Piacentino','cuadros-abstractos-modernos','Serie Urbano No. 15','2010','70 cm x 70 cm','Oleo sobre Tela','$4,900','U$S 2,400','€ 2,100','Consultar','U$S 420','€ 370','Disponible'),(72,165,'Teresa Piacentino','pintura-moderna-oleo','Serie Urbano No. 16','2010','70 cm x 70 cm','Oleo sobre Tela','$4,900','U$S 2,200','€ 2,100','Consultar','U$S 420','€ 370','Disponible'),(73,166,'Teresa Piacentino','cuadro-oleo-flores-moderno','Expansivo No. V','2010','Díptico I : 50 x 120 cm - Díptico II : 50 x 70 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','D I : U$S600 - D II : U$S350','D I : €500 - D II : €250','Vendido'),(74,169,'Teresa Piacentino','cuadros-color-oleo-originales','Juegos Oniricos VI','2011','Díptico I : 100 x 60 cm - Díptico II : 100 x 100 cm','Oleo sobre Tela','$ 12,900','U$S 3,900','€ 3,600','Consultar','U$S 1,100','€ 1,000','Disponible'),(75,168,'Teresa Piacentino','cuadros-modernos-originales-abstractos','Serie Urbano No. 18','2011','70 cm x 120 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','U$S 450','€ 400','Vendido'),(76,171,'Teresa Piacentino','flores-oleos-modernos','Policromia en Movimiento IV','2011','60 cm x 100 cm','Oleo sobre Tela','Vendido','Vendido','Vendido','Consultar','U$S 430','€ 380','Disponible'),(78,175,'Teresa Piacentino','cuadros-modernos-violetas','Energia y Luz','2012','70 cm x 100 cm','Oleo sobre tela','$ 5,900','U$S 2,550','€ 1,900','Consultar','U$S 450','€ 400','Disponible'),(79,173,'Teresa Piacentino','cuadros-modernos-coloridos','Juegos Oniricos VII','2012','70 cm x 100 cm','Oleo sobre tela','$ 5,600','U$S 2,550','€ 1,900','Consultar','U$S 450','€ 400','Disponible'),(80,NULL,'Teresa Piacentino','cuadro-auto-carrera','Campeon','2012','50 cm x 70 cm','Oleo sobre tela','','','','','','','Disponible'),(81,178,'Teresa Piacentino','cuadro-modernos-floral','Juegos Oniricos VIII','2012','70 cm x 100 cm','Oleo sobre tela','$ 5,600','U$S 2,550','€ 1,900','Consultar','U$S 450','€ 400','Disponible'),(82,177,'Teresa Piacentino','cuadros-oleo-meditacion','Camino a la luz','2013','50 x 70 cm','Oleo sobre tela','$4,000 ','U$S 1,500','€ 1,090','Consultar','U$S 350','€ 250','Disponible'),(83,172,'Teresa Piacentino','paisajes-oleo','Colon y el Uruguay','2013','40 x 60 cm','Oleo sobre tela','$3,900','U$S 1,300','€ 1,000','Consultar','U$S 350','€ 250','Disponible'),(84,181,'Teresa Piacentino','oleos-jirafa-pintura','La Jirafa de Sofia','2013','40 x 40 cm','Oleo sobre tela','$3,400','U$S 1,000','€ 900','Consultar','U$S 350','€ 250','Disponible'),(85,179,'Teresa Piacentino','oleo-meditacion-armonia','Meditando','2013','80 x 80 cm','Oleo sobre tela','$4,900','U$S 1,250','€ 1,100','Consultar','U$S 450','€ 400','Disponible'),(86,182,'Teresa Piacentino','flores-oleos','Flotando en el Silencio','2013','Díptico I : 100 x 100 cm - Díptico II : 60 x 100 cm','Oleo sobre tela','$10,000','U$S 3,000','€ 2,800','Consultar','U$S 1,100','€ 1,000','Disponible'),(87,176,'Teresa Piacentino','flores-oleo-violetas','Policromia en Movimiento V','2013','70 x 100 cm','Oleo sobre tela','$ 5,800','U$S 2,400','€ 1,900','Consultar','U$S 450','€ 400','Disponible'),(88,NULL,'Teresa Piacentino','oleo-urbano-estructura','Serie Urbano No. 19','2013','70 x 120 cm','Oleo sobre tela','$11,000','U$S 4,500','€ 3,200','Consultar','U$S 800','€ 730','Disponible'),(89,174,'Teresa Piacentino','cuadro-oleo-tigre','Tigre Reflejado','2013','50 x 70 cm','Oleo sobre tela','$4,200','U$S 1,000','€ 1,000','Consultar','U$S 350','€ 250','Disponible');
/*!40000 ALTER TABLE `Cuadros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Laminas`
--

DROP TABLE IF EXISTS `Laminas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Laminas` (
  `LaminaID` smallint(5) unsigned NOT NULL auto_increment,
  `Alto` smallint(5) unsigned NOT NULL,
  `Ancho` smallint(5) unsigned NOT NULL,
  `Precio` varchar(10) NOT NULL,
  `Precio_USD` varchar(10) NOT NULL,
  `Precio_EUR` varchar(10) NOT NULL,
  PRIMARY KEY  (`LaminaID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Laminas`
--

LOCK TABLES `Laminas` WRITE;
/*!40000 ALTER TABLE `Laminas` DISABLE KEYS */;
INSERT INTO `Laminas` VALUES (1,30,44,'$45','U$S 20','€20'),(2,50,70,'$80','U$S 35','€35');
/*!40000 ALTER TABLE `Laminas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reproducciones`
--

DROP TABLE IF EXISTS `Reproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reproducciones` (
  `LaminaID` smallint(5) unsigned NOT NULL auto_increment,
  `Alto` smallint(5) unsigned NOT NULL,
  `Ancho` smallint(5) unsigned NOT NULL,
  `Precio` varchar(10) NOT NULL,
  `Precio_USD` varchar(10) NOT NULL,
  `Precio_EUR` varchar(10) NOT NULL,
  PRIMARY KEY  (`LaminaID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reproducciones`
--

LOCK TABLES `Reproducciones` WRITE;
/*!40000 ALTER TABLE `Reproducciones` DISABLE KEYS */;
INSERT INTO `Reproducciones` VALUES (1,30,45,'$700','U$S 150','€150'),(2,44,60,'$980','U$S 200','€200'),(3,50,70,'$1,060','U$S 350','€ 250'),(4,70,100,'$1,650','U$S 450','€ 400'),(5,100,160,'$3,450','U$S 1,100','€ 1,000');
/*!40000 ALTER TABLE `Reproducciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-21 23:49:19
