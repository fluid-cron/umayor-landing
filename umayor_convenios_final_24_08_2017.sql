-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

/*CREATE DATABASE `umayor_convenios`;*/ /*!40100 DEFAULT CHARACTER SET latin1 */
USE `umayor_convenios`;

CREATE TABLE `areas` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_area` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `areas` (`id_area`, `nombre_area`, `estado`, `fecha`) VALUES
(1,	'Ingeniería ',	1,	'2017-07-11 19:42:18'),
(2,	'Construcción Civil',	1,	'2017-07-11 19:42:18'),
(3,	'Negocios',	1,	'2017-07-11 19:42:18'),
(4,	'Psicología',	1,	'2017-07-11 19:42:18'),
(5,	'Derecho',	1,	'2017-07-11 19:42:18'),
(6,	'Contabilidad',	1,	'2017-07-11 19:42:18'),
(7,	'Prevención de Riesgos',	1,	'2017-07-11 19:42:18'),
(8,	'Logística',	1,	'2017-07-11 19:42:18'),
(9,	'Desarrollo de Personas y Organizaciones',	1,	'2017-07-11 19:42:18'),
(10,	'Educación',	1,	'2017-07-11 19:42:18'),
(11,	'Gestión de Negocios y Certificaciones',	1,	'2017-07-11 19:42:18'),
(12,	'Industrias y Recursos Naturales',	1,	'2017-07-11 19:42:18'),
(13,	'Salud y Simulación Pública',	1,	'2017-07-11 19:42:18'),
(14,	'Tecnologías de Información',	1,	'2017-07-11 19:42:18'),
(15,	'Animación Digital',	1,	'2017-07-11 19:42:18'),
(16,	'Agronomía',	1,	'2017-07-11 19:42:18'),
(17,	'Enfermería',	1,	'2017-07-11 19:42:18'),
(18,	'Forestal',	1,	'2017-07-11 19:42:18'),
(19,	'Kinesiología',	1,	'2017-07-11 19:42:18'),
(20,	'Medicina',	1,	'2017-07-11 19:42:18'),
(21,	'Nutrición y Dietética',	1,	'2017-07-11 19:42:18'),
(22,	'Obstetricia',	1,	'2017-07-11 19:42:18'),
(23,	'Odontología',	1,	'2017-07-11 19:42:18'),
(24,	'OFECS',	1,	'2017-07-11 19:42:18'),
(25,	'Salud Pública',	1,	'2017-07-11 19:42:18'),
(26,	'Simulación Clínica',	1,	'2017-07-11 19:42:18'),
(27,	'Tecnología Médica',	1,	'2017-07-11 19:42:18'),
(28,	'Terapia Ocupacional',	1,	'2017-07-11 19:42:18'),
(29,	'Veterinaria',	1,	'2017-07-11 19:42:18'),
(30,	'Arquitectura',	1,	'2017-07-11 19:42:18'),
(31,	'Comunicaciones',	1,	'2017-07-11 19:42:18'),
(32,	'Gobierno y Cs. Sociales',	1,	'2017-07-11 19:42:18'),
(33,	'Cursos de Idioma',	1,	'2017-07-11 19:42:18');

CREATE TABLE `carreras_cursos_programas` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `carreras_cursos_programas` (`id_carrera`, `nombre_carrera`, `estado`, `fecha`) VALUES
(1,	'Ingeniería Industrial',	1,	'2017-07-11 20:59:38'),
(2,	'Ingeniería Informática',	1,	'2017-07-11 20:59:38'),
(3,	'Ingeniería Electrónica',	1,	'2017-07-11 20:59:38'),
(4,	'Ingeniería Civil Industrial',	1,	'2017-07-11 20:59:38'),
(5,	'Ingeniería Civil Electrónica Y Telecomunicaciones',	1,	'2017-07-11 20:59:38'),
(6,	'Ingeniería Civil En Informática',	1,	'2017-07-11 20:59:38'),
(7,	'Ingeniería En Prevención De Riesgos',	1,	'2017-07-11 20:59:38'),
(8,	'Ingeniería En Logística',	1,	'2017-07-11 20:59:38'),
(9,	'Construcción Civil',	1,	'2017-07-11 20:59:38'),
(10,	'Ingeniería Comercial',	1,	'2017-07-11 20:59:38'),
(11,	'Ingeniería En Administración',	1,	'2017-07-11 20:59:38'),
(12,	'Contador Público Y Auditor',	1,	'2017-07-11 20:59:38'),
(13,	'Administración Pública',	1,	'2017-07-11 20:59:38'),
(14,	'Sociología',	1,	'2017-07-11 20:59:38'),
(15,	'Derecho',	1,	'2017-07-11 20:59:38'),
(16,	'Psicología',	1,	'2017-07-11 20:59:38'),
(17,	'Aprender A Trabajar En Equipo',	1,	'2017-07-11 20:59:38'),
(18,	'Asistente Administrativo Con Mencion En Ventas',	1,	'2017-07-11 20:59:38'),
(19,	'Atención Al Usuario',	1,	'2017-07-11 20:59:38'),
(20,	'Atención De Público Y Manejo De Conflictos',	1,	'2017-07-11 20:59:38'),
(21,	'Calidad De Servicio Al Cliente',	1,	'2017-07-11 20:59:38'),
(22,	'Clima Laboral Y Gestión De Personas',	1,	'2017-07-11 20:59:38'),
(23,	'Comunicación Efectiva',	1,	'2017-07-11 20:59:38'),
(24,	'Comunicación Y Trabajo En Equipo',	1,	'2017-07-11 20:59:38'),
(25,	'Control Del Estrés Laboral',	1,	'2017-07-11 20:59:38'),
(26,	'Desarrollo De Capacidades De Trabajo En Equipo',	1,	'2017-07-11 20:59:38'),
(27,	'Desarrollo De Habilidades Directivas',	1,	'2017-07-11 20:59:38'),
(28,	'Desarrollo Habilidades De Liderazgo',	1,	'2017-07-11 20:59:38'),
(29,	'Desarrollo Habilidades Estrategias',	1,	'2017-07-11 20:59:38'),
(30,	'Diplomado Derecho Administrativo',	1,	'2017-07-11 20:59:38'),
(31,	'Dirección Equipos Alto Desempeño Enfoque Rrhh',	1,	'2017-07-11 20:59:38'),
(32,	'Diplomado En Gestión De Recursos Humanos',	1,	'2017-07-11 20:59:38'),
(33,	'Estatuto Administrativo De La Gestión Pública',	1,	'2017-07-11 20:59:38'),
(34,	'Estatuto Administrativo',	1,	'2017-07-11 20:59:38'),
(35,	'Estatuto Administrativo Y Normativa Asociada',	1,	'2017-07-11 20:59:38'),
(36,	'Ética, Probidad Y Transparencia',	1,	'2017-07-11 20:59:38'),
(37,	'Evaluación De Desempeño',	1,	'2017-07-11 20:59:38'),
(38,	'Experto En Prevención De Riesgos - Industria Extractiva Minera',	1,	'2017-07-11 20:59:38'),
(39,	'Gestión Del Conocimiento',	1,	'2017-07-11 20:59:38'),
(40,	'Gestionar Equipo De  Trabajo De La Unidad (Gcm)',	1,	'2017-07-11 20:59:38'),
(41,	'Habilidades Directivas',	1,	'2017-07-11 20:59:38'),
(42,	'Liderazgo Situacional',	1,	'2017-07-11 20:59:38'),
(43,	'Liderazgo Valórico',	1,	'2017-07-11 20:59:38'),
(44,	'Liderazgo Y Planeamiento Estratégico',	1,	'2017-07-11 20:59:38'),
(45,	'Manejo De Conflicto',	1,	'2017-07-11 20:59:38'),
(46,	'Manejo Del Estrés A Través De La Expresión Corporal',	1,	'2017-07-11 20:59:38'),
(47,	'Mejoramiento Clima Laboral',	1,	'2017-07-11 20:59:38'),
(48,	'Menejo De Estrés',	1,	'2017-07-11 20:59:38'),
(49,	'Outdoor Trabajo En Equipo',	1,	'2017-07-11 20:59:38'),
(50,	'Proactividad E Iniciativa',	1,	'2017-07-11 20:59:38'),
(51,	'Probidad Y Transparencia En El Sector Público',	1,	'2017-07-11 20:59:38'),
(52,	'Redacción Ejecutiva Eficiente Y Asertiva',	1,	'2017-07-11 20:59:38'),
(53,	'Resolución De Conflictos',	1,	'2017-07-11 20:59:38'),
(54,	'Taller De Atención A Público',	1,	'2017-07-11 20:59:38'),
(55,	'Taller De Desarrollo Personal',	1,	'2017-07-11 20:59:38'),
(56,	'Téc. Servicio Satisfacción Clientes Mod Cc',	1,	'2017-07-11 20:59:38'),
(57,	'Tecnicas De Comunicación Efectiva',	1,	'2017-07-11 20:59:38'),
(58,	'Técnicas De Trabajo En Equipo',	1,	'2017-07-11 20:59:38'),
(59,	'Tecnicas Para La Satisfaccion De Clientes ',	1,	'2017-07-11 20:59:38'),
(60,	'Curso Normativa Pública',	1,	'2017-07-11 20:59:38'),
(61,	'Enfoque De Género Y Equidad',	1,	'2017-07-11 20:59:38'),
(62,	'Gestión De Emergencias Y Desastres',	1,	'2017-07-11 20:59:38'),
(63,	'Intervención En Crisis Y Primer Apoyo Psicológico',	1,	'2017-07-11 20:59:38'),
(64,	'Metodologías Para La Participación Ciudadana',	1,	'2017-07-11 20:59:38'),
(65,	'Incorporación Del Enfoque De Género En Las Políticas Públicas',	1,	'2017-07-11 20:59:38'),
(66,	'Enfoque De Género Y Políticas Públicas Para Regiones',	1,	'2017-07-11 20:59:38'),
(67,	'Capacitacion Previsional En El Sistema De Afp',	1,	'2017-07-11 20:59:38'),
(68,	'Evaluación Y Planificacion Curricular',	1,	'2017-07-11 20:59:38'),
(69,	'Gestión De Procesos Educativos',	1,	'2017-07-11 20:59:38'),
(70,	'Fortalecimiento De Competencias Y Prácticas Directivas De Excelencia',	1,	'2017-07-11 20:59:38'),
(71,	'Efectividad En La Docencia Clinica',	1,	'2017-07-11 20:59:38'),
(72,	'Estrategias Docentes Con Foco En El Aprendizaje Por Competencias',	1,	'2017-07-11 20:59:38'),
(73,	'Administración De Bodega',	1,	'2017-07-11 20:59:38'),
(74,	'Administración Del Tiempo',	1,	'2017-07-11 20:59:38'),
(75,	'Conceptos De La Norma Iso 9001-2008',	1,	'2017-07-11 20:59:38'),
(76,	'Criterios Evaluación Compras Públicas',	1,	'2017-07-11 20:59:38'),
(77,	'Curso Gestión De Proyectos',	1,	'2017-07-11 20:59:38'),
(78,	'Curso Intensivo Compras Y Contratación Publica',	1,	'2017-07-11 20:59:38'),
(79,	'Encargados De Licitaciones Compras',	1,	'2017-07-11 20:59:38'),
(80,	'Formulación De Planes De Negocio',	1,	'2017-07-11 20:59:38'),
(81,	'Formulación De Proyectos Sociales',	1,	'2017-07-11 20:59:38'),
(82,	'Gestión De Negocios',	1,	'2017-07-11 20:59:38'),
(83,	'Gestión De Procesos',	1,	'2017-07-11 20:59:38'),
(84,	'Gestión Por Competencias Laborales',	1,	'2017-07-11 20:59:38'),
(85,	'Gestión Pública',	1,	'2017-07-11 20:59:38'),
(86,	'Gestion Y Comercialización Para Microempresa',	1,	'2017-07-11 20:59:38'),
(87,	'Higiene Y Manipulación De Alimentos',	1,	'2017-07-11 20:59:38'),
(88,	'Interpretacion Y Analisis De La Norma Iso 9001-2008',	1,	'2017-07-11 20:59:38'),
(89,	'Malla Básica En Gestión De Abastecimiento',	1,	'2017-07-11 20:59:38'),
(90,	'Manejo De Caja',	1,	'2017-07-11 20:59:38'),
(91,	'Negociación: El Arte De Los Acuerdos',	1,	'2017-07-11 20:59:38'),
(92,	'Normas Internacionales De Contabilidad',	1,	'2017-07-11 20:59:38'),
(93,	'Normas Internacionales De Información Financiera (Ifrs)',	1,	'2017-07-11 20:59:38'),
(94,	'Optimización De Procesos',	1,	'2017-07-11 20:59:38'),
(95,	'Planes De Negocio',	1,	'2017-07-11 20:59:38'),
(96,	'Planificación Estratégica',	1,	'2017-07-11 20:59:38'),
(97,	'Planificación Y Control De Gestión',	1,	'2017-07-11 20:59:38'),
(98,	'Planificación, Seguimiento Y Control De Proyectos',	1,	'2017-07-11 20:59:38'),
(99,	'Plataforma Mercado Público Para Compradores',	1,	'2017-07-11 20:59:38'),
(100,	'Taller Aplicado De Indicadores De Gestión',	1,	'2017-07-11 20:59:38'),
(101,	'Técnicas De Negociación Aplicadas',	1,	'2017-07-11 20:59:38'),
(102,	'Balance Scorecard Y Control De Gestión',	1,	'2017-07-11 20:59:38'),
(103,	'Gestión Presupuestaria, Contabilidad Gubernamental Y Nic En El Sector Público',	1,	'2017-07-11 20:59:38'),
(104,	'Diseño Y Formulación De Proyectos',	1,	'2017-07-11 20:59:38'),
(105,	'Gestión De Compras Públicas',	1,	'2017-07-11 20:59:38'),
(106,	'Contabilidad Gubernamental (Con Aplicación De Nics) Y Gestión Presupuestaria En El Sector Público',	1,	'2017-07-11 20:59:38'),
(107,	'Gestión Por Procesos',	1,	'2017-07-11 20:59:38'),
(108,	'Implemetación De Gestión Por Procesos',	1,	'2017-07-11 20:59:38'),
(109,	'Manejo De Grúa Horquilla',	1,	'2017-07-11 20:59:38'),
(110,	'Manipulación De Alimentos',	1,	'2017-07-11 20:59:38'),
(111,	'Eficiencia Energética Y Sustentabilidad En Edificaciones',	1,	'2017-07-11 20:59:38'),
(112,	'Introducción En Arcgis',	1,	'2017-07-11 20:59:38'),
(113,	'Georreferenciación: Sig En Salud',	1,	'2017-07-11 20:59:38'),
(114,	'Calidad Y Seguridad Del Paciente',	1,	'2017-07-11 20:59:38'),
(115,	'Curso Salud Y Cuidado Familiar',	1,	'2017-07-11 20:59:38'),
(116,	'Deberes Y Derechos De Los Paciente',	1,	'2017-07-11 20:59:38'),
(117,	'Introducción A La Gestión Local En La Atención Primaria',	1,	'2017-07-11 20:59:38'),
(118,	'Primeros Auxilios Y Reanimación Cardiopulmonar',	1,	'2017-07-11 20:59:22'),
(119,	'Reanimacion Cardiopulmonar (Rcp)',	1,	'2017-07-11 20:59:38'),
(120,	'Instrumentos De Abordaje Familiar Para La Implementación Del Modelo De Atención Integral En Salud',	1,	'2017-07-11 20:59:38'),
(121,	'Excel 2007 Avanzado',	1,	'2017-07-11 20:59:38'),
(122,	'Excel 2007 Intermedio',	1,	'2017-07-11 20:59:38'),
(123,	'Excel 2010 Avanzado',	1,	'2017-07-11 20:59:38'),
(124,	'Excel 2010 Básico',	1,	'2017-07-11 20:59:38'),
(125,	'Word 2007 Básico',	1,	'2017-07-11 20:59:38'),
(126,	'Word 2007 Avanzado',	1,	'2017-07-11 20:59:38'),
(127,	'Word 2007 Intermedio',	1,	'2017-07-11 20:59:38'),
(128,	'Word 2010 Básico',	1,	'2017-07-11 20:59:38'),
(129,	'Word 2010 Intermedio',	1,	'2017-07-11 20:59:38'),
(130,	'Powerpoint 2010 Básico',	1,	'2017-07-11 20:59:38'),
(131,	'Powerpoint 2010 Avanzado',	1,	'2017-07-11 20:59:38'),
(132,	'Powerpoint 2010 Intermedio',	1,	'2017-07-11 20:59:38'),
(133,	'Adobe Photoshop Cs6 Básico',	1,	'2017-07-11 20:59:38'),
(134,	'Adobe Photoshop Cs6 Avanzado',	1,	'2017-07-11 20:59:38'),
(135,	'Adobe Photoshop Cs6 Intermedio',	1,	'2017-07-11 20:59:38'),
(136,	'Técnicas De Aplicación De Planillas Electrónica Excel Avanzado',	1,	'2017-07-11 20:59:38'),
(137,	'Técnicas Aplicadas De Office',	1,	'2017-07-11 20:59:38'),
(138,	'Autocad Básico 2010',	1,	'2017-07-11 20:59:38'),
(139,	'Base De Datos Y Nuevos Recursos Electrónicos De Información',	1,	'2017-07-11 20:59:38'),
(140,	'Base De Datos Access',	1,	'2017-07-11 20:59:38'),
(141,	'Gestión De Datos Con El Uso De Planillas De Cálculo',	1,	'2017-07-11 20:59:38'),
(142,	'Excel Intermedio Online',	1,	'2017-07-11 20:59:38'),
(143,	'Postitulo En Animación Digital (Santiago) ',	1,	'2017-07-11 20:59:38'),
(144,	'Diplomado En Sistemas De Riego Tecnificado (Santiago)',	1,	'2017-07-11 20:59:38'),
(145,	'Magíster En Gestión De Negocios Inmobiliarios (Temuco)',	1,	'2017-07-11 20:59:38'),
(146,	'Diplomado En Gestión Clínica Y Calidad Hospitalaria (Santiago)',	1,	'2017-07-11 20:59:38'),
(147,	'Diplomado En Calidad Y Seguridad De Pacientes En La Gestión Clínica (Santiago)',	1,	'2017-07-11 20:59:38'),
(148,	'Diplomado En Desarrollo Sustentable En La Empresa (Santiago)',	1,	'2017-07-11 20:59:38'),
(149,	'Magíster En Teledetección (Santiago)',	1,	'2017-07-11 20:59:38'),
(150,	'Magíster En Consultoría Funcional En SAP (Santiago)',	1,	'2017-07-11 20:59:38'),
(151,	'Diplomado En Ergonomía Y Salud Laboral (Santiago)',	1,	'2017-07-11 20:59:38'),
(152,	'Diplomado En Fisiología Del Ejercicio (Santiago)',	1,	'2017-07-11 20:59:38'),
(153,	'Diplomado En Kinesiología Del Deporte (Santiago)',	1,	'2017-07-11 20:59:38'),
(154,	'Diplomado En Kinesiología Maxilofacial (Santiago)',	1,	'2017-07-11 20:59:38'),
(155,	'Diplomado En Neurokinesiología Pediátrica (Santiago)',	1,	'2017-07-11 20:59:38'),
(156,	'Diplomado En Kinesiología En Columna Vertebral (Santiago)',	1,	'2017-07-11 20:59:38'),
(157,	'Magíster En Medicina Y Ciencias Del Deporte (Santiago)',	1,	'2017-07-11 20:59:38'),
(158,	'Magíster En Fisiología Clínica Del Ejercicio (Santiago)',	1,	'2017-07-11 20:59:38'),
(159,	'Magíster En Kinesiología Gerontológica (Santiago)',	1,	'2017-07-11 20:59:38'),
(160,	'Ediplomado En Fisiología Del Ejercicio (Online)',	1,	'2017-07-11 20:59:38'),
(161,	'Especialidad Médica En Anestesiología Y Reanimación (Santiago)',	1,	'2017-07-11 20:59:38'),
(162,	'Especialidad Médica En Geriatría (Santiago)',	1,	'2017-07-11 20:59:38'),
(163,	'Especialidad Médica En Medicina Interna (Santiago)',	1,	'2017-07-11 20:59:38'),
(164,	'Especialidad Médica En Neurología (Santiago)',	1,	'2017-07-11 20:59:38'),
(165,	'Especialidad Médica En Pediatría (Santiago)',	1,	'2017-07-11 20:59:38'),
(166,	'Especialidad Médica En Psiquiatría (Santiago)',	1,	'2017-07-11 20:59:38'),
(167,	'Especialidad Médica En Urología (Santiago)',	1,	'2017-07-11 20:59:38'),
(168,	'Especialidad Médica En Medicina Del Deporte Y La Actividad Física (Santiago)',	1,	'2017-07-11 20:59:38'),
(169,	'Especialidad Médica En Radiología E Imagenología (Santiago)',	1,	'2017-07-11 20:59:38'),
(170,	'Especialidad Médica En Medicina Física Y Rehabilitación (Santiago)',	1,	'2017-07-11 20:59:38'),
(171,	'Magíster En Nutrición Para La Actividad Física Y El Deporte (Santiago)',	1,	'2017-07-11 20:59:38'),
(172,	'Magíster En Matronería En La Salud Integral De La Mujer A Través De Su Ciclo De Vida (Santiago)',	1,	'2017-07-11 20:59:38'),
(173,	'Especialización En Cirurgía Y Traumatología Bucal Y Maxilofacial (Santiago)',	1,	'2017-07-11 20:59:38'),
(174,	'Especialización En Endodoncia (Santiago)',	1,	'2017-07-11 20:59:38'),
(175,	'Especialización En Ortodoncia Y Ortopedia Dentomaxilar (Santiago)',	1,	'2017-07-11 20:59:38'),
(176,	'Especialización En Periodoncia E Implantología Oral (Santiago)',	1,	'2017-07-11 20:59:38'),
(177,	'Especialización En Rehabilitación Oral Con Mención En Prótesis Fija, Removible E Implantología (Santiago)',	1,	'2017-07-11 20:59:38'),
(178,	'Especialización En Imagenología Oral Y Maxilofacial (Santiago)',	1,	'2017-07-11 20:59:38'),
(179,	'Magíster En Educación En Ciencias De La Salud (Santiago)',	1,	'2017-07-11 20:59:38'),
(180,	'Diplomado En Docencia Clínica (Santiago)',	1,	'2017-07-11 20:59:38'),
(181,	'Magíster En Psicología Educacional (Santiago)',	1,	'2017-07-11 20:59:38'),
(182,	'Magíster En Psicología Clínica Infanto Juvenil (Santiago)',	1,	'2017-07-11 20:59:38'),
(183,	'Magíster En Psicoterapia Familiar, De Pareja E Individual. Enfoque Constructivista Interaccional (Santiago)',	1,	'2017-07-11 20:59:38'),
(184,	'Magister En Psicología De Salud (Santiago)',	1,	'2017-07-11 20:59:38'),
(185,	'Magíster En Psicología Organizacional (Santiago)',	1,	'2017-07-11 20:59:38'),
(186,	'Ediplomado En Gestión De Organizaciones Y Personas En Base Al Modelo Por Competencias (Online)',	1,	'2017-07-11 20:59:38'),
(187,	'Magíster En Psicología Jurídica E Intervención Psicosocial (Temuco) ',	1,	'2017-07-11 20:59:38'),
(188,	'Magíster En Psicología Educacional (Temuco)',	1,	'2017-07-11 20:59:38'),
(189,	'Magíster En Salud Pública Y Planificación Sanitaria (Santiago)',	1,	'2017-07-11 20:59:38'),
(190,	'Diplomado En Salud Pública (Santiago)',	1,	'2017-07-11 20:59:38'),
(191,	'Ediplomado En Atención Integral Del Ataque Cerebrovascular (Online)',	1,	'2017-07-11 20:59:38'),
(192,	'Magíster En Salud Pública Y Planificación Sanitaria - Blended (Semi-Presencial) (Temuco)',	1,	'2017-07-11 20:59:38'),
(193,	'Diplomado En Salud Pública - Blended (Semi-Presencial) (Temuco)',	1,	'2017-07-11 20:59:38'),
(194,	'Diplomado En Simulación Clínica - Blended (Semi-Presencial) (Santiago)',	1,	'2017-07-11 20:59:38'),
(195,	'Diplomado En Tomografía Computada Multicorte: Actualizaciones En Procesamiento Digital De Imágenes Y Dosimetría (Santiago)',	1,	'2017-07-11 20:59:38'),
(196,	'Diplomado En Imagen Por Resonancia Magnética (Santiago)',	1,	'2017-07-11 20:59:38'),
(197,	'Diplomado En Danza Movimiento Terapia (Santiago)',	1,	'2017-07-11 20:59:38'),
(198,	'Magister En Etología Y Bienestar Animal (Santiago)',	1,	'2017-07-11 20:59:38'),
(199,	'Diplomado En Evaluación De Impacto Ambiental (Temuco)',	1,	'2017-07-11 20:59:38'),
(200,	'Diplomado En Medicina Felina (Temuco)',	1,	'2017-07-11 20:59:38'),
(201,	'Diplomado En Arquitectura De Eficiencia Energética (Santiago)',	1,	'2017-07-11 20:59:38'),
(202,	'Diplomado En Gestión De Proyectos Inmobiliarios (Santiago)',	1,	'2017-07-11 20:59:38'),
(203,	'Diplomado En Marketing Digital (Santiago)',	1,	'2017-07-11 20:59:38'),
(204,	'Magíster En Derecho Público (Santiago)',	1,	'2017-07-11 20:59:38'),
(205,	'Magíster En Derecho De Los Negocios Y La Empresa (Santiago)',	1,	'2017-07-11 20:59:38'),
(206,	'Magíster En Derecho Público (Temuco)',	1,	'2017-07-11 20:59:38'),
(207,	'Magister En Derecho Penal Y Proceso Penal (Temuco)',	1,	'2017-07-11 20:59:38'),
(208,	'Magíster En Derecho De La Empresa (Temuco)',	1,	'2017-07-11 20:59:38'),
(209,	'Diplomado En Derecho Administrativo (Temuco)',	1,	'2017-07-11 20:59:38'),
(210,	'Diplomado En Derecho Penal Especial (Temuco)',	1,	'2017-07-11 20:59:38'),
(211,	'Diplomado En Derecho Del Trabajo (Temuco)',	1,	'2017-07-11 20:59:38'),
(212,	'Magíster En Docencia En Educación Superior (Santiago)',	1,	'2017-07-11 20:59:38'),
(213,	'Magíster En Coaching Y Liderazgo Deportivo (Santiago)',	1,	'2017-07-11 20:59:38'),
(214,	'Magíster En Ciencias De La Educación (Mención Currículum Y Evaluación)  (Santiago)                                                                    ',	1,	'2017-07-11 20:59:38'),
(215,	'Magíster En Educación Diferencial (Mención Trastornos De La Comunicación, Audición Y Lenguaje) (Santiago)',	1,	'2017-07-11 20:59:38'),
(216,	'Magíster En Gestión Directiva De Excelencia  (Santiago)',	1,	'2017-07-11 20:59:38'),
(217,	'Magíster En Neurociencias De La Educación (Santiago)',	1,	'2017-07-11 20:59:38'),
(218,	'Diplomado En Gestión En La Educación Superior (Santiago)',	1,	'2017-07-11 20:59:38'),
(219,	'Diplomado En Elaboración De Instrumentos Para La Evaluación De Los Aprendizajes (Santiago)',	1,	'2017-07-11 20:59:38'),
(220,	'Magíster En Gestión De La Convivencia Escolar (Santiago)',	1,	'2017-07-11 20:59:38'),
(221,	'Magíster En Actividad Física Y Salud (Temuco)',	1,	'2017-07-11 20:59:38'),
(222,	'Magíster En Docencia En Educación Superior (Temuco)',	1,	'2017-07-11 20:59:38'),
(223,	'Diplomado En Didáctica De La Matemática Para La Educación Básica (Temuco)',	1,	'2017-07-11 20:59:38'),
(224,	'Diplomado En Didáctica Del Inglés Para La Educación Básica (Temuco)',	1,	'2017-07-11 20:59:38'),
(225,	'Diplomado En Inclusión Psicoeducativa En Transtornos Del Espectro Autista (Temuco)',	1,	'2017-07-11 20:59:38'),
(226,	'Diplomado En Pedagogía Del Humor En Primer Ciclo Básico (Temuco)',	1,	'2017-07-11 20:59:38'),
(227,	'Magíster En Gestión De La Convivencia Escolar (Temuco) ',	1,	'2017-07-11 20:59:38'),
(228,	'Magíster En Inclusión Social Y Laboral De Personas Con Discapacidad (Temuco) ',	1,	'2017-07-11 20:59:38'),
(229,	'Magíster En Ciencias De La Educación (Mención Currículum Y Evaluación)  (Temuco)                                                                     ',	1,	'2017-07-11 20:59:38'),
(230,	'Magíster En Diseño Universal De Aprendizajes (Temuco) ',	1,	'2017-07-11 20:59:38'),
(231,	'Magíster En Gestión Directiva De Excelencia  (Temuco) ',	1,	'2017-07-11 20:59:38'),
(232,	'Magíster En Neurociencias De La Educación (Temuco)',	1,	'2017-07-11 20:59:38'),
(233,	'Magíster En Análisis De Inteligencia Comunicacional (Santiago)',	1,	'2017-07-11 20:59:38'),
(234,	'Magíster En Ciencia Política Y Pensamiento Contemporáneo (Santiago)',	1,	'2017-07-11 20:59:38'),
(235,	'Magíster En Espiritualidad Y Estudio De Las Religiones (Santiago)',	1,	'2017-07-11 20:59:38'),
(236,	'Magíster En Sociología Y Antropología Social (Santiago)',	1,	'2017-07-11 20:59:38'),
(237,	'Magíster En Alta Dirección Pública (Santiago)',	1,	'2017-07-11 20:59:38'),
(238,	'Magíster En Dirección De Empresas (MBA Executive) (Santiago)',	1,	'2017-07-11 20:59:38'),
(239,	'Magíster En Planificación Y Dirección Tributaria (Santiago)',	1,	'2017-07-11 20:59:38'),
(240,	'Magíster En Dirección De Instituciones De Salud (Santiago)',	1,	'2017-07-11 20:59:38'),
(241,	'Magíster En Dirección De Capital Humano (Santiago)',	1,	'2017-07-11 20:59:38'),
(242,	'Magíster En Dirección Y Análisis Financiero (Santiago)',	1,	'2017-07-11 20:59:38'),
(243,	'Magíster En Planificación Y Control De Gestión (Santiago)',	1,	'2017-07-11 20:59:38'),
(244,	'Magíster En Dirección De Operaciones Y Logística (Santiago)',	1,	'2017-07-11 20:59:38'),
(245,	'Magíster En Evaluación Y Dirección De Proyectos (Santiago)',	1,	'2017-07-11 20:59:38'),
(246,	'Magíster En Inteligencia De Negocios Y Mercados (Santiago)',	1,	'2017-07-11 20:59:38'),
(247,	'Diplomado En Planificación Tributaria Empresarial (Santiago)',	1,	'2017-07-11 20:59:38'),
(248,	'Diplomado En Gestión De Marketing Integral (Santiago)',	1,	'2017-07-11 20:59:38'),
(249,	'Diplomado En Planificación Y Gestión Estratégica (Santiago)',	1,	'2017-07-11 20:59:38'),
(250,	'Diplomado En Marketing Relacional Y Fidelización (Santiago)',	1,	'2017-07-11 20:59:38'),
(251,	'Diplomado En Análisis Y Gestión Financiera (Santiago)',	1,	'2017-07-11 20:59:38'),
(252,	'Diplomado En Gestión Logística Integral (Santiago)',	1,	'2017-07-11 20:59:38'),
(253,	'Diplomado En Gestión Y Desarrollo De Negocio (Santiago)',	1,	'2017-07-11 20:59:38'),
(254,	'Diplomado En Gestión De Inteligencia De Negocios (Santiago)',	1,	'2017-07-11 20:59:38'),
(255,	'Diplomado En Normas Internacionales Contables (Santiago)',	1,	'2017-07-11 20:59:38'),
(256,	'Diplomado En Reforma Tributaria Ley Nº20.780 (Santiago)',	1,	'2017-07-11 20:59:38'),
(257,	'Ediplomado En Control De Gestión Gerencial (Online)',	1,	'2017-07-11 20:59:38'),
(258,	'Ediplomado En Evaluación Y Gestión De Proyectos (Online)',	1,	'2017-07-11 20:59:38'),
(259,	'Magíster En Dirección De Empresas (MBA Executive) (Temuco)',	1,	'2017-07-11 20:59:38'),
(260,	'Ingles',	1,	'2017-07-11 20:59:38'),
(261,	'Chino Mandarín',	1,	'2017-07-11 20:59:38'),
(262,	'Portugués (Bra)',	1,	'2017-07-11 20:59:38'),
(263,	'Ruso',	1,	'2017-07-11 20:59:38'),
(264,	'Exámenes Internacionales',	1,	'2017-07-11 20:59:38'),
(265,	'(Red De Emergencia)',	1,	'2017-07-11 20:59:38');

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `ingresos` (`id`, `nombre`, `estado`, `fecha`) VALUES
(1,	'Regular',	1,	'2017-08-23 19:40:42'),
(2,	'Continuidad de Estudios',	1,	'2017-08-23 19:40:41'),
(3,	'Convalidación',	1,	'2017-08-23 19:40:39');

CREATE TABLE `opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_unidad` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `estado` int(11) DEFAULT '1',
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `opciones` (`id`, `id_unidad`, `id_area`, `id_carrera`, `estado`, `fecha`) VALUES
(1,	1,	1,	1,	1,	'2017-07-18 20:48:16'),
(2,	1,	1,	2,	1,	'2017-07-18 20:38:41'),
(3,	1,	1,	3,	1,	'2017-07-18 20:38:41'),
(4,	1,	1,	4,	1,	'2017-07-18 20:38:41'),
(5,	1,	1,	5,	1,	'2017-07-18 20:38:41'),
(6,	1,	1,	6,	1,	'2017-07-18 20:38:41'),
(7,	1,	1,	7,	1,	'2017-07-18 20:38:41'),
(8,	1,	1,	8,	1,	'2017-07-18 20:38:41'),
(9,	1,	2,	9,	1,	'2017-07-18 20:38:41'),
(10,	1,	3,	10,	1,	'2017-07-18 20:38:41'),
(11,	1,	3,	11,	1,	'2017-07-18 20:38:41'),
(12,	1,	3,	12,	1,	'2017-07-18 20:38:41'),
(13,	1,	32,	13,	1,	'2017-07-18 20:38:41'),
(14,	1,	32,	14,	1,	'2017-07-18 20:38:41'),
(15,	1,	32,	15,	1,	'2017-07-18 20:38:41'),
(16,	1,	4,	16,	1,	'2017-07-18 20:38:41'),
(17,	1,	4,	15,	1,	'2017-07-18 20:38:41'),
(18,	1,	6,	12,	1,	'2017-07-18 20:38:41'),
(19,	1,	7,	7,	1,	'2017-07-18 20:38:41'),
(20,	1,	8,	8,	1,	'2017-07-18 20:38:41'),
(21,	2,	9,	17,	1,	'2017-07-18 20:38:41'),
(22,	2,	9,	18,	1,	'2017-07-18 20:38:41'),
(23,	2,	9,	9,	1,	'2017-07-18 20:38:41'),
(24,	2,	9,	20,	1,	'2017-07-18 20:38:41'),
(25,	2,	9,	21,	1,	'2017-07-18 20:38:41'),
(26,	2,	9,	22,	1,	'2017-07-18 20:38:41'),
(27,	2,	9,	23,	1,	'2017-07-18 20:38:41'),
(28,	2,	9,	24,	1,	'2017-07-18 20:38:41'),
(29,	2,	9,	25,	1,	'2017-07-18 20:38:41'),
(30,	2,	9,	26,	1,	'2017-07-18 20:38:41'),
(31,	2,	9,	27,	1,	'2017-07-18 20:38:41'),
(32,	2,	9,	28,	1,	'2017-07-18 20:38:41'),
(33,	2,	9,	29,	1,	'2017-07-18 20:38:41'),
(34,	2,	9,	30,	1,	'2017-07-18 20:38:41'),
(35,	2,	9,	31,	1,	'2017-07-18 20:38:41'),
(36,	2,	9,	32,	1,	'2017-07-18 20:38:41'),
(37,	2,	9,	33,	1,	'2017-07-18 20:38:41'),
(38,	2,	9,	34,	1,	'2017-07-18 20:38:41'),
(39,	2,	9,	35,	1,	'2017-07-18 20:38:41'),
(40,	2,	9,	36,	1,	'2017-07-18 20:38:41'),
(41,	2,	9,	37,	1,	'2017-07-18 20:38:41'),
(42,	2,	9,	38,	1,	'2017-07-18 20:38:41'),
(43,	2,	9,	39,	1,	'2017-07-18 20:38:41'),
(44,	2,	9,	40,	1,	'2017-07-18 20:38:41'),
(45,	2,	9,	41,	1,	'2017-07-18 20:38:41'),
(46,	2,	9,	42,	1,	'2017-07-18 20:38:41'),
(47,	2,	9,	43,	1,	'2017-07-18 20:38:41'),
(48,	2,	9,	44,	1,	'2017-07-18 20:38:41'),
(49,	2,	9,	45,	1,	'2017-07-18 20:38:41'),
(50,	2,	9,	46,	1,	'2017-07-18 20:38:41'),
(51,	2,	9,	47,	1,	'2017-07-18 20:38:41'),
(52,	2,	9,	48,	1,	'2017-07-18 20:38:41'),
(53,	2,	9,	49,	1,	'2017-07-18 20:38:41'),
(54,	2,	9,	50,	1,	'2017-07-18 20:38:41'),
(55,	2,	9,	51,	1,	'2017-07-18 20:38:41'),
(56,	2,	9,	52,	1,	'2017-07-18 20:38:41'),
(57,	2,	9,	53,	1,	'2017-07-18 20:38:41'),
(58,	2,	9,	54,	1,	'2017-07-18 20:38:41'),
(59,	2,	9,	55,	1,	'2017-07-18 20:38:41'),
(60,	2,	9,	56,	1,	'2017-07-18 20:38:41'),
(61,	2,	9,	57,	1,	'2017-07-18 20:38:41'),
(62,	2,	9,	58,	1,	'2017-07-18 20:38:41'),
(63,	2,	9,	59,	1,	'2017-07-18 20:38:41'),
(64,	2,	9,	60,	1,	'2017-07-18 20:38:41'),
(65,	2,	9,	61,	1,	'2017-07-18 20:38:41'),
(66,	2,	9,	62,	1,	'2017-07-18 20:38:41'),
(67,	2,	9,	0,	1,	'2017-07-18 20:38:41'),
(68,	2,	9,	0,	1,	'2017-07-18 20:38:41'),
(69,	2,	9,	63,	1,	'2017-07-18 20:38:41'),
(70,	2,	9,	64,	1,	'2017-07-18 20:38:41'),
(71,	2,	9,	65,	1,	'2017-07-18 20:38:41'),
(72,	2,	9,	66,	1,	'2017-07-18 20:38:41'),
(73,	2,	9,	67,	1,	'2017-07-18 20:38:41'),
(74,	2,	9,	60,	1,	'2017-07-18 20:38:41'),
(75,	2,	10,	68,	1,	'2017-07-18 20:38:41'),
(76,	2,	10,	69,	1,	'2017-07-18 20:38:41'),
(77,	2,	10,	70,	1,	'2017-07-18 20:38:41'),
(78,	2,	10,	71,	1,	'2017-07-18 20:38:41'),
(79,	2,	10,	72,	1,	'2017-07-18 20:38:41'),
(80,	2,	11,	73,	1,	'2017-07-18 20:38:41'),
(81,	2,	11,	74,	1,	'2017-07-18 20:38:41'),
(82,	2,	11,	75,	1,	'2017-07-18 20:38:41'),
(83,	2,	11,	76,	1,	'2017-07-18 20:38:41'),
(84,	2,	11,	77,	1,	'2017-07-18 20:38:41'),
(85,	2,	11,	78,	1,	'2017-07-18 20:38:41'),
(86,	2,	11,	79,	1,	'2017-07-18 20:38:41'),
(87,	2,	11,	80,	1,	'2017-07-18 20:38:41'),
(88,	2,	11,	81,	1,	'2017-07-18 20:38:41'),
(89,	2,	11,	82,	1,	'2017-07-18 20:38:41'),
(90,	2,	11,	83,	1,	'2017-07-18 20:38:41'),
(91,	2,	11,	84,	1,	'2017-07-18 20:38:41'),
(92,	2,	11,	85,	1,	'2017-07-18 20:38:41'),
(93,	2,	11,	86,	1,	'2017-07-18 20:38:41'),
(94,	2,	11,	87,	1,	'2017-07-18 20:38:41'),
(95,	2,	11,	88,	1,	'2017-07-18 20:38:41'),
(96,	2,	11,	89,	1,	'2017-07-18 20:38:41'),
(97,	2,	11,	90,	1,	'2017-07-18 20:38:41'),
(98,	2,	11,	91,	1,	'2017-07-18 20:38:41'),
(99,	2,	11,	92,	1,	'2017-07-18 20:38:41'),
(100,	2,	11,	93,	1,	'2017-07-18 20:38:41'),
(101,	2,	11,	94,	1,	'2017-07-18 20:38:41'),
(102,	2,	11,	95,	1,	'2017-07-18 20:38:41'),
(103,	2,	11,	96,	1,	'2017-07-18 20:38:41'),
(104,	2,	11,	97,	1,	'2017-07-18 20:38:41'),
(105,	2,	11,	98,	1,	'2017-07-18 20:38:41'),
(106,	2,	11,	99,	1,	'2017-07-18 20:38:41'),
(107,	2,	11,	100,	1,	'2017-07-18 20:38:41'),
(108,	2,	11,	101,	1,	'2017-07-18 20:38:41'),
(109,	2,	11,	102,	1,	'2017-07-18 20:38:41'),
(110,	2,	11,	103,	1,	'2017-07-18 20:38:41'),
(111,	2,	11,	104,	1,	'2017-07-18 20:38:41'),
(112,	2,	11,	105,	1,	'2017-07-18 20:38:41'),
(113,	2,	11,	106,	1,	'2017-07-18 20:38:41'),
(114,	2,	11,	83,	1,	'2017-07-18 20:38:41'),
(115,	2,	11,	108,	1,	'2017-07-18 20:38:41'),
(116,	2,	12,	109,	1,	'2017-07-18 20:38:41'),
(117,	2,	12,	110,	1,	'2017-07-18 20:38:41'),
(118,	2,	12,	111,	1,	'2017-07-18 20:38:41'),
(119,	2,	12,	112,	1,	'2017-07-18 20:38:41'),
(120,	2,	12,	113,	1,	'2017-07-18 20:38:41'),
(121,	2,	13,	114,	1,	'2017-07-18 20:38:41'),
(122,	2,	13,	115,	1,	'2017-07-18 20:38:41'),
(123,	2,	13,	116,	1,	'2017-07-18 20:38:41'),
(124,	2,	13,	117,	1,	'2017-07-18 20:38:41'),
(125,	2,	13,	118,	1,	'2017-07-18 20:38:41'),
(126,	2,	13,	265,	1,	'2017-07-18 20:38:41'),
(127,	2,	13,	119,	1,	'2017-07-18 20:38:41'),
(128,	2,	13,	120,	1,	'2017-07-18 20:38:41'),
(129,	2,	14,	121,	1,	'2017-07-18 20:38:41'),
(130,	2,	14,	122,	1,	'2017-07-18 20:38:41'),
(131,	2,	14,	123,	1,	'2017-07-18 20:38:41'),
(132,	2,	14,	124,	1,	'2017-07-18 20:38:41'),
(133,	2,	14,	125,	1,	'2017-07-18 20:38:41'),
(134,	2,	14,	126,	1,	'2017-07-18 20:38:41'),
(135,	2,	14,	127,	1,	'2017-07-18 20:38:41'),
(136,	2,	14,	128,	1,	'2017-07-18 20:38:41'),
(137,	2,	14,	129,	1,	'2017-07-18 20:38:41'),
(138,	2,	14,	130,	1,	'2017-07-18 20:38:41'),
(139,	2,	14,	131,	1,	'2017-07-18 20:38:41'),
(140,	2,	14,	132,	1,	'2017-07-18 20:38:41'),
(141,	2,	14,	133,	1,	'2017-07-18 20:38:41'),
(142,	2,	14,	134,	1,	'2017-07-18 20:38:41'),
(143,	2,	14,	135,	1,	'2017-07-18 20:38:41'),
(144,	2,	14,	136,	1,	'2017-07-18 20:38:41'),
(145,	2,	14,	137,	1,	'2017-07-18 20:38:41'),
(146,	2,	14,	138,	1,	'2017-07-18 20:38:41'),
(147,	2,	14,	139,	1,	'2017-07-18 20:38:41'),
(148,	2,	14,	140,	1,	'2017-07-18 20:38:41'),
(149,	2,	14,	141,	1,	'2017-07-18 20:38:41'),
(150,	2,	14,	142,	1,	'2017-07-18 20:38:41'),
(151,	3,	15,	143,	1,	'2017-07-18 20:38:41'),
(152,	3,	16,	144,	1,	'2017-07-18 20:38:41'),
(153,	3,	2,	145,	1,	'2017-07-18 20:38:41'),
(154,	3,	17,	146,	1,	'2017-07-18 20:38:41'),
(155,	3,	17,	147,	1,	'2017-07-18 20:38:41'),
(156,	3,	18,	148,	1,	'2017-07-18 20:38:41'),
(157,	3,	18,	149,	1,	'2017-07-18 20:38:41'),
(158,	3,	1,	150,	1,	'2017-07-18 20:38:41'),
(159,	3,	19,	151,	1,	'2017-07-18 20:38:41'),
(160,	3,	19,	152,	1,	'2017-07-18 20:38:41'),
(161,	3,	19,	153,	1,	'2017-07-18 20:38:41'),
(162,	3,	19,	154,	1,	'2017-07-18 20:38:41'),
(163,	3,	19,	155,	1,	'2017-07-18 20:38:41'),
(164,	3,	19,	156,	1,	'2017-07-18 20:38:41'),
(165,	3,	19,	157,	1,	'2017-07-18 20:38:41'),
(166,	3,	19,	158,	1,	'2017-07-18 20:38:41'),
(167,	3,	19,	159,	1,	'2017-07-18 20:38:41'),
(168,	3,	19,	160,	1,	'2017-07-18 20:38:41'),
(169,	3,	20,	161,	1,	'2017-07-18 20:38:41'),
(170,	3,	20,	162,	1,	'2017-07-18 20:38:41'),
(171,	3,	20,	163,	1,	'2017-07-18 20:38:41'),
(172,	3,	20,	164,	1,	'2017-07-18 20:38:41'),
(173,	3,	20,	165,	1,	'2017-07-18 20:38:41'),
(174,	3,	20,	166,	1,	'2017-07-18 20:38:41'),
(175,	3,	20,	167,	1,	'2017-07-18 20:38:41'),
(176,	3,	20,	168,	1,	'2017-07-18 20:38:41'),
(177,	3,	20,	169,	1,	'2017-07-18 20:38:41'),
(178,	3,	20,	170,	1,	'2017-07-18 20:38:41'),
(179,	3,	21,	171,	1,	'2017-07-18 20:38:41'),
(180,	3,	22,	172,	1,	'2017-07-18 20:38:41'),
(181,	3,	23,	173,	1,	'2017-07-18 20:38:41'),
(182,	3,	23,	174,	1,	'2017-07-18 20:38:41'),
(183,	3,	23,	175,	1,	'2017-07-18 20:38:41'),
(184,	3,	23,	176,	1,	'2017-07-18 20:38:41'),
(185,	3,	23,	177,	1,	'2017-07-18 20:38:41'),
(186,	3,	23,	178,	1,	'2017-07-18 20:38:41'),
(187,	3,	24,	179,	1,	'2017-07-18 20:38:41'),
(188,	3,	24,	180,	1,	'2017-07-18 20:38:41'),
(189,	3,	4,	181,	1,	'2017-07-18 20:38:41'),
(190,	3,	4,	182,	1,	'2017-07-18 20:38:41'),
(191,	3,	4,	183,	1,	'2017-07-18 20:38:41'),
(192,	3,	4,	184,	1,	'2017-07-18 20:38:41'),
(193,	3,	4,	185,	1,	'2017-07-18 20:38:41'),
(194,	3,	4,	186,	1,	'2017-07-18 20:38:41'),
(195,	3,	4,	187,	1,	'2017-07-18 20:38:41'),
(196,	3,	4,	188,	1,	'2017-07-18 20:38:41'),
(197,	3,	25,	189,	1,	'2017-07-18 20:38:41'),
(198,	3,	25,	190,	1,	'2017-07-18 20:38:41'),
(199,	3,	25,	191,	1,	'2017-07-18 20:38:41'),
(200,	3,	25,	192,	1,	'2017-07-18 20:38:41'),
(201,	3,	25,	193,	1,	'2017-07-18 20:38:41'),
(202,	3,	26,	194,	1,	'2017-07-18 20:38:41'),
(203,	3,	27,	195,	1,	'2017-07-18 20:38:41'),
(204,	3,	27,	196,	1,	'2017-07-18 20:38:41'),
(205,	3,	28,	197,	1,	'2017-07-18 20:38:41'),
(206,	3,	29,	198,	1,	'2017-07-18 20:38:41'),
(207,	3,	29,	199,	1,	'2017-07-18 20:38:41'),
(208,	3,	29,	200,	1,	'2017-07-18 20:38:41'),
(209,	3,	30,	201,	1,	'2017-07-18 20:38:41'),
(210,	3,	30,	202,	1,	'2017-07-18 20:38:41'),
(211,	3,	31,	203,	1,	'2017-07-18 20:38:41'),
(212,	3,	5,	204,	1,	'2017-07-18 20:38:41'),
(213,	3,	5,	205,	1,	'2017-07-18 20:38:41'),
(214,	3,	5,	204,	1,	'2017-07-18 20:38:41'),
(215,	3,	5,	207,	1,	'2017-07-18 20:38:41'),
(216,	3,	5,	208,	1,	'2017-07-18 20:38:41'),
(217,	3,	5,	209,	1,	'2017-07-18 20:38:41'),
(218,	3,	5,	210,	1,	'2017-07-18 20:38:41'),
(219,	3,	5,	211,	1,	'2017-07-18 20:38:41'),
(220,	3,	10,	212,	1,	'2017-07-18 20:38:41'),
(221,	3,	10,	213,	1,	'2017-07-18 20:38:41'),
(222,	3,	10,	214,	1,	'2017-07-18 20:38:41'),
(223,	3,	10,	215,	1,	'2017-07-18 20:38:41'),
(224,	3,	10,	216,	1,	'2017-07-18 20:38:41'),
(225,	3,	10,	217,	1,	'2017-07-18 20:38:41'),
(226,	3,	10,	218,	1,	'2017-07-18 20:38:41'),
(227,	3,	10,	219,	1,	'2017-07-18 20:38:41'),
(228,	3,	10,	220,	1,	'2017-07-18 20:38:41'),
(229,	3,	10,	221,	1,	'2017-07-18 20:38:41'),
(230,	3,	10,	222,	1,	'2017-07-18 20:38:41'),
(231,	3,	10,	223,	1,	'2017-07-18 20:38:41'),
(232,	3,	10,	224,	1,	'2017-07-18 20:38:41'),
(233,	3,	10,	225,	1,	'2017-07-18 20:38:41'),
(234,	3,	10,	226,	1,	'2017-07-18 20:38:41'),
(235,	3,	10,	227,	1,	'2017-07-18 20:38:41'),
(236,	3,	10,	228,	1,	'2017-07-18 20:38:41'),
(237,	3,	10,	229,	1,	'2017-07-18 20:38:41'),
(238,	3,	10,	230,	1,	'2017-07-18 20:38:41'),
(239,	3,	10,	231,	1,	'2017-07-18 20:38:41'),
(240,	3,	10,	232,	1,	'2017-07-18 20:38:41'),
(241,	3,	32,	233,	1,	'2017-07-18 20:38:41'),
(242,	3,	32,	234,	1,	'2017-07-18 20:38:41'),
(243,	3,	32,	235,	1,	'2017-07-18 20:38:41'),
(244,	3,	32,	236,	1,	'2017-07-18 20:38:41'),
(245,	3,	32,	237,	1,	'2017-07-18 20:38:41'),
(246,	3,	3,	238,	1,	'2017-07-18 20:38:41'),
(247,	3,	3,	239,	1,	'2017-07-18 20:38:41'),
(248,	3,	3,	240,	1,	'2017-07-18 20:38:41'),
(249,	3,	3,	241,	1,	'2017-07-18 20:38:41'),
(250,	3,	3,	242,	1,	'2017-07-18 20:38:41'),
(251,	3,	3,	243,	1,	'2017-07-18 20:38:41'),
(252,	3,	3,	244,	1,	'2017-07-18 20:38:41'),
(253,	3,	3,	245,	1,	'2017-07-18 20:38:41'),
(254,	3,	3,	246,	1,	'2017-07-18 20:38:41'),
(255,	3,	3,	247,	1,	'2017-07-18 20:38:41'),
(256,	3,	3,	248,	1,	'2017-07-18 20:38:41'),
(257,	3,	3,	249,	1,	'2017-07-18 20:38:41'),
(258,	3,	3,	250,	1,	'2017-07-18 20:38:41'),
(259,	3,	3,	251,	1,	'2017-07-18 20:38:41'),
(260,	3,	3,	252,	1,	'2017-07-18 20:38:41'),
(261,	3,	3,	253,	1,	'2017-07-18 20:38:41'),
(262,	3,	3,	254,	1,	'2017-07-18 20:38:41'),
(263,	3,	3,	255,	1,	'2017-07-18 20:38:41'),
(264,	3,	3,	256,	1,	'2017-07-18 20:38:41'),
(265,	3,	3,	257,	1,	'2017-07-18 20:38:41'),
(266,	3,	3,	258,	1,	'2017-07-18 20:38:41'),
(267,	3,	3,	259,	1,	'2017-07-18 20:38:41'),
(268,	4,	33,	260,	1,	'2017-07-18 20:38:41'),
(269,	4,	33,	261,	1,	'2017-07-18 20:38:41'),
(270,	4,	33,	262,	1,	'2017-07-18 20:38:41'),
(271,	4,	33,	263,	1,	'2017-07-18 20:38:41'),
(272,	4,	33,	264,	1,	'2017-07-18 20:38:41');

CREATE TABLE `registros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `rut` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `celular` varchar(12) DEFAULT NULL,
  `id_unidad` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `tipo_ingreso` int(11) DEFAULT NULL,
  `consulta` text NOT NULL,
  `origen` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `unidades` (
  `id_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_unidad` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `unidades` (`id_unidad`, `nombre_unidad`, `estado`, `fecha`) VALUES
(1,	'Vespertina',	1,	'2017-07-07 05:02:27'),
(2,	'Educacion Continua',	1,	'2017-07-07 05:02:31'),
(3,	'Postgrados',	1,	'2017-07-07 05:02:33'),
(4,	'Linc',	1,	'2017-07-07 05:02:36');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `username`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `is_admin`, `is_confirmed`, `is_deleted`) VALUES
(1,	'admin',	'mmerino@cronstudio.com',	'$2y$10$Pq5X1hiwMQPdoLnaK3k76.9I7ZwQA0SmNwAIObq9LWg3IXxjFtHSu',	'default.jpg',	'2017-07-10 16:08:13',	NULL,	0,	0,	0);

-- 2017-08-24 13:27:32
