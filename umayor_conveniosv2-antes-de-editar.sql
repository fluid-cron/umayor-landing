CREATE DATABASE  IF NOT EXISTS `umayor_convenios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `umayor_convenios`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: umayor_convenios
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_area` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Ingeniería ',1,'2017-07-11 15:42:18'),(2,'Construcción Civil',1,'2017-07-11 15:42:18'),(3,'Negocios',1,'2017-07-11 15:42:18'),(4,'Psicología',1,'2017-07-11 15:42:18'),(5,'Derecho',1,'2017-07-11 15:42:18'),(6,'Contabilidad',1,'2017-07-11 15:42:18'),(7,'Prevención de Riesgos',1,'2017-07-11 15:42:18'),(8,'Logística',1,'2017-07-11 15:42:18'),(9,'Desarrollo de Personas y Organizaciones',1,'2017-07-11 15:42:18'),(10,'Educación',1,'2017-07-11 15:42:18'),(11,'Gestión de Negocios y Certificaciones',1,'2017-07-11 15:42:18'),(12,'Industrias y Recursos Naturales',1,'2017-07-11 15:42:18'),(13,'Salud y Simulación Pública',1,'2017-07-11 15:42:18'),(14,'Tecnologías de Información',1,'2017-07-11 15:42:18'),(15,'Animación Digital',1,'2017-07-11 15:42:18'),(16,'Agronomía',1,'2017-07-11 15:42:18'),(17,'Enfermería',1,'2017-07-11 15:42:18'),(18,'Forestal',1,'2017-07-11 15:42:18'),(19,'Kinesiología',1,'2017-07-11 15:42:18'),(20,'Medicina',1,'2017-07-11 15:42:18'),(21,'Nutrición y Dietética',1,'2017-07-11 15:42:18'),(22,'Obstetricia',1,'2017-07-11 15:42:18'),(23,'Odontología',1,'2017-07-11 15:42:18'),(24,'OFECS',1,'2017-07-11 15:42:18'),(25,'Salud Pública',1,'2017-07-11 15:42:18'),(26,'Simulación Clínica',1,'2017-07-11 15:42:18'),(27,'Tecnología Médica',1,'2017-07-11 15:42:18'),(28,'Terapia Ocupacional',1,'2017-07-11 15:42:18'),(29,'Veterinaria',1,'2017-07-11 15:42:18'),(30,'Arquitectura',1,'2017-07-11 15:42:18'),(31,'Comunicaciones',1,'2017-07-11 15:42:18'),(32,'Gobierno y Cs. Sociales',1,'2017-07-11 15:42:18'),(33,'Cursos de Idioma',1,'2017-07-11 15:42:18');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras_cursos_programas`
--

