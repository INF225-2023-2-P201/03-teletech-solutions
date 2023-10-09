-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2023 a las 03:14:41
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_ing_sw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_red`
--

CREATE TABLE `config_red` (
  `id` int(11) NOT NULL,
  `IPs` varchar(255) NOT NULL,
  `mascara` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `config_red`
--

INSERT INTO `config_red` (`id`, `IPs`, `mascara`, `usuario`) VALUES
(1, '192.168.1.2', '255.255.255.0', 'laptop0'),
(2, '192.168.1.3', '255.255.255.0', 'laptop1'),
(3, '192.168.2.2', '255.255.255.0', 'laptop2'),
(4, '192.168.2.3', '255.255.255.0', 'laptop3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `Correo` varchar(25) DEFAULT NULL,
  `Contraseña` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_usuario`, `Nombre`, `Correo`, `Contraseña`) VALUES
(12, 'sir_sergio', 'sergio@gmail.com', '123'),
(14, 'ariel', 'ariel@gmail.com', '1234'),
(16, 'isaias', 'isaias@gmail.com', '1234'),
(17, 'ariel234', 'vf@gmail.com', '1234'),
(18, 'ariel3', 'hola@hola.com', '12345'),
(19, 'arielqqqq', 'holaqqq@hola.com', '1234'),
(20, 'ariel3wwww', 'holawwwww@hola.com', '1234'),
(21, 'ariel42222', 'hol2222a@hola.com', '1234');

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `delete_account` AFTER DELETE ON `usuario` FOR EACH ROW BEGIN
	IF EXISTS(SELECT * FROM usuario WHERE Id_usuario = OLD.Id_usuario) THEN
        BEGIN
            DELETE FROM comentarios WHERE Id_usuario = OLD.Id_usuario;
            DELETE FROM video WHERE Id_usuario = OLD.Id_usuario;
 	    DELETE FROM usuario WHERE Id_usuario = OLD.Id_usuario;
        END;
   END IF;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `config_red`
--
ALTER TABLE `config_red`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `config_red`
--
ALTER TABLE `config_red`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
