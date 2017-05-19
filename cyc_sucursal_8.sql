-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2017 a las 03:20:43
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cyc_sucursal_8`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `nombre_cli` varchar(255) NOT NULL,
  `dni_cli` varchar(255) DEFAULT NULL,
  `telefono_cli` varchar(255) DEFAULT NULL,
  `direccion_cli` varchar(255) DEFAULT NULL,
  `localidad_cli` varchar(255) DEFAULT NULL,
  `email_cli` varchar(255) DEFAULT NULL,
  `saldo` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` float NOT NULL,
  `talle` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto_producto`
--

CREATE TABLE `foto_producto` (
  `id_foto_producto` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `foto_prod` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_prod` int(11) NOT NULL,
  `nombre_prod` varchar(255) NOT NULL,
  `num_prod` int(11) DEFAULT NULL,
  `descripcion_prod` varchar(255) DEFAULT NULL,
  `tipo_prod` varchar(255) NOT NULL,
  `sexo_prod` varchar(255) NOT NULL,
  `foto_prod` longblob,
  `precio_unitario` decimal(5,2) DEFAULT NULL,
  `precio_xmayor` decimal(5,2) DEFAULT NULL,
  `activo` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle_bolsa`
--

CREATE TABLE `talle_bolsa` (
  `id_talle_bolsa` int(11) NOT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle_cinturon`
--

CREATE TABLE `talle_cinturon` (
  `id_talle_cinturon` int(11) NOT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `90` int(11) DEFAULT NULL,
  `95` int(11) DEFAULT NULL,
  `100` int(11) DEFAULT NULL,
  `105` int(11) DEFAULT NULL,
  `110` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle_media`
--

CREATE TABLE `talle_media` (
  `id_talle_media` int(11) NOT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `negro` int(11) DEFAULT NULL,
  `gris` int(11) DEFAULT NULL,
  `azul` int(11) DEFAULT NULL,
  `aero` int(11) DEFAULT NULL,
  `blanca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle_ninos`
--

CREATE TABLE `talle_ninos` (
  `id_talle_ninos` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `4` int(11) NOT NULL,
  `6` int(11) NOT NULL,
  `8` int(11) NOT NULL,
  `10` int(11) NOT NULL,
  `12` int(11) NOT NULL,
  `14` int(11) NOT NULL,
  `16` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle_pantalon`
--

CREATE TABLE `talle_pantalon` (
  `id_talle_pantalon` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `26` int(11) DEFAULT NULL,
  `28` int(11) DEFAULT NULL,
  `30` int(11) DEFAULT NULL,
  `32` int(11) DEFAULT NULL,
  `34` int(11) DEFAULT NULL,
  `36` int(11) DEFAULT NULL,
  `38` int(11) DEFAULT NULL,
  `40` int(11) DEFAULT NULL,
  `42` int(11) DEFAULT NULL,
  `44` int(11) DEFAULT NULL,
  `46` int(11) DEFAULT NULL,
  `48` int(11) DEFAULT NULL,
  `50` int(11) DEFAULT NULL,
  `52` int(11) DEFAULT NULL,
  `54` int(11) DEFAULT NULL,
  `56` int(11) DEFAULT NULL,
  `58` int(11) DEFAULT NULL,
  `60` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle_remera`
--

CREATE TABLE `talle_remera` (
  `id_talle_remera` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `xs` int(11) DEFAULT NULL,
  `s` int(11) DEFAULT NULL,
  `m` int(11) DEFAULT NULL,
  `l` int(11) DEFAULT NULL,
  `xl` int(11) DEFAULT NULL,
  `xxl` int(11) DEFAULT NULL,
  `xxxl` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_venta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_pago` date DEFAULT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `cc` int(11) DEFAULT NULL,
  `deuda` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle_venta`);

--
-- Indices de la tabla `foto_producto`
--
ALTER TABLE `foto_producto`
  ADD PRIMARY KEY (`id_foto_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_prod`);

--
-- Indices de la tabla `talle_bolsa`
--
ALTER TABLE `talle_bolsa`
  ADD PRIMARY KEY (`id_talle_bolsa`);

--
-- Indices de la tabla `talle_cinturon`
--
ALTER TABLE `talle_cinturon`
  ADD PRIMARY KEY (`id_talle_cinturon`);

--
-- Indices de la tabla `talle_media`
--
ALTER TABLE `talle_media`
  ADD PRIMARY KEY (`id_talle_media`);

--
-- Indices de la tabla `talle_ninos`
--
ALTER TABLE `talle_ninos`
  ADD PRIMARY KEY (`id_talle_ninos`);

--
-- Indices de la tabla `talle_pantalon`
--
ALTER TABLE `talle_pantalon`
  ADD PRIMARY KEY (`id_talle_pantalon`);

--
-- Indices de la tabla `talle_remera`
--
ALTER TABLE `talle_remera`
  ADD PRIMARY KEY (`id_talle_remera`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `foto_producto`
--
ALTER TABLE `foto_producto`
  MODIFY `id_foto_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talle_bolsa`
--
ALTER TABLE `talle_bolsa`
  MODIFY `id_talle_bolsa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talle_cinturon`
--
ALTER TABLE `talle_cinturon`
  MODIFY `id_talle_cinturon` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talle_media`
--
ALTER TABLE `talle_media`
  MODIFY `id_talle_media` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talle_ninos`
--
ALTER TABLE `talle_ninos`
  MODIFY `id_talle_ninos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talle_pantalon`
--
ALTER TABLE `talle_pantalon`
  MODIFY `id_talle_pantalon` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talle_remera`
--
ALTER TABLE `talle_remera`
  MODIFY `id_talle_remera` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
