-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-04-2026 a las 09:36:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundial26`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cromo`
--

CREATE TABLE `cromo` (
                         `cro_id` smallint(6) NOT NULL,
                         `cro_anyinc` smallint(6) DEFAULT NULL,
                         `cro_alc` decimal(10,0) DEFAULT NULL,
                         `cro_pes` decimal(10,0) NOT NULL,
                         `cro_pos` text NOT NULL,
                         `cro_nom` varchar(30) NOT NULL,
                         `cro_datnai` date DEFAULT NULL,
                         `cro_pai_cod` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
                        `pai_cod` varchar(3) NOT NULL,
                        `pai_nom` varchar(15) NOT NULL,
                        `pai_gru` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`pai_cod`, `pai_nom`, `pai_gru`) VALUES
                                                         ('ALG', 'Algèria', 'J'),
                                                         ('ARG', 'Argentina', 'J'),
                                                         ('AUS', 'Austràlia', 'D'),
                                                         ('AUT', 'Àustria', 'J'),
                                                         ('BEL', 'Bèlgica', 'G'),
                                                         ('BIH', 'Bòsnia Herceg.', 'B'),
                                                         ('BRA', 'Brasil', 'C'),
                                                         ('CAN', 'Canadà', 'B'),
                                                         ('CIV', 'Costa d\'Ivori', 'E'),
('COD', 'Rep. Dem. Congo', 'K'),
('COL', 'Colòmbia', 'K'),
('CPV', 'Cap Verd', 'H'),
('CRO', 'Croàcia', 'L'),
('CUW', 'Curaçao', 'E'),
('CZE', 'República Txeca', 'A'),
('ECU', 'Equador', 'E'),
('EGY', 'Egipte', 'G'),
('ENG', 'Anglaterra', 'L'),
('ESP', 'Espanya', 'H'),
('FRA', 'França', 'I'),
('GER', 'Alemanya', 'E'),
('GHA', 'Ghana', 'L'),
('HAI', 'Haití', 'C'),
('IRN', 'Iran', 'G'),
('IRQ', 'Iraq', 'I'),
('JOR', 'Jordània', 'J'),
('JPN', 'Japó', 'F'),
('KOR', 'Corea del Sud', 'A'),
('KSA', 'Aràbia Saudita', 'H'),
('MAR', 'Marroc', 'C'),
('MEX', 'Mèxic', 'A'),
('NED', 'Països Baixos', 'F'),
('NOR', 'Noruega', 'I'),
('NZL', 'Nova Zelanda', 'G'),
('PAN', 'Panamà', 'L'),
('PAR', 'Paraguai', 'D'),
('POR', 'Portugal', 'K'),
('QAT', 'Qatar', 'B'),
('RSA', 'Sud-àfrica', 'A'),
('SCO', 'Escòcia', 'C'),
('SEN', 'Senegal', 'I'),
('SUI', 'Suïssa', 'B'),
('SWE', 'Suècia', 'F'),
('TUN', 'Tunísia', 'F'),
('TUR', 'Turquia', 'D'),
('URU', 'Uruguai', 'H'),
('USA', 'Estats Units', 'D'),
('UZB', 'Uzbekistan', 'K');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cromo`
--
ALTER TABLE `cromo`
  ADD PRIMARY KEY (`cro_id`),
  ADD KEY `cro_pai_cod` (`cro_pai_cod`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`pai_cod`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cromo`
--
ALTER TABLE `cromo`
  ADD CONSTRAINT `cromo_ibfk_1` FOREIGN KEY (`cro_pai_cod`) REFERENCES `pais` (`pai_cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;