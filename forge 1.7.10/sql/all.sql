-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Авг 04 2017 г., 11:50
-- Версия сервера: 5.7.18-0ubuntu0.16.10.1
-- Версия PHP: 7.0.18-0ubuntu0.16.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mcshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `md_accounts`
--

CREATE TABLE `md_accounts` (
  `name` text CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `allowShopCreate` tinyint(1) NOT NULL DEFAULT '1',
  `allowShopCreateBanner` text,
  `allowShopCreateReason` text,
  `coins` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `md_accounts`
--

INSERT INTO `md_accounts` (`name`, `money`, `id`, `allowShopCreate`, `allowShopCreateBanner`, `allowShopCreateReason`, `coins`) VALUES
('log_inil', 99, 2, 0, '', '', 4096),
('Player367', 0, 232, 1, NULL, NULL, 850),
('Player19', 0, 233, 1, NULL, NULL, 0),
('Player246', 0, 234, 1, NULL, NULL, 0),
('Player368', 0, 235, 1, NULL, NULL, 0),
('Player854', 0, 236, 1, NULL, NULL, 0),
('Player99', 0, 237, 1, NULL, NULL, 0),
('Player429', 0, 238, 1, NULL, NULL, 0),
('Player818', 0, 239, 1, NULL, NULL, 0),
('Player521', 0, 240, 1, NULL, NULL, 0),
('Player299', 0, 241, 1, NULL, NULL, 0),
('Player870', 0, 242, 1, NULL, NULL, 0),
('Player525', 0, 243, 1, NULL, NULL, 0),
('Player21', 0, 244, 1, NULL, NULL, 0),
('Player270', 0, 245, 1, NULL, NULL, 0),
('Player769', 0, 246, 1, NULL, NULL, 0),
('Player693', 0, 247, 1, NULL, NULL, 0),
('Player131', 0, 248, 1, NULL, NULL, 0),
('Player75', 0, 249, 1, NULL, NULL, 0),
('Player260', 0, 250, 1, NULL, NULL, 0),
('Player916', 0, 251, 1, NULL, NULL, 0),
('Player68', 0, 252, 1, NULL, NULL, 0),
('Player751', 0, 253, 1, NULL, NULL, 0),
('Player115', 0, 254, 1, NULL, NULL, 0),
('Player760', 0, 255, 1, NULL, NULL, 0),
('Player458', 0, 256, 1, NULL, NULL, 0),
('Player979', 0, 257, 1, NULL, NULL, 0),
('Player592', 0, 258, 1, NULL, NULL, 0),
('Player379', 0, 259, 1, NULL, NULL, 0),
('Player781', 0, 260, 1, NULL, NULL, 0),
('Player67', 0, 261, 1, NULL, NULL, 0),
('Player837', 0, 262, 1, NULL, NULL, 0),
('Player755', 0, 263, 1, NULL, NULL, 0),
('Player845', 0, 264, 1, NULL, NULL, 0),
('Player258', 0, 265, 1, NULL, NULL, 0),
('Player226', 0, 266, 1, NULL, NULL, 0),
('Player738', 0, 267, 1, NULL, NULL, 0),
('Player318', 0, 268, 1, NULL, NULL, 0),
('Player823', 0, 269, 1, NULL, NULL, 0),
('Player144', 0, 270, 1, NULL, NULL, 0),
('Player631', 0, 271, 1, NULL, NULL, 0),
('Player322', 0, 272, 1, NULL, NULL, 0),
('Player640', 0, 273, 1, NULL, NULL, 0),
('Player741', 0, 274, 1, NULL, NULL, 0),
('Player238', 0, 275, 1, NULL, NULL, 0),
('Player897', 0, 276, 1, NULL, NULL, 0),
('Player926', 0, 277, 1, NULL, NULL, 0),
('Player692', 0, 278, 1, NULL, NULL, 0),
('Player204', 0, 279, 1, NULL, NULL, 0),
('Player292', 0, 280, 1, NULL, NULL, 0),
('Player446', 0, 281, 1, NULL, NULL, 0),
('Player540', 0, 282, 1, NULL, NULL, 0),
('Player700', 0, 283, 1, NULL, NULL, 0),
('Player52', 0, 284, 1, NULL, NULL, 0),
('Player247', 0, 285, 1, NULL, NULL, 0),
('Player145', 0, 286, 1, NULL, NULL, 0),
('Player266', 0, 287, 1, NULL, NULL, 0),
('Player602', 0, 288, 1, NULL, NULL, 0),
('Player472', 0, 289, 1, NULL, NULL, 0),
('Player129', 0, 290, 1, NULL, NULL, 0),
('Player621', 0, 291, 1, NULL, NULL, 0),
('Player641', 0, 292, 1, NULL, NULL, 0),
('Player91', 0, 293, 1, NULL, NULL, 0),
('Player300', 0, 294, 1, NULL, NULL, 0),
('Player717', 0, 295, 1, NULL, NULL, 0),
('Player462', 0, 296, 1, NULL, NULL, 0),
('Player499', 0, 297, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `md_entities`
--

CREATE TABLE `md_entities` (
  `name` text NOT NULL,
  `data` blob NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `md_items`
--

CREATE TABLE `md_items` (
  `name` text NOT NULL,
  `info` text NOT NULL,
  `cost` int(11) NOT NULL,
  `lim` int(11) NOT NULL,
  `stack_data` blob NOT NULL,
  `id` int(11) NOT NULL,
  `subCatId` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `md_items`
--

INSERT INTO `md_items` (`name`, `info`, `cost`, `lim`, `stack_data`, `id`, `subCatId`) VALUES
('', 'new merch', 10, -1, 0x00561f8b0800000000000000e36260606260ca4c611460646075ce2fcd2b61e462602e494ce762604fc92c2ec849ace46060f14bcc4d65e02a2ec9cf4b55282e2f4a0169627349cc4d4c4f656060000059a15e0b44000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 1, 0),
('', 'new merch', 20, -1, 0x00511f8b0800000000000000e36260606260ca4c616062646075ce2fcd2b71e062602e494ce762604fc92c2ec849ace46060f14bcc4d6560752f4a2c2e06a9677349cc4d4c4f6560600000e30ed6fc3f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 2, 0),
('', 'new merch', 10, -1, 0x00511f8b0800000000000000e36260606260ca4c616062646075ce2fcd2b71e062602e494ce762604fc92c2ec849ace46060f14bcc4d6560752f4a2c2e06a9677349cc4d4c4f6560600000e30ed6fc3f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 3, 0),
('', 'new merch', 40, 5, 0x00561f8b0800000000000000e36260606260ca4c611460646075ce2fcd2b61e462602e494ce762604fc92c2ec849ace46060f14bcc4d65e02a2ec9cf4b55282e2f4a0169627349cc4d4c4f656060000059a15e0b44000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 4, 0),
('g', 'new merch', 100, 100, 0x00331f8b0800000000000000e36260606260ca4c61e065646075ce2fcd2b616462607349cc4d4c4f6560600000fc47bfc41f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 5, 0),
('g', 'new merch', 100, 100, 0x00331f8b0800000000000000e36260606260ca4c61e065646075ce2fcd2b616462607349cc4d4c4f6560600000fc47bfc41f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 6, 0),
('g', 'new merch', 100, 100, 0x00331f8b0800000000000000e36260606260ca4c61e065646075ce2fcd2b616462607349cc4d4c4f6560600000fc47bfc41f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `md_logs`
--

CREATE TABLE `md_logs` (
  `date` text NOT NULL,
  `bought_by` text NOT NULL,
  `message` text NOT NULL,
  `amount` int(11) NOT NULL,
  `spent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `md_logs`
--

INSERT INTO `md_logs` (`date`, `bought_by`, `message`, `amount`, `spent`) VALUES
('Wed Aug 02 23:55:14 YEKT 2017', 'ShadowLord', 'bought item - test=0=64', 1, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `md_privelegies`
--


CREATE TABLE IF NOT EXISTS `md_privelegies` (
  `name` text NOT NULL,
  `description` text NOT NULL,
  `pic_url` text NOT NULL,
  `cost` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `id` int(11) NOT NULL,
  `worlds` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `md_privelegies`
--

INSERT INTO `md_privelegies` (`name`, `description`, `pic_url`, `cost`, `time`, `id`, `worlds`) VALUES
('VIP', 'JUST VIP\r\nANOTHER STRING\r\n???\r\n/SOME COMMANDS\r\nBITCH\r\n&2COlor', 'http://www.mkyong.com/image/mypic.jpg', 12345, 2592000, 1, '*'),
('PREMIUUUM', 'asdasdasddfsdaf\r\nsadg\r\nfag\r\n\r\nafg\r\nf\r\ndgdhgfhf\r\ngh\r\nfdj\r\nfd\r\nhj\r\n', 'http://www.mkyong.com/image/mypic.jpg', 1234565, 10, 2, '*'),
('VIP1', 'JUST VIP\r\nANOTHER STRING\r\n???\r\n/SOME COMMANDS\r\nBITCH\r\n&2COlor', 'http://www.mkyong.com/image/mypic.jpg', 123456, 2592000, 3, '*'),
('PREMIUUUM2', 'asdasdasddfsdaf\r\nsadg\r\nfag\r\n\r\nafg\r\nf\r\ndgdhgfhf\r\ngh\r\nfdj\r\nfd\r\nhj\r\n', 'http://www.mkyong.com/image/mypic.jpg', 1278654, 10, 4, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `md_regions`
--

CREATE TABLE `md_regions` (
  `name` text NOT NULL,
  `world` text NOT NULL,
  `cost` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `md_regions`
--

INSERT INTO `md_regions` (`name`, `world`, `cost`, `id`) VALUES
('region2', 'world-MMO', 1234, 1),
('region21', 'world-MMO', 1234, 2),
('region211', 'world-MMO', 1234, 3),
('region2111', 'world-MMO', 1234, 4),
('6451287', 'world-MMO', 1234, 5),
('4535', 'world-MMO', 1234, 6),
('45321', 'world-MMO', 1234, 7),
('78645', 'world-MMO', 1234, 8),
('7897863', 'world-MMO', 1234, 9),
('45312', 'world-MMO', 1234, 10),
('8453120', 'world-MMO', 1234, 11),
('7864512', 'world-MMO', 1234, 12),
('78912', 'world-MMO', 1234, 13),
('7864512', 'world-MMO', 1234, 14),
('786451', 'world-MMO', 1234, 15),
('7865432', 'world-MMO', 1234, 16);

-- --------------------------------------------------------

--
-- Структура таблицы `md_shops`
--

CREATE TABLE `md_shops` (
  `id` int(11) NOT NULL,
  `owner` text NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` int(11) NOT NULL,
  `isFreezed` tinyint(1) NOT NULL,
  `freezer` text NOT NULL,
  `freezReason` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `moneyType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `md_shops`
--

INSERT INTO `md_shops` (`id`, `owner`, `name`, `lastUpdate`, `isFreezed`, `freezer`, `freezReason`, `moneyType`) VALUES
(0, 'SERVER', 'Server shop', 0, 0, '', '', ''),
(1, 'log_inil', 'SUPER LOW COST SHOP', 0, 0, '', '', 'coin'),
(3, 'laclen', 'Industrial Craft [IC] | Build Craft [BC]', 0, 1, 'log', 'lie', 'coin');

-- --------------------------------------------------------

--
-- Структура таблицы `md_subCats`
--

CREATE TABLE `md_subCats` (
  `id` int(11) NOT NULL,
  `shopId` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `displayName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `md_subCats`
--

INSERT INTO `md_subCats` (`id`, `shopId`, `catId`, `displayName`) VALUES
(1, 0, 0, 'Зелья');

-- --------------------------------------------------------

--
-- Структура таблицы `md_userItems`
--

CREATE TABLE `md_userItems` (
  `id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `name` text NOT NULL,
  `info` text NOT NULL,
  `lim` int(11) NOT NULL,
  `shopId` int(11) NOT NULL,
  `subCatId` int(11) NOT NULL DEFAULT '0',
  `stack_data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `md_userItems`
--

INSERT INTO `md_userItems` (`id`, `cost`, `name`, `info`, `lim`, `shopId`, `subCatId`, `stack_data`) VALUES
(1, 10, '', 'new merch', -1, 1, 0, 0x00561f8b0800000000000000e36260606260ca4c611460646075ce2fcd2b61e462602e494ce762604fc92c2ec849ace46060f14bcc4d65e02a2ec9cf4b55282e2f4a0169627349cc4d4c4f656060000059a15e0b44000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(2, 20, '', 'new merch', -1, 1, 0, 0x00511f8b0800000000000000e36260606260ca4c616062646075ce2fcd2b71e062602e494ce762604fc92c2ec849ace46060f14bcc4d6560752f4a2c2e06a9677349cc4d4c4f6560600000e30ed6fc3f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(3, 10, '', 'new merch', -1, 1, 0, 0x00511f8b0800000000000000e36260606260ca4c616062646075ce2fcd2b71e062602e494ce762604fc92c2ec849ace46060f14bcc4d6560752f4a2c2e06a9677349cc4d4c4f6560600000e30ed6fc3f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(4, 40, '', 'new merch', 5, 1, 0, 0x00561f8b0800000000000000e36260606260ca4c611460646075ce2fcd2b61e462602e494ce762604fc92c2ec849ace46060f14bcc4d65e02a2ec9cf4b55282e2f4a0169627349cc4d4c4f656060000059a15e0b44000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `md_accounts`
--
ALTER TABLE `md_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `md_items`
--
ALTER TABLE `md_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `md_privelegies`
--
ALTER TABLE `md_privelegies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `md_regions`
--
ALTER TABLE `md_regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `md_shops`
--
ALTER TABLE `md_shops`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `md_subCats`
--
ALTER TABLE `md_subCats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `md_userItems`
--
ALTER TABLE `md_userItems`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `md_accounts`
--
ALTER TABLE `md_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;
--
-- AUTO_INCREMENT для таблицы `md_items`
--
ALTER TABLE `md_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `md_privelegies`
--
ALTER TABLE `md_privelegies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `md_regions`
--
ALTER TABLE `md_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `md_shops`
--
ALTER TABLE `md_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `md_subCats`
--
ALTER TABLE `md_subCats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `md_userItems`
--
ALTER TABLE `md_userItems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
