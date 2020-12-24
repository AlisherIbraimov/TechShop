-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 24 2020 г., 17:32
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop_online`
--

-- --------------------------------------------------------

--
-- Структура таблицы `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `addressline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `addresses`
--

INSERT INTO `addresses` (`id`, `addressline`, `city`, `state`, `zip`, `country`, `phone`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'address', 'Astana', 'state', 123, 'country', '12345', '2020-12-24 05:20:50', '2020-12-24 05:20:50', 2),
(2, 'address', 'Astana', 'state', 123, 'country', '12345', '2020-12-24 05:46:27', '2020-12-24 05:46:27', 2),
(3, 'address', 'Astana', 'state', 123, 'country', '12345', '2020-12-24 06:04:27', '2020-12-24 06:04:27', 2),
(4, 'address', 'Astana', 'state', 123, 'country', '12345', '2020-12-24 06:04:41', '2020-12-24 06:04:41', 2),
(5, 'address', 'Astana', 'state', 123, 'country', '12345', '2020-12-24 06:05:12', '2020-12-24 06:05:12', 2),
(6, 'address', 'Astana', 'state', 123, 'country', '12345', '2020-12-24 06:18:21', '2020-12-24 06:18:21', 1),
(7, 'address', 'Astana', 'state', 123, 'country', '12345', '2020-12-24 06:23:22', '2020-12-24 06:23:22', 1),
(8, 'address', 'Aktobe', 'state', 321, 'country', '12345', '2020-12-24 06:24:21', '2020-12-24 06:24:21', 2),
(9, 'address', 'Almaty', 'state', 123, 'country', '12345', '2020-12-24 07:01:17', '2020-12-24 07:01:17', 1),
(10, 'address', 'Almaty', 'state', 123, 'country', '12345', '2020-12-24 07:02:22', '2020-12-24 07:02:22', 1),
(11, 'address', 'Astana', 'state', 123, 'country', '12345', '2020-12-24 08:59:16', '2020-12-24 08:59:16', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Telephone', '2020-12-24 06:03:17', '2020-12-24 06:03:17'),
(3, 'Laptop', '2020-12-24 08:41:24', '2020-12-24 08:41:24'),
(4, 'Headphone', '2020-12-24 08:42:52', '2020-12-24 08:42:52'),
(5, 'Watch', '2020-12-24 08:44:12', '2020-12-24 08:44:12');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_14_023510_create_products_table', 1),
(4, '2017_03_14_025733_create_categories_table', 1),
(5, '2017_03_15_024412_add_price_to_products_table', 1),
(6, '2017_03_16_033723_add_admin_column_to_users', 1),
(7, '2017_03_17_012432_create_addresses_table', 1),
(8, '2017_03_17_013930_add_user_id_to_address_table_new', 1),
(9, '2017_03_18_103215_create_orders_table', 1),
(10, '2017_03_18_143207_create_order_product_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `delivered` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `delivered`, `created_at`, `updated_at`) VALUES
(1, 1, 67, 1, '2020-12-24 06:23:45', '2020-12-24 06:23:45'),
(2, 2, 67, 1, '2020-12-24 06:24:51', '2020-12-24 07:00:36'),
(3, 1, 67, 1, '2020-12-24 07:02:43', '2020-12-24 07:03:05'),
(4, 1, 152, 0, '2020-12-24 08:59:34', '2020-12-24 08:59:34');

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_product`
--

