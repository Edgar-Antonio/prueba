-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-09-2020 a las 01:02:07
-- Versión del servidor: 5.7.29-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BRE`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casas`
--

CREATE TABLE `casas` (
  `id` int(10) UNSIGNED NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dormitorios` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banos` int(11) NOT NULL,
  `living` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comedor` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cocina` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amoblado` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `escritorio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jardin` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parrillero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garaje` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estar` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependencias` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supterreno` int(11) NOT NULL,
  `supconstruido` int(11) NOT NULL,
  `precio` double(15,2) NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idpropi` int(10) UNSIGNED DEFAULT NULL,
  `visto` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edificio` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dormitorios` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banos` int(11) NOT NULL,
  `living` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comedor` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cocina` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amoblado` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `escritorio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jardin` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parrillero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garaje` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estar` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependencias` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supconstruido` int(11) NOT NULL,
  `precio` double(15,2) NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idpropi` int(10) UNSIGNED DEFAULT NULL,
  `visto` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(10) UNSIGNED NOT NULL,
  `visto` int(11) NOT NULL,
  `idinmueble` int(10) UNSIGNED DEFAULT NULL,
  `fotoportada` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto3` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_27_150546_create_propietarios_table', 1),
(4, '2020_03_27_164945_create_terrenos_table', 1),
(5, '2020_03_28_204855_create_oficinas_table', 1),
(6, '2020_03_28_205002_create_departamentos_table', 1),
(7, '2020_03_28_205046_create_casas_table', 1),
(8, '2020_03_28_214705_create_fotos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `id` int(10) UNSIGNED NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edificio` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ambienetes` int(11) NOT NULL,
  `banos` int(11) NOT NULL,
  `kitchenette` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garaje` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amoblado` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supconstruido` int(11) NOT NULL,
  `precio` double(15,2) NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idpropi` int(10) UNSIGNED DEFAULT NULL,
  `visto` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidopat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidomat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `celular` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`id`, `nombre`, `apellidopat`, `apellidomat`, `telefono`, `celular`, `created_at`, `updated_at`) VALUES
(1, 'Marcos', 'Apaza', 'Martinez', 2342134, 7777777, NULL, NULL),
(2, 'Iver', 'Candia', 'Chura', 0, 77345632, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terrenos`
--

CREATE TABLE `terrenos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amurallado` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supterreno` int(11) NOT NULL,
  `precio` double(15,2) NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idpropi` int(10) UNSIGNED DEFAULT NULL,
  `visto` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `terrenos`
--

INSERT INTO `terrenos` (`id`, `ciudad`, `modalidad`, `zona`, `amurallado`, `supterreno`, `precio`, `descripcion`, `idpropi`, `visto`, `created_at`, `updated_at`) VALUES
(1, 'La Paz', 'Venta', 'achumani', 'Si', 500, 67000.00, 'lindo terreno', 2, 'si', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `casas`
--
ALTER TABLE `casas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `casas_idpropi_foreign` (`idpropi`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamentos_idpropi_foreign` (`idpropi`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fotos_idinmueble_foreign` (`idinmueble`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oficinas_idpropi_foreign` (`idpropi`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terrenos`
--
ALTER TABLE `terrenos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `terrenos_idpropi_foreign` (`idpropi`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `casas`
--
ALTER TABLE `casas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `terrenos`
--
ALTER TABLE `terrenos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casas`
--
ALTER TABLE `casas`
  ADD CONSTRAINT `casas_idpropi_foreign` FOREIGN KEY (`idpropi`) REFERENCES `propietarios` (`id`);

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_idpropi_foreign` FOREIGN KEY (`idpropi`) REFERENCES `propietarios` (`id`);

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_idinmueble_foreign` FOREIGN KEY (`idinmueble`) REFERENCES `terrenos` (`id`);

--
-- Filtros para la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD CONSTRAINT `oficinas_idpropi_foreign` FOREIGN KEY (`idpropi`) REFERENCES `propietarios` (`id`);

--
-- Filtros para la tabla `terrenos`
--
ALTER TABLE `terrenos`
  ADD CONSTRAINT `terrenos_idpropi_foreign` FOREIGN KEY (`idpropi`) REFERENCES `propietarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
