-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 03 2020 г., 13:13
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `var9`
--

-- --------------------------------------------------------

--
-- Структура таблицы `computer`
--

CREATE TABLE `computer` (
  `ID_Computer` int(11) NOT NULL,
  `netname` text NOT NULL,
  `motherboard` text NOT NULL,
  `RAM_capacity` int(128) NOT NULL,
  `HDD_capacity` int(128) NOT NULL,
  `monitor` text NOT NULL,
  `vendor` text NOT NULL,
  `guarantee` text NOT NULL,
  `FID_Processor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `computer`
--

INSERT INTO `computer` (`ID_Computer`, `netname`, `motherboard`, `RAM_capacity`, `HDD_capacity`, `monitor`, `vendor`, `guarantee`, `FID_Processor`) VALUES
(0, 'office', 'asus', 8000, 500000, 'samsung', 'fox', 'yes', 0),
(1, 'home', 'MSI', 16000, 1000000, 'ASUS', 'citrus', 'no', 1),
(2, 'friend', 'MSI', 16666, 44444423, 'Apple', 'Apple', 'yes', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `processor`
--

CREATE TABLE `processor` (
  `ID_Processor` int(11) NOT NULL,
  `name` text NOT NULL,
  `frequency` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `processor`
--

INSERT INTO `processor` (`ID_Processor`, `name`, `frequency`) VALUES
(0, 'i9', 4),
(1, 'ryzen', 4),
(2, 'xeon', 3),
(6, 'test', 4),
(7, 'test2', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `sofrware`
--

CREATE TABLE `sofrware` (
  `ID_Software` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sofrware`
--

INSERT INTO `sofrware` (`ID_Software`, `name`) VALUES
(0, 'Windows'),
(1, 'Linux'),
(2, 'Mac OS X');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`ID_Computer`,`FID_Processor`),
  ADD KEY `FID_Processor` (`FID_Processor`);

--
-- Индексы таблицы `processor`
--
ALTER TABLE `processor`
  ADD KEY `ID_Processor` (`ID_Processor`);

--
-- Индексы таблицы `sofrware`
--
ALTER TABLE `sofrware`
  ADD KEY `ID_Software` (`ID_Software`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `computer`
--
ALTER TABLE `computer`
  ADD CONSTRAINT `computer_ibfk_1` FOREIGN KEY (`FID_Processor`) REFERENCES `processor` (`ID_Processor`),
  ADD CONSTRAINT `computer_ibfk_2` FOREIGN KEY (`ID_Computer`) REFERENCES `sofrware` (`ID_Software`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
