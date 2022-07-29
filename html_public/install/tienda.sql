-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2022 a las 23:12:56
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

CREATE TABLE `clasificacion` (
  `id_grupo` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `nombre_grupo` varchar(255) NOT NULL,
  `clasehija` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `calificacion` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `sku`, `comentario`, `nombre`, `calificacion`) VALUES
(1, 'GM-AORUS M5', 'Un mouse ideal para todo gamer', '¡Altamente recomendable!', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `corta` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `stock` tinyint(250) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `sku`, `precio`, `corta`, `descripcion`, `stock`, `imagen`) VALUES
(1, 'PRIME Z590-A', '1594.58', 'Tarjeta Madre Asus Prime Z590-A Socket LGA 1200 ATX 4 DRR4 Max 128 GB HDMI DP 3 M.2 3 PCIe 4.0 X16', 'Socket: LGA 1200\r\nForm factor: ATX\r\nMemoria y Slots: 4 DDR4\r\nMáximo de Memoria: 128 GB\r\nPuerto principal de video: HDMI Display Port\r\nPuertos M.2: 3\r\nPuertos SATA: 6\r\nPuertos PCIe: 3 PCIe 4.0 X16', 15, 'PRIME Z590-A.webp'),
(2, 'MFW-B2DN-18NPA-S3', '184.12', 'Ventilador Cooler Master Masterfan MF120 S3 ARGB 120X120X25MM DC V12 27 dBA 1800 RPM', 'Modelo: MASTERFAN MF120 S3 ARGB\r\nTamaño: 120X120X25 mm\r\nVoltaje: 12VDC\r\nRuido: 27 Dba\r\nVelocidad: 1800 RPM', 35, 'MFW-B2DN-18NPA-S3.webp'),
(3, 'EXPLORER JUSTIC', '1987.43', 'Gabinete IN WIN EXPLORER JUSTICE Armable Mini Torre M-ATX/M-ITX Sin Fuente 3 Ventiladores ARGB', 'Con ventana: Si\r\nTamaño: Mini Torre\r\nMB compatible: MICRO-ATX/MINI-ATX\r\nFuente: NO\r\nColor: Multi color * 3 ventiladores ARGB', 21, 'EXPLORER JUSTIC.webp'),
(4, '06G-P4-2062-KR', '7697.00', 'Tarjeta de Video EVGA GeForce RTX 2060 SC 6GB GDDR6 1 DP 1 HDMI PCIe 2.1 Gamer', 'Modelo: GeForce RTX 2060 SC\r\nMemoria: 6GB GDDR6\r\nPuertos: 1 DPORT 1 HDMI\r\nConexión: PCIe 2.1 x16\r\nAplicación: Gamer', 5, '06G-P4-2062-KR.webp'),
(5, 'ROG MAXIMUS Z690 EXTREME GLACIAL', '40935.08', 'Tarjeta Madre Asus ROG MAXIMUS Z690 Extreme Glacial 1700 ATX 4DDR4 MAX128 GB HDMI 5 M.2 2 PCIe 5.0', 'Socket: 1700\r\nForm factor: ATX\r\nMemoria y slots: 4 DDR4\r\nMáximo de memoria: Max 128Gb\r\nPuerto principal de video: HDMI 2.0 DP USB-C\r\nPuertos M.2: 5 M.2\r\nPuertos SATA: 6\r\nPuertos PCIE: 2 Pcie 5.0 X16', 6, 'ROG MAXIMUS Z690 EXTREME GLACIAL.webp'),
(6, 'GP-ARS16G44', '2637.19', 'KIT Memoria RAM Aorus DIMM 16GB DDR4 4400MHZ 2X8 GB CL43 1.2V Negro RGB', 'Tipo de memoria: DDR4\r\nDiseño de memoria: 2X8GB\r\nVelocidad del reloj: 4400MHZ\r\nCL: 43\r\nMemoria: 16GB\r\nForma: DIMM\r\nColor: Negro RGB', 16, 'GP-ARS16G44.webp'),
(7, 'TUF GAMING H1', '717.81', 'Audifonos Diadema Asus Gamer TUF Gaming H1 Alambrico 3.5mm 1.3m Sí Negro Gamer PS5 PC', 'Modelo: Tuf Gaming H1\r\nMicrófono: Sí\r\nConector: Alámbrico 3.5 mm\r\nColor: Negro PS5 PC', 36, 'TUF GAMING H1.webp'),
(8, 'CMI-GM34-CW2-US', '4500.87', 'Monitor Cooler Master Curvo Gamer GM34-CW 34P Quad HD 3440 X1440 1MS 144Hz 2 HDMI Negro', 'Modelo: Gamer Curvo Cooler Master GM34-CW\r\nTamaño: 34 P 3440 X 1400\r\nVelocidad: 1MS\r\nConexiones: 2 HDMI\r\nColor: Negro\r\nUso: Gamer\r\nAdicionales: Bocinas integradas de 2W y FreeSync', 10, 'CMI-GM34-CW2-US.webp'),
(9, 'CH-910D018-NA', '21190.40', 'Teclado Corsair K60 RGB PRO Low Alambrico Mecanico Cherry MX Negro Ingles', 'Modelo: K60\r\nTipo: Alámbrico Mecánico\r\nTipo de Switch: Cherry MX\r\nIluminación: RGB Pro Low\r\nColor: Negro\r\nIdioma: Ingles', 100, 'CH-910D018-NA.webp'),
(10, 'GM-AORUS M5', '1159.59', 'Mouse Gamer Aorus M5 Alambrico USB 16000 DPI Optico Omron Switch RGB Fusion 2.0 Negro', 'Modelo: Aorus M5\r\nDPI: 16000 DPI\r\nConector: Alámbrico USB\r\nTipo: Óptico Omron Switch\r\nColor: Metal Negro\r\nIlluminación: RGB Fusion 2.0 *Compensador de micro pesas', 25, 'GM-AORUS M5.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`,`sku`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`,`sku`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
