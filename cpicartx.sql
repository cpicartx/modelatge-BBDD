-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-06-2020 a las 17:59:07
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cpicartx`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AMIC_DE`
--

CREATE TABLE `AMIC_DE` (
  `id_user` int(11) NOT NULL,
  `id_amic` int(11) NOT NULL,
  `relació` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AUTOR`
--

CREATE TABLE `AUTOR` (
  `id_autor` int(11) NOT NULL,
  `direcció` varchar(100) NOT NULL,
  `comptador_llibres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AVIONS`
--

CREATE TABLE `AVIONS` (
  `id_avio` int(5) NOT NULL,
  `capacitat` int(3) NOT NULL,
  `model` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CATALEG`
--

CREATE TABLE `CATALEG` (
  `id_isbn` bigint(13) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `preu` float NOT NULL,
  `stock` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CLIENTS`
--

CREATE TABLE `CLIENTS` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adreça` varchar(200) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `data_registre` date NOT NULL,
  `id_client_recomanat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `CLIENTS`
--

INSERT INTO `CLIENTS` (`id_client`, `nom`, `adreça`, `telefon`, `email`, `data_registre`, `id_client_recomanat`) VALUES
(12, 'Client1', 'dfdfs fsf d fffddsf fsf', '323113231232', 'dsffdggfgfg', '2020-06-09', 12),
(13, 'Client13', 'fdffsd sdfs fsf', '3424423', 'dfggfgfdfgdgf', '2020-06-18', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COMPRA`
--

CREATE TABLE `COMPRA` (
  `id_dni` varchar(9) NOT NULL,
  `id_quadre` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COMPRADOR`
--

CREATE TABLE `COMPRADOR` (
  `id_dni` varchar(9) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `cognom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EMPLEAT`
--

CREATE TABLE `EMPLEAT` (
  `id_empleat` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `EMPLEAT`
--

INSERT INTO `EMPLEAT` (`id_empleat`, `nom`) VALUES
(100, 'Empleat1'),
(200, 'Empleat2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FACTURA_LLIBRE`
--

CREATE TABLE `FACTURA_LLIBRE` (
  `id_user` int(11) NOT NULL,
  `id_isbn` bigint(13) NOT NULL,
  `data_compra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FOTOS`
--

CREATE TABLE `FOTOS` (
  `id_foto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `lloc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROVEIDOR`
--

CREATE TABLE `PROVEIDOR` (
  `id_proveidor` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `adreça` varchar(200) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `nif` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `PROVEIDOR`
--

INSERT INTO `PROVEIDOR` (`id_proveidor`, `nom`, `adreça`, `telefon`, `fax`, `nif`) VALUES
(1, 'Proveidor1', 'sadas  dsddadd ddssa', '1211221223', '23132321', '3221332a'),
(2, 'Proveidor2', 'gssfd fdfsfdssd', '444423', '3434432', '344243234'),
(3, 'Proveidor3', 'dfdffd fdfsd fsf', '23231132', '22233', '23113232');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `QUADRES`
--

CREATE TABLE `QUADRES` (
  `id_quadre` int(5) NOT NULL,
  `preu` float NOT NULL,
  `autor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SEIENTS`
--

CREATE TABLE `SEIENTS` (
  `id_seient` int(5) NOT NULL,
  `avio_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ULLERES`
--

CREATE TABLE `ULLERES` (
  `id_ulleres` int(11) NOT NULL,
  `id_proveidor` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `graduacio` float NOT NULL,
  `tipus_muntura` enum('flotant','pasta','metal·lica','') NOT NULL,
  `color_muntura` varchar(20) NOT NULL,
  `color_vidre` varchar(20) NOT NULL,
  `preu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ULLERES`
--

INSERT INTO `ULLERES` (`id_ulleres`, `id_proveidor`, `marca`, `graduacio`, `tipus_muntura`, `color_muntura`, `color_vidre`, `preu`) VALUES
(1000, 1, 'Rayban', 12, 'pasta', 'blava', 'transparent', 120.34),
(2002, 3, 'Dior', 3, 'metal·lica', 'negre', 'gris', 235);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USER_LLIBRE`
--

CREATE TABLE `USER_LLIBRE` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USER_XARXA`
--

CREATE TABLE `USER_XARXA` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARI`
--

CREATE TABLE `USUARI` (
  `id_email` varchar(30) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VENTA_ULLERES`
--

CREATE TABLE `VENTA_ULLERES` (
  `id_empleat` int(11) NOT NULL,
  `id_ulleres` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `data_venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `VENTA_ULLERES`
--

INSERT INTO `VENTA_ULLERES` (`id_empleat`, `id_ulleres`, `id_client`, `data_venta`) VALUES
(100, 2002, 12, '2020-06-25'),
(200, 1000, 13, '2020-06-16'),
(200, 1000, 12, '2020-06-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VIDEOS`
--

CREATE TABLE `VIDEOS` (
  `id_video` varchar(20) NOT NULL,
  `id_email` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `titol` varchar(50) NOT NULL,
  `descripcio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `AMIC_DE`
--
ALTER TABLE `AMIC_DE`
  ADD PRIMARY KEY (`id_user`,`id_amic`),
  ADD KEY `id_amic` (`id_amic`);

--
-- Indices de la tabla `AUTOR`
--
ALTER TABLE `AUTOR`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `AVIONS`
--
ALTER TABLE `AVIONS`
  ADD UNIQUE KEY `id_avio` (`id_avio`);

--
-- Indices de la tabla `CATALEG`
--
ALTER TABLE `CATALEG`
  ADD PRIMARY KEY (`id_isbn`),
  ADD UNIQUE KEY `id_autor` (`id_autor`);

--
-- Indices de la tabla `CLIENTS`
--
ALTER TABLE `CLIENTS`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `id_client_recomanat` (`id_client_recomanat`);

--
-- Indices de la tabla `COMPRA`
--
ALTER TABLE `COMPRA`
  ADD PRIMARY KEY (`id_dni`,`id_quadre`),
  ADD KEY `id_quadre` (`id_quadre`);

--
-- Indices de la tabla `COMPRADOR`
--
ALTER TABLE `COMPRADOR`
  ADD PRIMARY KEY (`id_dni`);

--
-- Indices de la tabla `EMPLEAT`
--
ALTER TABLE `EMPLEAT`
  ADD PRIMARY KEY (`id_empleat`);

--
-- Indices de la tabla `FACTURA_LLIBRE`
--
ALTER TABLE `FACTURA_LLIBRE`
  ADD PRIMARY KEY (`id_user`,`id_isbn`),
  ADD KEY `id_isbn` (`id_isbn`);

--
-- Indices de la tabla `FOTOS`
--
ALTER TABLE `FOTOS`
  ADD PRIMARY KEY (`id_foto`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indices de la tabla `PROVEIDOR`
--
ALTER TABLE `PROVEIDOR`
  ADD PRIMARY KEY (`id_proveidor`);

--
-- Indices de la tabla `QUADRES`
--
ALTER TABLE `QUADRES`
  ADD PRIMARY KEY (`id_quadre`);

--
-- Indices de la tabla `SEIENTS`
--
ALTER TABLE `SEIENTS`
  ADD PRIMARY KEY (`id_seient`),
  ADD KEY `avio_id` (`avio_id`);

--
-- Indices de la tabla `ULLERES`
--
ALTER TABLE `ULLERES`
  ADD PRIMARY KEY (`id_ulleres`),
  ADD UNIQUE KEY `id_proveidor` (`id_proveidor`);

--
-- Indices de la tabla `USER_LLIBRE`
--
ALTER TABLE `USER_LLIBRE`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `USER_XARXA`
--
ALTER TABLE `USER_XARXA`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `USUARI`
--
ALTER TABLE `USUARI`
  ADD PRIMARY KEY (`id_email`);

--
-- Indices de la tabla `VENTA_ULLERES`
--
ALTER TABLE `VENTA_ULLERES`
  ADD KEY `id_ulleres` (`id_ulleres`) USING BTREE,
  ADD KEY `id_empleat` (`id_empleat`) USING BTREE,
  ADD KEY `id_client` (`id_client`) USING BTREE;

--
-- Indices de la tabla `VIDEOS`
--
ALTER TABLE `VIDEOS`
  ADD PRIMARY KEY (`id_email`),
  ADD UNIQUE KEY `id_video` (`id_video`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `AMIC_DE`
--
ALTER TABLE `AMIC_DE`
  ADD CONSTRAINT `AMIC_DE_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `USER_XARXA` (`id_user`),
  ADD CONSTRAINT `AMIC_DE_ibfk_2` FOREIGN KEY (`id_amic`) REFERENCES `USER_XARXA` (`id_user`);

--
-- Filtros para la tabla `CATALEG`
--
ALTER TABLE `CATALEG`
  ADD CONSTRAINT `CATALEG_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `AUTOR` (`id_autor`);

--
-- Filtros para la tabla `COMPRA`
--
ALTER TABLE `COMPRA`
  ADD CONSTRAINT `COMPRA_ibfk_1` FOREIGN KEY (`id_dni`) REFERENCES `COMPRADOR` (`id_dni`),
  ADD CONSTRAINT `COMPRA_ibfk_2` FOREIGN KEY (`id_quadre`) REFERENCES `QUADRES` (`id_quadre`);

--
-- Filtros para la tabla `FACTURA_LLIBRE`
--
ALTER TABLE `FACTURA_LLIBRE`
  ADD CONSTRAINT `FACTURA_LLIBRE_ibfk_1` FOREIGN KEY (`id_isbn`) REFERENCES `CATALEG` (`id_isbn`),
  ADD CONSTRAINT `FACTURA_LLIBRE_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `USER_LLIBRE` (`id_user`);

--
-- Filtros para la tabla `FOTOS`
--
ALTER TABLE `FOTOS`
  ADD CONSTRAINT `FOTOS_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `USER_XARXA` (`id_user`);

--
-- Filtros para la tabla `SEIENTS`
--
ALTER TABLE `SEIENTS`
  ADD CONSTRAINT `SEIENTS_ibfk_1` FOREIGN KEY (`avio_id`) REFERENCES `AVIONS` (`id_avio`);

--
-- Filtros para la tabla `ULLERES`
--
ALTER TABLE `ULLERES`
  ADD CONSTRAINT `ULLERES_ibfk_1` FOREIGN KEY (`id_proveidor`) REFERENCES `PROVEIDOR` (`id_proveidor`);

--
-- Filtros para la tabla `VENTA_ULLERES`
--
ALTER TABLE `VENTA_ULLERES`
  ADD CONSTRAINT `VENTA_ULLERES_ibfk_1` FOREIGN KEY (`id_ulleres`) REFERENCES `ULLERES` (`id_ulleres`),
  ADD CONSTRAINT `VENTA_ULLERES_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `CLIENTS` (`id_client`),
  ADD CONSTRAINT `VENTA_ULLERES_ibfk_3` FOREIGN KEY (`id_empleat`) REFERENCES `EMPLEAT` (`id_empleat`);

--
-- Filtros para la tabla `VIDEOS`
--
ALTER TABLE `VIDEOS`
  ADD CONSTRAINT `VIDEOS_ibfk_1` FOREIGN KEY (`id_email`) REFERENCES `USUARI` (`id_email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
