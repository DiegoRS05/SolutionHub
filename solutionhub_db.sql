-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-02-2025 a las 10:37:21
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
-- Base de datos: `solutionhub_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `user_id1` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chats`
--

INSERT INTO `chats` (`id`, `user_id1`, `user_id2`, `updated_at`, `created_at`) VALUES
(8, 16, 15, '2025-02-23 01:42:01', '2025-02-23 01:42:01'),
(9, 16, 19, '2025-02-23 02:06:51', '2025-02-23 02:06:51'),
(10, 14, 19, '2025-02-23 02:08:39', '2025-02-23 02:08:39'),
(11, 19, 15, '2025-02-23 02:38:16', '2025-02-23 02:38:16'),
(12, 15, 21, '2025-02-23 02:49:16', '2025-02-23 02:49:16'),
(14, 21, 14, '2025-02-23 02:56:58', '2025-02-23 02:56:58'),
(15, 18, 22, '2025-02-23 03:00:03', '2025-02-23 03:00:03'),
(16, 19, 24, '2025-02-23 09:39:49', '2025-02-23 09:39:49'),
(17, 16, 25, '2025-02-23 10:06:08', '2025-02-23 10:06:08'),
(18, 19, 26, '2025-02-23 11:40:11', '2025-02-23 11:40:11'),
(19, 24, 26, '2025-02-23 11:42:43', '2025-02-23 11:42:43'),
(20, 19, 27, '2025-02-23 11:56:08', '2025-02-23 11:56:08'),
(21, 19, 28, '2025-02-23 16:52:42', '2025-02-23 16:52:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(4, 'PHP'),
(5, 'PYTHON'),
(6, 'C'),
(7, 'JAVA'),
(8, 'BLADE'),
(9, 'HTML'),
(10, 'CSS'),
(11, 'HTML'),
(12, 'CSS'),
(13, 'C++'),
(14, 'GOLANG'),
(15, 'C++'),
(16, 'GOLANG'),
(17, 'OCAML'),
(18, 'NOT SPECIFIED');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `solution_id` int(11) NOT NULL,
  `type` enum('like','dislike') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `solution_id`, `type`) VALUES
