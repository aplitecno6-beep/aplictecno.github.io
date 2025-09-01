-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2025 a las 22:11:18
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plataforma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `Codigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `Nombres` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `Apellidos` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`Codigo`, `Nombres`, `Apellidos`) VALUES
('AC87720821', 'Administrador', 'Principal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `id` int(7) NOT NULL,
  `Video` text COLLATE utf8_spanish2_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Titulo` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `Tutor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `Descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `Adjuntos` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`id`, `Video`, `Fecha`, `Titulo`, `Tutor`, `Descripcion`, `Adjuntos`) VALUES
(1, 'https://youtu.be/yP5PzaB7WEw?si=47C8-FETLjP1J6KB', '2025-05-20', 'ELEMENTOS BASICOS DEL COMPUTADOR', 'JUVENAL CARBONA', '<p>MANGLAR - GIRALDO&nbsp;</p><p>ELEMENTOS BASICOS DEL COMPUTADOR&nbsp;</p><br><p>1. Comprender el proceso histórico de la evolución tecnológica desde los primeros homínidos hasta las primeras civilizaciones.</p><br><br><p>2. Identificar los principales materiales y técnicas utilizados por los seres humanos prehistóricos para fabricar herramientas e instrumentos.</p><br><br><p>3. Reconocer el papel de la sociabilidad, el bipedismo, el desarrollo del cerebro y la manipulación manual en el avance tecnológico humano.</p><p><strong>ACTIVIDAD</strong></p><p><strong><br></strong></p><p>1. ¿Cuál es el objetivo principal del curso de Alfabetización Tecnológica?</p><br><br><p>2. ¿Por qué es útil saber utilizar una computadora en la vida diaria?</p><br><br><p>3. Menciona tres funciones principales que realizamos comúnmente con una computadora.</p><br><br><p>4. ¿Qué son los dispositivos de entrada? Da dos ejemplos.</p><br><br><p>5. ¿Qué función tiene la tecla “Enter” en el teclado?</p><br><br><p>6. ¿Para qué se utiliza la tecla “Impr Pant” en una computadora?</p><br><br><p>7. ¿Qué es un mouse y para qué sirve el botón derecho?</p><br><br><p>8. ¿Qué dispositivo permite visualizar la información generada por la computadora?</p><br><br><p>9. ¿Cuál es la diferencia principal entre un CD y un DVD?</p><br><br><p>10. ¿Qué es una memoria USB y qué ventajas ofrece?</p><br><br><p>11. Menciona los pasos básicos para encender una computadora correctamente.</p><br><br><p>12. ¿Qué pasos se deben seguir para apagar una computadora de forma segura?</p><br><br><p>13. ¿Cuáles son las recomendaciones principales para cuidar una computadora?</p><br><br><p>14. ¿Qué cuidados se deben tener al limpiar el teclado de una computadora?</p><br><br><p>15. ¿Por qué es importante contar con un antivirus instalado en la computadora?</p>', 'elementos-basicos-manual-1-final_(1)_(1).pdf,');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idc` int(17) NOT NULL,
  `id` int(7) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Comentario` text COLLATE utf8_spanish2_ci NOT NULL,
  `Adjunto` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Tipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Codigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id` int(7) NOT NULL,
  `Privilegio` int(1) NOT NULL,
  `Usuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Clave` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `Tipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Genero` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `Codigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id`, `Privilegio`, `Usuario`, `Clave`, `Tipo`, `Genero`, `Codigo`) VALUES
(1, 1, 'Administrador', 'NXVlQVZFeTRBV3pTL1R5WEFGY2dMdz09', 'Administrador', 'Masculino', 'AC87720821'),
(2, 4, 'LUCASUSUGA', 'NjVRdGcvOUUzZDBESmd4eElzSW5mdz09', 'Estudiante', 'Masculino', 'EC62969032'),
(3, 4, 'TOMASEUSE', 'QXlWOXJsUVJEUDBnNExuK0FjSlp4UT09', 'Estudiante', 'Masculino', 'EC92437493'),
(4, 4, 'luids13', 'NjVRdGcvOUUzZDBESmd4eElzSW5mdz09', 'Estudiante', 'Masculino', 'EC13139674'),
(5, 4, 'yulieth', 'NjVRdGcvOUUzZDBESmd4eElzSW5mdz09', 'Estudiante', 'Masculino', 'EC85177255');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Codigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `Nombres` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `Apellidos` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `Email` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Codigo`, `Nombres`, `Apellidos`, `Email`) VALUES
('EC13139674', 'luis', 'perez', 'medusa@gmail.com'),
('EC62969032', 'LUCAS', 'USUGA', 'LUCAS@GMAIL.CON'),
('EC85177255', 'Yulieth', 'Suaza', 'karenmartinez1098@icloud.com'),
('EC92437493', 'TOMAS', 'EUSE', 'TOMAS@GMAIL.CON');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idc`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idc` int(17) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
