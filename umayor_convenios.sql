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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Ingeniería ',1,'2017-07-07 14:02:32'),(2,'Construcción Civil',1,'2017-07-07 14:02:32'),(3,'Negocios',1,'2017-07-07 14:02:32'),(4,'Gobierno y Cs. Sociales',1,'2017-07-07 14:02:32'),(5,'Psicología',1,'2017-07-07 14:02:32'),(6,'Derecho',1,'2017-07-07 14:02:32'),(7,'Contabilidad',1,'2017-07-07 14:02:32'),(8,'Prevención de Riesgos',1,'2017-07-07 14:02:32'),(9,'Logística',1,'2017-07-07 14:02:32'),(10,'DESARROLLO DE PERSONAS Y ORGANIZACIONES',1,'2017-07-07 14:02:32'),(11,'EDUCACIÓN',1,'2017-07-07 14:02:32'),(12,'GESTIÓN DE NEGOCIOS Y CERTIFICACIONES',1,'2017-07-07 14:02:32'),(13,'INDUSTRIAS Y RECURSOS NATURALES',1,'2017-07-07 14:02:32'),(14,'SALUD Y SIMULACIÓN PÚBLICA',1,'2017-07-07 14:02:32'),(15,'TECNOLOGÍAS DE INFORMACIÓN',1,'2017-07-07 14:02:32'),(16,'Animación Digital',1,'2017-07-07 14:02:32'),(17,'Agronomía',1,'2017-07-07 14:02:32'),(18,'Construcción Civil',1,'2017-07-07 14:02:32'),(19,'Enfermería',1,'2017-07-07 14:02:32'),(20,'Forestal',1,'2017-07-07 14:02:32'),(21,'Ingeniería',1,'2017-07-07 14:02:32'),(22,'Kinesiología',1,'2017-07-07 14:02:32'),(23,'Medicina',1,'2017-07-07 14:02:32'),(24,'Nutrición y Dietética',1,'2017-07-07 14:02:32'),(25,'Obstetricia',1,'2017-07-07 14:02:32'),(26,'Odontología',1,'2017-07-07 14:02:32'),(27,'OFECS',1,'2017-07-07 14:02:32'),(28,'Salud Pública',1,'2017-07-07 14:02:32'),(29,'Simulación Clínica',1,'2017-07-07 14:02:32'),(30,'Tecnología Médica',1,'2017-07-07 14:02:32'),(31,'Terapia Ocupacional',1,'2017-07-07 14:02:32'),(32,'Veterinaria',1,'2017-07-07 14:02:32'),(33,'Arquitectura',1,'2017-07-07 14:02:32'),(34,'Comunicaciones',1,'2017-07-07 14:02:32'),(35,'Gobierno y Cs. Sociales',1,'2017-07-07 14:02:32'),(36,'Cursos de Idioma',1,'2017-07-07 14:02:32');
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
INSERT INTO `carreras_cursos_programas` VALUES (1,'Ingeniería Industrial',1,'2017-07-07 14:13:57'),(2,'Ingeniería Informática',1,'2017-07-07 14:13:57'),(3,'Ingeniería Electrónica',1,'2017-07-07 14:13:57'),(4,'Ingeniería Civil Industrial',1,'2017-07-07 14:13:57'),(5,'Ingeniería Civil Electrónica Y Telecomunicaciones',1,'2017-07-07 14:13:57'),(6,'Ingeniería Civil En Informática',1,'2017-07-07 14:13:57'),(7,'Ingeniería En Prevención De Riesgos',1,'2017-07-07 14:13:57'),(8,'Ingeniería En Logística',1,'2017-07-07 14:13:57'),(9,'Construcción Civil',1,'2017-07-07 14:13:57'),(10,'Ingeniería Comercial',1,'2017-07-07 14:13:57'),(11,'Ingeniería En Administración',1,'2017-07-07 14:13:57'),(12,'Contador Público Y Auditor',1,'2017-07-07 14:13:57'),(13,'Administración Pública',1,'2017-07-07 14:13:57'),(14,'Sociología',1,'2017-07-07 14:13:57'),(15,'Derecho',1,'2017-07-07 14:13:57'),(16,'Psicología',1,'2017-07-07 14:13:57'),(17,'Aprender A Trabajar En Equipo',1,'2017-07-07 14:13:57'),(18,'Asistente Administrativo Con Mencion En Ventas',1,'2017-07-07 14:13:57'),(19,'Atención Al Usuario',1,'2017-07-07 14:13:57'),(20,'Atención De Público Y Manejo De Conflictos',1,'2017-07-07 14:13:57'),(21,'Calidad De Servicio Al Cliente',1,'2017-07-07 14:13:57'),(22,'Clima Laboral Y Gestión De Personas',1,'2017-07-07 14:13:57'),(23,'Comunicación Efectiva',1,'2017-07-07 14:13:57'),(24,'Comunicación Y Trabajo En Equipo',1,'2017-07-07 14:13:57'),(25,'Control Del Estrés Laboral',1,'2017-07-07 14:13:57'),(26,'Desarrollo De Capacidades De Trabajo En Equipo',1,'2017-07-07 14:13:57'),(27,'Desarrollo De Habilidades Directivas',1,'2017-07-07 14:13:57'),(28,'Desarrollo Habilidades De Liderazgo',1,'2017-07-07 14:13:57'),(29,'Desarrollo Habilidades Estrategias',1,'2017-07-07 14:13:57'),(30,'Diplomado Derecho Administrativo',1,'2017-07-07 14:13:57'),(31,'Dirección Equipos Alto Desempeño Enfoque Rrhh',1,'2017-07-07 14:13:57'),(32,'Diplomado En Gestión De Recursos Humanos',1,'2017-07-07 14:13:57'),(33,'Estatuto Administrativo De La Gestión Pública',1,'2017-07-07 14:13:57'),(34,'Estatuto Administrativo',1,'2017-07-07 14:13:57'),(35,'Estatuto Administrativo Y Normativa Asociada',1,'2017-07-07 14:13:57'),(36,'Ética, Probidad Y Transparencia',1,'2017-07-07 14:13:57'),(37,'Evaluación De Desempeño',1,'2017-07-07 14:13:57'),(38,'Experto En Prevención De Riesgos - Industria Extractiva Minera',1,'2017-07-07 14:13:57'),(39,'Gestión Del Conocimiento',1,'2017-07-07 14:13:57'),(40,'Gestionar Equipo De  Trabajo De La Unidad (Gcm)',1,'2017-07-07 14:13:57'),(41,'Habilidades Directivas',1,'2017-07-07 14:13:57'),(42,'Liderazgo Situacional',1,'2017-07-07 14:13:57'),(43,'Liderazgo Valórico',1,'2017-07-07 14:13:57'),(44,'Liderazgo Y Planeamiento Estratégico',1,'2017-07-07 14:13:57'),(45,'Manejo De Conflicto',1,'2017-07-07 14:13:57'),(46,'Manejo Del Estrés A Través De La Expresión Corporal',1,'2017-07-07 14:13:57'),(47,'Mejoramiento Clima Laboral',1,'2017-07-07 14:13:57'),(48,'Menejo De Estrés',1,'2017-07-07 14:13:57'),(49,'Outdoor Trabajo En Equipo',1,'2017-07-07 14:13:57'),(50,'Proactividad E Iniciativa',1,'2017-07-07 14:13:57'),(51,'Probidad Y Transparencia En El Sector Público',1,'2017-07-07 14:13:57'),(52,'Redacción Ejecutiva Eficiente Y Asertiva',1,'2017-07-07 14:13:57'),(53,'Resolución De Conflictos',1,'2017-07-07 14:13:57'),(54,'Taller De Atención A Público',1,'2017-07-07 14:13:57'),(55,'Taller De Desarrollo Personal',1,'2017-07-07 14:13:57'),(56,'Téc. Servicio Satisfacción Clientes Mod Cc',1,'2017-07-07 14:13:57'),(57,'Tecnicas De Comunicación Efectiva',1,'2017-07-07 14:13:57'),(58,'Técnicas De Trabajo En Equipo',1,'2017-07-07 14:13:57'),(59,'Tecnicas Para La Satisfaccion De Clientes ',1,'2017-07-07 14:13:57'),(60,'Curso Normativa Pública',1,'2017-07-07 14:13:57'),(61,'Enfoque De Género Y Equidad',1,'2017-07-07 14:13:57'),(62,'Gestión De Emergencias Y Desastres',1,'2017-07-07 14:13:57'),(63,'Intervención En Crisis Y Primer Apoyo Psicológico',1,'2017-07-07 14:13:57'),(64,'Metodologías Para La Participación Ciudadana',1,'2017-07-07 14:13:57'),(65,'Incorporación Del Enfoque De Género En Las Políticas Públicas',1,'2017-07-07 14:13:57'),(66,'Enfoque De Género Y Políticas Públicas Para Regiones',1,'2017-07-07 14:13:57'),(67,'Capacitacion Previsional En El Sistema De Afp',1,'2017-07-07 14:13:57'),(68,'Evaluación Y Planificacion Curricular',1,'2017-07-07 14:13:57'),(69,'Gestión De Procesos Educativos',1,'2017-07-07 14:13:57'),(70,'Fortalecimiento De Competencias Y Prácticas Directivas De Excelencia',1,'2017-07-07 14:13:57'),(71,'Efectividad En La Docencia Clinica',1,'2017-07-07 14:13:57'),(72,'Estrategias Docentes Con Foco En El Aprendizaje Por Competencias',1,'2017-07-07 14:13:57'),(73,'Administración De Bodega',1,'2017-07-07 14:13:57'),(74,'Administración Del Tiempo',1,'2017-07-07 14:13:57'),(75,'Conceptos De La Norma Iso 9001:2008',1,'2017-07-07 14:13:57'),(76,'Criterios Evaluación Compras Públicas',1,'2017-07-07 14:13:57'),(77,'Curso Gestión De Proyectos',1,'2017-07-07 14:13:57'),(78,'Curso Intensivo Compras Y Contratación Publica',1,'2017-07-07 14:13:57'),(79,'Encargados De Licitaciones Compras',1,'2017-07-07 14:13:57'),(80,'Formulación De Planes De Negocio',1,'2017-07-07 14:13:57'),(81,'Formulación De Proyectos Sociales',1,'2017-07-07 14:13:57'),(82,'Gestión De Negocios',1,'2017-07-07 14:13:57'),(83,'Gestión De Procesos',1,'2017-07-07 14:13:57'),(84,'Gestión Por Competencias Laborales',1,'2017-07-07 14:13:57'),(85,'Gestión Pública',1,'2017-07-07 14:13:57'),(86,'Gestion Y Comercialización Para Microempresa',1,'2017-07-07 14:13:57'),(87,'Higiene Y Manipulación De Alimentos',1,'2017-07-07 14:13:57'),(88,'Interpretacion Y Analisis De La Norma Iso 9001;2008',1,'2017-07-07 14:13:57'),(89,'Malla Básica En Gestión De Abastecimiento',1,'2017-07-07 14:13:57'),(90,'Manejo De Caja',1,'2017-07-07 14:13:57'),(91,'Negociación: El Arte De Los Acuerdos',1,'2017-07-07 14:13:57'),(92,'Normas Internacionales De Contabilidad',1,'2017-07-07 14:13:57'),(93,'Normas Internacionales De Información Financiera (Ifrs)',1,'2017-07-07 14:13:57'),(94,'Optimización De Procesos',1,'2017-07-07 14:13:57'),(95,'Planes De Negocio',1,'2017-07-07 14:13:57'),(96,'Planificación Estratégica',1,'2017-07-07 14:13:57'),(97,'Planificación Y Control De Gestión',1,'2017-07-07 14:13:57'),(98,'Planificación, Seguimiento Y Control De Proyectos',1,'2017-07-07 14:13:57'),(99,'Plataforma Mercado Público Para Compradores',1,'2017-07-07 14:13:57'),(100,'Taller Aplicado De Indicadores De Gestión',1,'2017-07-07 14:13:57'),(101,'Técnicas De Negociación Aplicadas',1,'2017-07-07 14:13:57'),(102,'Balance Scorecard Y Control De Gestión',1,'2017-07-07 14:13:57'),(103,'Gestión Presupuestaria, Contabilidad Gubernamental Y Nic En El Sector Público',1,'2017-07-07 14:13:57'),(104,'Diseño Y Formulación De Proyectos',1,'2017-07-07 14:13:57'),(105,'Gestión De Compras Públicas',1,'2017-07-07 14:13:57'),(106,'Contabilidad Gubernamental (Con Aplicación De Nics) Y Gestión Presupuestaria En El Sector Público',1,'2017-07-07 14:13:57'),(107,'Gestión Por Procesos',1,'2017-07-07 14:13:57'),(108,'Implemetación De Gestión Por Procesos',1,'2017-07-07 14:13:57'),(109,'Manejo De Grúa Horquilla',1,'2017-07-07 14:13:57'),(110,'Manipulación De Alimentos',1,'2017-07-07 14:13:57'),(111,'Eficiencia Energética Y Sustentabilidad En Edificaciones',1,'2017-07-07 14:13:57'),(112,'Introducción En Arcgis',1,'2017-07-07 14:13:57'),(113,'Georreferenciación: Sig En Salud',1,'2017-07-07 14:13:57'),(114,'Calidad Y Seguridad Del Paciente',1,'2017-07-07 14:13:57'),(115,'Curso Salud Y Cuidado Familiar',1,'2017-07-07 14:13:57'),(116,'Deberes Y Derechos De Los Paciente',1,'2017-07-07 14:13:57'),(117,'Introducción A La Gestión Local En La Atención Primaria',1,'2017-07-07 14:13:57'),(118,'Primeros Auxilios Y Reanimación Cardiopulmonar ',1,'2017-07-07 14:13:57'),(119,' (Red De Emergencia)',1,'2017-07-07 14:13:57'),(120,'Reanimacion Cardiopulmonar (Rcp)',1,'2017-07-07 14:13:57'),(121,'Instrumentos De Abordaje Familiar Para La Implementación Del Modelo De Atención Integral En Salud',1,'2017-07-07 14:13:57'),(122,'Excel 2007 Avanzado',1,'2017-07-07 14:13:57'),(123,'Excel 2007 Intermedio',1,'2017-07-07 14:13:57'),(124,'Excel 2010 Avanzado',1,'2017-07-07 14:13:57'),(125,'Excel 2010 Básico',1,'2017-07-07 14:13:57'),(126,'Word 2007 Básico',1,'2017-07-07 14:13:57'),(127,'Word 2007 Avanzado',1,'2017-07-07 14:13:57'),(128,'Word 2007 Intermedio',1,'2017-07-07 14:13:57'),(129,'Word 2010 Básico',1,'2017-07-07 14:13:57'),(130,'Word 2010 Intermedio',1,'2017-07-07 14:13:57'),(131,'Powerpoint 2010 Básico',1,'2017-07-07 14:13:57'),(132,'Powerpoint 2010 Avanzado',1,'2017-07-07 14:13:57'),(133,'Powerpoint 2010 Intermedio',1,'2017-07-07 14:13:57'),(134,'Adobe Photoshop Cs6 Básico',1,'2017-07-07 14:13:57'),(135,'Adobe Photoshop Cs6 Avanzado',1,'2017-07-07 14:13:57'),(136,'Adobe Photoshop Cs6 Intermedio',1,'2017-07-07 14:13:57'),(137,'Técnicas De Aplicación De Planillas Electrónica Excel Avanzado',1,'2017-07-07 14:13:57'),(138,'Técnicas Aplicadas De Office',1,'2017-07-07 14:13:57'),(139,'Autocad Básico 2010',1,'2017-07-07 14:13:57'),(140,'Base De Datos Y Nuevos Recursos Electrónicos De Información',1,'2017-07-07 14:13:57'),(141,'Base De Datos Access',1,'2017-07-07 14:13:57'),(142,'Gestión De Datos Con El Uso De Planillas De Cálculo',1,'2017-07-07 14:13:57'),(143,'Excel Intermedio Online',1,'2017-07-07 14:13:57'),(144,'Postitulo En Animación Digital (Santiago) ',1,'2017-07-07 14:13:57'),(145,'Diplomado En Sistemas De Riego Tecnificado (Santiago)',1,'2017-07-07 14:13:57'),(146,'Magíster En Gestión De Negocios Inmobiliarios (Temuco)',1,'2017-07-07 14:13:57'),(147,'Diplomado En Gestión Clínica Y Calidad Hospitalaria (Santiago)',1,'2017-07-07 14:13:57'),(148,'Diplomado En Calidad Y Seguridad De Pacientes En La Gestión Clínica (Santiago)',1,'2017-07-07 14:13:57'),(149,'Diplomado En Desarrollo Sustentable En La Empresa (Santiago)',1,'2017-07-07 14:13:57'),(150,'Magíster En Teledetección (Santiago)',1,'2017-07-07 14:13:57'),(151,'Magíster En Consultoría Funcional En SAP (Santiago)',1,'2017-07-07 14:13:57'),(152,'Diplomado En Ergonomía Y Salud Laboral (Santiago)',1,'2017-07-07 14:13:57'),(153,'Diplomado En Fisiología Del Ejercicio (Santiago)',1,'2017-07-07 14:13:57'),(154,'Diplomado En Kinesiología Del Deporte (Santiago)',1,'2017-07-07 14:13:57'),(155,'Diplomado En Kinesiología Maxilofacial (Santiago)',1,'2017-07-07 14:13:57'),(156,'Diplomado En Neurokinesiología Pediátrica (Santiago)',1,'2017-07-07 14:13:57'),(157,'Diplomado En Kinesiología En Columna Vertebral (Santiago)',1,'2017-07-07 14:13:57'),(158,'Magíster En Medicina Y Ciencias Del Deporte (Santiago)',1,'2017-07-07 14:13:57'),(159,'Magíster En Fisiología Clínica Del Ejercicio (Santiago)',1,'2017-07-07 14:13:57'),(160,'Magíster En Kinesiología Gerontológica (Santiago)',1,'2017-07-07 14:13:57'),(161,'Ediplomado En Fisiología Del Ejercicio (Online)',1,'2017-07-07 14:13:57'),(162,'Especialidad Médica En Anestesiología Y Reanimación (Santiago)',1,'2017-07-07 14:13:57'),(163,'Especialidad Médica En Geriatría (Santiago)',1,'2017-07-07 14:13:57'),(164,'Especialidad Médica En Medicina Interna (Santiago)',1,'2017-07-07 14:13:57'),(165,'Especialidad Médica En Neurología (Santiago)',1,'2017-07-07 14:13:57'),(166,'Especialidad Médica En Pediatría (Santiago)',1,'2017-07-07 14:13:57'),(167,'Especialidad Médica En Psiquiatría (Santiago)',1,'2017-07-07 14:13:57'),(168,'Especialidad Médica En Urología (Santiago)',1,'2017-07-07 14:13:57'),(169,'Especialidad Médica En Medicina Del Deporte Y La Actividad Física (Santiago)',1,'2017-07-07 14:13:57'),(170,'Especialidad Médica En Radiología E Imagenología (Santiago)',1,'2017-07-07 14:13:57'),(171,'Especialidad Médica En Medicina Física Y Rehabilitación (Santiago)',1,'2017-07-07 14:13:57'),(172,'Magíster En Nutrición Para La Actividad Física Y El Deporte (Santiago)',1,'2017-07-07 14:13:57'),(173,'Magíster En Matronería En La Salud Integral De La Mujer A Través De Su Ciclo De Vida (Santiago)',1,'2017-07-07 14:13:57'),(174,'Especialización En Cirurgía Y Traumatología Bucal Y Maxilofacial (Santiago)',1,'2017-07-07 14:13:57'),(175,'Especialización En Endodoncia (Santiago)',1,'2017-07-07 14:13:57'),(176,'Especialización En Ortodoncia Y Ortopedia Dentomaxilar (Santiago)',1,'2017-07-07 14:13:57'),(177,'Especialización En Periodoncia E Implantología Oral (Santiago)',1,'2017-07-07 14:13:57'),(178,'Especialización En Rehabilitación Oral Con Mención En Prótesis Fija, Removible E Implantología (Santiago)',1,'2017-07-07 14:13:57'),(179,'Especialización En Imagenología Oral Y Maxilofacial (Santiago)',1,'2017-07-07 14:13:57'),(180,'Magíster En Educación En Ciencias De La Salud (Santiago)',1,'2017-07-07 14:13:57'),(181,'Diplomado En Docencia Clínica (Santiago)',1,'2017-07-07 14:13:57'),(182,'Magíster En Psicología Educacional (Santiago)',1,'2017-07-07 14:13:57'),(183,'Magíster En Psicología Clínica Infanto Juvenil (Santiago)',1,'2017-07-07 14:13:57'),(184,'Magíster En Psicoterapia Familiar, De Pareja E Individual. Enfoque Constructivista Interaccional (Santiago)',1,'2017-07-07 14:13:57'),(185,'Magister En Psicología De Salud (Santiago)',1,'2017-07-07 14:13:57'),(186,'Magíster En Psicología Organizacional (Santiago)',1,'2017-07-07 14:13:57'),(187,'Ediplomado En Gestión De Organizaciones Y Personas En Base Al Modelo Por Competencias (Online)',1,'2017-07-07 14:13:57'),(188,'Magíster En Psicología Jurídica E Intervención Psicosocial (Temuco) ',1,'2017-07-07 14:13:57'),(189,'Magíster En Psicología Educacional (Temuco)',1,'2017-07-07 14:13:57'),(190,'Magíster En Salud Pública Y Planificación Sanitaria (Santiago)',1,'2017-07-07 14:13:57'),(191,'Diplomado En Salud Pública (Santiago)',1,'2017-07-07 14:13:57'),(192,'Ediplomado En Atención Integral Del Ataque Cerebrovascular (Online)',1,'2017-07-07 14:13:57'),(193,'Magíster En Salud Pública Y Planificación Sanitaria - Blended (Semi-Presencial) (Temuco)',1,'2017-07-07 14:13:57'),(194,'Diplomado En Salud Pública - Blended (Semi-Presencial) (Temuco)',1,'2017-07-07 14:13:57'),(195,'Diplomado En Simulación Clínica - Blended (Semi-Presencial) (Santiago)',1,'2017-07-07 14:13:57'),(196,'Diplomado En Tomografía Computada Multicorte: Actualizaciones En Procesamiento Digital De Imágenes Y Dosimetría (Santiago)',1,'2017-07-07 14:13:57'),(197,'Diplomado En Imagen Por Resonancia Magnética (Santiago)',1,'2017-07-07 14:13:57'),(198,'Diplomado En Danza Movimiento Terapia (Santiago)',1,'2017-07-07 14:13:57'),(199,'Magister En Etología Y Bienestar Animal (Santiago)',1,'2017-07-07 14:13:57'),(200,'Diplomado En Evaluación De Impacto Ambiental (Temuco)',1,'2017-07-07 14:13:57'),(201,'Diplomado En Medicina Felina (Temuco)',1,'2017-07-07 14:13:57'),(202,'Diplomado En Arquitectura De Eficiencia Energética (Santiago)',1,'2017-07-07 14:13:57'),(203,'Diplomado En Gestión De Proyectos Inmobiliarios (Santiago)',1,'2017-07-07 14:13:57'),(204,'Diplomado En Marketing Digital (Santiago)',1,'2017-07-07 14:13:57'),(205,'Magíster En Derecho Público (Santiago)',1,'2017-07-07 14:13:57'),(206,'Magíster En Derecho De Los Negocios Y La Empresa (Santiago)',1,'2017-07-07 14:13:57'),(207,'Magíster En Derecho Público (Temuco)',1,'2017-07-07 14:13:57'),(208,'Magister En Derecho Penal Y Proceso Penal (Temuco)',1,'2017-07-07 14:13:57'),(209,'Magíster En Derecho De La Empresa (Temuco)',1,'2017-07-07 14:13:57'),(210,'Diplomado En Derecho Administrativo (Temuco)',1,'2017-07-07 14:13:57'),(211,'Diplomado En Derecho Penal Especial (Temuco)',1,'2017-07-07 14:13:57'),(212,'Diplomado En Derecho Del Trabajo (Temuco)',1,'2017-07-07 14:13:57'),(213,'Magíster En Docencia En Educación Superior (Santiago)',1,'2017-07-07 14:13:57'),(214,'Magíster En Coaching Y Liderazgo Deportivo (Santiago)',1,'2017-07-07 14:13:57'),(215,'Magíster En Ciencias De La Educación (Mención Currículum Y Evaluación)  (Santiago)                                                                    ',1,'2017-07-07 14:13:57'),(216,'Magíster En Educación Diferencial (Mención Trastornos De La Comunicación, Audición Y Lenguaje) (Santiago)',1,'2017-07-07 14:13:57'),(217,'Magíster En Gestión Directiva De Excelencia  (Santiago)',1,'2017-07-07 14:13:57'),(218,'Magíster En Neurociencias De La Educación (Santiago)',1,'2017-07-07 14:13:57'),(219,'Diplomado En Gestión En La Educación Superior (Santiago)',1,'2017-07-07 14:13:57'),(220,'Diplomado En Elaboración De Instrumentos Para La Evaluación De Los Aprendizajes (Santiago)',1,'2017-07-07 14:13:57'),(221,'Magíster En Gestión De La Convivencia Escolar (Santiago)',1,'2017-07-07 14:13:57'),(222,'Magíster En Actividad Física Y Salud (Temuco)',1,'2017-07-07 14:13:57'),(223,'Magíster En Docencia En Educación Superior (Temuco)',1,'2017-07-07 14:13:57'),(224,'Diplomado En Didáctica De La Matemática Para La Educación Básica (Temuco)',1,'2017-07-07 14:13:57'),(225,'Diplomado En Didáctica Del Inglés Para La Educación Básica (Temuco)',1,'2017-07-07 14:13:57'),(226,'Diplomado En Inclusión Psicoeducativa En Transtornos Del Espectro Autista (Temuco)',1,'2017-07-07 14:13:57'),(227,'Diplomado En Pedagogía Del Humor En Primer Ciclo Básico (Temuco)',1,'2017-07-07 14:13:57'),(228,'Magíster En Gestión De La Convivencia Escolar (Temuco) ',1,'2017-07-07 14:13:57'),(229,'Magíster En Inclusión Social Y Laboral De Personas Con Discapacidad (Temuco) ',1,'2017-07-07 14:13:57'),(230,'Magíster En Ciencias De La Educación (Mención Currículum Y Evaluación)  (Temuco)                                                                     ',1,'2017-07-07 14:13:57'),(231,'Magíster En Diseño Universal De Aprendizajes (Temuco) ',1,'2017-07-07 14:13:57'),(232,'Magíster En Gestión Directiva De Excelencia  (Temuco) ',1,'2017-07-07 14:13:57'),(233,'Magíster En Neurociencias De La Educación (Temuco)',1,'2017-07-07 14:13:57'),(234,'Magíster En Análisis De Inteligencia Comunicacional (Santiago)',1,'2017-07-07 14:13:57'),(235,'Magíster En Ciencia Política Y Pensamiento Contemporáneo (Santiago)',1,'2017-07-07 14:13:57'),(236,'Magíster En Espiritualidad Y Estudio De Las Religiones (Santiago)',1,'2017-07-07 14:13:57'),(237,'Magíster En Sociología Y Antropología Social (Santiago)',1,'2017-07-07 14:13:57'),(238,'Magíster En Alta Dirección Pública (Santiago)',1,'2017-07-07 14:13:57'),(239,'Magíster En Dirección De Empresas (MBA Executive) (Santiago)',1,'2017-07-07 14:13:57'),(240,'Magíster En Planificación Y Dirección Tributaria (Santiago)',1,'2017-07-07 14:13:57'),(241,'Magíster En Dirección De Instituciones De Salud (Santiago)',1,'2017-07-07 14:13:57'),(242,'Magíster En Dirección De Capital Humano (Santiago)',1,'2017-07-07 14:13:57'),(243,'Magíster En Dirección Y Análisis Financiero (Santiago)',1,'2017-07-07 14:13:57'),(244,'Magíster En Planificación Y Control De Gestión (Santiago)',1,'2017-07-07 14:13:57'),(245,'Magíster En Dirección De Operaciones Y Logística (Santiago)',1,'2017-07-07 14:13:57'),(246,'Magíster En Evaluación Y Dirección De Proyectos (Santiago)',1,'2017-07-07 14:13:57'),(247,'Magíster En Inteligencia De Negocios Y Mercados (Santiago)',1,'2017-07-07 14:13:57'),(248,'Diplomado En Planificación Tributaria Empresarial (Santiago)',1,'2017-07-07 14:13:57'),(249,'Diplomado En Gestión De Marketing Integral (Santiago)',1,'2017-07-07 14:13:57'),(250,'Diplomado En Planificación Y Gestión Estratégica (Santiago)',1,'2017-07-07 14:13:57'),(251,'Diplomado En Marketing Relacional Y Fidelización (Santiago)',1,'2017-07-07 14:13:57'),(252,'Diplomado En Análisis Y Gestión Financiera (Santiago)',1,'2017-07-07 14:13:57'),(253,'Diplomado En Gestión Logística Integral (Santiago)',1,'2017-07-07 14:13:57'),(254,'Diplomado En Gestión Y Desarrollo De Negocio (Santiago)',1,'2017-07-07 14:13:57'),(255,'Diplomado En Gestión De Inteligencia De Negocios (Santiago)',1,'2017-07-07 14:13:57'),(256,'Diplomado En Normas Internacionales Contables (Santiago)',1,'2017-07-07 14:13:57'),(257,'Diplomado En Reforma Tributaria Ley Nº20.780 (Santiago)',1,'2017-07-07 14:13:57'),(258,'Ediplomado En Control De Gestión Gerencial (Online)',1,'2017-07-07 14:13:57'),(259,'Ediplomado En Evaluación Y Gestión De Proyectos (Online)',1,'2017-07-07 14:13:57'),(260,'Magíster En Dirección De Empresas (MBA Executive) (Temuco)',1,'2017-07-07 14:13:57'),(261,'Inglés',1,'2017-07-07 14:13:57'),(262,'Chino Mandarín',1,'2017-07-07 14:13:57'),(263,'Portugués (Bra) ',1,'2017-07-07 14:13:57'),(264,'Ruso',1,'2017-07-07 14:13:57'),(265,'Exámenes Internacionales',1,'2017-07-07 14:13:57');
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
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_unidad_UNIQUE` (`id_unidad`),
  UNIQUE KEY `id_area_UNIQUE` (`id_area`),
  UNIQUE KEY `id_carrera_UNIQUE` (`id_carrera`),
  CONSTRAINT `opciones_ibfk_1` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`),
  CONSTRAINT `opciones_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id_area`),
  CONSTRAINT `opciones_ibfk_3` FOREIGN KEY (`id_carrera`) REFERENCES `carreras_cursos_programas` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
INSERT INTO `opciones` VALUES (1,1,36,3,1,'2017-07-10 18:39:27'),(2,4,1,1,1,'2017-07-10 18:39:26');
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
INSERT INTO `unidades` VALUES (1,'Vespertina',1,'2017-07-06 21:02:27'),(2,'Educacion Continua',1,'2017-07-06 21:02:31'),(3,'Postgrados',1,'2017-07-06 21:02:33'),(4,'Linc',1,'2017-07-06 21:02:36');
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
INSERT INTO `users` VALUES (1,'plagu33','mmerino@cronstudio.com','$2y$10$Dh/aPywQEXiB282K/GVpQ.P7wZU6rG18x8i4ul1y4EQdt88/UhEmW','default.jpg','2017-07-10 16:08:13',NULL,0,0,0);
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

-- Dump completed on 2017-07-10 14:53:02