(1, 1, 5, 'like'),
(2, 1, 4, 'like'),
(3, 1, 6, 'like'),
(4, 1, 2, 'like'),
(5, 2, 6, 'like'),
(6, 2, 5, 'dislike'),
(7, 5, 6, 'like'),
(8, 5, 4, 'like'),
(9, 1, 10, 'like'),
(10, 1, 9, 'like'),
(11, 1, 8, 'dislike'),
(12, 12, 10, 'like'),
(13, 2, 10, 'like'),
(14, 21, 17, 'like'),
(15, 25, 14, 'dislike'),
(16, 19, 17, 'dislike'),
(17, 16, 17, 'like'),
(18, 26, 17, 'like'),
(19, 28, 17, 'like'),
(20, 28, 23, 'dislike');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` varchar(3000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `chat_id`, `sender_id`, `receiver_id`, `message`, `created_at`, `updated_at`, `is_read`) VALUES
(27, 1, 2, 1, 'sql', '2025-02-22 04:07:32', '2025-02-22 07:48:40', 1),
(28, 1, 2, 1, 'SELECT', '2025-02-22 04:07:39', '2025-02-22 07:48:40', 1),
(29, 1, 2, 1, '*', '2025-02-22 04:07:41', '2025-02-22 07:48:40', 1),
(30, 1, 1, 2, 'hola buenas , me enseñas?', '2025-02-22 05:40:19', '2025-02-22 07:49:18', 1),
(31, 1, 2, 1, 'te enseño?', '2025-02-22 05:40:21', '2025-02-22 07:48:40', 1),
(32, 1, 1, 2, 'fvfffr', '2025-02-22 05:40:44', '2025-02-22 07:49:18', 1),
(33, 1, 1, 2, 'f', '2025-02-22 05:40:44', '2025-02-22 07:49:18', 1),
(34, 1, 1, 2, 'frf', '2025-02-22 05:40:44', '2025-02-22 07:49:18', 1),
(35, 1, 1, 2, 'fer', '2025-02-22 05:40:45', '2025-02-22 07:49:18', 1),
(36, 1, 1, 2, 'fer', '2025-02-22 05:40:45', '2025-02-22 07:49:18', 1),
(37, 1, 1, 2, 'f', '2025-02-22 05:40:45', '2025-02-22 07:49:18', 1),
(38, 1, 2, 1, 'hoosho', '2025-02-22 05:40:46', '2025-02-22 07:48:40', 1),
(39, 1, 2, 1, 'h', '2025-02-22 05:40:46', '2025-02-22 07:48:40', 1),
(40, 1, 2, 1, 'ohoh', '2025-02-22 05:40:47', '2025-02-22 07:48:40', 1),
(41, 1, 1, 2, 'ffer', '2025-02-22 05:40:47', '2025-02-22 07:49:18', 1),
(42, 1, 1, 2, 'fe', '2025-02-22 05:40:48', '2025-02-22 07:49:18', 1),
(43, 1, 1, 2, 'ferf', '2025-02-22 05:40:48', '2025-02-22 07:49:18', 1),
(44, 1, 1, 2, 'erf', '2025-02-22 05:40:48', '2025-02-22 07:49:18', 1),
(45, 1, 1, 2, 'f', '2025-02-22 05:40:48', '2025-02-22 07:49:18', 1),
(46, 1, 1, 2, 'erf', '2025-02-22 05:40:48', '2025-02-22 07:49:18', 1),
(47, 1, 1, 2, 'rfer', '2025-02-22 05:40:49', '2025-02-22 07:49:18', 1),
(48, 1, 1, 2, 'er', '2025-02-22 05:40:49', '2025-02-22 07:49:18', 1),
(49, 1, 1, 2, 'fe', '2025-02-22 05:40:49', '2025-02-22 07:49:18', 1),
(50, 1, 1, 2, 'fe', '2025-02-22 05:40:49', '2025-02-22 07:49:18', 1),
(51, 1, 2, 1, 'letsgooo', '2025-02-22 05:40:51', '2025-02-22 07:48:40', 1),
(52, 1, 1, 2, 'fr', '2025-02-22 05:40:53', '2025-02-22 07:49:18', 1),
(53, 1, 2, 1, 'hola', '2025-02-22 05:40:55', '2025-02-22 07:48:40', 1),
(54, 1, 1, 2, 'fgr', '2025-02-22 05:40:57', '2025-02-22 07:49:18', 1),
(55, 1, 1, 2, 'ght', '2025-02-22 05:41:04', '2025-02-22 07:49:18', 1),
(56, 1, 1, 2, 'g', '2025-02-22 05:41:04', '2025-02-22 07:49:18', 1),
(57, 1, 1, 2, 'r', '2025-02-22 05:41:04', '2025-02-22 07:49:18', 1),
(58, 1, 1, 2, 'ghr', '2025-02-22 05:41:04', '2025-02-22 07:49:18', 1),
(59, 1, 2, 1, 'hihihi', '2025-02-22 05:41:07', '2025-02-22 07:48:40', 1),
(60, 1, 2, 1, 'hihihi', '2025-02-22 05:41:08', '2025-02-22 07:48:40', 1),
(61, 1, 2, 1, 'hihihihi', '2025-02-22 05:41:08', '2025-02-22 07:48:40', 1),
(62, 1, 2, 1, 'h', '2025-02-22 05:41:08', '2025-02-22 07:48:40', 1),
(63, 1, 1, 2, 'hola buenas', '2025-02-22 06:04:35', '2025-02-22 07:49:18', 1),
(64, 1, 1, 2, 'me ayudas?', '2025-02-22 06:04:37', '2025-02-22 07:49:18', 1),
(65, 1, 2, 1, 'gordooo', '2025-02-22 06:04:41', '2025-02-22 07:48:40', 1),
(66, 3, 3, 1, 'hola', '2025-02-22 07:10:14', '2025-02-22 07:48:38', 1),
(67, 3, 1, 3, 'hola', '2025-02-22 07:10:20', '2025-02-22 09:22:15', 1),
(68, 3, 1, 3, 'parvo', '2025-02-22 07:10:22', '2025-02-22 09:22:15', 1),
(69, 4, 3, 2, 'ey', '2025-02-22 07:37:28', '2025-02-22 07:49:15', 1),
(70, 1, 1, 2, 'holaa', '2025-02-22 07:49:10', '2025-02-22 07:49:18', 1),
(71, 1, 1, 2, 'hola', '2025-02-22 07:49:32', '2025-02-22 07:49:45', 1),
(72, 1, 1, 2, 'sfsf', '2025-02-22 08:02:15', '2025-02-22 08:02:21', 1),
(73, 1, 2, 1, 'hola', '2025-02-22 08:03:09', '2025-02-22 08:03:14', 1),
(74, 1, 1, 2, 'probanding', '2025-02-22 08:11:42', '2025-02-22 08:14:00', 1),
(75, 1, 1, 2, 'hola', '2025-02-22 08:13:54', '2025-02-22 08:14:00', 1),
(76, 1, 1, 2, 'hola', '2025-02-22 08:18:24', '2025-02-22 08:18:32', 1),
(77, 1, 1, 2, 'hola', '2025-02-22 08:21:35', '2025-02-22 08:21:41', 1),
(78, 1, 1, 2, 'grgr', '2025-02-22 08:21:42', '2025-02-22 08:21:52', 1),
(79, 1, 1, 2, 'vfdvd', '2025-02-22 08:21:49', '2025-02-22 08:21:52', 1),
(80, 1, 1, 2, 'vfd', '2025-02-22 08:21:49', '2025-02-22 08:21:52', 1),
(81, 1, 1, 2, 'dv', '2025-02-22 08:21:49', '2025-02-22 08:21:52', 1),
(82, 1, 1, 2, 'k', '2025-02-22 08:40:02', '2025-02-22 08:40:10', 1),
(83, 1, 1, 2, 'hollaaaa', '2025-02-22 08:47:53', '2025-02-22 08:50:32', 1),
(84, 1, 1, 2, 'hola buenas , me enseñas?', '2025-02-22 08:57:48', '2025-02-22 08:57:53', 1),
(85, 1, 2, 1, 'jaja', '2025-02-22 08:58:00', '2025-02-22 08:58:16', 1),
(86, 1, 2, 1, 'jaja', '2025-02-22 08:58:03', '2025-02-22 08:58:16', 1),
(87, 1, 2, 1, 'faf', '2025-02-22 08:58:30', '2025-02-22 09:02:04', 1),
(88, 1, 1, 2, 'jj', '2025-02-22 09:02:11', '2025-02-22 09:32:20', 1),
(89, 1, 1, 2, 'hola buenas explciame', '2025-02-22 09:21:03', '2025-02-22 09:32:20', 1),
(90, 3, 1, 3, 'buenass', '2025-02-22 09:22:16', '2025-02-22 18:47:33', 1),
(91, 3, 3, 1, 'hola', '2025-02-22 09:22:19', '2025-02-22 09:22:43', 1),
(92, 3, 1, 3, 'fdfsfsdfsdfsdsf', '2025-02-22 09:22:21', '2025-02-22 18:47:33', 1),
(93, 3, 1, 3, 's', '2025-02-22 09:22:21', '2025-02-22 18:47:33', 1),
(94, 3, 1, 3, 'fdsfd', '2025-02-22 09:22:26', '2025-02-22 18:47:33', 1),
(95, 3, 1, 3, 'sffsdffds', '2025-02-22 09:22:28', '2025-02-22 18:47:33', 1),
(96, 3, 1, 3, 'fsdsfsds', '2025-02-22 09:22:29', '2025-02-22 18:47:33', 1),
(97, 3, 1, 3, 'fdsfsdf', '2025-02-22 09:22:30', '2025-02-22 18:47:33', 1),
(98, 3, 1, 3, 'fsdfdsf', '2025-02-22 09:22:31', '2025-02-22 18:47:33', 1),
(99, 3, 1, 3, 'fsdfsf', '2025-02-22 09:22:31', '2025-02-22 18:47:33', 1),
(100, 3, 3, 1, 'que pasa', '2025-02-22 09:22:32', '2025-02-22 09:22:43', 1),
(101, 3, 1, 3, 'fsdfs', '2025-02-22 09:22:32', '2025-02-22 18:47:33', 1),
(102, 3, 1, 3, 'fsdfsdf', '2025-02-22 09:22:33', '2025-02-22 18:47:33', 1),
(103, 3, 1, 3, 'sfsd', '2025-02-22 09:22:34', '2025-02-22 18:47:33', 1),
(104, 3, 1, 3, 's', '2025-02-22 09:22:34', '2025-02-22 18:47:33', 1),
(105, 3, 3, 1, 'ee', '2025-02-22 09:22:37', '2025-02-22 09:22:43', 1),
(106, 1, 2, 1, 'ff', '2025-02-22 09:51:54', '2025-02-22 11:40:05', 1),
(107, 1, 2, 1, 'hola', '2025-02-22 10:18:43', '2025-02-22 11:40:05', 1),
(108, 1, 2, 1, 'bro', '2025-02-22 10:18:52', '2025-02-22 11:40:05', 1),
(109, 1, 2, 1, 'hola', '2025-02-22 10:18:54', '2025-02-22 11:40:05', 1),
(110, 1, 2, 1, 'gkgkgç', '2025-02-22 11:25:13', '2025-02-22 11:40:05', 1),
(111, 4, 2, 3, 'ppuppuup', '2025-02-22 11:25:27', '2025-02-22 18:41:52', 1),
(112, 1, 1, 2, 'dfdff', '2025-02-22 11:40:10', '2025-02-22 11:42:55', 1),
(113, 1, 1, 2, 'sdfs', '2025-02-22 11:40:11', '2025-02-22 11:42:55', 1),
(114, 1, 2, 1, 'hola', '2025-02-22 11:43:12', '2025-02-22 11:43:41', 1),
(115, 1, 2, 1, 'hh', '2025-02-22 11:53:35', '2025-02-22 11:54:44', 1),
(116, 1, 1, 2, 'ghola', '2025-02-22 11:54:46', '2025-02-22 12:01:43', 1),
(117, 1, 1, 2, 'hola', '2025-02-22 12:01:32', '2025-02-22 12:01:43', 1),
(118, 1, 1, 2, 'dsfssf', '2025-02-22 12:01:48', '2025-02-22 12:02:26', 1),
(119, 1, 2, 1, 'buenas', '2025-02-22 12:02:29', '2025-02-22 12:03:16', 1),
(120, 1, 2, 1, 'buenas', '2025-02-22 12:02:36', '2025-02-22 12:03:16', 1),
(121, 1, 2, 1, 'hola', '2025-02-22 12:03:05', '2025-02-22 12:03:16', 1),
(122, 1, 2, 1, 'gkojppoeropkbebtrpbbtr', '2025-02-22 12:03:10', '2025-02-22 12:03:16', 1),
(123, 1, 1, 2, 'holaa', '2025-02-22 12:04:20', '2025-02-22 12:04:30', 1),
(124, 1, 1, 2, 'ad', '2025-02-22 12:04:20', '2025-02-22 12:04:30', 1),
(125, 1, 1, 2, 'a', '2025-02-22 12:04:21', '2025-02-22 12:04:30', 1),
(126, 1, 1, 2, 'ff', '2025-02-22 12:04:21', '2025-02-22 12:04:30', 1),
(127, 1, 2, 1, 'hola', '2025-02-22 12:04:33', '2025-02-22 13:47:01', 1),
(128, 1, 1, 2, 'hola', '2025-02-22 12:04:35', '2025-02-22 12:05:44', 1),
(129, 1, 2, 1, 'hola', '2025-02-22 13:42:58', '2025-02-22 13:47:01', 1),
(130, 5, 4, 2, 'Buenas', '2025-02-22 14:22:25', '2025-02-22 14:22:31', 1),
(131, 5, 4, 2, 'no se de bases de dato', '2025-02-22 14:22:30', '2025-02-22 14:22:31', 1),
(132, 5, 2, 4, 'hola chaval', '2025-02-22 14:22:36', '2025-02-22 14:40:56', 1),
(133, 5, 4, 2, 'cabron', '2025-02-22 14:22:38', '2025-02-22 14:29:09', 1),
(134, 5, 2, 4, 'pero bueno', '2025-02-22 14:22:43', '2025-02-22 14:40:56', 1),
(135, 5, 2, 4, 'gordo', '2025-02-22 14:22:45', '2025-02-22 14:40:56', 1),
(136, 1, 1, 2, 'gg', '2025-02-22 14:30:35', '2025-02-22 14:30:38', 1),
(137, 1, 2, 1, 'GOD', '2025-02-22 14:30:44', '2025-02-22 14:56:43', 1),
(138, 6, 5, 2, 'hola buenas, me enseñas?', '2025-02-22 14:36:34', '2025-02-22 14:36:39', 1),
(139, 6, 5, 2, 'frererfrefef', '2025-02-22 14:36:42', '2025-02-22 14:36:52', 1),
(140, 6, 2, 5, 'hola bro', '2025-02-22 14:36:42', '2025-02-22 14:40:30', 1),
(141, 6, 2, 5, 'te enseño', '2025-02-22 14:36:44', '2025-02-22 14:40:30', 1),
(142, 6, 5, 2, 'dsdffefefefeferef', '2025-02-22 14:36:45', '2025-02-22 14:36:52', 1),
(143, 6, 5, 2, 'efeferf', '2025-02-22 14:36:46', '2025-02-22 14:36:52', 1),
(144, 6, 5, 2, 'eferf', '2025-02-22 14:36:47', '2025-02-22 14:36:52', 1),
(145, 6, 2, 5, 'gordooo', '2025-02-22 14:37:43', '2025-02-22 14:40:30', 1),
(146, 6, 5, 2, 'locotron', '2025-02-22 14:40:34', '2025-02-22 14:41:17', 1),
(147, 5, 4, 2, 'locotron', '2025-02-22 14:40:59', '2025-02-22 14:41:37', 1),
(148, 1, 1, 2, 'hola buenas', '2025-02-22 14:56:50', '2025-02-22 14:56:59', 1),
(149, 1, 2, 1, 'holaa', '2025-02-22 14:57:01', '2025-02-22 15:32:45', 1),
(150, 1, 1, 2, 'fwefewfw', '2025-02-22 14:57:01', '2025-02-22 14:57:51', 1),
(151, 1, 1, 2, 'ff', '2025-02-22 14:57:02', '2025-02-22 14:57:51', 1),
(152, 1, 1, 2, 'f', '2025-02-22 14:57:02', '2025-02-22 14:57:51', 1),
(153, 1, 1, 2, 'fw', '2025-02-22 14:57:02', '2025-02-22 14:57:51', 1),
(154, 1, 1, 2, 'fw', '2025-02-22 14:57:02', '2025-02-22 14:57:51', 1),
(155, 1, 1, 2, 'f', '2025-02-22 14:57:02', '2025-02-22 14:57:51', 1),
(156, 1, 1, 2, 'fw', '2025-02-22 14:57:03', '2025-02-22 14:57:51', 1),
(157, 1, 1, 2, 'f', '2025-02-22 14:57:03', '2025-02-22 14:57:51', 1),
(158, 1, 2, 1, 'si', '2025-02-22 14:57:05', '2025-02-22 15:32:45', 1),
(159, 1, 2, 1, 'goksogs', '2025-02-22 17:45:13', '2025-02-22 17:46:44', 1),
(160, 1, 2, 1, 'colegon', '2025-02-22 17:46:33', '2025-02-22 17:46:44', 1),
(161, 1, 2, 1, 'çenese´ñame', '2025-02-22 17:46:35', '2025-02-22 17:46:44', 1),
(162, 1, 2, 1, 'gordo', '2025-02-22 17:46:37', '2025-02-22 17:46:44', 1),
(163, 1, 1, 2, 'no cabron', '2025-02-22 17:46:48', '2025-02-22 17:47:12', 1),
(164, 4, 3, 2, 'payaso', '2025-02-22 18:41:57', '2025-02-22 18:42:00', 1),
(165, 3, 3, 1, 'sdjaddf', '2025-02-22 18:47:37', '2025-02-22 19:15:25', 1),
(166, 3, 3, 1, 'asdd', '2025-02-22 18:47:38', '2025-02-22 19:15:25', 1),
(167, 3, 3, 1, 'sad', '2025-02-22 18:47:38', '2025-02-22 19:15:25', 1),
(168, 3, 3, 1, 'a', '2025-02-22 18:47:38', '2025-02-22 19:15:25', 1),
(169, 3, 3, 1, 'da', '2025-02-22 18:47:38', '2025-02-22 19:15:25', 1),
(170, 3, 3, 1, 'das', '2025-02-22 18:47:38', '2025-02-22 19:15:25', 1),
(171, 3, 3, 1, 'da', '2025-02-22 18:47:38', '2025-02-22 19:15:25', 1),
(172, 3, 3, 1, 'd', '2025-02-22 18:47:38', '2025-02-22 19:15:25', 1),
(173, 3, 3, 1, 'as', '2025-02-22 18:47:40', '2025-02-22 19:15:25', 1),
(174, 4, 2, 3, 'hola', '2025-02-22 18:48:10', '2025-02-22 18:59:33', 1),
(175, 7, 12, 2, 'hola', '2025-02-22 23:42:17', '2025-02-22 23:42:25', 1),
(176, 7, 12, 2, 'boffff', '2025-02-22 23:42:20', '2025-02-22 23:42:25', 1),
(177, 7, 2, 12, 'hombre chaval', '2025-02-22 23:42:29', '2025-02-22 23:43:25', 1),
(178, 7, 2, 12, 'tu que', '2025-02-22 23:42:34', '2025-02-22 23:43:25', 1),
(179, 7, 2, 12, 'bro, enseñame rust', '2025-02-22 23:43:00', '2025-02-22 23:43:25', 1),
(180, 7, 12, 2, 'leete la documentacion mamon', '2025-02-22 23:43:14', '2025-02-22 23:43:27', 1),
(181, 4, 12, 2, 'fdsjkalfdjsf', '2025-02-22 23:43:47', '2025-02-22 23:43:54', 1),
(182, 5, 12, 2, 'joder que bien me lo paso en esta app mas robusta', '2025-02-22 23:44:10', '2025-02-22 23:44:17', 1),
(183, 7, 2, 12, 'gracias bro', '2025-02-22 23:47:17', '2025-02-22 23:47:33', 1),
(184, 7, 2, 12, '.', '2025-02-22 23:54:02', '2025-02-22 23:59:39', 1),
(185, -1, 2, 12, 'hola', '2025-02-23 00:01:18', '2025-02-23 00:01:18', 0),
(186, 1, 2, 1, 'hola', '2025-02-23 01:05:40', '2025-02-23 01:05:48', 1),
(187, 1, 2, 1, 'hola', '2025-02-23 01:05:55', '2025-02-23 01:06:00', 1),
(188, 8, 15, 16, 'hol', '2025-02-23 01:44:20', '2025-02-23 10:07:36', 1),
(189, 8, 16, 15, 'Holaa', '2025-02-23 01:44:22', '2025-02-23 01:44:27', 1),
(190, 8, 16, 15, 'probando probando', '2025-02-23 01:44:32', '2025-02-23 01:59:28', 1),
(191, 9, 19, 16, 'Buenas pedro', '2025-02-23 02:06:57', '2025-02-23 10:07:07', 1),
(192, 9, 19, 16, 'soy nuevo en la empresa y me acaban de manada empezar un proyecto en C', '2025-02-23 02:07:36', '2025-02-23 10:07:07', 1),
(193, 9, 19, 16, 'como deberia empezar??', '2025-02-23 02:07:44', '2025-02-23 10:07:07', 1),
(194, 9, 19, 16, 'me guias en el proceso?', '2025-02-23 02:07:56', '2025-02-23 10:07:07', 1),
(195, 10, 19, 14, 'BUenas Manuel, te escribo porque hoy me ha caído bronca en el departamento por no optimizar bien mi codigo, y me preguntaria si me pudieras dar unas lecciones', '2025-02-23 02:09:44', '2025-02-23 02:56:51', 1),
(196, 11, 15, 19, 'hola martin', '2025-02-23 02:38:20', '2025-02-23 02:44:24', 1),
(197, 11, 19, 15, 'buenas', '2025-02-23 02:44:29', '2025-02-23 02:44:32', 1),
(198, 11, 19, 15, 'q tal el dia??', '2025-02-23 02:44:33', '2025-02-23 02:44:38', 1),
(199, 13, 20, 21, 'hola', '2025-02-23 02:50:44', '2025-02-23 02:50:57', 1),
(200, 13, 21, 20, 'adios', '2025-02-23 02:51:03', '2025-02-23 02:51:11', 1),
(201, 13, 20, 21, 'que tal, me enseñas html?', '2025-02-23 02:51:06', '2025-02-23 02:52:00', 1),
(202, 13, 20, 21, '.', '2025-02-23 02:54:56', '2025-02-23 02:56:14', 1),
(203, 14, 14, 21, 'hola', '2025-02-23 02:57:00', '2025-02-23 02:57:07', 1),
(204, 14, 21, 14, 'buenasss', '2025-02-23 02:57:10', '2025-02-23 02:57:13', 1),
(205, 15, 22, 18, 'Hey eusebio q tal??', '2025-02-23 03:00:09', '2025-02-23 03:00:09', 0),
(206, 16, 24, 19, 'hola buenas tenia una duda con mi codigo me podrias ayudar?', '2025-02-23 09:40:06', '2025-02-23 09:40:50', 1),
(207, 16, 19, 24, 'buenas buen señor', '2025-02-23 09:40:57', '2025-02-23 09:41:02', 1),
(208, 17, 25, 16, 'Buenas pedroç', '2025-02-23 10:06:14', '2025-02-23 10:06:42', 1),
(209, 17, 25, 16, 'me ayudas ahi con pro II', '2025-02-23 10:06:22', '2025-02-23 10:06:42', 1),
(210, 17, 16, 25, 'buenas bro, te ayudo', '2025-02-23 10:06:48', '2025-02-23 10:09:32', 1),
(211, 17, 25, 16, 'como ves la parte dynamic del primer proyecto', '2025-02-23 10:07:07', '2025-02-23 10:07:11', 1),
(212, 17, 16, 25, 'jolh', '2025-02-23 10:07:18', '2025-02-23 10:09:32', 1),
(213, 17, 25, 16, 'oirkn', '2025-02-23 10:07:19', '2025-02-23 10:07:33', 1),
(214, 17, 16, 25, 'lhlrl', '2025-02-23 10:07:20', '2025-02-23 10:09:32', 1),
(215, 17, 16, 25, 'h', '2025-02-23 10:07:20', '2025-02-23 10:09:32', 1),
(216, 17, 16, 25, 'hr', '2025-02-23 10:07:20', '2025-02-23 10:09:32', 1),
(217, 17, 16, 25, 'e', '2025-02-23 10:07:20', '2025-02-23 10:09:32', 1),
(218, 17, 25, 16, 'woebow', '2025-02-23 10:07:20', '2025-02-23 10:07:33', 1),
(219, 17, 16, 25, 'he', '2025-02-23 10:07:21', '2025-02-23 10:09:32', 1),
(220, 17, 16, 25, 'eh', '2025-02-23 10:07:21', '2025-02-23 10:09:32', 1),
(221, 17, 16, 25, 'h', '2025-02-23 10:07:21', '2025-02-23 10:09:32', 1),
(222, 17, 16, 25, 'erh', '2025-02-23 10:07:21', '2025-02-23 10:09:32', 1),
(223, 17, 16, 25, 'h', '2025-02-23 10:07:22', '2025-02-23 10:09:32', 1),
(224, 17, 25, 16, 'iwbe+', '2025-02-23 10:07:22', '2025-02-23 10:07:33', 1),
(225, 17, 25, 16, 'we', '2025-02-23 10:07:22', '2025-02-23 10:07:33', 1),
(226, 17, 25, 16, 'we', '2025-02-23 10:07:23', '2025-02-23 10:07:33', 1),
(227, 17, 25, 16, 'w', '2025-02-23 10:07:23', '2025-02-23 10:07:33', 1),
(228, 17, 25, 16, 'ew', '2025-02-23 10:07:23', '2025-02-23 10:07:33', 1),
(229, 17, 25, 16, 'ew', '2025-02-23 10:07:24', '2025-02-23 10:07:33', 1),
(230, 17, 25, 16, 'e', '2025-02-23 10:07:24', '2025-02-23 10:07:33', 1),
(231, 17, 25, 16, 'e', '2025-02-23 10:07:24', '2025-02-23 10:07:33', 1),
(232, 17, 25, 16, 'e', '2025-02-23 10:07:24', '2025-02-23 10:07:33', 1),
(233, 17, 25, 16, 'we', '2025-02-23 10:07:25', '2025-02-23 10:07:33', 1),
(234, 17, 25, 16, 'wfwe', '2025-02-23 10:07:25', '2025-02-23 10:07:33', 1),
(235, 17, 25, 16, 'rw', '2025-02-23 10:07:26', '2025-02-23 10:07:33', 1),
(236, 17, 25, 16, 'erw', '2025-02-23 10:07:26', '2025-02-23 10:07:33', 1),
(237, 17, 25, 16, 'er', '2025-02-23 10:07:26', '2025-02-23 10:07:33', 1),
(238, 17, 25, 16, 'we', '2025-02-23 10:07:26', '2025-02-23 10:07:33', 1),
(239, 17, 25, 16, 'er', '2025-02-23 10:07:27', '2025-02-23 10:07:33', 1),
(240, 17, 25, 16, 'wer', '2025-02-23 10:07:27', '2025-02-23 10:07:33', 1),
(241, 17, 25, 16, 'w', '2025-02-23 10:07:27', '2025-02-23 10:07:33', 1),
(242, 17, 25, 16, 'r', '2025-02-23 10:07:28', '2025-02-23 10:07:33', 1),
(243, 17, 25, 16, 'we', '2025-02-23 10:07:28', '2025-02-23 10:07:33', 1),
(244, 17, 25, 16, 'rw', '2025-02-23 10:07:28', '2025-02-23 10:07:33', 1),
(245, 17, 25, 16, 'er', '2025-02-23 10:07:28', '2025-02-23 10:07:33', 1),
(246, 17, 25, 16, 'we', '2025-02-23 10:07:29', '2025-02-23 10:07:33', 1),
(247, 17, 16, 25, '.', '2025-02-23 10:09:38', '2025-02-23 10:11:06', 1),
(248, 9, 16, 19, 'hola buenas, me ayudas', '2025-02-23 10:37:43', '2025-02-23 10:37:53', 1),
(249, 9, 19, 16, 'buenas pedro', '2025-02-23 10:37:57', '2025-02-23 12:41:44', 1),
(250, 9, 19, 16, 'encantado', '2025-02-23 10:37:59', '2025-02-23 12:41:44', 1),
(251, 10, 14, 19, 'Hola , estoy aqui', '2025-02-23 11:40:31', '2025-02-23 11:57:43', 1),
(252, 18, 26, 19, 'hola buenas , me ...', '2025-02-23 11:41:50', '2025-02-23 11:42:00', 1),
(253, 18, 19, 26, 'buenas pepe', '2025-02-23 11:42:07', '2025-02-23 11:42:07', 0),
(254, 18, 26, 19, '8h8b8bvoi', '2025-02-23 11:42:08', '2025-02-23 11:42:14', 1),
(255, 18, 26, 19, 'pknio', '2025-02-23 11:42:10', '2025-02-23 11:42:14', 1),
(256, 18, 26, 19, 'nib', '2025-02-23 11:42:11', '2025-02-23 11:42:14', 1),
(257, 18, 19, 26, 'l', '2025-02-23 11:42:20', '2025-02-23 11:42:20', 0),
(258, 18, 19, 26, 'll', '2025-02-23 11:42:21', '2025-02-23 11:42:21', 0),
(259, 18, 19, 26, 'l', '2025-02-23 11:42:21', '2025-02-23 11:42:21', 0),
(260, 18, 19, 26, 'l', '2025-02-23 11:42:21', '2025-02-23 11:42:21', 0),
(261, 18, 19, 26, 'iji', '2025-02-23 11:42:22', '2025-02-23 11:42:22', 0),
(262, 19, 26, 24, 'feo', '2025-02-23 11:42:46', '2025-02-23 11:42:46', 0),
(263, 20, 27, 19, 'hjhuhjh', '2025-02-23 11:56:16', '2025-02-23 11:57:22', 1),
(264, 20, 27, 19, 'jkjjkj', '2025-02-23 11:56:20', '2025-02-23 11:57:22', 1),
(265, 20, 19, 27, 'hjhjhj', '2025-02-23 11:57:27', '2025-02-23 11:58:12', 1),
(266, 20, 27, 19, 'hjhjhjhjh', '2025-02-23 11:57:33', '2025-02-23 11:57:46', 1),
(267, 20, 19, 27, 'buenas', '2025-02-23 11:57:34', '2025-02-23 11:58:12', 1),
(268, 20, 27, 19, 'tert', '2025-02-23 11:58:15', '2025-02-23 12:41:01', 1),
(269, 20, 27, 19, 'hrtju', '2025-02-23 11:58:16', '2025-02-23 12:41:01', 1),
(270, 20, 19, 27, 'duchate', '2025-02-23 11:58:20', '2025-02-23 11:58:20', 0),
(271, 9, 19, 16, 'hols buns, ncesito 2ue eç me ensele', '2025-02-23 12:42:42', '2025-02-23 12:42:49', 1),
(272, 9, 19, 16, 'gvvgtgt55gf', '2025-02-23 12:42:53', '2025-02-23 12:42:53', 0),
(273, 9, 19, 16, 't5g', '2025-02-23 12:42:53', '2025-02-23 12:42:53', 0),
(274, 9, 19, 16, '5tg', '2025-02-23 12:42:53', '2025-02-23 12:42:53', 0),
(275, 9, 19, 16, 'g', '2025-02-23 12:42:53', '2025-02-23 12:42:53', 0),
(276, 9, 19, 16, '5tg5', '2025-02-23 12:42:54', '2025-02-23 12:42:54', 0),
(277, 9, 19, 16, 'g', '2025-02-23 12:42:54', '2025-02-23 12:42:54', 0),
(278, 9, 19, 16, 't5g', '2025-02-23 12:42:54', '2025-02-23 12:42:54', 0),
(279, 9, 19, 16, '5tg', '2025-02-23 12:42:54', '2025-02-23 12:42:54', 0),
(280, 9, 19, 16, '5', '2025-02-23 12:42:54', '2025-02-23 12:42:54', 0),
(281, 9, 19, 16, 'g', '2025-02-23 12:42:55', '2025-02-23 12:42:55', 0),
(282, 9, 19, 16, 't', '2025-02-23 12:42:55', '2025-02-23 12:42:55', 0),
(283, 9, 19, 16, 'vtgv', '2025-02-23 12:42:56', '2025-02-23 12:42:56', 0),
(284, 9, 19, 16, 'tgvtv', '2025-02-23 12:42:57', '2025-02-23 12:42:57', 0),
(285, 9, 16, 19, 'juj', '2025-02-23 12:42:57', '2025-02-23 12:42:57', 0),
(286, 9, 19, 16, 'tgv', '2025-02-23 12:42:57', '2025-02-23 12:42:57', 0),
(287, 9, 19, 16, 'vtg', '2025-02-23 12:42:57', '2025-02-23 12:42:57', 0),
(288, 9, 19, 16, 'vt', '2025-02-23 12:42:58', '2025-02-23 12:42:58', 0),
(289, 9, 16, 19, 'j', '2025-02-23 12:42:58', '2025-02-23 12:42:58', 0),
(290, 9, 19, 16, 'vtg', '2025-02-23 12:42:58', '2025-02-23 12:42:58', 0),
(291, 9, 19, 16, 'v', '2025-02-23 12:42:58', '2025-02-23 12:42:58', 0),
(292, 9, 19, 16, 'v', '2025-02-23 12:42:58', '2025-02-23 12:42:58', 0),
(293, 9, 19, 16, 'vg', '2025-02-23 12:42:58', '2025-02-23 12:42:58', 0),
(294, 9, 16, 19, 'nn', '2025-02-23 12:42:58', '2025-02-23 12:42:58', 0),
(295, 9, 19, 16, 'vt', '2025-02-23 12:42:58', '2025-02-23 12:42:58', 0),
(296, 21, 28, 19, 'holaaa', '2025-02-23 16:52:49', '2025-02-23 16:52:49', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `title`, `description`, `likes`, `dislikes`, `updated_at`, `created_at`) VALUES
(22, 16, 'C++ LANGUGE', 'Blockchain Tecnologies', 0, 0, '2025-02-23 01:26:07', '2025-02-23 01:26:07'),
(23, 16, 'C CODING', 'More especifically Im in the Area of linux and threads and libraries of this type', 0, 0, '2025-02-23 01:26:55', '2025-02-23 01:26:55'),
(24, 16, 'RUST', 'My Especiality is the programmin at low level', 0, 0, '2025-02-23 01:27:20', '2025-02-23 01:27:20'),
(25, 15, 'ALGORITHM DESIGN', 'I design efficient algorithms with a focus on reducing time and space complexity, applying techniques like recursion, dynamic programming, and graph traversal.', 0, 0, '2025-02-23 01:33:54', '2025-02-23 01:33:54'),
(26, 15, 'WEB DEVELOPMENT', 'I build responsive and dynamic websites using HTML, CSS, and JavaScript, with frameworks like React for the frontend and Node.js with Express for the backend', 0, 0, '2025-02-23 01:34:24', '2025-02-23 01:34:24'),
(27, 15, 'VERSION CONTROL (GIT)', 'I efficiently manage code versions using Git, collaborating on platforms like GitHub and GitLab, ensuring clean commit histories and proper branching strategies', 0, 0, '2025-02-23 01:34:40', '2025-02-23 01:34:40'),
(28, 14, 'API DEVELOPMENT', 'I design and implement RESTful APIs using Node.js with Express and secure them with JWT authentication and HTTPS encryption.', 0, 0, '2025-02-23 01:46:22', '2025-02-23 01:46:22'),
(29, 14, 'DEVOPS', 'I streamline development and deployment pipelines using CI/CD tools like Jenkins, Docker, and Kubernetes for container orchestration.', 0, 0, '2025-02-23 01:46:42', '2025-02-23 01:46:42'),
(30, 14, 'BLOCKCHAIN', 'I understand the fundamentals of blockchain technology, smart contracts, and cryptocurrency development using platforms like Ethereum and Solidity.', 0, 0, '2025-02-23 01:46:55', '2025-02-23 01:46:55'),
(31, 17, 'JAVA SPRING DEVELOPER', 'I know all of this framework, you can answer me , what do you want', 0, 0, '2025-02-23 01:48:19', '2025-02-23 01:48:19'),
(32, 17, 'JAVA BACKEND', 'I am an expert of  java web and a can solve whatever questiaon what do you want', 0, 0, '2025-02-23 01:49:51', '2025-02-23 01:49:51'),
(33, 18, 'DATABASE ORACLE EXPERT', 'I know all abot databases and engeniering data', 0, 0, '2025-02-23 01:56:42', '2025-02-23 01:56:42'),
(34, 18, 'SCIENTIST DATA', 'I am an expert analizing data', 0, 0, '2025-02-23 02:00:00', '2025-02-23 02:00:00'),
(35, 19, 'PHP DEVELOPER', 'I love php project and i have some knoleadges about his libraries', 0, 0, '2025-02-23 02:04:57', '2025-02-23 02:04:57'),
(36, 19, 'PYTHON ENVIROMENT', 'python developer', 0, 0, '2025-02-23 02:46:10', '2025-02-23 02:46:10'),
(37, 21, 'HTML', 'lenguaje real de programacion', 0, 0, '2025-02-23 02:50:09', '2025-02-23 02:50:09'),
(39, 24, 'WEB DESIGNER', 'HTML5, CSS', 0, 0, '2025-02-23 09:42:05', '2025-02-23 09:42:05'),
(40, 25, 'C FEATURES', 'The best coder in C99, I can answer you wahtever question', 0, 0, '2025-02-23 10:09:08', '2025-02-23 10:09:08'),
(41, 27, 'RASACARME LO HUEVO', 'experto', 0, 0, '2025-02-23 11:54:57', '2025-02-23 11:54:57'),
(42, 28, 'GBUGV', 'ihhub', 0, 0, '2025-02-23 16:53:18', '2025-02-23 16:53:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solutions`
--

