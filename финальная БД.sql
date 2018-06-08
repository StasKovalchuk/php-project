-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Хост: db1
-- Время создания: Июл 16 2012 г., 14:03
-- Версия сервера: 5.0.91
-- Версия PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `valaksid_mega`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL auto_increment,
  `author` varchar(16) NOT NULL,
  `text` text NOT NULL,
  `note_id` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `lang` varchar(2) NOT NULL default 'ru',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `text`, `note_id`, `section`, `date`, `time`, `lang`) VALUES
(1, 'Дмитрий', 'ваыаыва', 'park_kekenhof___tsarstvo_tsvetov', 'news', '2012-06-13', '13:21:21', 'ru'),
(2, 'Александр', 'ывапыаываы', 'park_kekenhof___tsarstvo_tsvetov', 'news', '2012-06-13', '13:31:21', 'ru'),
(3, 'Евгений', 'дладловло', 'dikaya_priroda', 'video', '2012-06-14', '14:14:21', 'ru'),
(4, 'Николай', 'аыпавпваапв', 'dikaya_priroda', 'video', '2012-06-19', '15:14:21', 'ru'),
(5, 'Андрей', 'выапавпва', 'krasivie_mesta_planeti', 'video', '2012-06-28', '23:23:21', 'ru'),
(6, 'Дмитрий Валак', 'sdfsdfds', 'podvodniy_park', 'news', '2012-06-13', '11:45:36', 'ru'),
(7, 'Дмитрий Валак', '1761412656741', 'podvodniy_park', 'news', '2012-06-13', '11:47:17', 'ru'),
(13, 'Dmitry', 'slfgskldjb', 'The_Most_Beautiful_places_in_Italy', 'news', '2012-06-21', '13:23:53', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `title_url` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `keywords` text NOT NULL,
  `description` varchar(160) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `views` int(10) NOT NULL default '0',
  `lang` varchar(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `title_url`, `text`, `img`, `keywords`, `description`, `date`, `time`, `views`, `lang`) VALUES
(1, 'Подводный парк', 'podvodniy_park', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', 'news1.png', 'ключевые слова', 'мета описание', '2012-06-12', '11:21:12', 1, 'ru'),
(2, 'Парк Кекенхоф - царство цветов', 'park_kekenhof___tsarstvo_tsvetov', 'Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.', 'news2.png', 'ключевые слова 2', 'мета описание 2', '2012-06-12', '19:27:33', 2, 'ru'),
(3, 'Beautiful Nature', 'Beautiful_Nature', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'news3.png', 'keywords', 'meta description', '2012-06-14', '11:21:12', 0, 'en'),
(4, 'The Most Beautiful places in Italy', 'The_Most_Beautiful_places_in_Italy', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'news4.jpg', 'keywords 2', 'meta description', '2012-06-14', '19:27:33', 0, 'en'),
(19, 'Самый красивый лес в мире', 'samiy_krasiviy_les_v_mire', '<p>\r\n	<span style="color:#000000;">1.10.32 и 1.10.33 книги &quot;de Finibus Bonorum et Malorum&quot; (&quot;О пределах добра и зла&quot;), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, происходит от одной из строк в разделе 1.10.32</span></p>\r\n<div>\r\n	&nbsp;</div>\r\n<ol>\r\n	<li>\r\n		<em>Классический текст</em></li>\r\n	<li>\r\n		<em>Lorem Ipsum, используемый</em></li>\r\n</ol>\r\n<ul>\r\n	<li>\r\n		<em>с XVI века, приведён ниже.</em></li>\r\n	<li>\r\n		<em>Также даны разделы 1.10.32 и</em></li>\r\n</ul>\r\n<div>\r\n	<em>1.10.33 &quot;de Finibus Bonorum et Malorum&quot; Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</em></div>\r\n', '120706100907new-news.jpg', 'лес, самый красивый лес', 'Самый красивый лес в мире', '2012-07-05', '11:50:00', 0, 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `title_url` varchar(100) NOT NULL,
  `keywords` text NOT NULL,
  `description` varchar(160) NOT NULL,
  `lang` varchar(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `title_url`, `keywords`, `description`, `lang`) VALUES
(1, 'Главная', 'index', 'ключевые слова для главной', 'мета описание', 'ru'),
(2, 'Новости', 'news', 'ключевые слова для новостей', 'мета описание', 'ru'),
(3, 'Видео', 'video', 'ключевые слова для видео', 'мета описание', 'ru'),
(4, 'Галерея', 'photos', 'ключевые слова для галереи', 'мета описание', 'ru'),
(5, 'Обратная связь', 'contacts', 'ключевые слова для контактов', 'мета описание', 'ru'),
(6, 'Main page', 'index', 'keywords for main page', 'description', 'en'),
(7, 'News', 'news', 'keywords for news page', 'description', 'en'),
(8, 'Videos', 'video', 'keywords for videos page', 'description', 'en'),
(9, 'Gallery', 'photos', 'keywords for photo page', 'description', 'en'),
(10, 'Contacts', 'contacts', 'keywords for contacts page', 'description', 'en'),
(11, 'Регистрация', 'signup', 'ключевые слова для регистрации', 'описание', 'ru'),
(12, 'SignUp', 'signup', 'keywords for registration page', 'description ', 'en'),
(13, 'Восстановление пароля', 'forgot', 'ключевые слова для страницы восстановления пароля', 'описание', 'ru'),
(14, 'Forgot password?', 'forgot', 'keywords', 'description', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `lang` varchar(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `title`, `img`, `date`, `time`, `lang`) VALUES
(1, 'название 1', 's1_377248_17.jpg', '2011-09-20', '15:22:22', 'ru'),
(2, 'название 2', 's1_377248_50.jpg', '2012-06-14', '19:27:33', 'ru'),
(3, 'Название 3', 's1_377248_64.jpg', '2011-09-20', '15:22:22', 'ru'),
(4, 'название 4', 's1_377248_65.jpg', '2011-10-21', '22:21:12', 'ru'),
(5, 'Название5', 's1_377248_74.jpg', '2011-09-20', '11:21:12', 'ru'),
(6, 'Название6', 's1_377248_89.jpg', '2012-06-14', '22:21:12', 'ru'),
(7, 'title1', 's1_66773_3.jpg', '2012-06-26', '12:12:12', 'en'),
(8, 'title2', 's1_66773_4.jpg', '2012-06-26', '12:12:12', 'en'),
(9, 'title3', 's1_66773_7.jpg', '2012-06-26', '12:12:12', 'en'),
(10, 'title4', 's1_66773_13.jpg', '2012-06-20', '12:12:12', 'en'),
(11, 'title5', 's1_66773_15.jpg', '2012-06-20', '12:12:12', 'en'),
(12, 'title6', 's1_66773_16.jpg', '2012-06-28', '12:12:12', 'en'),
(19, '2develop - Разработка веб-сайтов', '120706101526new-news.jpg', '2012-07-06', '10:15:16', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(16) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `status`) VALUES
(2, 'admin', 'dmitry.valak@gmail.com', '71bb0ec7120ab6d94301b6c4b84f003c88564777', 3),
(4, 'admin4', 'bsfk@mail.ru', 'c936c88a8a8a62ebc5491d28870e18bc43f64a28', 1),
(5, 'dmitry', 'demoncik@inbox.lv', '10470c3b4b1fed12c3baac014be15fac67c6e815', 1),
(6, 'dmitry2', 'dede@inbox.lv', '10470c3b4b1fed12c3baac014be15fac67c6e815', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `title_url` varchar(100) NOT NULL,
  `code` text NOT NULL,
  `keywords` text NOT NULL,
  `description` varchar(160) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `views` int(11) NOT NULL default '0',
  `lang` varchar(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `video`
--

INSERT INTO `video` (`id`, `title`, `title_url`, `code`, `keywords`, `description`, `date`, `time`, `views`, `lang`) VALUES
(1, 'Nepal - The Most Amazing and Beautiful Place', 'Nepal___The_Most_Amazing_and_Beautiful_Place', '<iframe width="560" height="315" src="http://www.youtube.com/embed/w4mM5oEWb_4" frameborder="0" allowfullscreen></iframe>', 'keywords', 'meta description', '2012-06-07', '15:32:26', 0, 'en'),
(2, 'Wonderful Places of our Planet', 'Wonderful_Places_of_our_Planet', '<iframe width="420" height="315" src="http://www.youtube.com/embed/EwU7d_P0REA" frameborder="0" allowfullscreen></iframe>', 'keywords 2', 'meta desription2', '2012-06-24', '19:27:22', 0, 'en'),
(3, 'Дикая природа', 'dikaya_priroda', '<iframe width="560" height="315" src="http://www.youtube.com/embed/YW8p8JO2hQw" frameborder="0" allowfullscreen></iframe>', 'ключевые слова', 'мета описание', '2012-06-15', '15:32:23', 1, 'ru'),
(4, 'Красивые места планеты', 'krasivie_mesta_planeti', '<iframe width="560" height="315" src="http://www.youtube.com/embed/x1OpLliawRE" frameborder="0" allowfullscreen></iframe>', 'ключевые слова 2', 'мета описание 2', '2012-06-06', '19:27:33', 7, 'ru'),
(10, 'Nature by Numbers', 'Nature_by_Numbers', '<iframe width="560" height="315" src="http://www.youtube.com/embed/kkGeOWYOFoA" frameborder="0" allowfullscreen></iframe>', 'ключевые слова', 'описание видео', '2011-12-12', '21:27:21', 0, 'ru'),
(11, 'Nature', 'Nature', '<iframe width="420" height="315" src="http://www.youtube.com/embed/KXdUNp_9oHs" frameborder="0" allowfullscreen></iframe>', 'keywords', 'description', '2012-07-19', '22:55:00', 0, 'en');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
