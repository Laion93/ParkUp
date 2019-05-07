CREATE DATABASE `parking` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE parking;

CREATE TABLE `usuarios` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dni`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `tipovehiculo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tipovehiculo VALUES(1,"coche");
INSERT INTO tipovehiculo VALUES(2,"furgoneta");
INSERT INTO tipovehiculo VALUES(3,"moto");

CREATE TABLE `vehiculos` (
  `matricula` varchar(7) NOT NULL,
  `tipoVehiculo` varchar(9) DEFAULT NULL,
  `electrico` tinyint(1) DEFAULT NULL,
  `dniUsuario` varchar(9) NOT NULL,
  PRIMARY KEY (`matricula`),
  KEY `FK_vehiculo_tipovehiculo_idx` (`tipoVehiculo`),
  KEY `FK_vehiculo_usuario_idx` (`dniUsuario`),
  CONSTRAINT `FK_vehiculo_tipovehiculo` FOREIGN KEY (`tipoVehiculo`) REFERENCES `tipovehiculo` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_vehiculo_usuario` FOREIGN KEY (`dniUsuario`) REFERENCES `usuarios` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `plazas` (
  `numero` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT '0',
  `tipoVehiculo` varchar(14) DEFAULT NULL,
  `matriculaVehiculo` varchar(7) DEFAULT NULL,
  `electrico` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `FK_plazas_tipovehiculo_idx` (`tipoVehiculo`),
  KEY `FK_plazas_matricula_idx` (`matriculaVehiculo`),
  CONSTRAINT `FK_plazas_matricula` FOREIGN KEY (`matriculaVehiculo`) REFERENCES `vehiculos` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_plazas_tipoVehiculo` FOREIGN KEY (`tipoVehiculo`) REFERENCES `tipovehiculo` (`nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO plazas VALUES (1, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (2, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (3, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (4, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (5, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (6, 0, 'furgoneta', null, 0);
INSERT INTO plazas VALUES (7, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (8, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (9, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (10, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (11, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (12, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (13, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (14, 0, 'furgoneta', null, 0);
INSERT INTO plazas VALUES (15, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (16, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (17, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (18, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (19, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (20, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (21, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (22, 0, 'furgoneta', null, 0);
INSERT INTO plazas VALUES (23, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (24, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (25, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (26, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (27, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (28, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (29, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (30, 0, 'furgoneta', null, 0);
INSERT INTO plazas VALUES (31, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (32, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (33, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (34, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (35, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (36, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (37, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (38, 0, 'furgoneta', null, 0);
INSERT INTO plazas VALUES (39, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (40, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (41, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (42, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (43, 0, 'coche', null, 0);
INSERT INTO plazas VALUES (44, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (45, 0, 'coche', null, 1);
INSERT INTO plazas VALUES (46, 0, 'furgoneta', null, 0);
INSERT INTO plazas VALUES (47, 0, 'moto', null, 0);
INSERT INTO plazas VALUES (48, 0, 'moto', null, 0);

