-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 07 2025 г., 08:59
-- Версия сервера: 5.7.27-30-log
-- Версия PHP: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `soniasonec`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fav`
--

CREATE TABLE `fav` (
  `favid` int(255) NOT NULL,
  `userLogin` varchar(255) NOT NULL,
  `songid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fav`
--

INSERT INTO `fav` (`favid`, `userLogin`, `songid`) VALUES
(44, 'asd', '125'),
(45, 'asd', '131'),
(46, 'qwe', '125'),
(47, 'qwe', '130'),
(48, 'zxc', '125'),
(49, 'zxc', '130'),
(50, 'zxc', '161'),
(51, 'zxc', '151'),
(52, 'zxc', '156'),
(0, 'as', '125'),
(0, 'as', '126'),
(0, 'as', '130'),
(0, 'kir', '173'),
(0, 'ccc', '173'),
(0, 'sonia', '141'),
(0, 'sonia', '140'),
(0, 'sonia', '150'),
(0, 'sonia', '166'),
(0, 'sonia', '171'),
(0, 'sonia', '176'),
(0, 'sonia', '135'),
(0, 'sonia', '125'),
(0, 'asd', '169'),
(0, 'sonia', '126'),
(0, 'sonia', '131'),
(0, 'sonia', '130'),
(0, 'sonia', '132'),
(0, 'sonia', '133'),
(0, 'asd', '173'),
(0, 'asd', '184'),
(0, 'qsc', '125'),
(0, 'qsc', '131'),
(0, 'qsc', '169'),
(0, 'qsc', '173'),
(0, 'qsc', '184'),
(0, 'ghj', '125'),
(0, 'ghj', '131'),
(0, 'ghj', '130'),
(0, 'ghj', '184'),
(0, 'iop', '125'),
(0, 'iop', '130'),
(0, 'iop', '132'),
(0, 'iop', '173'),
(0, 'iop', '184'),
(0, 'aaa', '125'),
(0, 'aaa', '130'),
(0, 'aaa', '131'),
(0, 'aaa', '184'),
(0, 'zzzh', '184'),
(0, 'zzzh', '184');

-- --------------------------------------------------------

--
-- Структура таблицы `playlist`
--

CREATE TABLE `playlist` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `author`, `image`, `link`) VALUES
(4, 'zxczxczxc', 'asd', 'nYZoCkcvYaTXjxO', 'nYZoCkcvYaTXjxO'),
(7, '80&#039;s', 'asd', 'weVGGpgtFiGhRIi', 'weVGGpgtFiGhRIi');

-- --------------------------------------------------------

--
-- Структура таблицы `play_songs`
--

CREATE TABLE `play_songs` (
  `PS_id` int(255) NOT NULL,
  `song_id` varchar(255) NOT NULL,
  `playlist_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `play_songs`
--

INSERT INTO `play_songs` (`PS_id`, `song_id`, `playlist_link`) VALUES
(3, '125', 'nYZoCkcvYaTXjxO'),
(4, '126', 'nYZoCkcvYaTXjxO'),
(5, '131', 'nYZoCkcvYaTXjxO'),
(11, '132', 'nYZoCkcvYaTXjxO'),
(12, '135', 'nYZoCkcvYaTXjxO'),
(13, '130', 'oLvphxmTpHDqcUp'),
(14, '171', 'weVGGpgtFiGhRIi'),
(15, '176', 'weVGGpgtFiGhRIi'),
(16, '177', 'weVGGpgtFiGhRIi');

-- --------------------------------------------------------

--
-- Структура таблицы `recomends`
--

