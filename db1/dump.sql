-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 12 2021 г., 20:50
-- Версия сервера: 10.6.5-MariaDB
-- Версия PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bd1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(10) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `time_of_start` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `activities`
--

INSERT INTO `activities` (`activity_id`, `game_id`, `user_id`, `time_of_start`) VALUES
(1, 31, 14, '2021-09-14 12:24:40'),
(2, 45, 40, '2021-09-04 09:05:11'),
(3, 29, 44, '2021-05-13 20:53:01'),
(4, 29, 48, '2021-06-24 20:30:15'),
(5, 6, 21, '2021-04-04 19:06:32'),
(6, 32, 23, '2021-01-30 02:08:37'),
(7, 20, 11, '2021-11-18 08:42:45'),
(8, 26, 45, '2021-02-16 05:30:34'),
(9, 4, 37, '2021-06-01 15:26:10'),
(10, 42, 23, '2021-09-26 07:56:34'),
(11, 2, 15, '2020-09-28 23:24:15'),
(12, 31, 3, '2021-06-07 08:30:02'),
(13, 44, 19, '2021-11-19 14:16:52'),
(14, 4, 43, '2021-02-18 12:26:01'),
(15, 15, 17, '2021-10-27 07:16:54'),
(16, 10, 36, '2021-11-30 04:44:15'),
(17, 33, 23, '2021-07-18 10:08:47'),
(18, 5, 36, '2021-10-23 20:38:23'),
(19, 28, 37, '2020-10-30 02:51:25'),
(20, 15, 15, '2020-11-18 18:58:03'),
(21, 34, 17, '2021-04-11 19:05:27'),
(22, 33, 1, '2021-04-05 06:39:46'),
(23, 22, 44, '2021-11-18 07:21:15'),
(24, 43, 11, '2021-11-17 02:46:13'),
(25, 31, 28, '2020-08-07 05:14:52'),
(26, 40, 20, '2021-11-03 23:18:18'),
(27, 19, 18, '2020-08-24 17:13:18'),
(28, 44, 39, '2021-02-19 11:46:19'),
(29, 13, 48, '2020-12-13 01:55:18'),
(30, 40, 50, '2021-02-18 16:18:47'),
(31, 27, 6, '2021-11-19 15:26:33'),
(32, 24, 16, '2021-08-30 11:34:41'),
(33, 3, 33, '2021-07-04 20:30:23'),
(34, 15, 1, '2021-09-25 17:20:20'),
(35, 5, 8, '2021-08-10 00:50:54'),
(36, 47, 12, '2021-05-23 15:42:35'),
(37, 4, 23, '2020-10-28 16:13:32'),
(38, 27, 14, '2020-08-10 22:34:46'),
(39, 34, 4, '2021-09-27 00:20:59'),
(40, 37, 9, '2021-06-18 07:12:51'),
(41, 49, 21, '2021-08-04 14:38:30'),
(42, 40, 36, '2020-09-03 17:21:13'),
(43, 23, 9, '2021-09-07 19:11:27'),
(44, 12, 30, '2020-09-19 17:32:24'),
(45, 37, 14, '2020-09-19 10:26:51'),
(46, 11, 34, '2021-05-17 00:21:50'),
(47, 11, 43, '2021-05-24 01:28:24'),
(48, 28, 9, '2021-11-01 00:11:24'),
(49, 41, 34, '2021-09-29 23:57:14'),
(50, 12, 45, '2020-10-09 12:48:52');

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE `company` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `subscribers` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`company_id`, `subscribers`, `company_name`) VALUES
(1, 680000, 'Bethesda'),
(2, 900000, 'Valve'),
(3, 523542, 'Electronic Arts'),
(4, 859433, 'Ubisoft'),
(5, 321104, 'Paradox Interactive'),
(6, 655420, 'CD Projekt'),
(7, 144322, 'Blizzard'),
(8, 1239993, 'Rockstar'),
(9, 113042, 'Cofee Stain'),
(10, 349992, 'Klei Entertainment'),
(11, 230054, 'Titan Forge');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `country_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`country_id`, `country`) VALUES
(1, 'Austria'),
(2, 'Russia'),
(3, 'Ukraine'),
(4, 'Germany'),
(5, 'France'),
(6, 'Spain'),
(7, 'Turkey'),
(8, 'Britain'),
(9, 'USA'),
(10, 'China');

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `game_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `cost($)` float NOT NULL,
  `release_date` datetime NOT NULL,
  `reviews` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`game_id`, `name`, `company_id`, `cost($)`, `release_date`, `reviews`) VALUES
