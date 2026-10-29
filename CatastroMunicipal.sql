-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: catastromunicipal
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `cabecerafamilias`
--

DROP TABLE IF EXISTS `cabecerafamilias`;
/*!50001 DROP VIEW IF EXISTS `cabecerafamilias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cabecerafamilias` AS SELECT 
 1 AS `Nombre de la Cabecera de la Familia`,
 1 AS `Nombre de la Familia`,
 1 AS `Número de la Familia`,
 1 AS `Calle de la Vivienda`,
 1 AS `Numero de la Vivienda`,
 1 AS `Zona Urbana`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tfamilia`
--

DROP TABLE IF EXISTS `tfamilia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tfamilia` (
  `idFamilia` int NOT NULL AUTO_INCREMENT,
  `nombreFamilia` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idFamilia`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tfamilia`
--

LOCK TABLES `tfamilia` WRITE;
/*!40000 ALTER TABLE `tfamilia` DISABLE KEYS */;
INSERT INTO `tfamilia` VALUES (1,'Pérez González'),(2,'Rodríguez Silva'),(3,'López Martínez'),(4,'Gómez Hernández'),(5,'Díaz Morales'),(6,'Fernández Torres'),(7,'Álvarez Castro'),(8,'Romero Ortiz'),(9,'Ruiz Gutiérrez'),(10,'Vargas Ramos'),(11,'Castro Flores'),(12,'Morales Reyes'),(13,'Herrera Aguilar'),(14,'Jiménez Mendoza'),(15,'Ramos Delgado'),(16,'Silva Ortiz'),(17,'Reyes Medina'),(18,'Ortiz Vargas'),(19,'Moreno Vega'),(20,'Ramos Guerrero'),(21,'Benítez Campos'),(22,'Navarro Fuentes'),(23,'Molina Salazar'),(24,'Delgado Peña'),(25,'Aguilar Cabrera'),(26,'Familia Medina Ríos'),(27,'Familia Vega Bravo'),(28,'Familia Campos Soto'),(29,'Familia Peña Rincón'),(30,'Familia Salazar Arias'),(31,'Pérez López'),(32,'Gómez Silva'),(33,'Ruiz Morales'),(34,'Fernández Vargas'),(35,'Álvarez Reyes'),(36,'Romero Herrera'),(37,'Díaz Jiménez'),(38,'Castro Silva'),(39,'Morales Gómez'),(40,'Herrera Ortiz'),(41,'Jiménez Castro'),(42,'Ramos Morales'),(43,'Silva Pérez'),(44,'Reyes González'),(45,'Ortiz de Dominguez'),(46,'Mendoza Cruz'),(47,'Ibarra Núñez'),(48,'Cortés Lara'),(49,'Escobar Pineda'),(50,'Cabrera Montes');
/*!40000 ALTER TABLE `tfamilia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tfamiliapersona`
--

DROP TABLE IF EXISTS `tfamiliapersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tfamiliapersona` (
  `idFamiliaPersona` int NOT NULL AUTO_INCREMENT,
  `cabeceraFamilia` tinyint(1) NOT NULL DEFAULT '0',
  `idFamilia` int NOT NULL,
  `idPersona` int NOT NULL,
  PRIMARY KEY (`idFamiliaPersona`),
  KEY `idFamilia` (`idFamilia`),
  KEY `idPersona` (`idPersona`),
  CONSTRAINT `tfamiliapersona_ibfk_1` FOREIGN KEY (`idFamilia`) REFERENCES `tfamilia` (`idFamilia`) ON UPDATE CASCADE,
  CONSTRAINT `tfamiliapersona_ibfk_2` FOREIGN KEY (`idPersona`) REFERENCES `tpersona` (`idPersona`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tfamiliapersona`
--

LOCK TABLES `tfamiliapersona` WRITE;
/*!40000 ALTER TABLE `tfamiliapersona` DISABLE KEYS */;
INSERT INTO `tfamiliapersona` VALUES (1,1,1,1),(2,0,1,2),(3,0,1,3),(4,1,2,4),(5,0,2,5),(6,1,3,6),(7,0,3,7),(8,1,4,8),(9,0,4,9),(10,1,5,10),(11,0,5,11),(12,1,6,12),(13,0,6,13),(14,1,7,14),(15,0,7,15),(16,1,8,16),(17,0,8,17),(18,1,9,18),(19,0,9,19),(20,1,10,20),(21,0,10,21),(22,1,11,22),(23,0,11,23),(24,1,12,24),(25,0,12,25),(26,1,13,26),(27,0,13,27),(28,1,14,28),(29,0,14,29),(30,1,15,30),(31,1,16,31),(32,1,17,32),(33,1,18,33),(34,1,19,34),(35,1,20,35),(36,1,21,36),(37,1,22,37),(38,1,23,38),(39,1,24,39),(40,1,25,40),(41,1,26,41),(42,1,27,42),(43,1,28,43),(44,1,29,44),(45,1,30,45),(46,0,10,53),(47,1,31,46),(48,1,32,47),(49,1,33,48),(50,1,34,49),(51,1,35,50),(52,1,36,51),(53,1,37,52),(54,1,38,54),(55,1,39,55),(56,1,40,56),(57,1,41,57),(58,1,42,58),(59,1,43,59),(60,1,44,60),(61,1,45,61),(62,1,46,62),(63,0,46,63),(64,1,47,64),(65,0,47,65),(66,1,48,66),(67,0,48,67),(68,1,49,68),(69,0,49,69),(70,1,50,70),(71,0,50,71);
/*!40000 ALTER TABLE `tfamiliapersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpersona`
--

DROP TABLE IF EXISTS `tpersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpersona` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `aPaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `aMaterno` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpersona`
--

LOCK TABLES `tpersona` WRITE;
/*!40000 ALTER TABLE `tpersona` DISABLE KEYS */;
INSERT INTO `tpersona` VALUES (1,'Juan','Pérez','González'),(2,'María','Pérez','González'),(3,'Carlos','Pérez','González'),(4,'Ana','Rodríguez','Silva'),(5,'Luis','Rodríguez','Silva'),(6,'Sofia','López','Martínez'),(7,'Pedro','López','Martínez'),(8,'Jorge','Gómez','Hernández'),(9,'Lucía','Gómez','Hernández'),(10,'Miguel','Díaz','Morales'),(11,'Elena','Díaz','Morales'),(12,'Gabriel','Fernández','Torres'),(13,'Carmen','Fernández','Torres'),(14,'Diego','Álvarez','Castro'),(15,'Paula','Álvarez','Castro'),(16,'Fernando','Romero','Ortiz'),(17,'Rosa','Romero','Ortiz'),(18,'Javier','Ruiz','Gutiérrez'),(19,'Adriana','Ruiz','Gutiérrez'),(20,'Roberto','Vargas','Ramos'),(21,'Patricia','Vargas','Ramos'),(22,'Ricardo','Castro','Flores'),(23,'Verónica','Castro','Flores'),(24,'Alejandro','Morales','Reyes'),(25,'Daniela','Morales','Reyes'),(26,'Manuel','Herrera','Aguilar'),(27,'Beatriz','Herrera','Aguilar'),(28,'Santiago','Jiménez','Mendoza'),(29,'Natalia','Jiménez','Mendoza'),(30,'Andrés','Ramos','Delgado'),(31,'Valeria','Silva','Ortiz'),(32,'Hugo','Reyes','Medina'),(33,'Camila','Ortiz','Vargas'),(34,'Gonzalo','Moreno','Vega'),(35,'Lorena','Ramos','Guerrero'),(36,'Esteban','Benítez','Campos'),(37,'Claudia','Navarro','Fuentes'),(38,'Felipe','Molina','Salazar'),(39,'Irene','Delgado','Peña'),(40,'Guillermo','Aguilar','Cabrera'),(41,'Alba','Medina','Ríos'),(42,'Tomás','Vega','Bravo'),(43,'Silvia','Campos','Soto'),(44,'Matías','Peña','Rincón'),(45,'Gloria','Salazar','Arias'),(46,'Joaquín','Pérez','López'),(47,'Victoria','Gómez','Silva'),(48,'Samuel','Ruiz','Morales'),(49,'Alicia','Fernández','Vargas'),(50,'Benjamín','Álvarez','Reyes'),(51,'Emilia','Romero','Herrera'),(52,'Álvaro','Díaz','Jiménez'),(53,'Renata','Vargas','Ramos'),(54,'Lucas','Castro','Silva'),(55,'Clara','Morales','Gómez'),(56,'Emilio','Herrera','Ortiz'),(57,'Julia','Jiménez','Castro'),(58,'Mateo','Ramos','Morales'),(59,'Sara','Silva','Pérez'),(60,'Iván','Reyes','González'),(61,'Josefa','Ortiz','de Dominguez'),(62,'Ernesto','Mendoza','Cruz'),(63,'Karla','Mendoza','Cruz'),(64,'Rodrigo','Ibarra','Núñez'),(65,'Mariana','Ibarra','Núñez'),(66,'Héctor','Cortés','Lara'),(67,'Itzel','Cortés','Lara'),(68,'Raúl','Escobar','Pineda'),(69,'Fernanda','Escobar','Pineda'),(70,'Óscar','Cabrera','Montes'),(71,'Regina','Cabrera','Montes');
/*!40000 ALTER TABLE `tpersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpersonavivienda`
--

DROP TABLE IF EXISTS `tpersonavivienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpersonavivienda` (
  `idPersonaVivienda` int NOT NULL AUTO_INCREMENT,
  `propietario` tinyint(1) NOT NULL DEFAULT '0',
  `idPersona` int NOT NULL,
  `idVivienda` int NOT NULL,
  PRIMARY KEY (`idPersonaVivienda`),
  KEY `idPersona` (`idPersona`),
  KEY `idVivienda` (`idVivienda`),
  CONSTRAINT `tpersonavivienda_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `tpersona` (`idPersona`) ON UPDATE CASCADE,
  CONSTRAINT `tpersonavivienda_ibfk_2` FOREIGN KEY (`idVivienda`) REFERENCES `tvivienda` (`idVivienda`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpersonavivienda`
--

LOCK TABLES `tpersonavivienda` WRITE;
/*!40000 ALTER TABLE `tpersonavivienda` DISABLE KEYS */;
INSERT INTO `tpersonavivienda` VALUES (1,1,1,1),(2,0,2,1),(3,0,3,1),(4,1,4,2),(5,0,5,2),(6,1,6,3),(7,0,7,3),(8,1,8,4),(9,0,9,4),(10,1,10,5),(11,0,11,5),(12,1,12,6),(13,1,13,7),(14,1,14,8),(15,1,15,9),(16,1,16,10),(17,1,17,11),(18,1,18,12),(19,1,19,13),(20,1,20,14),(21,1,21,15),(22,1,22,16),(23,1,23,17),(24,1,24,18),(25,1,25,19),(26,1,26,20),(27,1,27,21),(28,1,28,22),(29,1,29,23),(30,1,30,24),(31,1,31,25),(32,1,32,26),(33,1,33,27),(34,1,34,28),(35,1,35,29),(36,1,36,30),(37,0,37,7),(38,0,38,29),(39,0,39,1),(40,0,40,1),(41,0,41,4),(42,1,61,32),(43,1,42,35),(44,1,43,36),(45,1,44,37),(46,1,45,38),(47,1,46,39),(48,1,1,40),(49,0,47,40),(50,0,48,40),(51,1,49,41),(52,0,50,41),(53,1,51,42),(54,0,52,42),(55,1,54,43),(56,0,55,43),(57,0,56,43),(58,1,4,44),(59,0,57,44),(60,0,58,44),(61,1,59,45),(62,1,60,46),(63,0,53,46),(64,1,62,47),(65,0,63,47),(66,1,14,48),(67,0,64,48),(68,0,65,48),(69,1,66,49),(70,0,67,49),(71,1,68,50),(72,0,69,50);
/*!40000 ALTER TABLE `tpersonavivienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttipo`
--

DROP TABLE IF EXISTS `ttipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttipo` (
  `idTipo` int NOT NULL AUTO_INCREMENT,
  `nombreTipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttipo`
--

LOCK TABLES `ttipo` WRITE;
/*!40000 ALTER TABLE `ttipo` DISABLE KEYS */;
INSERT INTO `ttipo` VALUES (1,'Casa unifamiliar'),(2,'Bloque de piso');
/*!40000 ALTER TABLE `ttipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvivienda`
--

DROP TABLE IF EXISTS `tvivienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tvivienda` (
  `idVivienda` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cantidadPisos` int DEFAULT NULL,
  `numVivienda` int NOT NULL,
  `idZonaUrbana` int NOT NULL,
  `idTipo` int NOT NULL,
  PRIMARY KEY (`idVivienda`),
  KEY `idZonaUrbana` (`idZonaUrbana`),
  KEY `idTipo` (`idTipo`),
  CONSTRAINT `tvivienda_ibfk_1` FOREIGN KEY (`idZonaUrbana`) REFERENCES `tzonaurbana` (`idZonaUrbana`) ON UPDATE CASCADE,
  CONSTRAINT `tvivienda_ibfk_2` FOREIGN KEY (`idTipo`) REFERENCES `ttipo` (`idTipo`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvivienda`
--

LOCK TABLES `tvivienda` WRITE;
/*!40000 ALTER TABLE `tvivienda` DISABLE KEYS */;
INSERT INTO `tvivienda` VALUES (1,'Av. Central',NULL,15,1,1),(2,'Calle Principal',4,401,2,2),(3,'Pasaje Sol',NULL,42,3,1),(4,'Av. del Sol',3,302,4,2),(5,'Calle Los Olivos',NULL,88,5,1),(6,'Av. Brasil',5,204,6,2),(7,'Calle Real',NULL,7,7,1),(8,'Av. Los Laureles',2,103,8,2),(9,'Calle Libertad',NULL,99,9,1),(10,'Av. América',4,405,10,2),(11,'Calle Primavera',NULL,50,11,1),(12,'Av. del Sol',3,201,12,2),(13,'Calle Luna',NULL,90,13,1),(14,'Av. Estrellas',6,502,14,2),(15,'Calle Real',NULL,14,15,1),(16,'Av. Marina',5,304,16,2),(17,'Calle Bosque',NULL,63,17,1),(18,'Av. Las Flores',2,102,18,2),(19,'Calle Naranjos',NULL,41,19,1),(20,'Av. Universidad',4,301,20,2),(21,'Calle Palmeras',NULL,22,21,1),(22,'Av. Ejercito',3,203,22,2),(23,'Calle Industrial',NULL,40,23,1),(24,'Av. Circunvalación',5,402,24,2),(25,'Calle Rosas',NULL,31,25,1),(26,'Av. Insurgentes',3,101,26,2),(27,'Calle Cedros',NULL,54,27,1),(28,'Av. Reforma',4,202,28,2),(29,'Calle Pinos',NULL,17,29,1),(30,'Av. Hidalgo',2,104,30,2),(31,'Escuela Naval',2,84,28,2),(32,'Independencia',3,809,1,1),(33,'Lomas de Chapultepec',6,111,10,1),(34,'Av. Brasil',1,6767,6,2),(35,'Calle Jacarandas',NULL,18,31,1),(36,'Av. Revolución',4,305,32,2),(37,'Calle Magnolias',NULL,27,33,1),(38,'Av. Chapultepec',5,410,34,2),(39,'Calle Alcatraces',NULL,35,35,1),(40,'Av. Tlalpan',3,206,36,2),(41,'Calle Girasoles',NULL,12,37,1),(42,'Av. Patriotismo',4,308,38,2),(43,'Calle Tulipanes',NULL,73,39,1),(44,'Av. Cuauhtémoc',2,107,40,2),(45,'Calle Azaleas',NULL,29,41,1),(46,'Av. Coyoacán',6,504,42,2),(47,'Calle Violetas',NULL,66,43,1),(48,'Av. Eje Central',3,209,44,2),(49,'Calle Gardenias',NULL,81,45,1),(50,'Av. Insurgentes Sur',4,303,46,2);
/*!40000 ALTER TABLE `tvivienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tzonaurbana`
--

DROP TABLE IF EXISTS `tzonaurbana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tzonaurbana` (
  `idZonaUrbana` int NOT NULL AUTO_INCREMENT,
  `nombreZonaUrbana` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idZonaUrbana`),
  UNIQUE KEY `nombreZonaUrbana` (`nombreZonaUrbana`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tzonaurbana`
--

LOCK TABLES `tzonaurbana` WRITE;
/*!40000 ALTER TABLE `tzonaurbana` DISABLE KEYS */;
INSERT INTO `tzonaurbana` VALUES (24,'Altamira'),(17,'Bella Vista'),(27,'Bosques del Valle'),(29,'Campestre'),(1,'Centro Histórico'),(35,'Colinas del Sur'),(38,'Condesa'),(40,'Coyoacán Centro'),(30,'Cumbres'),(12,'Del Valle'),(49,'Doctores'),(33,'El Mirador'),(15,'El Rosario'),(47,'Escandón'),(19,'Guadalupe'),(44,'Industrial Norte'),(45,'Jardín Balbuena'),(23,'Jardines del Sol'),(28,'La Hacienda'),(20,'La Loma'),(9,'Las Condes'),(32,'Las Palmas'),(36,'Lindavista'),(11,'Lomas Blancas'),(14,'Los Olivos'),(25,'Los Pinos'),(8,'Miraflores'),(46,'Moderna'),(39,'Narvarte'),(43,'Nueva Vallejo'),(21,'Pedregal'),(10,'Polanco'),(48,'Portales'),(37,'Roma Norte'),(50,'San Ángel'),(26,'San Francisco'),(22,'San José'),(18,'San Juan'),(16,'San Miguel'),(31,'San Pedro'),(6,'San Rafael'),(42,'Santa Fe'),(7,'Santa María'),(41,'Tlalpan Centro'),(34,'Valle Dorado'),(13,'Villa Verde'),(4,'Zona Este'),(2,'Zona Norte'),(5,'Zona Oeste'),(3,'Zona Sur');
/*!40000 ALTER TABLE `tzonaurbana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vapellidofamilia`
--

DROP TABLE IF EXISTS `vapellidofamilia`;
/*!50001 DROP VIEW IF EXISTS `vapellidofamilia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vapellidofamilia` AS SELECT 
 1 AS `idFamilia`,
 1 AS `idFamiliaPersona`,
 1 AS `Nombre Persona`,
 1 AS `Nombre de la Familia`,
 1 AS `Comparación apellidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vbloquesaltos`
--

DROP TABLE IF EXISTS `vbloquesaltos`;
/*!50001 DROP VIEW IF EXISTS `vbloquesaltos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vbloquesaltos` AS SELECT 
 1 AS `Calle`,
 1 AS `Número de vivienda`,
 1 AS `Zona`,
 1 AS `Cantidad de pisos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vcabezasfamiliadomicilio`
--

DROP TABLE IF EXISTS `vcabezasfamiliadomicilio`;
/*!50001 DROP VIEW IF EXISTS `vcabezasfamiliadomicilio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vcabezasfamiliadomicilio` AS SELECT 
 1 AS `idFamilia`,
 1 AS `nombreFamilia`,
 1 AS `idPersona`,
 1 AS `CabezaFamilia`,
 1 AS `idVivienda`,
 1 AS `Domicilio`,
 1 AS `Zona`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vcapacidadvivienda`
--

DROP TABLE IF EXISTS `vcapacidadvivienda`;
/*!50001 DROP VIEW IF EXISTS `vcapacidadvivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vcapacidadvivienda` AS SELECT 
 1 AS `idVivienda`,
 1 AS `calle`,
 1 AS `numVivienda`,
 1 AS `tipo`,
 1 AS `limite`,
 1 AS `habitantes`,
 1 AS `lugaresLibres`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vdireccionpropietario`
--

DROP TABLE IF EXISTS `vdireccionpropietario`;
/*!50001 DROP VIEW IF EXISTS `vdireccionpropietario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vdireccionpropietario` AS SELECT 
 1 AS `idVivienda`,
 1 AS `Propietario`,
 1 AS `Direccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vfamiliapersona`
--

DROP TABLE IF EXISTS `vfamiliapersona`;
/*!50001 DROP VIEW IF EXISTS `vfamiliapersona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vfamiliapersona` AS SELECT 
 1 AS `idFamilia`,
 1 AS `nombreFamilia`,
 1 AS `Es Cabecera (1=Si, 0=No)`,
 1 AS `idPersona`,
 1 AS `nombres`,
 1 AS `aPaterno`,
 1 AS `aMaterno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vfamiliascabecerasinvalidas`
--

DROP TABLE IF EXISTS `vfamiliascabecerasinvalidas`;
/*!50001 DROP VIEW IF EXISTS `vfamiliascabecerasinvalidas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vfamiliascabecerasinvalidas` AS SELECT 
 1 AS `idFamilia`,
 1 AS `nombreFamilia`,
 1 AS `TotalCabeceras`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vfamiliasmultivivienda`
--

DROP TABLE IF EXISTS `vfamiliasmultivivienda`;
/*!50001 DROP VIEW IF EXISTS `vfamiliasmultivivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vfamiliasmultivivienda` AS SELECT 
 1 AS `idFamilia`,
 1 AS `nombreFamilia`,
 1 AS `TotalViviendasDistintas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vhabitantesnopropietarios`
--

DROP TABLE IF EXISTS `vhabitantesnopropietarios`;
/*!50001 DROP VIEW IF EXISTS `vhabitantesnopropietarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vhabitantesnopropietarios` AS SELECT 
 1 AS `idVivienda`,
 1 AS `idHabitante`,
 1 AS `Habitante`,
 1 AS `idPropietario`,
 1 AS `Propietario`,
 1 AS `calle`,
 1 AS `numVivienda`,
 1 AS `Zona`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vhabitantesporvivienda`
--

DROP TABLE IF EXISTS `vhabitantesporvivienda`;
/*!50001 DROP VIEW IF EXISTS `vhabitantesporvivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vhabitantesporvivienda` AS SELECT 
 1 AS `idVivienda`,
 1 AS `calle`,
 1 AS `numVivienda`,
 1 AS `habitantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpersonasmultivivienda`
--

DROP TABLE IF EXISTS `vpersonasmultivivienda`;
/*!50001 DROP VIEW IF EXISTS `vpersonasmultivivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpersonasmultivivienda` AS SELECT 
 1 AS `idPersona`,
 1 AS `Residente`,
 1 AS `TotalViviendasHabitadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpersonassinvivienda`
--

DROP TABLE IF EXISTS `vpersonassinvivienda`;
/*!50001 DROP VIEW IF EXISTS `vpersonassinvivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpersonassinvivienda` AS SELECT 
 1 AS `idPersona`,
 1 AS `NombreCompleto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpersonavivienda`
--

DROP TABLE IF EXISTS `vpersonavivienda`;
/*!50001 DROP VIEW IF EXISTS `vpersonavivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpersonavivienda` AS SELECT 
 1 AS `Código Registro`,
 1 AS `idPersona`,
 1 AS `nombres`,
 1 AS `aPaterno`,
 1 AS `aMaterno`,
 1 AS `Es Propietario (1=Si, 0=No)`,
 1 AS `calle`,
 1 AS `numVivienda`,
 1 AS `Zona Urbana`,
 1 AS `Tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpropietarionohabitavivienda`
--

DROP TABLE IF EXISTS `vpropietarionohabitavivienda`;
/*!50001 DROP VIEW IF EXISTS `vpropietarionohabitavivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpropietarionohabitavivienda` AS SELECT 
 1 AS `idPersona`,
 1 AS `concat(p.nombres, ' ', p.aPaterno, ' ', p.aMaterno)`,
 1 AS `callePropiedad`,
 1 AS `numViviendaPropiedad`,
 1 AS `calleHabita`,
 1 AS `numViviendaHabita`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vresumenfamilia`
--

DROP TABLE IF EXISTS `vresumenfamilia`;
/*!50001 DROP VIEW IF EXISTS `vresumenfamilia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vresumenfamilia` AS SELECT 
 1 AS `idFamilia`,
 1 AS `NombreFamilia`,
 1 AS `TotalIntegrantes`,
 1 AS `CabezaFamilia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vresumentipovivienda`
--

DROP TABLE IF EXISTS `vresumentipovivienda`;
/*!50001 DROP VIEW IF EXISTS `vresumentipovivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vresumentipovivienda` AS SELECT 
 1 AS `Tipo de vivienda`,
 1 AS `Total de viviendas`,
 1 AS `Promedio de habitantes por vivienda`,
 1 AS `Promedio de pisos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vresumenzona`
--

DROP TABLE IF EXISTS `vresumenzona`;
/*!50001 DROP VIEW IF EXISTS `vresumenzona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vresumenzona` AS SELECT 
 1 AS `Zona`,
 1 AS `Total de viviendas`,
 1 AS `Casas`,
 1 AS `Bloques`,
 1 AS `Total de habitantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vtotalviviendapropietario`
--

DROP TABLE IF EXISTS `vtotalviviendapropietario`;
/*!50001 DROP VIEW IF EXISTS `vtotalviviendapropietario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vtotalviviendapropietario` AS SELECT 
 1 AS `idPersona`,
 1 AS `Propietario`,
 1 AS `TotalViviendas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vvivienda`
--

DROP TABLE IF EXISTS `vvivienda`;
/*!50001 DROP VIEW IF EXISTS `vvivienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vvivienda` AS SELECT 
 1 AS `idVivienda`,
 1 AS `calle`,
 1 AS `numVivienda`,
 1 AS `cantidadPisos`,
 1 AS `Zona Urbana`,
 1 AS `Tipo de Vivienda`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vviviendasllenas`
--

DROP TABLE IF EXISTS `vviviendasllenas`;
/*!50001 DROP VIEW IF EXISTS `vviviendasllenas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vviviendasllenas` AS SELECT 
 1 AS `idVivienda`,
 1 AS `calle`,
 1 AS `numVivienda`,
 1 AS `zona`,
 1 AS `tipo`,
 1 AS `limite`,
 1 AS `habitantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vviviendassinhabitantes`
--

DROP TABLE IF EXISTS `vviviendassinhabitantes`;
/*!50001 DROP VIEW IF EXISTS `vviviendassinhabitantes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vviviendassinhabitantes` AS SELECT 
 1 AS `idVivienda`,
 1 AS `direccionCompleta`,
 1 AS `calle`,
 1 AS `numVivienda`,
 1 AS `zona`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vviviendassinpropietariooduplicados`
--

DROP TABLE IF EXISTS `vviviendassinpropietariooduplicados`;
/*!50001 DROP VIEW IF EXISTS `vviviendassinpropietariooduplicados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vviviendassinpropietariooduplicados` AS SELECT 
 1 AS `idVivienda`,
 1 AS `calle`,
 1 AS `numVivienda`,
 1 AS `totalPropietarios`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `cabecerafamilias`
--

/*!50001 DROP VIEW IF EXISTS `cabecerafamilias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `cabecerafamilias` AS select `p`.`nombres` AS `Nombre de la Cabecera de la Familia`,`f`.`nombreFamilia` AS `Nombre de la Familia`,`f`.`idFamilia` AS `Número de la Familia`,`v`.`calle` AS `Calle de la Vivienda`,`v`.`numVivienda` AS `Numero de la Vivienda`,`z`.`nombreZonaUrbana` AS `Zona Urbana` from (((((`tfamiliapersona` `fp` join `tfamilia` `f` on((`f`.`idFamilia` = `fp`.`idFamilia`))) join `tpersona` `p` on((`fp`.`idPersona` = `p`.`idPersona`))) join `tpersonavivienda` `pv` on((`p`.`idPersona` = `pv`.`idPersona`))) join `tvivienda` `v` on((`pv`.`idVivienda` = `v`.`idVivienda`))) join `tzonaurbana` `z` on((`v`.`idZonaUrbana` = `z`.`idZonaUrbana`))) where (`fp`.`cabeceraFamilia` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vapellidofamilia`
--

/*!50001 DROP VIEW IF EXISTS `vapellidofamilia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vapellidofamilia` AS select `f`.`idFamilia` AS `idFamilia`,`fp`.`idFamiliaPersona` AS `idFamiliaPersona`,concat(`p`.`nombres`,' ',`p`.`aPaterno`,' ',`p`.`aMaterno`) AS `Nombre Persona`,`f`.`nombreFamilia` AS `Nombre de la Familia`,(case when ((`f`.`nombreFamilia` like concat('%',`p`.`aPaterno`,'%')) and (`f`.`nombreFamilia` like concat('%',`p`.`aMaterno`,'%'))) then 'Coincide' else 'No coincide' end) AS `Comparación apellidos` from ((`tpersona` `p` join `tfamiliapersona` `fp` on((`p`.`idPersona` = `fp`.`idPersona`))) join `tfamilia` `f` on((`fp`.`idFamilia` = `f`.`idFamilia`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vbloquesaltos`
--

/*!50001 DROP VIEW IF EXISTS `vbloquesaltos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vbloquesaltos` AS select `v`.`calle` AS `Calle`,`v`.`numVivienda` AS `Número de vivienda`,`z`.`nombreZonaUrbana` AS `Zona`,`v`.`cantidadPisos` AS `Cantidad de pisos` from (`tvivienda` `v` join `tzonaurbana` `z` on((`v`.`idZonaUrbana` = `z`.`idZonaUrbana`))) where ((`v`.`idTipo` = 2) and (`v`.`cantidadPisos` >= 4)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vcabezasfamiliadomicilio`
--

/*!50001 DROP VIEW IF EXISTS `vcabezasfamiliadomicilio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vcabezasfamiliadomicilio` AS select distinct `f`.`idFamilia` AS `idFamilia`,`f`.`nombreFamilia` AS `nombreFamilia`,`p`.`idPersona` AS `idPersona`,concat_ws(' ',`p`.`nombres`,`p`.`aPaterno`,`p`.`aMaterno`) AS `CabezaFamilia`,`v`.`idVivienda` AS `idVivienda`,concat(`v`.`calle`,' #',`v`.`numVivienda`,', ',`z`.`nombreZonaUrbana`) AS `Domicilio`,`z`.`nombreZonaUrbana` AS `Zona` from (((((`tfamilia` `f` join `tfamiliapersona` `fp` on((`f`.`idFamilia` = `fp`.`idFamilia`))) join `tpersona` `p` on((`fp`.`idPersona` = `p`.`idPersona`))) join `tpersonavivienda` `pv` on((`p`.`idPersona` = `pv`.`idPersona`))) join `tvivienda` `v` on((`pv`.`idVivienda` = `v`.`idVivienda`))) join `tzonaurbana` `z` on((`v`.`idZonaUrbana` = `z`.`idZonaUrbana`))) where (`fp`.`cabeceraFamilia` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vcapacidadvivienda`
--

/*!50001 DROP VIEW IF EXISTS `vcapacidadvivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vcapacidadvivienda` AS select `h`.`idVivienda` AS `idVivienda`,`h`.`calle` AS `calle`,`h`.`numVivienda` AS `numVivienda`,`t`.`nombreTipo` AS `tipo`,(case when (`v`.`idTipo` = 1) then 5 when (`v`.`idTipo` = 2) then 3 end) AS `limite`,`h`.`habitantes` AS `habitantes`,((case when (`v`.`idTipo` = 1) then 5 when (`v`.`idTipo` = 2) then 3 end) - `h`.`habitantes`) AS `lugaresLibres` from ((`vhabitantesporvivienda` `h` join `tvivienda` `v` on((`h`.`idVivienda` = `v`.`idVivienda`))) join `ttipo` `t` on((`v`.`idTipo` = `t`.`idTipo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vdireccionpropietario`
--

/*!50001 DROP VIEW IF EXISTS `vdireccionpropietario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vdireccionpropietario` AS select `v`.`idVivienda` AS `idVivienda`,coalesce(group_concat(distinct (case when (`p`.`idPersona` is not null) then concat_ws(' ',`p`.`aPaterno`,`p`.`aMaterno`,`p`.`nombres`) end) separator '; '),'Sin propietario') AS `Propietario`,concat(`v`.`calle`,' #',`v`.`numVivienda`,', ',`z`.`nombreZonaUrbana`) AS `Direccion` from (((`tvivienda` `v` join `tzonaurbana` `z` on((`v`.`idZonaUrbana` = `z`.`idZonaUrbana`))) left join `tpersonavivienda` `pv` on(((`v`.`idVivienda` = `pv`.`idVivienda`) and (`pv`.`propietario` = 1)))) left join `tpersona` `p` on((`pv`.`idPersona` = `p`.`idPersona`))) group by `v`.`idVivienda`,`v`.`calle`,`v`.`numVivienda`,`z`.`nombreZonaUrbana` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vfamiliapersona`
--

/*!50001 DROP VIEW IF EXISTS `vfamiliapersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vfamiliapersona` AS select `f`.`idFamilia` AS `idFamilia`,`f`.`nombreFamilia` AS `nombreFamilia`,`fp`.`cabeceraFamilia` AS `Es Cabecera (1=Si, 0=No)`,`p`.`idPersona` AS `idPersona`,`p`.`nombres` AS `nombres`,`p`.`aPaterno` AS `aPaterno`,`p`.`aMaterno` AS `aMaterno` from ((`tfamiliapersona` `fp` join `tfamilia` `f` on((`f`.`idFamilia` = `fp`.`idFamilia`))) join `tpersona` `p` on((`p`.`idPersona` = `fp`.`idPersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vfamiliascabecerasinvalidas`
--

/*!50001 DROP VIEW IF EXISTS `vfamiliascabecerasinvalidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vfamiliascabecerasinvalidas` AS select `f`.`idFamilia` AS `idFamilia`,`f`.`nombreFamilia` AS `nombreFamilia`,count(distinct (case when (`fp`.`cabeceraFamilia` = 1) then `fp`.`idPersona` end)) AS `TotalCabeceras` from (`tfamilia` `f` left join `tfamiliapersona` `fp` on((`f`.`idFamilia` = `fp`.`idFamilia`))) group by `f`.`idFamilia`,`f`.`nombreFamilia` having ((`TotalCabeceras` = 0) or (`TotalCabeceras` > 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vfamiliasmultivivienda`
--

/*!50001 DROP VIEW IF EXISTS `vfamiliasmultivivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vfamiliasmultivivienda` AS select `f`.`idFamilia` AS `idFamilia`,`f`.`nombreFamilia` AS `nombreFamilia`,count(distinct `pv`.`idVivienda`) AS `TotalViviendasDistintas` from ((`tfamilia` `f` join `tfamiliapersona` `fp` on((`f`.`idFamilia` = `fp`.`idFamilia`))) join `tpersonavivienda` `pv` on((`fp`.`idPersona` = `pv`.`idPersona`))) group by `f`.`idFamilia`,`f`.`nombreFamilia` having (count(distinct `pv`.`idVivienda`) > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vhabitantesnopropietarios`
--

/*!50001 DROP VIEW IF EXISTS `vhabitantesnopropietarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vhabitantesnopropietarios` AS select `v`.`idVivienda` AS `idVivienda`,`p`.`idPersona` AS `idHabitante`,concat_ws(' ',`p`.`nombres`,`p`.`aPaterno`,`p`.`aMaterno`) AS `Habitante`,`p2`.`idPersona` AS `idPropietario`,concat_ws(' ',`p2`.`nombres`,`p2`.`aPaterno`,`p2`.`aMaterno`) AS `Propietario`,`v`.`calle` AS `calle`,`v`.`numVivienda` AS `numVivienda`,`z`.`nombreZonaUrbana` AS `Zona` from (((((`tpersonavivienda` `pv` join `tpersona` `p` on((`pv`.`idPersona` = `p`.`idPersona`))) join `tvivienda` `v` on((`pv`.`idVivienda` = `v`.`idVivienda`))) join `tzonaurbana` `z` on((`v`.`idZonaUrbana` = `z`.`idZonaUrbana`))) join `tpersonavivienda` `pv2` on(((`pv`.`idVivienda` = `pv2`.`idVivienda`) and (`pv2`.`propietario` = 1)))) join `tpersona` `p2` on((`pv2`.`idPersona` = `p2`.`idPersona`))) where ((`pv`.`propietario` = 0) and (`pv`.`idPersona` <> `pv2`.`idPersona`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vhabitantesporvivienda`
--

/*!50001 DROP VIEW IF EXISTS `vhabitantesporvivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vhabitantesporvivienda` AS select `v`.`idVivienda` AS `idVivienda`,`v`.`calle` AS `calle`,`v`.`numVivienda` AS `numVivienda`,count(distinct `pv`.`idPersona`) AS `habitantes` from (`tvivienda` `v` left join `tpersonavivienda` `pv` on((`v`.`idVivienda` = `pv`.`idVivienda`))) group by `v`.`idVivienda`,`v`.`calle`,`v`.`numVivienda` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpersonasmultivivienda`
--

/*!50001 DROP VIEW IF EXISTS `vpersonasmultivivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vpersonasmultivivienda` AS select `p`.`idPersona` AS `idPersona`,concat_ws(' ',`p`.`aPaterno`,`p`.`aMaterno`,`p`.`nombres`) AS `Residente`,count(distinct `pv`.`idVivienda`) AS `TotalViviendasHabitadas` from (`tpersona` `p` join `tpersonavivienda` `pv` on((`p`.`idPersona` = `pv`.`idPersona`))) group by `p`.`idPersona`,`p`.`aPaterno`,`p`.`aMaterno`,`p`.`nombres` having (count(distinct `pv`.`idVivienda`) > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpersonassinvivienda`
--

/*!50001 DROP VIEW IF EXISTS `vpersonassinvivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vpersonassinvivienda` AS select `p`.`idPersona` AS `idPersona`,concat_ws(' ',`p`.`nombres`,`p`.`aPaterno`,`p`.`aMaterno`) AS `NombreCompleto` from (`tpersona` `p` left join `tpersonavivienda` `pv` on((`p`.`idPersona` = `pv`.`idPersona`))) where (`pv`.`idPersona` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpersonavivienda`
--

/*!50001 DROP VIEW IF EXISTS `vpersonavivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vpersonavivienda` AS select `pv`.`idPersonaVivienda` AS `Código Registro`,`p`.`idPersona` AS `idPersona`,`p`.`nombres` AS `nombres`,`p`.`aPaterno` AS `aPaterno`,`p`.`aMaterno` AS `aMaterno`,`pv`.`propietario` AS `Es Propietario (1=Si, 0=No)`,`v`.`calle` AS `calle`,`v`.`numVivienda` AS `numVivienda`,`z`.`nombreZonaUrbana` AS `Zona Urbana`,`t`.`nombreTipo` AS `Tipo` from ((((`tpersonavivienda` `pv` join `tpersona` `p` on((`p`.`idPersona` = `pv`.`idPersona`))) join `tvivienda` `v` on((`v`.`idVivienda` = `pv`.`idVivienda`))) join `tzonaurbana` `z` on((`z`.`idZonaUrbana` = `v`.`idZonaUrbana`))) join `ttipo` `t` on((`t`.`idTipo` = `v`.`idTipo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpropietarionohabitavivienda`
--

/*!50001 DROP VIEW IF EXISTS `vpropietarionohabitavivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vpropietarionohabitavivienda` AS select `p`.`idPersona` AS `idPersona`,concat(`p`.`nombres`,' ',`p`.`aPaterno`,' ',`p`.`aMaterno`) AS `concat(p.nombres, ' ', p.aPaterno, ' ', p.aMaterno)`,`v1`.`calle` AS `callePropiedad`,`v1`.`numVivienda` AS `numViviendaPropiedad`,`v2`.`calle` AS `calleHabita`,`v2`.`numVivienda` AS `numViviendaHabita` from ((((`tpersonavivienda` `pv1` join `tpersona` `p` on((`p`.`idPersona` = `pv1`.`idPersona`))) join `tvivienda` `v1` on((`v1`.`idVivienda` = `pv1`.`idVivienda`))) join `tpersonavivienda` `pv2` on(((`pv2`.`idPersona` = `pv1`.`idPersona`) and (`pv2`.`propietario` = 0)))) join `tvivienda` `v2` on((`v2`.`idVivienda` = `pv2`.`idVivienda`))) where ((`pv1`.`propietario` = 1) and (`pv1`.`idVivienda` <> `pv2`.`idVivienda`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vresumenfamilia`
--

/*!50001 DROP VIEW IF EXISTS `vresumenfamilia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vresumenfamilia` AS select `f`.`idFamilia` AS `idFamilia`,`f`.`nombreFamilia` AS `NombreFamilia`,count(distinct `fp`.`idPersona`) AS `TotalIntegrantes`,coalesce(group_concat(distinct (case when (`fp`.`cabeceraFamilia` = 1) then concat_ws(' ',`p`.`aPaterno`,`p`.`aMaterno`,`p`.`nombres`) end) separator '; '),'Sin cabecera') AS `CabezaFamilia` from ((`tfamilia` `f` left join `tfamiliapersona` `fp` on((`f`.`idFamilia` = `fp`.`idFamilia`))) left join `tpersona` `p` on((`fp`.`idPersona` = `p`.`idPersona`))) group by `f`.`idFamilia`,`f`.`nombreFamilia` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vresumentipovivienda`
--

/*!50001 DROP VIEW IF EXISTS `vresumentipovivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vresumentipovivienda` AS select `t`.`nombreTipo` AS `Tipo de vivienda`,count(0) AS `Total de viviendas`,avg(`h`.`habitantes`) AS `Promedio de habitantes por vivienda`,avg((case when (`v`.`idTipo` = 2) then `v`.`cantidadPisos` end)) AS `Promedio de pisos` from ((`tvivienda` `v` join `ttipo` `t` on((`v`.`idTipo` = `t`.`idTipo`))) join `vhabitantesporvivienda` `h` on((`v`.`idVivienda` = `h`.`idVivienda`))) where (`v`.`idTipo` in (1,2)) group by `t`.`idTipo`,`t`.`nombreTipo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vresumenzona`
--

/*!50001 DROP VIEW IF EXISTS `vresumenzona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vresumenzona` AS select `z`.`nombreZonaUrbana` AS `Zona`,count(distinct `v`.`idVivienda`) AS `Total de viviendas`,count(distinct (case when (`v`.`idTipo` = 1) then `v`.`idVivienda` end)) AS `Casas`,count(distinct (case when (`v`.`idTipo` = 2) then `v`.`idVivienda` end)) AS `Bloques`,count(distinct `pv`.`idPersona`) AS `Total de habitantes` from ((`tzonaurbana` `z` left join `tvivienda` `v` on((`v`.`idZonaUrbana` = `z`.`idZonaUrbana`))) left join `tpersonavivienda` `pv` on((`pv`.`idVivienda` = `v`.`idVivienda`))) group by `z`.`idZonaUrbana`,`z`.`nombreZonaUrbana` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vtotalviviendapropietario`
--

/*!50001 DROP VIEW IF EXISTS `vtotalviviendapropietario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vtotalviviendapropietario` AS select `p`.`idPersona` AS `idPersona`,concat_ws(' ',`p`.`aPaterno`,`p`.`aMaterno`,`p`.`nombres`) AS `Propietario`,count(distinct `pv`.`idVivienda`) AS `TotalViviendas` from (`tpersonavivienda` `pv` join `tpersona` `p` on((`pv`.`idPersona` = `p`.`idPersona`))) where (`pv`.`propietario` = 1) group by `p`.`idPersona`,`p`.`aPaterno`,`p`.`aMaterno`,`p`.`nombres` having (count(distinct `pv`.`idVivienda`) >= 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vvivienda`
--

/*!50001 DROP VIEW IF EXISTS `vvivienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vvivienda` AS select `v`.`idVivienda` AS `idVivienda`,`v`.`calle` AS `calle`,`v`.`numVivienda` AS `numVivienda`,`v`.`cantidadPisos` AS `cantidadPisos`,`z`.`nombreZonaUrbana` AS `Zona Urbana`,`t`.`nombreTipo` AS `Tipo de Vivienda` from ((`tvivienda` `v` join `tzonaurbana` `z` on((`z`.`idZonaUrbana` = `v`.`idZonaUrbana`))) join `ttipo` `t` on((`t`.`idTipo` = `v`.`idTipo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vviviendasllenas`
--

/*!50001 DROP VIEW IF EXISTS `vviviendasllenas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vviviendasllenas` AS select `c`.`idVivienda` AS `idVivienda`,`c`.`calle` AS `calle`,`c`.`numVivienda` AS `numVivienda`,`z`.`nombreZonaUrbana` AS `zona`,`c`.`tipo` AS `tipo`,`c`.`limite` AS `limite`,`c`.`habitantes` AS `habitantes` from ((`vcapacidadvivienda` `c` join `tvivienda` `v` on((`c`.`idVivienda` = `v`.`idVivienda`))) join `tzonaurbana` `z` on((`v`.`idZonaUrbana` = `z`.`idZonaUrbana`))) where (`c`.`habitantes` >= `c`.`limite`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vviviendassinhabitantes`
--

/*!50001 DROP VIEW IF EXISTS `vviviendassinhabitantes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vviviendassinhabitantes` AS select `h`.`idVivienda` AS `idVivienda`,concat(`h`.`calle`,' #',`h`.`numVivienda`,', ',`z`.`nombreZonaUrbana`) AS `direccionCompleta`,`h`.`calle` AS `calle`,`h`.`numVivienda` AS `numVivienda`,`z`.`nombreZonaUrbana` AS `zona` from ((`vhabitantesporvivienda` `h` join `tvivienda` `v` on((`h`.`idVivienda` = `v`.`idVivienda`))) join `tzonaurbana` `z` on((`v`.`idZonaUrbana` = `z`.`idZonaUrbana`))) where (`h`.`habitantes` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vviviendassinpropietariooduplicados`
--

/*!50001 DROP VIEW IF EXISTS `vviviendassinpropietariooduplicados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vviviendassinpropietariooduplicados` AS select `v`.`idVivienda` AS `idVivienda`,`v`.`calle` AS `calle`,`v`.`numVivienda` AS `numVivienda`,count(`pv`.`idPersona`) AS `totalPropietarios` from (`tvivienda` `v` left join `tpersonavivienda` `pv` on(((`v`.`idVivienda` = `pv`.`idVivienda`) and (`pv`.`propietario` = 1)))) group by `v`.`idVivienda`,`v`.`calle`,`v`.`numVivienda` having ((count(`pv`.`idPersona`) = 0) or (count(`pv`.`idPersona`) > 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-29 11:59:08
