-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 08:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animes`
--

-- --------------------------------------------------------

--
-- Table structure for table `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `capitulos` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `genero`, `imagen`, `capitulos`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Dragon Ball Z', 'Acción', 'NLBYB2sWFZqtD4DmIWmoESQA1Fo4Bmp0Ol0ODsf2.webp', '291', 'Se deben de recolectar las esferas del Dragón para pedir un deseo.', '2023-05-12 09:10:00', '2023-05-18 00:39:58'),
(2, 'Death Note', 'Drama', 'm2hliwD3OHclCSP8WShKmhibqBniC5zeiPX3VG7T.jpg', '37', 'Light Yagami es un joven estudiante que un día encuentra un cuaderno llamado Death Note que tiene una macabra propiedad: si el nombre de una persona aparece escrito en él, morirá.', '2023-05-15 09:10:00', '2023-05-18 00:40:30'),
(3, 'Chainsaw Man', 'Accion', 'PgkR0wS2Hp6vDMIioHPsylppHIctCui8yWvCDaxB.webp', '12', '\'Chainsaw Man\' es la historia de Denji, un adolescente que carga con las inmensas deudas de su padre y que malvive como puede para saldarlas, ya sea vendiendo sus órganos o haciendo todo tipo de trabajos malpagados.', '2023-05-15 09:10:00', '2023-05-18 00:40:55'),
(4, 'My Hero Academia', 'Acción', 'Zv6y9k9rjmcQ38E645LpT6mGQOu7FQw8yR6NHK95.webp', '24', 'My Hero Academia es una serie de anime realizada por el estudio BONES basada en el manga homónimo creado por Kohei Horihoshi acerca de un grupo de estudiantes que se preparan para ser superhéroes.', '2023-05-15 09:10:00', '2023-05-18 00:41:25'),
(11, 'Fullmetal Alchemist: Brotherhood', 'Acción', 'oR5IXSLiL7WugqoCLwLKXretRcvWY6twEv1ZUryO.jpg', '64', 'After a horrific alchemy experiment goes wrong in the Elric household, brothers Edward and Alphonse are left in a catastrophic new reality.', '2023-05-16 11:20:06', '2023-05-16 11:20:06'),
(13, 'Berserk', 'Drama', 'tw3pRkVdy8lugbLLYVerz2qpW4QmFv6IwIfPOFY1.jpg', '25', '“Berserk” sigue la historia de Guts, un mercenario y espadachín con un oscuro destino.', '2023-05-18 00:36:15', '2023-05-18 00:36:15'),
(14, 'Kimetsu no Yaiba', 'Acción', 'tu1FmpzUQZMg9dzfmlrExJQwHjiPBlW1voYq1TpR.webp', '24', 'La serie narra las desventuras de Tanjiro, un joven de un Japón feudal fantástico que se ve abocado a la venganza después de que un demonio acabe con toda su familia', '2023-05-18 00:37:39', '2023-05-18 00:37:39'),
(15, 'Evangelion', 'Psicológico', '588jkCBaXlLYSc4A4aWT3tAYQH6hNec4pddw58Ax.webp', '26', 'La historia de la obra se da lugar en un mundo futurista en el que una organización paramilitar llamada NERV protege a la humanidad de los Ángeles', '2023-05-18 00:39:14', '2023-05-18 00:39:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
