-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-02-2019 a las 21:36:15
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_angular`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `captcha`
--

CREATE TABLE `captcha` (
  `suma` varchar(20) NOT NULL,
  `respuesta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `captcha`
--

INSERT INTO `captcha` (`suma`, `respuesta`) VALUES
('suma1', 'resa'),
('suma2', 'resb'),
('suma3', 'resc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_completo`) VALUES
(1, 'Sofia Parisey'),
(2, 'Emilio Perez Reverte'),
(3, 'Juan Carlos Z.'),
(4, 'Juan Ramirez'),
(5, 'Emilia Estefan'),
(6, 'Maria Laura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cocina`
--

CREATE TABLE `cocina` (
  `id_cocina` int(11) NOT NULL,
  `nombre_cocina` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cocina`
--

INSERT INTO `cocina` (`id_cocina`, `nombre_cocina`) VALUES
(1, 'barra_tragos'),
(2, 'barra_choppera'),
(3, 'cocina'),
(4, 'candy_bar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comandas`
--

CREATE TABLE `comandas` (
  `id_comanda` varchar(5) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `id_mozo` int(11) NOT NULL,
  `id_estado_pedido` int(11) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_estipulada` datetime NOT NULL,
  `fecha_entrega` datetime DEFAULT NULL,
  `foto_mesa` varchar(100) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comandas`
--

INSERT INTO `comandas` (`id_comanda`, `id_mesa`, `id_mozo`, `id_estado_pedido`, `fecha_alta`, `fecha_estipulada`, `fecha_entrega`, `foto_mesa`, `id_cliente`, `total`) VALUES
('AA001', 10001, 2, 1, '2018-07-18 02:54:41', '2018-07-12 00:00:00', '0000-00-00 00:00:00', NULL, NULL, '5000'),
('AA010', 40002, 2, 1, '2017-07-20 21:19:59', '2017-07-20 21:19:59', '0000-00-00 00:00:00', NULL, NULL, '3000'),
('AA011', 10002, 3, 1, '2018-07-26 23:25:23', '2018-07-26 23:55:23', '0000-00-00 00:00:00', NULL, NULL, NULL),
('AA012', 20002, 2, 2, '2018-07-27 21:29:37', '2018-07-27 21:59:37', '0000-00-00 00:00:00', './Fotos/AA01220002.png', NULL, '1090'),
('AA013', 20001, 3, 1, '2018-07-28 14:53:40', '2018-07-28 15:23:40', '0000-00-00 00:00:00', './Fotos/AA01320001.jpg', NULL, '160'),
('AA014', 40001, 3, 1, '2018-07-28 14:56:42', '2018-07-28 15:26:42', '0000-00-00 00:00:00', './Fotos/AA01440001.jpg', NULL, '160'),
('AA015', 40002, 3, 1, '2018-07-28 15:17:50', '2018-07-28 15:47:50', '0000-00-00 00:00:00', './Fotos/AA01540002.jpg', NULL, '160'),
('AA016', 40001, 3, 1, '2018-07-28 15:21:08', '2018-07-28 15:51:08', '0000-00-00 00:00:00', './Fotos/AA01640001.jpg', NULL, '160'),
('AA017', 40001, 3, 1, '2018-07-28 15:23:08', '2018-07-28 15:53:08', '0000-00-00 00:00:00', './Fotos/AA01740001.jpg', 2, '160'),
('AA018', 20002, 1, 1, '2018-07-31 15:12:45', '2018-07-31 15:42:45', '0000-00-00 00:00:00', 'sin foto', 2, '100'),
('AA019', 30001, 3, 1, '2018-07-31 19:07:44', '2018-07-31 19:37:44', '0000-00-00 00:00:00', 'sin foto', 6, '200'),
('AA020', 30003, 2, 1, '2018-07-31 19:57:09', '2018-07-31 20:27:09', '0000-00-00 00:00:00', 'sin foto', 6, '300'),
('AA021', 30003, 2, 1, '2018-10-16 16:42:53', '2018-10-16 17:12:53', '0000-00-00 00:00:00', 'sin foto', 111, '100'),
('AA022', 40002, 2, 1, '2018-10-16 16:52:21', '2018-10-16 17:22:21', '0000-00-00 00:00:00', 'sin foto', 3, '200'),
('AA023', 10003, 2, 1, '2018-10-16 21:27:46', '2018-10-16 21:57:46', '0000-00-00 00:00:00', 'sin foto', 23, '600'),
('AA024', 10003, 2, 1, '2018-12-08 20:54:33', '2018-12-08 21:24:33', '0000-00-00 00:00:00', 'sin foto', 9, '400'),
('AA025', 20003, 2, 1, '2018-12-08 21:09:28', '2018-12-08 21:39:28', '0000-00-00 00:00:00', 'sin foto', 9, '1100'),
('AA026', 10002, 2, 1, '2019-01-30 21:58:08', '2019-01-30 22:28:08', '0000-00-00 00:00:00', 'sin foto', 0, '660'),
('AA027', 40003, 2, 1, '2019-01-30 22:08:45', '2019-01-30 22:38:45', '0000-00-00 00:00:00', 'sin foto', 8, '900'),
('AA028', 30003, 2, 1, '2019-01-30 22:16:33', '2019-01-30 22:46:33', '0000-00-00 00:00:00', 'sin foto', 9, '900'),
('AA029', 30002, 2, 1, '2019-02-02 17:41:30', '2019-02-02 18:11:30', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA030', 40002, 2, 1, '2019-02-02 17:41:59', '2019-02-02 18:11:59', '0000-00-00 00:00:00', 'sin foto', 0, '1100'),
('AA031', 20001, 2, 1, '2019-02-02 17:53:04', '2019-02-02 18:23:04', '0000-00-00 00:00:00', 'sin foto', 0, '7000'),
('AA032', 30003, 1, 1, '2019-02-02 19:17:50', '2019-02-02 19:47:50', '0000-00-00 00:00:00', 'sin foto', 0, '800'),
('AA033', 20003, 1, 1, '2019-02-02 19:18:30', '2019-02-02 19:48:30', '0000-00-00 00:00:00', 'sin foto', 0, '700'),
('AA034', 40003, 2, 1, '2019-02-02 19:46:32', '2019-02-02 20:16:32', '0000-00-00 00:00:00', 'sin foto', 0, '8800'),
('AA035', 10003, 2, 1, '2019-02-02 19:48:01', '2019-02-02 20:18:01', '0000-00-00 00:00:00', 'sin foto', 0, '800'),
('AA036', 40002, 2, 1, '2019-02-02 19:52:59', '2019-02-02 20:22:59', '0000-00-00 00:00:00', 'sin foto', 0, '4700'),
('AA037', 20002, 2, 1, '2019-02-02 19:55:13', '2019-02-02 20:25:13', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA038', 40001, 2, 1, '2019-02-02 19:56:46', '2019-02-02 20:26:46', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA039', 20003, 1, 1, '2019-02-02 21:39:59', '2019-02-02 22:09:59', '0000-00-00 00:00:00', 'sin foto', 0, '800'),
('AA040', 10003, 1, 1, '2019-02-02 21:45:55', '2019-02-02 22:15:55', '0000-00-00 00:00:00', 'sin foto', 0, '5000'),
('AA041', 30003, 1, 1, '2019-02-03 00:41:01', '2019-02-03 01:11:01', '0000-00-00 00:00:00', 'sin foto', 0, '500'),
('AA042', 20003, 1, 1, '2019-02-03 00:43:09', '2019-02-03 01:13:09', '0000-00-00 00:00:00', 'sin foto', 0, '800'),
('AA043', 10002, 1, 1, '2019-02-03 00:43:47', '2019-02-03 01:13:47', '0000-00-00 00:00:00', 'sin foto', 0, '8800'),
('AA044', 30003, 1, 1, '2019-02-09 12:47:47', '2019-02-09 13:17:47', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA045', 10003, 1, 1, '2019-02-09 12:48:14', '2019-02-09 13:18:14', '0000-00-00 00:00:00', 'sin foto', 0, '1000'),
('AA046', 10003, 1, 1, '2019-02-09 12:50:06', '2019-02-09 13:20:06', '0000-00-00 00:00:00', 'sin foto', 0, '500'),
('AA047', 20003, 1, 1, '2019-02-09 12:51:13', '2019-02-09 13:21:13', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA048', 10003, 1, 1, '2019-02-09 12:55:17', '2019-02-09 13:25:17', '0000-00-00 00:00:00', 'sin foto', 0, '500'),
('AA049', 10002, 1, 1, '2019-02-09 13:12:35', '2019-02-09 13:42:35', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA050', 10003, 1, 1, '2019-02-09 13:55:08', '2019-02-09 14:25:08', '0000-00-00 00:00:00', 'sin foto', 0, '600'),
('AA051', 20003, 1, 1, '2019-02-09 14:15:58', '2019-02-09 14:45:58', '0000-00-00 00:00:00', 'sin foto', 0, '1900'),
('AA052', 20003, 1, 1, '2019-02-09 14:22:31', '2019-02-09 14:52:31', '0000-00-00 00:00:00', 'sin foto', 0, '1300'),
('AA053', 30003, 1, 1, '2019-02-09 14:27:00', '2019-02-09 14:57:00', '0000-00-00 00:00:00', 'sin foto', 0, '700'),
('AA054', 10003, 1, 1, '2019-02-09 14:39:45', '2019-02-09 15:09:45', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA055', 10003, 1, 1, '2019-02-09 14:40:55', '2019-02-09 15:10:55', '0000-00-00 00:00:00', 'sin foto', 0, '700'),
('AA056', 10003, 1, 1, '2019-02-09 14:48:11', '2019-02-09 15:18:11', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA057', 10003, 1, 1, '2019-02-09 15:13:20', '2019-02-09 15:43:20', '0000-00-00 00:00:00', 'sin foto', 0, '3000'),
('AA058', 10001, 1, 1, '2019-02-09 15:14:10', '2019-02-09 15:44:10', '0000-00-00 00:00:00', 'sin foto', 0, '100'),
('AA059', 10001, 1, 1, '2019-02-09 15:15:17', '2019-02-09 15:45:17', '0000-00-00 00:00:00', 'sin foto', 0, '3300'),
('AA060', 10003, 1, 1, '2019-02-09 15:19:14', '2019-02-09 15:49:14', '0000-00-00 00:00:00', 'sin foto', 0, '200'),
('AA061', 40001, 1, 1, '2019-02-09 15:23:47', '2019-02-09 15:53:47', '0000-00-00 00:00:00', 'sin foto', 0, '900'),
('AA062', 10001, 1, 1, '2019-02-09 15:25:12', '2019-02-09 15:55:12', '0000-00-00 00:00:00', 'sin foto', 0, '400'),
('AA063', 40002, 1, 1, '2019-02-09 15:39:04', '2019-02-09 16:09:04', '0000-00-00 00:00:00', 'sin foto', 0, '700'),
('AA064', 10001, 1, 1, '2019-02-09 16:24:49', '2019-02-09 16:54:49', '0000-00-00 00:00:00', 'sin foto', 0, '100'),
('AA065', 10002, 1, 1, '2019-02-09 17:11:23', '2019-02-09 17:41:23', '0000-00-00 00:00:00', 'sin foto', 0, '100'),
('AA066', 10003, 1, 1, '2019-02-09 17:39:01', '2019-02-09 18:09:01', '0000-00-00 00:00:00', 'sin foto', 0, '600');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comanda_detalles`
--

CREATE TABLE `comanda_detalles` (
  `id` int(11) NOT NULL,
  `id_comanda` varchar(5) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_producto` int(11) NOT NULL,
  `estado_pedido` int(11) NOT NULL,
  `comienzo_preparacion` datetime DEFAULT NULL,
  `hora_estimada` datetime DEFAULT NULL,
  `hora_listo` datetime DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `hora_alta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comanda_detalles`
--

INSERT INTO `comanda_detalles` (`id`, `id_comanda`, `id_producto`, `cantidad_producto`, `estado_pedido`, `comienzo_preparacion`, `hora_estimada`, `hora_listo`, `id_empleado`, `hora_alta`) VALUES
(1, 'AA001', 1, 4, 2, '2018-10-16 21:30:46', '2018-10-16 22:20:46', '2018-07-24 22:09:59', 6, ''),
(2, 'AA001', 2, 4, 3, '2018-07-23 22:06:50', '2018-07-25 23:44:49', '2018-07-24 22:09:08', 0, ''),
(3, 'AA001', 3, 5, 2, '2018-07-24 22:24:36', '2018-07-25 23:44:49', NULL, 2, ''),
(4, 'AA001', 4, 5, 3, '2018-07-24 22:24:49', '2018-07-25 23:44:49', '2018-07-24 22:35:46', 2, ''),
(5, 'AA001', 8, 5, 1, NULL, '2018-07-25 23:44:49', NULL, NULL, ''),
(6, 'AA001', 9, 5, 2, '2019-01-29 20:41:05', '2019-01-29 22:11:05', NULL, 6, ''),
(7, 'AA010', 1, 3, 3, '2018-07-24 20:02:44', '2018-07-25 23:44:49', '2018-07-24 22:11:52', 0, ''),
(8, 'AA010', 2, 5, 2, '2019-01-29 20:44:00', '2019-01-29 22:24:00', NULL, 6, ''),
(9, 'AA010', 3, 1, 3, '2018-07-24 19:58:10', '2018-07-25 23:44:49', '2018-07-24 22:12:14', 0, ''),
(10, 'AA010', 4, 100, 3, '2018-07-24 20:54:50', '2018-07-25 23:44:49', '2018-07-24 22:13:27', 2, ''),
(11, 'AA010', 5, 15, 1, NULL, NULL, NULL, NULL, NULL),
(12, 'AA010', 6, 1, 1, NULL, NULL, NULL, NULL, NULL),
(13, 'AA010', 7, 2, 1, NULL, NULL, NULL, NULL, NULL),
(14, 'AA011', 1, 4, 2, '2018-07-28 15:58:15', '2018-07-28 15:58:15', NULL, 5, ''),
(15, 'AA011', 2, 2, 2, '2019-01-29 20:50:12', '2019-01-29 22:00:12', NULL, 6, ''),
(16, 'AA011', 3, 1, 1, NULL, NULL, NULL, NULL, ''),
(17, 'AA011', 4, 1, 1, NULL, NULL, NULL, NULL, ''),
(18, 'AA011', 5, 1, 1, NULL, NULL, NULL, NULL, ''),
(19, 'AA011', 6, 2, 1, NULL, NULL, NULL, NULL, ''),
(20, 'AA011', 7, 1, 1, NULL, NULL, NULL, NULL, ''),
(21, 'AA011', 8, 3, 1, NULL, NULL, NULL, NULL, ''),
(22, 'AA011', 9, 3, 2, '2019-01-29 20:51:51', '2019-01-29 20:53:51', NULL, 6, ''),
(23, 'AA015', 3, 1, 2, '2018-07-28 16:02:49', '2018-07-28 16:02:49', NULL, 5, ''),
(24, 'AA015', 4, 1, 1, NULL, NULL, NULL, NULL, ''),
(25, 'AA016', 3, 1, 1, NULL, NULL, NULL, NULL, ''),
(26, 'AA016', 4, 1, 1, NULL, NULL, NULL, NULL, ''),
(27, 'AA017', 3, 1, 1, NULL, NULL, NULL, NULL, ''),
(28, 'AA017', 4, 1, 1, NULL, NULL, NULL, NULL, ''),
(29, 'AA018', 1, 1, 2, '2019-02-16 17:22:24', '2019-02-16 17:22:24', NULL, 6, ''),
(30, 'AA019', 1, 2, 2, '2018-07-31 19:45:30', '2018-07-31 20:25:30', NULL, 6, ''),
(31, 'AA020', 1, 3, 3, '2018-07-31 20:02:43', '2018-07-31 20:52:43', '2018-07-31 20:04:52', 6, ''),
(32, 'AA020', 2, 1, 2, '2018-07-31 20:07:41', '2018-07-31 20:37:41', NULL, 7, ''),
(33, 'AA020', 16, 1, 1, NULL, NULL, NULL, NULL, NULL),
(34, 'AA023', 1, 3, 2, '2019-01-29 21:04:45', '2019-01-29 22:34:45', NULL, 6, '2018/10/16 21:27:46'),
(35, 'AA023', 2, 3, 2, '2019-01-29 21:07:57', '2019-01-29 22:27:57', NULL, 6, '2018/10/16 21:27:46'),
(36, 'AA024', 4, 5, 1, NULL, NULL, NULL, NULL, '2018/12/08 20:54:33'),
(37, 'AA025', 1, 4, 2, '2019-02-02 21:50:27', '2019-02-02 23:10:27', NULL, 6, '2018/12/08 21:09:28'),
(38, 'AA025', 2, 50, 2, '2019-02-12 15:22:41', '2019-02-12 16:22:41', NULL, 6, NULL),
(39, 'AA025', 3, 92, 1, NULL, NULL, NULL, NULL, NULL),
(40, 'AA025', 4, 22, 1, NULL, NULL, NULL, NULL, NULL),
(41, 'AA025', 5, 33, 1, NULL, NULL, NULL, NULL, NULL),
(42, 'AA025', 6, 35, 1, NULL, NULL, NULL, NULL, NULL),
(43, 'AA025', 7, 39, 1, NULL, NULL, NULL, NULL, NULL),
(44, 'AA025', 16, 1, 1, NULL, NULL, NULL, NULL, NULL),
(45, 'AA026', 1, 3, 1, NULL, NULL, NULL, NULL, '2019/01/30 21:58:08'),
(46, 'AA026', 2, 2, 1, NULL, NULL, NULL, NULL, '2019/01/30 21:58:08'),
(47, 'AA026', 3, 2, 1, NULL, NULL, NULL, NULL, '2019/01/30 21:58:08'),
(48, 'AA027', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/01/30 22:08:45'),
(49, 'AA028', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/01/30 22:16:33'),
(50, 'AA029', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/02 17:41:30'),
(51, 'AA030', 1, 11, 1, NULL, NULL, NULL, NULL, '2019/02/02 17:41:59'),
(52, 'AA031', 1, 70, 1, NULL, NULL, NULL, NULL, '2019/02/02 17:53:04'),
(53, 'AA032', 1, 8, 1, NULL, NULL, NULL, NULL, '2019/02/02 19:17:50'),
(54, 'AA033', 1, 7, 1, NULL, NULL, NULL, NULL, '2019/02/02 19:18:30'),
(55, 'AA034', 1, 88, 1, NULL, NULL, NULL, NULL, '2019/02/02 19:46:32'),
(56, 'AA035', 1, 8, 1, NULL, NULL, NULL, NULL, '2019/02/02 19:48:01'),
(57, 'AA036', 1, 47, 1, NULL, NULL, NULL, NULL, '2019/02/02 19:52:59'),
(58, 'AA037', 2, 9, 1, NULL, NULL, NULL, NULL, '2019/02/02 19:55:13'),
(59, 'AA038', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/02 19:56:46'),
(60, 'AA039', 1, 8, 1, NULL, NULL, NULL, NULL, '2019/02/02 21:39:59'),
(61, 'AA040', 1, 50, 1, NULL, NULL, NULL, NULL, '2019/02/02 21:45:55'),
(62, 'AA041', 1, 5, 1, NULL, NULL, NULL, NULL, '2019/02/03 00:41:01'),
(63, 'AA042', 1, 8, 1, NULL, NULL, NULL, NULL, '2019/02/03 00:43:09'),
(64, 'AA043', 1, 88, 1, NULL, NULL, NULL, NULL, '2019/02/03 00:43:47'),
(65, 'AA044', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/09 12:47:47'),
(66, 'AA045', 1, 5, 1, NULL, NULL, NULL, NULL, '2019/02/09 12:48:14'),
(67, 'AA045', 2, 5, 1, NULL, NULL, NULL, NULL, '2019/02/09 12:48:14'),
(68, 'AA046', 1, 5, 1, NULL, NULL, NULL, NULL, '2019/02/09 12:50:06'),
(69, 'AA047', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/09 12:51:13'),
(70, 'AA048', 1, 5, 1, NULL, NULL, NULL, NULL, '2019/02/09 12:55:17'),
(71, 'AA049', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/09 13:12:35'),
(72, 'AA050', 1, 6, 1, NULL, NULL, NULL, NULL, '2019/02/09 13:55:08'),
(73, 'AA051', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/09 14:15:58'),
(74, 'AA051', 2, 10, 1, NULL, NULL, NULL, NULL, '2019/02/09 14:15:58'),
(75, 'AA052', 1, 11, 1, NULL, NULL, NULL, NULL, '2019/02/09 14:22:31'),
(76, 'AA052', 2, 2, 1, NULL, NULL, NULL, NULL, '2019/02/09 14:22:31'),
(77, 'AA053', 1, 7, 1, NULL, NULL, NULL, NULL, '2019/02/09 14:27:00'),
(78, 'AA054', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/09 14:39:45'),
(79, 'AA055', 1, 7, 1, NULL, NULL, NULL, NULL, '2019/02/09 14:40:55'),
(80, 'AA056', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/09 14:48:11'),
(81, 'AA057', 1, 20, 1, NULL, NULL, NULL, NULL, '2019/02/09 15:13:20'),
(82, 'AA057', 2, 10, 1, NULL, NULL, NULL, NULL, '2019/02/09 15:13:20'),
(83, 'AA058', 1, 1, 1, NULL, NULL, NULL, NULL, '2019/02/09 15:14:10'),
(84, 'AA059', 1, 33, 1, NULL, NULL, NULL, NULL, '2019/02/09 15:15:17'),
(85, 'AA060', 1, 2, 1, NULL, NULL, NULL, NULL, '2019/02/09 15:19:14'),
(86, 'AA061', 1, 9, 1, NULL, NULL, NULL, NULL, '2019/02/09 15:23:47'),
(87, 'AA062', 1, 4, 1, NULL, NULL, NULL, NULL, '2019/02/09 15:25:12'),
(88, 'AA063', 1, 7, 1, NULL, NULL, NULL, NULL, '2019/02/09 15:39:04'),
(100, 'AA063', 2, 5, 1, NULL, NULL, NULL, NULL, NULL),
(99, 'AA063', 3, 5, 1, NULL, NULL, NULL, NULL, NULL),
(98, 'AA063', 4, 5, 1, NULL, NULL, NULL, NULL, NULL),
(97, 'AA063', 5, 10, 1, NULL, NULL, NULL, NULL, NULL),
(96, 'AA063', 6, 5, 1, NULL, NULL, NULL, NULL, NULL),
(95, 'AA063', 7, 5, 1, NULL, NULL, NULL, NULL, NULL),
(101, 'AA063', 8, 5, 1, NULL, NULL, NULL, NULL, NULL),
(89, 'AA064', 1, 1, 1, NULL, NULL, NULL, NULL, '2019/02/09 16:24:49'),
(90, 'AA064', 2, 2, 1, NULL, NULL, NULL, NULL, NULL),
(91, 'AA064', 3, 3, 1, NULL, NULL, NULL, NULL, NULL),
(92, 'AA064', 4, 4, 1, NULL, NULL, NULL, NULL, NULL),
(93, 'AA064', 5, 5, 1, NULL, NULL, NULL, NULL, NULL),
(94, 'AA064', 6, 5, 1, NULL, NULL, NULL, NULL, NULL),
(102, 'AA064', 9, 9, 1, NULL, NULL, NULL, NULL, NULL),
(103, 'AA065', 1, 1, 1, NULL, NULL, NULL, NULL, '2019/02/09 17:11:23'),
(104, 'AA065', 2, 3, 1, NULL, NULL, NULL, NULL, NULL),
(105, 'AA065', 3, 3, 1, NULL, NULL, NULL, 6, NULL),
(106, 'AA066', 1, 6, 1, NULL, NULL, NULL, 6, '2019/02/09 17:39:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `id_rol` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_egreso` date DEFAULT NULL,
  `sueldo` decimal(10,0) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `usuario`, `nombre_completo`, `id_rol`, `fecha_ingreso`, `fecha_egreso`, `sueldo`, `clave`, `activo`) VALUES
(1, 'dolinuck', 'Daro Darioli', 1, '2018-07-14', NULL, '35000', '1234', 1),
(2, 'ggritz', 'Juan Gritz', 2, '2018-07-14', NULL, '25000', '1234', 1),
(3, 'ejimenez', 'Emilio Jimenez', 2, '2018-07-25', '0000-00-00', '20000', '1234', 1),
(4, 'nramirez', 'Natalia Ramirez', 3, '2018-07-25', '0000-00-00', '20000', '1234', 1),
(5, 'mrojas', 'Marcos Rojas', 4, '2018-07-25', '0000-00-00', '20000', '1234', 1),
(6, 'ncaceres', 'Nahuel Caceres', 5, '2018-07-25', '0000-00-00', '20000', '1234', 1),
(7, 'ccaceres', 'Carlos Caceres', 5, '2018-07-25', '0000-00-00', '20000', '1234', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE `encuestas` (
  `id_encuesta` int(11) NOT NULL,
  `id_comanda` varchar(5) NOT NULL,
  `nota_mozo` int(11) NOT NULL,
  `nota_mesa` int(11) NOT NULL,
  `nota_cocinero` int(11) NOT NULL,
  `nota_restaurante` int(11) NOT NULL,
  `comentario` varchar(66) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`id_encuesta`, `id_comanda`, `nota_mozo`, `nota_mesa`, `nota_cocinero`, `nota_restaurante`, `comentario`) VALUES
(1, 'AA015', 5, 3, 5, 5, ''),
(2, 'AA028', 9, 9, 9, 9, 'muy bien'),
(3, 'AA028', 1, 1, 1, 1, '1111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadomesa`
--

CREATE TABLE `estadomesa` (
  `id_estadomesa` int(11) NOT NULL,
  `nombre_estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadomesa`
--

INSERT INTO `estadomesa` (`id_estadomesa`, `nombre_estado`) VALUES
(1, 'con cliente esperando pedido'),
(2, 'con clientes comiendo'),
(3, 'con clientes pagando'),
(4, 'cerrada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pedidos`
--

CREATE TABLE `estado_pedidos` (
  `id_estado_pedido` int(11) NOT NULL,
  `nombre_estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_pedidos`
--

INSERT INTO `estado_pedidos` (`id_estado_pedido`, `nombre_estado`) VALUES
(1, 'pendiente'),
(2, 'en preparacion'),
(3, 'listo para servir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `helados`
--

CREATE TABLE `helados` (
  `sabor` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `precio` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `caminoFoto` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `helados`
--

INSERT INTO `helados` (`sabor`, `cantidad`, `precio`, `caminoFoto`) VALUES
('Limon', '3', '10', ''),
('Frutilla', '4', '20', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `puntaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `usuario`, `email`, `pass`, `puntaje`) VALUES
(1, 'daro', 'daro@mail', '1234', 45),
(2, 'julian', 'julian@mail', '1234', 25),
(3, 'natalia', 'natalia@mail', '1234', 50),
(4, 'aula', 'aula@mail', '1234', 10),
(5, 'aula2', 'aula@mail', '1234', 15),
(6, 'Xamil', 'Xamil1@mail', '1234', NULL),
(7, 'Xamil', 'Xamil1@mail', '1234', NULL),
(8, 'Xamil', 'Xamil1@mail', '1234', NULL),
(9, 'jose', 'josemail', '1234', NULL),
(10, 'matias', 'matias@mail.com', '1234', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logueos`
--

CREATE TABLE `logueos` (
  `numero` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `tarea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logueos`
--

INSERT INTO `logueos` (`numero`, `id_empleado`, `fecha`, `tarea`) VALUES
(1, 1, '2018-07-22 00:00:00', 'Logueo Usuario'),
(2, 1, '2018-07-22 00:00:00', 'Logueo Usuario'),
(3, 1, '2018-07-22 00:00:00', 'Logueo Usuario'),
(4, 1, '2018-07-22 00:00:00', 'Logueo Usuario'),
(5, 1, '2018-07-22 00:00:00', 'Listado Empleados'),
(6, 1, '2018-07-22 00:00:00', 'Listado Empleados'),
(7, 1, '2018-07-22 00:00:00', 'Listado Empleados'),
(8, 1, '2018-07-22 00:52:57', 'Listado Empleados'),
(9, 2, '2018-07-22 00:54:54', 'Logueo Usuario'),
(10, 1, '2018-07-22 00:58:39', 'Logueo Usuario'),
(11, 1, '2018-07-22 00:58:51', 'Listado Empleados'),
(12, 2, '2018-07-22 01:06:55', 'Logueo Usuario'),
(13, 2, '2018-07-22 01:07:14', 'Intento de acceso no Admin'),
(14, 1, '2018-07-23 20:50:57', 'Logueo Usuario'),
(15, 1, '2018-07-23 20:51:07', 'Logueo Usuario'),
(16, 1, '2018-07-23 20:59:51', 'Logueo Usuario'),
(17, 1, '2018-07-23 21:00:45', 'Logueo Usuario'),
(18, 1, '2018-07-23 21:01:19', 'Logueo Usuario'),
(19, 1, '2018-07-23 21:01:58', 'Logueo Usuario'),
(20, 1, '2018-07-23 21:02:31', 'Logueo Usuario'),
(21, 1, '2018-07-23 21:02:48', 'Logueo Usuario'),
(25, 1, '2018-07-23 21:19:26', 'Logueo Usuario'),
(26, 1, '2018-07-23 21:19:30', 'Logueo Usuario'),
(27, 1, '2018-07-23 21:40:08', 'Logueo Usuario'),
(28, 1, '2018-07-23 21:40:25', 'Logueo Usuario'),
(29, 1, '2018-07-23 21:40:53', 'Logueo Usuario'),
(30, 1, '2018-07-23 23:13:38', 'Logueo Usuario'),
(31, 2, '2018-07-23 23:13:52', 'Logueo Usuario'),
(32, 2, '2018-07-23 23:15:42', 'Alta Comanda'),
(33, 2, '2018-07-23 23:16:49', 'Alta Comanda'),
(34, 2, '2018-07-23 23:21:37', 'Alta Comanda'),
(35, 2, '2018-07-23 23:22:01', 'Alta Comanda'),
(36, 2, '2018-07-24 20:31:05', 'Logueo Usuario'),
(37, 2, '2018-07-24 20:31:30', 'Modifica estado pedido'),
(38, 2, '2018-07-24 20:52:45', 'Logueo Usuario'),
(39, 2, '2018-07-24 20:53:03', 'Modifica estado pedido'),
(40, 2, '2018-07-24 20:54:50', 'Modifica estado pedido'),
(41, 2, '2018-07-24 22:03:52', 'Logueo Usuario'),
(42, 2, '2018-07-24 22:04:41', 'Modifica estado pedido'),
(43, 2, '2018-07-24 22:05:21', 'Modifica estado pedido'),
(44, 2, '2018-07-24 22:05:27', 'Modifica estado pedido'),
(45, 2, '2018-07-24 22:06:03', 'Modifica estado pedido'),
(46, 2, '2018-07-24 22:06:32', 'Modifica estado pedido'),
(47, 2, '2018-07-24 22:07:39', 'Modifica estado pedido'),
(48, 2, '2018-07-24 22:08:15', 'Modifica estado pedido'),
(49, 2, '2018-07-24 22:09:08', 'Modifica estado pedido'),
(50, 2, '2018-07-24 22:09:59', 'Modifica estado pedido'),
(51, 2, '2018-07-24 22:11:19', 'Modifica estado pedido'),
(52, 2, '2018-07-24 22:11:52', 'Modifica estado pedido'),
(53, 2, '2018-07-24 22:12:14', 'Modifica estado pedido'),
(54, 2, '2018-07-24 22:13:27', 'Modifica estado pedido'),
(55, 2, '2018-07-24 22:14:45', 'Modifica estado pedido'),
(56, 2, '2018-07-24 22:16:16', 'Modifica estado pedido'),
(57, 2, '2018-07-24 22:16:33', 'Modifica estado pedido'),
(58, 2, '2018-07-24 22:21:31', 'Logueo Usuario'),
(59, 2, '2018-07-24 22:22:06', 'Carga pedido'),
(60, 2, '2018-07-24 22:22:45', 'Carga pedido'),
(61, 2, '2018-07-24 22:22:56', 'Carga pedido'),
(62, 2, '2018-07-24 22:23:29', 'Carga pedido'),
(63, 2, '2018-07-24 22:23:45', 'Carga pedido'),
(64, 2, '2018-07-24 22:24:36', 'Modifica estado pedido'),
(65, 2, '2018-07-24 22:24:49', 'Modifica estado pedido'),
(66, 2, '2018-07-24 22:26:51', 'Modifica estado pedido'),
(67, 2, '2018-07-24 22:30:31', 'Modifica estado pedido'),
(68, 2, '2018-07-24 22:31:36', 'Modifica estado pedido'),
(69, 2, '2018-07-24 22:31:51', 'Modifica estado pedido'),
(70, 2, '2018-07-24 22:32:15', 'Modifica estado pedido'),
(71, 2, '2018-07-24 22:32:51', 'Modifica estado pedido'),
(72, 2, '2018-07-24 22:34:09', 'Modifica estado pedido'),
(73, 2, '2018-07-24 22:34:39', 'Modifica estado pedido'),
(74, 2, '2018-07-24 22:35:23', 'Modifica estado pedido'),
(75, 2, '2018-07-24 22:35:46', 'Modifica estado pedido'),
(76, 2, '2018-07-24 23:23:58', 'Logueo Usuario'),
(77, 2, '2018-07-24 23:25:14', 'Intento de acceso no Admin'),
(78, 2, '2018-07-24 23:27:09', 'Intento de acceso no Admin'),
(79, 2, '2018-07-24 23:27:32', 'Intento de acceso no Admin'),
(80, 1, '2018-07-24 23:27:52', 'Logueo Usuario'),
(81, 1, '2018-07-25 20:30:54', 'Logueo Usuario'),
(82, 1, '2018-07-25 20:31:19', 'Alta Comanda'),
(83, 1, '2018-07-25 20:32:08', 'Alta Comanda'),
(84, 2, '2018-07-25 20:38:27', 'Logueo Usuario'),
(85, 2, '2018-07-25 20:39:41', 'Intento de acceso no Admin'),
(86, 1, '2018-07-25 20:39:53', 'Logueo Usuario'),
(87, 2, '2018-07-25 23:19:32', 'Logueo Usuario'),
(88, 2, '2018-07-25 23:19:54', 'Intento de acceso no Admin'),
(89, 1, '2018-07-25 23:20:05', 'Logueo Usuario'),
(90, 1, '2018-07-25 23:20:22', 'Alta Empleado'),
(91, 1, '2018-07-25 23:21:34', 'Alta Empleado'),
(92, 1, '2018-07-25 23:22:30', 'Alta Empleado'),
(93, 1, '2018-07-25 23:33:01', 'Alta Empleado'),
(94, 1, '2018-07-25 23:34:48', 'Alta Empleado'),
(95, 1, '2018-07-25 23:35:35', 'Alta Empleado'),
(96, 1, '2018-07-25 23:35:51', 'Alta Empleado'),
(97, 1, '2018-07-25 23:53:33', 'Modificación empleado'),
(98, 1, '2018-07-26 22:24:51', 'Logueo Usuario'),
(99, 1, '2018-07-26 22:25:46', 'Modificación empleado'),
(100, 3, '2018-07-26 23:17:14', 'Logueo Usuario'),
(101, 3, '2018-07-26 23:20:00', 'Logueo Usuario'),
(102, 3, '2018-07-26 23:25:23', 'Alta Comanda'),
(103, 3, '2018-07-26 23:33:27', 'Alta Comanda'),
(104, 3, '2018-07-26 23:33:42', 'Alta Comanda'),
(105, 3, '2018-07-26 23:34:08', 'Alta Comanda'),
(106, 3, '2018-07-26 23:35:06', 'Alta Comanda'),
(107, 3, '2018-07-26 23:36:36', 'Alta Comanda'),
(108, 3, '2018-07-26 23:36:58', 'Alta Comanda'),
(109, 3, '2018-07-26 23:37:22', 'Alta Comanda'),
(110, 3, '2018-07-26 23:38:46', 'Alta Comanda'),
(111, 3, '2018-07-26 23:39:29', 'Alta Comanda'),
(112, 3, '2018-07-26 23:39:58', 'Alta Comanda'),
(113, 3, '2018-07-26 23:42:09', 'Alta Comanda'),
(114, 3, '2018-07-26 23:43:43', 'Alta Comanda'),
(115, 3, '2018-07-26 23:43:56', 'Alta Comanda'),
(116, 3, '2018-07-26 23:44:27', 'Alta Comanda'),
(117, 3, '2018-07-26 23:45:41', 'Alta Comanda'),
(118, 3, '2018-07-26 23:49:23', 'Alta Comanda'),
(119, 3, '2018-07-26 23:58:58', 'Alta Comanda'),
(120, 3, '2018-07-27 00:00:52', 'Alta Comanda'),
(121, 3, '2018-07-27 00:04:12', 'Alta Comanda'),
(122, 3, '2018-07-27 20:14:48', 'Logueo Usuario'),
(123, 3, '2018-07-27 20:33:59', 'Logueo Usuario'),
(124, 3, '2018-07-27 20:36:28', 'Alta Comanda'),
(125, 3, '2018-07-27 20:37:42', 'Alta Comanda'),
(126, 3, '2018-07-27 21:00:39', 'Alta Comanda'),
(127, 3, '2018-07-27 21:01:18', 'Alta Comanda'),
(128, 3, '2018-07-27 21:11:01', 'Alta Comanda'),
(129, 3, '2018-07-27 21:11:10', 'Alta Comanda'),
(130, 3, '2018-07-27 21:16:23', 'Alta Comanda'),
(131, 3, '2018-07-27 21:16:28', 'Alta Comanda'),
(132, 3, '2018-07-27 21:29:10', 'Alta Comanda'),
(133, 3, '2018-07-27 21:29:37', 'Alta Comanda'),
(134, 1, '2018-07-28 13:49:07', 'Logueo Usuario'),
(135, 3, '2018-07-28 14:50:29', 'Logueo Usuario'),
(136, 3, '2018-07-28 14:53:40', 'Alta Comanda'),
(137, 3, '2018-07-28 14:56:42', 'Alta Comanda'),
(138, 3, '2018-07-28 14:59:26', 'Alta Comanda'),
(139, 3, '2018-07-28 15:00:16', 'Alta Comanda'),
(140, 3, '2018-07-28 15:01:05', 'Alta Comanda'),
(141, 3, '2018-07-28 15:01:57', 'Alta Comanda'),
(142, 3, '2018-07-28 15:02:57', 'Alta Comanda'),
(143, 3, '2018-07-28 15:03:16', 'Alta Comanda'),
(144, 3, '2018-07-28 15:17:03', 'Alta Comanda'),
(145, 3, '2018-07-28 15:17:50', 'Alta Comanda'),
(146, 3, '2018-07-28 15:21:08', 'Alta Comanda'),
(147, 3, '2018-07-28 15:23:08', 'Alta Comanda'),
(148, 5, '2018-07-28 15:27:38', 'Logueo Usuario'),
(149, 5, '2018-07-28 15:41:19', 'Logueo Usuario'),
(150, 5, '2018-07-28 15:43:03', 'Modifica estado pedido'),
(151, 5, '2018-07-28 15:44:26', 'Modifica estado pedido'),
(152, 5, '2018-07-28 15:50:58', 'Modifica estado pedido'),
(153, 5, '2018-07-28 15:58:15', 'Modifica estado pedido'),
(154, 5, '2018-07-28 16:02:49', 'Modifica estado pedido'),
(155, 1, '2018-07-28 16:56:42', 'Logueo Usuario'),
(156, 5, '2018-07-28 16:56:51', 'Logueo Usuario'),
(157, 1, '2018-07-28 16:58:48', 'Logueo Usuario'),
(158, 1, '2018-07-28 16:59:15', 'Cierra mesa'),
(159, 1, '2018-07-28 17:00:40', 'Cierra mesa'),
(160, 1, '2018-07-28 17:01:17', 'Cierra mesa'),
(161, 1, '2018-07-28 17:02:28', 'Cierra mesa'),
(162, 1, '2018-07-28 17:02:44', 'Cierra mesa'),
(163, 1, '2018-07-28 17:05:16', 'Cierra mesa'),
(164, 2, '2018-07-28 17:05:40', 'Logueo Usuario'),
(165, 2, '2018-07-28 17:08:06', 'cambia estado mesa'),
(166, 2, '2018-07-28 17:08:27', 'cambia estado mesa'),
(167, 2, '2018-07-28 17:08:32', 'cambia estado mesa'),
(168, 1, '2018-07-31 14:57:12', 'Logueo Usuario'),
(169, 1, '2018-07-31 15:01:00', 'Logueo Usuario'),
(170, 1, '2018-07-31 15:05:59', 'Consulta comandas'),
(171, 2, '2018-07-31 15:09:25', 'Logueo Usuario'),
(172, 1, '2018-07-31 15:12:45', 'Alta comanda'),
(173, 1, '2018-07-31 15:13:23', 'Consulta comanda'),
(174, 2, '2018-07-31 15:14:25', 'Intento de acceso no Admin'),
(175, 1, '2018-07-31 15:14:34', 'Logueo Usuario'),
(176, 1, '2018-07-31 15:14:52', 'Consulta comandas'),
(177, 1, '2018-07-31 15:20:07', 'Modificar comandaAA012'),
(178, 1, '2018-07-31 17:02:28', 'Logueo Usuario'),
(179, 1, '2018-07-31 18:54:44', 'Logueo Usuario'),
(180, 3, '2018-07-31 19:04:13', 'Logueo Usuario'),
(181, 3, '2018-07-31 19:07:44', 'Alta comanda'),
(182, 6, '2018-07-31 19:39:19', 'Logueo Usuario'),
(183, 6, '2018-07-31 19:42:47', 'Logueo Usuario'),
(184, 6, '2018-07-31 19:45:30', 'Se toma pedido en comanda: '),
(185, 2, '2018-07-31 19:53:26', 'Logueo Usuario'),
(186, 2, '2018-07-31 19:53:35', 'Logueo Usuario'),
(187, 2, '2018-07-31 19:53:55', 'Logueo Usuario'),
(188, 2, '2018-07-31 19:57:09', 'Alta comanda'),
(189, 6, '2018-07-31 20:02:01', 'Logueo Usuario'),
(190, 6, '2018-07-31 20:02:43', 'Se toma pedido en comanda: '),
(191, 6, '2018-07-31 20:04:52', 'Finaliza pedido en comanda: AA020'),
(192, 7, '2018-07-31 20:06:27', 'Logueo Usuario'),
(193, 7, '2018-07-31 20:07:41', 'Se toma pedido en comanda: '),
(194, 2, '2018-07-31 20:12:01', 'Logueo Usuario'),
(195, 2, '2018-07-31 20:13:29', 'Modificar estado mesa'),
(196, 1, '2018-07-31 20:14:43', 'Logueo Usuario'),
(197, 2, '2018-07-31 20:16:56', 'Logueo Usuario'),
(198, 2, '2018-07-31 20:17:49', 'Logueo Usuario'),
(199, 2, '2018-07-31 20:18:19', 'Intento de acceso no Admin'),
(200, 1, '2018-07-31 20:18:25', 'Logueo Usuario'),
(201, 1, '2018-08-07 20:01:02', 'Logueo Usuario'),
(202, 1, '2018-08-07 20:01:11', 'Logueo Usuario'),
(203, 1, '2018-08-07 20:15:57', 'Logueo Usuario'),
(204, 1, '2018-08-07 22:52:39', 'Logueo Usuario'),
(205, 1, '2018-09-30 19:20:51', 'Logueo Usuario'),
(206, 2, '2018-10-16 16:42:53', 'Alta comanda'),
(207, 2, '2018-10-16 16:52:21', 'Alta comanda'),
(208, 2, '2018-10-16 16:54:09', 'Modificar estado mesa'),
(209, 2, '2018-10-16 16:57:03', 'Modificar estado mesa'),
(210, 2, '2018-10-16 16:58:37', 'Modificar estado mesa'),
(211, 2, '2018-10-16 21:27:46', 'Alta comanda'),
(212, 2, '2018-10-16 21:28:28', 'Modificar estado mesa'),
(213, 2, '2018-10-16 21:28:38', 'Modificar estado mesa'),
(214, 6, '2018-10-16 21:30:46', 'Se toma pedido en comanda: '),
(215, 1, '2018-10-18 19:38:53', 'Modificar estado mesa'),
(216, 2, '2018-12-08 20:54:33', 'Alta comanda'),
(217, 2, '2018-12-08 21:09:28', 'Alta comanda'),
(218, 1, '2019-01-16 21:44:53', 'Consulta comandas'),
(219, 1, '2019-01-16 21:51:22', 'Consulta comandas'),
(220, 1, '2019-01-16 22:42:10', 'Consulta comandas'),
(221, 1, '2019-01-16 22:43:09', 'Consulta comandas'),
(222, 1, '2019-01-16 22:44:54', 'Consulta comandas'),
(223, 1, '2019-01-16 22:45:25', 'Consulta comandas'),
(224, 1, '2019-01-16 22:46:00', 'Consulta comandas'),
(225, 1, '2019-01-16 22:46:13', 'Consulta comandas'),
(226, 1, '2019-01-16 22:46:49', 'Consulta comandas'),
(227, 1, '2019-01-16 22:47:00', 'Consulta comandas'),
(228, 1, '2019-01-16 22:47:07', 'Consulta comandas'),
(229, 1, '2019-01-16 22:53:28', 'Consulta comandas'),
(230, 1, '2019-01-16 22:55:41', 'Consulta comanda'),
(231, 1, '2019-01-16 22:57:13', 'Consulta comanda'),
(232, 1, '2019-01-16 22:57:34', 'Consulta comanda'),
(233, 2, '2019-01-30 21:58:08', 'Alta comanda'),
(234, 2, '2019-01-30 22:08:45', 'Alta comanda'),
(235, 2, '2019-01-30 22:16:33', 'Alta comanda'),
(236, 2, '2019-02-02 17:41:30', 'Alta comanda'),
(237, 2, '2019-02-02 17:41:59', 'Alta comanda'),
(238, 2, '2019-02-02 17:53:04', 'Alta comanda'),
(239, 1, '2019-02-02 19:17:50', 'Alta comanda'),
(240, 1, '2019-02-02 19:18:30', 'Alta comanda'),
(241, 2, '2019-02-02 19:46:32', 'Alta comanda'),
(242, 2, '2019-02-02 19:48:01', 'Alta comanda'),
(243, 2, '2019-02-02 19:52:59', 'Alta comanda'),
(244, 2, '2019-02-02 19:55:13', 'Alta comanda'),
(245, 2, '2019-02-02 19:56:46', 'Alta comanda'),
(246, 1, '2019-02-02 21:39:59', 'Alta comanda'),
(247, 1, '2019-02-02 21:45:55', 'Alta comanda'),
(248, 1, '2019-02-03 00:41:01', 'Alta comanda'),
(249, 1, '2019-02-03 00:43:09', 'Alta comanda'),
(250, 1, '2019-02-03 00:43:47', 'Alta comanda'),
(251, 1, '2019-02-09 12:47:47', 'Alta comanda'),
(252, 1, '2019-02-09 12:48:14', 'Alta comanda'),
(253, 1, '2019-02-09 12:50:06', 'Alta comanda'),
(254, 1, '2019-02-09 12:51:13', 'Alta comanda'),
(255, 1, '2019-02-09 12:55:17', 'Alta comanda'),
(256, 1, '2019-02-09 13:12:35', 'Alta comanda'),
(257, 1, '2019-02-09 13:55:08', 'Alta comanda'),
(258, 1, '2019-02-09 14:15:58', 'Alta comanda'),
(259, 1, '2019-02-09 14:22:31', 'Alta comanda'),
(260, 1, '2019-02-09 14:27:00', 'Alta comanda'),
(261, 1, '2019-02-09 14:39:45', 'Alta comanda'),
(262, 1, '2019-02-09 14:40:55', 'Alta comanda'),
(263, 1, '2019-02-09 14:48:11', 'Alta comanda'),
(264, 1, '2019-02-09 15:13:20', 'Alta comanda'),
(265, 1, '2019-02-09 15:14:10', 'Alta comanda'),
(266, 1, '2019-02-09 15:15:17', 'Alta comanda'),
(267, 1, '2019-02-09 15:19:14', 'Alta comanda'),
(268, 1, '2019-02-09 15:23:47', 'Alta comanda'),
(269, 1, '2019-02-09 15:25:12', 'Alta comanda'),
(270, 1, '2019-02-09 15:39:04', 'Alta comanda'),
(271, 1, '2019-02-09 16:24:49', 'Alta comanda'),
(272, 1, '2019-02-09 17:11:23', 'Alta comanda'),
(273, 1, '2019-02-09 17:39:01', 'Alta comanda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id_mesa` int(11) NOT NULL,
  `id_sector` int(11) NOT NULL,
  `id_estado_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id_mesa`, `id_sector`, `id_estado_mesa`) VALUES
(10001, 1, 3),
(10002, 1, 4),
(10003, 1, 1),
(20001, 2, 4),
(20002, 2, 4),
(20003, 1, 4),
(30001, 3, 4),
(30002, 1, 4),
(30003, 3, 4),
(40001, 4, 4),
(40002, 4, 4),
(40003, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_borrados`
--

CREATE TABLE `pedidos_borrados` (
  `id_comanda` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos_borrados`
--

INSERT INTO `pedidos_borrados` (`id_comanda`, `id_producto`, `cantidad_producto`) VALUES
('AA024', 1, 1),
('AA025', 1, 1),
('AA023', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(300) NOT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `id_cocina` int(11) NOT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `imagen` text,
  `cantidad` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_producto`, `nombre_producto`, `descripcion`, `id_cocina`, `precio`, `imagen`, `cantidad`) VALUES
(1, 1, 'Risotto', 'plato italiano', 3, '100', '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', 0),
(2, 2, 'Hamburguesa Completa', 'Comida Rapida', 3, '100', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wAARCAA+AEgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwCHwP4Rn1a01PUGcpJYwrIIo88g5yTj0wPzp8a6klu6tfq6n5CGQKVHTr/WtXxN4i13wbaLrPh3R7i7uY22zyAfuWi/iXHU5x+HWs+3+JfgTxfaRJCjaLrhOZIrrcGl4JOGHyt9eDXXm6oVsQ3Tknp1/wCCefgfbKkueLTuT+GPDHhk3JXUfEdxPKjAMIISsYJ9CTk/XFd5DB4E011B1EkrxgLIS39DXja+MNF0jWbkXJ/tQOU8mOLdkMM5xgj196W++IEc0hWH4f6iZFPIe6dD/wB8la+V9l9XVoRhfvJO59DFVKzvUcreVj3GHx54R02I2+ni6llCkqgjCD8azf8AhI11/Uha6hZuI52xFH/tA8A+xya8dPxBubULdW3wyuLaU/L9pO6c/gDxW54R+LngyC8ivtZh1aC9gbeEktwFZ+MZbJxz7V20MRXqVI801yrtojGvhIRg+WLbffVnVfEKPWbO4cW080MDYO0t8oU8j6Yrx02M/izULzX7iRhZWjG1sPNziR1+/IR12qDk9OWC5r0fx54xfxVpyWWhXltPcam5UPCQywR/xE4zwMgY5zkD+IU59HstO0K0tBt+z2kITaW6YHO7sSSSxPck+uK3ny6qOl/yOWzWrOMtNb03TdMXStNnmaOPJcwx8u2cli2OporFvsC7nmhIIBx7Hn0/GitoRdtDOTVzsrfXNRiRopZ8KflUNyMnp+A5/KuWexk1ebUJtH08x2oYieWLCb25JUHHHTp/k9P8WBbWviS30uwnV5xZmRyvQOzEbc98BR/31WVpF1ZeHIYYpbi4ltJGEkkQ+URsAPvfjzXk4utPCQ5Ptfkexg6Eai57bkOgQ6G4eO1gtra4WMtLHIAW3KMHDHkjP6nFdhIDp0FsdSuxZiRdqKqBg5BJ54IB+o/Os2DVPCV3qQnt7mxN0SMxzSKjHGOQVXPb/Oa1Lh0i08mSaO6guGdQS+4qD1QNgdQOvB4NfKznCrK8rpvuevytLYjuNVTyYbmyuZ7iC0bfJvlXCsWK5AC5Yjd1X/8AXleJr7RNRFxr11cXjMQY28x2eMt1weARwehyORTZb5raCez0w7bK9UGRJGVnRuMjIA4z7fnXJa/4aDu8sj3FvLuDCEqxAz/vdORXXQrqMXGT0JlRu+aOjFubW+tvCklx4f8AM07zpRLDcpF5Qm2k5UY6AE9upyOQMBvh34iPqQ/sXxCr2moJhN7Hhwen/wCse1aC6tqWl6UNN/sea5W1TdGHVlikU8g+gPJ55BzWB4s8J3etaYdUtbVIpk/exyLgEE9UIA6HHHHv3r18JipOf7zZ7f12OCthoqnsb95AsUI+zxIybugOW/L3oqz8HJX1myiN380tujKit1DDGc/maK9SWJ9m+Wx5MqVmUfilLJY6xZ6uy5SJvKmJ/ut0J/EY/GmXsun65sknu0iN5uDKrbNx+pBG4k5685I4rpvippqXWm3EUSCXfF0x3HI/OvCdJ1p9Klazu0aWzY490/8A1etLG4TnS5TswOKSvGR1lj4YeyRbmTT0ktVkZZHLBgBnB3AHI/Gp7DxZYeH7m2tJEW50/wC0AyJKu7ylwRlR7E/lmus8FeJtGvdNe2vLhrpWU7G3bZFB6rwRuyK5Pxd4bsr5IdM0a08672mTzQG3kdgV3Y/T0968GF1VtiD2ZVXKNoHrVgdI1u0t5bWK1SOcKFdGCg59Dj61Xm8N6tdXHlhoJZY0YxFZUG5VOCeSP8TivFvD2i6xb6XcLDeSpdQ3CgWJcqSRkE89COK62bx5qttbQQrYix1CI/vELMCcY7Zxzz2rKtQpTk1DVeRVOM1/wTqYFSe0MOmLL9pCP55LALtIC+vTn+VZE7XVjdrFe6crqsOwBrgIeepKsNw78YzzXTxwtf6XbaoutLZJPCDdQLgpznOVyM579Tn868819NLs7wTSXou9v3flbbuz0wev5etPBYarKpZa/kZVq0FFm58KTMNVzEWVvNlmIxwAQcnpxyR+dFdJ4e0ief4aeJJ7ZhbaveWbMnlD/VhVJWNc9zyCf9r2FFfVyy+pUSmup87OtByabtYuTNHc2bxynJIJya+dfHGnXFnqE0jp8rMW+Xt/9avZ7m/kiLYztI4Fcfq4t9Ys2guIyDzhx1FKu5YdxXQVK1S76njMd3c20xe3lZMHsa27DxnrFuVzKXx3PWm+JdCbTZseajq3KkDB/GsLbhqtxhNaq5tCrKOiZ3tl8QrxJjNLaq8rHJkKgseMdahvPF63D+ZNpqSuRjLYOfzNcrFIgjywPFS2775PkBU+uaX1KitUh/XKt7HRTeKdYmhEEW22iAxsxjA+nat34f6Vc6rqK3lyXe3hPzyOep/ur/X2o8A+CI9WX7dqd0TbqeIYuC31Pp9K9StbWCBIrK1iSCFOFVRgCtoULRutjKpiG3Znb+AomIIPCMSWyP4QMn8MA0Vn+JdVPhf4ba3q0KF5lsmgix/C8g27vwBP50V7GHlGjBRZ5s6cqsm0f//Z', 0),
(3, 3, 'Sprite', 'Bebida sin alcohol', 1, '80', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wAARCAAtAC0DASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD7LoxQOlFAHlX7S99bp4NtNKOr3Gm3N5dqyNby+W5RB8xz6ZZB9SK7P4a3UF34E0cwXT3Xk2kcEkrtuZnjUIxY9zkHnv1r50+J+tyeKvG+oXd1+6htLl7G0iZsbY4XIZiPVnyfoFHau8+Auvvaa8fDxZZba+jaZNrZ8uRByfoyjn3UetfPwzuUsw+rWfJt8/8Ag/5HxdPiJPPfqv2GuX57p/Pb7j3HApCKWkNfQH2go6UHpQOlB6UAfHGv+DNBm8Waxr+pz2yva63eTGG6G+OYG4kOCg5YdO4HPPGa674Lad4bPxl0/VdD2Ru1pMrxqiooyrFiip8oXOD6847VgeLNO06XxfqsF+7lTq16WG8gH98xHT2Ndf8AAnS9Nh+IVtLYKQYYJ/4iflwo7+7V5KzupUxCTbu/d+V/U+Aw+czWOhhbfaPomkNLSGvWPvxR0opAeKM0AfE/jO/vLrxbqV3cwtCJNTupORgDMhwo+gAzXoP7PmoLB8R7K2hAb7VbzxP7DaJM/nGB+NdT45+BdprHiLUdbtfEc9kb2Uy+Q1qJFjYnLYO4HBOeO2a2/hP8IrLwV4hl11tcutUna38mKOSJUSLJBZgATljjHsCa+SpZRiljlWlayd7+R8LTyDGPNI4mVklK/TVHqlIaM0GvrT7o/9k=', 0),
(4, 4, 'Coca Cola', 'Bebida sin alcohol', 1, '80', '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', 0),
(5, 5, 'Dry Martini', 'Trago', 1, '120', 'iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAOVBMVEXz9Pa5vsq2u8jN0dnV2N/o6u7w8fTi5OnFydO+ws3f4ee6v8vY2+H29/jy9Pbu7/LJztbCx9HR1ty/NMEIAAAC8ElEQVR4nO3b67ZrMBiFYaSh1HHd/8XuFap1SFolXb7s8T4/18EwOyNCiSIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACryrezAy2kulR+lVl6dqip7Jr412Zyeizj7yjODjYqvhRQTMQm/1rC/OxsvapIht3xehDeN1lIOBSrtt+ZW+t1Kh02GrciEvaDNLl4Ph1e+hqvEk4Z94SZ580WchJGJNyHhH/JlrDR+uC+iU6Yqf7c2JXNga0KTlj/xOP5ujuwdpabML0mz1VXUu7eqtyEP5OAvysdvXerYhMWs4C/a+e9uyg1YXVdXh7sXTtLTagXFcaJ2rlVqQmXgzSOu5f76J5shSasylXC/NVJUbknW6kJLx8lNPNu6WhRaMKPRmmtzB+7WpSasNk+09TjmdPeotSEVbfs0HW7LFXjh2FvUWrC1Z1F1yCt1aRtW4tiE0ZqPk4dp4NUzYaypUW5CaNuGtExjdSLz8HSouCEjRqvnuLcceE/b9D+UQhOGFWZys093e7S2IfoqkFbi5ITRv1NDN24ds7SoKVF4QlfsTa4bjHchOmPI+AiYrgJXQ0uB2qoCWt3g4sWQ034qsF5i4EkbBY3ol43OGsxjIT6luvp7NG+DfhsMYSElc7jpHteAL85BhcthpBQ38zPny1uadD8x3C9JT+habD/RXdfu21rsP822fy5/IR9g/GjxXpjg+ZSKoiEY4OPFrc2GEzCR4O9XL87D4aWcNrgEHFzvkASzhv8UAAJVw3+dwkPNRhAwoMNBpDwYIPiEx5uUHzCww1KT1htX7qEmnD9/SEJSXhutgEJSUjC8/lOKPs+jfla7ajh/qPUhP6Q8C+RcJdKUML7W0HK75vA9+/hrmenM8bHgr/y7pqS8O7a43nEb7x/6Pvo3iddPa3njYx3SKMoO37rwu4mo8LIPJB4fLG2lggZoz3d5l6PQuPWahHTzEgXF79KQQUCAAAAAAAAAAAAAAAAAAAAAAAAAAAAp/gHLTI30QIHnooAAAAASUVORK5CYII=', 0),
(6, 6, 'Mojito', 'Trago', 1, '120', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISERUTEhIVFRUWGBUXFRUVFRUYExcVFRUXFxUXFRcYHSggGBolGxYVITEhJykrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGi0lICUtLTcrLS0rLS0rLS0tNS0tLS0tLS4tLS0tLS0tLS0vLSstLS0uLTAtMC4tLystLSstLf/AABEIASIArgMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAUCAwYBB//EADoQAAIBAgMFBQYFAwQDAAAAAAABAgMRBCExBRJBUWEGcYGRsRMiMqHB8CNictHhFDNSJEJT8QdDgv/EABkBAQADAQEAAAAAAAAAAAAAAAABAgMEBf/EACoRAQEAAgEDAwIFBQAAAAAAAAABAhEDBCExEhNBBSIyUeHw8WFxkbHR/9oADAMBAAIRAxEAPwD7iAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGMqkU7NpN6JtXItk8jIAEgAAAAAAAAAAAAAAAAAAAAAHkpJK7yS4npVdocZCnSe /dWcuts0upny8k48LlV PC55TGPcVj1NWpysuMlrb8t1p18uaqKOMoSm6acJNaq6nK35m7t JxmK7SV8RKvRhu045wVRtqUZK0pXlaz93eXgUkaDp0lXgtydFXlF576bikrrVyve7zST7zw Xly5bvLy93i6D0497r9/L67hcS4SWbcHaLi3fdbdlJXztfK3UvDgtg7WVenG6lB1IrXWEnmln3p3O02biPaU1J65qX6ouz9Dr nc1u O39Pzn nmdXxXHukgA9VxAAAAAAAAAAAAGFWoopybslqBmRMbtGFJXbu S1/grMXtlyuoe6rP3n8XguBW0sO5yW4m9b7991dSly7dmkw15WU9tTupbq3W3ZLOTtrdljQ2nSk0k7N88vAr50orJ2bVopLJ820n6FbtjAzheSejTTWWj1a46/Mt8I7W6dZWqqKuz5F2r248RVnGNRxjTb/2uzV1FyX TTv0eVjssTtKpUw7jGyleyu3ZJrN82l73yKjA9n6CS/Ee/ZK8ox3Xu6LoeV1fr58/Rh4n9fNet9Py4unnucnn4/6p6Oz4whuqO65KU2m7uLcWk0lrdwTtdcc8zRtOjCdOnTt7rtNtRe62rNvnu8ujXedFhdmKnD2Wqa1ybSct5fNpdySKTa1GfwS3luwipShD8K0bbq0Wedrt2u3qefz8HJx6yy/h6fT9Rhy5WS P3tX7Pr1faus3eE52s GiVrZLKyt9v6r2YnenN8HO/i4RuvM c18NTp0aVK8Y1JNST301NRbcbx13r2W8 B9A7GRth3l/7Knqb9D36mf2ri pavDufnpfAA994AAAAAAAAAAABC2w37J242uTSq2lNybjdpLlxyIs3Ey6qkoRtNOL/nmmW0aeSc5f9cCPDCpLJ5 BKne1sr2Ixmotld3bDE1k3m1dJNZcndPlwZW4yrObc8rXvu5q3DPmT4xbd3q8rmFXCykrZfUmbR2VcMPvSi7XybVrv4rp2XPUk4ilvXipJOOTi72V9eT0N Ewrgs0pa8WvOx5UwKe83F70ne99E9d0yuHnXy1nJvW74QcHilUlKjCLe77zmt3dVsuL9L6mO1dnOrTlB/E1mouW7zjmrNq6XzRZ4PCwhH3Vuvja2aWdm t38uRjDDNS3opO 8s3kovRL9 LI9veOsp5X92Y5erG Hy/Y y97ERhuK6ee7FRUYx3ZXy14fdkfQ9jKUJXbylUlGK/wDt3l0StmSaGylGUpq28 L1te 7fjZihs6UGpb1 MrZatyyz8Th6bpeTj6i5Wdtdr/h2dV1mPNx626kEPAVpNWlm ZMPVeSAAAAAAAAAAAUW2q7hUVlqrvzL057tIvxIPo/UL4SXLVFV0lxaX3Y8/ruaNO/7qNVWaSItaTjlrf/AF0Lv55q/guLI K2rK27FeL1INk5X4GdSC7u9sr6mns4yt0Mc5a5L6kyrXjJRftEs81vLS3C/p0KeUlbJ6Gib5Mpln2a4dPLV9h6yjH 5d9ZJt5a5ZGuvtGnDee85PmrvwsskUm845vTuu/4NWJqOSus23zy 8tSl5dTs0nRzLLvey7w 3oyydN355eF88uBu2ni3CCiuKXvaP5feZz Dh7yXFst9sPNdyRHT8mWW7krz8GGGUmLqdlf2YPnFEsi7K/s0/0r0JR1POvkAAQAAAAAAAAFD2l KHj9C KXtGvgfeF8PxK1v3URapJ/2keUbkV1YdkenLM8rVG7O RnVjbMwULvNaGdbYyW7aXz RhKF30z6sl1MK3no9PI0ezaVmnfpx6cjHJvLNbQ6t961rrhe3mFBwTzzb/g3bsr5wazXVeayNsqN7XM8MfVtrlyakjzZVJ793r9CdtLNmrAwszfjFdnVx4enHUcfLyerPbrNmq1Gn iPoiSacIrU4L8sfQ3Grzb5AAEAAAAAAAABTdpPhj3v6FyU/aX4Iv81vNP9gvx/iinTyNE5G6OhpkiK7IwnBniRIpwu nHUlQoPJr765ldK3k12Q96 a  fgbINWu198Da4Wf7GqUCLjEzka8Q1lZZffM0OP3fMzm89G30z9DyUunyJxml7WzDrM21tUeUD2s813l45sr9zrqHwx7l6GZjT0XcjIOcAAAAAAAAAAAqO06/BT5SX1RblX2lX nl3x9Qvhfuigou6PGjyhojOxLpt7sFUtb743N6rLXTgk C4mqVNhU/IjSLqttXE5O1vDTMhSfG9uZvjTyzyZhKmNIlkaYx6vvvnmN zPasbcb5Z8u7qR98it8O8TqMxWl7ytzRroSFLOrFfmXqTPDHLH7tu5R6AHIAAAAAAAAAAAV 31/p5931LAhbZjehUX5QnHy5bCv3TaQ8JPIlwdyze3ukJ5GyCTy /FcTVSXcbKdVRebWXIhTaRKjlnrwVs0vDLma6t913tZWsraN66m lLefxRtqRcViVlmms7q dtNEQTe1djIu37L7uV7gWs7uLv4LPLTPyZDmkQ7MLZGVBG7Z8b14fqXqaoMkbHd68O8t8Mc/l2YAIcgAAAAAAAAAABH2gr0p/pl6MkGuuvdl3P0A4DDyN6myPSWbJMYEuuxhOUuZ4pz/AMn55Zm908jW6avr xB2LTSzur6Pi146mKa 7m2rHL4r93J8SKteL9PPgQvNN1SfXMyklzuFTXHLq19s93Bs7sEStgq Ij4v5GicbIl9mo3rp8lL9vqWZ5ZfbXXgAhygAAAAAAAAAAHklkegD5zRdpyXV pNgyNiYWr1FynL1ZLpotXV6txnGWVjb7OKenDLv hrgs9G/voWODpPiueq05FWdqrqwu9NeWSSy4eDzNcaTXBPgy/dCzvxfDLK1rWRjPDJvLy43CZnYp3GNuok RNrYbLT74kd0LEaX9xGraE/spH8WT5RfzaK vGyLnsnT OXcizPK9nQgAhiAAAAAAAAAAAAAOI2rTtianffzszbRgZdoVbFPrGL h7ReRb4a43slYSKTJ1N2XX6EKgrljTprV5feRVFZez4vuMY0n4fMlxmnkFTyCNolWHcyrrxZczRXYymEyqXEI6DsvH8JvnL0KHEo6Ts7G1BdW39PoTVclmACFQAAAAAAAAAAAABzHaij LCXONvJt/Ui0S37S0Lxg1wfyZU0S0XlS6ESUm/8n8v2IlFllQgQVgt5u7u /8Ag9pynd3lYmwSNNeCYRtpqYiSV8mRMRW3jfVRG3FcG1RtCR1exIWoQ7jlNpW3suZ2eDhu04R5RivJIVFrcACEAAAAAAAAAAAAACq7R19ykpcN5J9zvn52KGlWvodPtekpUKiaveMvTXwPnOAxrsTEyuqpTzJ Hq5nPYas5aFrh/aLSITtcqdlcj1a5jGrUtnSbI9ajUee40Qgr1iNUxFlcwr0prVW72VeIx25qr9OAQx9pv1YR5yivNn0BHzrstN1cbHlFOVvQ igAAAAAAAAAAAAAAAAY1I3TXNNeZ8npUHGpUj/AIykvmfWjg9q7OqPETq04q0npf558WBhgItM6nAM53D1lF /Fx70y5wmJi/hlHzQF7ATI1KrLp5o9q1XbMCs2o8jj9oUpN5I63F4umvikvO5V4vEynlRpt9bbq82BH/8fYZ 2qza0il5v/s7w5/sfh3CnNTXvuV5O97p6eWZ0AAAAAAAAAAAAAAAAAGNR2T7mVPsi1rLIj yAhqmYvCwesIvvSJ3sj1UwK/ gp/8cfJD gp/8cfJFjuDcAgKhFaRS7kg6ZNdM89kBp2bC0n1X1LIjUYWZJAAAAAAAAAAAAAAAAA8aPN0yAGNhumQAx3RYyAGNhumQAxSMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//Z', 0),
(7, 7, 'Margarita', 'Trago', 1, '120', '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', 0),
(8, 8, 'Frozen Margarita', 'Trago', 1, '222', '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', 0),
(9, 9, 'Locro', 'Plato argentino', 3, '110', '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', 0),
(0, 16, 'Paloma', 'Trago con tequila y gaseosa de pomelo', 1, '110', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISERUTEhIVFRUWGBUXFRUVFRUYExcVFRUXFxUXFRcYHSggGBolGxYVITEhJykrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGi0lICUtLTcrLS0rLS0rLS0tNS0tLS0tLS4tLS0tLS0tLS0vLSstLS0uLTAtMC4tLystLSstLf/AABEIASIArgMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAUCAwYBB//EADoQAAIBAgMFBQYFAwQDAAAAAAABAgMRBCExBRJBUWEGcYGRsRMiMqHB8CNictHhFDNSJEJT8QdDgv/EABkBAQADAQEAAAAAAAAAAAAAAAABAgMEBf/EACoRAQEAAgEDAwIFBQAAAAAAAAABAhEDBCExEhNBBSIyUeHw8WFxkbHR/9oADAMBAAIRAxEAPwD7iAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGMqkU7NpN6JtXItk8jIAEgAAAAAAAAAAAAAAAAAAAAAHkpJK7yS4npVdocZCnSe /dWcuts0upny8k48LlV PC55TGPcVj1NWpysuMlrb8t1p18uaqKOMoSm6acJNaq6nK35m7t JxmK7SV8RKvRhu045wVRtqUZK0pXlaz93eXgUkaDp0lXgtydFXlF576bikrrVyve7zST7zw Xly5bvLy93i6D0497r9/L67hcS4SWbcHaLi3fdbdlJXztfK3UvDgtg7WVenG6lB1IrXWEnmln3p3O02biPaU1J65qX6ouz9Dr nc1u O39Pzn nmdXxXHukgA9VxAAAAAAAAAAAAGFWoopybslqBmRMbtGFJXbu S1/grMXtlyuoe6rP3n8XguBW0sO5yW4m9b7991dSly7dmkw15WU9tTupbq3W3ZLOTtrdljQ2nSk0k7N88vAr50orJ2bVopLJ820n6FbtjAzheSejTTWWj1a46/Mt8I7W6dZWqqKuz5F2r248RVnGNRxjTb/2uzV1FyX TTv0eVjssTtKpUw7jGyleyu3ZJrN82l73yKjA9n6CS/Ee/ZK8ox3Xu6LoeV1fr58/Rh4n9fNet9Py4unnucnn4/6p6Oz4whuqO65KU2m7uLcWk0lrdwTtdcc8zRtOjCdOnTt7rtNtRe62rNvnu8ujXedFhdmKnD2Wqa1ybSct5fNpdySKTa1GfwS3luwipShD8K0bbq0Wedrt2u3qefz8HJx6yy/h6fT9Rhy5WS P3tX7Pr1faus3eE52s GiVrZLKyt9v6r2YnenN8HO/i4RuvM c18NTp0aVK8Y1JNST301NRbcbx13r2W8 B9A7GRth3l/7Knqb9D36mf2ri pavDufnpfAA994AAAAAAAAAAABC2w37J242uTSq2lNybjdpLlxyIs3Ey6qkoRtNOL/nmmW0aeSc5f9cCPDCpLJ5 BKne1sr2Ixmotld3bDE1k3m1dJNZcndPlwZW4yrObc8rXvu5q3DPmT4xbd3q8rmFXCykrZfUmbR2VcMPvSi7XybVrv4rp2XPUk4ilvXipJOOTi72V9eT0N Ewrgs0pa8WvOx5UwKe83F70ne99E9d0yuHnXy1nJvW74QcHilUlKjCLe77zmt3dVsuL9L6mO1dnOrTlB/E1mouW7zjmrNq6XzRZ4PCwhH3Vuvja2aWdm t38uRjDDNS3opO 8s3kovRL9 LI9veOsp5X92Y5erG Hy/Y y97ERhuK6ee7FRUYx3ZXy14fdkfQ9jKUJXbylUlGK/wDt3l0StmSaGylGUpq28 L1te 7fjZihs6UGpb1 MrZatyyz8Th6bpeTj6i5Wdtdr/h2dV1mPNx626kEPAVpNWlm ZMPVeSAAAAAAAAAAAUW2q7hUVlqrvzL057tIvxIPo/UL4SXLVFV0lxaX3Y8/ruaNO/7qNVWaSItaTjlrf/AF0Lv55q/guLI K2rK27FeL1INk5X4GdSC7u9sr6mns4yt0Mc5a5L6kyrXjJRftEs81vLS3C/p0KeUlbJ6Gib5Mpln2a4dPLV9h6yjH 5d9ZJt5a5ZGuvtGnDee85PmrvwsskUm845vTuu/4NWJqOSus23zy 8tSl5dTs0nRzLLvey7w 3oyydN355eF88uBu2ni3CCiuKXvaP5feZz Dh7yXFst9sPNdyRHT8mWW7krz8GGGUmLqdlf2YPnFEsi7K/s0/0r0JR1POvkAAQAAAAAAAAFD2l KHj9C KXtGvgfeF8PxK1v3URapJ/2keUbkV1YdkenLM8rVG7O RnVjbMwULvNaGdbYyW7aXz RhKF30z6sl1MK3no9PI0ezaVmnfpx6cjHJvLNbQ6t961rrhe3mFBwTzzb/g3bsr5wazXVeayNsqN7XM8MfVtrlyakjzZVJ793r9CdtLNmrAwszfjFdnVx4enHUcfLyerPbrNmq1Gn iPoiSacIrU4L8sfQ3Grzb5AAEAAAAAAAABTdpPhj3v6FyU/aX4Iv81vNP9gvx/iinTyNE5G6OhpkiK7IwnBniRIpwu nHUlQoPJr765ldK3k12Q96 a  fgbINWu198Da4Wf7GqUCLjEzka8Q1lZZffM0OP3fMzm89G30z9DyUunyJxml7WzDrM21tUeUD2s813l45sr9zrqHwx7l6GZjT0XcjIOcAAAAAAAAAAAqO06/BT5SX1RblX2lX nl3x9Qvhfuigou6PGjyhojOxLpt7sFUtb743N6rLXTgk C4mqVNhU/IjSLqttXE5O1vDTMhSfG9uZvjTyzyZhKmNIlkaYx6vvvnmN zPasbcb5Z8u7qR98it8O8TqMxWl7ytzRroSFLOrFfmXqTPDHLH7tu5R6AHIAAAAAAAAAAAV 31/p5931LAhbZjehUX5QnHy5bCv3TaQ8JPIlwdyze3ukJ5GyCTy /FcTVSXcbKdVRebWXIhTaRKjlnrwVs0vDLma6t913tZWsraN66m lLefxRtqRcViVlmms7q dtNEQTe1djIu37L7uV7gWs7uLv4LPLTPyZDmkQ7MLZGVBG7Z8b14fqXqaoMkbHd68O8t8Mc/l2YAIcgAAAAAAAAAABH2gr0p/pl6MkGuuvdl3P0A4DDyN6myPSWbJMYEuuxhOUuZ4pz/AMn55Zm908jW6avr xB2LTSzur6Pi146mKa 7m2rHL4r93J8SKteL9PPgQvNN1SfXMyklzuFTXHLq19s93Bs7sEStgq Ij4v5GicbIl9mo3rp8lL9vqWZ5ZfbXXgAhygAAAAAAAAAAHklkegD5zRdpyXV pNgyNiYWr1FynL1ZLpotXV6txnGWVjb7OKenDLv hrgs9G/voWODpPiueq05FWdqrqwu9NeWSSy4eDzNcaTXBPgy/dCzvxfDLK1rWRjPDJvLy43CZnYp3GNuok RNrYbLT74kd0LEaX9xGraE/spH8WT5RfzaK vGyLnsnT OXcizPK9nQgAhiAAAAAAAAAAAAAOI2rTtianffzszbRgZdoVbFPrGL h7ReRb4a43slYSKTJ1N2XX6EKgrljTprV5feRVFZez4vuMY0n4fMlxmnkFTyCNolWHcyrrxZczRXYymEyqXEI6DsvH8JvnL0KHEo6Ts7G1BdW39PoTVclmACFQAAAAAAAAAAAABzHaij LCXONvJt/Ui0S37S0Lxg1wfyZU0S0XlS6ESUm/8n8v2IlFllQgQVgt5u7u /8Ag9pynd3lYmwSNNeCYRtpqYiSV8mRMRW3jfVRG3FcG1RtCR1exIWoQ7jlNpW3suZ2eDhu04R5RivJIVFrcACEAAAAAAAAAAAAACq7R19ykpcN5J9zvn52KGlWvodPtekpUKiaveMvTXwPnOAxrsTEyuqpTzJ Hq5nPYas5aFrh/aLSITtcqdlcj1a5jGrUtnSbI9ajUee40Qgr1iNUxFlcwr0prVW72VeIx25qr9OAQx9pv1YR5yivNn0BHzrstN1cbHlFOVvQ igAAAAAAAAAAAAAAAAY1I3TXNNeZ8npUHGpUj/AIykvmfWjg9q7OqPETq04q0npf558WBhgItM6nAM53D1lF /Fx70y5wmJi/hlHzQF7ATI1KrLp5o9q1XbMCs2o8jj9oUpN5I63F4umvikvO5V4vEynlRpt9bbq82BH/8fYZ 2qza0il5v/s7w5/sfh3CnNTXvuV5O97p6eWZ0AAAAAAAAAAAAAAAAAGNR2T7mVPsi1rLIj yAhqmYvCwesIvvSJ3sj1UwK/ gp/8cfJD gp/8cfJFjuDcAgKhFaRS7kg6ZNdM89kBp2bC0n1X1LIjUYWZJAAAAAAAAAAAAAAAAA8aPN0yAGNhumQAx3RYyAGNhumQAxSMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//Z', 0),
(0, 22, 'bu', 'but', 2, '1515', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wAARCAAmAB0DASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4Tl5ufo6erx8vP09fb3Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3Pn6/9oADAMBAAIRAxEAPwD7LqK9uYbOzmu7hwkMEbSSMeiqoyTQr5/I3xn8aGfHmtaHa6LZzR2MqGCM27u00LKCG3BwM5z6dh1IzQIPx2g1v4ZXmmxeH9SstU1FFt1YxmWAbsb8shLKRhlKlc/Xmp54c/I5K/8AX3/I0VGo4c6i2u/9bHqPwnKenePLm7sxYvp11FukgiklDmaAMBv46EEgEc9ep5x6HXwz8L9bm8NeMfDuqpGyIJI0ncTEhIy6xycB8HIKghtzLznOFr7mrOjWVWPMu7LxFB0ZJd0mfOH7Ylvo9pqPhzU4VkXW5XdGWCIF5YEUkFmJAAViByy5DsM14bZJb6nbtPNp7W0EkiKIt8cM0ryEKFG1QYyQxO4OQVI3DkFfoD9sHw/NJbaH4titpJ4LB2t73YrMUjfG18dMA7sk44OCcEgKaAm3F5fWF1eWkloxjZ0N2ro0ZUgL6DkNnPCgHA5BrzczqTpN1YrZb/Ozep6eXRhUpqm3vLVfLT5GNqAh0dzZfINRFqsc0QdTvlyigxlRgjjcqnaVCuMdK7PCd7falp8l/ciP7PPK72ZXqYdx2E/VcEdev4D5W8PfD26IniuzFnZRxGdMcRzzRJ5ccpYB9kOBjGAvzf7W77X1xo9hb6XpNpplpEkVvawpDEiAhVVQAAMknGB3Jrqy6M/q6qVPilq77X4HFmFRSrezh8MdFb8fxJrmCC5geC5hjmhcYeORQysPQg9a5DXfhl4N1fVV1S60DT5bkFMZD8pCDCjCkdOODke1FFd6bWxwtJmG1BN0MJs41iX/nkcYHYDIxxjvVu0N08fmSyQkNygWMjA9eTRRSGf/2Q==', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajes`
--

CREATE TABLE `puntajes` (
  `id_jugador` int(11) NOT NULL,
  `juego` varchar(50) NOT NULL,
  `puntaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puntajes`
--

INSERT INTO `puntajes` (`id_jugador`, `juego`, `puntaje`) VALUES
(1, 'Anagrama', 25),
(1, 'Adivina', 0),
(1, 'AdivinaMasListado', 0),
(1, 'AgilidadaMasListado', 3),
(1, 'Agilidad', 0),
(1, 'CrucigramaDigital', 0),
(1, 'PPT', 7),
(2, 'Anagrama', 0),
(2, 'Adivina', 0),
(2, 'AdivinaMasListado', 0),
(2, 'AgilidadaMasListado', 0),
(2, 'Agilidad', 0),
(2, 'CrucigramaDigital', 0),
(2, 'PPT', 0),
(3, 'Anagrama', 0),
(3, 'Adivina', 0),
(3, 'AdivinaMasListado', 0),
(3, 'AgilidadaMasListado', 0),
(3, 'Agilidad', 0),
(3, 'CrucigramaDigital', 0),
(3, 'PPT', 0),
(7, 'Anagrama', 0),
(7, 'Adivina', 0),
(7, 'AdivinaMasListado', 0),
(7, 'AgilidadaMasListado', 0),
(7, 'Agilidad', 0),
(7, 'CrucigramaDigital', 0),
(7, 'PPT', 0),
(1, 'Tateti', 11),
(2, 'Tateti', 2),
(3, 'Tateti', 0),
(7, 'Tateti', 0),
(6, 'Anagrama', 0),
(6, 'Adivina', 0),
(6, 'AdivinaMasListado', 0),
(6, 'AgilidadaMasListado', 0),
(6, 'Agilidad', 0),
(6, 'CrucigramaDigital', 0),
(6, 'PPT', 0),
(7, 'Anagrama', 0),
(7, 'Adivina', 0),
(7, 'AdivinaMasListado', 0),
(7, 'AgilidadaMasListado', 0),
(7, 'Agilidad', 0),
(7, 'CrucigramaDigital', 0),
(7, 'PPT', 0),
(8, 'Anagrama', 0),
(8, 'Adivina', 0),
(8, 'AdivinaMasListado', 0),
(8, 'AgilidadaMasListado', 0),
(8, 'Agilidad', 0),
(8, 'CrucigramaDigital', 0),
(8, 'PPT', 0),
(9, 'Anagrama', 3),
(9, 'Adivina', 0),
(9, 'AdivinaMasListado', 0),
(9, 'AgilidadaMasListado', 3),
(9, 'Agilidad', 0),
(9, 'CrucigramaDigital', 0),
(9, 'PPT', 0),
(10, 'Anagrama', 0),
(10, 'Adivina', 0),
(10, 'AdivinaMasListado', 0),
(10, 'AgilidadaMasListado', 0),
(10, 'Agilidad', 0),
(10, 'CrucigramaDigital', 0),
(10, 'PPT', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'socio'),
(2, 'mozo'),
(3, 'bartender'),
(4, 'cervecero'),
(5, 'cocinero'),
(6, 'pastelera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `id_sector` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`id_sector`, `nombre`) VALUES
(1, 'barra_tragos'),
(2, 'barra_choppera'),
(3, 'cocina'),
(4, 'candy_bar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `cocina`
--
ALTER TABLE `cocina`
  ADD PRIMARY KEY (`id_cocina`);

--
-- Indices de la tabla `comandas`
--
ALTER TABLE `comandas`
  ADD PRIMARY KEY (`id_comanda`),
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_mozo` (`id_mozo`),
  ADD KEY `id_estado_pedido` (`id_estado_pedido`);

--
-- Indices de la tabla `comanda_detalles`
--
ALTER TABLE `comanda_detalles`
  ADD PRIMARY KEY (`id_comanda`,`id_producto`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `fk_id_roll` (`id_rol`);

--
-- Indices de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `estadomesa`
--
ALTER TABLE `estadomesa`
  ADD PRIMARY KEY (`id_estadomesa`);

--
-- Indices de la tabla `estado_pedidos`
--
ALTER TABLE `estado_pedidos`
  ADD PRIMARY KEY (`id_estado_pedido`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logueos`
--
ALTER TABLE `logueos`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id_mesa`),
  ADD KEY `fk_id_setor` (`id_sector`),
  ADD KEY `fk_estado_mesa` (`id_estado_mesa`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_cocina` (`id_cocina`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id_sector`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comanda_detalles`
--
ALTER TABLE `comanda_detalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `logueos`
--
ALTER TABLE `logueos`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comandas`
--
ALTER TABLE `comandas`
  ADD CONSTRAINT `comandas_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesas` (`id_mesa`),
  ADD CONSTRAINT `comandas_ibfk_2` FOREIGN KEY (`id_mozo`) REFERENCES `empleados` (`id_empleado`),
  ADD CONSTRAINT `comandas_ibfk_3` FOREIGN KEY (`id_estado_pedido`) REFERENCES `estado_pedidos` (`id_estado_pedido`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_id_roll` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `logueos`
--
ALTER TABLE `logueos`
  ADD CONSTRAINT `logueos_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);

--
-- Filtros para la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD CONSTRAINT `fk_estado_mesa` FOREIGN KEY (`id_estado_mesa`) REFERENCES `estadomesa` (`id_estadomesa`),
  ADD CONSTRAINT `fk_id_setor` FOREIGN KEY (`id_sector`) REFERENCES `sector` (`id_sector`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_cocina`) REFERENCES `cocina` (`id_cocina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
