-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-04-2026 a las 09:29:26
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
('ALG', 'Algèria', 'I'),
('ARG', 'Argentina', 'E'),
('AUS', 'Austràlia', 'D'),
('AUT', 'Àustria', 'L'),
('BEL', 'Bèlgica', 'K'),
('BRA', 'Brasil', 'D'),
('CAN', 'Canadà', 'C'),
('CHN', 'Xina', 'I'),
('CMR', 'Camerun', 'E'),
('COL', 'Colòmbia', 'G'),
('CPV', 'Cap Verd', 'H'),
('CRC', 'Costa Rica', 'L'),
('CRO', 'Croàcia', 'C'),
('CZE', 'Txèquia', 'A'),
('DEN', 'Dinamarca', 'E'),
('ECU', 'Equador', 'I'),
('EGY', 'Egipte', 'B'),
('ENG', 'Anglaterra', 'H'),
('ESP', 'Espanya', 'F'),
('FRA', 'França', 'G'),
('GER', 'Alemanya', 'I'),
('GHA', 'Ghana', 'D'),
('IRN', 'Iran', 'G'),
('IRQ', 'Iraq', 'E'),
('ITA', 'Itàlia', 'K'),
('JAM', 'Jamaica', 'G'),
('JPN', 'Japó', 'B'),
('KOR', 'Corea del Sud', 'A'),
('KSA', 'Aràbia Saudita', 'H'),
('MAR', 'Marroc', 'C'),
('MEX', 'Mèxic', 'A'),
('NED', 'Països Baixos', 'D'),
('NGA', 'Nigèria', 'L'),
('NZL', 'Nova Zelanda', 'F'),
('PAN', 'Panamà', 'K'),
('PAR', 'Paraguai', 'K'),
('PER', 'Perú', 'C'),
('POL', 'Polònia', 'F'),
('POR', 'Portugal', 'J'),
('RSA', 'Sud-àfrica', 'A'),
('SEN', 'Senegal', 'J'),
('SUI', 'Suïssa', 'B'),
('SWE', 'Suècia', 'L'),
('TUN', 'Tunísia', 'F'),
('URU', 'Uruguai', 'H'),
('USA', 'Estats Units', 'B'),
('VEN', 'Veneçuela', 'J');

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