CREATE TABLE `solutions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `solution` varchar(10000) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solutions`
--

INSERT INTO `solutions` (`id`, `user_id`, `title`, `solution`, `likes`, `dislikes`, `updated_at`, `created_at`) VALUES
(14, 16, 'CODING WITH SOME PERSONS ON THE SAME PROJECT', 'Solución para Programación Colaborativa con un Mismo Código\r\n\r\n1. Configurar un Repositorio Git Centralizado\r\n   - Usa GitHub, GitLab o Bitbucket como repositorio remoto.\r\n   - Clona el repositorio en cada máquina:\r\n     ```bash\r\n     git clone <URL_DEL_REPOSITORIO>\r\n     ```\r\n\r\n2. Crear una Rama por Funcionalidad o Persona\r\n   - Cada desarrollador trabaja en su propia rama:\r\n     ```bash\r\n     git checkout -b feature/nombre_de_funcionalidad\r\n     ```\r\n   - Ejemplo:\r\n     ```bash\r\n     git checkout -b feature/historial-comandos\r\n     ```\r\n\r\n3. Hacer Commits Pequeños y Frecuentes\r\n   - Agregar cambios y documentarlos:\r\n     ```bash\r\n     git add .\r\n     git commit -m \"Implementada función para gestionar historial de comandos\"\r\n     ```\r\n\r\n4. Sincronizarse Regularmente con el Repositorio Remoto\r\n   - Antes de subir cambios:\r\n     ```bash\r\n     git pull origin main\r\n     ```\r\n   - Resolver conflictos si los hay.\r\n\r\n5. Revisar Código con Pull Requests (PRs o MRs)\r\n   - Crear un PR en GitHub o un MR en GitLab.\r\n   - Otro desarrollador revisa antes de fusionar a `main`.\r\n\r\n6. Uso de un Archivo `.gitignore`\r\n   - Para evitar subir archivos innecesarios (ejemplo para C):\r\n     ```\r\n     *.o\r\n     *.out\r\n     *.exe\r\n     .vscode/\r\n     ```\r\n\r\n7. Comunicación y Organización\r\n   - Usa Trello, Notion o Jira para organizar tareas.\r\n   - Sincronizarse con reuniones cortas diarias o semanales.\r\n   - Usar Discord, Slack o Teams para comunicación rápida.\r\n\r\nEjemplo de Flujo de Trabajo Completo:\r\n1. Clonar el repositorio\r\n   ```bash\r\n   git clone <URL_DEL_REPOSITORIO>\r\n   cd <NOMBRE_DEL_PROYECTO>\r\n   ```\r\n2. Crear una rama para la funcionalidad\r\n   ```bash\r\n   git checkout -b feature/nueva-funcionalidad\r\n   ```\r\n3. Trabajar y hacer commits regularmente\r\n   ```bash\r\n   git add .\r\n   git commit -m \"Implementación de nueva funcionalidad\"\r\n   ```\r\n4. Actualizar antes de subir cambios\r\n   ```bash\r\n   git checkout main\r\n   git pull origin main\r\n   git checkout feature/nueva-funcionalidad\r\n   git merge main\r\n   ```\r\n5. Subir los cambios al repositorio remoto\r\n   ```bash\r\n   git push origin feature/nueva-funcionalidad\r\n   ```\r\n6. Crear un Pull Request y pedir revisión\r\n7. Fusionar la rama cuando esté aprobada\r\n\r\nExtras:\r\n- Usar Git Hooks para evitar commits con errores.\r\n- Integrar CI/CD (GitHub Actions, GitLab CI) para pruebas automáticas.\r\n- Documentar el código con un `README.md` y comentarios claros.\r\n\r\n', 0, 1, '2025-02-23 10:14:08', '2025-02-23 01:30:34'),
(15, 15, 'OBJECT-ORIENTED PROGRAMMING (OOP)', 'I write modular and maintainable code using OOP principles in languages like Java, C++, and Python, leveraging classes, inheritance, and polymorphism', 0, 0, '2025-02-23 01:35:12', '2025-02-23 01:31:00'),
(16, 15, 'CYBERSECURITY', 'I secure systems by configuring firewalls, implementing encryption protocols, and analyzing malware behavior using tools like Ghidra and Wireshark.', 0, 0, '2025-02-23 01:34:55', '2025-02-23 01:31:21'),
(17, 15, 'AUTOMATION AND SCRIPTING', 'I automate repetitive tasks using Python and Bash, streamlining workflows and system processes to save time and reduce errors', 4, 1, '2025-02-23 16:53:34', '2025-02-23 01:32:19'),
(18, 16, 'JSON DECODE ON PHP TO DATABASE', 'Para capturar un JSON desde PHP y guardarlo en una base de datos, el proceso básico sería:\r\n\r\nRecibir el JSON en PHP: Usarías una solicitud HTTP (por ejemplo, POST) para recibir el JSON desde una fuente externa, como una API o un formulario. PHP puede leer este JSON usando file_get_contents(\'php://input\'), que obtiene el contenido de la solicitud.\r\n\r\nDecodificar el JSON: El JSON recibido se debe decodificar en un formato que PHP pueda manejar (como un array asociativo). Esto se hace con la función json_decode(), que convierte el JSON en una estructura de datos de PHP.\r\n\r\nConectar a la base de datos: Usarías las funciones de PHP para conectarte a una base de datos, como MySQL. Esto se puede hacer con mysqli o PDO dependiendo de la preferencia.\r\n\r\nGuardar los datos en la base de datos: Después de obtener los datos del JSON, debes extraer los valores que quieras almacenar y preparar una consulta SQL para insertar esos valores en la base de datos.\r\n\r\nEjecutar la consulta: Finalmente, ejecutas la consulta SQL para guardar los datos en la base de datos. Es importante sanitizar los datos antes de insertarlos, para evitar problemas de seguridad como la inyección SQL.\r\n\r\nEn resumen, los pasos son:\r\n\r\nCapturar el JSON desde la entrada de la solicitud HTTP.\r\nDecodificar el JSON en un formato utilizable por PHP.\r\nConectar a la base de datos y preparar una consulta SQL.\r\nInsertar los datos en la base de datos.\r\nUna vez configurado, podrías hacer la solicitud desde la terminal usando herramientas como curl para enviar el JSON al script PHP.', 0, 0, '2025-02-23 01:39:45', '2025-02-23 01:39:45'),
(19, 14, 'INEFFICIENT DATA RETRIEVAL', 'By replacing a linear search with a hash table, I reduced data lookup time from O(n) to O(1), significantly improving system performance', 0, 0, '2025-02-23 01:49:34', '2025-02-23 01:45:21'),
(20, 14, 'LOW ACCURACY IN PREDICTIVE MODEL', 'By fine-tuning hyperparameters, using feature engineering, and applying ensemble methods like Random Forest and Gradient Boosting, I increased model accuracy by 20%', 0, 0, '2025-02-23 01:48:55', '2025-02-23 01:45:40'),
(21, 14, 'NETWORKING', 'By optimizing the website’s code, reducing image sizes, and using asynchronous JavaScript, I improved loading times by 50%, enhancing the user experience.', 0, 0, '2025-02-23 01:48:21', '2025-02-23 01:46:03'),
(22, 17, 'JAVA EXECUABLE', '1. Compilar tu código Java\r\nAsumiendo que tienes tu archivo MiClase.java, abre la terminal y navega al directorio donde se encuentra el archivo.\r\n\r\nEjecuta el siguiente comando para compilarlo:\r\n\r\nbash\r\nCopiar\r\nEditar\r\njavac MiClase.java\r\nEsto generará un archivo MiClase.class que contiene el bytecode de tu clase Java.\r\n\r\n2. Crear el archivo JAR\r\nAhora, creamos el archivo JAR. Vamos a empaquetar el archivo .class en un JAR ejecutable, indicando la clase principal con el parámetro -e.\r\n\r\nEn la terminal, ejecuta el siguiente comando para crear el archivo JAR:\r\n\r\nbash\r\nCopiar\r\nEditar\r\njar cfe MiAplicacion.jar MiClase MiClase.class\r\nc : Crea un nuevo archivo JAR.\r\nf : Especifica el nombre del archivo JAR a crear.\r\ne : Define la clase principal (donde está el método main()).\r\nMiAplicacion.jar : El nombre del archivo JAR.\r\nMiClase : La clase principal (que contiene el método main).\r\nMiClase.class : El archivo .class que contiene el código compilado.\r\n3. Ejecutar el archivo JAR\r\nYa que has creado el archivo JAR, puedes ejecutarlo desde la terminal usando el siguiente comando:\r\n\r\nbash\r\nCopiar\r\nEditar\r\njava -jar MiAplicacion.jar\r\nEsto ejecutará el archivo JAR y lanzará tu aplicación.\r\n\r\n4. (Opcional) Crear un archivo ejecutable\r\nSi quieres hacer el archivo JAR aún más accesible, puedes crear un script para ejecutarlo fácilmente.\r\n\r\nEn Linux/macOS:\r\nCrea un archivo de script, por ejemplo, run.sh:\r\nbash\r\nCopiar\r\nEditar\r\nnano run.sh\r\nAgrega el siguiente contenido:\r\nbash\r\nCopiar\r\nEditar\r\n#!/bin/bash\r\njava -jar MiAplicacion.jar\r\nDale permisos de ejecución al script:\r\nbash\r\nCopiar\r\nEditar\r\nchmod +x run.sh\r\nAhora puedes ejecutar tu aplicación con:\r\n\r\nbash\r\nCopiar\r\nEditar\r\n./run.sh\r\nEn Windows:\r\nCrea un archivo run.bat en el mismo directorio donde está tu JAR.\r\n\r\nAgrega este contenido en el archivo .bat:\r\n\r\nbatch\r\nCopiar\r\nEditar\r\njava -jar MiAplicacion.jar\r\nAhora puedes ejecutar tu aplicación haciendo doble clic en el archivo run.bat.\r\n\r\n¡Eso es todo! Ahora tienes un archivo JAR ejecutable que puedes correr desde la terminal.', 0, 0, '2025-02-23 01:51:44', '2025-02-23 01:51:44'),
(23, 18, 'CREATE DB MYSQL', 'Crear una base de datos (database) es una tarea fundamental cuando trabajas con sistemas de gestión de bases de datos (DBMS) como MySQL, PostgreSQL, SQLite, entre otros. A continuación, te explicaré cómo hacerlo en MySQL y en PostgreSQL, que son dos de los sistemas más comunes. También te mencionaré cómo hacerlo en SQLite, que es una base de datos ligera y fácil de usar.\r\n\r\n1. MySQL: Crear una base de datos\r\nSi estás utilizando MySQL o MariaDB, puedes crear una base de datos de las siguientes maneras.\r\n\r\nUsando la terminal:\r\nAcceder a MySQL: Abre la terminal o consola de comandos y accede a MySQL con el siguiente comando:\r\n\r\nbash\r\nCopiar\r\nEditar\r\nmysql -u root -p\r\nTe pedirá la contraseña del usuario root (o el usuario con privilegios para crear bases de datos).\r\n\r\nCrear la base de datos: Una vez dentro de MySQL, usa el siguiente comando para crear una base de datos:\r\n\r\nsql\r\nCopiar\r\nEditar\r\nCREATE DATABASE nombre_de_tu_base_de_datos;\r\nVerificar la base de datos: Para ver las bases de datos que has creado, puedes usar:\r\n\r\nsql\r\nCopiar\r\nEditar\r\nSHOW DATABASES;\r\nSeleccionar la base de datos para usarla: Una vez que la base de datos esté creada, selecciona la base de datos para empezar a trabajar con ella:\r\n\r\nsql\r\nCopiar\r\nEditar\r\nUSE nombre_de_tu_base_de_datos;\r\nUsando phpMyAdmin:\r\nSi prefieres usar una interfaz gráfica, phpMyAdmin es una herramienta popular para gestionar bases de datos MySQL desde un navegador.\r\n\r\nAccede a phpMyAdmin (generalmente a través de localhost/phpmyadmin si lo tienes instalado localmente).\r\nInicia sesión con tu usuario y contraseña de MySQL.\r\nEn la página principal, verás un botón o enlace que dice \"Nueva\" o \"Create\".\r\nIngresa el nombre de la base de datos y selecciona la intercalación (puedes dejar la predeterminada).\r\nHaz clic en \"Crear\".', 0, 1, '2025-02-23 16:53:40', '2025-02-23 02:01:03'),
(24, 19, 'GIT PROBLEMS', 'Los problemas de Git pueden variar dependiendo de la situación, pero los errores más comunes suelen estar relacionados con conflictos de fusión (merge), rebase, cambios no guardados o problemas con ramas. A continuación, te doy una explicación general de cómo resolver algunos de los problemas más frecuentes en Git.\r\n\r\n1. Conflictos de fusión (merge conflicts)\r\nCuando Git intenta fusionar dos ramas, puede haber cambios incompatibles entre ellas. Cuando esto ocurre, Git no puede fusionarlas automáticamente y marca los archivos afectados como \"en conflicto\".\r\n\r\n¿Cómo resolverlo?\r\nIdentificar los archivos en conflicto: Ejecuta git status para ver qué archivos están en conflicto.\r\n\r\nAbrir los archivos en conflicto: Abre los archivos que están en conflicto. Verás marcas como:\r\n\r\nbash\r\nCopiar\r\nEditar\r\n<<<<<<< HEAD\r\n// Tu versión del código\r\n=======\r\n// Cambios de la rama remota o de la otra rama\r\n>>>>>>> rama-remota\r\nTienes que decidir qué cambios conservar (de tu rama, de la otra rama o ambos). Después de elegir, elimina las marcas de conflicto (<<<<<<<, =======, >>>>>>>).\r\n\r\nMarcar el conflicto como resuelto: Una vez que hayas resuelto los conflictos, agrega los archivos al área de preparación con:\r\n\r\nbash\r\nCopiar\r\nEditar\r\ngit add <archivo-en-conflicto>\r\nHacer un commit de resolución: Realiza un commit para registrar que has resuelto los conflictos:\r\n\r\nbash\r\nCopiar\r\nEditar\r\ngit commit -m \"Resolución de conflictos\"\r\nContinuar con el merge: Si estabas haciendo un git merge, después de resolver los conflictos, puedes completar el merge.\r\n\r\n', 0, 0, '2025-02-23 02:45:50', '2025-02-23 02:45:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `repositorio_url` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `userinfo`
--

INSERT INTO `userinfo` (`id`, `user_id`, `repositorio_url`, `language_id`) VALUES
(41, 16, '/PedritoRamirez/Desafio-flex', 9),
(42, 16, '/PedritoRamirez/1-Ejemplo-Html', 9),
(43, 16, '/PedritoRamirez/fdsw-github', 9),
(44, 16, '/PedritoRamirez/PedritoRamirez.github.io', 9),
(45, 16, '/PedritoRamirez/portfolio', 9),
(46, 16, '/PedritoRamirez/PabloIgnacioNavarro.github.io', 9),
(48, 15, '/SedrAlex/Java-script-Fund-Me', 18),
(49, 15, '/SedrAlex/Art-gallery', 18),
(50, 15, '/SedrAlex/Astarte-Archives-Landing-Page', 18),
(51, 15, '/SedrAlex/SLR-dashboard', 18),
(52, 15, '/SedrAlex/Astarte-Ascension', 18),
(53, 15, '/SedrAlex/Ethers.js-Simple-Storage', 18),
(54, 16, '/PedritoRamirez/Desafio-flex', 9),
(55, 16, '/PedritoRamirez/1-Ejemplo-Html', 9),
(56, 16, '/PedritoRamirez/fdsw-github', 9),
(57, 16, '/PedritoRamirez/PedritoRamirez.github.io', 9),
(58, 16, '/PedritoRamirez/portfolio', 9),
(59, 16, '/PedritoRamirez/PabloIgnacioNavarro.github.io', 9),
(60, 17, '/PabloCastellano/extract-dtb', 5),
(61, 17, '/PabloCastellano/awesome-ws2812', 18),
(62, 17, '/PabloCastellano/libreborme', 5),
(63, 17, '/PabloCastellano/pablog-scripts', 5),
(64, 17, '/PabloCastellano/bormeparser', 5),
(65, 17, '/PabloCastellano/libcnml', 5),
(66, 18, '/EusebioSimango/EusebioSimango', 18),
(67, 18, '/EusebioSimango/filipe-deschamps---multiplayer', 18),
(68, 18, '/EusebioSimango/image-compressor', 5),
(69, 18, '/EusebioSimango/EusebioSimango.github.io', 18),
(70, 18, '/EusebioSimango/todo-list', 18),
(71, 18, '/EusebioSimango/quiz-app', 18),
(72, 19, '/Martinhdeez/project-manager', 4),
(73, 19, '/Martinhdeez/silicium', 4),
(74, 19, '/Martinhdeez/Electrodistica', 5),
(75, 19, '/Martinhdeez/tasklist', 4),
(76, 19, '/Martinhdeez/crud-laravel11', 8),
(77, 23, '/cortins-05/2', 18),
(78, 23, '/cortins-05/ApuntesPythonEspanol', 5),
(79, 23, '/cortins-05/ApuntesPHP', 4),
(80, 23, '/cortins-05/cortins-05.github.io', 18),
(81, 24, '/cortins-05/2', 18),
(82, 24, '/cortins-05/ApuntesPythonEspanol', 5),
(83, 24, '/cortins-05/ApuntesPHP', 4),
(84, 24, '/cortins-05/cortins-05.github.io', 18),
(85, 24, '/cortins-05/2', 18),
(86, 24, '/cortins-05/ApuntesPythonEspanol', 5),
(87, 24, '/cortins-05/ApuntesPHP', 4),
(88, 24, '/cortins-05/cortins-05.github.io', 18),
(89, 27, '/cortins-05/2', 18),
(90, 27, '/cortins-05/ApuntesPythonEspanol', 5),
(91, 27, '/cortins-05/ApuntesPHP', 4),
(92, 27, '/cortins-05/cortins-05.github.io', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `socials` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`, `updated_at`, `created_at`, `socials`) VALUES
(14, 'Manuel', 'Vivo', 'manuv', 'manuv@gmail.com', '$2y$10$q8E93KBTBlFzkBgrA2oINewNSF4/6lwEds20YKiZnT7VQuB.ivoMa', '2025-02-23 01:50:36', '2025-02-23 01:20:31', '[\"https:\\/\\/github.com\\/ManuFC94\"]'),
(15, 'Sederie', 'Alexander', 'SedrAlex', 'salex@gmail.com', '$2y$10$VCIWDOHROOuoZdbqpQHLyeo5BcMyQsZUqadvUVdMhBx8R4ahGmmVq', '2025-02-23 01:43:49', '2025-02-23 01:22:43', '[\"https:\\/\\/github.com\\/SedrAlex\\/\"]'),
(16, 'Pedro', 'Ramirez', 'pedroramirez', 'pedroramirez@gmail.com', '$2y$10$M2Kr3J6eTFJt8a2nYaTzhelxIXbDNEFnAMZGP5J8HhWkg2rzIWVii', '2025-02-23 01:45:06', '2025-02-23 01:24:57', '[\"https:\\/\\/github.com\\/PedritoRamirez\"]'),
(17, 'Pablo', ' Castellano', 'Pablete', 'pablo@example.com', '$2y$10$8bpZetTPQuOBRohHdK8Rdu4L3gEB7TmIIKmjWyb579WuCFC8ecuwW', '2025-02-23 01:47:09', '2025-02-23 01:47:09', 'PabloCastellano'),
(18, 'Eusebio', 'Cifuentes', 'Euse', 'eusebio@gmail.com', '$2y$10$a1deKQEFO17TBsuAMRacRuSyS.PXh70DtbGX/rHEl.uucALRJvBpu', '2025-02-23 01:53:38', '2025-02-23 01:53:38', 'EusebioSimango'),
(19, 'Martin', 'Hernandez Gonzalez', 'Martinhdeez', 'martin@gmail.com', '$2y$10$4xkby1PdvLmqFzFke6ZcZerYD17h01ujH6mMPJGvJvthfWQtN3nwm', '2025-02-23 02:02:02', '2025-02-23 02:02:02', 'Martinhdeez'),
(21, 'paquito', 'el de la carretra', 'pacoxxx', 'nose@nose.com', '$2y$10$4xkby1PdvLmqFzFke6ZcZerYD17h01ujH6mMPJGvJvthfWQtN3nwm', '2025-02-23 02:55:08', '2025-02-23 02:48:59', 'Sprinter05'),
(22, 'loco', 'locotron ', 'locotron', 'loco@gmail.com', '$2y$10$PlyxpEhc.YdbWAIl3eWCYOdS2lPMKciy4e4C6oT7qzHr1E8jeQw42', '2025-02-23 02:58:58', '2025-02-23 02:58:58', NULL),
(23, 'lucas', 'ffwewf', 'wfewf', 'lucas@hola.com', '$2y$10$AZIPFO.agIHWZC0EE8.1VOhkNTcUUCYhAL9nk5Z8Nl7rzBgdoohmK', '2025-02-23 03:27:57', '2025-02-23 03:27:57', 'cortins-05'),
(24, 'Lucas', 'Ortins Méndez', 'cortins', 'lucasortins@gmail.com', '$2y$10$m3G/liD532jLSPBciAgNj.vTEi98dKJ8IpCK/4nFrUwutukLqYWKC', '2025-02-23 09:41:25', '2025-02-23 09:38:30', '[\"https:\\/\\/github.com\\/cortins-05\"]'),
(25, 'Pablo', 'Pazos', 'pazoss', 'pablopazosgallego@gmail.com', '$2y$10$o3usO.hYQU8zDhkLbJkERuuKIoHCK0.epdb/4Ng/waH6wGP1GL972', '2025-02-23 10:04:41', '2025-02-23 10:04:41', 'iuwbdpqiwdpqiwd'),
(26, 'Pepe', 'hernandez', 'user', 'email@example.com', '$2y$10$/xFXyNl8he2Tz7iXX.5w4.RHa82vfdpBuyumnsCedcOYejjDPaNCm', '2025-02-23 11:38:47', '2025-02-23 11:38:47', NULL),
(27, 'martin', 'h', 'mjiijjijiji', 'mjartin@gmail.com', '$2y$10$ZyOpnVGfV0I.FHBo3cujA.YRvT7a.EEyWkrlf6hR6YprmQ8dNtWbu', '2025-02-23 11:54:19', '2025-02-23 11:54:19', 'cortins-05'),
(28, 'aroana', 'sds', 'arii', 'ari@gmail.com', '$2y$10$nn8lF6m6RfGBa5Xhh90bau5Th0V1FW4gV0ICnnchUvIegHTplcct.', '2025-02-23 16:51:34', '2025-02-23 16:51:34', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user__id` (`user_id`);

--
-- Indices de la tabla `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT de la tabla `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