DROP TABLE IF EXISTS `carreras_cursos_programas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras_cursos_programas` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras_cursos_programas`
--

LOCK TABLES `carreras_cursos_programas` WRITE;
/*!40000 ALTER TABLE `carreras_cursos_programas` DISABLE KEYS */;
INSERT INTO `carreras_cursos_programas` VALUES (1,'Ingeniería Industrial',1,'0000-00-00 00:00:00'),(2,'Ingeniería Informática',1,'0000-00-00 00:00:00'),(3,'Ingeniería Electrónica',1,'0000-00-00 00:00:00'),(4,'Ingeniería Civil Industrial',1,'0000-00-00 00:00:00'),(5,'Ingeniería Civil Electrónica Y Telecomunicaciones',1,'0000-00-00 00:00:00'),(6,'Ingeniería Civil En Informática',1,'0000-00-00 00:00:00'),(7,'Ingeniería En Prevención De Riesgos',1,'0000-00-00 00:00:00'),(8,'Ingeniería En Logística',1,'0000-00-00 00:00:00'),(9,'Construcción Civil',1,'0000-00-00 00:00:00'),(10,'Ingeniería Comercial',1,'0000-00-00 00:00:00'),(11,'Ingeniería En Administración',1,'0000-00-00 00:00:00'),(12,'Contador Público Y Auditor',1,'0000-00-00 00:00:00'),(13,'Administración Pública',1,'0000-00-00 00:00:00'),(14,'Sociología',1,'0000-00-00 00:00:00'),(15,'Derecho',1,'0000-00-00 00:00:00'),(16,'Psicología',1,'0000-00-00 00:00:00'),(17,'Aprender A Trabajar En Equipo',1,'0000-00-00 00:00:00'),(18,'Asistente Administrativo Con Mencion En Ventas',1,'0000-00-00 00:00:00'),(19,'Atención Al Usuario',1,'0000-00-00 00:00:00'),(20,'Atención De Público Y Manejo De Conflictos',1,'0000-00-00 00:00:00'),(21,'Calidad De Servicio Al Cliente',1,'0000-00-00 00:00:00'),(22,'Clima Laboral Y Gestión De Personas',1,'0000-00-00 00:00:00'),(23,'Comunicación Efectiva',1,'0000-00-00 00:00:00'),(24,'Comunicación Y Trabajo En Equipo',1,'0000-00-00 00:00:00'),(25,'Control Del Estrés Laboral',1,'0000-00-00 00:00:00'),(26,'Desarrollo De Capacidades De Trabajo En Equipo',1,'0000-00-00 00:00:00'),(27,'Desarrollo De Habilidades Directivas',1,'0000-00-00 00:00:00'),(28,'Desarrollo Habilidades De Liderazgo',1,'0000-00-00 00:00:00'),(29,'Desarrollo Habilidades Estrategias',1,'0000-00-00 00:00:00'),(30,'Diplomado Derecho Administrativo',1,'0000-00-00 00:00:00'),(31,'Dirección Equipos Alto Desempeño Enfoque Rrhh',1,'0000-00-00 00:00:00'),(32,'Diplomado En Gestión De Recursos Humanos',1,'0000-00-00 00:00:00'),(33,'Estatuto Administrativo De La Gestión Pública',1,'0000-00-00 00:00:00'),(34,'Estatuto Administrativo',1,'0000-00-00 00:00:00'),(35,'Estatuto Administrativo Y Normativa Asociada',1,'0000-00-00 00:00:00'),(36,'Ética, Probidad Y Transparencia',1,'0000-00-00 00:00:00'),(37,'Evaluación De Desempeño',1,'0000-00-00 00:00:00'),(38,'Experto En Prevención De Riesgos - Industria Extractiva Minera',1,'0000-00-00 00:00:00'),(39,'Gestión Del Conocimiento',1,'0000-00-00 00:00:00'),(40,'Gestionar Equipo De  Trabajo De La Unidad (Gcm)',1,'0000-00-00 00:00:00'),(41,'Habilidades Directivas',1,'0000-00-00 00:00:00'),(42,'Liderazgo Situacional',1,'0000-00-00 00:00:00'),(43,'Liderazgo Valórico',1,'0000-00-00 00:00:00'),(44,'Liderazgo Y Planeamiento Estratégico',1,'0000-00-00 00:00:00'),(45,'Manejo De Conflicto',1,'0000-00-00 00:00:00'),(46,'Manejo Del Estrés A Través De La Expresión Corporal',1,'0000-00-00 00:00:00'),(47,'Mejoramiento Clima Laboral',1,'0000-00-00 00:00:00'),(48,'Menejo De Estrés',1,'0000-00-00 00:00:00'),(49,'Outdoor Trabajo En Equipo',1,'0000-00-00 00:00:00'),(50,'Proactividad E Iniciativa',1,'0000-00-00 00:00:00'),(51,'Probidad Y Transparencia En El Sector Público',1,'0000-00-00 00:00:00'),(52,'Redacción Ejecutiva Eficiente Y Asertiva',1,'0000-00-00 00:00:00'),(53,'Resolución De Conflictos',1,'0000-00-00 00:00:00'),(54,'Taller De Atención A Público',1,'0000-00-00 00:00:00'),(55,'Taller De Desarrollo Personal',1,'0000-00-00 00:00:00'),(56,'Téc. Servicio Satisfacción Clientes Mod Cc',1,'0000-00-00 00:00:00'),(57,'Tecnicas De Comunicación Efectiva',1,'0000-00-00 00:00:00'),(58,'Técnicas De Trabajo En Equipo',1,'0000-00-00 00:00:00'),(59,'Tecnicas Para La Satisfaccion De Clientes ',1,'0000-00-00 00:00:00'),(60,'Curso Normativa Pública',1,'0000-00-00 00:00:00'),(61,'Enfoque De Género Y Equidad',1,'0000-00-00 00:00:00'),(62,'Gestión De Emergencias Y Desastres',1,'0000-00-00 00:00:00'),(63,'Intervención En Crisis Y Primer Apoyo Psicológico',1,'0000-00-00 00:00:00'),(64,'Metodologías Para La Participación Ciudadana',1,'0000-00-00 00:00:00'),(65,'Incorporación Del Enfoque De Género En Las Políticas Públicas',1,'0000-00-00 00:00:00'),(66,'Enfoque De Género Y Políticas Públicas Para Regiones',1,'0000-00-00 00:00:00'),(67,'Capacitacion Previsional En El Sistema De Afp',1,'0000-00-00 00:00:00'),(68,'Evaluación Y Planificacion Curricular',1,'0000-00-00 00:00:00'),(69,'Gestión De Procesos Educativos',1,'0000-00-00 00:00:00'),(70,'Fortalecimiento De Competencias Y Prácticas Directivas De Excelencia',1,'0000-00-00 00:00:00'),(71,'Efectividad En La Docencia Clinica',1,'0000-00-00 00:00:00'),(72,'Estrategias Docentes Con Foco En El Aprendizaje Por Competencias',1,'0000-00-00 00:00:00'),(73,'Administración De Bodega',1,'0000-00-00 00:00:00'),(74,'Administración Del Tiempo',1,'0000-00-00 00:00:00'),(75,'Conceptos De La Norma Iso 9001-2008',1,'0000-00-00 00:00:00'),(76,'Criterios Evaluación Compras Públicas',1,'0000-00-00 00:00:00'),(77,'Curso Gestión De Proyectos',1,'0000-00-00 00:00:00'),(78,'Curso Intensivo Compras Y Contratación Publica',1,'0000-00-00 00:00:00'),(79,'Encargados De Licitaciones Compras',1,'0000-00-00 00:00:00'),(80,'Formulación De Planes De Negocio',1,'0000-00-00 00:00:00'),(81,'Formulación De Proyectos Sociales',1,'0000-00-00 00:00:00'),(82,'Gestión De Negocios',1,'0000-00-00 00:00:00'),(83,'Gestión De Procesos',1,'0000-00-00 00:00:00'),(84,'Gestión Por Competencias Laborales',1,'0000-00-00 00:00:00'),(85,'Gestión Pública',1,'0000-00-00 00:00:00'),(86,'Gestion Y Comercialización Para Microempresa',1,'0000-00-00 00:00:00'),(87,'Higiene Y Manipulación De Alimentos',1,'0000-00-00 00:00:00'),(88,'Interpretacion Y Analisis De La Norma Iso 9001-2008',1,'0000-00-00 00:00:00'),(89,'Malla Básica En Gestión De Abastecimiento',1,'0000-00-00 00:00:00'),(90,'Manejo De Caja',1,'0000-00-00 00:00:00'),(91,'Negociación: El Arte De Los Acuerdos',1,'0000-00-00 00:00:00'),(92,'Normas Internacionales De Contabilidad',1,'0000-00-00 00:00:00'),(93,'Normas Internacionales De Información Financiera (Ifrs)',1,'0000-00-00 00:00:00'),(94,'Optimización De Procesos',1,'0000-00-00 00:00:00'),(95,'Planes De Negocio',1,'0000-00-00 00:00:00'),(96,'Planificación Estratégica',1,'0000-00-00 00:00:00'),(97,'Planificación Y Control De Gestión',1,'0000-00-00 00:00:00'),(98,'Planificación, Seguimiento Y Control De Proyectos',1,'0000-00-00 00:00:00'),(99,'Plataforma Mercado Público Para Compradores',1,'0000-00-00 00:00:00'),(100,'Taller Aplicado De Indicadores De Gestión',1,'0000-00-00 00:00:00'),(101,'Técnicas De Negociación Aplicadas',1,'0000-00-00 00:00:00'),(102,'Balance Scorecard Y Control De Gestión',1,'0000-00-00 00:00:00'),(103,'Gestión Presupuestaria, Contabilidad Gubernamental Y Nic En El Sector Público',1,'0000-00-00 00:00:00'),(104,'Diseño Y Formulación De Proyectos',1,'0000-00-00 00:00:00'),(105,'Gestión De Compras Públicas',1,'0000-00-00 00:00:00'),(106,'Contabilidad Gubernamental (Con Aplicación De Nics) Y Gestión Presupuestaria En El Sector Público',1,'0000-00-00 00:00:00'),(107,'Gestión Por Procesos',1,'0000-00-00 00:00:00'),(108,'Implemetación De Gestión Por Procesos',1,'0000-00-00 00:00:00'),(109,'Manejo De Grúa Horquilla',1,'0000-00-00 00:00:00'),(110,'Manipulación De Alimentos',1,'0000-00-00 00:00:00'),(111,'Eficiencia Energética Y Sustentabilidad En Edificaciones',1,'0000-00-00 00:00:00'),(112,'Introducción En Arcgis',1,'0000-00-00 00:00:00'),(113,'Georreferenciación: Sig En Salud',1,'0000-00-00 00:00:00'),(114,'Calidad Y Seguridad Del Paciente',1,'0000-00-00 00:00:00'),(115,'Curso Salud Y Cuidado Familiar',1,'0000-00-00 00:00:00'),(116,'Deberes Y Derechos De Los Paciente',1,'0000-00-00 00:00:00'),(117,'Introducción A La Gestión Local En La Atención Primaria',1,'0000-00-00 00:00:00'),(118,'Primeros Auxilios Y Reanimación Cardiopulmonar',1,'2017-07-11 16:59:22'),(119,'Reanimacion Cardiopulmonar (Rcp)',1,'0000-00-00 00:00:00'),(120,'Instrumentos De Abordaje Familiar Para La Implementación Del Modelo De Atención Integral En Salud',1,'0000-00-00 00:00:00'),(121,'Excel 2007 Avanzado',1,'0000-00-00 00:00:00'),(122,'Excel 2007 Intermedio',1,'0000-00-00 00:00:00'),(123,'Excel 2010 Avanzado',1,'0000-00-00 00:00:00'),(124,'Excel 2010 Básico',1,'0000-00-00 00:00:00'),(125,'Word 2007 Básico',1,'0000-00-00 00:00:00'),(126,'Word 2007 Avanzado',1,'0000-00-00 00:00:00'),(127,'Word 2007 Intermedio',1,'0000-00-00 00:00:00'),(128,'Word 2010 Básico',1,'0000-00-00 00:00:00'),(129,'Word 2010 Intermedio',1,'0000-00-00 00:00:00'),(130,'Powerpoint 2010 Básico',1,'0000-00-00 00:00:00'),(131,'Powerpoint 2010 Avanzado',1,'0000-00-00 00:00:00'),(132,'Powerpoint 2010 Intermedio',1,'0000-00-00 00:00:00'),(133,'Adobe Photoshop Cs6 Básico',1,'0000-00-00 00:00:00'),(134,'Adobe Photoshop Cs6 Avanzado',1,'0000-00-00 00:00:00'),(135,'Adobe Photoshop Cs6 Intermedio',1,'0000-00-00 00:00:00'),(136,'Técnicas De Aplicación De Planillas Electrónica Excel Avanzado',1,'0000-00-00 00:00:00'),(137,'Técnicas Aplicadas De Office',1,'0000-00-00 00:00:00'),(138,'Autocad Básico 2010',1,'0000-00-00 00:00:00'),(139,'Base De Datos Y Nuevos Recursos Electrónicos De Información',1,'0000-00-00 00:00:00'),(140,'Base De Datos Access',1,'0000-00-00 00:00:00'),(141,'Gestión De Datos Con El Uso De Planillas De Cálculo',1,'0000-00-00 00:00:00'),(142,'Excel Intermedio Online',1,'0000-00-00 00:00:00'),(143,'Postitulo En Animación Digital (Santiago) ',1,'0000-00-00 00:00:00'),(144,'Diplomado En Sistemas De Riego Tecnificado (Santiago)',1,'0000-00-00 00:00:00'),(145,'Magíster En Gestión De Negocios Inmobiliarios (Temuco)',1,'0000-00-00 00:00:00'),(146,'Diplomado En Gestión Clínica Y Calidad Hospitalaria (Santiago)',1,'0000-00-00 00:00:00'),(147,'Diplomado En Calidad Y Seguridad De Pacientes En La Gestión Clínica (Santiago)',1,'0000-00-00 00:00:00'),(148,'Diplomado En Desarrollo Sustentable En La Empresa (Santiago)',1,'0000-00-00 00:00:00'),(149,'Magíster En Teledetección (Santiago)',1,'0000-00-00 00:00:00'),(150,'Magíster En Consultoría Funcional En SAP (Santiago)',1,'0000-00-00 00:00:00'),(151,'Diplomado En Ergonomía Y Salud Laboral (Santiago)',1,'0000-00-00 00:00:00'),(152,'Diplomado En Fisiología Del Ejercicio (Santiago)',1,'0000-00-00 00:00:00'),(153,'Diplomado En Kinesiología Del Deporte (Santiago)',1,'0000-00-00 00:00:00'),(154,'Diplomado En Kinesiología Maxilofacial (Santiago)',1,'0000-00-00 00:00:00'),(155,'Diplomado En Neurokinesiología Pediátrica (Santiago)',1,'0000-00-00 00:00:00'),(156,'Diplomado En Kinesiología En Columna Vertebral (Santiago)',1,'0000-00-00 00:00:00'),(157,'Magíster En Medicina Y Ciencias Del Deporte (Santiago)',1,'0000-00-00 00:00:00'),(158,'Magíster En Fisiología Clínica Del Ejercicio (Santiago)',1,'0000-00-00 00:00:00'),(159,'Magíster En Kinesiología Gerontológica (Santiago)',1,'0000-00-00 00:00:00'),(160,'Ediplomado En Fisiología Del Ejercicio (Online)',1,'0000-00-00 00:00:00'),(161,'Especialidad Médica En Anestesiología Y Reanimación (Santiago)',1,'0000-00-00 00:00:00'),(162,'Especialidad Médica En Geriatría (Santiago)',1,'0000-00-00 00:00:00'),(163,'Especialidad Médica En Medicina Interna (Santiago)',1,'0000-00-00 00:00:00'),(164,'Especialidad Médica En Neurología (Santiago)',1,'0000-00-00 00:00:00'),(165,'Especialidad Médica En Pediatría (Santiago)',1,'0000-00-00 00:00:00'),(166,'Especialidad Médica En Psiquiatría (Santiago)',1,'0000-00-00 00:00:00'),(167,'Especialidad Médica En Urología (Santiago)',1,'0000-00-00 00:00:00'),(168,'Especialidad Médica En Medicina Del Deporte Y La Actividad Física (Santiago)',1,'0000-00-00 00:00:00'),(169,'Especialidad Médica En Radiología E Imagenología (Santiago)',1,'0000-00-00 00:00:00'),(170,'Especialidad Médica En Medicina Física Y Rehabilitación (Santiago)',1,'0000-00-00 00:00:00'),(171,'Magíster En Nutrición Para La Actividad Física Y El Deporte (Santiago)',1,'0000-00-00 00:00:00'),(172,'Magíster En Matronería En La Salud Integral De La Mujer A Través De Su Ciclo De Vida (Santiago)',1,'0000-00-00 00:00:00'),(173,'Especialización En Cirurgía Y Traumatología Bucal Y Maxilofacial (Santiago)',1,'0000-00-00 00:00:00'),(174,'Especialización En Endodoncia (Santiago)',1,'0000-00-00 00:00:00'),(175,'Especialización En Ortodoncia Y Ortopedia Dentomaxilar (Santiago)',1,'0000-00-00 00:00:00'),(176,'Especialización En Periodoncia E Implantología Oral (Santiago)',1,'0000-00-00 00:00:00'),(177,'Especialización En Rehabilitación Oral Con Mención En Prótesis Fija, Removible E Implantología (Santiago)',1,'0000-00-00 00:00:00'),(178,'Especialización En Imagenología Oral Y Maxilofacial (Santiago)',1,'0000-00-00 00:00:00'),(179,'Magíster En Educación En Ciencias De La Salud (Santiago)',1,'0000-00-00 00:00:00'),(180,'Diplomado En Docencia Clínica (Santiago)',1,'0000-00-00 00:00:00'),(181,'Magíster En Psicología Educacional (Santiago)',1,'0000-00-00 00:00:00'),(182,'Magíster En Psicología Clínica Infanto Juvenil (Santiago)',1,'0000-00-00 00:00:00'),(183,'Magíster En Psicoterapia Familiar, De Pareja E Individual. Enfoque Constructivista Interaccional (Santiago)',1,'0000-00-00 00:00:00'),(184,'Magister En Psicología De Salud (Santiago)',1,'0000-00-00 00:00:00'),(185,'Magíster En Psicología Organizacional (Santiago)',1,'0000-00-00 00:00:00'),(186,'Ediplomado En Gestión De Organizaciones Y Personas En Base Al Modelo Por Competencias (Online)',1,'0000-00-00 00:00:00'),(187,'Magíster En Psicología Jurídica E Intervención Psicosocial (Temuco) ',1,'0000-00-00 00:00:00'),(188,'Magíster En Psicología Educacional (Temuco)',1,'0000-00-00 00:00:00'),(189,'Magíster En Salud Pública Y Planificación Sanitaria (Santiago)',1,'0000-00-00 00:00:00'),(190,'Diplomado En Salud Pública (Santiago)',1,'0000-00-00 00:00:00'),(191,'Ediplomado En Atención Integral Del Ataque Cerebrovascular (Online)',1,'0000-00-00 00:00:00'),(192,'Magíster En Salud Pública Y Planificación Sanitaria - Blended (Semi-Presencial) (Temuco)',1,'0000-00-00 00:00:00'),(193,'Diplomado En Salud Pública - Blended (Semi-Presencial) (Temuco)',1,'0000-00-00 00:00:00'),(194,'Diplomado En Simulación Clínica - Blended (Semi-Presencial) (Santiago)',1,'0000-00-00 00:00:00'),(195,'Diplomado En Tomografía Computada Multicorte: Actualizaciones En Procesamiento Digital De Imágenes Y Dosimetría (Santiago)',1,'0000-00-00 00:00:00'),(196,'Diplomado En Imagen Por Resonancia Magnética (Santiago)',1,'0000-00-00 00:00:00'),(197,'Diplomado En Danza Movimiento Terapia (Santiago)',1,'0000-00-00 00:00:00'),(198,'Magister En Etología Y Bienestar Animal (Santiago)',1,'0000-00-00 00:00:00'),(199,'Diplomado En Evaluación De Impacto Ambiental (Temuco)',1,'0000-00-00 00:00:00'),(200,'Diplomado En Medicina Felina (Temuco)',1,'0000-00-00 00:00:00'),(201,'Diplomado En Arquitectura De Eficiencia Energética (Santiago)',1,'0000-00-00 00:00:00'),(202,'Diplomado En Gestión De Proyectos Inmobiliarios (Santiago)',1,'0000-00-00 00:00:00'),(203,'Diplomado En Marketing Digital (Santiago)',1,'0000-00-00 00:00:00'),(204,'Magíster En Derecho Público (Santiago)',1,'0000-00-00 00:00:00'),(205,'Magíster En Derecho De Los Negocios Y La Empresa (Santiago)',1,'0000-00-00 00:00:00'),(206,'Magíster En Derecho Público (Temuco)',1,'0000-00-00 00:00:00'),(207,'Magister En Derecho Penal Y Proceso Penal (Temuco)',1,'0000-00-00 00:00:00'),(208,'Magíster En Derecho De La Empresa (Temuco)',1,'0000-00-00 00:00:00'),(209,'Diplomado En Derecho Administrativo (Temuco)',1,'0000-00-00 00:00:00'),(210,'Diplomado En Derecho Penal Especial (Temuco)',1,'0000-00-00 00:00:00'),(211,'Diplomado En Derecho Del Trabajo (Temuco)',1,'0000-00-00 00:00:00'),(212,'Magíster En Docencia En Educación Superior (Santiago)',1,'0000-00-00 00:00:00'),(213,'Magíster En Coaching Y Liderazgo Deportivo (Santiago)',1,'0000-00-00 00:00:00'),(214,'Magíster En Ciencias De La Educación (Mención Currículum Y Evaluación)  (Santiago)                                                                    ',1,'0000-00-00 00:00:00'),(215,'Magíster En Educación Diferencial (Mención Trastornos De La Comunicación, Audición Y Lenguaje) (Santiago)',1,'0000-00-00 00:00:00'),(216,'Magíster En Gestión Directiva De Excelencia  (Santiago)',1,'0000-00-00 00:00:00'),(217,'Magíster En Neurociencias De La Educación (Santiago)',1,'0000-00-00 00:00:00'),(218,'Diplomado En Gestión En La Educación Superior (Santiago)',1,'0000-00-00 00:00:00'),(219,'Diplomado En Elaboración De Instrumentos Para La Evaluación De Los Aprendizajes (Santiago)',1,'0000-00-00 00:00:00'),(220,'Magíster En Gestión De La Convivencia Escolar (Santiago)',1,'0000-00-00 00:00:00'),(221,'Magíster En Actividad Física Y Salud (Temuco)',1,'0000-00-00 00:00:00'),(222,'Magíster En Docencia En Educación Superior (Temuco)',1,'0000-00-00 00:00:00'),(223,'Diplomado En Didáctica De La Matemática Para La Educación Básica (Temuco)',1,'0000-00-00 00:00:00'),(224,'Diplomado En Didáctica Del Inglés Para La Educación Básica (Temuco)',1,'0000-00-00 00:00:00'),(225,'Diplomado En Inclusión Psicoeducativa En Transtornos Del Espectro Autista (Temuco)',1,'0000-00-00 00:00:00'),(226,'Diplomado En Pedagogía Del Humor En Primer Ciclo Básico (Temuco)',1,'0000-00-00 00:00:00'),(227,'Magíster En Gestión De La Convivencia Escolar (Temuco) ',1,'0000-00-00 00:00:00'),(228,'Magíster En Inclusión Social Y Laboral De Personas Con Discapacidad (Temuco) ',1,'0000-00-00 00:00:00'),(229,'Magíster En Ciencias De La Educación (Mención Currículum Y Evaluación)  (Temuco)                                                                     ',1,'0000-00-00 00:00:00'),(230,'Magíster En Diseño Universal De Aprendizajes (Temuco) ',1,'0000-00-00 00:00:00'),(231,'Magíster En Gestión Directiva De Excelencia  (Temuco) ',1,'0000-00-00 00:00:00'),(232,'Magíster En Neurociencias De La Educación (Temuco)',1,'0000-00-00 00:00:00'),(233,'Magíster En Análisis De Inteligencia Comunicacional (Santiago)',1,'0000-00-00 00:00:00'),(234,'Magíster En Ciencia Política Y Pensamiento Contemporáneo (Santiago)',1,'0000-00-00 00:00:00'),(235,'Magíster En Espiritualidad Y Estudio De Las Religiones (Santiago)',1,'0000-00-00 00:00:00'),(236,'Magíster En Sociología Y Antropología Social (Santiago)',1,'0000-00-00 00:00:00'),(237,'Magíster En Alta Dirección Pública (Santiago)',1,'0000-00-00 00:00:00'),(238,'Magíster En Dirección De Empresas (MBA Executive) (Santiago)',1,'0000-00-00 00:00:00'),(239,'Magíster En Planificación Y Dirección Tributaria (Santiago)',1,'0000-00-00 00:00:00'),(240,'Magíster En Dirección De Instituciones De Salud (Santiago)',1,'0000-00-00 00:00:00'),(241,'Magíster En Dirección De Capital Humano (Santiago)',1,'0000-00-00 00:00:00'),(242,'Magíster En Dirección Y Análisis Financiero (Santiago)',1,'0000-00-00 00:00:00'),(243,'Magíster En Planificación Y Control De Gestión (Santiago)',1,'0000-00-00 00:00:00'),(244,'Magíster En Dirección De Operaciones Y Logística (Santiago)',1,'0000-00-00 00:00:00'),(245,'Magíster En Evaluación Y Dirección De Proyectos (Santiago)',1,'0000-00-00 00:00:00'),(246,'Magíster En Inteligencia De Negocios Y Mercados (Santiago)',1,'0000-00-00 00:00:00'),(247,'Diplomado En Planificación Tributaria Empresarial (Santiago)',1,'0000-00-00 00:00:00'),(248,'Diplomado En Gestión De Marketing Integral (Santiago)',1,'0000-00-00 00:00:00'),(249,'Diplomado En Planificación Y Gestión Estratégica (Santiago)',1,'0000-00-00 00:00:00'),(250,'Diplomado En Marketing Relacional Y Fidelización (Santiago)',1,'0000-00-00 00:00:00'),(251,'Diplomado En Análisis Y Gestión Financiera (Santiago)',1,'0000-00-00 00:00:00'),(252,'Diplomado En Gestión Logística Integral (Santiago)',1,'0000-00-00 00:00:00'),(253,'Diplomado En Gestión Y Desarrollo De Negocio (Santiago)',1,'0000-00-00 00:00:00'),(254,'Diplomado En Gestión De Inteligencia De Negocios (Santiago)',1,'0000-00-00 00:00:00'),(255,'Diplomado En Normas Internacionales Contables (Santiago)',1,'0000-00-00 00:00:00'),(256,'Diplomado En Reforma Tributaria Ley Nº20.780 (Santiago)',1,'0000-00-00 00:00:00'),(257,'Ediplomado En Control De Gestión Gerencial (Online)',1,'0000-00-00 00:00:00'),(258,'Ediplomado En Evaluación Y Gestión De Proyectos (Online)',1,'0000-00-00 00:00:00'),(259,'Magíster En Dirección De Empresas (MBA Executive) (Temuco)',1,'0000-00-00 00:00:00'),(260,'Ingles',1,'0000-00-00 00:00:00'),(261,'Chino Mandarín',1,'0000-00-00 00:00:00'),(262,'Portugués (Bra)',1,'0000-00-00 00:00:00'),(263,'Ruso',1,'0000-00-00 00:00:00'),(264,'Exámenes Internacionales',1,'0000-00-00 00:00:00'),(265,'(Red De Emergencia)',1,'2017-07-11 16:59:38');
/*!40000 ALTER TABLE `carreras_cursos_programas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones`
--

DROP TABLE IF EXISTS `opciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_unidad` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `estado` int(11) DEFAULT '1',
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
INSERT INTO `opciones` VALUES (1,1,1,1,1,'2017-07-11 15:43:50'),(2,1,1,2,1,'2017-07-11 15:44:29'),(3,1,1,3,1,'2017-07-11 15:44:52'),(4,1,1,4,1,'2017-07-11 15:45:11'),(5,1,1,5,1,'2017-07-11 15:45:23'),(6,1,1,6,1,'2017-07-11 15:45:41'),(7,1,1,7,1,'2017-07-11 15:45:57'),(8,1,1,8,1,'2017-07-11 15:46:13'),(9,1,2,9,1,'2017-07-11 15:46:28'),(10,1,3,10,1,'2017-07-11 15:47:04'),(11,1,3,11,1,'2017-07-11 15:47:33'),(12,1,3,12,1,'2017-07-11 15:47:51'),(13,1,32,13,1,'2017-07-11 15:48:13'),(14,1,32,14,1,'2017-07-11 15:48:24'),(15,1,32,15,1,'2017-07-11 15:48:35'),(16,1,4,16,1,'2017-07-11 15:49:01'),(17,1,5,15,1,'2017-07-11 15:49:12'),(18,1,6,12,1,'2017-07-11 15:49:39'),(19,1,7,7,1,'2017-07-11 15:50:05'),(20,1,8,8,1,'2017-07-11 15:50:19');
/*!40000 ALTER TABLE `opciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades` (
  `id_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_unidad` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (1,'Vespertina',1,'2017-07-07 01:02:27'),(2,'Educacion Continua',1,'2017-07-07 01:02:31'),(3,'Postgrados',1,'2017-07-07 01:02:33'),(4,'Linc',1,'2017-07-07 01:02:36');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) DEFAULT 'default.jpg',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_confirmed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','mmerino@cronstudio.com','$2y$10$Pq5X1hiwMQPdoLnaK3k76.9I7ZwQA0SmNwAIObq9LWg3IXxjFtHSu','default.jpg','2017-07-10 16:08:13',NULL,0,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-17 12:03:51
