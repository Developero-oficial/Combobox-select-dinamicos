-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2018 a las 04:24:31
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tutoriales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas_reproduccion`
--

CREATE TABLE `listas_reproduccion` (
  `id` int(4) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `listas_reproduccion`
--

INSERT INTO `listas_reproduccion` (`id`, `nombre`) VALUES
(1, 'Curso Cómo crear un blog con Php7 y Bootstrap'),
(2, 'Recursos para programadores'),
(6, 'Videoclips programación informática'),
(7, 'Tutorial Php, Mysqli, Poo - Agenda'),
(8, 'Curso de Php y Mysql desde cero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(4) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `correo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`) VALUES
(1, 'jane Doe', 'jane.doe@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(4) NOT NULL,
  `id_lista` int(4) NOT NULL,
  `nombre` varchar(90) NOT NULL,
  `duracion` float NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `id_lista`, `nombre`, `duracion`, `url`) VALUES
(1, 2, 'Tips para responder una entrevista de trabajo de IT ', 34.2, 'https://goo.gl/pmcfSD'),
(2, 1, 'Clase conexión mysqli ', 8.1, 'https://goo.gl/OBketB'),
(3, 1, 'Hacer inyeccion sql a login', 8.09, 'https://goo.gl/ABPiH7'),
(4, 1, 'Crear dashboard HD', 12.44, 'https://goo.gl/XE5zIY'),
(5, 6, '¿Qué es Php?', 1.09, 'https://goo.gl/CtkK2q'),
(6, 6, '¿Qué es Jquery?', 1.09, 'https://goo.gl/4pD6oD'),
(7, 6, '¿Qué es Bootstrap?', 1.07, 'https://goo.gl/YbdL0M'),
(8, 6, '¿Qué es Javascript?', 0.51, 'https://goo.gl/UgsHOk'),
(9, 7, 'CRUD Php orientado a objetos', 14.57, 'https://goo.gl/zhGvny'),
(10, 7, 'Tabla dinámica', 16.44, 'https://goo.gl/j7VvdO'),
(11, 8, 'Sintaxis básica', 16.34, 'https://goo.gl/8YFVGn'),
(12, 8, 'Como hacer login con sesiones 1', 13.44, 'https://goo.gl/8Tpccp'),
(13, 8, 'Como hacer formulario Html y Php 1', 8.43, 'https://goo.gl/oIivmo'),
(14, 8, 'Crear galería de imágenes', 5.25, 'https://goo.gl/9f2wP0'),
(15, 8, 'Programación orientada a objetos', 4.36, 'https://goo.gl/BkUPWb'),
(16, 8, 'Poo y herencia', 6.36, 'https://goo.gl/cHWDMS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `listas_reproduccion`
--
ALTER TABLE `listas_reproduccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `listas_reproduccion`
--
ALTER TABLE `listas_reproduccion`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