INSERT INTO `order_product` (`id`, `product_id`, `order_id`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 55.00, NULL, NULL),
(2, 2, 2, 1, 55.00, NULL, NULL),
(3, 2, 3, 1, 55.00, NULL, NULL),
(4, 8, 4, 1, 125.99, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `size`, `image`, `category_id`, `created_at`, `updated_at`, `price`) VALUES
(3, 'Samsung S4', 'Samsung S4 runs Android 4.2 and is powered by a 2600mAh removable battery.', 'small', '3.jpg', 1, '2020-12-24 08:46:01', '2020-12-24 08:46:01', '49'),
(4, 'Meizu M6', 'The Meizu M6 runs Android 7.0 and is powered by a 3070mAh non-removable battery.', 'small', '4.jpg', 1, '2020-12-24 08:47:48', '2020-12-24 08:47:48', '35'),
(5, 'Huawei Y4', 'Huawei Y5 2019 is powered by an octa-core MediaTek Helio A22 (MT6761) processor.', 'small', '5.jpg', 1, '2020-12-24 08:51:06', '2020-12-24 08:51:06', '36.99'),
(7, 'Nexus 5X', 'The Nexus 5X houses a 12.3 megapixel. It can record 4K UHD.', 'small', '6.jpg', 1, '2020-12-24 08:55:08', '2020-12-24 08:55:08', '34.99'),
(8, 'Lenovo Yoga', 'The Lenovo Yoga packs 256GB of HDD storage. Graphics are powered by Nvidia GeForce 940M.', 'small', '23.jpg', 3, '2020-12-24 08:56:07', '2020-12-24 08:56:07', '125.99'),
(9, 'Asus Vivobook S15', 'The Asus VivoBook S15 packs 256GB of SSD storage. Graphics are powered by Nvidia GeForce MX150.', 'small', '25.jpg', 3, '2020-12-24 08:57:34', '2020-12-24 08:57:34', '129.99'),
(10, 'HP 250 G6', 'The HP 250-G6 packs 500GB of HDD storage. Graphics are powered by AMD Radeon 315M Graphics.', 'small', '24.jpg', 3, '2020-12-24 08:58:47', '2020-12-24 08:58:47', '99.99'),
(11, 'Skmei', 'Dial Width: 52mm, Dial Thickness: 17mm, Band Width: 22mm, Watch Length: 260mm.', 'small', 'p9.jpg', 5, '2020-12-24 09:03:46', '2020-12-24 09:03:46', '56.99'),
(12, 'Skmei 1542 Smart Watch', 'Material: Resin Specification: Band Width: 20mm Band. Length: 25cm Dial Diameter: 51mm Case Thickness: 15mm', 'small', 'p10.jpg', 5, '2020-12-24 09:06:20', '2020-12-24 09:06:20', '59.99'),
(13, 'Skmei Waterproof Watch - 1628', 'Dial Width: 44mm, Dial Thickness: 14mm, Band Width: 19mm, Watch Length: 245mm.', 'small', 'p8.jpg', 5, '2020-12-24 09:08:47', '2020-12-24 09:08:47', '69.99'),
(14, 'Philips Over Ear Studio Stereo Headphones', 'Frequency Response: 10 to 23,000 Hz Lightweight headband enhances comfort and adds durability 40-millimeter open back drivers for powerful, detailed sound', 'small', 'p2.jpg', 4, '2020-12-24 09:11:17', '2020-12-24 09:11:17', '19.99'),
(15, 'Zacro MP3', 'Long Battery Life- Listen to songs with speakers for up to 3-4 hours, use headphones to listen to songs up to 8-10 hours', 'small', 'p3.jpg', 4, '2020-12-24 09:13:12', '2020-12-24 09:13:12', '9.99'),
(16, 'Yamaha HPH-MT5', '40 mm custom drivers with CCAW voice coils deliver a broad frequency range from 20Hz to 20kHz. Closed-back, circumaural design for excellent isolation.', 'small', 'p4.jpg', 4, '2020-12-24 09:15:53', '2020-12-24 09:15:53', '112.40');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$G348OMj60J7MQR/vkqyvmOemcIOde58bF2pDTXP3y1w4F9XAoNgW.', 'eCK7lYkjDO4kconHBUIJeb30wHPkH1ZCqTbmCbCaH8HT5KMBuBEzkWyL2jcs', '2020-12-24 01:22:51', '2020-12-24 01:22:51', 1),
(2, 'User', 'user@user.com', '$2y$10$OxN3h/GyOhEOjmtRlfKA/O3Qgb7onxBRQGbf.cgqaFlYyLUkR5/wy', 'XuqiO7EdkTQRGxU2xkcCAUtN8rpmBOyjIR4ZhwOVHNB50T3BIeLUq2TjO86G', '2020-12-24 05:04:36', '2020-12-24 05:04:36', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
