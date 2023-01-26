-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2021 a las 18:58:57
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `manga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `leido` text NOT NULL,
  `coleccion` varchar(2) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `demo` varchar(10) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `inicio` date NOT NULL,
  `iniciolectura` date NOT NULL,
  `finlectura` date NOT NULL,
  `capitulo` double NOT NULL,
  `introTexto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`leido`, `coleccion`, `titulo`, `autor`, `demo`, `genero`, `inicio`, `iniciolectura`, `finlectura`, `capitulo`, `introTexto`) VALUES
('Sí', 'Sí', '3x1 - Edición coleccionista', 'Inma R.', 'Shojo', 'Romance', '2007-01-01', '0000-00-00', '0000-00-00', 0, 'Medea'),
('Sí', 'Sí', 'Akamatsu y Seven: Macarras in love #01', 'Shoowa; Okujima, Hiromasa', 'BL', 'Romance, Slice of life', '2021-04-19', '2021-06-23', '2021-06-23', 0, 'Tomodomo. 3 tomos'),
('Sí', 'Sí', 'Akamatsu y Seven: Macarras in love #02', 'Shoowa; Okujima, Hiromasa', 'BL', 'Romance, Slice of life', '2021-06-21', '2021-07-15', '2021-07-15', 0, 'Tomodomo. 3 tomos'),
('Sí', 'Sí', 'Akamatsu y Seven: Macarras in love #03', 'Shoowa; Okujima, Hiromasa', 'BL', 'Romance, Slice of life', '2021-10-25', '2021-11-21', '2021-11-21', 0, 'Tomodomo. Completa'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #01', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2017-11-24', '2018-01-01', '2018-01-01', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #02', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2018-01-25', '2018-01-01', '2018-01-01', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #03', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2018-04-12', '2018-01-01', '2018-01-01', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #04', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2018-05-17', '2018-01-01', '2018-01-01', 7, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #05', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2018-08-02', '0000-00-00', '0000-00-00', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #06', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2018-10-11', '0000-00-00', '0000-00-00', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #07', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2018-12-06', '0000-00-00', '0000-00-00', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #08', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2019-02-28', '0000-00-00', '0000-00-00', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #09', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2019-05-23', '0000-00-00', '0000-00-00', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #10', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2019-09-05', '0000-00-00', '0000-00-00', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #11', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2019-11-21', '2021-01-02', '2021-01-02', 0, 'IVREA. 12 tomos'),
('Sí', 'Sí', 'Amar y ser amado, dejar y ser dejado #12', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2019-03-12', '2021-01-02', '2021-01-02', 0, 'IVREA. Completa'),
('Sí', 'Sí', 'Amor programable #01', 'Kayoru', 'Shojo', 'Ciencia ficción, Comedia, Romance', '2016-01-28', '0000-00-00', '0000-00-00', 0, 'IVREA. 2 tomos'),
('Sí', 'Sí', 'Amor programable #02', 'Kayoru', 'Shojo', 'Ciencia ficción, Comedia, Romance', '2016-04-08', '0000-00-00', '0000-00-00', 0, 'IVREA. Completa'),
('Sí', 'Sí', 'Ao Haru Ride #01', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-02-27', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #02', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-03-20', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #03', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-04-30', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #04', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-05-22', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #05', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-06-12', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #06', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-07-17', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #07', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-08-21', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #08', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-09-18', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #09', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-10-30', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #10', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-11-27', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #11', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2015-12-31', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #12', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2018-01-28', '0000-00-00', '0000-00-00', 0, 'IVREA. 13 tomos'),
('Sí', 'Sí', 'Ao Haru Ride #13', 'Sakisaka, Io', 'Shojo', 'Romance, Slice of life', '2016-02-26', '0000-00-00', '0000-00-00', 0, 'IVREA. Completa'),
('', '', 'Ashita wa Docchi Da! #07', 'Yamamoto, Kotetsuko', 'BL', 'Comedia, Romance, Slice of life', '0000-00-00', '0000-00-00', '0000-00-00', 31, 'ihr hertZ. 8/?'),
('Sí', 'Sí', 'Bakemono #01', 'Xian Nu Studio', 'Shonen', 'Aventura, Fantasía', '2010-10-01', '0000-00-00', '0000-00-00', 0, 'Glénat. 3 tomos'),
('Sí', 'Sí', 'Bakemono #02', 'Xian Nu Studio', 'Shonen', 'Aventura, Fantasía', '2011-10-01', '0000-00-00', '0000-00-00', 0, 'Glénat. 3 tomos'),
('Sí', 'Sí', 'Bakemono #03', 'Xian Nu Studio', 'Shonen', 'Aventura, Fantasía', '2012-10-01', '0000-00-00', '0000-00-00', 0, 'Glénat. Completa'),
('Sí', 'Sí', 'Blue! Blue! Blue!', 'Amamiya', 'BL', 'Drama, Romance', '2019-02-28', '0000-00-00', '0000-00-00', 0, 'Milky Way'),
('', 'Sí', 'Code Geass #01', 'Majiko; Taniguchi, Goro; Ohkuchi, Ichirou', 'Shojo', 'Acción, Drama, Mecha', '2013-02-01', '0000-00-00', '0000-00-00', 0, 'IVREA. 8 tomos'),
('Sí', 'Sí', 'Color Recipe #01', 'Harada', 'BL', 'Drama, Erótica', '2019-09-27', '0000-00-00', '0000-00-00', 0, 'NORMA. 2 tomos'),
('Sí', 'Sí', 'Color Recipe #02', 'Harada', 'BL', 'Drama, Erótica', '2019-10-31', '0000-00-00', '0000-00-00', 0, 'NORMA. Completa'),
('Sí', 'Sí', 'Corazón de melón #01', 'ChiNoMiko; Senchu, Migoto; Xian Nu Studio', 'Shojo', 'Romance, Slice of life', '2014-05-28', '0000-00-00', '0000-00-00', 0, 'Fandogamia. 5 tomos'),
('Sí', 'Sí', 'Corazón de melón #02', 'ChiNoMiko; Senchu, Migoto; Xian Nu Studio', 'Shojo', 'Romance, Slice of life', '2014-10-30', '0000-00-00', '0000-00-00', 0, 'Fandogamia. 5 tomos'),
('Sí', 'Sí', 'Corazón de melón #03', 'ChiNoMiko; Senchu, Migoto; Xian Nu Studio', 'Shojo', 'Romance, Slice of life', '2015-06-26', '0000-00-00', '0000-00-00', 0, 'Fandogamia. 5 tomos'),
('Sí', 'Sí', 'Corazón de melón #04', 'ChiNoMiko; Senchu, Migoto; Xian Nu Studio', 'Shojo', 'Romance, Slice of life', '2015-10-29', '0000-00-00', '0000-00-00', 0, 'Fandogamia. 5 tomos'),
('Sí', 'Sí', 'Corazón de melón #05', 'ChiNoMiko; Senchu, Migoto; Xian Nu Studio', 'Shojo', 'Romance, Slice of life', '2016-06-10', '0000-00-00', '0000-00-00', 0, 'Fandogamia. Completa'),
('', 'Sí', 'El caballero vampiro #1', 'Hino, Matsuri', 'Shojo', 'Drama, Romance, Sobrenatural', '2008-05-01', '0000-00-00', '0000-00-00', 0, 'Panini. 19 tomos'),
('Sí', 'Sí', 'El chico del súper', 'Junko', 'BL', 'Erótica, Romance', '2016-11-01', '0000-00-00', '0000-00-00', 0, 'Tomodomo'),
('', 'Sí', 'El conde y el hada #01', 'Ayuko; Tani, Mizue', 'Shojo', 'Fantasía, Romance, Sobrenatural', '2014-09-04', '0000-00-00', '0000-00-00', 0, 'IVREA. 4 tomos'),
('Sí', 'Sí', 'Fruits Basket #01', 'Takaya, Natsuki', 'Shojo', 'Romance, Sobrenatural', '2004-10-01', '0000-00-00', '0000-00-00', 0, 'NORMA. 23 tomos'),
('Sí', 'Sí', 'Fruits Basket - Edición coleccionista #01', 'Takaya, Natsuki', 'Shojo', 'Romance, Sobrenatural', '2017-08-25', '0000-00-00', '0000-00-00', 0, 'NORMA. 12 tomos'),
('', 'Sí', 'Fruits Basket - Edición coleccionista #02', 'Takaya, Natsuki', 'Shojo', 'Romance, Sobrenatural', '2017-10-31', '0000-00-00', '0000-00-00', 0, 'NORMA. 12 tomos'),
('', 'Sí', 'Fruits Basket - Edición coleccionista #03', 'Takaya, Natsuki', 'Shojo', 'Romance, Sobrenatural', '2018-01-26', '0000-00-00', '0000-00-00', 0, 'NORMA. 12 tomos'),
('', 'Sí', 'Full Metal Alchemist - Kanzenban #01', 'Arakawa, Hiromu', 'Shonen', 'Nekketsu', '2013-10-31', '2021-12-05', '0000-00-00', 2, 'NORMA. 18 tomos'),
('Sí', 'Sí', 'Historia de un vecindario #01', 'Yazawa, Ai', 'Shojo', 'Romance, Slice of life', '2009-05-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 4 tomos'),
('Sí', 'Sí', 'Historia de un vecindario #02', 'Yazawa, Ai', 'Shojo', 'Romance, Slice of life', '2009-06-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 4 tomos'),
('Sí', 'Sí', 'Historia de un vecindario #03', 'Yazawa, Ai', 'Shojo', 'Romance, Slice of life', '2009-07-10', '0000-00-00', '0000-00-00', 0, 'Planeta. 4 tomos'),
('Sí', 'Sí', 'Historia de un vecindario #04', 'Yazawa, Ai', 'Shojo', 'Romance, Slice of life', '2009-08-01', '0000-00-00', '0000-00-00', 0, 'Planeta. Completa'),
('Sí', 'Sí', 'Historias de amor - Koimonogatari #01', 'Tagura, Tohru', 'BL', 'Drama, Slice of life', '2020-03-06', '0000-00-00', '0000-00-00', 0, 'NORMA. 1/?'),
('Sí', 'Sí', 'Historias de amor - Koimonogatari #02', 'Tagura, Tohru', 'BL', 'Drama, Slice of life', '2020-08-06', '0000-00-00', '0000-00-00', 0, 'NORMA. 2/?'),
('', '', 'Honnou Switch #05', 'Kujira', 'Josei', 'Erótica, Romance, Slice of life', '2021-01-13', '0000-00-00', '0000-00-00', 17, 'Comic tint. 8 tomos'),
('Sí', '', 'Honto Yajuu #01', 'Yamamoto, Kotetsuko', 'BL', 'Acción, Comedia, Romance', '2008-07-10', '0000-00-00', '0000-00-00', 0, 'GUSH. 11/?'),
('Sí', '', 'Honto Yajuu #02', 'Yamamoto, Kotetsuko', 'BL', 'Acción, Comedia, Romance', '2009-02-10', '0000-00-00', '0000-00-00', 0, 'GUSH. 11/?'),
('', '', 'Honto Yajuu #10', 'Yamamoto, Kotetsuko', 'BL', 'Acción, Comedia, Romance', '0000-00-00', '2020-01-01', '2020-01-01', 29.1, 'GUSH. 11/?'),
('', 'Sí', 'Instituto Ouran Host Club #01', 'Hatori, Bisco', 'Shojo', 'Comedia, Romance, Slice of life', '2006-01-01', '0000-00-00', '0000-00-00', 0, 'Panini. 18 tomos'),
('', 'Sí', 'Instituto Ouran Host Club #15', 'Hatori, Bisco', 'Shojo', 'Comedia, Romance, Slice of life', '2010-09-01', '0000-00-00', '0000-00-00', 0, 'Panini. 18 tomos'),
('', 'Sí', 'Instituto Ouran Host Club #16', 'Hatori, Bisco', 'Shojo', 'Comedia, Romance, Slice of life', '2011-05-01', '0000-00-00', '0000-00-00', 0, 'Panini. 18 tomos'),
('Sí', 'Sí', 'La Princesa Ai #01', 'Love, Courtney; Milky, D.J.; Kujiradou, Misaho', 'Shojo', 'Fantasía, Romance', '2007-09-01', '0000-00-00', '0000-00-00', 0, 'Ediciones B. 3 tomos'),
('Sí', 'Sí', 'La Princesa Ai #02', 'Love, Courtney; Milky, D.J.; Kujiradou, Misaho', 'Shojo', 'Fantasía, Romance', '2007-09-01', '0000-00-00', '0000-00-00', 0, 'Ediciones B. 3 tomos'),
('', 'Sí', 'Last Quarter', 'Yazawa, Ai', 'Shojo', 'Drama, Misterio, Supernatural', '2018-10-16', '0000-00-00', '0000-00-00', 0, 'Planeta. Integral'),
('Sí', 'Sí', 'Marmalade Boy - Edición especial #01', 'Yoshizumi, Wataru', 'Shojo', 'Comedia, Drama, Romance', '2007-11-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 6 tomos'),
('Sí', 'Sí', 'Marmalade Boy - Edición especial #02', 'Yoshizumi, Wataru', 'Shojo', 'Comedia, Drama, Romance', '2007-11-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 6 tomos'),
('Sí', 'Sí', 'Marmalade Boy - Edición especial #03', 'Yoshizumi, Wataru', 'Shojo', 'Comedia, Drama, Romance', '2008-01-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 6 tomos'),
('Sí', 'Sí', 'Marmalade Boy - Edición especial #04', 'Yoshizumi, Wataru', 'Shojo', 'Comedia, Drama, Romance', '2008-02-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 6 tomos'),
('Sí', 'Sí', 'Marmalade Boy - Edición especial #05', 'Yoshizumi, Wataru', 'Shojo', 'Comedia, Drama, Romance', '2008-03-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 6 tomos'),
('Sí', 'Sí', 'Marmalade Boy - Edición especial #06', 'Yoshizumi, Wataru', 'Shojo', 'Comedia, Drama, Romance', '2008-04-01', '0000-00-00', '0000-00-00', 0, 'Planeta. Completa'),
('Sí', '', 'Megumi to Tsugumi #01', 'Si, Mitsuru', 'BL', 'Erótica, Romance', '2018-10-17', '2021-09-05', '2021-09-06', 0, 'Qpa. 3/?'),
('Sí', '', 'Megumi to Tsugumi #02', 'Si, Mitsuru', 'BL', 'Erótica, Romance', '0000-00-00', '2021-09-06', '2021-09-06', 0, 'Qpa. 3/?'),
('Sí', '', 'Megumi to Tsugumi #03', 'Si, Mitsuru', 'BL', 'Erótica, Romance', '2019-12-17', '2021-09-06', '2021-09-06', 17, 'Qpa. 3/?'),
('Sí', 'Sí', 'Nana #01', 'Yazawa, Ai', 'Shojo', 'Drama, Romance, Slice of life', '2006-06-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 21/?'),
('Sí', 'Sí', 'Nana #02', 'Yazawa, Ai', 'Shojo', 'Drama, Romance, Slice of life', '2006-07-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 21/?'),
('Sí', 'Sí', 'Nana #03', 'Yazawa, Ai', 'Shojo', 'Drama, Romance, Slice of life', '2006-08-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 21/?'),
('Sí', 'Sí', 'Nana #04', 'Yazawa, Ai', 'Shojo', 'Drama, Romance, Slice of life', '2006-09-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 21/?'),
('Sí', 'Sí', 'Nana #05', 'Yazawa, Ai', 'Shojo', 'Drama, Romance, Slice of life', '2006-10-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 21/?'),
('Sí', 'Sí', 'Nana #06', 'Yazawa, Ai', 'Shojo', 'Drama, Romance, Slice of life', '2006-11-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 21/?'),
('Sí', 'Sí', 'Nana #07', 'Yazawa, Ai', 'Shojo', 'Drama, Romance, Slice of life', '2006-12-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 21/?'),
('Sí', 'Sí', 'Naruto #01', 'Kishimoto, Masashi', 'Shonen', 'Nekketsu', '2002-12-01', '0000-00-00', '0000-00-00', 0, 'Glénat. Descatalogada'),
('Sí', 'Sí', 'Naruto #02', 'Kishimoto, Masashi', 'Shonen', 'Nekketsu', '2002-12-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 72 tomos'),
('Sí', 'Sí', 'Naruto #03', 'Kishimoto, Masashi', 'Shonen', 'Nekketsu', '2003-02-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 72 tomos'),
('', 'Sí', 'Naruto #04', 'Kishimoto, Masashi', 'Shonen', 'Nekketsu', '2003-04-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 72 tomos'),
('', 'Sí', 'Naruto #05', 'Kishimoto, Masashi', 'Shonen', 'Nekketsu', '2003-06-01', '0000-00-00', '0000-00-00', 0, 'Planeta. 72 tomos'),
('', 'Sí', 'Naruto - Konbiniban #18', 'Kishimoto, Masashi', 'Shonen', 'Nekketsu', '2015-12-16', '0000-00-00', '0000-00-00', 0, 'Shueisha. 24 tomos'),
('', 'Sí', 'NARUTO―ナルト― #01', 'Kishimoto, Masashi', 'Shonen', 'Nekketsu', '2000-03-11', '0000-00-00', '0000-00-00', 0, 'Jump Comics. 72 tomos'),
('Sí', '', 'Ojou to Banken-kun #01', 'Hatsuharu', 'Shojo', 'Romance', '2019-04-12', '2021-05-28', '2021-05-28', 0, 'Bessatsu Friend. 6/?'),
('Sí', '', 'Ojou to Banken-kun #06', 'Hatsuharu', 'Shojo', 'Romance', '2021-05-13', '2021-11-24', '2021-12-07', 28, 'Bessatsu Friend. 6/?'),
('', '', 'Ojou to Yakuza Wakagashira no Aibu wa Amai ga Take', 'Ichimonji, Rin; Takemura, Fumi', 'Josei', 'Erótica, Romance', '2019-12-27', '0000-00-00', '0000-00-00', 2, 'Bunkasha. 5 cap'),
('Sí', '', 'Otonari Complex #04', 'Nonomura, Saku', 'Shojo', 'Comedia, Romance', '2020-01-23', '0000-00-00', '0000-00-00', 38.2, 'Kurofune Momo. 4/?'),
('', 'Sí', 'Pandora Hearts #01', 'Mochizuki, Jun', 'Shonen', 'Aventura, Fantasía, Sobrenatural', '2012-03-01', '0000-00-00', '0000-00-00', 0, 'NORMA. 24 tomos'),
('Sí', 'Sí', 'Paradise Kiss #04', 'Yazawa, Ai', 'Josei', 'Drama, Romance', '2003-08-01', '0000-00-00', '0000-00-00', 0, 'IVREA. 5 tomos'),
('', 'Sí', 'Queen and the Tailor', 'Beriko, Scarlet', 'BL', 'Comedia, Romance', '2021-09-30', '2021-12-06', '0000-00-00', 2, 'Milky Way'),
('Sí', 'Sí', 'S.O.S Love #01', 'Yasuko', 'Shojo', 'Comedia, Romance', '2020-07-30', '0000-00-00', '0000-00-00', 0, 'IVREA. 7 tomos'),
('Sí', 'Sí', 'S.O.S Love #02', 'Yasuko', 'Shojo', 'Comedia, Romance', '2020-10-29', '0000-00-00', '0000-00-00', 0, 'IVREA. 7 tomos'),
('Sí', 'Sí', 'S.O.S Love #03', 'Yasuko', 'Shojo', 'Comedia, Romance', '2021-01-07', '0000-00-00', '0000-00-00', 0, 'IVREA. 7 tomos'),
('Sí', 'Sí', 'S.O.S Love #04', 'Yasuko', 'Shojo', 'Comedia, Romance', '2021-02-04', '0000-00-00', '0000-00-00', 0, 'IVREA. 7 tomos'),
('Sí', 'Sí', 'S.O.S Love #05', 'Yasuko', 'Shojo', 'Comedia, Romance', '2021-04-15', '0000-00-00', '0000-00-00', 0, 'IVREA. 7 tomos'),
('Sí', 'Sí', 'S.O.S Love #06', 'Yasuko', 'Shojo', 'Comedia, Romance', '2021-05-27', '0000-00-00', '0000-00-00', 0, 'IVREA. 7 tomos'),
('Sí', 'Sí', 'S.O.S Love #07', 'Yasuko', 'Shojo', 'Comedia, Romance', '2021-07-29', '0000-00-00', '0000-00-00', 0, 'IVREA. Completa'),
('', '', 'Saikawa Fusai no Renai Jijou #03', 'Toyama, Monoka; Karasuma, Kanatsu', 'Josei', 'Erótica, Romance, Slice of life', '2019-03-15', '0000-00-00', '0000-00-00', 11, 'Muteki Renai. 6 tomos'),
('', 'Sí', 'Si me llevaras a una isla desierta', 'Yamada, 2Chome', 'BL', 'Erótica, Slice of life', '2018-09-21', '0000-00-00', '0000-00-00', 0, 'Nowevolution'),
('', 'Sí', 'Soul Eater #01', 'Ohkubo Atsushi', 'Shonen', 'Fantasía, Nekketsu', '2010-09-01', '0000-00-00', '0000-00-00', 0, 'NORMA. 25 tomos'),
('', 'Sí', 'Soul Eater #02', 'Ohkubo, Atsushi', 'Shonen', 'Fantasía, Nekketsu', '2010-10-01', '0000-00-00', '0000-00-00', 0, 'NORMA. 25 tomos'),
('', '', 'Takane to Hana #04', 'Shiwasu, Yuki', 'Shojo', 'Comedia, Romance', '2016-03-18', '0000-00-00', '0000-00-00', 18, 'Hana to Yume. 18 tomos'),
('Sí', '', 'Uruwashi no Yoi no Tsuki #01', 'Yamamori, Mika', 'Shojo', 'Romance', '2020-12-11', '2021-11-26', '2021-11-26', 0, 'Dessert. 3/?'),
('Sí', '', 'Uruwashi no Yoi no Tsuki #02', 'Yamamori, Mika', 'Shojo', 'Romance', '2021-05-13', '2021-11-27', '2021-11-27', 0, 'Dessert. 3/?'),
('Sí', '', 'Uruwashi no Yoi no Tsuki #03', 'Yamamori, Mika', 'Shojo', 'Romance', '2021-11-12', '2021-11-27', '2021-11-27', 12, 'Dessert. 3/?'),
('Sí', 'Sí', 'Vecinos Distantes', 'Suzuki, Tsuta', 'BL', 'Romance', '2019-12-16', '0000-00-00', '0000-00-00', 0, 'Tomodomo'),
('', 'Sí', 'XXXholic #01', 'Clamp', 'Seinen', 'Misterio, Sobrenatural', '2004-07-01', '0000-00-00', '0000-00-00', 0, 'Norma. 19 tomos'),
('Sí', 'Sí', 'Yamada y el chico', 'Ori, Mita', 'BL', 'Romance', '2021-06-24', '0000-00-00', '0000-00-00', 0, 'Kodai'),
('Sí', 'Sí', 'Yu Yu Hakusho - Kanzenban #01', 'Togashi, Yoshihiro', 'Shonen', 'Nekketsu, Sobrenatural', '2020-12-23', '0000-00-00', '0000-00-00', 0, 'IVREA. 15 tomos'),
('', 'Sí', 'Yu Yu Hakusho - Kanzenban #02', 'Togashi, Yoshihiro', 'Shonen', 'Nekketsu, Sobrenatural', '2021-02-18', '0000-00-00', '0000-00-00', 0, 'IVREA. 15 tomos'),
('', 'Sí', 'Yu Yu Hakusho - Kanzenban #03', 'Togashi, Yoshihiro', 'Shonen', 'Nekketsu, Sobrenatural', '2021-04-29', '0000-00-00', '0000-00-00', 0, 'IVREA. 15 tomos'),
('', 'Sí', 'Zatch Bell! #15', 'Raiku, Makoto', 'Shonen', 'Nekketsu, Sobrenatural', '2007-02-01', '0000-00-00', '0000-00-00', 0, 'NORMA. 33 tomos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`titulo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
