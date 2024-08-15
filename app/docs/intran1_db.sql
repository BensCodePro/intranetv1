-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2024 a las 23:24:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intran1_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas`
--

CREATE TABLE `escuelas` (
  `escuela_id` int(11) NOT NULL,
  `escuela_rgbd` int(11) NOT NULL,
  `nombre_escuela` varchar(255) NOT NULL,
  `nombre_director` varchar(255) NOT NULL,
  `rut_director` text NOT NULL,
  `telefono` int(11) NOT NULL,
  `enlace_encargado` varchar(255) NOT NULL,
  `logo_escuela` text NOT NULL,
  `cant_estudiantes` int(11) NOT NULL,
  `escuela_correo` text NOT NULL,
  `tipo_jornada` varchar(255) NOT NULL,
  `estado_escuela` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `escuelas`
--

INSERT INTO `escuelas` (`escuela_id`, `escuela_rgbd`, `nombre_escuela`, `nombre_director`, `rut_director`, `telefono`, `enlace_encargado`, `logo_escuela`, `cant_estudiantes`, `escuela_correo`, `tipo_jornada`, `estado_escuela`) VALUES
(1, 364646, 'Escuela República de Brasil', 'Vilma', '36367383838', 2147483647, 'Hector..', 'logo_brasilpng', 200, 'correobrasildemstgo.cl', 'Manana', 'Abierto'),
(2, 634636, 'Escuela  Santiago de Chile', 'Jesus', '46477747474', 476747477, 'Daniel', 'logo_eschile.png', 200, 'escchiledemstgo.cl', 'Mañana', 'Abierto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liceos`
--

CREATE TABLE `liceos` (
  `liceo_id` int(11) NOT NULL,
  `liceo_rgbd` int(11) NOT NULL,
  `liceo_nombre` varchar(255) NOT NULL,
  `nombre_director` varchar(255) NOT NULL,
  `liceo_teléfono` int(11) NOT NULL,
  `rut_director` text NOT NULL,
  `logo_liceo` text NOT NULL,
  `enlace_encargado` varchar(255) NOT NULL,
  `liceo_correos` text NOT NULL,
  `cant_estudiantes` int(11) NOT NULL,
  `tipo_jornada` varchar(255) NOT NULL,
  `liceo_estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `liceos`
--

INSERT INTO `liceos` (`liceo_id`, `liceo_rgbd`, `liceo_nombre`, `nombre_director`, `liceo_teléfono`, `rut_director`, `logo_liceo`, `enlace_encargado`, `liceo_correos`, `cant_estudiantes`, `tipo_jornada`, `liceo_estado`) VALUES
(1, 74747, 'Liceo  de Aplicación', 'Hernan', 345454555, '4784874884', 'logo_aplica.jpg', 'Jose', 'aplica@demstgo.cl', 200, 'Mañana, tarde, Noche', 'Abierto'),
(2, 45555, 'Liceo Gabril Gozalez Videl', 'Joani', 373748949, '3838488484', 'logo_videla.png', 'Jonathan', 'ggonzalez@demstgo.cl', 200, 'Mañana', 'Abierto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `lic_id` int(11) NOT NULL,
  `codigo_liceo` int(11) NOT NULL,
  `nombre_liceo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`lic_id`, `codigo_liceo`, `nombre_liceo`) VALUES
(1, 123, 'Liceo de Aplicación'),
(2, 745, 'Liceo Darío Salas'),
(3, 389, 'Escuela República de Uruaguay'),
(4, 567, 'Liceo República de Brasil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fech_crea` datetime NOT NULL,
  `rol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `correo`, `password`, `imagen`, `fech_crea`, `rol`) VALUES
(1, 'Benjude', 'bpremier@demstgo.cl', '123', '#', '2024-08-16 16:05:19', 'Admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD PRIMARY KEY (`escuela_id`);

--
-- Indices de la tabla `liceos`
--
ALTER TABLE `liceos`
  ADD PRIMARY KEY (`liceo_id`);

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`lic_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  MODIFY `escuela_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `liceos`
--
ALTER TABLE `liceos`
  MODIFY `liceo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `test`
--
ALTER TABLE `test`
  MODIFY `lic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
