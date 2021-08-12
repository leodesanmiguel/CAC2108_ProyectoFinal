-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-07-2021 a las 17:45:16
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: cacproyecto
--
DROP DATABASE IF EXISTS cacproyecto2;
CREATE DATABASE IF NOT EXISTS cacproyecto2;
use cacproyecto2;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla localidades
--

DROP TABLE IF EXISTS localidades;
CREATE TABLE IF NOT EXISTS localidades (
  idlocalidad int(11) NOT NULL AUTO_INCREMENT,
  nombrelocalidad varchar(40) NOT NULL,
  idprovlocalidad int(11) NOT NULL,
  PRIMARY KEY (idlocalidad)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla localidades
--

INSERT INTO localidades (nombrelocalidad, idprovlocalidad)
VALUES 
('Bahía Blanca', 1),
('Banfield', 1),
('Berazategui', 1),
('Buenos Aires', 5),
('Comodoro Rivadavia', 4),
('Córdoba', 6),
('Corrientes', 7),
('Formosa', 9),
('Godoy Cruz', 12),
('González Catán', 1),
('Gregorio de Laferrere', 1),
('Guaymallén', 12),
('Isidro Casanova', 1),
('José C. Paz', 1),
('La Plata', 1),
('La Rioja', 11),
('Lanús', 1),
('Las Heras', 12),
('Mar del Plata', 1),
('Merlo', 1),
('Moreno', 1),
('Neuquén', 14),
('Paraná', 8),
('Posadas', 13),
('Quilmes', 1),
('Resistencia', 3),
('Río Cuarto', 6),
('Rosario', 17),
('Salta', 15),
('San Fernando del Valle de Catamarca', 2),
('San Luis', 16),
('San Miguel de Tucumán', 19),
('San Miguel', 1),
('San Salvador de Jujuy', 10),
('Santa Fe', 17),
('Santiago del Estero', 18),
('Virrey del Pino', 1),
('Cafayate',15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla pedidos
--

DROP TABLE IF EXISTS pedidos;
CREATE TABLE IF NOT EXISTS pedidos (
  idpedido int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(40) NOT NULL,
  apellido varchar(40) NOT NULL,
  usuario varchar(20) NOT NULL,
  mail varchar(30) NOT NULL,
  lugarentrega varchar(80) NOT NULL,
  localidad int(11) NOT NULL,
  provincia int(11) NOT NULL,
  codpostal varchar(9) NOT NULL,
  formadepago varchar(10) NOT NULL,
  tarjtitular varchar(40) NOT NULL,
  tarjnumero varchar(16) NOT NULL,
  tarjvto varchar(4) NOT NULL,
  tarjclave int(11) NOT NULL,
  PRIMARY KEY (idpedido)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla pedidos
--

INSERT INTO PEDIDOS
    (nombre, apellido, usuario, mail, lugarentrega, localidad, provincia, codpostal, formadepago, tarjtitular, tarjnumero, tarjvto, tarjclave)
VALUES 
('MAXIMILIANO', 'DIAZ', 'MAXIDI', 'diaz7450@gmail.com', 'Coronel Arias 46101', 35, 17, 2380, 'TARJETA', 'MAXIMILIANO DIAZ', '438857849574242', '1024', 421),
('JUAN', 'ALLIENDES', 'JUANAL', 'alliendes1875@gmail.com', 'Rodrigo de Triana 1945', 34, 10, 4215, 'TARJETA', 'JUAN ALLIENDES', '515778330839415', '0927', 918),
('MAXIMILIANO', 'AGUILERA', 'MAXIAG', 'aguilera1558@gmail.com', 'Uspallata 1856', 8, 9, 6654, 'TARJETA', 'MAXIMILIANO AGUILERA', '318603344929042', '0729', 841),
('ANDREA', 'AYALA', 'ANDRAY', 'ayala7908@gmail.com', 'General Rivas 1141', 2, 1, 6762, 'TARJETA', 'ANDREA AYALA', '537509371763096', '0822', 345),
('CAMILA', 'BRANDAN', 'CAMIBR', 'brandan2962@gmail.com', 'Centenario 2290', 19, 1, 7613, 'TARJETA', 'CAMILA BRANDAN', '348748716081477', '0327', 793),
('FLORENCIA', 'GOMEZ', 'FLORGO', 'gomez1546@gmail.com', 'Las Heras 1825', 22, 14, 5757, 'TARJETA', 'FLORENCIA GOMEZ', '429111076523375', '1127', 124),
('CRISTINA', 'BELEN', 'CRISBE', 'belen6039@gmail.com', 'Fernández Moreno 1415', 35, 17, 8877, 'TARJETA', 'CRISTINA BELEN', '415278060219693', '1230', 695),
('BRENDA', 'GUANUCO', 'BRENGU', 'guanuco1460@gmail.com', 'FLORENCIO BALLESTEROS 1415', 7, 7, 6997, 'TARJETA', 'BRENDA GUANUCO', '543809202907502', '0629', 388),
('IVAN', 'GONZALEZ', 'IVANGO', 'gonzalez3332@gmail.com', 'Guemes 126', 29, 15, 6088, 'TARJETA', 'IVAN GONZALEZ', '615924084987910', '0928', 457),
('ADRIANO', 'VALDEZ', 'ADRIVA', 'valdez2917@gmail.com', 'BOLIVAR 96', 6, 6, 1047, 'TARJETA', 'ADRIANO VALDEZ', '648353291626141', '0925', 413),
('MAXIMILIANO', 'DIAZ', 'MAXIDI', 'diaz7450@gmail.com', 'Coronel Arias 46101', 33, 1, 6189, 'TARJETA', 'MAXIMILIANO DIAZ', '630898452934377', '0826', 992),
('JUAN', 'ALLIENDES', 'JUANAL', 'alliendes1875@gmail.com', 'Rodrigo de Triana 1945', 21, 1, 6224, 'TARJETA', 'JUAN ALLIENDES', '429970920167392', '0921', 171),
('MAXIMILIANO', 'AGUILERA', 'MAXIAG', 'aguilera1558@gmail.com', 'Uspallata 1856', 24, 13, 5910, 'TARJETA', 'MAXIMILIANO AGUILERA', '517164025829296', '0528', 468),
('ANDREA', 'AYALA', 'ANDRAY', 'ayala7908@gmail.com', 'General Rivas 1141', 20, 1, 1531, 'TARJETA', 'ANDREA AYALA', '549793276984611', '0927', 521),
('CAMILA', 'BRANDAN', 'CAMIBR', 'brandan2962@gmail.com', 'Centenario 2290', 16, 11, 2054, 'TARJETA', 'CAMILA BRANDAN', '511987318036421', '0125', 256),
('FLORENCIA', 'GOMEZ', 'FLORGO', 'gomez1546@gmail.com', 'Las Heras 1825', 5, 4, 7759, 'TARJETA', 'FLORENCIA GOMEZ', '646304181514812', '0622', 306),
('CRISTINA', 'BELEN', 'CRISBE', 'belen6039@gmail.com', 'Fernández Moreno 1415', 7, 7, 1247, 'TARJETA', 'CRISTINA BELEN', '614884150819319', '0630', 354),
('BRENDA', 'GUANUCO', 'BRENGU', 'guanuco1460@gmail.com', 'FLORENCIO BALLESTEROS 1415', 11, 1, 7181, 'TARJETA', 'BRENDA GUANUCO', '544201825623200', '0927', 667),
('IVAN', 'GONZALEZ', 'IVANGO', 'gonzalez3332@gmail.com', 'Guemes 126', 4, 5, 2951, 'TARJETA', 'IVAN GONZALEZ', '547865782537130', '0423', 353),
('ADRIANO', 'VALDEZ', 'ADRIVA', 'valdez2917@gmail.com', 'BOLIVAR 96', 31, 16, 7441, 'TARJETA', 'ADRIANO VALDEZ', '446049237141963', '1130', 326),
('MAXIMILIANO', 'DIAZ', 'MAXIDI', 'diaz7450@gmail.com', 'Coronel Arias 46101', 23, 8, 7355, 'TARJETA', 'MAXIMILIANO DIAZ', '512725410904867', '0524', 221),
('JUAN', 'ALLIENDES', 'JUANAL', 'alliendes1875@gmail.com', 'Rodrigo de Triana 1945', 21, 1, 3404, 'TARJETA', 'JUAN ALLIENDES', '444489373546536', '1025', 442),
('MAXIMILIANO', 'AGUILERA', 'MAXIAG', 'aguilera1558@gmail.com', 'Uspallata 1856', 3, 1, 1199, 'TARJETA', 'MAXIMILIANO AGUILERA', '315112657793686', '1021', 751),
('ANDREA', 'AYALA', 'ANDRAY', 'ayala7908@gmail.com', 'General Rivas 1141', 35, 17, 8801, 'TARJETA', 'ANDREA AYALA', '624189181303768', '0829', 760),
('CAMILA', 'BRANDAN', 'CAMIBR', 'brandan2962@gmail.com', 'Centenario 2290', 35, 17, 4526, 'TARJETA', 'CAMILA BRANDAN', '511790092006174', '0324', 983),
('FLORENCIA', 'GOMEZ', 'FLORGO', 'gomez1546@gmail.com', 'Las Heras 1825', 35, 17, 2003, 'TARJETA', 'FLORENCIA GOMEZ', '550820227833837', '0321', 801),
('CRISTINA', 'BELEN', 'CRISBE', 'belen6039@gmail.com', 'Fernández Moreno 1415', 4, 5, 1962, 'TARJETA', 'CRISTINA BELEN', '412434858502776', '0923', 945),
('BRENDA', 'GUANUCO', 'BRENGU', 'guanuco1460@gmail.com', 'FLORENCIO BALLESTEROS 1415', 26, 3, 6194, 'TARJETA', 'BRENDA GUANUCO', '535893740063876', '0723', 151),
('IVAN', 'GONZALEZ', 'IVANGO', 'gonzalez3332@gmail.com', 'Guemes 126', 9, 12, 7429, 'TARJETA', 'IVAN GONZALEZ', '646014130796909', '0128', 541),
('ADRIANO', 'VALDEZ', 'ADRIVA', 'valdez2917@gmail.com', 'BOLIVAR 96', 6, 6, 3650, 'TARJETA', 'ADRIANO VALDEZ', '418874937785321', '0927', 326),
('MAXIMILIANO', 'DIAZ', 'MAXIDI', 'diaz7450@gmail.com', 'Coronel Arias 46101', 11, 1, 7650, 'TARJETA', 'MAXIMILIANO DIAZ', '522960402556683', '0421', 848),
('JUAN', 'ALLIENDES', 'JUANAL', 'alliendes1875@gmail.com', 'Rodrigo de Triana 1945', 4, 5, 6957, 'TARJETA', 'JUAN ALLIENDES', '532571476074768', '0425', 626),
('MAXIMILIANO', 'AGUILERA', 'MAXIAG', 'aguilera1558@gmail.com', 'Uspallata 1856', 6, 6, 1594, 'TARJETA', 'MAXIMILIANO AGUILERA', '339137754776362', '0729', 396),
('ANDREA', 'AYALA', 'ANDRAY', 'ayala7908@gmail.com', 'General Rivas 1141', 35, 17, 6098, 'TARJETA', 'ANDREA AYALA', '337942673573616', '0323', 878),
('CAMILA', 'BRANDAN', 'CAMIBR', 'brandan2962@gmail.com', 'Centenario 2290', 20, 1, 4684, 'TARJETA', 'CAMILA BRANDAN', '313982892027434', '1125', 803),
('FLORENCIA', 'GOMEZ', 'FLORGO', 'gomez1546@gmail.com', 'Las Heras 1825', 28, 17, 1319, 'TARJETA', 'FLORENCIA GOMEZ', '536023463904024', '0328', 167),
('CRISTINA', 'BELEN', 'CRISBE', 'belen6039@gmail.com', 'Fernández Moreno 1415', 22, 14, 5791, 'TARJETA', 'CRISTINA BELEN', '316242142582071', '1230', 228),
('BRENDA', 'GUANUCO', 'BRENGU', 'guanuco1460@gmail.com', 'FLORENCIO BALLESTEROS 1415', 27, 6, 5308, 'TARJETA', 'BRENDA GUANUCO', '441203066256346', '0322', 115),
('IVAN', 'GONZALEZ', 'IVANGO', 'gonzalez3332@gmail.com', 'Guemes 126', 21, 1, 4981, 'TARJETA', 'IVAN GONZALEZ', '513212730877965', '0828', 252),
('ADRIANO', 'VALDEZ', 'ADRIVA', 'valdez2917@gmail.com', 'BOLIVAR 96', 23, 8, 3067, 'TARJETA', 'ADRIANO VALDEZ', '321558952204070', '0530', 712);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla provincias
--

DROP TABLE IF EXISTS provincias;
CREATE TABLE IF NOT EXISTS provincias (
  idprovincia int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(40) NOT NULL,
  PRIMARY KEY (idprovincia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla provincias
--

INSERT INTO provincias (nombre) VALUES
('BuenosAires'),
('Catamarca'),
('Chaco'),
('Chubut'),
('CiudaddeBuenosAires'),
('Córdoba'),
('Corrientes'),
('EntreRíos'),
('Formosa'),
('Jujuy'),
('LaRioja'),
('Mendoza'),
('Misiones'),
('Neuquén'),
('Salta'),
('SanLuis'),
('SantaFe'),
('SantiagodelEstero'),
('Tucumán');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla usuarios
--

DROP TABLE IF EXISTS usuarios;
CREATE TABLE IF NOT EXISTS usuarios (
  idusuario int(11) NOT NULL AUTO_INCREMENT,
  usuario varchar(20) NOT NULL,
  clave varchar(20) NOT NULL,
  nombreyapellido blob,
  PRIMARY KEY (idusuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla usuarios
--

INSERT INTO USUARIOS
    (usuario, clave, nombreyapellido)
VALUES 
('diaz7450@gmail.com', 402686, 0x4D4158494D494C49414E4F204449415A),
('alliendes1875@gmail.com', 646811, 0x4A55414E20414C4C49454E444553),
('aguilera1558@gmail.com', 385526, 0x4D4158494D494C49414E4F20414755494C455241),
('ayala7908@gmail.com', 357718, 0x414E44524541204159414C41),
('brandan2962@gmail.com', 569958, 0x43414D494C41204252414E44414E),
('gomez1546@gmail.com', 476803, 0x464C4F52454E43494120474F4D455A),
('belen6039@gmail.com', 516959, 0x4352495354494E412042454C454E),
('guanuco1460@gmail.com', 348376, 0x4252454E4441204755414E55434F),
('gonzalez3332@gmail.com', 501562, 0x4956414E20474F4E5A414C455A),
('valdez2917@gmail.com', 334849, 0x41445249414E4F2056414C44455A),
('noble4856@gmail.com', 841086, 0x4D5941204E4F424C45),
('firme2466@gmail.com', 562114, 0x544F4D4153204649524D45),
('pereyra6361@gmail.com', 402813, 0x4D414954454E412050455245595241),
('casal1526@gmail.com', 801067, 0x534F46494120434153414C),
('escobar4881@gmail.com', 768944, 0x4D415254494E204553434F424152),
('utz5265@gmail.com', 539281, 0x414C454A414E44524F2055545A),
('nestares5647@gmail.com', 190789, 0x4C554349414E4F204E45535441524553),
('carrizo7941@gmail.com', 874728, 0x43454C455354452043415252495A4F),
('escobar6766@gmail.com', 438839, 0x44414E41204553434F424152),
('gomez3171@gmail.com', 783458, 0x4D494341454C4120474F4D455A),
('moreno5345@gmail.com', 195190, 0x4C554349414E4F204D4F52454E4F),
('guzman3392@gmail.com', 252193, 0x555249454C2047555A4D414E),
('mendoza8578@gmail.com', 557955, 0x4D415254494E41204D454E444F5A41);



--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla localidades
--
ALTER TABLE localidades
  ADD CONSTRAINT LocProv FOREIGN KEY (idprovlocalidad) REFERENCES provincias (idprovincia);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
