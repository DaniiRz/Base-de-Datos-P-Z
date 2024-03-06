-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pull_and_zara
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_admins`
--

DROP TABLE IF EXISTS `tb_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_admins` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_admin` varchar(255) NOT NULL,
  `apellido_admin` varchar(255) NOT NULL,
  `correo_admin` varchar(255) NOT NULL,
  `clave_admin` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `rest_correo_unico` (`correo_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admins`
--

LOCK TABLES `tb_admins` WRITE;
/*!40000 ALTER TABLE `tb_admins` DISABLE KEYS */;
INSERT INTO `tb_admins` VALUES (1,'Juan','Lopez','juan@example.com','password123'),(2,'María','García','maria@example.com','password456'),(3,'Pedro','Martínez','pedro@example.com','password789'),(4,'Laura','Rodríguez','laura@example.com','passwordabc'),(5,'Carlos','Sánchez','carlos@example.com','passworddef'),(6,'Ana','Pérez','ana@example.com','passwordghi'),(7,'Luis','Gómez','luis@example.com','passwordjkl'),(8,'Elena','Fernández','elena@example.com','passwordmno'),(9,'David','Díaz','david@example.com','passwordpqr'),(10,'Sara','Ruiz','sara@example.com','passwordstu'),(11,'Javier','Jiménez','javier@example.com','passwordvwx'),(12,'Paula','Alvarez','paula@example.com','passwordyz1'),(13,'Miguel','Hernández','miguel@example.com','password234'),(14,'Carmen','Torres','carmen@example.com','password567'),(15,'Diego','Vázquez','diego@example.com','password890'),(16,'Eva','Romero','eva@example.com','passwordabc2'),(17,'Manuel','Moreno','manuel@example.com','passworddef3'),(18,'Isabel','Serrano','isabel@example.com','passwordghi4'),(19,'Pablo','Ortega','pablo@example.com','passwordjkl5'),(20,'Raquel','Navarro','raquel@example.com','passwordmno6'),(21,'Oscar','Molina','oscar@example.com','passwordpqr7'),(22,'Natalia','Iglesias','natalia@example.com','passwordstu8'),(23,'Roberto','Garrido','roberto@example.com','passwordvwx9'),(24,'Cristina','Ramos','cristina@example.com','passwordyz10'),(25,'Antonio','Gutiérrez','antonio@example.com','password111');
/*!40000 ALTER TABLE `tb_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES (1,'Pantalones'),(2,'Tops'),(3,'Faldas'),(4,'Vestidos'),(5,'Blusas'),(6,'Short');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_clientes`
--

DROP TABLE IF EXISTS `tb_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(255) NOT NULL,
  `apellido_cliente` varchar(255) NOT NULL,
  `dui_client` varchar(255) NOT NULL,
  `telf_cliente` varchar(12) NOT NULL,
  `correo_cliente` varchar(255) NOT NULL,
  `clave_cliente` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `dui_client` (`dui_client`),
  UNIQUE KEY `telf_cliente` (`telf_cliente`),
  UNIQUE KEY `correo_cliente` (`correo_cliente`),
  UNIQUE KEY `rest_dui_cliente_unico` (`dui_client`),
  UNIQUE KEY `rest_telf_cliente_unico` (`telf_cliente`),
  UNIQUE KEY `rest_correo_cliente_unico` (`correo_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clientes`
--

LOCK TABLES `tb_clientes` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
INSERT INTO `tb_clientes` VALUES (1,'Juan','Pérez','12399678-9','12345678','juan@example.com','password123'),(2,'María','Gómez','97765432-1','98765432','maria@example.com','password456'),(3,'Pedro','Martínez','45678921-2','45678901','pedro@example.com','password789'),(4,'Laura','Rodríguez','78902234-3','78901234','laura@example.com','passwordabc'),(5,'Carlos','Sánchez','56789012-4','56789012','carlos@example.com','passworddef'),(6,'Ana','López','89012345-5','89012345','ana@example.com','passwordghi'),(7,'Luis','González','23456989-0','23456789','luis@example.com','passwordjkl'),(8,'Elena','Fernández','67850123-6','67890123','elena@example.com','passwordmno'),(9,'David','Díaz','01534567-8','01234567','david@example.com','passwordpqr'),(10,'Sara','Ruiz','34567891-1','34567890','sara@example.com','passwordstu'),(11,'Javier','Jiménez','90123459-7','90123456','javier@example.com','passwordvwx'),(12,'Paula','Alvarez','41678261-2','45678701','paula@example.com','passwordyz1'),(13,'Miguel','Hernández','79901234-4','78301234','miguel@example.com','password234'),(14,'Carmen','Torres','12346678-0','15345678','carmen@example.com','password567'),(15,'Diego','Vázquez','98765832-3','98765732','diego@example.com','password890'),(16,'Eva','Romero','23456789-5','21456789','eva@example.com','passwordabc2'),(17,'Manuel','Moreno','67890123-1','67898123','manuel@example.com','passworddef3'),(18,'Isabel','Serrano','01234567-6','01233567','isabel@example.com','passwordghi4'),(19,'Pablo','Ortega','34567890-7','34567899','pablo@example.com','passwordjkl5'),(20,'Raquel','Navarro','90123456-8','90173456','raquel@example.com','passwordmno6'),(21,'Oscar','Molina','45678901-9','45678101','oscar@example.com','passwordpqr7'),(22,'Natalia','Iglesias','78901234-0','78901284','natalia@example.com','passwordstu8'),(23,'Roberto','Garrido','12345678-1','12345674','roberto@example.com','passwordvwx9'),(24,'Cristina','Ramos','98765432-0','980s65432','cristina@example.com','passwordyz10'),(25,'Daniel','Grandos','12377678-9','12345638','correo@example.com','ricaldoneSoftware');
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_colores`
--

DROP TABLE IF EXISTS `tb_colores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_colores` (
  `id_color` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_color` varchar(255) DEFAULT NULL,
  `id_sub_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_color`),
  KEY `fk_id_color_id_sub_categorias` (`id_sub_categoria`),
  CONSTRAINT `fk_id_color_id_sub_categorias` FOREIGN KEY (`id_sub_categoria`) REFERENCES `tb_sub_categorias` (`id_sub_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_colores`
--

LOCK TABLES `tb_colores` WRITE;
/*!40000 ALTER TABLE `tb_colores` DISABLE KEYS */;
INSERT INTO `tb_colores` VALUES (1,'Negro',1),(2,'Azul',1),(3,'Gris',1),(4,'Marrón',1),(5,'Blanco',1),(6,'Negro',2),(7,'Blanco',2),(8,'Rojo',2),(9,'Verde',2),(10,'Amarillo',2),(11,'Negro',3),(12,'Blanco',3),(13,'Rojo',3),(14,'Rosa',3),(15,'Azul',3),(16,'Negro',4),(17,'Blanco',4),(18,'Gris',4),(19,'Beige',4),(20,'Verde',4),(21,'Negro',5),(22,'Blanco',5),(23,'Rojo',5),(24,'Azul',5),(25,'Rosa',5),(26,'Negro',6),(27,'Blanco',6),(28,'Gris',6),(29,'Azul',6),(30,'Verde',6);
/*!40000 ALTER TABLE `tb_colores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalle_pedido`
--

DROP TABLE IF EXISTS `tb_detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detalle_pedido` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad_producto` int(11) NOT NULL CHECK (`cantidad_producto` >= 0),
  `precio_producto` decimal(5,2) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_detalle_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_id_pedido_id_detalle_pedido` (`id_pedido`),
  KEY `fk_id_detalle_producto_id_detalle_pedido` (`id_detalle_producto`),
  CONSTRAINT `fk_id_detalle_producto_id_detalle_pedido` FOREIGN KEY (`id_detalle_producto`) REFERENCES `tb_detalle_productos` (`id_detalle_producto`),
  CONSTRAINT `fk_id_pedido_id_detalle_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedidos` (`id_pedido`),
  CONSTRAINT `rest_check_cantidad_producto` CHECK (`cantidad_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalle_pedido`
--

LOCK TABLES `tb_detalle_pedido` WRITE;
/*!40000 ALTER TABLE `tb_detalle_pedido` DISABLE KEYS */;
INSERT INTO `tb_detalle_pedido` VALUES (1,2,35.99,1,1),(2,1,29.99,1,2),(3,3,42.99,1,3),(4,1,19.99,2,4),(5,2,39.99,2,5),(6,1,25.99,2,6),(7,3,29.99,3,7),(8,1,49.99,3,8),(9,2,35.99,3,9),(10,2,39.99,4,10),(11,1,19.99,4,11),(12,1,45.99,4,12),(13,1,29.99,5,13),(14,2,35.99,5,14),(15,1,25.99,5,15),(16,3,42.99,6,16),(17,1,19.99,6,17),(18,2,39.99,6,18),(19,1,29.99,7,19),(20,2,35.99,7,20),(21,1,25.99,7,21),(22,3,42.99,8,22),(23,1,19.99,8,23),(24,2,39.99,8,24),(25,1,29.99,9,25),(26,2,35.99,9,1),(27,1,25.99,9,2),(28,3,42.99,10,3),(29,1,19.99,10,4),(30,2,39.99,10,5),(31,1,29.99,11,6),(32,2,35.99,11,7),(33,1,25.99,11,8),(34,3,42.99,12,9),(35,1,19.99,12,10),(36,2,39.99,12,11),(37,1,29.99,13,12),(38,2,35.99,13,13),(39,1,25.99,13,14),(40,3,42.99,14,15),(41,1,19.99,14,16),(42,2,39.99,14,17),(43,1,29.99,15,18),(44,2,35.99,15,19),(45,1,25.99,15,20),(46,3,42.99,16,21),(47,1,19.99,16,22),(48,2,39.99,16,23),(49,1,29.99,17,24),(50,2,35.99,17,25),(51,1,25.99,17,1),(52,3,42.99,18,2),(53,1,19.99,18,3),(54,2,39.99,18,4),(55,1,29.99,19,5),(56,2,35.99,19,6),(57,1,25.99,19,7),(58,3,42.99,20,8),(59,1,19.99,20,9),(60,2,39.99,20,10),(61,1,29.99,21,11),(62,2,35.99,21,12),(63,1,25.99,21,13),(64,3,42.99,22,14),(65,1,19.99,22,15),(66,2,39.99,22,16),(67,1,29.99,23,17),(68,2,35.99,23,18),(69,1,25.99,23,19),(70,3,42.99,24,17),(71,1,19.99,24,18),(72,2,39.99,24,19),(73,1,29.99,25,20),(74,2,35.99,25,21),(75,1,25.99,25,22);
/*!40000 ALTER TABLE `tb_detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalle_productos`
--

DROP TABLE IF EXISTS `tb_detalle_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detalle_productos` (
  `id_detalle_producto` int(11) NOT NULL AUTO_INCREMENT,
  `existencias` int(11) NOT NULL CHECK (`existencias` >= 0),
  `img_producto` varchar(255) NOT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_talla` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_producto`),
  KEY `fk_id_color_id_detalle` (`id_color`),
  KEY `fk_id_talla_id_detalle` (`id_talla`),
  KEY `fk_id_producto_id_detalle` (`id_producto`),
  CONSTRAINT `fk_id_color_id_detalle` FOREIGN KEY (`id_color`) REFERENCES `tb_colores` (`id_color`),
  CONSTRAINT `fk_id_producto_id_detalle` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`),
  CONSTRAINT `fk_id_talla_id_detalle` FOREIGN KEY (`id_talla`) REFERENCES `tb_tallas` (`id_talla`),
  CONSTRAINT `rest_check_existencias` CHECK (`existencias`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalle_productos`
--

LOCK TABLES `tb_detalle_productos` WRITE;
/*!40000 ALTER TABLE `tb_detalle_productos` DISABLE KEYS */;
INSERT INTO `tb_detalle_productos` VALUES (1,50,'/ruta/imagen1.jpg',1,1,1),(2,30,'/ruta/imagen2.jpg',2,2,2),(3,40,'/ruta/imagen3.jpg',3,3,3),(4,20,'/ruta/imagen4.jpg',4,4,4),(5,60,'/ruta/imagen5.jpg',5,5,5),(6,25,'/ruta/imagen6.jpg',1,1,6),(7,35,'/ruta/imagen7.jpg',2,2,7),(8,45,'/ruta/imagen8.jpg',3,3,8),(9,15,'/ruta/imagen9.jpg',4,4,9),(10,55,'/ruta/imagen10.jpg',5,5,10),(11,10,'/ruta/imagen11.jpg',1,1,11),(12,70,'/ruta/imagen12.jpg',2,2,12),(13,80,'/ruta/imagen13.jpg',3,3,13),(14,90,'/ruta/imagen14.jpg',4,4,14),(15,100,'/ruta/imagen15.jpg',5,5,15),(16,110,'/ruta/imagen16.jpg',1,1,16),(17,120,'/ruta/imagen17.jpg',2,2,17),(18,130,'/ruta/imagen18.jpg',3,3,18),(19,140,'/ruta/imagen19.jpg',4,4,19),(20,150,'/ruta/imagen20.jpg',5,5,20),(21,160,'/ruta/imagen21.jpg',1,1,21),(22,170,'/ruta/imagen22.jpg',2,2,22),(23,180,'/ruta/imagen23.jpg',3,3,23),(24,190,'/ruta/imagen24.jpg',4,4,24),(25,200,'/ruta/imagen25.jpg',5,5,25);
/*!40000 ALTER TABLE `tb_detalle_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_direccion_clientes`
--

DROP TABLE IF EXISTS `tb_direccion_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_direccion_clientes` (
  `id_direccion_c` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_direccion` varchar(255) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_direccion_c`),
  KEY `fk_id_cliente_direccion_cliente` (`id_cliente`),
  CONSTRAINT `fk_id_cliente_direccion_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_direccion_clientes`
--

LOCK TABLES `tb_direccion_clientes` WRITE;
/*!40000 ALTER TABLE `tb_direccion_clientes` DISABLE KEYS */;
INSERT INTO `tb_direccion_clientes` VALUES (1,'Calle 1, Ciudad 1',1),(2,'Avenida 2, Ciudad 2',2),(3,'Calle 3, Ciudad 3',3),(4,'Avenida 4, Ciudad 4',4),(5,'Calle 5, Ciudad 5',5),(6,'Avenida 6, Ciudad 6',6),(7,'Calle 7, Ciudad 7',7),(8,'Avenida 8, Ciudad 8',8),(9,'Calle 9, Ciudad 9',9),(10,'Avenida 10, Ciudad 10',10),(11,'Calle 11, Ciudad 11',11),(12,'Avenida 12, Ciudad 12',12),(13,'Calle 13, Ciudad 13',13),(14,'Avenida 14, Ciudad 14',14),(15,'Calle 15, Ciudad 15',15),(16,'Avenida 16, Ciudad 16',16),(17,'Calle 17, Ciudad 17',17),(18,'Avenida 18, Ciudad 18',18),(19,'Calle 19, Ciudad 19',19),(20,'Avenida 20, Ciudad 20',20),(21,'Calle 21, Ciudad 21',21),(22,'Avenida 22, Ciudad 22',22),(23,'Calle 23, Ciudad 23',23),(24,'Avenida 24, Ciudad 24',24),(25,'Avenida Ricaldone, Ciudad 25',25);
/*!40000 ALTER TABLE `tb_direccion_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estado_pedidos`
--

DROP TABLE IF EXISTS `tb_estado_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_estado_pedidos` (
  `id_estado_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `estado_pedido` varchar(50) NOT NULL,
  PRIMARY KEY (`id_estado_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estado_pedidos`
--

LOCK TABLES `tb_estado_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_estado_pedidos` DISABLE KEYS */;
INSERT INTO `tb_estado_pedidos` VALUES (1,'En espera'),(2,'Procesando'),(3,'Enviado'),(4,'Entregado'),(5,'Cancelado');
/*!40000 ALTER TABLE `tb_estado_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estado_valo`
--

DROP TABLE IF EXISTS `tb_estado_valo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_estado_valo` (
  `id_estado_valo` int(11) NOT NULL AUTO_INCREMENT,
  `estado_valo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_estado_valo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estado_valo`
--

LOCK TABLES `tb_estado_valo` WRITE;
/*!40000 ALTER TABLE `tb_estado_valo` DISABLE KEYS */;
INSERT INTO `tb_estado_valo` VALUES (1,'Habilitada'),(2,'Deshabilitada');
/*!40000 ALTER TABLE `tb_estado_valo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedidos`
--

DROP TABLE IF EXISTS `tb_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pedido` datetime DEFAULT NULL,
  `id_estado_pedido` int(11) DEFAULT NULL,
  `id_direccion_c` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_id_estado_pedido_id_pedido` (`id_estado_pedido`),
  KEY `fk_id_cliente_id_pedido` (`id_cliente`),
  KEY `fk_id_direccion_c_id_pedido` (`id_direccion_c`),
  CONSTRAINT `fk_id_cliente_id_pedido` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`),
  CONSTRAINT `fk_id_direccion_c_id_pedido` FOREIGN KEY (`id_direccion_c`) REFERENCES `tb_direccion_clientes` (`id_direccion_c`),
  CONSTRAINT `fk_id_estado_pedido_id_pedido` FOREIGN KEY (`id_estado_pedido`) REFERENCES `tb_estado_pedidos` (`id_estado_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedidos`
--

LOCK TABLES `tb_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_pedidos` DISABLE KEYS */;
INSERT INTO `tb_pedidos` VALUES (1,'2024-03-06 17:40:56',1,1,1),(2,'2024-03-06 17:40:56',1,2,2),(3,'2024-03-06 17:40:56',2,3,3),(4,'2024-03-06 17:40:56',2,4,4),(5,'2024-03-06 17:40:56',1,5,5),(6,'2024-03-06 17:40:56',1,6,6),(7,'2024-03-06 17:40:56',2,7,7),(8,'2024-03-06 17:40:56',2,8,8),(9,'2024-03-06 17:40:56',1,9,9),(10,'2024-03-06 17:40:56',1,10,10),(11,'2024-03-06 17:40:56',2,11,11),(12,'2024-03-06 17:40:56',2,12,12),(13,'2024-03-06 17:40:56',1,13,13),(14,'2024-03-06 17:40:56',1,14,14),(15,'2024-03-06 17:40:56',2,15,15),(16,'2024-03-06 17:40:56',2,16,16),(17,'2024-03-06 17:40:56',1,17,17),(18,'2024-03-06 17:40:56',1,18,18),(19,'2024-03-06 17:40:56',2,19,19),(20,'2024-03-06 17:40:56',2,20,20),(21,'2024-03-06 17:40:56',1,21,21),(22,'2024-03-06 17:40:56',1,22,22),(23,'2024-03-06 17:40:56',2,23,23),(24,'2024-03-06 17:40:56',2,24,24),(25,'2024-03-06 17:40:56',1,25,25);
/*!40000 ALTER TABLE `tb_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(255) NOT NULL,
  `desc_producto` varchar(255) NOT NULL,
  `cant_producto` int(11) NOT NULL CHECK (`cant_producto` >= 0),
  `precio_producto` decimal(5,2) NOT NULL,
  `fecha_registro_produc` datetime DEFAULT NULL,
  `id_sub_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_id_producto_id_sub_categorias` (`id_sub_categoria`),
  CONSTRAINT `fk_id_producto_id_sub_categorias` FOREIGN KEY (`id_sub_categoria`) REFERENCES `tb_sub_categorias` (`id_sub_categoria`),
  CONSTRAINT `rest_check_cant_producto` CHECK (`cant_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES (1,'Jeans Negro','Jeans de color negro para hombres',50,39.99,'2024-03-06 17:40:56',1),(2,'Crop-Top Blanco','Crop-Top de color blanco para mujeres',100,19.99,'2024-03-06 17:40:56',2),(3,'Faldas plisadas Rosa','Falda plisada de color rosa para mujeres',80,29.99,'2024-03-06 17:40:56',3),(4,'Polo Ajustado Negro','Polo ajustado de color negro para hombres',70,24.99,'2024-03-06 17:40:56',4),(5,'Halter Negro','Top Halter de color negro para mujeres',90,22.99,'2024-03-06 17:40:56',5),(6,'Short falda Negro','Short falda de color negro para mujeres',120,34.99,'2024-03-06 17:40:56',6),(7,'Jeans Azul','Jeans de color azul para hombres',60,39.99,'2024-03-06 17:40:56',1),(8,'Top sin mangas Negro','Top sin mangas de color negro para mujeres',110,17.99,'2024-03-06 17:40:56',2),(9,'Faldas cruzadas Azul','Falda cruzada de color azul para mujeres',85,27.99,'2024-03-06 17:40:56',3),(10,'Polo De tubo Blanco','Polo de tubo de color blanco para hombres',75,26.99,'2024-03-06 17:40:56',4),(11,'Sabrina Rojo','Top Sabrina de color rojo para mujeres',95,21.99,'2024-03-06 17:40:56',5),(12,'Deportivos Negro','Short deportivo de color negro para mujeres',130,32.99,'2024-03-06 17:40:56',6),(13,'Jeans Gris','Jeans de color gris para hombres',55,39.99,'2024-03-06 17:40:56',1),(14,'Top con escote bardot Blanco','Top con escote bardot de color blanco para mujeres',105,18.99,'2024-03-06 17:40:56',2),(15,'Faldas minifaldas Rojo','Falda minifalda de color rojo para mujeres',75,29.99,'2024-03-06 17:40:56',3),(16,'Polo Cruzado Beige','Polo cruzado de color beige para hombres',65,25.99,'2024-03-06 17:40:56',4),(17,'Jewel Azul','Top Jewel de color azul para mujeres',100,23.99,'2024-03-06 17:40:56',5),(18,'Shorts de mezclilla Gris','Shorts de mezclilla de color gris para mujeres',115,31.99,'2024-03-06 17:40:56',6),(19,'Jeans Marrón','Jeans de color marrón para hombres',45,39.99,'2024-03-06 17:40:56',1),(20,'Top de encaje Rojo','Top de encaje de color rojo para mujeres',95,20.99,'2024-03-06 17:40:56',2),(21,'Faldas godet Azul','Falda godet de color azul para mujeres',90,28.99,'2024-03-06 17:40:56',3),(22,'Polo Polo Verde','Polo polo de color verde para hombres',80,27.99,'2024-03-06 17:40:56',4),(23,'High neck Blanco','Top High neck de color blanco para mujeres',85,24.99,'2024-03-06 17:40:56',5),(24,'Paper bag shorts Azul','Shorts paper bag de color azul para mujeres',125,33.99,'2024-03-06 17:40:56',6),(25,'Paper bag shorts Morado','Shorts paper bag de color azul para mujeres',125,33.99,'2024-03-06 17:40:56',6);
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sub_categorias`
--

DROP TABLE IF EXISTS `tb_sub_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sub_categorias` (
  `id_sub_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_sub_categoria` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sub_categoria`),
  KEY `fk_id_categoria_id_sub_categorias` (`id_categoria`),
  CONSTRAINT `fk_id_categoria_id_sub_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sub_categorias`
--

LOCK TABLES `tb_sub_categorias` WRITE;
/*!40000 ALTER TABLE `tb_sub_categorias` DISABLE KEYS */;
INSERT INTO `tb_sub_categorias` VALUES (1,'De cuero',1),(2,'Mezclilla',1),(3,'Jooger',1),(4,'Cargo',1),(5,'Jeans',1),(6,'Crop-Tops',2),(7,'Top sin mangas',2),(8,'Top con escote bardot',2),(9,'Top de encaje',2),(10,'Top asimétrico',2),(11,'Faldas rectas',3),(12,'plisadas',3),(13,'minifaldas',3),(14,'godet',3),(15,'cruzadas',3),(16,'Ajustado',4),(17,'De tubo',4),(18,'Cruzado',4),(19,'Polo',4),(20,'Recto',4),(21,'Halter',5),(22,'Sabrina',5),(23,'Jewel',5),(24,'High neck ',5),(25,'Cuello en V',5),(26,'Short falda',6),(27,'Deportivos',6),(28,'Shorts de mezclilla',6),(29,'Paper bag shorts',6),(30,'Biker shorts',6);
/*!40000 ALTER TABLE `tb_sub_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tallas`
--

DROP TABLE IF EXISTS `tb_tallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tallas` (
  `id_talla` int(11) NOT NULL AUTO_INCREMENT,
  `numero_talla` varchar(255) DEFAULT NULL,
  `id_sub_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_talla`),
  KEY `fk_id_talla_id_sub_categorias` (`id_sub_categoria`),
  CONSTRAINT `fk_id_talla_id_sub_categorias` FOREIGN KEY (`id_sub_categoria`) REFERENCES `tb_sub_categorias` (`id_sub_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tallas`
--

LOCK TABLES `tb_tallas` WRITE;
/*!40000 ALTER TABLE `tb_tallas` DISABLE KEYS */;
INSERT INTO `tb_tallas` VALUES (1,'XS',1),(2,'S',1),(3,'M',1),(4,'L',1),(5,'XL',1),(6,'32',2),(7,'34',2),(8,'36',2),(9,'38',2),(10,'40',2),(11,'XS',3),(12,'S',3),(13,'M',3),(14,'L',3),(15,'XL',3),(16,'30',4),(17,'32',4),(18,'34',4),(19,'36',4),(20,'38',4),(21,'S',5),(22,'M',5),(23,'L',5),(24,'XL',5),(25,'XXL',5),(26,'S',6),(27,'M',6),(28,'L',6),(29,'XL',6),(30,'XXL',6);
/*!40000 ALTER TABLE `tb_tallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_valoracion`
--

DROP TABLE IF EXISTS `tb_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_valoracion` (
  `id_valoracion` int(11) NOT NULL AUTO_INCREMENT,
  `comentario_cliente` varchar(255) NOT NULL,
  `fecha_valoracion` datetime DEFAULT NULL,
  `id_detalle_p` int(11) DEFAULT NULL,
  `id_estado_valo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_valoracion`),
  KEY `fk_id_detalle_p_id_valo` (`id_detalle_p`),
  KEY `fk_id_estado_valo_id_valoracion` (`id_estado_valo`),
  CONSTRAINT `fk_id_detalle_p_id_valo` FOREIGN KEY (`id_detalle_p`) REFERENCES `tb_detalle_pedido` (`id_detalle`),
  CONSTRAINT `fk_id_estado_valo_id_valoracion` FOREIGN KEY (`id_estado_valo`) REFERENCES `tb_estado_valo` (`id_estado_valo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_valoracion`
--

LOCK TABLES `tb_valoracion` WRITE;
/*!40000 ALTER TABLE `tb_valoracion` DISABLE KEYS */;
INSERT INTO `tb_valoracion` VALUES (1,'Excelente producto','2024-03-06 17:40:56',1,1),(2,'Muy satisfecho con mi compra','2024-03-06 17:40:56',2,1),(3,'Buena calidad','2024-03-06 17:40:56',3,1),(4,'Rápido envío','2024-03-06 17:40:56',4,1),(5,'Me encanta','2024-03-06 17:40:56',5,1),(6,'Buen precio','2024-03-06 17:40:56',6,1),(7,'Muy cómodo','2024-03-06 17:40:56',7,1),(8,'Perfecto para mí','2024-03-06 17:40:56',8,1),(9,'Muy bonito','2024-03-06 17:40:56',9,1),(10,'Excelente servicio','2024-03-06 17:40:56',10,1),(11,'Lo recomiendo','2024-03-06 17:40:56',11,1),(12,'Fácil de usar','2024-03-06 17:40:56',12,1),(13,'Muy elegante','2024-03-06 17:40:56',13,1),(14,'Envío rápido','2024-03-06 17:40:56',14,1),(15,'Muy práctico','2024-03-06 17:40:56',15,1),(16,'Satisfecho con mi compra','2024-03-06 17:40:56',16,1),(17,'Producto de calidad','2024-03-06 17:40:56',17,1),(18,'Buena atención al cliente','2024-03-06 17:40:57',18,1),(19,'Buen producto','2024-03-06 17:40:57',19,1),(20,'Muy recomendado','2024-03-06 17:40:57',20,1),(21,'Excelente experiencia','2024-03-06 17:40:57',21,1),(22,'Muy contento con mi compra','2024-03-06 17:40:57',22,1),(23,'Me gusta mucho','2024-03-06 17:40:57',23,1),(24,'Producto recomendado','2024-03-06 17:40:57',24,1),(25,'Cumple con mis expectativas','2024-03-06 17:40:57',25,1);
/*!40000 ALTER TABLE `tb_valoracion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06 17:42:59
