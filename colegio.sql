-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-07-2019 a las 22:22:59
-- Versión del servidor: 5.5.62-0+deb8u1
-- Versión de PHP: 5.6.40-0+deb8u2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador_administrador`
--

CREATE TABLE IF NOT EXISTS `administrador_administrador` (
  `user` varchar(5) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(25) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(25) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(1) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `cel` varchar(8) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspectoConducta_aspectoconducta`
--

CREATE TABLE IF NOT EXISTS `aspectoConducta_aspectoconducta` (
`id` int(11) NOT NULL,
  `conducta` varchar(2) COLLATE utf8_bin NOT NULL,
  `observacion` varchar(255) COLLATE utf8_bin NOT NULL,
  `estudiante_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `mes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'admin'),
(1, 'normal'),
(2, 'profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(4, 2, 22),
(1, 2, 46),
(3, 2, 67),
(2, 2, 70),
(12, 3, 29),
(13, 3, 31),
(7, 3, 40),
(8, 3, 47),
(9, 3, 53),
(10, 3, 55),
(11, 3, 59),
(5, 3, 68),
(6, 3, 71);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add administrador', 7, 'add_administrador'),
(20, 'Can change administrador', 7, 'change_administrador'),
(21, 'Can delete administrador', 7, 'delete_administrador'),
(22, 'Can add aspecto conducta', 8, 'add_aspectoconducta'),
(23, 'Can change aspecto conducta', 8, 'change_aspectoconducta'),
(24, 'Can delete aspecto conducta', 8, 'delete_aspectoconducta'),
(25, 'Can add colegio', 9, 'add_colegio'),
(26, 'Can change colegio', 9, 'change_colegio'),
(27, 'Can delete colegio', 9, 'delete_colegio'),
(28, 'Can add estudiante', 10, 'add_estudiante'),
(29, 'Can change estudiante', 10, 'change_estudiante'),
(30, 'Can delete estudiante', 10, 'delete_estudiante'),
(31, 'Can add evento', 11, 'add_evento'),
(32, 'Can change evento', 11, 'change_evento'),
(33, 'Can delete evento', 11, 'delete_evento'),
(34, 'Can add grado', 12, 'add_grado'),
(35, 'Can change grado', 12, 'change_grado'),
(36, 'Can delete grado', 12, 'delete_grado'),
(37, 'Can add materia', 13, 'add_materia'),
(38, 'Can change materia', 13, 'change_materia'),
(39, 'Can delete materia', 13, 'delete_materia'),
(40, 'Can add mensaje', 14, 'add_mensaje'),
(41, 'Can change mensaje', 14, 'change_mensaje'),
(42, 'Can delete mensaje', 14, 'delete_mensaje'),
(43, 'Can add mes', 15, 'add_mes'),
(44, 'Can change mes', 15, 'change_mes'),
(45, 'Can delete mes', 15, 'delete_mes'),
(46, 'Can add nota', 16, 'add_nota'),
(47, 'Can change nota', 16, 'change_nota'),
(48, 'Can delete nota', 16, 'delete_nota'),
(49, 'Can add orientador', 17, 'add_orientador'),
(50, 'Can change orientador', 17, 'change_orientador'),
(51, 'Can delete orientador', 17, 'delete_orientador'),
(52, 'Can add padre', 18, 'add_padre'),
(53, 'Can change padre', 18, 'change_padre'),
(54, 'Can delete padre', 18, 'delete_padre'),
(55, 'Can add pago', 19, 'add_pago'),
(56, 'Can change pago', 19, 'change_pago'),
(57, 'Can delete pago', 19, 'delete_pago'),
(58, 'Can add profesor', 20, 'add_profesor'),
(59, 'Can change profesor', 20, 'change_profesor'),
(60, 'Can delete profesor', 20, 'delete_profesor'),
(61, 'Can add tipo', 21, 'add_tipo'),
(62, 'Can change tipo', 21, 'change_tipo'),
(63, 'Can delete tipo', 21, 'delete_tipo'),
(64, 'Can add padre estudiante', 22, 'add_padreestudiante'),
(65, 'Can change padre estudiante', 22, 'change_padreestudiante'),
(66, 'Can delete padre estudiante', 22, 'delete_padreestudiante'),
(67, 'Can add nota f', 23, 'add_notaf'),
(68, 'Can change nota f', 23, 'change_notaf'),
(69, 'Can delete nota f', 23, 'delete_notaf'),
(70, 'Can add nota tri', 24, 'add_notatri'),
(71, 'Can change nota tri', 24, 'change_notatri'),
(72, 'Can delete nota tri', 24, 'delete_notatri'),
(73, 'Can add profesor materia', 25, 'add_profesormateria'),
(74, 'Can change profesor materia', 25, 'change_profesormateria'),
(75, 'Can delete profesor materia', 25, 'delete_profesormateria'),
(76, 'Can add horario', 26, 'add_horario'),
(77, 'Can change horario', 26, 'change_horario'),
(78, 'Can delete horario', 26, 'delete_horario'),
(79, 'Can add horario profesor', 27, 'add_horarioprofesor'),
(80, 'Can change horario profesor', 27, 'change_horarioprofesor'),
(81, 'Can delete horario profesor', 27, 'delete_horarioprofesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$aUJ8XiaZ7Amj$QRHFhdePdS/pErvJM386/bNWVHCt7qKvO22YTgJJri8=', NULL, 1, 'WILBERT', '', '', 'wilbet@gmail.com', 1, 1, '2019-07-12 00:38:55'),
(2, 'pbkdf2_sha256$100000$yX0FOaLDzcg4$zzirjMxpvsyFL1/d8B+HpPE+w46696IldqUH5EDNgZM=', '2019-07-12 00:43:43', 1, 'wilbert', '', '', 'wilberfader@gmail.com', 1, 1, '2019-07-12 00:39:26'),
(3, 'pbkdf2_sha256$100000$4RhoNvBYgZYY$WPiQTcoToC3XkRACzHj2Y6rZZW9ZpoYCEsm+zDeTMaU=', '2019-07-12 01:03:14', 0, 'root', '', '', '', 1, 1, '2019-07-12 01:00:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_colegio`
--

CREATE TABLE IF NOT EXISTS `colegio_colegio` (
`id` int(11) NOT NULL,
  `codigo` varchar(25) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(25) COLLATE utf8_bin NOT NULL,
  `direcion` varchar(100) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(8) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-07-12 00:46:57', '1', 'normal', 1, '[{"added": {}}]', 4, 2),
(2, '2019-07-12 00:49:28', '2', 'profesor', 1, '[{"added": {}}]', 4, 2),
(3, '2019-07-12 00:58:02', '3', 'admin', 1, '[{"added": {}}]', 4, 2),
(4, '2019-07-12 01:00:30', '3', 'root', 1, '[{"added": {}}]', 3, 2),
(5, '2019-07-12 01:02:44', '3', 'root', 2, '[{"changed": {"fields": ["is_staff", "groups"]}}]', 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'administrador', 'administrador'),
(8, 'aspectoConducta', 'aspectoconducta'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(9, 'colegio', 'colegio'),
(5, 'contenttypes', 'contenttype'),
(10, 'estudiante', 'estudiante'),
(11, 'evento', 'evento'),
(12, 'grado', 'grado'),
(26, 'horario', 'horario'),
(27, 'horario', 'horarioprofesor'),
(13, 'materia', 'materia'),
(14, 'mensaje', 'mensaje'),
(15, 'mes', 'mes'),
(23, 'notaf', 'notaf'),
(16, 'notas', 'nota'),
(24, 'notatri', 'notatri'),
(17, 'orientador', 'orientador'),
(22, 'padreestudiante', 'padreestudiante'),
(18, 'padres', 'padre'),
(19, 'pago', 'pago'),
(20, 'profesor', 'profesor'),
(25, 'profesormateria', 'profesormateria'),
(6, 'sessions', 'session'),
(21, 'tipo', 'tipo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-07-12 00:32:30'),
(2, 'auth', '0001_initial', '2019-07-12 00:32:31'),
(3, 'admin', '0001_initial', '2019-07-12 00:32:31'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-07-12 00:32:31'),
(5, 'administrador', '0001_initial', '2019-07-12 00:32:31'),
(6, 'mes', '0001_initial', '2019-07-12 00:32:31'),
(7, 'grado', '0001_initial', '2019-07-12 00:32:31'),
(8, 'estudiante', '0001_initial', '2019-07-12 00:32:32'),
(9, 'aspectoConducta', '0001_initial', '2019-07-12 00:32:32'),
(10, 'contenttypes', '0002_remove_content_type_name', '2019-07-12 00:32:32'),
(11, 'auth', '0002_alter_permission_name_max_length', '2019-07-12 00:32:32'),
(12, 'auth', '0003_alter_user_email_max_length', '2019-07-12 00:32:32'),
(13, 'auth', '0004_alter_user_username_opts', '2019-07-12 00:32:32'),
(14, 'auth', '0005_alter_user_last_login_null', '2019-07-12 00:32:33'),
(15, 'auth', '0006_require_contenttypes_0002', '2019-07-12 00:32:33'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2019-07-12 00:32:33'),
(17, 'auth', '0008_alter_user_username_max_length', '2019-07-12 00:32:33'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2019-07-12 00:32:33'),
(19, 'colegio', '0001_initial', '2019-07-12 00:32:33'),
(20, 'evento', '0001_initial', '2019-07-12 00:32:33'),
(21, 'materia', '0001_initial', '2019-07-12 00:32:33'),
(22, 'tipo', '0001_initial', '2019-07-12 00:32:33'),
(23, 'padres', '0001_initial', '2019-07-12 00:32:34'),
(24, 'mensaje', '0001_initial', '2019-07-12 00:32:34'),
(25, 'notaf', '0001_initial', '2019-07-12 00:32:34'),
(26, 'profesor', '0001_initial', '2019-07-12 00:32:34'),
(27, 'notas', '0001_initial', '2019-07-12 00:32:35'),
(28, 'notatri', '0001_initial', '2019-07-12 00:32:35'),
(29, 'orientador', '0001_initial', '2019-07-12 00:32:35'),
(30, 'padreestudiante', '0001_initial', '2019-07-12 00:32:35'),
(31, 'pago', '0001_initial', '2019-07-12 00:32:36'),
(32, 'profesormateria', '0001_initial', '2019-07-12 00:32:36'),
(33, 'sessions', '0001_initial', '2019-07-12 00:32:36'),
(34, 'horario', '0001_initial', '2019-07-12 02:03:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante_estudiante` (
  `carnet` varchar(5) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(25) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(25) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(1) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(255) COLLATE utf8_bin NOT NULL,
  `foto` varchar(100) COLLATE utf8_bin NOT NULL,
  `grado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_evento`
--

CREATE TABLE IF NOT EXISTS `evento_evento` (
`id` int(11) NOT NULL,
  `titulo` varchar(25) COLLATE utf8_bin NOT NULL,
  `cuerpo` varchar(255) COLLATE utf8_bin NOT NULL,
  `imagen` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `dias` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `publicado_id` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado_grado`
--

CREATE TABLE IF NOT EXISTS `grado_grado` (
`id` int(11) NOT NULL,
  `grado` varchar(1) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(10) COLLATE utf8_bin NOT NULL,
  `seccion` varchar(2) COLLATE utf8_bin NOT NULL,
  `ciclo` varchar(1) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_horario`
--

CREATE TABLE IF NOT EXISTS `horario_horario` (
`id` int(11) NOT NULL,
  `dia` varchar(12) COLLATE utf8_bin NOT NULL,
  `primero` varchar(12) COLLATE utf8_bin NOT NULL,
  `segundo` varchar(12) COLLATE utf8_bin NOT NULL,
  `tercero` varchar(12) COLLATE utf8_bin NOT NULL,
  `cuarto` varchar(12) COLLATE utf8_bin NOT NULL,
  `quinto` varchar(12) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(12) COLLATE utf8_bin NOT NULL,
  `grado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_horarioprofesor`
--

CREATE TABLE IF NOT EXISTS `horario_horarioprofesor` (
`id` int(11) NOT NULL,
  `dia` varchar(12) COLLATE utf8_bin NOT NULL,
  `primero` tinyint(1) NOT NULL,
  `segundo` tinyint(1) NOT NULL,
  `tercero` tinyint(1) NOT NULL,
  `cuarto` tinyint(1) NOT NULL,
  `quinto` tinyint(1) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_materia`
--

CREATE TABLE IF NOT EXISTS `materia_materia` (
`id` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(13) COLLATE utf8_bin NOT NULL,
  `grado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje_mensaje`
--

CREATE TABLE IF NOT EXISTS `mensaje_mensaje` (
`id` int(11) NOT NULL,
  `titulo` varchar(25) COLLATE utf8_bin NOT NULL,
  `cuerpo` varchar(255) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `leido` tinyint(1) NOT NULL,
  `emisor_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `reseptor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes_mes`
--

CREATE TABLE IF NOT EXISTS `mes_mes` (
`id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(10) COLLATE utf8_bin NOT NULL,
  `trimestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notaf_notaf`
--

CREATE TABLE IF NOT EXISTS `notaf_notaf` (
`id` int(11) NOT NULL,
  `notafinal` decimal(4,2) NOT NULL,
  `aprobado` tinyint(1) NOT NULL,
  `estudiante_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `materia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_nota`
--

CREATE TABLE IF NOT EXISTS `notas_nota` (
`id` int(11) NOT NULL,
  `examen1` decimal(4,2) NOT NULL,
  `examen2` decimal(4,2) NOT NULL,
  `examen3` decimal(4,2) NOT NULL,
  `notaMes` decimal(4,2) NOT NULL,
  `estudiante_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `materia_id` int(11) NOT NULL,
  `mes_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notatri_notatri`
--

CREATE TABLE IF NOT EXISTS `notatri_notatri` (
`id` int(11) NOT NULL,
  `notaTrimestral` decimal(4,2) NOT NULL,
  `trimestre` int(11) NOT NULL,
  `estudiante_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `materia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orientador_orientador`
--

CREATE TABLE IF NOT EXISTS `orientador_orientador` (
`id` int(11) NOT NULL,
  `grado_id` int(11) NOT NULL,
  `orientador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padreestudiante_padreestudiante`
--

CREATE TABLE IF NOT EXISTS `padreestudiante_padreestudiante` (
`id` int(11) NOT NULL,
  `estudiante_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `padre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres_padre`
--

CREATE TABLE IF NOT EXISTS `padres_padre` (
`id` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(25) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(1) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `cel` varchar(8) COLLATE utf8_bin NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_pago`
--

CREATE TABLE IF NOT EXISTS `pago_pago` (
`id` int(11) NOT NULL,
  `fechaPagada` date NOT NULL,
  `cantidad` decimal(4,2) NOT NULL,
  `estudiante_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `mes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesormateria_profesormateria`
--

CREATE TABLE IF NOT EXISTS `profesormateria_profesormateria` (
`id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_profesor`
--

CREATE TABLE IF NOT EXISTS `profesor_profesor` (
`id` int(11) NOT NULL,
  `user` varchar(5) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(25) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(25) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(1) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(255) COLLATE utf8_bin NOT NULL,
  `cel` varchar(8) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_tipo`
--

CREATE TABLE IF NOT EXISTS `tipo_tipo` (
`id` int(11) NOT NULL,
  `nombre` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador_administrador`
--
ALTER TABLE `administrador_administrador`
 ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `aspectoConducta_aspectoconducta`
--
ALTER TABLE `aspectoConducta_aspectoconducta`
 ADD PRIMARY KEY (`id`), ADD KEY `aspectoConducta_aspe_estudiante_id_8a65b92d_fk_estudiant` (`estudiante_id`), ADD KEY `aspectoConducta_aspectoconducta_mes_id_6bb51a79_fk_mes_mes_id` (`mes_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `colegio_colegio`
--
ALTER TABLE `colegio_colegio`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `estudiante_estudiante`
--
ALTER TABLE `estudiante_estudiante`
 ADD PRIMARY KEY (`carnet`), ADD KEY `estudiante_estudiante_grado_id_fd956a23_fk_grado_grado_id` (`grado_id`);

--
-- Indices de la tabla `evento_evento`
--
ALTER TABLE `evento_evento`
 ADD PRIMARY KEY (`id`), ADD KEY `evento_evento_publicado_id_8a86f547_fk_administr` (`publicado_id`);

--
-- Indices de la tabla `grado_grado`
--
ALTER TABLE `grado_grado`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario_horario`
--
ALTER TABLE `horario_horario`
 ADD PRIMARY KEY (`id`), ADD KEY `horario_horario_grado_id_9ea632e5_fk_grado_grado_id` (`grado_id`);

--
-- Indices de la tabla `horario_horarioprofesor`
--
ALTER TABLE `horario_horarioprofesor`
 ADD PRIMARY KEY (`id`), ADD KEY `horario_horarioprofe_profesor_id_263ca256_fk_profesor_` (`profesor_id`);

--
-- Indices de la tabla `materia_materia`
--
ALTER TABLE `materia_materia`
 ADD PRIMARY KEY (`id`), ADD KEY `materia_materia_grado_id_7458b2b9_fk_grado_grado_id` (`grado_id`);

--
-- Indices de la tabla `mensaje_mensaje`
--
ALTER TABLE `mensaje_mensaje`
 ADD PRIMARY KEY (`id`), ADD KEY `mensaje_mensaje_emisor_id_c3ffa1f6_fk_administr` (`emisor_id`), ADD KEY `mensaje_mensaje_reseptor_id_f6e0e313_fk_padres_padre_id` (`reseptor_id`);

--
-- Indices de la tabla `mes_mes`
--
ALTER TABLE `mes_mes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notaf_notaf`
--
ALTER TABLE `notaf_notaf`
 ADD PRIMARY KEY (`id`), ADD KEY `notaf_notaf_estudiante_id_3f98ff66_fk_estudiant` (`estudiante_id`), ADD KEY `notaf_notaf_materia_id_d52a65ed_fk_materia_materia_id` (`materia_id`);

--
-- Indices de la tabla `notas_nota`
--
ALTER TABLE `notas_nota`
 ADD PRIMARY KEY (`id`), ADD KEY `notas_nota_estudiante_id_2b7b39cf_fk_estudiant` (`estudiante_id`), ADD KEY `notas_nota_materia_id_20b811ab_fk_materia_materia_id` (`materia_id`), ADD KEY `notas_nota_mes_id_8dade525_fk_mes_mes_id` (`mes_id`), ADD KEY `notas_nota_profesor_id_1455e8bd_fk_profesor_profesor_id` (`profesor_id`);

--
-- Indices de la tabla `notatri_notatri`
--
ALTER TABLE `notatri_notatri`
 ADD PRIMARY KEY (`id`), ADD KEY `notatri_notatri_estudiante_id_c9d6190f_fk_estudiant` (`estudiante_id`), ADD KEY `notatri_notatri_materia_id_944b856f_fk_materia_materia_id` (`materia_id`);

--
-- Indices de la tabla `orientador_orientador`
--
ALTER TABLE `orientador_orientador`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `grado_id` (`grado_id`), ADD UNIQUE KEY `orientador_id` (`orientador_id`);

--
-- Indices de la tabla `padreestudiante_padreestudiante`
--
ALTER TABLE `padreestudiante_padreestudiante`
 ADD PRIMARY KEY (`id`), ADD KEY `padreestudiante_padr_estudiante_id_348d304c_fk_estudiant` (`estudiante_id`), ADD KEY `padreestudiante_padr_padre_id_0d369d14_fk_padres_pa` (`padre_id`);

--
-- Indices de la tabla `padres_padre`
--
ALTER TABLE `padres_padre`
 ADD PRIMARY KEY (`id`), ADD KEY `padres_padre_tipo_id_2d449497_fk_tipo_tipo_id` (`tipo_id`);

--
-- Indices de la tabla `pago_pago`
--
ALTER TABLE `pago_pago`
 ADD PRIMARY KEY (`id`), ADD KEY `pago_pago_estudiante_id_cde6120d_fk_estudiante_estudiante_carnet` (`estudiante_id`), ADD KEY `pago_pago_mes_id_50aa8f65_fk_mes_mes_id` (`mes_id`);

--
-- Indices de la tabla `profesormateria_profesormateria`
--
ALTER TABLE `profesormateria_profesormateria`
 ADD PRIMARY KEY (`id`), ADD KEY `profesormateria_prof_materia_id_c66b67a5_fk_materia_m` (`materia_id`), ADD KEY `profesormateria_prof_profesor_id_e61c1011_fk_profesor_` (`profesor_id`);

--
-- Indices de la tabla `profesor_profesor`
--
ALTER TABLE `profesor_profesor`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_tipo`
--
ALTER TABLE `tipo_tipo`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aspectoConducta_aspectoconducta`
--
ALTER TABLE `aspectoConducta_aspectoconducta`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `colegio_colegio`
--
ALTER TABLE `colegio_colegio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `evento_evento`
--
ALTER TABLE `evento_evento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `grado_grado`
--
ALTER TABLE `grado_grado`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `horario_horario`
--
ALTER TABLE `horario_horario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `horario_horarioprofesor`
--
ALTER TABLE `horario_horarioprofesor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materia_materia`
--
ALTER TABLE `materia_materia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mensaje_mensaje`
--
ALTER TABLE `mensaje_mensaje`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mes_mes`
--
ALTER TABLE `mes_mes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notaf_notaf`
--
ALTER TABLE `notaf_notaf`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notas_nota`
--
ALTER TABLE `notas_nota`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notatri_notatri`
--
ALTER TABLE `notatri_notatri`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `orientador_orientador`
--
ALTER TABLE `orientador_orientador`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `padreestudiante_padreestudiante`
--
ALTER TABLE `padreestudiante_padreestudiante`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `padres_padre`
--
ALTER TABLE `padres_padre`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pago_pago`
--
ALTER TABLE `pago_pago`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `profesormateria_profesormateria`
--
ALTER TABLE `profesormateria_profesormateria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `profesor_profesor`
--
ALTER TABLE `profesor_profesor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_tipo`
--
ALTER TABLE `tipo_tipo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aspectoConducta_aspectoconducta`
--
ALTER TABLE `aspectoConducta_aspectoconducta`
ADD CONSTRAINT `aspectoConducta_aspectoconducta_mes_id_6bb51a79_fk_mes_mes_id` FOREIGN KEY (`mes_id`) REFERENCES `mes_mes` (`id`),
ADD CONSTRAINT `aspectoConducta_aspe_estudiante_id_8a65b92d_fk_estudiant` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante_estudiante` (`carnet`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `estudiante_estudiante`
--
ALTER TABLE `estudiante_estudiante`
ADD CONSTRAINT `estudiante_estudiante_grado_id_fd956a23_fk_grado_grado_id` FOREIGN KEY (`grado_id`) REFERENCES `grado_grado` (`id`);

--
-- Filtros para la tabla `evento_evento`
--
ALTER TABLE `evento_evento`
ADD CONSTRAINT `evento_evento_publicado_id_8a86f547_fk_administr` FOREIGN KEY (`publicado_id`) REFERENCES `administrador_administrador` (`user`);

--
-- Filtros para la tabla `horario_horario`
--
ALTER TABLE `horario_horario`
ADD CONSTRAINT `horario_horario_grado_id_9ea632e5_fk_grado_grado_id` FOREIGN KEY (`grado_id`) REFERENCES `grado_grado` (`id`);

--
-- Filtros para la tabla `horario_horarioprofesor`
--
ALTER TABLE `horario_horarioprofesor`
ADD CONSTRAINT `horario_horarioprofe_profesor_id_263ca256_fk_profesor_` FOREIGN KEY (`profesor_id`) REFERENCES `profesor_profesor` (`id`);

--
-- Filtros para la tabla `materia_materia`
--
ALTER TABLE `materia_materia`
ADD CONSTRAINT `materia_materia_grado_id_7458b2b9_fk_grado_grado_id` FOREIGN KEY (`grado_id`) REFERENCES `grado_grado` (`id`);

--
-- Filtros para la tabla `mensaje_mensaje`
--
ALTER TABLE `mensaje_mensaje`
ADD CONSTRAINT `mensaje_mensaje_emisor_id_c3ffa1f6_fk_administr` FOREIGN KEY (`emisor_id`) REFERENCES `administrador_administrador` (`user`),
ADD CONSTRAINT `mensaje_mensaje_reseptor_id_f6e0e313_fk_padres_padre_id` FOREIGN KEY (`reseptor_id`) REFERENCES `padres_padre` (`id`);

--
-- Filtros para la tabla `notaf_notaf`
--
ALTER TABLE `notaf_notaf`
ADD CONSTRAINT `notaf_notaf_estudiante_id_3f98ff66_fk_estudiant` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante_estudiante` (`carnet`),
ADD CONSTRAINT `notaf_notaf_materia_id_d52a65ed_fk_materia_materia_id` FOREIGN KEY (`materia_id`) REFERENCES `materia_materia` (`id`);

--
-- Filtros para la tabla `notas_nota`
--
ALTER TABLE `notas_nota`
ADD CONSTRAINT `notas_nota_estudiante_id_2b7b39cf_fk_estudiant` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante_estudiante` (`carnet`),
ADD CONSTRAINT `notas_nota_materia_id_20b811ab_fk_materia_materia_id` FOREIGN KEY (`materia_id`) REFERENCES `materia_materia` (`id`),
ADD CONSTRAINT `notas_nota_mes_id_8dade525_fk_mes_mes_id` FOREIGN KEY (`mes_id`) REFERENCES `mes_mes` (`id`),
ADD CONSTRAINT `notas_nota_profesor_id_1455e8bd_fk_profesor_profesor_id` FOREIGN KEY (`profesor_id`) REFERENCES `profesor_profesor` (`id`);

--
-- Filtros para la tabla `notatri_notatri`
--
ALTER TABLE `notatri_notatri`
ADD CONSTRAINT `notatri_notatri_estudiante_id_c9d6190f_fk_estudiant` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante_estudiante` (`carnet`),
ADD CONSTRAINT `notatri_notatri_materia_id_944b856f_fk_materia_materia_id` FOREIGN KEY (`materia_id`) REFERENCES `materia_materia` (`id`);

--
-- Filtros para la tabla `orientador_orientador`
--
ALTER TABLE `orientador_orientador`
ADD CONSTRAINT `orientador_orientador_grado_id_e3d4011f_fk_grado_grado_id` FOREIGN KEY (`grado_id`) REFERENCES `grado_grado` (`id`),
ADD CONSTRAINT `orientador_orientado_orientador_id_35e2c117_fk_profesor_` FOREIGN KEY (`orientador_id`) REFERENCES `profesor_profesor` (`id`);

--
-- Filtros para la tabla `padreestudiante_padreestudiante`
--
ALTER TABLE `padreestudiante_padreestudiante`
ADD CONSTRAINT `padreestudiante_padr_estudiante_id_348d304c_fk_estudiant` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante_estudiante` (`carnet`),
ADD CONSTRAINT `padreestudiante_padr_padre_id_0d369d14_fk_padres_pa` FOREIGN KEY (`padre_id`) REFERENCES `padres_padre` (`id`);

--
-- Filtros para la tabla `padres_padre`
--
ALTER TABLE `padres_padre`
ADD CONSTRAINT `padres_padre_tipo_id_2d449497_fk_tipo_tipo_id` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_tipo` (`id`);

--
-- Filtros para la tabla `pago_pago`
--
ALTER TABLE `pago_pago`
ADD CONSTRAINT `pago_pago_estudiante_id_cde6120d_fk_estudiante_estudiante_carnet` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante_estudiante` (`carnet`),
ADD CONSTRAINT `pago_pago_mes_id_50aa8f65_fk_mes_mes_id` FOREIGN KEY (`mes_id`) REFERENCES `mes_mes` (`id`);

--
-- Filtros para la tabla `profesormateria_profesormateria`
--
ALTER TABLE `profesormateria_profesormateria`
ADD CONSTRAINT `profesormateria_prof_materia_id_c66b67a5_fk_materia_m` FOREIGN KEY (`materia_id`) REFERENCES `materia_materia` (`id`),
ADD CONSTRAINT `profesormateria_prof_profesor_id_e61c1011_fk_profesor_` FOREIGN KEY (`profesor_id`) REFERENCES `profesor_profesor` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
