-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2017 a las 05:30:11
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Ropa', 'Mujer', '2017-06-25 05:58:34', '2017-06-25 05:58:34'),
(2, 'Ropa Mujer', 'De deportes', '2017-06-26 02:57:34', '2017-06-26 02:57:34'),
(3, 'Tennis hombre', 'Para correr', '2017-06-26 02:58:07', '2017-06-26 02:58:07'),
(4, 'Tennis Mujer', 'Para correr', '2017-06-26 03:09:02', '2017-06-26 03:09:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilios`
--

CREATE TABLE `domicilios` (
  `id` int(10) UNSIGNED NOT NULL,
  `calle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `colonia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `domicilios`
--

INSERT INTO `domicilios` (`id`, `calle`, `cp`, `colonia`, `municipio`, `created_at`, `updated_at`) VALUES
(1, 'Eucalipto', 62573, 'Sanf', 'Jiutepec', '2017-06-25 05:22:27', '2017-06-25 05:22:27'),
(2, 'Eucalipto', 62573, 'Sanf', 'Jiutepec', '2017-06-25 05:22:53', '2017-06-25 05:22:53'),
(3, 'Aguacatee', 34221, 'Zulyotl', 'Jonacatepec', '2017-06-25 05:27:58', '2017-06-25 05:27:58'),
(4, 'Aguacatee', 34221, 'Zulyotl', 'Jonacatepec', '2017-06-25 05:29:27', '2017-06-25 05:29:27'),
(5, 'guacare', 34111, 'Zulayotl', 'Jona', '2017-06-25 05:30:23', '2017-06-25 05:30:23'),
(6, 'njk', 54321, 'mk', 'jmk', '2017-06-25 05:31:20', '2017-06-25 05:31:20'),
(7, 'bhjn', 909876, 'bhjnkml', 'bhjnkm', '2017-06-25 05:37:39', '2017-06-25 05:37:39'),
(8, 'Benito Juarez', 653211, 'Roma', 'Jonacatepec', '2017-06-26 03:15:01', '2017-06-26 03:15:01'),
(9, 'Mandarina', 564333, 'Roma', 'Jonacatepec', '2017-06-26 03:19:15', '2017-06-26 03:19:15'),
(10, 'Bicentenario', 674333, 'San Gaspar', 'Dolores', '2017-06-26 03:20:30', '2017-06-26 03:20:30'),
(11, 'Hidalgo', 987663, 'La fe', 'Zacualpan', '2017-06-26 03:22:07', '2017-06-26 03:22:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_22_234820_productsImageColumn', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `fecha`, `cliente_id`, `estado`, `created_at`, `updated_at`) VALUES
(2, '2017-06-25 01:08:52', 2, 'Enviado', '2017-06-25 06:08:52', '2017-06-25 06:08:52'),
(3, '2017-06-25 01:12:15', 2, 'Enviado', '2017-06-25 06:12:15', '2017-06-25 06:12:15'),
(4, '2017-06-25 01:14:07', 2, 'Enviado', '2017-06-25 06:14:07', '2017-06-25 06:14:07'),
(5, '2017-06-25 01:17:22', 2, 'Enviado', '2017-06-25 06:17:22', '2017-06-25 06:17:22'),
(6, '2017-06-25 21:42:19', 2, 'Enviado', '2017-06-26 02:42:19', '2017-06-26 02:42:19'),
(7, '2017-06-25 21:42:19', 2, 'Enviado', '2017-06-26 02:42:19', '2017-06-26 02:42:19'),
(8, '2017-06-25 21:43:39', 2, 'Enviado', '2017-06-26 02:43:39', '2017-06-26 02:43:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_productos`
--

CREATE TABLE `pedido_productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `pedido_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido_productos`
--

INSERT INTO `pedido_productos` (`id`, `pedido_id`, `producto_id`, `cantidad`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 4, '2017-06-25 06:08:52', '2017-06-25 06:08:52'),
(7, 2, 1, 4, '2017-06-25 06:08:52', '2017-06-25 06:08:52'),
(8, 2, 1, 4, '2017-06-25 06:08:52', '2017-06-25 06:08:52'),
(9, 2, 1, 4, '2017-06-25 06:08:52', '2017-06-25 06:08:52'),
(10, 2, 1, 4, '2017-06-25 06:08:52', '2017-06-25 06:08:52'),
(11, 2, 1, 5, '2017-06-25 06:08:52', '2017-06-25 06:08:52'),
(12, 3, 1, 4, '2017-06-25 06:12:15', '2017-06-25 06:12:15'),
(13, 3, 1, 4, '2017-06-25 06:12:15', '2017-06-25 06:12:15'),
(14, 3, 1, 4, '2017-06-25 06:12:15', '2017-06-25 06:12:15'),
(15, 3, 1, 4, '2017-06-25 06:12:15', '2017-06-25 06:12:15'),
(16, 3, 1, 4, '2017-06-25 06:12:15', '2017-06-25 06:12:15'),
(17, 3, 1, 5, '2017-06-25 06:12:15', '2017-06-25 06:12:15'),
(18, 4, 1, 4, '2017-06-25 06:14:07', '2017-06-25 06:14:07'),
(19, 4, 1, 4, '2017-06-25 06:14:07', '2017-06-25 06:14:07'),
(20, 4, 1, 4, '2017-06-25 06:14:07', '2017-06-25 06:14:07'),
(21, 4, 1, 4, '2017-06-25 06:14:07', '2017-06-25 06:14:07'),
(22, 4, 1, 4, '2017-06-25 06:14:08', '2017-06-25 06:14:08'),
(23, 4, 1, 5, '2017-06-25 06:14:08', '2017-06-25 06:14:08'),
(24, 5, 1, 4, '2017-06-25 06:17:23', '2017-06-25 06:17:23'),
(25, 5, 1, 4, '2017-06-25 06:17:23', '2017-06-25 06:17:23'),
(26, 5, 1, 4, '2017-06-25 06:17:23', '2017-06-25 06:17:23'),
(27, 5, 1, 4, '2017-06-25 06:17:23', '2017-06-25 06:17:23'),
(28, 5, 1, 4, '2017-06-25 06:17:23', '2017-06-25 06:17:23'),
(29, 5, 1, 5, '2017-06-25 06:17:23', '2017-06-25 06:17:23'),
(30, 6, 1, 2, '2017-06-26 02:42:19', '2017-06-26 02:42:19'),
(31, 7, 1, 2, '2017-06-26 02:42:19', '2017-06-26 02:42:19'),
(32, 8, 1, 2, '2017-06-26 02:43:40', '2017-06-26 02:43:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `nombre`, `descripcion`, `precio`, `categoria_id`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Playera', 'Holgada', '123.00', 1, '2017-06-25 05:58:55', '2017-06-26 03:00:57', '1_1498428057.jpg'),
(2, 'Nike', 'Modelo azul', '954.00', 1, '2017-06-26 02:58:47', '2017-06-26 02:59:32', '2_1498427972.jpg'),
(3, 'Playera', 'Blanca', '124.00', 1, '2017-06-26 03:06:34', '2017-06-26 03:07:04', '3_1498428424.png'),
(4, 'Pantalon', 'Para ejercicio', '976.00', 1, '2017-06-26 03:08:11', '2017-06-26 03:08:37', '4_1498428517.jpg'),
(5, 'Tennis', 'Morados', '876.00', 4, '2017-06-26 03:12:25', '2017-06-26 03:12:51', '5_1498428771.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio_id` int(10) UNSIGNED DEFAULT NULL,
  `tipoUsuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `domicilio_id`, `tipoUsuario`, `telefono`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rocio', 'otra@gmail.com', 'server123', 6, 'admin', NULL, NULL, '2017-06-25 05:31:20', '2017-06-25 05:31:20'),
(2, 'Una', 'unamas@gmail.com', '$2y$10$9Fwb1xfP51YtNauRBOxJ.eDrunlFlNJwFkM8Mo3ePd.oNBUVK/DjO', 7, 'admin', NULL, 'exrPVcove3ZxSPR9c15nyJvHaaNR3TH980aqYnYECP2Nk37r1suxw1HtTQTE', '2017-06-25 05:37:39', '2017-06-25 05:37:39'),
(3, 'Mario', 'mario@gmail.com', '$2y$10$0LgBBa/oxODpYXT6i4fgMOSEmgzkpSyqfELm6LJI//8jVDfFHEZTa', 8, 'customer', NULL, NULL, '2017-06-26 03:15:01', '2017-06-26 03:15:01'),
(5, 'Maria', 'maria@gmail.com', '$2y$10$5Pdu6ooazdzeZ2tIvoFF3eYCC7koIGOBS0SyOidwVEh6Rpy6xw1QS', 10, 'customer', NULL, NULL, '2017-06-26 03:20:30', '2017-06-26 03:20:30'),
(6, 'Lucia', 'lucia@gmail.com', '$2y$10$6CPfhtMCs2w4JCk0ma0Pg.LyUxHKMHQEcxEYvvdTN3vcvPjhRhX8i', 11, 'customer', NULL, NULL, '2017-06-26 03:22:07', '2017-06-26 03:22:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_productos_pedido_id_foreign` (`pedido_id`),
  ADD KEY `pedido_productos_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_domicilio_id_foreign` (`domicilio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD CONSTRAINT `pedido_productos_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `pedido_productos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_domicilio_id_foreign` FOREIGN KEY (`domicilio_id`) REFERENCES `domicilios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
