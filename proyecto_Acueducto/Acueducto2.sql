-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: acueducto2
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `barrios`
--

DROP TABLE IF EXISTS `barrios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barrios` (
  `id_barrio` int NOT NULL AUTO_INCREMENT,
  `nombre_barrio` varchar(50) DEFAULT NULL,
  `nombre_localidad` varchar(50) DEFAULT NULL,
  `id_zona` int DEFAULT NULL,
  PRIMARY KEY (`id_barrio`),
  KEY `nombre_localidad` (`nombre_localidad`),
  KEY `id_zona` (`id_zona`),
  CONSTRAINT `barrios_ibfk_1` FOREIGN KEY (`nombre_localidad`) REFERENCES `localidades` (`nombre_localidad`),
  CONSTRAINT `barrios_ibfk_2` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrios`
--

LOCK TABLES `barrios` WRITE;
/*!40000 ALTER TABLE `barrios` DISABLE KEYS */;
INSERT INTO `barrios` VALUES (1,'Cortijo','Engativa',2),(2,'Bachue','Engativa',2),(3,'bochica','Engativa',2);
/*!40000 ALTER TABLE `barrios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas`
--

DROP TABLE IF EXISTS `fechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechas` (
  `id_fecha` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_zona` int DEFAULT NULL,
  PRIMARY KEY (`id_fecha`),
  UNIQUE KEY `fecha` (`fecha`),
  KEY `id_zona` (`id_zona`),
  CONSTRAINT `fechas_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas`
--

LOCK TABLES `fechas` WRITE;
/*!40000 ALTER TABLE `fechas` DISABLE KEYS */;
INSERT INTO `fechas` VALUES (1,'2024-05-20',2);
/*!40000 ALTER TABLE `fechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidades` (
  `id_localidad` int NOT NULL,
  `nombre_localidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_localidad`),
  UNIQUE KEY `nombre_localidad` (`nombre_localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,'Antonio Nariño'),(2,'Barrios Unidos'),(3,'Bosa'),(4,'Chapinero'),(5,'Ciudad Bolivar'),(6,'Engativa'),(7,'Fontibon'),(8,'Kennedy'),(9,'La Candelaria'),(10,'Los Martires'),(11,'Puente Aranda'),(12,'Rafael Uribe'),(13,'San Cristobal'),(14,'Santa Fe'),(15,'Suba'),(16,'Sumapaz'),(17,'Teusaquillo'),(18,'Tunjuelito'),(19,'Usaquen'),(20,'Usme');
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonas`
--

DROP TABLE IF EXISTS `zonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zonas` (
  `id_zona` int NOT NULL,
  `nombre_zona` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_zona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonas`
--

LOCK TABLES `zonas` WRITE;
/*!40000 ALTER TABLE `zonas` DISABLE KEYS */;
INSERT INTO `zonas` VALUES (1,'Zona1'),(2,'Zona2'),(3,'Zona3'),(4,'zona4'),(5,'zona5'),(6,'zona6'),(7,'zona7'),(8,'zona8'),(9,'zona9');
/*!40000 ALTER TABLE `zonas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonas_localidades`
--

DROP TABLE IF EXISTS `zonas_localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zonas_localidades` (
  `id_zona` int NOT NULL,
  `id_localidad` int NOT NULL,
  PRIMARY KEY (`id_zona`,`id_localidad`),
  KEY `id_localidad` (`id_localidad`),
  CONSTRAINT `zonas_localidades_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`),
  CONSTRAINT `zonas_localidades_ibfk_2` FOREIGN KEY (`id_localidad`) REFERENCES `localidades` (`id_localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonas_localidades`
--

LOCK TABLES `zonas_localidades` WRITE;
/*!40000 ALTER TABLE `zonas_localidades` DISABLE KEYS */;
INSERT INTO `zonas_localidades` VALUES (1,1),(8,1),(1,2),(3,2),(4,3),(8,3),(1,4),(8,4),(4,5),(5,5),(2,6),(2,7),(4,8),(8,8),(1,10),(8,10),(1,11),(4,11),(1,12),(5,12),(8,12),(5,13),(8,13),(1,14),(5,14),(8,14),(3,15),(6,15),(9,15),(1,17),(1,18),(4,18),(5,18),(1,19),(3,19),(8,19),(9,19);
/*!40000 ALTER TABLE `zonas_localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'acueducto2'
--
/*!50003 DROP PROCEDURE IF EXISTS `AgregarFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarFecha`(
    IN p_fecha DATE,
    IN p_id_zona INT
)
BEGIN
    DECLARE fecha_existente INT;

   
    SELECT COUNT(*) INTO fecha_existente
    FROM Fechas
    WHERE fecha = p_fecha;

    
    IF fecha_existente > 0 THEN
        SELECT 'Error: La fecha ya está asociada a una zona.' AS mensaje;
    ELSE
        
        INSERT INTO Fechas (fecha, id_zona)
        VALUES (p_fecha, p_id_zona);

        SELECT 'Nueva fecha creada exitosamente.' AS mensaje;
    END IF;
 /* Agraga una nueva fecha ingresando la fecha y la zona donde se quiere asociar esa fecha*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Consulta1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consulta1`()
BEGIN
    SELECT DISTINCT Z.nombre_zona, L.nombre_localidad
    FROM Localidades L
    INNER JOIN Zonas_Localidades ZL ON L.id_localidad = ZL.id_localidad
    INNER JOIN Zonas Z ON Z.id_zona = ZL.id_zona;
/* Imprime una tabla con las zonas y las localidades asociadas a esa zona */
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Consulta2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consulta2`()
BEGIN
    SELECT DISTINCT Z.nombre_zona, B.nombre_barrio
    FROM Barrios B
    INNER JOIN Zonas Z ON B.id_zona = Z.id_zona;
/* Similar a consulta 1 esta vez imprime una tabla con las zonas y los barrios asociados a esa zona */
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Consulta3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consulta3`(
    IN p_nombre_barrio VARCHAR(50)
)
BEGIN
    SELECT B.nombre_barrio, Z.nombre_zona, F.fecha
    FROM Barrios B
    INNER JOIN Zonas Z ON B.id_zona = Z.id_zona
    INNER JOIN Fechas F ON Z.id_zona = F.id_zona
    WHERE B.nombre_barrio = p_nombre_barrio;
/* Por medio del nombre del barrio se imprime la zona a la que pertence y las fechas de corte asociadas a esa zona*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Consulta4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consulta4`(
    IN p_id_zona INT
)
BEGIN
    SELECT Z.nombre_zona, F.fecha
    FROM Zonas Z
    INNER JOIN Fechas F ON Z.id_zona = F.id_zona
    WHERE Z.id_zona = p_id_zona;
/* Consulta 4 se encarga de imprimir las fechas de corte asociadas al id de zona ingresado por el usuario*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Consulta5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consulta5`()
BEGIN
    SELECT 
        (SELECT COUNT(*) FROM Barrios) AS total_barrios,
        Z.nombre_zona,
        COUNT(B.id_barrio) AS numero_barrios
    FROM 
        Zonas Z
    LEFT JOIN 
        Barrios B ON Z.id_zona = B.id_zona
    GROUP BY 
        Z.id_zona;
/* consulta 5 me imprime la cantidad de barrios registrados y la cantidad de barrios que tiene cada zona*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarFecha`(
    IN p_fecha DATE
)
BEGIN
    
    DELETE FROM Fechas
    WHERE fecha = p_fecha;

   
    SELECT 'Fecha eliminada exitosamente.' AS mensaje;
/* Elimina una fecha ingresando nada mas la fecha que se quiere elimininar*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarNuevoBarrio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarNuevoBarrio`(                   
    IN p_nombre_barrio VARCHAR(50),
    IN p_nombre_localidad VARCHAR(50),
    IN p_id_zona INT
)
BEGIN
    DECLARE localidad_id INT;
    DECLARE zona_valida INT;

    
    SELECT id_localidad INTO localidad_id
    FROM Localidades
    WHERE nombre_localidad = p_nombre_localidad;

  
    SELECT COUNT(*) INTO zona_valida
    FROM Zonas_Localidades
    WHERE id_zona = p_id_zona AND id_localidad = localidad_id;

    
    IF zona_valida = 0 THEN
        SELECT 'Error: La zona no está asociada a la localidad especificada.' AS mensaje;
    ELSE
        
        INSERT INTO Barrios (nombre_barrio, nombre_localidad, id_zona)
        VALUES (p_nombre_barrio, p_nombre_localidad, p_id_zona);

        SELECT 'Nuevo barrio creado exitosamente.' AS mensaje;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18  1:20:46