(1, 'The Elder Scrolls V: Skyrim', 1, 12.99, '2012-12-19 14:00:00', 118044),
(2, 'Dont Starve', 10, 8.49, '2011-12-19 14:28:26', 24577),
(3, 'Dont Starve Together', 10, 9.99, '2017-11-14 16:30:19', 54211),
(4, 'Fallout 4', 1, 19.99, '2018-12-11 13:19:11', 400200),
(5, 'Fallout 3', 1, 9.99, '2016-12-02 17:23:10', 213405),
(6, 'Fallout 2', 1, 2.99, '2011-09-11 13:19:11', 45430),
(7, 'The Elder Scrolls IV', 1, 5.99, '2009-12-03 13:19:11', 134200),
(8, 'The Elder Scrolls III', 1, 5.99, '2005-04-04 13:19:11', 120200),
(9, 'Fallout New Vegas', 1, 5.99, '2012-10-10 13:19:11', 113000),
(10, 'Fallout Tactics', 1, 2.99, '2007-10-10 13:19:11', 4000),
(11, 'Dota 2', 2, 0, '2012-12-12 11:19:32', 1200000),
(12, 'Portal 2', 2, 0.99, '2013-12-10 11:22:24', 2000000),
(13, 'Half-Life 3', 2, 99.99, '2022-12-06 16:35:47', 11),
(14, 'Portal', 2, 0.49, '2008-12-10 14:59:47', 144001),
(15, 'Sims 3', 3, 200.99, '2015-12-10 04:36:42', 123212),
(16, 'Sims 4', 3, 249.99, '2021-12-15 11:24:42', 45688),
(17, 'Goat Simulator', 9, 3.99, '2013-02-14 01:46:59', 24577),
(18, 'Goat Simulator', 9, 12, '2021-12-12 19:53:03', 4),
(19, 'Smite', 11, 0, '2012-10-09 15:27:13', 213057),
(20, 'Paladins', 11, 0, '2021-12-12 19:54:13', 245300),
(21, 'Fifa 21', 3, 19.99, '2021-12-08 14:32:28', 342567),
(22, 'Fifa 20', 3, 19.99, '2020-12-09 14:37:41', 76588),
(23, 'Fifa 19', 3, 19.99, '2019-12-08 14:32:28', 780002),
(24, 'Fifa 18', 3, 19.99, '2018-12-08 14:32:28', 450001),
(25, 'Fifa 17', 3, 19.99, '2017-12-08 14:32:28', 765888),
(26, 'Fifa 16', 3, 19.99, '2016-12-08 14:32:28', 1242367),
(27, 'Fifa 15', 3, 19.99, '2015-12-08 14:32:28', 75677),
(28, 'Fifa 14', 3, 19.99, '2014-12-08 14:32:28', 33447),
(29, 'Fifa 13', 3, 19.99, '2013-12-08 14:32:28', 3325),
(30, 'Fifa 12', 3, 19.99, '2012-12-08 14:32:28', 3425),
(31, 'Assasins Creed 4', 4, 8.49, '2014-12-24 09:26:28', 700300),
(32, 'The Crew', 4, 9.99, '2018-12-19 09:49:50', 502003),
(33, 'Far Cry 4', 4, 11.49, '2019-12-11 15:32:33', 119043),
(34, 'Far Cry 5', 4, 13.99, '2021-12-08 12:43:41', 502311),
(35, 'Battlefront 2', 3, 5.99, '2021-12-12 19:55:03', 12420),
(36, 'Warcraft 3', 7, 0.49, '2003-05-13 14:29:03', 450130),
(37, 'Europa Universalis IV', 5, 12.49, '2014-12-09 14:34:23', 666666),
(38, 'Hearts Of Iron 4', 5, 12.49, '2016-12-01 11:21:19', 357864),
(39, 'Crusader Kings 3', 5, 19.99, '2021-12-12 13:29:51', 53466),
(40, 'Prison Architect', 5, 4.99, '2013-08-13 14:28:16', 124256),
(41, 'Victoria 3', 5, 20, '2022-03-16 17:34:42', 22),
(42, 'Cities: Skylines', 5, 4.99, '2021-12-12 19:47:42', 113345),
(43, 'Cyberpunk 2077', 6, 99.99, '2077-12-01 00:00:00', 999921),
(44, 'The Witcher 3', 6, 0.99, '2021-12-12 13:29:00', 1232144),
(45, 'Hearthstone', 7, 0, '2012-12-12 04:20:18', 113113),
(46, 'World Of Warcraft', 7, 3.99, '2013-03-20 14:24:39', 243599),
(47, 'Overwatch', 7, 8.99, '2021-12-12 19:50:45', 2033451),
(48, 'Call Of Duty', 7, 10.99, '2021-12-02 00:00:00', 99543),
(49, 'Grand Theft Auto V', 8, 9.99, '2011-12-14 13:31:17', 1023333),
(50, 'Red Dead Redemption 2', 8, 19.99, '2003-12-09 04:29:59', 954321);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `date_of_registration` datetime NOT NULL,
  `lvl` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `username`, `date_of_registration`, `lvl`, `email`, `country`) VALUES