CREATE TABLE `recomends` (
  `id` int(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `rec_name` varchar(255) NOT NULL,
  `rec_author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `recomends`
--

INSERT INTO `recomends` (`id`, `login`, `rec_name`, `rec_author`) VALUES
(1, 'sonia', '30 Мин', 'OG Buda'),
(2, 'sonia', 'Здоровье', 'OG Buda'),
(3, 'sonia', 'Из-за К…', 'OG Buda'),
(4, 'sonia', 'Rockstar', 'Hannah Montana'),
(5, 'sonia', 'Best Of Both Worlds', 'Hannah Montana'),
(6, 'sonia', 'Не туда попала / Блюю', 'OG Buda');

-- --------------------------------------------------------

--
-- Структура таблицы `songs`
--

CREATE TABLE `songs` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `author` text NOT NULL,
  `image` text NOT NULL,
  `music` text NOT NULL,
  `imageColor` text NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `songs`
--

INSERT INTO `songs` (`id`, `name`, `author`, `image`, `music`, `imageColor`, `genre`) VALUES
(125, 'Не туда попала / Блюю', 'OG Buda', 'duXNnUqliTuFphh', 'duXNnUqliTuFphh', '(87, 51, 66)', 'Rap'),
(126, 'Blitzkrieg Bop', 'Ramones', 'oUMQvJvgskneIjl', 'oUMQvJvgskneIjl', '(132, 132, 132)', 'Rock'),
(130, 'Achy Breaky Heart', 'Billy Ray Cyrus', 'kmvuAoFGlQysSzi', 'kmvuAoFGlQysSzi', '(162, 139, 138)', 'Country'),
(131, 'Плывут', 'Платина', 'plat', 'KJjvVqadKJkBRnP', '(7,8,18)', 'Rap'),
(132, 'Shallow', 'Lady Gaga, Bradley Cooper', 'MhJhlkilEwiFLoW', 'MhJhlkilEwiFLoW', '(136, 134, 129)', 'Country'),
(133, 'I’ve Been Everywhere ', 'Johnny Cash', 'cjPzSBEjzjcKDHF', 'cjPzSBEjzjcKDHF', '(148, 148, 151)', 'Country'),
(134, 'I Walk The Line', 'Johnny Cash', 'ncvDmizrwVnNSky', 'ncvDmizrwVnNSky', '(148, 148, 151)', 'Country'),
(135, 'Sweet Home Alabama', 'Lynyrd Skynyrd', 'jMZVBBZZNKGceqX', 'jMZVBBZZNKGceqX', '(193, 179, 146)', 'Rock'),
(136, 'R U mine', 'Artic Monkeys ', 'rnjTqIjTpZBJwkw', 'rnjTqIjTpZBJwkw', '(39, 42, 44)', 'Indie'),
(137, 'Rockstar', 'Hannah Montana', 'lsQSMiqJPhJUjCu', 'lsQSMiqJPhJUjCu', '(219, 192, 163)', 'Pop'),
(138, 'Best Of Both Worlds ', 'Hannah Montana', 'tpOimhrmtHzICaB', 'tpOimhrmtHzICaB', '(219, 192, 163)', 'Pop'),
(139, 'Nobody’s Perfect ', 'Hannah Montana ', 'LRiyyekGrQXOHVF', 'LRiyyekGrQXOHVF', '(219, 192, 163)', 'Pop'),
(140, 'Who Said', 'Hannah Montana', 'qDAsHQgKJRbsHEg', 'qDAsHQgKJRbsHEg', '(219, 192, 163)', 'Pop'),
(141, 'Just Like You', 'Hannah Montana', 'ultdiElEFXmAlUd', 'ultdiElEFXmAlUd', '(219, 192, 163)', 'Rock'),
(142, 'I’ve Got Nerve ', 'Hannah Montana ', 'gBukqbLLHfkpaSV', 'gBukqbLLHfkpaSV', '(219, 192, 163)', 'Rock'),
(143, 'The Other Side Of Me', 'Hannah Montana ', 'cekpqCxFXBWxJVd', 'cekpqCxFXBWxJVd', '(219, 192, 163)', 'Pop'),
(144, 'One In A Million ', 'Hannah Montana ', 'MbulYyfxTQxqqqX', 'MbulYyfxTQxqqqX', '(219, 192, 163)', 'Pop'),
(145, 'Wagon Wheel', 'Darius Rucker', 'DJIWKRwUyYAVpGV', 'DJIWKRwUyYAVpGV', '(156, 156, 156)', 'Country'),
(146, 'Body Like A Back Road', 'Sam Hunt', 'YPHxGEqURDoOmkq', 'YPHxGEqURDoOmkq', '(167, 165, 156)', 'Country'),
(147, 'Shake It Off', 'Taylor Swift', 'xdDYMImdlXrMeSx', 'xdDYMImdlXrMeSx', '(183, 174, 161)', 'Pop'),
(150, 'Тупой', 'OG Buda, Lil Krystal ', 'YDyKNvKtSeciwbO', 'YDyKNvKtSeciwbO', '(87, 51, 66)', 'Rap'),
(151, '30 Мин', 'OG Buda, Платина', 'EUgttqfHGfmVbbW', 'EUgttqfHGfmVbbW', '(87, 51, 66)', 'Rap'),
(152, 'Здоровье ', 'OG Buda', 'whgUhbhsojcXcJa', 'whgUhbhsojcXcJa', '(87, 51, 66)', 'Rap'),
(153, 'Из-за К…', 'OG Buda', 'pGWkzrHZacXaaMt', 'pGWkzrHZacXaaMt', '(87, 51, 66)', 'Rap'),
(154, 'Slime You Out', 'Drake, SZA', 'czyWEUtBisFiyIj', 'czyWEUtBisFiyIj', '(29, 30, 28)', 'R&B'),
(155, 'Money', 'Young Thug, Juice WLRD feat Nicki Minaj', 'pHcYeQUTZHAkhgQ', 'pHcYeQUTZHAkhgQ', '(60, 61, 63)', 'Rap'),
(156, 'Randewoo', 'Boltino', 'vQFlNvLxOxGqKaR', 'vQFlNvLxOxGqKaR', '(35, 24, 9)', 'Rap'),
(161, 'Mention', 'Rich Amiri', 'eXxYxCuCfeGoKIj', 'eXxYxCuCfeGoKIj', '(96, 39, 50)', 'Rap'),
(162, 'Find Me', 'Sadboyfari', 'SYiZPnxAmbfSUja', 'SYiZPnxAmbfSUja', '(43, 9, 62)', 'Rap'),
(164, 'Я Потратил Ночь На Поиск', 'PHARAOH', 'qfnObEgGpVOuuTG', 'qfnObEgGpVOuuTG', '(80, 87, 104)', 'Rap'),
(165, 'Gotta move on', 'Yeat', 'hmrVhYgpztxJtLB', 'hmrVhYgpztxJtLB', '(57, 82, 62)', 'Rap'),
(166, 'Rushmore', 'OG Buda', 'ERDCXqaOPJNxwnB', 'ERDCXqaOPJNxwnB', '(155, 155, 155)', 'Rap'),
(167, 'Salieri March', 'Wolfgang Amadeus Mozart', 'IECBvjdqRRBwsAX', 'IECBvjdqRRBwsAX', '(90, 55, 46)', 'Classic'),
(169, 'The Nights', 'Avicii', 'pOQDMqyoEBPzLlh', 'pOQDMqyoEBPzLlh', '(27, 22, 22)', 'EDM'),
(171, 'Never Ending Story', 'Limahl', 'GRddvjJefbkjVml', 'GRddvjJefbkjVml', '(55, 57, 74)', 'Pop'),
(173, 'mad!!!', 'elyaplugg!', 'nXbQMZQLdqXQFBM', 'nXbQMZQLdqXQFBM', '(159,143,124)', 'Rap'),
(176, 'Running Up That Hill', 'Kate Bush', 'wveJkmQvgAnmlQt', 'wveJkmQvgAnmlQt', '(216, 203, 214)', 'Pop'),
(177, 'Material Girl', 'Madonna', 'fwyLawtdDIZYsdb', 'fwyLawtdDIZYsdb', '(181, 164, 154)', 'Pop'),
(179, 'Stay The Night', 'Zedd', 'TAlEvcjySOUMWWC', 'TAlEvcjySOUMWWC', '(145, 96, 78)', 'EDM'),
(180, 'Safe And Sound', 'Capital Cities', 'shpuYGALwpoHlVZ', 'shpuYGALwpoHlVZ', '(75, 124, 135)', 'Pop'),
(181, 'I Gotta Feeling', 'Black Eyed Peas', 'YpgxacrXtAqIvmF', 'YpgxacrXtAqIvmF', '(27, 74, 45)', 'Pop'),
(182, 'We Are Young', 'Fun', 'hHMEBkYPFOiQsvt', 'hHMEBkYPFOiQsvt', '(159, 140, 129)', 'Indie'),
(184, 'Sk8er Boi', 'Avril Lavigne', 'ZnyRONzZPLBJYMc', 'EQautSmdwyUxSEO', '(77, 84, 93)', 'Rock'),
(185, 'Ordinary Girl', 'Hannah Montana', 'odeenbtQitkhTOI', 'odeenbtQitkhTOI', '(105, 114, 132)', 'Pop'),
(186, 'Wherever I Go', 'Hannah Montana', 'rningmffgYWkTCN', 'rningmffgYWkTCN', '(105, 114, 132)', 'Pop'),
(187, 'Livin On A Prayer', 'Bon Jovi', 'eOAgrDIIsTTfaAt', 'eOAgrDIIsTTfaAt', '(145, 89, 78)', 'Rock'),
(188, 'Never Gonna Give You Up', 'Rick Astley', 'XcXtLjjkHcHLlxK', 'XcXtLjjkHcHLlxK', '(101, 91, 101)', 'Pop'),
(189, 'I Wanna Dance With Somebody', 'Whitney Houston', 'YXGVuwUkLinGwuE', 'YXGVuwUkLinGwuE', '(135, 163, 187)', 'Pop'),
(190, 'Wannabe', 'Spice Girls', 'VRiZdXzBJiGVNuu', 'VRiZdXzBJiGVNuu', '(243, 236, 233)', 'Pop'),
(193, 'Hey', 'Mitchel Musso', 'MDGYoRegWGUiXLI', 'MDGYoRegWGUiXLI', '(173, 151, 147)', 'Rock'),
(194, 'Mr. Brightside', 'The Killers', 'PiwpgpKdTmLFVKQ', 'PiwpgpKdTmLFVKQ', '(151, 182, 217)', 'Rock'),
(195, 'Lego House', 'Ed Sheeran', 'rKDpVODzhcJRODd', 'rKDpVODzhcJRODd', '(204,120,67)', 'Indie'),
(196, 'Welcome to Hollywood', 'Mitchel Musso', 'PfCbQCZgDirFaMj', 'PfCbQCZgDirFaMj', '(173, 151, 147)', 'Rock'),
(197, 'Shout It', 'Mitchel Musso', 'wPGzpNuIFvMJBks', 'wPGzpNuIFvMJBks', '(173, 151, 147)', 'Rock'),
(198, 'Tommy Lee', 'Tyla Yaweh', 'NgghUJEdhFlMqPi', 'NgghUJEdhFlMqPi', '(93, 86, 89)', 'Rap'),
(199, 'Lets Make This Last Forever', 'Mitchel Musso', 'yjSsCnswkBQWtiw', 'yjSsCnswkBQWtiw', '(173, 151, 147)', 'Rock'),
(200, 'TEXAS HOLD EM', 'Beyoncé', 'JqFtUHrqmWJjlcA', 'JqFtUHrqmWJjlcA', '(40, 34, 32)', 'Country'),
(201, 'Single Ladies', 'Beyoncé', 'kelPjBgwOXEFYHt', 'kelPjBgwOXEFYHt', '(40, 34, 33)', 'Pop'),
(202, 'Swish', 'Nettspend', 'GCerxTtzhYCiQoa', 'GCerxTtzhYCiQoa', '(150, 55, 117)', 'Rap'),
(203, 'Go Hard 2.0', 'Juice WRLD', 'TzVvzynqqbdlMFc', 'TzVvzynqqbdlMFc', '(106, 110, 113)', 'Rap'),
(204, 'Feline', 'Juice WRLD', 'mRSFHhIBSVizzCd', 'mRSFHhIBSVizzCd', '(106, 110, 113)', 'Rap'),
(205, 'WRONG', 'The Kid LAROI', 'efkttAAXDPZDjzk', 'efkttAAXDPZDjzk', '(67, 45, 48)', 'Rap'),
(206, 'TRAGIC', 'The Kid LAROI', 'DfsmxZLnWbrWaJy', 'DfsmxZLnWbrWaJy', '(67, 45, 48)', 'Rap'),
(207, 'Sorry Bout That', 'Yeat', 'lsCjEQcZxyUDRxr', 'lsCjEQcZxyUDRxr', '(24, 24, 20)', 'Rap'),
(208, 'What You Know Bout Love', 'Pop Smoke', 'IvowUTVDNxlhkSU', 'IvowUTVDNxlhkSU', '(5, 5, 5)', 'Rap'),
(209, 'What Being Rich Feels Like', 'Juice WRLD', 'OHPPCPevqfIPrYd', 'OHPPCPevqfIPrYd', '(106, 110, 113)', 'Rap'),
(215, 'Bloody Blade', 'Juice WRLD', 'LZEImkyElPjQHxg', 'LZEImkyElPjQHxg', '(106, 110, 113)', 'Rap'),
(216, 'KTM Drip', 'Juice WRLD', 'rVjSCqieVivjBCR', 'rVjSCqieVivjBCR', '(106, 110, 113)', 'Rap'),
(217, 'Doom', 'Juice WRLD', 'EzKGbfbcWvayypY', 'EzKGbfbcWvayypY', '(106, 110, 113)', 'Rap'),
(218, 'Flaws and Sins', 'Juice WRLD', 'mPEWMWEYSRDyqOs', 'mPEWMWEYSRDyqOs', '(106, 110, 113)', 'Rap'),
(219, 'Glowed Up', 'Juice WRLD', 'LvlVFHZZXOFgRWb', 'LvlVFHZZXOFgRWb', '(106, 110, 113)', 'Rap'),
(220, 'Not Sorry', 'Juice WRLD', 'zoUbgDLTbPJOrfH', 'zoUbgDLTbPJOrfH', '(106, 110, 113)', 'Rap'),
(221, 'Pissy Boy', 'Lil Uzi Vert', 'imFPlQeGxeRPzHp', 'imFPlQeGxeRPzHp', '(57, 69, 76)', 'Rap'),
(223, 'Positions', 'Lil Uzi Vert', 'RicEnmgeiVmeFgX', 'RicEnmgeiVmeFgX', '(57, 69, 76)', 'Rap'),
(224, 'Myron', 'Lil Uzi Vert', 'XtunXTXqnkGjkWp', 'XtunXTXqnkGjkWp', '(57, 69, 76)', 'Rap'),
(225, 'NFL', 'Lil Uzi Vert', 'vuIvPoLuwQSnKbh', 'vuIvPoLuwQSnKbh', '(57, 69, 76)', 'Rap'),
(226, 'Soda Pop', 'Juice WRLD', 'sfmfDMdZLDpQEOW', 'sfmfDMdZLDpQEOW', '(106, 110, 113)', 'Rap'),
(227, 'Lames', 'Lil Uzi Vert', 'muofADHWuhJShBk', 'muofADHWuhJShBk', '(57, 69, 76)', 'Rap'),
(228, 'Thats It', 'Lil Uzi Vert', 'bfTMRIphIKYzYzK', 'bfTMRIphIKYzYzK', '(57, 69, 76)', 'Rap'),
(229, 'Cat Fish', 'Lil Uzi Vert', 'bqOJaqmiwqYtoij', 'bqOJaqmiwqYtoij', '(57, 69, 76)', 'Rap'),
(230, 'Day 1', 'Lil Uzi Vert', 'yazMLFsoReBjAto', 'yazMLFsoReBjAto', '(57, 69, 76)', 'Rap'),
(231, 'TWINNEM', 'Coi Leray', 'OIfbEoIVLgJwwNl', 'OIfbEoIVLgJwwNl', '(173, 191, 181)', 'Rap'),
(232, 'No More Parties', 'Coi Leray', 'EUVPQPghGHSlZtI', 'EUVPQPghGHSlZtI', '(173, 191, 181)', 'Rap'),
(233, 'TSU', 'Drake', 'XRNyrptSPcsvBwA', 'XRNyrptSPcsvBwA', '(29, 30, 28)', 'Rap'),
(234, 'Tried Our Best', 'Drake', 'qFRXuamuCwacIcB', 'qFRXuamuCwacIcB', '(29, 30, 28)', 'Rap'),
(235, 'Im The Problem', 'Drake', 'sqjIcTNNqXmGrRF', 'sqjIcTNNqXmGrRF', '(29, 30, 28)', 'Rap'),
(236, 'All The Way Live', 'Metro Boomin', 'VpCQnEqTRtQFyeU', 'VpCQnEqTRtQFyeU', '(19, 11, 16)', 'Rap'),
(237, 'Self Love', 'Metro Boomin', 'gNmkezCbLoNfDmv', 'gNmkezCbLoNfDmv', '(19, 11, 16)', 'Rap'),
(238, 'Closet Doors', 'Trippie Redd', 'hgDqAPnTErmCTLf', 'hgDqAPnTErmCTLf', '(52, 48, 62)', 'Rap'),
(239, 'хруст денег', 'elyaplugg!', 'vqaBCtnavRffFPz', 'vqaBCtnavRffFPz', '(29, 72, 129)', 'Rap'),
(240, 'ялюблютебятоже', 'elyaplugg!', 'FsUdyZSbIEkMoun', 'FsUdyZSbIEkMoun', '(29, 72, 129)', 'Rap'),
(241, 'дора', 'elyaplugg!', 'BPfksDsxvoePJPU', 'BPfksDsxvoePJPU', '(29, 72, 129)', 'Rap'),
(242, 'делаютроп', 'elyaplugg!', 'DprxduKXIvvZbhH', 'DprxduKXIvvZbhH', '(29, 72, 129)', 'Rap'),
(243, 'Would You', 'Lil Uzi Vert', 'IkXIZefHxjlkaOM', 'IkXIZefHxjlkaOM', '(57, 69, 76)', 'Rap'),
(244, 'Вампир', 'Scally Milano', 'xEvrAQgpKMszVRh', 'xEvrAQgpKMszVRh', '(79,68,74)', 'Rap'),
(245, 'Life is a Highway', 'Rascal Flatts', 'UwZRscwWBZzYKGJ', 'UwZRscwWBZzYKGJ', '(65, 120, 131)', 'Rock'),
(246, 'На грязном (Диана)', 'Платина', 'PbYfYTKGoZXspNS', 'PbYfYTKGoZXspNS', '(55, 30, 28)', 'Rap'),
(247, 'Punt', 'Rich Amiri', 'f5HUZwxNaW5qhuyy', 'PraMrcUabmEaoGc', '(48,54,65) ', 'Rap'),
(248, 'U Wanted', 'Rich Amiri', 'f5HUZwxNaW5qhuyy', 'wpsLHaoOYHUqjNJ', '(48,54,65) ', 'Rap'),
(249, 'MADONNA and RIHANNA', 'Rich Amiri', 'f5HUZwxNaW5qhuyy', 'ZHQMFBSHTomnbjD', '(48,54,65) ', 'Rap'),
(250, 'Levitating ', 'Dua Lipa', 'yORqSEiaPFedsDU', 'yORqSEiaPFedsDU', '(81, 72, 74)', 'Pop'),
(251, 'Give Me Love', 'Ed Sheeran', 'ZhMUGMzfUHrSqfd', 'ZhMUGMzfUHrSqfd', '(204,120,67)', 'Indie'),
(252, 'scatpack', 'Jace!', 'sIpBNfjSKgsXxKF', 'sIpBNfjSKgsXxKF', '(69, 62, 59)', 'Rap'),
(253, 'В темноте ', 'Платина', 'YASiELRKVDOVoWG', 'YASiELRKVDOVoWG', '(7,8,18)', 'Rap'),
(254, 'Баленсиага парень', 'Платина', 'cUobGSKdEDDFvqJ', 'cUobGSKdEDDFvqJ', '(7,8,18)', 'Rap'),
(255, 'У меня свег, у меня стиль', 'Платина', 'zHJsznsHEKgIeua', 'zHJsznsHEKgIeua', '(7,8,18)', 'Rap'),
(256, 'Завидуют ', 'Платина', 'rjwmGJodggbCBPw', 'rjwmGJodggbCBPw', '(7,8,18)', 'Rap'),
(257, 'Бетховен ', 'Платина', 'hpAmQNRHXkNTDHe', 'hpAmQNRHXkNTDHe', '(7,8,18)', 'Rap'),
(258, 'The Light', 'Juice WRLD', 'huwKvEtvUhHRVBs', 'huwKvEtvUhHRVBs', '(74, 92, 129)', 'Rap'),
(259, 'Heart-Shaped Box', 'Nirvana', 'UVuhQCSlUItfJFh', 'UVuhQCSlUItfJFh', '(234, 223, 175)', 'Rock'),
(260, 'Lounge Act', 'Nirvana', 'qbGRjDcbzLVbVsp', 'qbGRjDcbzLVbVsp', '(12, 110, 157)', 'Rock'),
(261, 'I Miss You', 'Blink-182', 'lfhbllRCawsCoSn', 'lfhbllRCawsCoSn', '(176, 176, 181)', 'Rock'),
(263, 'In Too Deep', 'Sum 41', 'yVLWRCENTOhIxDK', 'yVLWRCENTOhIxDK', '(106, 102, 64)', 'Rock'),
(264, '7 Things', 'Miley Cyrus', 'grLvGBznUznaYZA', 'grLvGBznUznaYZA', '(130, 93, 75)', 'Rock'),
(265, 'Just Give Me A Reason', 'P!NK', 'LlOTpXOSctvViaW', 'LlOTpXOSctvViaW', '(177, 175, 140)', 'Pop'),
(267, 'This Is How We Roll', 'Florida Georgia Line', 'LvXXdRcdwMSJhtA', 'LvXXdRcdwMSJhtA', '(143, 133, 128)', 'Rock'),
(268, 'Tonight Tonight', 'Hot Chelle Rae', 'ISIVsyFLYMBVxlI', 'ISIVsyFLYMBVxlI', '(65, 65, 46)', 'Rock'),
(269, 'I Want It That Way', 'Backstreet Boys ', 'JXmcXAqXUCSrGXc', 'JXmcXAqXUCSrGXc', '(157, 184, 189)', 'Pop'),
(270, 'Adams Song', 'Blink-182', 'kHUTsgoyVUdqaUo', 'kHUTsgoyVUdqaUo', '(122, 132, 131)', 'Rock'),
(271, 'Im Just A Kid', 'Simple Plan', 'iVqsFAvkeCrbujV', 'DEBpmRinLAnGcMg', '(145,113,102)', 'Rock'),
(272, 'Untitled', 'Simple Plan', 'YNdWqNUMKQWuaFm', 'YNdWqNUMKQWuaFm', '(76, 95, 98)', 'Rock'),
(273, 'Дерьмо', 'unki', 'SDwcRbvuCEOyawW', 'SDwcRbvuCEOyawW', '(154,138,137)', 'Rap'),
(274, 'Teenage Dirtbag', 'Wheatus', 'ZFsuKwLFCfeAZEN', 'ZFsuKwLFCfeAZEN', '(84, 83, 136)', 'Rock'),
(275, 'We Got The Party', 'Hannah Montana', 'TdGHSuAoKMSxUMc', 'TdGHSuAoKMSxUMc', '(212, 195, 190)', 'Rock'),
(276, 'No Scrubs', 'TLC', 'mBxWeoTENrbmCmn', 'mBxWeoTENrbmCmn', '(115, 102, 111)', 'Pop'),
(277, 'High School Musical', 'Were All In This Together', 'UrYPtVsGBCUHiAf', 'UrYPtVsGBCUHiAf', '(132, 83, 53)', 'Pop'),
(278, 'Breaking Free', 'High School Musical', 'WEwRwHOoYysTrRT', 'WEwRwHOoYysTrRT', '(132, 83, 53)', 'Pop'),
(279, 'Stick To The Status Quo', 'High School Musical', 'QsblucPaNYFjYau', 'QsblucPaNYFjYau', '(132, 83, 53)', 'Pop'),
(291, 'Basket Case', 'Green Day', 'HPNFiolJjNoNStW', 'HPNFiolJjNoNStW', '(174, 166, 154)', 'Rock'),
(292, 'Misery Business', 'Paramore', 'DPkadlLOHPcQDHR', 'DPkadlLOHPcQDHR', '(103, 99, 68)', 'Rock'),
(294, 'My Happy Ending', 'Avril Lavigne', 'ZnyRONzZPLBJYMc', 'ZnyRONzZPLBJYMc', '(77, 84, 93)', 'Rock'),
(295, 'Fatlip', 'Sum 41', 'GVybNpkhZmkaUht', 'GVybNpkhZmkaUht', '(127, 116, 117)', 'Rock'),
(296, 'Kiss Me', 'Sixpence None The Richer', 'OfWELIKxIlrpsRB', 'OfWELIKxIlrpsRB', '(128, 108, 103)', 'Rock'),
(297, 'Dammit', 'Blink-182', 'udIBWVsoLUgkuhW', 'udIBWVsoLUgkuhW', '(87, 84, 74)', 'Rock'),
(300, 'My Friends Over You', 'New Found Glory', 'PSHYoHYAhcLqqdT', 'PSHYoHYAhcLqqdT', '(113, 115, 108)', 'Rock'),
(301, 'Anxiety', 'Coi Leray', 'kXEfFbXCtJntjpi', 'kXEfFbXCtJntjpi', '(173, 191, 181)', 'Rap'),
(302, 'Too Far', 'Coi Leray', 'WquamwbYUJRPTQz', 'WquamwbYUJRPTQz', '(173, 191, 181)', 'Rap'),
(303, 'Mission Impossible', 'Coi Leray', 'owjeymDJsppBFKA', 'owjeymDJsppBFKA', '(173, 191, 181)', 'Rap'),
(304, 'Cant Save Her', 'Lil Uzi Vert', 'ZttXpjaUwwKBGQV', 'ZttXpjaUwwKBGQV', '(159, 161, 172)', 'Rap'),
(305, 'Privileged Rappers', 'Drake', 'WBGPeLVmBfYMwVf', 'WBGPeLVmBfYMwVf', '(159, 126, 131)', 'Rap'),
(306, 'Rich Flex', 'Drake', 'lqEomyYRZVBvYMi', 'lqEomyYRZVBvYMi', '(159, 126, 131)', 'Rap'),
(307, 'Californication', 'Juice WRLD', 'SjbaexQUQZUzWxu', 'SjbaexQUQZUzWxu', '(155,82,99)', 'Rap'),
(308, 'Mickey Mouse', 'Destroy Lonely', 'JFAEuDTjBSylgAr', 'JFAEuDTjBSylgAr', '(3, 5, 4)', 'Rap'),
(309, 'how u feel?', 'Destroy Lonely', 'iekFZOTZxaoNlMK', 'iekFZOTZxaoNlMK', '(3, 5, 4)', 'Rap'),
(310, 'safety', 'Destroy Lonely', 'VFlUytOWIGLbakt', 'VFlUytOWIGLbakt', '(3, 5, 4)', 'Rap'),
(311, 'Monday To Sunday', 'Lil Tecca', 'kdHJewLgjQXjzxK', 'kdHJewLgjQXjzxK', '(131, 98, 83)', 'Rap'),
(312, 'Yves', 'Lil Tecca', 'quIibIOFEeHWrqD', 'quIibIOFEeHWrqD', '(131, 98, 83)', 'Rap'),
(313, 'Do U Love Me', 'Lil Uzi Vert', 'IvAOVRVoTEXZRzf', 'IvAOVRVoTEXZRzf', '(159, 161, 172)', 'Rap'),
(314, 'Over', 'Lil Uzi Vert', 'nPcmJuiUWarSnqj', 'nPcmJuiUWarSnqj', '(159, 161, 172)', 'Rap'),
(315, 'Shoulder Shrug', 'Lil Uzi Vert', 'uiMBjBVEfyPBfpO', 'uiMBjBVEfyPBfpO', '(159, 161, 172)', 'Rap'),
(316, 'Дед', 'кис-кис', 'IgTLGfLkGuEMYuO', 'IgTLGfLkGuEMYuO', '(160, 139, 127)', 'Rock'),
(317, 'Patience', 'Lil Uzi Vert', 'LgYnbREMTrydToH', 'LgYnbREMTrydToH', '(185, 121, 154)', 'Rap'),
(319, 'Too Easy', 'Lil Uzi Vert', 'URVButhzjeUnIKC', 'URVButhzjeUnIKC', '(138, 97, 130)', 'Rap'),
(320, 'Final Fantasy', 'Lil Uzi Vert', 'OxfFOQpjzVbpBTC', 'OxfFOQpjzVbpBTC', '(109, 105, 112)', 'Rap'),
(321, 'Too Much', 'Lil Uzi Vert', 'iyKLTacuZNrSMMg', 'iyKLTacuZNrSMMg', '(138, 97, 130)', 'Rap'),
(322, 'That Fiya', 'Lil Uzi Vert', 'gAPrymySywdqqaj', 'gAPrymySywdqqaj', '(185, 121, 154)', 'Rap'),
(323, 'Margiela', 'Lil Uzi Vert', 'VEkZbKUKjDLsyOj', 'VEkZbKUKjDLsyOj', '(138, 97, 130)', 'Rap'),
(324, 'Flexer', 'Lil Uzi Vert', 'HAZCnakiYaCVOeo', 'HAZCnakiYaCVOeo', '(138, 97, 130)', 'Rap'),
(325, 'Just Keep Her', 'Lil Uzi Vert', 'VQrOxKWSUffDFyu', 'VQrOxKWSUffDFyu', '(138, 97, 130)', 'Rap'),
(326, 'Sexual Healing', 'Marvin Gaye', 'brWctxXYPfWubMK', 'brWctxXYPfWubMK', '(88, 63, 51)', 'Soul'),
(327, 'Fly Me To The Moon', 'Frank Sinatra', 'pZiKPPTYpGsEfKJ', 'pZiKPPTYpGsEfKJ', '(70, 119, 150)', 'Jazz'),
(328, 'Id Rather Go Blind', 'Etta James', 'oCngkBwPKIZArCl', 'oCngkBwPKIZArCl', '(158,158,158)', 'Blues'),
(329, 'Murder On The Dancefloor', '9mice & Kai Angel', 'pBtdUWrrbxexpee', 'pBtdUWrrbxexpee', '(150, 151, 149)', 'Rap'),
(330, 'na bumage', '4rill', 'gXqqHKMQAQrcvfZ', 'gXqqHKMQAQrcvfZ', '(175, 194, 175)', 'Rap'),
(333, 'styl', '4rill', 'TrMeMalsiYtmbCe', 'TrMeMalsiYtmbCe', '(175, 194, 175)', 'Rap'),
(334, 'odnogo', '4rill', 'hnyPyRJpYacXQWb', 'hnyPyRJpYacXQWb', '(175, 194, 175)', 'Rap'),
(335, 'Gotta Find You', 'Jonas Brothers ', 'HDzkBEYrvOmTxuj', 'HDzkBEYrvOmTxuj', '(43,58,66)', 'Rock');

-- --------------------------------------------------------

--
-- Структура таблицы `spy`
--

CREATE TABLE `spy` (
  `id` int(11) NOT NULL,
  `ipAdress` varchar(255) NOT NULL,
  `spy` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spy`
--

INSERT INTO `spy` (`id`, `ipAdress`, `spy`, `location`) VALUES
(1, 'даник', '0', 'Дом'),
(2, 'даник', '1', ''),
(3, 'даник', '0', 'Дом'),
(4, 'даник', '0', 'Дом'),
(5, 'asd', '0', 'Дом'),
(6, 'zxc', '0', 'Дом'),
(7, 'ccc', '0', ''),
(8, 'qqq', '1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `spy_location`
--

CREATE TABLE `spy_location` (
  `id` int(11) NOT NULL,
  `spyLocation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spy_location`
--

INSERT INTO `spy_location` (`id`, `spyLocation`) VALUES
(1, 'Аэропорт'),
(3, 'Кинотеатр'),
(4, 'Торговый центр'),
(5, 'Ресторан'),
(6, 'Круизный корабль'),
(7, 'Школа'),
(8, 'Зоопарк'),
(9, 'Больница'),
(10, 'Офис'),
(11, 'Театр'),
(12, 'Поезд'),
(13, 'Стадион'),
(14, 'Цирк'),
(15, 'Аквапарк'),
(16, 'Библиотека'),
(17, 'Музей'),
(18, 'Полярная \n станция'),
(19, 'Космическая станция'),
(20, 'Психушка'),
(21, 'Морг');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'asd', 'e54ee7e285fbb0275279143abc4c554e5314e7b417ecac83a5984a964facbaad68866a2841c3e83ddf125a2985566261c4014f9f960ec60253aebcda9513a9b4'),
(2, 'sonia', 'c986aadd97831eba84ddf470b48670b03937e6b38e4252c9148fdf2bca233e56ddd1fc1d1406bfdd0a11c1340d22f42e5ffd8a3514e8d7739c90c49d7503c9d9');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fav`
--
ALTER TABLE `fav`
  ADD KEY `favid` (`favid`),
  ADD KEY `userLogin` (`userLogin`);

--
-- Индексы таблицы `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `play_songs`
--
ALTER TABLE `play_songs`
  ADD PRIMARY KEY (`PS_id`);

--
-- Индексы таблицы `recomends`
--
ALTER TABLE `recomends`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spy`
--
ALTER TABLE `spy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spy_location`
--
ALTER TABLE `spy_location`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `play_songs`
--
ALTER TABLE `play_songs`
  MODIFY `PS_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `recomends`
--
ALTER TABLE `recomends`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT для таблицы `spy`
--
ALTER TABLE `spy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `spy_location`
--
ALTER TABLE `spy_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
