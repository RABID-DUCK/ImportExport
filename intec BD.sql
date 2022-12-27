-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 27 2022 г., 00:19
-- Версия сервера: 10.6.7-MariaDB-log
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `intec`
--

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_trans` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `small_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `name_trans`, `price`, `small_text`, `big_text`, `user_id`) VALUES
(1, '17.5 Ноутбук Acer Extensa EX215-54-355T', '17.5 Notebook Acer Extensa EX215-54-355T', 50399, 'ноутбуки', 'Этот ноутбук создан для тех, кто хочет получить качественное и производительное компьютерное устройство с наиболее востребованным функционалом. Данная модель полностью удовлетворяет данные требования.', 1),
(2, '14 Ультрабук MSI Modern 14 C12M-229RU', '14 Ultrabook MSI Modern 14 C12M-229RU', 50999, 'ультрабуки', 'Надежный накопитель предоставляет вам возможности для долговременного хранения необходимой виртуальной информации. Устройство оборудовано веб-камерой и микрофоном, благодаря которым вы сможете организовывать видеоконференции с партнерами по бизнесу и коллегами по работе.', 1),
(3, '15.6 Ноутбук Infinix InBook X2 PLUS XL25', '15.6 Notebook Infinix InBook X2 PLUS XL25', 50999, 'ноутбуки', 'Этот ноутбук создан для тех, кто хочет получить хорошее производительное компьютерное устройство с наиболее востребованным функционалом. ', 1),
(4, '15.6 Ноутбук ASUS ExpertBook P1 P1512CEA-BQ0396', '15.6 Notebook ASUS ExpertBook P1 P1512CEA-BQ0396', 51299, 'ноутбуки', 'Ноутбук ASUS ExpertBook P1 P1512CEA-BQ0396 – это ориентированная на корпоративных пользователей модель, сочетающая высокую производительность, повышенную прочность и множество дополнительных функций, направленных на повышение продуктивности. ', 1),
(5, 'Видеокарта ASUS Dual GeForce RTX 2060 EVO', 'Graphic Card ASUS Dual GeForce RTX 2060 EVO', 31499, 'видеокарты', 'Видеокарта ASUS Dual GeForce RTX 2060 EVO с поддержкой технологии трассировки лучей обеспечит высокую производительность вашего компьютера в самых разных задачах — будь то игры на высоких настройках графики, монтаж видео или ретушь фото в профессиональных приложениях. ', 2),
(6, 'Видеокарта ASUS GeForce GTX 1660 SUPER PHOENIX', 'Graphic Card ASUS GeForce GTX 1660 SUPER PHOENIX', 31499, 'видеокарты', 'Видеокарта ASUS GeForce GTX 1660 SUPER PHOENIX [PH-GTX1660S-6G] имеет тип памяти GDDR6 и подключается через разъем PCI-E версии 3.0.', 2),
(7, 'Видеокарта KFA2 GeForce RTX 3060 CORE (LHR)', 'Graphic Card KFA2 GeForce RTX 3060 CORE (LHR)', 33999, 'видеокарты', 'Видеокарта KFA2 GeForce RTX 3060 CORE (LHR) [36NOL7MD1VOK] способна обеспечить высокий уровень производительности в играх и требовательных графических приложениях.', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
