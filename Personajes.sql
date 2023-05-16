-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2023 a las 12:58:58
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `resident`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animes`
--

CREATE TABLE `animes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_2` varchar(255) DEFAULT NULL,
  `edad` varchar(50) DEFAULT NULL,
  `relacion` varchar(255) DEFAULT NULL,
  `especialidad` varchar(255) DEFAULT NULL,
  `estatura` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `animes`
--

INSERT INTO `animes` (`id`, `nombre`, `genero`, `imagen`, `imagen_2`, `edad`, `relacion`, `especialidad`, `estatura`, `created_at`, `updated_at`) VALUES
(1, 'Chris Redfield', 'Masculino', 'QXn8183UNQ3V7s90dyTrSXR5GDz3bcLfnzrFAsON.webp', 'kFGZr9hffpb4Rr8P5Wi0c5cKTo2WVuzQ38OFBeH9.png', '50', 'Soltero', 'Ex-piloto de las fuerzas aéreas norteamericanas, batidor del equipo Alfa y entrenador de reclutas.', '185 cm', '2023-05-12 09:10:00', '2023-05-12 16:56:58'),
(2, 'Claire Redfield', 'Femenino', 'drhXEj8xPlHyt7T8WM9u2Xbu3S8xYBNHn5Uban26.jpg', '5eTa3Jq1QKxA6tD8tQI5TP5L1tYxDm5CQ4K2LCPG.png', '44', 'Soltera', 'Estudiante Universitaria', '1,69 m', '2023-05-12 09:10:00', '2023-05-12 16:52:50'),
(3, 'Leon Kennedy', 'Masculino', 'QrAkPjio3UgYSvSkkSiwmiK1JxVgkcjP0KYMc2PY.png', 'DzZE7WMRmHPZKxsbTnLRxGrLbAz7rhLkg32f0blh.webp', '46', 'Soltero', 'Agente americano de la D.S.O.', '178 cm', '2023-05-12 09:10:00', '2023-05-12 16:55:46'),
(4, 'Jill Valentine', 'Femenino', 'Mq0wqEIuQzxR7NiUpgwcyHcIrrCHTr4IXbOYSfrP.jpg', '5rfsZ498FIoHXZbMee4Hpo2sg1aSSB2RfuHobeeS.png', '49', 'Soltera', 'Miembro del equipo Alpha de S.T.A.R.S.', '172 cm', '2023-05-12 09:10:00', '2023-05-12 16:57:45'),
(5, 'Ada Wong', 'Femenino', 'lEyBLiHaPKVQYy9SPOiZhdn3OU2LSFW9qvZhL6Yr.webp', '4bI60ZOQv6zWWgHViHciWVEPtDpSV8Y2N4XUf4VZ.png', '49', 'Soltera', 'Agente espia estadounidense', '1,73 m', '2023-05-12 09:10:00', '2023-05-12 16:58:21'),
(6, 'Albert Wesker', 'Masculino', 'rSIlBmWhRFN6OcPHjyy37e9dBepurMAv3JcXwaFH.webp', 'ir0cosZwhWfl28d3CEwYeYXsSS3hYKJSVmfWvAZm.webp', '63', 'Casado', 'Capitan de S.T.A.R.S', '190 cm', '2023-05-12 09:10:00', '2023-05-12 16:59:22'),
(7, 'Ethan Winters', 'Masculino', 'k8ulCz2SB6EpAsoqUkg4XyEwwjwTq1PB3yVoiH3W.webp', 'A48xfLQrm4MGZD0JjpZ0J0INwVUWhEnmBpwi8gHA.webp', '39', 'Casado', 'Ingeniero', '180 cm', '2023-05-12 09:10:00', '2023-05-12 17:03:20'),
(8, 'Carlos Oliveira', 'Masculino', '4d62z9djgVQnaCFu6heGeQySOMJPfo6JJzmG9kpo.jpg', '8gQvZqyfi3hSob6FyT3QuBY4REeZzwb56XNFzcWp.webp', '46', 'Soltero', 'Soldado ex-miembro del U.B.C.S.', '1.82 cm', '2023-05-12 09:10:00', '2023-05-12 17:04:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animes`
--
ALTER TABLE `animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
