-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 08:55 PM
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
-- Database: `intento`
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
  `temporadas` varchar(255) DEFAULT NULL,
  `capitulos` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `genero`, `imagen`, `temporadas`, `capitulos`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Dragon Ball Z', 'Acción', 'rvHcSM4hU1tbMnC4eXypjY0UFzOWV6Sy8OzkkC1L.webp', '5 temporadas', '291 capitulos', 'Se deben de recolectar las esferas del Dragón para pedir un deseo.', '2023-05-12 09:10:00', '2023-05-25 01:52:39'),
(2, 'Death Note', 'Drama', 'lOs9NiVYMTaRfJDqMfIAXWRm53nyRbz9OejSo3pA.jpg', '2 temporadas', '37 capitulos', 'Light Yagami es un joven estudiante que un día encuentra un cuaderno llamado Death Note que tiene una macabra propiedad: si el nombre de una persona aparece escrito en él, morirá.', '2023-05-15 09:10:00', '2023-05-25 01:52:47'),
(3, 'Chainsaw Man', 'Accion', '72uQyo6V0gxcWIrv5NiTp8NblFutupEIIQH72zO9.webp', '1 temporada', '12 capitulos', '\'Chainsaw Man\' es la historia de Denji, un adolescente que carga con las inmensas deudas de su padre y que malvive como puede para saldarlas, ya sea vendiendo sus órganos o haciendo todo tipo de trabajos malpagados.', '2023-05-15 09:10:00', '2023-05-25 01:52:56'),
(4, 'My Hero Academia', 'Acción', 'pRPJxDz7LmPwtUApytIqMklmfbMmynTdMLStnksX.webp', '6 temporadas', '138 capitulos', 'My Hero Academia es una serie de anime realizada por el estudio BONES basada en el manga homónimo creado por Kohei Horihoshi acerca de un grupo de estudiantes que se preparan para ser superhéroes.', '2023-05-15 09:10:00', '2023-05-25 01:53:08'),
(11, 'Fullmetal Alchemist: Brotherhood', 'Acción', '2EkTpm10mQBkf7cTjDrdJ86rZq5kUloCGLUuKvFc.jpg', '1 temporada', '64 capitulos', 'After a horrific alchemy experiment goes wrong in the Elric household, brothers Edward and Alphonse are left in a catastrophic new reality.', '2023-05-16 11:20:06', '2023-05-25 01:53:16'),
(13, 'Berserk', 'Drama', 'KNaN6NWq422O0r7jE9fS2wPGzbhJ0zjUCBV9g6d9.jpg', '2 temporadas', '36 capitulos', '“Berserk” sigue la historia de Guts, un mercenario y espadachín con un oscuro destino.', '2023-05-18 00:36:15', '2023-05-25 01:53:24'),
(14, 'Kimetsu no Yaiba', 'Acción', 'HDprmjTDWOngOUYzykv2tXliTlBK3GkAdFkrTvHz.webp', '4 temporadas', '56 capitulos', 'La serie narra las desventuras de Tanjiro, un joven de un Japón feudal fantástico que se ve abocado a la venganza después de que un demonio acabe con toda su familia', '2023-05-18 00:37:39', '2023-05-25 01:53:32'),
(15, 'Evangelion', 'Psicológico', '7WYgDNqnE2UVwl9sv8MoYn5vn4lQDd2GO9X51y9x.webp', '1 temporada\r\n', '26', 'La historia de la obra se da lugar en un mundo futurista en el que una organización paramilitar llamada NERV protege a la humanidad de los Ángeles', '2023-05-18 00:39:14', '2023-05-25 01:53:39');

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
