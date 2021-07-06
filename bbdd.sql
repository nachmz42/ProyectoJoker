-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_joker
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `categoria_cultura`
--

DROP TABLE IF EXISTS `categoria_cultura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_cultura` (
  `id_pregunta` int unsigned NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(300) DEFAULT NULL,
  `rs1` varchar(300) DEFAULT NULL,
  `rs2` varchar(300) DEFAULT NULL,
  `rs3` varchar(300) DEFAULT NULL,
  `rs4` varchar(300) DEFAULT NULL,
  `rsc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_cultura`
--

LOCK TABLES `categoria_cultura` WRITE;
/*!40000 ALTER TABLE `categoria_cultura` DISABLE KEYS */;
INSERT INTO `categoria_cultura` VALUES (1,'¿Cómo se denomina la persona que diseca animales?','Taxidermiante','Taxidermista','Taxidermero','Taxidermo','Taxidermista'),(2,'¿Cómo puede ser la rima?','Consonante y Asonante','Consonante y Disonante','Disonante y Rimante','Disonante y Asonante','Consonante y Asonante'),(3,'De las siguientes palabras señala cuál de ellas está escrita correctamente:','Hageno','Ajeno','Ageno','Hajeno','Ajeno'),(4,'¿En qué Comunidad Autónoma se encuentra Ávila?','Castilla y León','Castilla la Mancha','Extremadura','Galicia','Castilla y León'),(5,'¿Qué selección de fútbol ha ganado más mundiales?','Italia','Alemania','Argentina','Brasil','Brasil'),(6,'Un anticiclón es una zona de:','Alta presión','Baja presión','Borrasca','Presión','Alta presión'),(7,'¿Cuál es la arteria más grande del cuerpo humano?','Femoral','Carotida','Aorta','Yugular','Aorta'),(8,'¿Qué película tiene más premios Oscar?','Lo que el viento se llevó','Titanic','Avatar','Gladiator','Titanic'),(9,'¿En qué movimiento cultural se encuentra Leonardo Da Vinci?','Barroco','Románico','Renacimiento','Renacimiento','Renacimiento'),(10,'¿Cuál es la capital de Canadá? 	','Ontario','Toronto','Ottawa','Ottawa','Ottawa');
/*!40000 ALTER TABLE `categoria_cultura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_maths`
--

DROP TABLE IF EXISTS `categoria_maths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_maths` (
  `id_pregunta` int unsigned NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(300) DEFAULT NULL,
  `rs1` varchar(300) DEFAULT NULL,
  `rs2` varchar(300) DEFAULT NULL,
  `rs3` varchar(300) DEFAULT NULL,
  `rs4` varchar(300) DEFAULT NULL,
  `rsc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_maths`
--

LOCK TABLES `categoria_maths` WRITE;
/*!40000 ALTER TABLE `categoria_maths` DISABLE KEYS */;
INSERT INTO `categoria_maths` VALUES (1,'Cuántos años tengo sabiendo que la tercera parte de ellos menos 1 es igual a la sexta parte:','7','9','6','4','6'),(2,'A cuánto equivale el número pi:','4.25','2.99','0.15','3.1416','3.1416'),(3,'¿Qué formula es esta? S = π x R²:','Superficie de un circulo','Diámetro de un círuclo','Volumen de un cilindro','Superficie de un paralelogramo','Superficie de un circulo'),(4,'¿Qué es un triángulo isósceles?','Triángulo con todos sus lados iguales','Triángulo con dos de sus lados iguales','Triángulo con ninguno sus lados iguales','No existen los triángulos isóceles','Triángulo con dos de sus lados iguales'),(5,'¿Cómo calcular el área de un cuadrado?:','BasexAltura','BasexBase','Altura*Altura','Un cuadrado no tiene base','BasexAltura'),(6,'¿Cómo calcular el área de un rectángulo?:','(BasexAltura)^2','(BasexAltura)/2','(Altura*Altura)^2','(Base*Base)/2','(BasexAltura)/2'),(7,'¿Cómo se llama a un poliedro de 20 caras?','Dodecaedro','Tetradecaedro','Icosaedro','Apeiroedro','Icosaedro'),(8,'(-3)³ + (-2)³ - (-3)³ + (-1)³ =','9','-9','10','-10','-9'),(9,'NO es una propiedad de la suma:','Propiedad Conmutativa','Propiedad Registrativa','Propiedad Asociativa','Propiredad Distributiva','Propiedad Registrativa'),(10,'¿Cuál de los siguientes autores ha ganado el premio nobel de matemáticas','Albert Einstein','Thomas Pascal','Los dos anteriores','Ninguno de los anteriores','Ninguno de los anteriores');
/*!40000 ALTER TABLE `categoria_maths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_programacion`
--

DROP TABLE IF EXISTS `categoria_programacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_programacion` (
  `id_pregunta` int unsigned NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(300) DEFAULT NULL,
  `rs1` varchar(300) DEFAULT NULL,
  `rs2` varchar(300) DEFAULT NULL,
  `rs3` varchar(300) DEFAULT NULL,
  `rs4` varchar(300) DEFAULT NULL,
  `rsc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_programacion`
--

LOCK TABLES `categoria_programacion` WRITE;
/*!40000 ALTER TABLE `categoria_programacion` DISABLE KEYS */;
INSERT INTO `categoria_programacion` VALUES (1,'¿Qué es un diagrama de flujos?','Serie de pasos para dar solución a un problema','Estudio de las ordenes creadas por un programador','Representacion simbólica de un algoritmo','Orden de los pasos para un sistema de información','Representacion simbólica de un algoritmo'),(2,'¿Que es un algoritmo?','Seguimiento del DFD para dar solución a un problema','Serie de pasos para dar solución a un problema','Programa que actúa como intermediario entre software y hardware','Orden de los pasos para un sistema de información','Serie de pasos para dar solución a un problema'),(3,'En un lenguaje debilmente tipado','Un valor de un tipo puede ser tratado como otro tipo','Un valor de un tipo nunca puede ser tratado como otro tipo','Un valor de un tipo puede ser tratado como otro tipo siempre que se realice  una conversión de forma explícita','Ninguna respuesta es correcta','Un valor de un tipo puede ser tratado como otro tipo'),(4,'¿Que es un pseudocódigo?','Es una Serie de pasos para la solución a un problema.','Es un lenguaje artificial e informal útil para el desarrollo de algoritmos, no es un leng. de progr. verdadero, puede ser solo texto','Es un Texto exclusivo en un lenguaje de programación y no es ejecutable','Es un entorno de desarrollo integrado libre, hecho principalmente para el lenguaje de programación Java','Es un lenguaje artificial e informal útil para el desarrollo de algoritmos, no es un leng. de progr. verdadero, puede ser solo texto'),(5,'¿Cuál es el siguiente paso después de plantear el algoritmo y el pseudocódigo?','Escribirlo en lenguaje de programación','Escribirlo en código de lenguaje','Escribirlo en lenguaje máquina','Las anteriores respuestas no son correctas','Escribirlo en lenguaje de programación'),(6,'Una array es:','Una estructura de datos en la que sólo se pueden realizar inserciones, pero nunca extracciones','Una estructura de datos en la que las inserciones y extracciones se realizan por el mismo extremo','Una estructura de datos en la que las inserciones se realizan por un extremo y las extracciones por el otro extremo','Las anteriores respuestas no son correctas','Una estructura de datos en la que las inserciones y extracciones se realizan por el mismo extremo'),(7,'HTML es: ','Un lenguaje de programación orientado a objetos','Un lenguaje de programación multiparadigma','un lenguaje de etiquetas','ninguna de las anteriores','un lenguaje de etiquetas'),(8,'Actualmente quien desarrolla Java','Oracle','Microsoft','Apple','Es de libre desarrollo','Oracle'),(9,'¿Cómo se llama la aplicación que traduce el código en Java para cualquier sistema operativo?','Clases','Métodos','JVM','Ninguna de las anteriores','JVM'),(10,'En Java /** */ indica:','Indica documentación','Comentar Bloques','Comentar Lineas','Coméntar todo el código','Indica documentación'),(11,'En git la rama feature:','Contendrá un nuevo desarrollo o evolutivo','Contiene versiones del código candidato a ser estable','para solucionar errores en la versión candidata a producción ','para solucionar errores en la versión candidata a producción ','Contendrá un nuevo desarrollo o evolutivo');
/*!40000 ALTER TABLE `categoria_programacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking` (
  `nombre` varchar(30) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `puntuacion` int DEFAULT NULL,
  `tiempo` datetime DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking`
--

LOCK TABLES `ranking` WRITE;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
INSERT INTO `ranking` VALUES ('Bianca','Dimodena','bd@hotmail.com',7,'0000-00-26 00:00:00','Cultura General'),('Bianca','Dimodena','bd@hotmail.com',1,'0000-00-04 00:00:00','Matemáticas'),('Bianca','Dimodena','bd@hotmail.com',0,'0000-00-06 00:00:00','Programación'),('Josep','Guardiola','jpg@hotmail.com',1,'0000-00-02 00:00:00','Matemáticas');
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugerencias`
--

DROP TABLE IF EXISTS `sugerencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugerencias` (
  `nombre` varchar(30) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `sugerencia` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugerencias`
--

LOCK TABLES `sugerencias` WRITE;
/*!40000 ALTER TABLE `sugerencias` DISABLE KEYS */;
INSERT INTO `sugerencias` VALUES ('Andrea','López','andrealopez@hotmail.com','El nivel de las preguntas es elevado para poco tiempo de respuesta'),('Cristian','García','cristiangarcia@hotmail.com','Excelentes preguntas! añadir más en el apartado programación!'),('Bianca','Dimodena','bd@hotmail.com','Buenos días'),('Bianca','Dimodena','bd@hotmail.com','pruebaaas');
/*!40000 ALTER TABLE `sugerencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `nombre` varchar(30) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `rol` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('Andrea','López',16,'andrealopez@hotmail.com','1234','invitado'),('Bianca','Dimodena',19,'bd@hotmail.com','1234','invitado'),('Cristian','García',35,'cristiangarcia@hotmail.com','1234','invitado'),('Elisa','Tomas',29,'et@hotmail.com','1234','invitado'),('Luis','Enrique',49,'je@hotmail.com','1234','invitado'),('Josep','Guardiola',45,'jpg@hotmail.com','1234','invitado'),('Juan','Restrepo',27,'juanrestrepo@hotmail.com','1234','admin'),('Lola','Peréz',35,'lolaperez@hotmail.com','1234','invitado'),('Mariam','Sidi',23,'mariamsidi@hotmail.com','1234','admin'),('Katy','Mckenna',25,'mc@hotmail.com','1234','invitado'),('Miguel','Cano López',25,'mca@hotmail.com','5678','invitado'),('Nacho','Meza',23,'nachomeza@hotmail.com','1234','invitado');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-06 11:34:58
