-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2015 a las 17:13:23
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_championship`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tagenda`
--

CREATE TABLE IF NOT EXISTS `tagenda` (
  `nroagenda` int(4) NOT NULL AUTO_INCREMENT,
  `tema` varchar(80) NOT NULL,
  `idreunion` int(4) NOT NULL,
  PRIMARY KEY (`nroagenda`),
  KEY `idreunion` (`idreunion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamortizacion`
--

CREATE TABLE IF NOT EXISTS `tamortizacion` (
  `nroamortizacion` int(4) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `monto` float NOT NULL,
  `nromovimiento` int(4) NOT NULL,
  PRIMARY KEY (`nroamortizacion`),
  KEY `nromovimiento` (`nromovimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarbitros`
--

CREATE TABLE IF NOT EXISTS `tarbitros` (
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `categoria` tinyint(1) NOT NULL,
  `idarbitropartido` int(4) NOT NULL,
  PRIMARY KEY (`dni`),
  KEY `idarbitropartido` (`idarbitropartido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarbitros`
--

INSERT INTO `tarbitros` (`dni`, `nombre`, `categoria`, `idarbitropartido`) VALUES
('91348743', 'Arturo rozas Huacho', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarbitroxpartido`
--

CREATE TABLE IF NOT EXISTS `tarbitroxpartido` (
  `idarbitroporpartido` int(4) NOT NULL AUTO_INCREMENT,
  `rol` varchar(20) NOT NULL,
  `observaciones` varchar(60) NOT NULL,
  `idpartido` int(4) NOT NULL,
  PRIMARY KEY (`idarbitroporpartido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tarbitroxpartido`
--

INSERT INTO `tarbitroxpartido` (`idarbitroporpartido`, `rol`, `observaciones`, `idpartido`) VALUES
(1, 'principal', 'es arbitro es cojo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasistente`
--

CREATE TABLE IF NOT EXISTS `tasistente` (
  `idasistente` int(4) NOT NULL AUTO_INCREMENT,
  `coddocente` varchar(8) NOT NULL,
  `idreunion` int(4) NOT NULL,
  PRIMARY KEY (`idasistente`),
  KEY `coddocente` (`coddocente`),
  KEY `idreunion` (`idreunion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcambio`
--

CREATE TABLE IF NOT EXISTS `tcambio` (
  `idcambio` int(4) NOT NULL AUTO_INCREMENT,
  `idjugadorenjuego1` int(4) NOT NULL,
  `idjugadorenjuego2` int(4) NOT NULL,
  `minuto` varchar(2) NOT NULL,
  `codpartido` varchar(8) NOT NULL,
  PRIMARY KEY (`idcambio`),
  KEY `codpartido` (`codpartido`),
  KEY `idjugadorenjuego1` (`idjugadorenjuego1`),
  KEY `idjugadorenjuego2` (`idjugadorenjuego2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcampeonato`
--

CREATE TABLE IF NOT EXISTS `tcampeonato` (
  `codcampeonato` varchar(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `anioacademico` varchar(7) NOT NULL,
  `fechacreacion` date NOT NULL,
  `reglamento` varchar(100) DEFAULT NULL,
  `habilitar` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`codcampeonato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tconclusion`
--

CREATE TABLE IF NOT EXISTS `tconclusion` (
  `nroconclusion` int(4) NOT NULL AUTO_INCREMENT,
  `conclusion` varchar(120) NOT NULL,
  `nroagenda` int(4) NOT NULL,
  PRIMARY KEY (`nroconclusion`),
  KEY `nroagenda` (`nroagenda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcronograma`
--

CREATE TABLE IF NOT EXISTS `tcronograma` (
  `nroactividad` int(4) NOT NULL AUTO_INCREMENT,
  `actividad` varchar(80) NOT NULL,
  `fechainicio` datetime NOT NULL,
  `fechafin` datetime NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `codcampeonato` varchar(8) NOT NULL,
  PRIMARY KEY (`nroactividad`),
  KEY `codcampeonato` (`codcampeonato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdetalleconfiguracion`
--

CREATE TABLE IF NOT EXISTS `tdetalleconfiguracion` (
  `idopcion` int(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  `valoropcion` int(4) NOT NULL,
  `codcampeonato` varchar(8) NOT NULL,
  PRIMARY KEY (`idopcion`),
  KEY `codcampeonato` (`codcampeonato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdocente`
--

CREATE TABLE IF NOT EXISTS `tdocente` (
  `coddocente` varchar(8) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `categoria` enum('nombrado','contratado','','') NOT NULL DEFAULT 'nombrado',
  `apellidopaterno` varchar(25) NOT NULL,
  `apellidomaterno` varchar(25) NOT NULL,
  `iddepartamento` int(4) NOT NULL,
  PRIMARY KEY (`coddocente`),
  KEY `iddepartamento` (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdptoacademico`
--

CREATE TABLE IF NOT EXISTS `tdptoacademico` (
  `iddepartamento` int(4) NOT NULL AUTO_INCREMENT,
  `nombredpto` varchar(30) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tegreso`
--

CREATE TABLE IF NOT EXISTS `tegreso` (
  `idegreso` int(4) NOT NULL AUTO_INCREMENT,
  `nromovimiento` int(4) NOT NULL,
  PRIMARY KEY (`idegreso`),
  KEY `nromovimiento` (`nromovimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tequipo`
--

CREATE TABLE IF NOT EXISTS `tequipo` (
  `codequipo` varchar(8) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `coloresdeuniforme` varchar(100) NOT NULL,
  `coloresalternos` varchar(100) NOT NULL,
  `estado` enum('habilitado','desabilitado','','') NOT NULL,
  `codcampeonato` varchar(8) NOT NULL,
  PRIMARY KEY (`codequipo`),
  KEY `codcampeonato` (`codcampeonato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tequipoenpartido`
--

CREATE TABLE IF NOT EXISTS `tequipoenpartido` (
  `idequipoenpartido` int(4) NOT NULL AUTO_INCREMENT,
  `puntaje` tinyint(4) NOT NULL,
  `observacion` varchar(120) NOT NULL,
  `reclamo` varchar(120) NOT NULL,
  `codequipo` varchar(8) NOT NULL,
  `codpartido` varchar(8) NOT NULL,
  PRIMARY KEY (`idequipoenpartido`),
  KEY `codequipo` (`codequipo`),
  KEY `codpartido` (`codpartido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tescenario`
--

CREATE TABLE IF NOT EXISTS `tescenario` (
  `codescenario` varchar(8) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codescenario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tfecha`
--

CREATE TABLE IF NOT EXISTS `tfecha` (
  `nrofecha` int(4) NOT NULL AUTO_INCREMENT,
  `diadefecha` varchar(2) NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `codrueda` varchar(8) NOT NULL,
  PRIMARY KEY (`nrofecha`),
  KEY `codrueda` (`codrueda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tgol`
--

CREATE TABLE IF NOT EXISTS `tgol` (
  `idgol` int(4) NOT NULL AUTO_INCREMENT,
  `minuto` int(2) NOT NULL,
  `observaciones` varchar(30) NOT NULL,
  `idjugadorenjuego` int(4) NOT NULL,
  PRIMARY KEY (`idgol`),
  KEY `idjugadorenjuego` (`idjugadorenjuego`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tincidencias`
--

CREATE TABLE IF NOT EXISTS `tincidencias` (
  `codincidencias` varchar(8) NOT NULL,
  `incidencias` varchar(40) NOT NULL,
  `hora` varchar(5) NOT NULL COMMENT '00:00',
  `codpartido` varchar(8) NOT NULL,
  PRIMARY KEY (`codincidencias`),
  KEY `codpartido` (`codpartido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tingreso`
--

CREATE TABLE IF NOT EXISTS `tingreso` (
  `idingreso` int(4) NOT NULL AUTO_INCREMENT,
  `codequipo` varchar(8) NOT NULL,
  `nromovimiento` int(4) NOT NULL,
  PRIMARY KEY (`idingreso`),
  KEY `nromovimiento` (`nromovimiento`),
  KEY `codequipo` (`codequipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tjugador`
--

CREATE TABLE IF NOT EXISTS `tjugador` (
  `dni` varchar(8) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `codequipo` varchar(8) NOT NULL,
  `coddocente` varchar(8) NOT NULL,
  PRIMARY KEY (`dni`),
  KEY `codequipo` (`codequipo`),
  KEY `coddocente` (`coddocente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tjugadorenjuego`
--

CREATE TABLE IF NOT EXISTS `tjugadorenjuego` (
  `idjugadorenjuego` int(4) NOT NULL AUTO_INCREMENT,
  `nrocamiseta` varchar(2) NOT NULL,
  `condicionenpartido` varchar(30) NOT NULL,
  `escapitan` tinyint(1) NOT NULL,
  `codequipo` varchar(8) NOT NULL,
  `nroplanilla` int(4) NOT NULL,
  PRIMARY KEY (`idjugadorenjuego`),
  KEY `nroplanilla` (`nroplanilla`),
  KEY `codequipo` (`codequipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmesa`
--

CREATE TABLE IF NOT EXISTS `tmesa` (
  `idmesa` int(4) NOT NULL AUTO_INCREMENT,
  `coddocente` varchar(8) NOT NULL,
  `codpartido` varchar(8) NOT NULL,
  PRIMARY KEY (`idmesa`),
  KEY `codpartido` (`codpartido`),
  KEY `coddocente` (`coddocente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmiembrocomandotecnico`
--

CREATE TABLE IF NOT EXISTS `tmiembrocomandotecnico` (
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `rol` varchar(25) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `codequipo` varchar(8) NOT NULL,
  `codocente` varchar(8) NOT NULL,
  PRIMARY KEY (`dni`),
  KEY `codequipo` (`codequipo`),
  KEY `codocente` (`codocente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmiembrocomjusticia`
--

CREATE TABLE IF NOT EXISTS `tmiembrocomjusticia` (
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `codcampeonato` varchar(8) NOT NULL,
  PRIMARY KEY (`dni`),
  KEY `codcampeonato` (`codcampeonato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmienbrosco`
--

CREATE TABLE IF NOT EXISTS `tmienbrosco` (
  `codmiembroco` varchar(8) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `rol` varchar(100) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `codocente` varchar(8) NOT NULL,
  `codcampeonato` varchar(8) NOT NULL,
  PRIMARY KEY (`codmiembroco`),
  KEY `codocente` (`codocente`),
  KEY `codcampeonato` (`codcampeonato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmovimiento`
--

CREATE TABLE IF NOT EXISTS `tmovimiento` (
  `nromovimiento` int(4) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(1) NOT NULL COMMENT 'ingreso/egreso',
  `montototal` float NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `codmiembroco` varchar(8) NOT NULL,
  PRIMARY KEY (`nromovimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpartido`
--

CREATE TABLE IF NOT EXISTS `tpartido` (
  `codpartido` varchar(8) NOT NULL,
  `horainicio` varchar(5) NOT NULL COMMENT '00:00',
  `horafin` varchar(5) NOT NULL COMMENT '00:00',
  `tipopartido` varchar(20) NOT NULL,
  `observacion` varchar(50) NOT NULL,
  `codprogramacion` varchar(8) NOT NULL,
  `idarbitroporpartido` int(4) NOT NULL,
  PRIMARY KEY (`codpartido`),
  KEY `idarbitroporpartido` (`idarbitroporpartido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tplanilla`
--

CREATE TABLE IF NOT EXISTS `tplanilla` (
  `nroplanilla` int(4) NOT NULL AUTO_INCREMENT,
  `codpartido` varchar(8) NOT NULL,
  PRIMARY KEY (`nroplanilla`),
  KEY `codpartido` (`codpartido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tprogramacionpartido`
--

CREATE TABLE IF NOT EXISTS `tprogramacionpartido` (
  `codprogramacion` varchar(8) NOT NULL,
  `diadepartido` varchar(2) NOT NULL,
  `nropartido` varchar(2) NOT NULL,
  `nrofecha` int(4) NOT NULL,
  `codescenario` varchar(8) NOT NULL,
  PRIMARY KEY (`codprogramacion`),
  KEY `nrofecha` (`nrofecha`),
  KEY `codescenario` (`codescenario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treunion`
--

CREATE TABLE IF NOT EXISTS `treunion` (
  `idreunion` int(4) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `nrofecha` int(4) NOT NULL,
  PRIMARY KEY (`idreunion`),
  KEY `nrofecha` (`nrofecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trueda`
--

CREATE TABLE IF NOT EXISTS `trueda` (
  `codrueda` varchar(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechacreacion` date NOT NULL,
  `codcampeonato` varchar(8) NOT NULL,
  PRIMARY KEY (`codrueda`),
  KEY `codcampeonato` (`codcampeonato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsancion`
--

CREATE TABLE IF NOT EXISTS `tsancion` (
  `idsancion` int(4) NOT NULL AUTO_INCREMENT,
  `tiposancion` varchar(30) NOT NULL COMMENT 'perdida puntos/multa',
  `nroconclusion` int(4) NOT NULL,
  `idjugadorenjuego` int(4) NOT NULL,
  `idequipoenpartido` int(4) NOT NULL,
  PRIMARY KEY (`idsancion`),
  KEY `nroconclusion` (`nroconclusion`),
  KEY `idjugadorenjuego` (`idjugadorenjuego`),
  KEY `idequipoenpartido` (`idequipoenpartido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttargeta`
--

CREATE TABLE IF NOT EXISTS `ttargeta` (
  `idtarjeta` int(4) NOT NULL AUTO_INCREMENT,
  `minuto` varchar(2) NOT NULL,
  `tipo` tinyint(1) NOT NULL COMMENT 'roja/amarilla',
  `detalle` varchar(80) NOT NULL,
  `idjugadorenjuego` int(4) NOT NULL,
  PRIMARY KEY (`idtarjeta`),
  KEY `idjugadorenjuego` (`idjugadorenjuego`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tagenda`
--
ALTER TABLE `tagenda`
  ADD CONSTRAINT `tagenda_ibfk_1` FOREIGN KEY (`idreunion`) REFERENCES `treunion` (`idreunion`);

--
-- Filtros para la tabla `tamortizacion`
--
ALTER TABLE `tamortizacion`
  ADD CONSTRAINT `tamortizacion_ibfk_1` FOREIGN KEY (`nromovimiento`) REFERENCES `tmovimiento` (`nromovimiento`);

--
-- Filtros para la tabla `tarbitros`
--
ALTER TABLE `tarbitros`
  ADD CONSTRAINT `tarbitros_ibfk_1` FOREIGN KEY (`idarbitropartido`) REFERENCES `tarbitroxpartido` (`idarbitroporpartido`);

--
-- Filtros para la tabla `tasistente`
--
ALTER TABLE `tasistente`
  ADD CONSTRAINT `tasistente_ibfk_1` FOREIGN KEY (`coddocente`) REFERENCES `tdocente` (`coddocente`),
  ADD CONSTRAINT `tasistente_ibfk_2` FOREIGN KEY (`idreunion`) REFERENCES `treunion` (`idreunion`);

--
-- Filtros para la tabla `tcambio`
--
ALTER TABLE `tcambio`
  ADD CONSTRAINT `tcambio_ibfk_1` FOREIGN KEY (`codpartido`) REFERENCES `tpartido` (`codpartido`),
  ADD CONSTRAINT `tcambio_ibfk_2` FOREIGN KEY (`idjugadorenjuego1`) REFERENCES `tjugadorenjuego` (`idjugadorenjuego`),
  ADD CONSTRAINT `tcambio_ibfk_3` FOREIGN KEY (`idjugadorenjuego2`) REFERENCES `tjugadorenjuego` (`idjugadorenjuego`);

--
-- Filtros para la tabla `tconclusion`
--
ALTER TABLE `tconclusion`
  ADD CONSTRAINT `tconclusion_ibfk_1` FOREIGN KEY (`nroagenda`) REFERENCES `tagenda` (`nroagenda`);

--
-- Filtros para la tabla `tcronograma`
--
ALTER TABLE `tcronograma`
  ADD CONSTRAINT `tcronograma_ibfk_1` FOREIGN KEY (`codcampeonato`) REFERENCES `tcampeonato` (`codcampeonato`);

--
-- Filtros para la tabla `tdetalleconfiguracion`
--
ALTER TABLE `tdetalleconfiguracion`
  ADD CONSTRAINT `tdetalleconfiguracion_ibfk_1` FOREIGN KEY (`codcampeonato`) REFERENCES `tcampeonato` (`codcampeonato`);

--
-- Filtros para la tabla `tdocente`
--
ALTER TABLE `tdocente`
  ADD CONSTRAINT `tdocente_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `tdptoacademico` (`iddepartamento`);

--
-- Filtros para la tabla `tegreso`
--
ALTER TABLE `tegreso`
  ADD CONSTRAINT `tegreso_ibfk_1` FOREIGN KEY (`nromovimiento`) REFERENCES `tmovimiento` (`nromovimiento`);

--
-- Filtros para la tabla `tequipo`
--
ALTER TABLE `tequipo`
  ADD CONSTRAINT `tequipo_ibfk_1` FOREIGN KEY (`codcampeonato`) REFERENCES `tcampeonato` (`codcampeonato`);

--
-- Filtros para la tabla `tequipoenpartido`
--
ALTER TABLE `tequipoenpartido`
  ADD CONSTRAINT `tequipoenpartido_ibfk_1` FOREIGN KEY (`codequipo`) REFERENCES `tequipo` (`codequipo`),
  ADD CONSTRAINT `tequipoenpartido_ibfk_2` FOREIGN KEY (`codpartido`) REFERENCES `tpartido` (`codpartido`);

--
-- Filtros para la tabla `tfecha`
--
ALTER TABLE `tfecha`
  ADD CONSTRAINT `tfecha_ibfk_1` FOREIGN KEY (`codrueda`) REFERENCES `trueda` (`codrueda`);

--
-- Filtros para la tabla `tgol`
--
ALTER TABLE `tgol`
  ADD CONSTRAINT `tgol_ibfk_1` FOREIGN KEY (`idjugadorenjuego`) REFERENCES `tjugadorenjuego` (`idjugadorenjuego`);

--
-- Filtros para la tabla `tincidencias`
--
ALTER TABLE `tincidencias`
  ADD CONSTRAINT `tincidencias_ibfk_1` FOREIGN KEY (`codpartido`) REFERENCES `tpartido` (`codpartido`);

--
-- Filtros para la tabla `tingreso`
--
ALTER TABLE `tingreso`
  ADD CONSTRAINT `tingreso_ibfk_1` FOREIGN KEY (`nromovimiento`) REFERENCES `tmovimiento` (`nromovimiento`),
  ADD CONSTRAINT `tingreso_ibfk_2` FOREIGN KEY (`codequipo`) REFERENCES `tequipo` (`codequipo`);

--
-- Filtros para la tabla `tjugador`
--
ALTER TABLE `tjugador`
  ADD CONSTRAINT `tjugador_ibfk_1` FOREIGN KEY (`codequipo`) REFERENCES `tequipo` (`codequipo`),
  ADD CONSTRAINT `tjugador_ibfk_2` FOREIGN KEY (`coddocente`) REFERENCES `tdocente` (`coddocente`);

--
-- Filtros para la tabla `tjugadorenjuego`
--
ALTER TABLE `tjugadorenjuego`
  ADD CONSTRAINT `tjugadorenjuego_ibfk_1` FOREIGN KEY (`nroplanilla`) REFERENCES `tplanilla` (`nroplanilla`),
  ADD CONSTRAINT `tjugadorenjuego_ibfk_2` FOREIGN KEY (`codequipo`) REFERENCES `tequipo` (`codequipo`);

--
-- Filtros para la tabla `tmesa`
--
ALTER TABLE `tmesa`
  ADD CONSTRAINT `tmesa_ibfk_1` FOREIGN KEY (`codpartido`) REFERENCES `tpartido` (`codpartido`),
  ADD CONSTRAINT `tmesa_ibfk_2` FOREIGN KEY (`coddocente`) REFERENCES `tdocente` (`coddocente`);

--
-- Filtros para la tabla `tmiembrocomandotecnico`
--
ALTER TABLE `tmiembrocomandotecnico`
  ADD CONSTRAINT `tmiembrocomandotecnico_ibfk_1` FOREIGN KEY (`codequipo`) REFERENCES `tequipo` (`codequipo`),
  ADD CONSTRAINT `tmiembrocomandotecnico_ibfk_2` FOREIGN KEY (`codocente`) REFERENCES `tdocente` (`coddocente`);

--
-- Filtros para la tabla `tmiembrocomjusticia`
--
ALTER TABLE `tmiembrocomjusticia`
  ADD CONSTRAINT `tmiembrocomjusticia_ibfk_1` FOREIGN KEY (`codcampeonato`) REFERENCES `tcampeonato` (`codcampeonato`);

--
-- Filtros para la tabla `tmienbrosco`
--
ALTER TABLE `tmienbrosco`
  ADD CONSTRAINT `tmienbrosco_ibfk_1` FOREIGN KEY (`codocente`) REFERENCES `tdocente` (`coddocente`),
  ADD CONSTRAINT `tmienbrosco_ibfk_2` FOREIGN KEY (`codcampeonato`) REFERENCES `tcampeonato` (`codcampeonato`);

--
-- Filtros para la tabla `tpartido`
--
ALTER TABLE `tpartido`
  ADD CONSTRAINT `tpartido_ibfk_1` FOREIGN KEY (`idarbitroporpartido`) REFERENCES `tarbitroxpartido` (`idarbitroporpartido`);

--
-- Filtros para la tabla `tplanilla`
--
ALTER TABLE `tplanilla`
  ADD CONSTRAINT `tplanilla_ibfk_1` FOREIGN KEY (`codpartido`) REFERENCES `tpartido` (`codpartido`);

--
-- Filtros para la tabla `tprogramacionpartido`
--
ALTER TABLE `tprogramacionpartido`
  ADD CONSTRAINT `tprogramacionpartido_ibfk_1` FOREIGN KEY (`nrofecha`) REFERENCES `tfecha` (`nrofecha`),
  ADD CONSTRAINT `tprogramacionpartido_ibfk_2` FOREIGN KEY (`codescenario`) REFERENCES `tescenario` (`codescenario`);

--
-- Filtros para la tabla `treunion`
--
ALTER TABLE `treunion`
  ADD CONSTRAINT `treunion_ibfk_1` FOREIGN KEY (`nrofecha`) REFERENCES `tfecha` (`nrofecha`);

--
-- Filtros para la tabla `trueda`
--
ALTER TABLE `trueda`
  ADD CONSTRAINT `trueda_ibfk_1` FOREIGN KEY (`codcampeonato`) REFERENCES `tcampeonato` (`codcampeonato`);

--
-- Filtros para la tabla `tsancion`
--
ALTER TABLE `tsancion`
  ADD CONSTRAINT `tsancion_ibfk_1` FOREIGN KEY (`nroconclusion`) REFERENCES `tconclusion` (`nroconclusion`),
  ADD CONSTRAINT `tsancion_ibfk_2` FOREIGN KEY (`idjugadorenjuego`) REFERENCES `tjugadorenjuego` (`idjugadorenjuego`),
  ADD CONSTRAINT `tsancion_ibfk_3` FOREIGN KEY (`idequipoenpartido`) REFERENCES `tequipoenpartido` (`idequipoenpartido`);

--
-- Filtros para la tabla `ttargeta`
--
ALTER TABLE `ttargeta`
  ADD CONSTRAINT `ttargeta_ibfk_1` FOREIGN KEY (`idjugadorenjuego`) REFERENCES `tjugadorenjuego` (`idjugadorenjuego`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
