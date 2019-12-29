-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-04-2019 a las 22:53:44
-- Versión del servidor: 10.2.23-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oxirealcom_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `type`, `description`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'ubicacion', 'Martín Rodriguez 932,Villa Adelina, Buenos Aires', 'fas fa-map-marker-alt', 'aa', NULL, NULL),
(2, 'telefono', '4766-8105 /4763-7355', 'fas fa-phone', 'bb', NULL, NULL),
(3, 'celular', '11 6801-1352', 'fab fa-whatsapp', 'cc', NULL, '2018-10-02 21:34:12'),
(4, 'correo', 'ventas@oxigenoreal.com', 'fas fa-envelope', 'dd', NULL, '2018-12-26 21:38:26'),
(5, 'mapa', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3287.6298722801434!2d-58.558507884772794!3d-34.51226658048324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcba7f33fe651b%3A0x1dd7e3ef05ef1983!2sMart%C3%ADn+Rodr%C3%ADguez+932%2C+B1607ADD+Villa+Adelina%2C+Pcia+de+Buenos+Aires!5e0!3m2!1ses!2sar!4v1537791282627', '', 'ee', NULL, '2018-09-24 15:15:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`id`, `title`, `route`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Descargar Lista', 'descargas__icono.png', 'aa', '2018-09-19 22:26:53', '2018-09-19 22:26:53'),
(2, 'Especificaciones  Técnicas Soldadura MIG', 'descargas__icono.png', 'bb', '2018-09-19 22:27:14', '2018-09-19 22:27:14'),
(3, 'Nuevos Productos 2018', 'descargas__icono.png', 'cc', '2018-09-19 22:27:28', '2018-09-19 22:27:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `title`, `subtitle`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Nuestra empresa', NULL, '<p><span style=\"font-size:20px\"><strong>Nuestra firma est&aacute; situada en Villa Adelina zona norte del conurbano bonaerense. Llevamos m&aacute;s de 25&nbsp;a&ntilde;os en el mercado brindando Soluciones Integrales en Soludadura y Corte. </strong></span></p>\r\n\r\n<p><span style=\"font-size:20px\">Contamos con: Distribuci&oacute;n de gases industriales (Arg&oacute;n, Co2, Nitr&oacute;geno,Ox&iacute;geno, Acetileno, Mezclas especiales) Venta de equipos MIG-MAG,TIG, Rectificadores. Plasma. Torchas. Taller propio de reparaci&oacute;n de equipos.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">Aportes, electrodos, busas, toberas, qu&iacute;micos, todos los insumos y consumibles para soldaduras. Cilindros, v&aacute;lvulas reguladoras de presi&oacute;n, gas&oacute;genos, solpleter&iacute;a. M&aacute;scaras fotosensibles, guantes, delantales, mantas, cortinas, accesorios.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><span style=\"color:#f1c40f\">Nuestros valores</span><br />\r\nResponsabilidad, seriedad, honestidad, calidad y la mejora continua.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><span style=\"color:#f1c40f\">Nuestra misi&oacute;n</span><br />\r\nEl compromiso constante de potenciar a nuestros clientes acerc&aacute;ndoles las mejores soluciones tecnol&oacute;gicas para efectuar su trabajo.</span></p>', 'empresa__empresa.jpg', NULL, '2018-11-14 18:03:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`id`, `title`, `image`, `order`, `created_at`, `updated_at`) VALUES
(8, 'SOLDADURA', 'no-image.jpg', 'AB', '2018-12-18 02:03:44', '2018-12-18 02:12:29'),
(10, 'ACCESORIOS', 'no-image.jpg', 'AC', '2018-12-18 02:10:36', '2018-12-18 02:12:41'),
(11, 'EVENTOS', 'no-image.jpg', 'AD', '2018-12-18 02:11:00', '2018-12-18 02:12:55'),
(12, 'LOS RECIÉN LLEGADOS', 'no-image.jpg', 'AF', '2018-12-18 02:12:12', '2018-12-18 02:13:07'),
(13, 'GASES', 'familias__gases_n-640x390.jpg', 'AA', '2018-12-18 03:10:56', '2018-12-18 04:35:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `image`, `order`, `producto_id`, `created_at`, `updated_at`) VALUES
(2, 'galeria__TRIOMIG205-5LCD-maquina-de-soldar-Rmb-Verde-www.rmb_.com_.ar_.jpg', 'ac', 8, '2018-11-14 16:59:10', '2018-11-14 16:59:10'),
(3, 'galeria__TRIOMIG205-5LCD-maquina-de-soldar-Rmb-Verde-www.rmb_.com_.ar_.jpg', 'aa', 99, '2018-11-14 17:01:13', '2018-11-14 17:02:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantias`
--

CREATE TABLE `garantias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `garantias`
--

INSERT INTO `garantias` (`id`, `title`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Comprometidos con la Excelencia en Calidad de nuestro catálogo', '<p>Departamento de Atenci&oacute;n al Cliente<br />\r\n<strong><span style=\"color:#ffab00\">(011) 4766-8105 /4763-7355 </span></strong><br />\r\n<br />\r\nConsultas Online a trav&eacute;s de nuestro e-mail<br />\r\n<strong><span style=\"color:#ffab00\">info@oxigenoreal.com.ar </span></strong></p>\r\n\r\n<p><strong>La garant&iacute;a OXIREAL permite </strong><br />\r\n&middot; Ratificar a trav&eacute;s del cliente, la confianza depositada en la Marca y en sus productos.<br />\r\n&middot; Mantener las M&aacute;quinas con Repuestos Originales, Mano de Obra Especializada y Equipamiento Homologado.<br />\r\n&middot; Distinguir a sus Productos con un mayor valor agregado.<br />\r\n&middot; Fidelizar a los clientes de la Marca.</p>', 'garantia__logo-soldadura_bsas_gris.png', NULL, '2018-10-29 15:21:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `name`, `image`, `order`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'logos__OR-logo PAGINA2.png', 'aa', 'header', NULL, '2018-11-13 23:09:18'),
(2, 'Footer', 'logos__Calavera Para Página2.png', 'bb', 'footer', NULL, '2018-11-14 14:59:43'),
(3, 'Favicon', 'logos__FAVICOM1.png', 'cc', 'favicon', NULL, '2018-11-13 23:09:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `section`, `keyword`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 'home', '', '', 'aa', NULL, NULL),
(2, 'empresa', '', '', 'aa', NULL, NULL),
(3, 'productos', '', '', 'aa', NULL, NULL),
(4, 'garantia', '', '', 'aa', NULL, NULL),
(5, 'postventa', '', '', 'aa', NULL, NULL),
(6, 'descargas', '', '', 'aa', NULL, NULL),
(7, 'contacto', '', '', 'aa', NULL, NULL);

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2018_09_19_133812_create_sliders_table', 1),
(13, '2018_09_19_133828_create_textos_table', 1),
(14, '2018_09_19_133843_create_logos_table', 1),
(15, '2018_09_19_133900_create_redes_table', 1),
(16, '2018_09_19_133913_create_datos_table', 1),
(17, '2018_09_19_133923_create_empresas_table', 1),
(18, '2018_09_19_133937_create_garantias_table', 1),
(19, '2018_09_19_133950_create_post_ventas_table', 1),
(20, '2018_09_19_134000_create_post_descargas_table', 1),
(21, '2018_09_19_135504_create_metadatos_table', 1),
(22, '2018_09_24_124049_create_familias_table', 2),
(23, '2018_09_24_124112_create_subfamilias_table', 2),
(24, '2018_09_24_124125_create_productos_table', 2),
(25, '2018_09_24_192753_create_galerias_table', 3);

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
-- Estructura de tabla para la tabla `postventas`
--

CREATE TABLE `postventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `postventas`
--

INSERT INTO `postventas` (`id`, `title`, `subtitle`, `text`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Asesoramiento Personalizado', 'Para nuestros clientes', '<p>Contamos con un equipo de profesionales capacitados, y brindamos asesoramiento Personalizado adecuado a las necesidades de nuestros clientes.</p>', 'postventa__icono_01.jpg', 'aa', '2018-09-19 22:45:25', '2018-10-29 15:38:33'),
(2, 'Reparación de todas las marcas', 'Brindamos Mantenimiento', '<p>Contamos con unidades de de servicio especializadas y un equipo de trabajo profesional listo para afrontar reparaci&oacute;n de todas las marcas.</p>', 'postventa__icono_02.jpg', 'bb', '2018-09-19 22:46:41', '2018-10-29 15:38:43'),
(3, 'Repuestos y Accesorios', 'Asesoramiento a clientes', '<p>Para m&aacute;s informaci&oacute;n consulte por nuestras piezas originales y accesorios para su equipo.</p>', 'postventa__icono_03.jpg', 'cc', '2018-09-19 22:47:03', '2018-10-29 15:38:58'),
(4, 'Servicio de Post-Venta', 'Soluciones Integrales', '<p>Brindamos un Servicio de Post-Venta para mantener y garantizar la satisfacci&oacute;n de nuestros clientes y la resoluci&oacute;n de problem&aacute;ticas.</p>', 'postventa__icono_04.jpg', 'dd', '2018-09-19 22:47:27', '2018-10-29 15:39:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `important` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subfamily_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_producto`
--

CREATE TABLE `producto_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `producto2_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `name`, `route`, `image`, `order`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'https://www.facebook.com/oxireal', 'fab fa-facebook-f', 'aa', 'footer', '2018-09-19 20:26:53', '2018-11-14 17:16:58'),
(2, 'Twitter', 'https://twitter.com/?lang=es', 'fab fa-twitter-square', 'bb', 'footer', '2018-10-02 22:29:10', '2018-10-02 22:29:10'),
(3, 'Instagram', 'https://www.instagram.com/?hl=es-la', 'fab fa-instagram', 'cc', 'footer', '2018-10-02 22:30:14', '2018-10-02 22:30:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `section`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Más de 20 años en el Rubro', 'Situados en Villa Adelina, llevamos más de Veinte Años en el Mercado, ofreciendo un amplio catálogo de productos y servicios en soldadura y corte', 'sliders__sliderempresa.jpg', 'empresa', 'aa', '2018-09-19 21:41:36', '2018-09-19 21:41:36'),
(2, 'La Soldadura Perfecta', 'Brindamos Soluciones Integrales y todo lo necesario para el Soldador. Distribución de gases industriales, Venta y reparación de equipos de soldadura y corte', 'sliders__sliderhome.jpg', 'home', 'aa', '2018-09-19 21:43:36', '2018-10-04 21:20:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfamilias`
--

CREATE TABLE `subfamilias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subfamilias`
--

INSERT INTO `subfamilias` (`id`, `title`, `image`, `order`, `family_id`, `created_at`, `updated_at`) VALUES
(1, 'Corte por Oxi-corte', 'no-image.jpg', 'aa', 2, '2018-09-24 17:35:07', '2018-10-29 17:38:51'),
(2, 'Corte por plasma manual', 'no-image.jpg', 'bb', 2, '2018-09-24 17:35:58', '2018-09-24 17:35:58'),
(3, 'Corte por plasma mecanizado', 'no-image.jpg', 'cc', 2, '2018-09-24 17:36:11', '2018-09-24 17:36:11'),
(4, 'Soldadura Mig/Mag (GMAW)', 'subfamilias__Soldadora-MIG-MAG-cómo-funcionan-500x500.png', 'aa', 1, '2018-10-02 22:37:06', '2018-10-29 22:08:22'),
(5, 'Soldadura  TIG (GTAW)', 'subfamilias__TIG.png', 'bb', 1, '2018-10-02 22:41:28', '2018-11-01 21:31:37'),
(7, 'Accesorios soldadura MIG', 'no-image.jpg', 'aa', 4, '2018-10-02 23:09:23', '2018-10-02 23:09:23'),
(8, 'Accesorios soldadura TIG', 'no-image.jpg', 'bb', 4, '2018-10-02 23:09:41', '2018-10-02 23:09:41'),
(9, 'Accesorios soldadura electrodos revestidos', 'no-image.jpg', 'cc', 4, '2018-10-02 23:10:02', '2018-10-03 19:44:21'),
(10, 'Accesorios para corte de plasma manual', 'no-image.jpg', 'dd', 4, '2018-10-02 23:10:20', '2018-10-02 23:10:20'),
(11, 'Accesorios para corte por plasma mecanizado', 'no-image.jpg', 'ee', 4, '2018-10-02 23:11:18', '2018-10-02 23:11:18'),
(13, 'Consumibles soldadura MIG', 'no-image.jpg', 'aa', 5, '2018-10-02 23:13:07', '2018-10-02 23:13:07'),
(14, 'Consumibles soldadura TIG', 'no-image.jpg', 'bb', 5, '2018-10-02 23:13:29', '2018-10-02 23:13:29'),
(15, 'Consumibles corte de plasma manual', 'no-image.jpg', 'cc', 5, '2018-10-02 23:13:46', '2018-10-02 23:13:46'),
(16, 'Consumibles corte plasma mecanizado', 'no-image.jpg', 'dd', 5, '2018-10-02 23:16:34', '2018-10-02 23:16:34'),
(17, 'Consumibles corte laser', 'no-image.jpg', 'ee', 5, '2018-10-02 23:17:16', '2018-10-02 23:17:16'),
(20, 'Gases para Soldaduras', 'subfamilias__OR LOGO SOLO GASES.png', 'aa', 3, '2018-11-02 01:21:28', '2018-11-02 02:32:41'),
(23, 'Conozca nuestros Gases', 'subfamilias__PARALAWEB2.jpg', 'AA', 13, '2018-12-18 03:15:14', '2018-12-18 15:50:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textos`
--

CREATE TABLE `textos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `textos`
--

INSERT INTO `textos` (`id`, `title`, `image`, `text`, `section`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Soluciones Integrales en Soldadura y Corte', 'home__iconodestacado.jpg.png', '<p><span style=\"font-size:20px\">En <span style=\"background-color:null\"><span style=\"color:#2980b9\">OXI REAL</span></span>&nbsp;le ofrecemos todas las alternativas disponibles en materia de Soldadura y Corte. Brindamos Soluciones integrales adecuadas a las necesidades de nuestros clientes. Contamos con Servicio Post-Venta y Garant&iacute;a.</span></p>', 'home', 'aa', NULL, '2018-12-17 15:39:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Franco', 'franco', '$2y$10$vaXRWeuz5zDr8fl6E2vqPuGTDXSkZIYEoP7X65jGyh7YrvLFusuj2', '0McTAy9IKYvzgPZsrqPwxPemoJlC29j2wTApYlzBVwIpnzm7NzvL4c6fCNGd', '2018-09-19 20:23:50', '2018-09-27 20:04:32'),
(2, 'Pablo', 'pablo', '$2y$10$.fcv6vSUYgGhwVj5DTDm9.hgHJRAsEPPD03yF8Ixhq6BikeccnihO', 'R0WbUPgYjoeQZQNCHlJWuvxpkzplz1KOW3pxkmw5dtIkpDfYQtnw8AHK395M', '2018-09-28 22:21:58', '2018-09-28 22:21:58'),
(3, 'Alejandro', 'alejandro', '$2y$10$0iERDY8cku5hZ3Ge2kwijOpNZgM9UrDCkQ0629N1cSrDlzDF3nRDC', NULL, '2018-10-04 21:31:54', '2018-10-04 21:31:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `garantias`
--
ALTER TABLE `garantias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
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
-- Indices de la tabla `postventas`
--
ALTER TABLE `postventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto_producto`
--
ALTER TABLE `producto_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_producto_producto2_id_foreign` (`producto2_id`),
  ADD KEY `producto_producto_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `textos`
--
ALTER TABLE `textos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_unique` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `garantias`
--
ALTER TABLE `garantias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `postventas`
--
ALTER TABLE `postventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto_producto`
--
ALTER TABLE `producto_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `textos`
--
ALTER TABLE `textos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