(1, 'Vasya322', '2014-09-17 11:27:18', 144, 'vasyan@yandex.ru', 2),
(2, 'Asdafaq', '2001-11-12 12:14:10', 54, 'adasfa@mail.ru', 2),
(3, 'Roro4', '2002-04-17 16:34:45', 99, 'rorolo@gmail.com', 5),
(4, 'settlement', '2002-11-22 11:27:18', 32, 'duty@gmail.com', 2),
(5, 'extinct', '2003-09-11 11:27:18', 11, 'seat@gmail.com', 10),
(6, 'marine', '2003-11-07 11:27:18', 1, 'undertake@gmail.com', 9),
(7, 'approve', '2005-10-13 11:27:18', 3, 'member@gmail.com', 1),
(8, 'sleep', '2006-05-05 11:27:18', 12, 'think@gmail.com', 3),
(9, 'duke', '2006-05-05 11:27:18', 105, 'restoration@gmail.com', 3),
(10, 'shelter', '2010-03-21 11:27:18', 66, 'hospital@gmail.com', 4),
(11, 'expose', '2011-09-05 11:27:18', 9, 'firefighter@gmail.com', 5),
(12, 'curtain', '2015-04-29 11:27:18', 22, 'pedestrian@gmail.com', 7),
(13, 'reputation', '2015-11-10 11:27:18', 44, 'vaspot@gmail.com', 2),
(14, 'default', '2016-06-30 11:27:18', 21, 'tower@gmail.com', 1),
(15, 'modest', '2017-11-15 11:27:18', 65, 'death@gmail.com', 9),
(16, 'valid', '2018-07-17 11:27:18', 346, 'benefit@gmail.com', 8),
(17, 'district', '2018-12-31 11:27:18', 77, 'exotic@gmail.com', 7),
(18, 'proof', '2019-11-11 11:27:18', 187, 'sword@gmail.com', 5),
(19, 'mask', '2020-04-24 11:27:18', 32, 'shed@gmail.com', 1),
(20, 'occupation', '2020-07-18 11:27:18', 34, 'strict@gmail.com', 5),
(21, 'lay', '2021-03-26 11:27:18', 14, 'village@gmail.com', 6),
(22, 'dish', '2021-10-04 11:27:18', 1, 'pain@gmail.com', 7),
(23, 'video', '2001-08-19 11:27:18', 1, 'solid@gmail.com', 8),
(24, 'pile', '2001-09-14 11:27:18', 133, 'asset@gmail.com', 9),
(25, 'harassharass', '2003-07-25 11:27:18', 90, 'surface@gmail.com', 1),
(26, 'variation', '2003-09-09 11:27:18', 50, 'influence@gmail.com', 2),
(27, 'trivial', '2004-03-14 11:27:18', 49, 'depressed@gmail.com', 3),
(28, 'rice', '2004-07-08 11:27:18', 55, 'electron@gmail.com', 4),
(29, 'mosaic', '2004-09-28 11:27:18', 66, 'spine@gmail.com', 5),
(30, 'sign', '2004-10-04 11:27:18', 11, 'tournament@gmail.com', 6),
(31, 'rent', '2005-02-15 11:27:18', 39, 'frozen@gmail.com', 10),
(32, 'proper', '2005-05-26 11:27:18', 160, 'forward@gmail.com', 10),
(33, 'mislead', '2007-10-09 11:27:18', 124, 'outlook@gmail.com', 9),
(34, 'revive', '2010-01-30 11:27:18', 88, 'maid@gmail.com', 7),
(35, 'infrastructure', '2013-04-10 11:27:18', 24, 'summary@gmail.com', 2),
(36, 'warwar', '2001-04-03 11:27:18', 67, 'rib@gmail.com', 3),
(37, 'tasty', '2003-04-15 11:27:18', 76, 'coffee@gmail.com', 1),
(38, 'similar', '2014-09-17 11:27:18', 36, 'clinic@gmail.com', 1),
(39, 'notknot', '2003-04-21 11:27:18', 82, 'annual@gmail.com', 2),
(40, 'harderh', '2004-12-23 11:27:18', 93, 'shout@gmail.com', 6),
(41, 'sirrmon', '2004-12-25 11:27:18', 45, 'install@gmail.com', 5),
(42, 'brother', '2014-09-17 11:27:18', 17, 'substitute@gmail.com', 5),
(43, 'frown', '2006-06-15 11:27:18', 83, 'overcharge@gmail.com', 5),
(44, 'asdar', '2007-07-04 11:27:18', 93, 'arrogant@gmail.com', 6),
(45, 'lion', '2008-09-16 11:27:18', 159, 'map@gmail.com', 4),
(46, 'news', '2008-10-22 11:27:18', 926, 'stand@gmail.com', 10),
(47, 'bait', '2009-04-06 11:27:18', 39, 'indication@gmail.com', 6),
(48, 'lost', '2009-08-28 11:27:18', 84, 'war@gmail.com', 3),
(49, 'wrqngw', '2013-05-20 11:27:18', 73, 'roof@gmail.com', 8),
(50, 'perfqo', '2019-01-06 11:27:18', 35, 'waist@gmail.com', 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `country` (`country`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Ограничения внешнего ключа таблицы `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country`) REFERENCES `countries` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
