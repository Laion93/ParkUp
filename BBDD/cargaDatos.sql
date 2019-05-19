USE parking;

INSERT INTO usuarios VALUES('12345678A', 'NombreUsuario1', 'ApellidoUsuario1', 'usuario1@server.com', 612987654, 'usuario1', 'usuario');
INSERT INTO usuarios VALUES('17834552C', 'NombreUsuario2', 'ApellidoUsuario2', 'usuario2@server.com', 697612567, 'usuario2', 'usuario');
INSERT INTO usuarios VALUES('45698822W', 'NombreUsuario3', 'ApellidoUsuario3', 'usuario3@server.com', 612987654, 'usuario3', 'usuario');
INSERT INTO usuarios VALUES('01129876F', 'NombreUsuario4', 'ApellidoUsuario4', 'usuario4@server.com', 612987654, 'usuario4', 'usuario');
INSERT INTO usuarios VALUES('24981223T', 'NombreUsuario5', 'ApellidoUsuario5', 'usuario5@server.com', 612987654, 'usuario5', 'usuario');
INSERT INTO usuarios VALUES('14672341Z', 'NombreUsuario6', 'ApellidoUsuario6', 'usuario6@server.com', 612987654, 'usuario6', 'usuario');
INSERT INTO usuarios VALUES('82635292L', 'NombreUsuario7', 'ApellidoUsuario7', 'usuario7@server.com', 612987654, 'usuario7', 'usuario');

INSERT INTO vehiculos VALUES('1234ABC', 'coche', false, '12345678A');
INSERT INTO vehiculos VALUES('7345GTR', 'coche', true, '12345678A');
INSERT INTO vehiculos VALUES('9826ERF', 'furgoneta', false, '12345678A');

INSERT INTO vehiculos VALUES('5241RTE', 'coche', true, '17834552C');
INSERT INTO vehiculos VALUES('7892WQS', 'moto', false, '17834552C');

INSERT INTO vehiculos VALUES('3672WER', 'coche', false, '45698822W');
INSERT INTO vehiculos VALUES('2111REH', 'coche', false, '45698822W');
INSERT INTO vehiculos VALUES('9874KLJ', 'coche', true, '45698822W');
INSERT INTO vehiculos VALUES('3429HTR', 'moto', false, '45698822W');

INSERT INTO vehiculos VALUES('2387RET', 'furgoneta', false, '01129876F');
INSERT INTO vehiculos VALUES('4598TRY', 'furgoneta', false, '01129876F');
INSERT INTO vehiculos VALUES('9937FGB', 'furgoneta', false, '01129876F');
INSERT INTO vehiculos VALUES('7836MND', 'furgoneta', false, '01129876F');

INSERT INTO vehiculos VALUES('4517FGR', 'coche', false, '24981223T');
INSERT INTO vehiculos VALUES('9934YJP', 'coche', true, '24981223T');
INSERT INTO vehiculos VALUES('0493VCK', 'moto', false, '24981223T');

INSERT INTO vehiculos VALUES('4328JGH', 'coche', false, '14672341Z');
INSERT INTO vehiculos VALUES('6387TRE', 'coche', true, '14672341Z');
INSERT INTO vehiculos VALUES('2367RWE', 'furgoneta', false, '14672341Z');
INSERT INTO vehiculos VALUES('7234HAS', 'moto', false, '14672341Z');

INSERT INTO vehiculos VALUES('4528DKS', 'coche', false, '82635292L');
INSERT INTO vehiculos VALUES('3984GFR', 'coche', true, '82635292L');
INSERT INTO vehiculos VALUES('2987KJS', 'moto', false, '82635292L');