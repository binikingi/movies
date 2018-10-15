-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2016 at 10:18 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE IF NOT EXISTS `episodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) NOT NULL,
  `season_number` int(11) NOT NULL,
  `episode_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `episode_links`
--

CREATE TABLE IF NOT EXISTS `episode_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `episode_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `movie_id`, `created_at`, `updated_at`) VALUES
(1, 1, 88, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 110, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `heb_genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `created_at`, `updated_at`, `heb_genre`) VALUES
(2, 'Action', '2015-11-16 09:07:29', '2015-11-28 17:05:52', 'פעולה'),
(5, 'Adventure', '2015-11-17 08:51:21', '2015-11-28 17:06:00', 'הרפתקאות'),
(6, 'Comedy', '2015-11-21 21:25:13', '2015-11-28 17:06:06', 'קומדיה'),
(7, 'Crime', '2015-11-21 21:25:18', '2015-11-28 17:06:11', 'פשע'),
(8, 'Fantasy', '2015-11-28 17:06:18', '2015-11-28 17:06:18', 'פנטזיה'),
(9, 'Horror', '2015-11-28 17:06:29', '2015-11-28 17:06:29', 'אימה'),
(10, 'Mystery', '2015-11-28 17:06:35', '2015-11-28 17:06:35', 'מיסתורין'),
(11, 'Romance', '2015-11-28 17:06:44', '2015-11-28 17:06:44', 'רומנטיקה'),
(12, 'Sci-Fi', '2015-11-28 17:07:08', '2015-11-28 17:07:08', 'מדע בדיוני'),
(13, 'Thriller', '2015-11-28 17:07:19', '2015-11-28 17:07:19', 'מותחן'),
(14, 'Urban', '2015-11-28 17:07:28', '2015-11-28 17:07:28', 'עירוני'),
(15, 'Animation', '2015-11-28 17:10:24', '2015-11-28 17:10:24', 'אנימציה'),
(16, 'Documentary', '2015-11-28 17:10:57', '2015-11-28 17:10:57', 'דוקומנטרי'),
(17, 'Western', '2015-11-28 17:11:13', '2015-11-28 17:11:13', 'מערבון'),
(18, 'Family', '2015-12-01 14:39:55', '2015-12-01 14:39:55', 'משפחה'),
(20, 'Biography', '2015-12-03 17:49:11', '2015-12-03 17:49:11', 'ביוגרפיה'),
(21, 'Drama', '2015-12-03 17:49:23', '2015-12-03 17:49:23', 'דרמה'),
(22, 'Film-Noir', '2015-12-03 17:50:02', '2015-12-03 17:50:02', 'סרט שחור'),
(23, 'Game-Show', '2015-12-03 17:50:10', '2015-12-03 17:50:10', 'שעשועון'),
(24, 'History', '2015-12-03 17:50:19', '2015-12-03 17:50:19', 'היסטוריה'),
(25, 'Music', '2015-12-03 17:50:33', '2015-12-03 17:50:33', 'מוזיקה'),
(26, 'Musical', '2015-12-03 17:50:45', '2015-12-03 17:50:45', 'מוזיקאלי'),
(27, 'Sport', '2015-12-03 17:51:01', '2015-12-03 17:51:01', 'ספורט'),
(28, 'War', '2015-12-03 17:51:09', '2015-12-03 17:51:09', 'מלחמה');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_11_14_213455_create_movies_table', 1),
('2015_11_14_213508_create_series_table', 1),
('2015_11_14_213530_create_episodes_table', 1),
('2015_11_14_214529_create_episode_links_table', 1),
('2015_11_14_214546_create_movie_links_table', 1),
('2015_11_14_215400_create_movie_genres_table', 1),
('2015_11_14_215440_create_serie_genres_table', 1),
('2015_11_14_215913_create_genres_table', 1),
('2015_11_16_083558_add_trailer_column_to_movies', 1),
('2015_11_17_122544_add_popular_column', 2),
('2015_11_21_190523_add_heb_name_column', 3),
('2015_11_21_191839_add_heb_desc_column', 4),
('2015_11_22_085227_create_favorite_table', 5),
('2015_11_22_085336_create_favowatched_table', 5),
('2015_11_23_114236_add_views_column', 6),
('2015_12_01_154959_add_year_column', 7),
('2016_02_03_201207_add_heb_genre_column', 8),
('2016_02_06_180106_add_server_column', 9);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `big_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imdb_rating` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trailer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `popular` tinyint(1) NOT NULL DEFAULT '0',
  `heb_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'שם עיברי',
  `heb_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT '142',
  `year` int(11) NOT NULL DEFAULT '2000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=123 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `description`, `image`, `big_image`, `imdb_rating`, `created_at`, `updated_at`, `trailer`, `popular`, `heb_name`, `heb_desc`, `view`, `year`) VALUES
(17, 'Jurassic World', 'A new theme park is built on the original site of Jurassic Park. Everything is going well until the park''s newest attraction--a genetically modified giant stealth killing machine--escapes containment and goes on a killing spree.', 'images/movies/179850.jpg', 'images/movies/966335.jpg', '7.1', '2015-11-28 16:54:16', '2016-02-05 09:44:30', 'https://www.youtube.com/watch?v=RFinNxS5KN4', 0, 'עולם היורה', '22 שנים לאחר מאורעות "פארק היורה", האי איסלה נובלר, אי הממוקם מחוץ לחוף האוקיינוס השקט של מרכז אמריקה ליד קוסטה ריקה, כולל כעת פארק שעשועים וגן חיות חדש של דינוזאורים בתפקוד מלא הנקרא "עולם היורה", כפי שנקרא במקור "פארק היורה" בידי ג''ון האמונד מהסרט הראשון. בפארק נמצאים דינוזאורים צמחוניים (טריצרטופס, אפטוזאורוס, סטגוזאורוס ואנקילוזאורוס) בשטח הפתוח, גורי דינוזאורים בפינת ליטוף (טריצרטופסים צעירים משמשים כ"סוסי רכיבה" לילדים בדומה לסוסי פוני) וישנן הופעות האכלה של הטירנוזאורוס רקס והזוחל הימי הענק מוסזאורוס. הפארק החדש נמצא בבעלותו של סיימון מאסראני, המנכ"ל של "תאגיד מאסראני".', 152, 2015),
(18, 'Penguins of Madagascar', 'Skipper, Kowalski, Rico and Private join forces with undercover organization The North Wind to stop the villainous Dr. Octavius Brine from destroying the world as we know it.', 'images/movies/123806.jpg', 'images/movies/218668.jpg', '6.7', '2015-11-28 17:32:17', '2016-02-03 15:32:51', 'https://www.youtube.com/watch?v=retX8Wj7JdM', 0, 'הפינגווינים ממדגסקר', 'הסרט מביא את קורות חייהם ומתמקד בחבורת הפינגווינים: סקיפר, קובלסקי, ריקו ופרייבט ומביא כיצד הם נולדו וכיצד הם הפכו את עצמם ללוחמים קשוחים הנאבקים על הצלת העולם וכיצד הם גם מצליחים להציל את העולם כולו מפני תמנון מרושע ביחד עם יחידת עילית כמוהם שקוראת לעצמם: אגודת רוח הצפון.', 150, 2014),
(19, 'Inside Out', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'images/movies/683078.jpg', 'images/movies/276529.jpg', '8.4', '2015-11-29 11:35:24', '2016-02-05 09:43:52', 'https://www.youtube.com/watch?v=seMwpP0yeu4', 0, 'הקול בראש', 'עלילת הסרט מתרחשת בתוך ראשה של נערה בת 11 בשם ריילי, המובלת בחייה על ידי חמשת רגשותיה: שמחה, פחד, כעס, גועל ועצב.\r\nחמשת רגשותיה של ריילי שוכנים במרכז המוח במקום הנקרא "המפקדה הראשית". המפקדה הראשית מחוברת לשאר חלקי המוח דרך חמישה איים הבונים את אישיותה של ריילי: אי החברות, אי ההוקי, אי המשפחה, אי השטויות, ואי הכנות. בתוך המפקדה, נמצא לוח הבקרה, בו בכל בכל פעם שולט רגש אחר וגורם לריילי להרגיש אותו, לפי הצורך. עוד במפקדה, נמצאים זיכרונות הליבה, שהם הזכרונות החשובים ביותר בחייה של ריילי, וכן הזיכרונות שנאספו במהלך היום, שהם פחות חשובים.', 149, 2015),
(20, 'Mad Max: Fury Road', 'A woman rebels against a tyrannical ruler in post apocalyptic Australia in search for her homeland with the help of a group of female prisoners, a psychotic worshiper, and a drifter named Max.', 'images/movies/671088.jpg', 'images/movies/441840.jpg', '8.2', '2015-11-29 11:44:04', '2016-02-05 09:43:15', 'https://www.youtube.com/watch?v=hEJnMQG9ev8', 0, 'מקס הזועם: כביש הזעם', 'בעתיד הרחוק העולם הפך לשממת מדבר והציוויליזציה קרסה. מקס (טום הארדי), ניצול באוסטרליה, נתפס על ידי בני המלחמה, הצבא של מנהיג הכת הרודני והאכזרי, המלך אימורטן ג''ו. מיועד להיות תורם דם אוניברסלי, מקס כלוא ומשמש כעירוי דם לאחד מבני המלחמה המנודה, נוקס החולה. בינתיים, הקיסרית פיוריאוסה (שרליז ת''רון) מכינה את רכבה המשוריין, ה-"Rig" כדי לאסוף דלק. כשפיוריאוסה יורדת מהדרך, ג''ו קולט כי נשיו - חמש נשים שנבחרו במיוחד לרבייה - נעלמו. זועם וכועס, ג''ו מוביל את כל צבאותיו, במרדף אחר פיוריאוסה וקורא לעזרה מחוות הקליעים ועיר-גז סמוכה.', 155, 2015),
(21, 'Terminator 5 Genisys', 'When John Connor, leader of the human resistance, sends Sgt. Kyle Reese back to 1984 to protect Sarah Connor and safeguard the future, an unexpected turn of events creates a fractured timeline.', 'images/movies/495469.jpg', 'images/movies/771647.png', '6.7', '2015-11-29 12:04:08', '2016-02-05 09:42:58', 'https://www.youtube.com/watch?v=62E4FJTwSuc', 0, 'שליחות קטלנית 5: ג''נסיס', 'בשנת 2029, ג''ון קונור, מנהיג ההתקוממות נגד המכונות, ממשיך את המלחמה מול המכונות. במתקפה בלוס אנג''לס, קונור מתחיל לפחד מן העתיד הלא-ידוע כשהוא מודיע ליחידתו הצבאית "טק-קום" שסקיינט יתקוף את ג''ון משני הצדדים, בעבר ובעתיד, ובסופו של דבר ישנה את המלחמה לנצח. על סף ניצחון במלחמה נגד סקיינט, קונור שולח את סגנו הבכיר והנאמן קייל ריס חוזר אחורה בזמן כדי להציל את חיי אמו של ג''ון: שרה קונור, ולהבטיח את קיומו שלו. עם זאת, קייל מגלה כי העבר המקורי השתנה.', 151, 2015),
(22, 'The Hunger Games: Mockingjay - Part 1', 'Katniss Everdeen is in District 13 after she shatters the games forever. Under the leadership of President Coin and the advice of her trusted friends, Katniss spreads her wings as she fights to save Peeta and a nation moved by her courage.', 'images/movies/694417.jpg', 'images/movies/373589.jpg', '6.8', '2015-11-29 13:19:18', '2016-02-05 09:49:33', 'https://www.youtube.com/watch?v=3PkkHsuMrho', 0, 'משחקי הרעב: עורבני חקיין - חלק 1', 'לאחר שבסרט הקודם, "התלקחות", קטניס הרסה את זירת המשחקים, והקפיטול הפציץ את מחוז 12 עד היסוד, הסרט נפתח בסצנה שבה קטניס מסתתרת מחוץ לחדרה במחוז 13 ושופכת את מר ליבה, על שלא רצתה במרד, אלא רק לשמור על משפחתה. אחרי דקות אחדות, מגיעים אנשים שלוקחים אותה בכח לחדרה ומרדימים אותה.', 155, 2014),
(23, 'Night at the Museum 3: Secret of the Tomb', 'Larry spans the globe, uniting favorite and new characters while embarking on an epic quest to save the magic before it is gone forever.', 'images/movies/671300.jpg', 'images/movies/606605.jpg', '6.3', '2015-12-01 14:27:41', '2016-02-05 09:49:02', 'https://www.youtube.com/watch?v=i0vTJeYLRnA', 0, 'לילה מוטרף במוזיאון 3: סוד הקבר', 'בשנת 1938 במצרים, צוות של ארכיאולוגים חופרים בקבר ומנסים לגלות חפץ יקר ערך. ילד קטן נפל לתוכו וקרא לאביו ולשאר הצוות, והם גילו שזה הלוח של אחמנרע. המקומיים שחיו במקום הסבירו להם שאם הם יסירו את הלוח אז "הסוף עוד יבוא".', 148, 2014),
(24, 'Momentum', 'Alex, a mysterious thief, is pulled in by her former partner for one last heist. She quickly finds it was never just about the diamonds. A brutal murder sparks a cat and mouse chase between Alex and a master assassin. Now she must uncover the lies behind the heist and discover the secrets behind the men who have made her a target.', 'images/movies/992974.jpg', 'images/movies/721842.jpg', '5.5', '2015-12-03 15:05:17', '2016-02-05 09:42:34', 'https://www.youtube.com/watch?v=bZDHKxXBzCM', 0, 'מומנטום', 'אלכס, שודדת מסתורית, מתנדבת לבצע שוד מסוכן למען השותף שלה לשעבר. במהרה היא מבינה שהשוד הוא מלכודת והיא מסתבכת ברצח שבוצע על ידי מתנקש מקצועי. עכשיו היא חייבת לפצח את התעלומה מאחורי השוד ולנקום בגברים שהפכו אותה לחשודה ברצח.', 146, 2015),
(25, 'Harry Potter and the Sorcerer''s Stone', 'Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School of Witchcraft and Wizardry.', 'images/movies/765706.jpg', 'images/movies/532986.jpg', '7.5', '2015-12-03 15:18:40', '2016-02-06 15:59:24', 'https://www.youtube.com/watch?v=VyHV0BRtdxo', 0, 'הארי פוטר ואבן החכמים', 'הארי פוטר (דניאל רדקליף) למד לחיות עם דודו המאיים והמציק ורנון (ריצ''רד גריפיתס), עם דודתו הקשוחה פטוניה (פיונה שואו) ועם היללות והקיטורים של בן דודו המעצבן דאדלי, הוא אפילו למד לחיות בארון שמתחת למדרגות אחרי שהדארסלים הכריחו אותו לגור בו.', 147, 2001),
(26, 'The Imitation Game', 'During World War II, mathematician Alan Turing tries to crack the enigma code with help from fellow mathematicians.', 'images/movies/380373.jpg', 'images/movies/119737.jpg', '8.1', '2015-12-03 15:39:53', '2016-02-05 09:48:38', 'https://www.youtube.com/watch?v=S5CjKEFb-sM', 0, 'משחק החיקוי', 'הסרט מספר את אחד הסיפורים המדהימים והגדולים ביותר של זמנינו - סיפורו של אלן טיורינג, האיש שהצליח לפצח את ה"אניגמה". בימי מלחמת העולם השנייה, הנהיג טיורינג קבוצה של בעלי המוחות הטובים בבריטניה במירוץ נגד הזמן בעל מטרה אחת - לנסות לפצח את ה"אניגמה", מכונת ההצפנה בה השתמשה גרמניה הנאצית על מנת להעביר מסרים. דרך תחנות בחייו - ילדותו הבעייתית בפנימייה, העבודה על פיצוח ה"אניגמה" וסוף חייו הטראגי - נחשף האיש שאחראי להצלת חייהם של מיליוני בני אדם.', 148, 2014),
(27, 'Southpaw', 'Boxer Billy Hope turns to trainer Tick Wills to help him get his life back on track after losing his wife in a tragic accident and his daughter to child protection services.', 'images/movies/302924.jpg', 'images/movies/811957.jpg', '7.5', '2015-12-03 15:54:22', '2016-02-05 09:42:14', 'https://www.youtube.com/watch?v=Mh2ebPxhoLs', 0, 'ללא כפפות', 'בילי הופ (ג''ילנהול), האלוף הנוכחי באגרוף למשקל בינוני, סגנונו האלים נוצר בעקבות הצורך באהבה, כסף וכמובן תהילה. בילי הוא בעל משפחה נפלאה הכוללת בית יפה ובטחון כלכלי מרשים. אך לאחר תאונה טרגית שבעקבותיה הוא מאבד את אשתו, הוא מתדרדר בלתי ניתן לעצירה.', 150, 2015),
(28, 'American Sniper', 'Navy S.E.A.L. sniper Chris Kyle''s pinpoint accuracy saves countless lives on the battlefield and turns him into a legend. Back home to his wife and kids after four tours of duty, however, Chris finds that it is the war he can''t leave behind.', 'images/movies/470169.jpg', 'images/movies/804470.jpg', '7.3', '2015-12-03 16:07:20', '2016-02-05 09:48:15', 'https://www.youtube.com/watch?v=99k3u9ay1gs', 0, 'צלף אמריקאי', 'בראדלי קופר מגלם את כריס קייל, צלף מוכשר שכישרונו הפך אותו לגיבור בשדה הקרב. אבל עבורו זה לא היה רק כושר דיוק. לוחם הצי, כריס קייל, נשלח לעיראק עם משימה אחת ויחידה: להגן על אחיו לנשק. יכולת הדיוק שלו מצילה את חייהם של אינספור חיילים וכשהסיפורים על ביצועיו ואומץ לבו מתפשטים הוא זוכה לכינוי "אגדה". אך, המוניטין שלו יוצא אל מעבר לקווי האויב, שמצדו שם פרס על ראשו והופך אותו למטרה מרכזית. בחזית הבית הוא נלחם במלחמה אחרת - הקרב על היותו בעל ואב טוב כשהוא נמצא הרחק הרחק.', 150, 2014),
(29, 'Maze Runner: The Scorch Trials', 'After having escaped the Maze, the Gladers now face a new set of challenges on the open roads of a desolate landscape filled with unimaginable obstacles.', 'images/movies/133273.jpg', 'images/movies/958930.jpg', '6.6', '2015-12-03 20:27:59', '2016-02-05 09:41:41', 'https://www.youtube.com/watch?v=-44_igsZtgU', 0, 'הרץ במבוך: מבחני הכווייה', 'לאחר שהצליחו לברוח מהמבוך, בני הנוער הניצולים יצטרכו להתמודד עם האתגרים של עולם אשר נפגע אנושות על-ידי מגפה ובין היתר התפרצויות להבה סולאריות.', 152, 2015),
(30, 'Paper Towns', 'After an all night adventure, Quentin''s life-long crush, Margo, disappears, leaving behind clues that Quentin and his friends follow on the journey of a lifetime.', 'images/movies/511090.jpg', 'images/movies/816080.jpg', '6.5', '2015-12-03 20:39:40', '2016-02-05 09:41:23', 'https://www.youtube.com/watch?v=rFGiHm5WMLk', 0, 'ערים של נייר', 'עיבוד לרב המכר מאת ג''ון גרין ("אשמת הכוכבים"), ערים של נייר הוא סיפור אשר במרכזו נמצאים קוונטין (נאט וולף) והשכנה המסתורית שלו, מרגו (קארה דלווין), אשר כל כך אוהבת תעלומות עד שהפכה לאחת. לאחר שלקחה אותו להרפתקה לילית בעיר הולדתם, מרגו נעלמת לפתע ומותירה אחריה רמזים נסתרים שעל קוונטין לפענח. החיפוש מוביל את קוונטין ואת חבריו להרפתקה מלהיבה מרגשת ומצחיקה בו זמנית. על מנת לאתר את מרגו על קוונטין להבין לעומק מהי חברות ואהבה אמיתית.', 150, 2015),
(31, 'Cinderella', 'When her father unexpectedly passes away, young Ella finds herself at the mercy of her cruel stepmother and her scheming step-sisters. Never one to give up hope, Ella''s fortunes begin to change after meeting a dashing stranger.', 'images/movies/343234.jpg', 'images/movies/344672.jpg', '7.1', '2015-12-03 21:20:24', '2016-02-05 09:41:05', 'https://www.youtube.com/watch?v=McQ_cCBaiac', 0, 'סינדרלה', 'סיפורה של סינדרלה עוקב אחר גורלה של אלה הצעירה, שבעקבות מותה הטראגי של אמה, אביה נישא בשנית. להוטה לתמוך באביה, אלה מקבלת באהבה את האם החורגת החדשה שלה - ליידי טרמיין ואת שתי בנותיה אנסטסיה ודריזלה לבית המשפחה. אבל כאשר אביה של אלה נפטר באופן פתאומי ובלתי צפוי, אלה מוצאת את עצמה נתונה לחסדיהם של המשפחה הקנאית והאכזרית שנותרה לה. אלה הופכת להיות משרתת מכוסה באפר, ומשפחתה האכזרית כינתה אותה בשם סינדרלה, מאחר שנהגה לעבוד באפר (Cinder). אלה החלה לאבד את תקוותה, אך עם כל הדברים שנגרמו לה, היא זכרה את המילים של אמה כשעוד הייתה בחיים - "תהיי אמיצה וטובת לב". בכך היא לא מתייאשת ולא מתעבת את אלה שמתעללים בה. ואז יש את האדם הזר שהיא פוגשת ביער. בהיותה לא מודעת לכך שהוא באמת נסיך, ולא רק עובד פשוט בארמון, אלה סוף סוף מרגישה שהיא פגשה את הנפש התאומה שלה. נראה כאילו גורלה עומד להשתנות כאשר הארמון שולח הזמנה פתוחה לנשף לכל הנשים הפנויות בממלכה, דבר זה מעורר את תקוותיה של אלה שוב. האם החורגת שלה אוסרת עליה להשתתף בנשף והורסת את שמלתה. אבל, כמו בכל האגדות הטובות, תמיד יש מישהו שעוזר, ואישה חביבה שהיא הפיה הטובה, יחד עם דלעת ענקית וכמה עכברים, משנים את חיי סינדרלה לעד.‏', 152, 2015),
(32, 'Harry Potter and the Chamber of Secrets', 'Harry ignores warnings not to return to Hogwarts, only to find the school plagued by a series of mysterious attacks and a strange voice haunting him.', 'images/movies/765272.jpg', 'images/movies/707899.jpg', '7.4', '2015-12-03 21:33:29', '2016-02-06 15:54:24', 'https://www.youtube.com/watch?v=1bq0qff4iF8', 0, 'הארי פוטר וחדר הסודות', 'לקראת ביקורו של הלקוח של הדוד ורנון, הדרסלים שולחים את הארי לחדרו. הארי מוצא את דובי, גמדון הבית, אשר מזהיר אותו מפני חזרה להוגוורטס. כאשר הארי מסרב, דובי גורם להריסת הפגישה של הדוד ורנון. הדוד ורנון נועל הארי בחדרו כדי למנוע את שובו להוגוורטס. בלילה, רון, פרד וג''ורג'' וויזלי מגיעים במכונית המעופפת שאדון וויזלי כישף כדי להציל את הארי ולקחת אותו למחילה. הארי והוויזלים נוסעים לסמטת דיאגון בעזרת אבקת פלו, על מנת לקנות ציוד לשנת הלימודים הבאה. בזמן הקניות, הארי פוגש את גילדרוי לוקהרט, הסופר המפורסם, ומאוחר יותר את דראקו מאלפוי ואת אביו לוציוס, שמשמיצים את משפחת וויזלי וחבריו של הארי. במקום מתפתחת קטטה בין אדון וויזלי לאדון מאלפוי.', 147, 2002),
(33, 'Harry Potter and the Goblet of Fire', 'Harry finds himself mysteriously selected as an under-aged competitor in a dangerous tournament between three schools of magic.', 'images/movies/347900.jpg', 'images/movies/808376.jpg', '7.6', '2015-12-04 10:48:09', '2016-02-05 10:01:11', 'https://www.youtube.com/watch?v=7lJ6Suyp1ok', 0, 'הארי פוטר וגביע האש', 'השנה הוגוורטס לוקחת חלק באירוע אגדי - טורניר הקוסמים המשולש, שבו שלושה תלמידים משלושה בתי ספר לקוסמים באירופה יתחרו בשלוש משימות קשות על ניצחון בטורניר. הארי, שבהפתעה נבחר למתמודד הרביעי, משתתף במשימות ומתחרה על הניצחון בטורניר בניסיון לפענח מי האדם שגרם לכניסתו לטורניר המסוכן. העלילה מסתבכת עוד יותר, כאשר וולדמורט חוזר לתחייה לעיניי הארי, ולאחר מכן נלחם בו.', 145, 2005),
(34, 'Harry Potter and the Order of the Phoenix', 'With their warning about Lord Voldemort''s return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.', 'images/movies/336832.jpg', 'images/movies/702419.jpg', '7.5', '2015-12-04 11:10:11', '2016-02-05 09:58:26', 'https://www.youtube.com/watch?v=y6ZW7KXaXYk', 0, 'הארי פוטר ומסדר עוף החול', 'עלילת הסרט זהה לעלילת הספר החמישי בסדרת הספרים הארי פוטר. הארי מתחיל את שנת לימודיו החמישית בהוגוורטס ומגלה כי בעקבות מדיניות ההכחשה של שר הקסמים קורנליוס פאדג'', רבים מאוכלוסיית הקוסמים מכחישה את המפגש האחרון שנערך בינו לבין הקוסם הרשע, הלורד וולדמורט, ומעדיפה להתעלם מהראיות המצביעות על כך שוולדמורט אכן חזר. בתגובה להופעתו של ולדמורט בסוף הספר הרביעי, מייסד מחדש מנהל בית הספר אלבוס דמבלדור את "מסדר עוף החול" - קבוצת קוסמים בוגרים נבחרים הפועלים נגד וולדמורט ותומכיו, אוכלי המוות.', 145, 2007),
(35, 'Harry Potter and the Half-Blood Prince', 'As Harry Potter begins his sixth year at Hogwarts, he discovers an old book marked as "the property of the Half-Blood Prince" and begins to learn more about Lord Voldemort''s dark past.', 'images/movies/148627.jpg', 'images/movies/771375.jpg', '7.5', '2015-12-04 11:21:29', '2016-02-05 09:57:19', 'https://www.youtube.com/watch?v=JYLdTuL9Wjw', 0, 'הארי פוטר והנסיך חצוי-הדם', 'החלק השישי בסדרת הסרטים על הקוסם הצעיר. הארי מתחיל את שנתו שישית בבית הספר לקוסמים "הוגוורטס", ומגלה ספר מסתורי ששיך לנסיך חצוי הדם. דרך הספר הוא מתחיל להחשף לעברו של לורד וולדמורט.', 146, 2009),
(36, 'Harry Potter and the Prisoner of Azkaban', 'It''s Harry''s third year at Hogwarts; not only does he have a new "Defense Against the Dark Arts" teacher, but there is also trouble brewing. Convicted murderer Sirius Black has escaped the Wizards'' Prison and is coming after Harry.', 'images/movies/851860.jpg', 'images/movies/479383.jpg', '7.8', '2015-12-05 15:06:17', '2016-02-06 15:59:36', 'https://www.youtube.com/watch?v=lAxgztbYDbs', 0, 'הארי פוטר והאסיר מאזקבאן', 'בסרט מסופר על רוצח מסוכן, סיריוס בלק, שברח מכלא הקוסמים - אזקבאן, לאחר שהיה כלוא שם במשך 12 שנים. החשש הוא שבלק ברח כדי לתפוס את הארי, ויעשה הכול כדי לתופסו. בהמשך הספר מתגלה כי סיריוס אינו רוצח וכי האנשים שכביכול נרצחו על ידיו, נרצחו על ידי פיטר פטיגרו, שהוא אנימאגוס ולאחר הרצח הפך לעכברוש ונעלם מהמקום. בנוסף לכול, הארי חייב להתמודד עם בעיית הסוהרסנים אשר שומרים על בית הספר לאחר בריחתו של סיריוס מאזקבאן, אך משום מה הם משפיעים עליו באופן קשה במיוחד. בסרט זה מתגלה המורה החדש להתגוננות מפני כוחות האופל, רמוס לופין, והפעם מדובר במורה טוב ואהוב.', 145, 2004),
(37, 'Harry Potter and the Deathly Hallows: Part 1', 'As Harry races against time and evil to destroy the Horcruxes, he uncovers the existence of three most powerful objects in the wizarding world: the Deathly Hallows.', 'images/movies/476589.jpg', 'images/movies/380371.jpg', '7.7', '2015-12-05 15:22:53', '2016-02-05 09:56:36', 'https://www.youtube.com/watch?v=MxqsmsA8y5k', 0, 'הארי פוטר ואוצרות המוות: חלק 1', 'אדון האופל ותומכיו מתחזקים לאחר מות דמבלדור והם מפילים את משרד הקסמים ומשתלטים על הוגוורטס.הארי יוצא עם רון והרמיוני למסע לחיפוש והשמדת ההורוקרוקסים שנותרו.', 146, 2010),
(38, 'Harry Potter and the Deathly Hallows: Part 2', 'Harry, Ron and Hermione search for Voldemort''s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.', 'images/movies/333224.jpg', 'images/movies/644802.jpg', '8.1', '2015-12-07 09:26:15', '2016-02-05 09:55:21', 'https://www.youtube.com/watch?v=mObK5XD8udk', 0, 'הארי פוטר ואוצרות המוות: חלק 2', 'הסרט השני והאחרון המבוסס על הספר האחרון בסדרת הארי פוטר. בסרט זה מגיע המאבק של הארי פוטר ולורד וולדמורט לשיא של חיים ומוות.', 145, 2011),
(39, 'Frozen', 'When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister, Anna, teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.', 'images/movies/380740.jpg', 'images/movies/280571.jpg', '7.6', '2015-12-17 16:27:45', '2016-02-05 09:51:58', 'https://www.youtube.com/watch?v=FLzfXQSPBOg', 0, 'לשבור את הקרח', 'אנה (קריסטן בל), אופטימית ועשויה ללא חת יוצאת למסע אפי יחד עם קריסטוף מוכר קרח לפרנסתו (ג''ונתן גרוף), אייל המחמד שלו סוון, ואיש השלג המתפרק אולאף. על מנת להציל את ממלכת ארנדל מהחורף הנצחי שנוצר בטעות ע"י אחותה הגדולה אלזה (עדינה מנזל). נאבקים בתנאים הדומים לאוורסט, טרולים, אנשי שלג, וזאבים. אנה נמצאת במרוץ מסביב השעון על מנת להציל את הממלכה, את אחותה, ואת עצמה, מהקללה שמקפיאה אותה.', 146, 2013),
(41, 'Hotel Transylvania', 'In the aftermath of the death of Dracula''s wife Martha (Jackie Sandler) at the hands of an angry mob, Count Dracula (Adam Sandler) designs and builds a massive five-star hotel in Transylvania in which to raise his daughter Mavis (Selena Gomez) and to serve as a getaway for all the world''s monsters.', 'images/movies/129530.jpg', 'images/movies/467556.jpg', '7.1', '2015-12-18 06:51:39', '2016-02-05 09:54:38', 'https://www.youtube.com/watch?v=FYgzizpCTKU', 0, 'מפלצת של מלון', 'אחרי שמדיניות המבקרים הנוקשה של דרקולה למלון שבבעלותו התמתנה וגם בני אדם מורשים להיכנס, מתחיל דרקולה להיות מודאג מכך שנכדו המקסים (חצי אדם-חצי ערפד) לא יגדל להיות ערפד.דרקולה מגייס את חבריו המפלצות על מנת להוציא מנכדו הצעיר את המפלצת שבו. מה שהם לא יודעים הוא שבזמן הזה אביו השמרני והנרגן של דרקולה - ולאד מגיע לבקר ומסבך את העניינים.', 145, 2012),
(42, 'The Walk', 'In 1974, high-wire artist Philippe Petit recruits a team of people to help him realize his dream: to walk the immense void between the World Trade Center towers.', 'images/movies/349039.jpg', 'images/movies/449652.jpg', '7.6', '2015-12-18 07:03:16', '2016-02-05 09:40:55', 'https://www.youtube.com/watch?v=4W6byFcD5uE', 0, 'על חבל דק', 'הסיפור של אמן ההליכה על חבל הצרפתי פיליפ פטי שהעז, כנגד החוק, לעשות את הבלתי ייאמן – הליכה על חבל בין שני מגדלי התאומים בשנת 1974. מי שעזר והנחה את פטי היה המנטור שלו פאפא רודי ולצידו חבורה שהייתה צריכה להתגבר על מכשולים רבים, התנגדויות, תככים ולחצים, כדי להוציא את תכניתם המטורפת לפועל.', 151, 2015),
(43, 'Hotel Transylvania 2', 'Now that Dracula (Adam Sandler) has opened the Hotel Transylvania''s doors to humans, things are changing for the better; however, Drac is secretly worried that his half-human grandson, Dennis, isn''t showing his vampire side. So, while Mavis and Johnny are away, Drac enlists his friends to help him put the boy through a "monster-in-training" boot camp. But things really get batty when Drac''s cantankerous, old-school dad (Mel Brooks) pays an unexpected visit.', 'images/movies/902587.jpg', 'images/movies/258626.jpeg', '6.9', '2015-12-18 07:15:24', '2016-02-05 09:40:31', 'https://www.youtube.com/watch?v=T3nqmGgnJe8', 0, 'מפלצת של מלון 2', 'אחרי שמדיניות המבקרים הנוקשה של דרקולה למלון שבבעלותו התמתנה וגם בני אדם מורשים להיכנס, מתחיל דרקולה להיות מודאג מכך שנכדו (חצי אדם-חצי ערפד) לא יגדל להיות ערפד. דרקולה מגייס את חבריו המפלצות על מנת להוציא מנכדו הצעיר את המפלצת שבו. מה שהם לא יודעים הוא שבזמן הזה אביו השמרני והנרגן של דרקולה - ולאד - מגיע לבקר ומסבך את העניינים.', 146, 2015),
(44, 'Ice Age', 'Twenty-thousand years ago, Earth is a wondrous, prehistoric world filled with great danger, not the least of which is the beginning of the Ice Age. To avoid a really bad frostbite, the planet''s majestic creatures - and a few small, slothful ones - begin migrating south . The story revolves around sub-zero heroes: a woolly mammoth, a saber-toothed tiger, a sloth and a prehistoric combination of a squirrel and rat, known as Scrat.', 'images/movies/330701.jpg', 'images/movies/284179.jpg', '7.6', '2015-12-18 08:02:40', '2016-02-05 10:05:04', 'https://www.youtube.com/watch?v=cMfeWyVBidk', 0, 'עידן הקרח', 'סרט אנימציה ממוחשב שעלילתו ממוקמת לפני עשרים אלף שנה כשקרחונים מכסים את רוב כדור הארץ. קבוצה של ארבעה חיות פרה היסטוריות חוברת יחד בזמנים מסוכנים אלו, הם סומכים זה על זה ונתקלים במכשולים שונים כשהם מנסים להשיב תינוק אנושי שמצאו לשבט בני האדם.', 146, 2002),
(45, 'The Lord of the Rings: The Fellowship of the Ring', 'The future of civilization rests in the fate of the One Ring, which has been lost for centuries. Powerful forces are unrelenting in their search for it. But fate has placed it in the hands of a young Hobbit named Frodo Baggins (Elijah Wood), who inherits the Ring and steps into legend. A daunting task lies ahead for Frodo when he becomes the Ringbearer - to destroy the One Ring in the fires of Mount Doom where it was forged.', 'images/movies/477132.jpg', 'images/movies/846540.jpg', '8.8', '2015-12-18 08:20:38', '2016-02-05 10:06:10', 'https://www.youtube.com/watch?v=V75dMMIW2B4', 0, 'שר הטבעות אחוות הטבעת', 'הסרט הראשון בטרילוגיית הפנטזיה האולטימטיבית של פיטר ג''קסון על פי ספריו הפופולריים והמבריקים של ג''.ר.ר. טולקין. יצירת מופת שבונה עולם מופלא של יערות עד, שבטים עתיקים, יצורים מיתולוגיים ודמויות הרואיות. ההוביט פרודו מקבל משימה מסוכנת להעביר טבעת פלאים לארץ החושך, על מנת להשמידה לדיראון עולם, בלי שתיפול לידי כוחות האופל. לשם כך נאספים סביבו נציגים אמיצים מטעם בני האדם, הגמדים והאלפים שוכני העצים החלומיים, וגם מכשף טוב אחד ששומר עליהם לכל אורך הדרך.', 146, 2001),
(46, 'The Lord of the Rings: The Two Towers', 'The sequel to the Golden Globe-nominated and AFI Award-winning "The Lord of the Rings: The Fellowship of the Ring," "The Two Towers" follows the continuing quest of Frodo (Elijah Wood) and the Fellowship to destroy the One Ring. Frodo and Sam (Sean Astin) discover they are being followed by the mysterious Gollum. Aragorn (Viggo Mortensen), the Elf archer Legolas and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Saruman''s deadly spell.', 'images/movies/268961.jpg', 'images/movies/827718.jpg', '8.7', '2015-12-18 08:56:16', '2016-02-05 10:04:44', 'https://www.youtube.com/watch?v=LbfMDwc4azU', 0, 'שר הטבעות: שני הצריחים', 'הסרט השני בטרילוגיית שר הטבעות עוקב אחרי המשך הרפתקאותיהם של ההוביט פרודו באגינס (ווד) וחבורת הטבעת שלו בדרכם להשמיד את הטבעת האחת ולצאת נגד שר האופל, סאורון.', 146, 2002),
(47, 'Ice Age: The Meltdown', 'With global warming threatening their once-icy domain with widespread flooding, Manny (Ray Romano), Sid (John Leguizamo) and Diego (Denis Leary) set out to find a safe haven. Along the way, another mammoth (Queen Latifah), who thinks she is an opossum, joins the travelers on their perilous quest.', 'images/movies/208930.jpg', 'images/movies/802707.jpg', '6.9', '2015-12-18 09:05:50', '2016-02-05 09:59:24', 'https://www.youtube.com/watch?v=SNMXO74bw9M', 0, 'עידן הקרח 2: נמסים מצחוק', 'מני, דייגו וסיד, גיבורי הסרט הקודם, מספיקים ליהנות רק מעט מהצלחת מסעם הקודם, אשר מתואר ב"עידן הקרח", וכבר צרה נוספת רודפת אותם. הקרחון יתמוטט, כך מבשר הנשר, ובעקבות כך כל העמק יוצף (מרוצת קרחון) וכל החיות ימותו. לכן נאלצים מני, דייגו וסיד לצאת יחד עם כל שאר חיות העמק אל הקאנו אשר נמצא בקצהו האחר של העמק. הם יוצאים למסע אורך ומתיש אשר במהלכו סובל מני מעקיצות משאר בעלי החיים שמשוכנעים בכך שמני הוא הממותה האחרונה עלי אדמות.', 145, 2006),
(48, 'The Man from U.N.C.L.E.', 'At the height of the Cold War, a mysterious criminal organization plans to use nuclear weapons and technology to upset the fragile balance of power between the United States and Soviet Union. CIA agent Napoleon Solo (Henry Cavill) and KGB agent Illya Kuryakin (Armie Hammer) are forced to put aside their hostilities and work together to stop the evildoers in their tracks. The duo''s only lead is the daughter of a missing German scientist, whom they must find soon to prevent a global catastrophe.', 'images/movies/288302.jpg', 'images/movies/593234.jpg', '7.4', '2015-12-18 09:20:00', '2016-02-18 18:24:18', 'https://www.youtube.com/watch?v=4K4Iv_N9Nno', 0, 'שם קוד מ.ל.א.ך', 'תחילת שנות ה-60, בשיאה של המלחמה הקרה. סוכן ה- CIA סולו וסוכן ה- KGB קוריאקין נאלצים לשים בצד איבה ארוכת שנים ולהתאחד למשימה משותפת של עצירת ארגון פשע בינלאומי הנחוש לערער את האיזון העדין של הכוח העולמי באמצעות קידום מהיר של תעשיית הנשק הגרעיני והטכנולוגיה שלו. הסיכוי היחיד של הצמד היא בתו של מדען גרמני, שהוא המפתח לחדירה אל ארגון הפשע. עליהם לעמוד במירוץ נגד הזמן למציאתו כדי למנוע אסון עולמי.', 148, 2015),
(49, 'Ice Age: Dawn of the Dinosaurs', 'After Sid (John Leguizamo) pilfers some dinosaur eggs, Manny (Ray Romano), Diego (Denis Leary) and the rest of their prehistoric pals enter a mysterious, underground world to rescue the hapless sloth. During the course of their mission, the gang encounters many creatures great and small, including hungry carnivores and a relentless, dinosaur-hunting weasel named Buck.', 'images/movies/928005.jpg', 'images/movies/348605.jpg', '7', '2015-12-18 10:57:21', '2016-02-05 09:56:59', 'https://www.youtube.com/watch?v=Y_nSwh2WjAM', 0, 'עידן הקרח 3: עלייתם של הדינוזאורים', 'החיים מתחילים לחזור לשגרה אחרי הסופה האחרונה שפקדה את העמק. מני (ריי רומנו) ואלי (קווין לטיפה) עומדים להפוך בקרוב להורים. מני מחליט שהגיע הזמן להתבגר ולדאוג למשפחה החדשה שלו. סיד (ג''ון לגויזאמו) מקנא במני ומחליט שהגיע הזמן שגם הוא יהיה אבא. הוא מאמץ ביצה נשוטה שמתגלה כלא אחרת מאשר ביצת דינוזאור ונשאב יחד עם הביצה אל תוך העולם האפל של היצורים המפחידים. למזלו החברים שלו לא יוותרו עליו כל כך מהר. הם יוצאים להרפתקה בתקווה שיכלו למצוא את סיד ולהחזירו הביתה בשלום.', 146, 2009),
(50, 'Ice Age: Continental Drift', 'Scrat''s continuous pursuit of an infernal acorn has world-changing consequences for Manny (Ray Romano), Sid (John Leguizamo) and Diego (Denis Leary) when the continents split apart. The continental crack-up separates Manny and his friends from the rest of the herd, including Manny''s mate, Ellie (Jennifer Lopez) and rebellious daughter Peaches (Keke Palmer). The pals are desperate to return home, but a pirate (Peter Dinklage) and his ragtag crew stand in their way.', 'images/movies/624565.jpg', 'images/movies/634792.jpg', '6.7', '2015-12-18 11:15:37', '2016-02-05 09:54:19', 'https://www.youtube.com/watch?v=hzixp8s4pyg', 0, 'עידן הקרח 4: יבשת בתנועה', 'המרדף האגוזי של סקארט אחר הבלוט המקולל, שנמשך מאז תחילת הזמן, גורם להשלכות עולמיות - תזוזת יבשות עולמית שמתחילה את הרפתקה הגדולה ביותר למני, דייגו וסיד. לאחר התהפוכות הגדולות בסדר היבשות, סיד מתאחד עם משפחתו האבודה, לאחר איחוד המשפחות החבורה פוגשת בדרכה הביתה חיות חדשות שרוצות למנוע מהן לחזור לשם.', 144, 2012),
(51, '21 Jump Street', 'When cops Schmidt (Jonah Hill) and Jenko (Channing Tatum) join the secret Jump Street unit, they use their youthful appearances to go under cover as high-school students. They trade in their guns and badges for backpacks, and set out to shut down a dangerous drug ring. But, as time goes on, Schmidt and Jenko discover that high school is nothing like it was just a few years earlier -- and, what''s more, they must again confront the teenage terror and anxiety they thought they had left behind.', 'images/movies/792914.jpg', 'images/movies/123670.jpg', '7.2', '2015-12-19 20:08:44', '2016-02-05 09:54:00', 'https://www.youtube.com/watch?v=RLoKtb4c4W0', 0, 'רחוב ג''אמפ 21', 'שמידט וג''נקו יותר ממוכנים לעזוב את בעיות גיל ההתבגרות שלהם מאחור. הם מצטרפים ליחידת משטרה חשאית, ומנצלים את הופעתם החיצונית כדי להיות סוכנים חשאיים בקרב תלמידי תיכון. את האקדח והשכפ"ץ הם מחליפים בתיק בית ספר, ומסכנים את חייהם כשהם נכנסים לחקירת רשת סמים אלימה. הם מגלים שבית הספר הפך לאלים ולשונה לגמרי מאיך שהם עזבו אותו כמה שנים קודם, אבל נאלצים גם להתמודד עם המתח והלחץ שכרוך בלהיות מתבגר-דבר שחשבו שכבר השתחררו ממנו.', 146, 2012),
(52, 'The Cobbler', 'A frustrated shoemaker (Adam Sandler) finds a magical sewing machine that allows him to see the world in a new way by stepping into the lives of his customers.', 'images/movies/162217.jpg', 'images/movies/738850.jpg', '5.8', '2015-12-19 22:15:02', '2016-02-05 09:39:10', 'https://www.youtube.com/watch?v=kMVGScC0vDA', 0, 'הסנדלר', 'מייק סימקין הוא סנדלר שמתקן נעליים בחנות של משפחתו בניו יורק. שחוק מהשגרה היומיומית, נתקל מקס בחפץ קסום שמאפשר לו ללבוש את דמותם של לקוחותיו, לראות את העולם בצורה חדשה ולגלות את עצמו מחדש.', 145, 2015),
(53, 'Insurgent', 'Beatrice Prior must confront her inner demons and continue her fight against a powerful alliance which threatens to tear her society apart with the help from others on her side.', 'images/movies/248604.jpg', 'images/movies/661857.jpg', '6.3', '2015-12-21 17:22:15', '2016-02-05 09:38:36', 'https://www.youtube.com/watch?v=suZcGoRLXkU', 0, 'מורדים', 'עודם מחפשים בעלי ברית ותשובות בעקבות ההתקוממות של אנשי פלג אוריינות, טריס וטוביאס נמצאים במנוסה. כשהם נרדפים על ידי ג''נין מתיוס, מנהיגת פלג אוריינות, טריס וארבעת בני לווייתה נמצאים במירוץ נגד זמן כשהם מנסים להבין על מה פלג הקרבה עצמית מנסה להגן ומדוע מנהיגי אוריינות יעשו הכל כדי לעצור אותם. רדופה על ידי הבחירות שלה מהעבר אבל נואשת כדי להגן על אלה שהיא אוהבת, טריס עומדת בפני אתגר בלתי אפשרי, כשהיא מגלה את האמת על העבר ובסופו של דבר על עתיד עולמה.', 146, 2015),
(54, 'Poltergeist', 'A family whose suburban home is haunted by evil forces must come together to rescue their youngest daughter after the apparitions take her captive.', 'images/movies/822369.jpg', 'images/movies/673561.jpg', '5.0', '2015-12-21 17:38:26', '2016-02-05 09:38:25', 'https://www.youtube.com/watch?v=fhr8d1yxSP8', 0, 'פולטרגייסט', 'חידוש לסרט האימה הקלאסי. רוחות רפאים מתחילות לשוטט בביתה של משפחה צעירה. תחילה רוחות הרפאים נראות ידידותיות, אולם אט אט הן נהפכות למרושעות, מטילות טרור על ההורים וחוטפות את ביתם הקטנה.', 147, 2015),
(55, 'Avengers: Age of Ultron', 'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it''s up to Earth''s Mightiest Heroes to stop the villainous Ultron from enacting his terrible plans.', 'images/movies/518185.jpg', 'images/movies/988715.jpg', '7.6', '2015-12-21 18:25:26', '2016-02-05 09:38:05', 'https://www.youtube.com/watch?v=rD8lWtcgeyg', 0, 'הנוקמים: עידן אולטרון', 'סוכנות S.H.I.E.L.D התפרקה וחברי הנוקמים זקוקים למנוחה. טוני סטארק יוצר את אולטרון, בינה מלאכותית תבונתית בעלת יכולת למידה עצמית, שמטרתה להגן על כדור הארץ מפני אויבים חיצוניים. הדברים משתבשים במהרה כאשר אולטרון מזהה את בני האדם בתור האויב הגדול ביותר ויוצא להכחידם מעל פני כדור הארץ.', 149, 2015),
(56, 'Taken 2', 'In Istanbul, retired CIA operative Bryan Mills and his wife are taken hostage by the father of a kidnapper Mills killed while rescuing his daughter.', 'images/movies/340925.jpg', 'images/movies/873357.jpg', '6.3', '2015-12-21 19:15:33', '2016-02-05 09:53:38', 'https://www.youtube.com/watch?v=VpaT8NzkLgE', 0, 'חטופה 2', 'לאחר שבריאן רצח את המאפיונרים האלבניים בסרט הקודם מחליט מוראד, מנהיג החבורה האלבנית ואביו של מרקו לנקום את מותם. קים ולנור מחליטות להפתיע את בריאן במהלך שהייתו באיסטנבול. למחרת בריאן ולנור יוצאים לארוחת צהריים ומגלים שעוקבים אחריהם והם נחטפים. בריאן יוצר קשר עם קים והיא מנסה להציל אותם.', 145, 2012),
(57, 'Taken 3', 'Ex-government operative Bryan Mills is accused of a ruthless murder he never committed or witnessed. As he is tracked and pursued, Mills brings out his particular set of skills to find the true killer and clear his name.', 'images/movies/894400.jpg', 'images/movies/605872.jpg', '6.0', '2015-12-21 19:57:48', '2016-02-05 09:47:56', 'https://www.youtube.com/watch?v=JuU0M2xBasc', 0, 'חטופה 3', 'בריאן מילס (ליאם ניסן), סוכן ה-CIA לשעבר, מואשם כעת ברצח אשתו (פמקה ינסן) אותו לא ביצע וחייו מתנפצים, הוא נרדף על ידי בלש משטרתי מתוחכם, לכן בריאן מגייס את כל כישוריו המיוחדים על מנת ללכוד את הרוצח האמתי ולנקות את שמו ואומר לבתו קים (מגי גרייס),לא לסמוך על אף אחד ולהגן גם עליה כי היא הדבר החשוב ביותר שנותר לו.', 145, 2014),
(58, 'A Good Day to Die Hard', 'John McClane travels to Russia to help out his seemingly wayward son, Jack, only to discover that Jack is a CIA operative working undercover, causing the father and son to team up against underworld forces.', 'images/movies/249227.jpg', 'images/movies/134527.jpg', '5.3', '2015-12-22 16:10:59', '2016-02-05 09:51:39', 'https://www.youtube.com/watch?v=0_0K7ZfU2e0', 0, 'מת לחיות ביום טוב', 'ג''ון מקליין הופך לעולמי. בפעם הראשונה, השוטר הניו-יורקרי מוצא את עצמו על במה בינלאומית- כדג מחוץ למים במוסקבה. הסרט מציג את בנו המנוכר של מקליין ג''ק, תפוח שלא נפל רחוק מהעץ, ושיכול להיות יותר קשוח מאביו. ג''ון וג''ק חייבים לשים בצד את חילוקי הדעות האישיים והמקצועיים, ולעבוד יחדיו כדי לשמור אחד על השני בחיים... ולעצור את המחתרת ממוסקבה מלשלוט על פצצות אטום.', 145, 2013),
(59, 'Ant-Man', 'Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world.', 'images/movies/421435.jpg', 'images/movies/691373.jpg', '7.5', '2015-12-22 16:36:21', '2016-02-05 09:37:46', 'https://www.youtube.com/watch?v=pWdKf3MneyI', 0, 'אנטמן', 'האנק פים היה חייל סודי בסוכנות הביון "S.H.I.E.L.D" תחת השם "איש הנמלה" ("אנטמן"), ולו היו היכולות לשנות את גודלו לממדי חרק, לזכות בכוח על-אנושי במצב זה ולשלוט בנמלים, בעזרת טכנולוגיה מתקדמת לה העניק את השם "חלקיקי פים". רעייתו של פים, ג''אנט, הצטרפה אליו תחת הכינוי "הצרעה", ומצאה את מותה לכאורה באחד ממבצעיהם. מותה של ג''אנט הוביל לפרישתו של פים מחייו כגיבור-על, ולהקמת חברת מחקר עצמאית. בשנת 1989, גילה פים כי "S.H.I.E.L.D" מעוניינים להשתמש בטכנולוגיה שלו, ובשל כך הוא הציג את התפטרותו מהסוכנות בפני האוורד סטארק, פגי קרטר והסוכן מיטשל קרסון, ולקח עמו כל תיעוד לטכנולוגיה אותה המציא.', 146, 2015),
(60, 'The Lord of the Rings: The Return of the King', 'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'images/movies/409733.jpg', 'images/movies/715111.jpg', '8.9', '2015-12-23 10:41:56', '2016-02-05 10:02:09', 'https://www.youtube.com/watch?v=r5X-hFf6Bwo', 0, 'שר הטבעות: שיבת המלך', '"עין האויב נעה.". הסאגה מסתיימת בקול תרועה שלא נשמע כמוהו על מסך הכסף. שואו מפעים שמותיר את כולם פעורי פה אל מול הפנטזיה הקלאסית הזו, על פי סיפרו של ג''יי. ר. ר. טולקין: הנופים, הצריחים, גיבורי העל, כוחות הרשע, ההוביטים וכמובן - יצור הפלא, גולום והטבעת הנחשקת. אלייז''ה ווד, איאן מק''קלן, ליב טיילור, קייט בלאנשט, ויגו מורטנסון, איאן הולם ועוד מיליון יצורים בסרטו הבלתי נשכח (וזוכה 11 אוסקרים) של פיטר ג''קסון.', 144, 2003);
INSERT INTO `movies` (`id`, `name`, `description`, `image`, `big_image`, `imdb_rating`, `created_at`, `updated_at`, `trailer`, `popular`, `heb_name`, `heb_desc`, `view`, `year`) VALUES
(61, 'Fifty Shades Of Grey', 'Literature student Anastasia Steele''s life changes forever when she meets handsome, yet tormented, billionaire Christian Grey.', 'images/movies/862275.jpg', 'images/movies/658050.jpg', '4.1', '2015-12-23 12:36:28', '2016-02-18 19:15:48', 'https://www.youtube.com/watch?v=Fns7oJeQmZ8', 0, 'חמישים גוונים של אפור', 'הסרט, מגולל את הסיפור המופיע בכרך הראשון בטרילוגיה בו אנסטסיה סטיל (דקוטה ג''ונסון), סטודנטית לספרות, יוצאת לראיין את היזם הצעיר והמצליח כריסטיאן גריי (ג''יימי דורנן). במשרד רחב הידיים שבקומה העשרים היא פוגשת גבר מבריק ויפה תואר שגורם לה, פשוטו כמשמעו, לאבד את שיווי המשקל. היא מופתעת מהעצמה שבה היא נמשכת אליו, ומופתעת עוד יותר לגלות שלמרות חוסר ניסיונה – גם הוא רוצה בה. משם, שניהם מובלים לרומן לוהט ונטול מעצורים, אנסטסיה מגלה את הסודות של גריי – וגם צוללת אל תוך מעמקי התשוקות שלה עצמה.', 148, 2015),
(62, 'The Hobbit: The Battle of the Five Armies', 'Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.', 'images/movies/863656.jpg', 'images/movies/432873.jpg', '7.5', '2015-12-23 13:15:17', '2016-02-05 09:47:31', 'https://www.youtube.com/watch?v=iVAgTiBrrDA', 0, 'ההוביט: קרב חמשת הצבאות', 'הסרט "ההוביט 3: קרב חמשת הצבאות" הוא החלק האחרון שחותם את סדרת סרטי ההוביט. בפרק הנוכחי יוכרע סופית הקרב האפי בין בילבו באגינס (מרטין פרימן), ת''ורין אוקנשילד (ריצ''רד ארמיטאג'') וחבריהם, לבין סמאוג הדרקון (בנדיקט קמברבאץ'').', 145, 2014),
(63, 'The Hobbit: An Unexpected Journey', 'A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug.', 'images/movies/293464.jpg', 'images/movies/780254.jpg', '7.9', '2015-12-23 18:34:37', '2016-02-05 09:53:10', 'https://www.youtube.com/watch?v=T90Holdcrps', 0, 'ההוביט: מסע בלתי צפוי', '"מההתחלות הקטנות ביותר, יוצאות האגדות הגדולות ביותר...". הסרט עוקב אחר מסעו של ההוביט בילבו בגינס, אשר יוצא למסע אפי כדי למצוא את ממלכת הגמדאים האבודה של ארבור. הממלכה נכבשה מזה זמן רב על ידי הדרקון סמאוג. בילבו מוצא את עצמו במסע עם חבורה של 13 גמדאים לאחר שהוא פוגש את המכשף גנדלף האפור. בראש חבורת הגמדאים עומד טורין צינת אלון, שמוביל אותם במסע בטבע, דרך האדמות הבוגדניות שורצות גובלינים, אורקים, עכבישים ענקים ומכשפים. בעוד יעד מסעם מורה מזרחה לשממה של ההרים הבודדים הם צריכים לברוח מהמנהרות של הגובלינים, שם יפגוש בילבו באגינס ביצור שישנה את חייו לנצח.', 147, 2012),
(64, 'The Hobbit: The Desolation of Smaug', 'The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.', 'images/movies/772629.jpg', 'images/movies/792605.jpg', '7.9', '2015-12-24 06:55:06', '2016-02-05 09:51:19', 'https://www.youtube.com/watch?v=OPVWy1tFXuc', 0, 'ההוביט: מפלתו של סמאוג', 'סרט ההמשך למעשיית "ההוביט". הגמדים, בילבו וגנדלף הצליחו לברוח מההרים המיסטיים ואילו בילבו, השיג את הטבעת האחת. הם ממשיכים את מסעם במטרה להחזיר את הזהב שלהם מהדרקון סמאוג.', 146, 2013),
(65, 'Star Wars: Episode IV - A New Hope', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a wookiee and two droids to save the universe from the Empire''s world-destroying battle-station, while also attempting to rescue Princess Leia from the evil Darth Vader.', 'images/movies/560801.jpg', 'images/movies/880425.jpg', '8.7', '2015-12-24 08:20:11', '2016-02-05 10:09:19', 'https://www.youtube.com/watch?v=vP_1T4ilm8M', 0, 'מלחמת הכוכבים - פרק 4: תקווה חדשה', '"לפני הרבה הרבה זמן... בגלקסיה רחוקה רחוקה...". חלק רביעי באפוס של ג''ורג'' לוקאס, מלחמת הכוכבים: תקווה חדשה מתחיל עם ספינת מורדים שמתאכסנת על ספינתו של העריץ, דארת'' ויידר. העלילה נמשכת בחיים פשוטים של בחור רגיל, לוק סקייווקר, כשהוא פוגש חברים חדשים (האן סולו, צ''ובאקה, בן-קנובי, c-3po ו-r2-d2) בניסיון להציל את מנהיגת המורדים הנסיכה ליאה, מידיי האימפריה. המסקנה מסתיימת בכך שהמורדים, כולל לוק סקייווקר שמומחה בלטוס עושים מתקפה על הנשק המאיים והחזק ביותר, כוכב המוות.', 145, 1977),
(66, 'Star Wars: Episode V - The Empire Strikes Back', 'After the rebels have been brutally overpowered by the Empire on their newly established base, Luke Skywalker takes advanced Jedi training with Master Yoda, while his friends are pursued by Darth Vader as part of his plan to capture Luke.', 'images/movies/111297.jpg', 'images/movies/800542.jpg', '8.8', '2015-12-24 08:41:43', '2016-02-05 10:09:09', 'https://www.youtube.com/watch?v=JNwNXF9Y6kY', 0, 'מלחמת הכוכבים - פרק 5: האימפריה מכה שנית', 'מלחמת הכוכבים - פרק 5: האימפריה מכה שנית הוא סרט מ-1980 בבימויו של ארווין קירשנר, שהנו ההמשך ל"מלחמת הכוכבים - פרק 4: תקווה חדשה" והחלק השני בסדרת מלחמת הכוכבים. את הסרט הפיק ג''ורג'' לוקאס לפי תסריט שכתב בעצמו, בסיועם של לי ברקט ולורנס קסדן', 144, 1980),
(67, 'Star Wars: Episode VI - Return of the Jedi', 'After rescuing Han Solo from the palace of Jabba the Hutt, the rebels attempt to destroy the second Death Star, while Luke struggles to make Vader return from the dark side of the Force.', 'images/movies/575190.jpg', 'images/movies/819654.jpg', '8.4', '2015-12-24 08:58:53', '2016-02-05 10:08:57', 'https://www.youtube.com/watch?v=OvUh9_GFXA0', 0, 'מלחמת הכוכבים - פרק 6: שובו של הג''דיי', '"האימפריה נופלת.". האימפרייה מאיימת על כוחות האור על ידי בניית "כוכב מוות" שבעזרתו ניתן יהיה לשלוט ביקום. לאחר שמתמודד לוק סקייוואקר עם ג''ווה, לטאת הענק, ומציל את האן סולו (פורד), יוצאים כולם לכוכב אנדור שם יושב בסיס סודי של האימפריה. החבורה נעזרת בשבט האיווקים המתגורר בכוכב וביחד עליהם להכריע את דארת" וידר וצבא האימפריה שלו. כהמשך לסרטים המקדימים, לוק ממשיך לחפש את אביו האמיתי ואת כוחות הג''די הטמונים בו. ', 144, 1983),
(68, 'Sicario', 'After rising through the ranks of her male-dominated profession, idealistic FBI agent Kate Macer (Emily Blunt) receives a top assignment. Recruited by mysterious government official Matt Graver (Josh Brolin), Kate joins a task force for the escalating war against drugs. Led by the intense and shadowy Alejandro (Benicio Del Toro), the team travels back-and-forth across the U.S.-Mexican border, using one cartel boss (Bernardo Saracino) to flush out a bigger one (Julio Cesar Cedillo).', 'images/movies/314100.jpg', 'images/movies/491644.jpg', '7.9', '2015-12-27 09:23:51', '2016-02-05 09:36:47', 'https://www.youtube.com/watch?v=G8tlEcnrGnU', 0, 'סיקאריו', 'קייט (אמילי בלאנט), סוכנת FBI אשר מגויסת לפעילות בגבול בין ארה"ב ומקסיקו ע"י סוכן יחידת עלית (ג''וש ברולין) במטרה לעזור במלחמה כנגד הסמים. הצוות, שהוקם בהנהגתו של אלחנדרו (בניסיו דל טורו), בעל עבר בלי אמין, יוצא למסע חשאי הגורם לקייט להטיל ספק בכל הקשור לארגון ומטרותיו.', 147, 2015),
(69, 'San Andreas', 'A seemingly ideal day turns disastrous when California''s notorious San Andreas fault triggers a devastating, magnitude 9 earthquake, the largest in recorded history. As the Earth cracks open and buildings start to crumble, Ray Gaines (Dwayne Johnson), an LAFD search-and-rescue helicopter pilot, must navigate the destruction from Los Angeles to San Francisco to bring his estranged wife (Carla Gugino) and their only daughter (Alexandra Daddario) to safety.', 'images/movies/233968.jpg', 'images/movies/379068.jpg', '6.1', '2015-12-27 09:32:55', '2016-02-05 09:36:24', 'https://www.youtube.com/watch?v=yftHosO0eUo', 0, 'סאן אנדראס', 'אחרי ששבר סאן אנדרס הנודע לשמצה לא עמד בלחץ וגרם לרעידת אדמה אדירה בסולם 9 באזור קליפורניה, טייס הליקופטר של צוותי ההצלה (דוויין ג''ונסון) ואשתו המנוכרת יוצאים יחד מלוס אנג''לס לסן פרנסיסקו כדי להציל את בתם היחידה. אבל המסע הבוגדני שלהם צפונה הוא רק ההתחלה. וכשהם בטוחים שהגרוע מכל מאחוריהם, זה בעצם רק מתחיל.', 148, 2015),
(70, 'The Martian', 'When astronauts blast off from the planet Mars, they leave behind Mark Watney (Matt Damon), presumed dead after a fierce storm. With only a meager amount of supplies, the stranded visitor must utilize his wits and spirit to find a way to survive on the hostile planet. Meanwhile, back on Earth, members of NASA and a team of international scientists work tirelessly to bring him home, while his crew mates hatch their own plan for a daring rescue mission.', 'images/movies/681179.jpg', 'images/movies/375108.jpg', '8.2', '2015-12-27 10:19:17', '2016-02-05 09:36:01', 'https://www.youtube.com/watch?v=ej3ioOneTy8', 0, 'להציל את מארק וואטני', 'במהלך משימה אי שם במאדים, מתרחשת סופה אשר מפרידה את הצוות ומשאירה את האסטרונאוט מארק ווטני (מאט דיימון) לבדו. חברי הצוות מניחים כי הוא כבר נהרג, אך ווטני מוצא את עצמו שורד על הכוכב השומם עם אספקה מעטה ובתנאים קשים. כעת עליו למצוא דרך לשדר לכדור הארץ אות שהוא עדיין בחיים.', 149, 2015),
(72, 'Ex Machina', 'A young programmer is selected to participate in a groundbreaking experiment in artificial intelligence by evaluating the human qualities of a breathtaking female A.I.', 'images/movies/731723.jpg', 'images/movies/360072.jpg', '7.7', '2015-12-28 11:02:45', '2016-02-18 19:16:05', 'https://www.youtube.com/watch?v=XYGzRB4Pnq8', 0, 'אקס מכינה', 'מתכנת צעיר נבחר להשתתף בניסוי פורץ דרך באינטליגנציה מלאכותית. תפקידו: להעריך את היכולות האנושיות של רובוטית אינטליגנטית ועוצרת נשימה.', 146, 2015),
(73, 'Spy', 'A desk-bound CIA analyst volunteers to go undercover to infiltrate the world of a deadly arms dealer, and prevent diabolical global disaster.', 'images/movies/860994.jpg', 'images/movies/907968.jpg', '7.1', '2015-12-28 11:22:19', '2016-02-05 09:35:11', 'https://www.youtube.com/watch?v=ltijEmlyqlg', 0, 'מרגלת', 'סוזן קופר (מליסה מקארתי) היא אנליסטית צנועה ב- CIA, והגיבורה האלמונית מאחורי המשימות המסוכנות ביותר של הסוכנות. אבל כאשר השותף שלה (ג''וד לואו) נעלם וסוכן נוסף (ג''ייסון סטיית''ם) נפגע, היא מתנדבת כסוכנת סמויה על מנת לחדור עמוק לעולם של סוחרי נשק קטלניים ולמנוע אסון עולמי.', 148, 2015),
(74, 'Big Hero 6', 'The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.', 'images/movies/344316.jpg', 'images/movies/965020.jpg', '7.9', '2015-12-28 12:02:24', '2016-02-05 09:47:19', 'https://www.youtube.com/watch?v=z3biFxZIJOQ', 0, 'שישה גיבורים', '"שישה גיבורים" הינו קומדיית הרפתקאות חדשה מבית וולט דיסני אשר עוקבת אחר גאון טכנולוגי בשם הירו המדה והרובוט שלו ביימאקס, שמוצאים את עצמם בתוך השתלשלות עבריינית המאימת להרוס את העיר בעלת הקצב והטכנולוגיה המסחררים, סאן פרנסיוקיו. השניים משלבים כוחות עם צוות חסר מוטיבציה של לוחמי פשע בתחילת דרכם במשימה להציל את העיר.', 146, 2014),
(75, 'Kung Fu Panda', 'In the Valley of Peace, Po the Panda finds himself chosen as the Dragon Warrior despite the fact that he is obese and a complete novice at martial arts.', 'images/movies/818620.jpg', 'images/movies/285178.jpg', '7.6', '2015-12-28 17:15:52', '2016-02-05 09:57:58', 'https://www.youtube.com/watch?v=PXi3Mv6KMzY', 0, 'קונג-פו פנדה', 'הסיפור הוא על דב פנדה שמן, עצלן, חסר בושה ורפוי בשם פו, שקונג-פו הוא תחביבו העיקרי, מה שלא ממש מסתדר עם עבודתו בעסק המשפחתי למכירת איטריות, יום אחד באופן מפתיע, מגלה פו כי הוא מופיע בנבואה עתיקה לפיה הוא אמור להצטרף לחבורת הלוחמים הידועה והמפורסמת: "החמישיה הזועמת", שמטרתה להגן על יושבי העמק בו הם חיים, מהרוע.', 145, 2008),
(76, 'Chappie', 'In the near future, crime is patrolled by a mechanized police force. When one police droid, Chappie, is stolen and given new programming, he becomes the first robot with the ability to think and feel for himself.', 'images/movies/356724.jpg', 'images/movies/454143.jpg', '6.9', '2015-12-29 10:35:54', '2016-02-18 18:27:16', 'https://www.youtube.com/watch?v=lyy7y0QOK-0', 0, 'צ''אפי', 'מהבמאי של "מחוז 9" ו"אליסיום". כל תינוק מגיע לעולם מלא בפוטנציאל וצ''אפי אף יותר מכולם: הוא מחונן, מיוחד, ילד פלא. כמו כל ילד צ''אפי מושפע מהסובבים אותו- חלקם טובים וחלקם רעים והוא יסתמך על ליבו ונשמתו כדי למצוא את דרכו בעולם ולהיות אדון לעצמו. אולם יש דבר אחד שעושה את צ''אפי שונה מכל אחד אחר- הוא רובוט. צ''אפי הוא הרובוט הראשון עם היכולת לחשוב ולהרגיש בעצמו. זה צעד מסוכן ומאתגר שיעמת את צ''אפי עם כוחות חזקים והרסניים שרוצים להבטיח שהוא אחרון מסוגו.', 149, 2015),
(77, 'Need for Speed', 'Fresh from prison, a street racer who was framed by a wealthy business associate joins a cross country race with revenge in mind. His ex-partner, learning of the plan, places a massive bounty on his head as the race begins...', 'images/movies/146987.jpg', 'images/movies/655979.jpg', '6.6', '2015-12-29 11:27:52', '2016-02-05 09:47:04', 'https://www.youtube.com/watch?v=u3wtVI-aJuw', 0, 'הצורך במהירות', 'רק עתה השתחרר מהכלא, רוכב רחוב שהופלל על ידי שותף עסקי עשיר מצטרף למירוץ קרוס קאנטרי עם מחשבה לנקמה בשותפו לשעבר, למידה של התוכנית מציבה שלל רעיונות בראשו כאשר המרוץ מתחיל', 145, 2014),
(78, 'Shrek', 'Once upon a time, in a far away swamp, there lived an ogre named Shrek (Mike Myers) whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad (John Lithgow). Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona (Cameron Diaz) to be Farquaad''s bride. Rescuing the Princess may be small compared to her deep, dark secret.', 'images/movies/671228.jpg', 'images/movies/138917.jpg', '7.9', '2015-12-29 15:00:14', '2016-02-05 10:05:46', 'https://www.youtube.com/watch?v=W37DlG1i61s', 0, 'שרק', 'שרק הוא מפלצת שחיה לה בביצה מרוחקת ויום אחד פולשים יצורי אגדות מעצבנים , עכבר עיר, זאב ענק ושלושה חזירונים, כולם גורשו מממלכתם ע"י הלורד פארקד הרשע והגיעו להשתקע בביתו של שרק. על מנת להציל את ביתם של היצורים, שרק חותם על עסקה וכך פארקד הרשע, ויוצא להציל את הנסיכה פיונה, אותה מיועד פארקד להיות לכלת. פרודיה אולטימטיבית על כל אגדות דיסני, סרט פנטזיה דלא דומה לשום סרט.', 143, 2001),
(79, 'Shrek 2', 'Princess Fiona''s parents invite her and Shrek to dinner to celebrate her marriage. If only they knew the newlyweds were both ogres.', 'images/movies/325656.jpg', 'images/movies/253527.jpg', '7.2', '2015-12-29 15:25:01', '2016-02-05 10:01:35', 'https://www.youtube.com/watch?v=V6X5ti4YlG8', 0, 'שרק 2', 'תקציר העלילה[עריכת קוד מקור | עריכה]\r\nהסרט מתחיל כאשר מישהו מספר את מה שקרה לפיונה וכהוא עוצר בסיפור הנסיך מקסים בנה של הפיה הסנדקית מופיע עם סוסו ופוגש את הזאב בטעות שחושב שהוא פיונה, בסרט ההמשך, הזוג הטרי שרק ופיונה חוזרים לביצה שלהם לאחר ירח דבש. ביחד עם דונקי, החמור המדבר והמעצבן. הם מקבלים הזמנה מפתיעה של המלך והמלכה - הוריה של פיונה - אל ארצם כדי לקבל את ברכתם על החתונה, שרק ופיונה חוששים כיצד יגיבו ההורים, לאחר שיראו עם מי התחתנה ביתם ומה קרה לה כתוצאה מכך - והם צודקים, רק לאחר הגעתם לארץ "הרחק הרחק מכאן" מגלה פיונה שהיא הייתה בכלל מאורסת, לנסיך יפה תואר, מקסים, שלא מוכן לוותר על המלכות.', 146, 2004),
(80, 'Shrek the Third', 'When his new father-in-law, King Harold falls ill, Shrek is looked at as the heir to the land of Far, Far Away. Not one to give up his beloved swamp, Shrek recruits his friends Donkey and Puss in Boots to install the rebellious Artie as the new king. Princess Fiona, however, rallies a band of royal girlfriends to fend off a coup d''etat by the jilted Prince Charming.', 'images/movies/689088.jpg', 'images/movies/895186.jpg', '6.1', '2015-12-29 16:11:51', '2016-02-05 09:58:12', 'https://www.youtube.com/watch?v=3aZXVzUQGA4', 0, 'שרק השלישי', 'כאשר המלך הרולד נופל למשכב כולם בוחנים כיצד שרק ימלא את מקומו כיורש של ארץ האגדות. שרק לא מוכן לוותר על הביצה החביבה עליו ובעזרת חבריו החמור והחתול במגפיים יוצא למצוא יורש חדש. בינתיים הנסיכה פיונה וחברותיה יוצאות למאבק נגד הנסיך צ''ארמינג.', 144, 2007),
(81, 'Shrek Forever After', 'Rumpelstiltskin tricks a mid-life crisis burdened Shrek into allowing himself to be erased from existence and cast in a dark alternate timeline where Rumpel rules supreme.', 'images/movies/714237.jpg', 'images/movies/479307.jpg', '6.4', '2015-12-29 18:39:02', '2016-02-05 09:56:23', 'https://www.youtube.com/watch?v=u7__TG7swg0', 0, 'שרק לנצח', 'הרכיבו את משקפי התלת ממד ובואו לארץ האגדות לכבוד החלק הרביעי והאחרון בהחלט בהרפתקאות המפלץ הירוק והריחני הכי מפורסם בעולם - שרק, אהובתו פיונה, חמור וחתלתול במגפיים. הסיפור נפתח כשלשרק נמאס מחיי הפרסום והמשפחתיות שלו והוא מביע משאלה שהכל יהיה כמו פעם, ולו ליום אחד. לרוע מזלו משאלתו מתגשמת, והוא עובר למציאות מקבילה בה הוא פושע מבוקש, ואהובתו וחבריו לא מכירים אותו. הוא יוצא למשימה להחזיר את הגלגל אחורנית ולהציל את חייו ואת ארץ האגדות מחורבן.', 144, 2010),
(82, 'Burnt', 'Adam Jones (Bradley Cooper) was once a top chef in Paris until drugs and alcohol led to a meltdown that put his career on hold. After moving from New Orleans to London, Adam gets a shot at redemption when his former maitre d'' (Daniel Brühl) reluctantly hires him as the head chef of his fine-dining restaurant. Demanding perfection from his newly formed staff (Sienna Miller, Omar Sy), the acerbic and temperamental Jones gets a second chance to fulfill his dream of earning a third Michelin star.', 'images/movies/154025.jpg', 'images/movies/707004.jpg', '6.7', '2015-12-31 10:24:38', '2016-02-05 09:34:49', 'https://www.youtube.com/watch?v=IiGJlUVQDGk', 0, 'משחק באש', 'אדם ג''ונס הוא שף שהרס לעצמו את הקריירה עם סמים והתנהגות מתנשאת. הוא חי כמו כוכב רוק עם מסעדה בעלת 2 כוכבי מישלן והמון הרגלים רעים. הדבר היחיד שחשוב לאדם הוא ליצור טעמים יוצאי דופן, ועל מנת לזכות בכוכב המישלן השלישי הוא חוזר ללונדון וזקוק לצוות הטוב ביותר שיוכל להשיג.', 146, 2015),
(83, 'Irrational Man', 'At the small-town New England college campus of Braylin, philosophy professor Abe Lucas (Joaquin Phoenix) finds himself in an existential crisis, but he eventually discovers a new purpose in life when he enters into a relationship with Jill Pollard (Emma Stone), one of his students. Jill''s boyfriend Roy (Jamie Blackley) gets fed up with Jill''s talking about Abe all the time, and reluctantly breaks off his relationship with her.', 'images/movies/125027.jpg', 'images/movies/656792.jpg', '6.7', '2015-12-31 13:43:52', '2016-02-05 09:34:39', 'https://www.youtube.com/watch?v=hP8mPkyBntw', 0, 'איש ללא היגיון', 'פרופסור נודע לפילוסופיה, שמאמין שאת השיעור האמיתי לומדים מהחיים ולא מהספרים, חווה משבר אישי, עוזב את האוניברסיטה היוקרתית בה הוא מלמד ועובר למכללה נידחת. שם הוא פוגש בסטודנטית צעירה ומבריקה ובפרופסור שמחפשת לברוח מחיי היום האפרוריים, אשר נלחמות על לבו. אבל מה שבאמת מלהיב את הפרופסור הוא לבצע את הפשע המושלם - פשע ללא מניע, אך כזה שיהפוך את העולם לטוב יותר.', 145, 2015),
(84, 'American Ultra', 'Small-town stoner Mike Howell (Jesse Eisenberg) spends most of his time getting high and writing a graphic novel. What Mike doesn''t know is that he was trained by the CIA to be a lethal killing machine. When the agency targets him for termination, his former handler activates his latent skills, turning the mild-mannered slacker into a deadly weapon. Now, the utterly surprised Mike must use his newfound abilities to save himself and his girlfriend from getting smoked.', 'images/movies/536376.jpg', 'images/movies/730522.jpg', '6.1', '2015-12-31 13:59:40', '2016-02-05 09:34:27', 'https://www.youtube.com/watch?v=bLGFwkRx2HA', 0, 'אמריקן אולטרה', 'בחור מסומם שהוא למעשה סוכן ממשלתי, מסומן לחיסול עקב היותו סיכון מיותר. הבעיה היא שהממשלה אימנה אותו טוב מדי, מה שמציב את הממשלה בבעיה רצינית בניסיון לחסלו.', 147, 2015),
(85, 'The Condemned 2', 'The Condemned 2 is a 2015 American action film directed by Roel Reiné and released by WWE Studios. The film stars Randy Orton, Eric Roberts, Wes Studi and Steven Michael Quezada.', 'images/movies/822998.jpg', 'images/movies/555555.jpg', '4.3', '2015-12-31 14:59:29', '2016-02-05 09:34:17', 'https://www.youtube.com/watch?v=v_f1sm1LpuE', 0, 'הנידונים למוות 2', 'צייד-ראשים לשעבר מוצא עצמו בתוך טורניר של נידונים למוות, בו אסירים הנידונו למוות ננטשים במקום מבודד ונלחמים אחד בשני, בזמן שהם מצולמים ומשודרים בכל רחבי העולם. רק מי שישאר אחרון יזכה להיות שוב אדם חופשי.', 146, 2015),
(86, 'The Longest Ride', 'Former bull-riding champion Luke (Scott Eastwood) and college student Sophia (Britt Robertson) are in love, but conflicting paths and ideals threaten to tear them apart: Luke hopes to make a comeback on the rodeo circuit, and Sophia is about to embark on her dream job in New York''s art world. As the couple ponder their romantic future, they find inspiration in Ira (Alan Alda), an elderly man whose decades-long romance with his beloved wife withstood the test of time.', 'images/movies/231763.jpg', 'images/movies/949870.jpg', '7.1', '2016-01-03 06:35:12', '2016-02-05 09:33:57', 'https://www.youtube.com/watch?v=FUS_Q7FsfqU', 0, 'אהבה למרחקים ארוכים', '"אהבה למרחקים ארוכים" מגולל את סיפורם של לוק (סקוט איסטווד) וסופיה (בריט רוברטסון), זוג צעיר שדרכיהם מצטלב זה בזה עם איירה הזקן, שמתחיל לחוות תעתועים הגורמים לו להיזכר בכל הרגעים המיוחדים שלו ושל אישתו המנוחה, וזה קורה לאחר שאיירה עושה תאונה ונלכד במכוניתו באמצע סופת שלגים.', 147, 2015),
(87, 'Bone Tomahawk', 'In the Old West, a sheriff (Kurt Russell), his deputy (Richard Jenkins), a gunslinger (Matthew Fox),and a cowboy (Patrick Wilson) embark on a mission to rescue three people from a savage group of cave dwellers.', 'images/movies/652997.jpg', 'images/movies/481110.jpg', '7.1', '2016-01-03 06:51:26', '2016-02-05 09:33:36', 'https://www.youtube.com/watch?v=0ZbwtHi-KSE', 0, 'טומהוק העצמות', 'ארבעה גברים יצאו למערב הפרוע כדי להציל קבוצה של שבויים מתושבי מערות קניבלים', 147, 2015),
(88, 'Legend', 'The film tells the story of the identical twin gangsters Reggie and Ronnie Kray, two of the most notorious criminals in British history, and their organised crime empire in the East End of London during the 1960s.', 'images/movies/649675.jpg', 'images/movies/699054.jpg', '7.2', '2016-01-03 07:04:05', '2016-02-18 19:15:25', 'https://www.youtube.com/watch?v=yI3v6KfR9Mw', 0, 'אגדת האחים קריי', 'מבוסס על סיפור אמיתי. לונדון בשנות ה- 60 הייתה מרכז האופנה, התרבות והמתירנות שהפיצה את בשורת המהפכה לכל העולם. במקביל ומתחת לפני השטח, מי שניהלו את העיר למעשה הם אחים תאומים ששלטו בה דרך עסקי המאפיה שלהם - התאומים הידועים לשמצה רג''י ורוני קריי. ככל שאחיזתם בעיר גדלה, כך גם מאבקי הכוח, הטירוף המוחלט ואישה אחת הבקיעו את החומה המאוחדת שהפגינו האחים.', 150, 2015),
(89, 'Gone Girl', 'In Carthage, Mo., former New York-based writer Nick Dunne (Ben Affleck) and his glamorous wife Amy (Rosamund Pike) present a portrait of a blissful marriage to the public. However, when Amy goes missing on the couple''s fifth wedding anniversary, Nick becomes the prime suspect in her disappearance. The resulting police pressure and media frenzy cause the Dunnes'' image of a happy union to crumble, leading to tantalizing questions about who Nick and Amy truly are.', 'images/movies/356568.jpg', 'images/movies/925174.jpg', '8.2', '2016-01-03 17:36:29', '2016-02-05 09:46:21', 'https://www.youtube.com/watch?v=Ym3LB0lOJ0o', 0, 'נעלמת', 'סרטו החדש של הבמאי דיוויד פינצ''ר המבוסס על רב המכר של הסופרת ג''יליאן פלין - חושף את הסודות בלב ליבם של חיי נישואים מודרניים. במהלך חגיגות יום הנישואין החמישי שלו, ניק דאן (בן אפלק) מדווח על היעלמותה של אישתו היפה, איימי (רוזמונד פייק). תחת לחצים מצד המשטרה והקרקס התקשורתי סביבו, תדמית חיי הנישואים שלו מתחילה להתפורר. שקריו והתנהגותו החשודה גורמים לכולם לשאול את אותה שאלה אפלה: האם ניק רצח את אשתו?', 146, 2014),
(90, 'Dumb and Dumber', 'Imbecilic best friends Lloyd Christmas (Jim Carrey) and Harry Dunne (Jeff Daniels) stumble across a suitcase full of money left behind in Harry''s car by Mary Swanson (Lauren Holly), who was on her way to the airport. The pair decide to go to Aspen, Colo., to return the money, unaware that it is connected to a kidnapping. As Harry and Lloyd -- who has fallen in love with Mary -- are pursued across the country by hired killers and police, they find both their friendship and their brains tested.', 'images/movies/411686.jpg', 'images/movies/221769.jpg', '7.3', '2016-01-04 07:17:30', '2016-02-05 10:08:36', 'https://www.youtube.com/watch?v=l13yPhimE3o', 0, 'טיפשים בלי הפסקה', 'לויד והארי הם שני אנשים שהטיפשות שלהם לא תתואר. כאשר מרי, אישה יפיפיה מאבדת מזוודה חשובה שבה כסף לפני נסיעתה לאספן שבקולורדו. שני החברים (שמצאו את המזוודה) מחליטים להחזיר לה אותה. אחרי המסע הארוך והמלא הרפתקאות (שבדרך אגב הם ביזבזו את כל הכסף) הם מגיעים לאספן ורבים על ליבה של מרי.', 144, 1994),
(91, 'Dumb and Dumber To', 'Twenty years since their first adventure, Lloyd and Harry go on a road trip to find Harry''s newly discovered daughter, who was given up for adoption.', 'images/movies/552982.jpg', 'images/movies/194770.jpg', '5.7', '2016-01-04 07:51:13', '2016-02-05 09:45:55', 'https://www.youtube.com/watch?v=lGXHVlEklgQ', 0, 'טיפשים בלי הפסקה 2', '20 שנה לאחר ההרפתקה הקודמת שלהם, יוצאים החברים הטובים בעלי לב הזהב ומוח הציפור הארי ולויד להרפתקה חדשה בעקבות בתו האבודה של לויד.', 145, 2014),
(92, 'Star Wars: Episode I - The Phantom Menace', 'Two Jedi Knights escape a hostile blockade to find allies and come across a young boy who may bring balance to the Force, but the long dormant Sith resurface to reclaim their old glory.', 'images/movies/134518.jpg', 'images/movies/962751.jpg', '6.5', '2016-01-04 08:11:17', '2016-02-05 10:07:28', 'https://www.youtube.com/watch?v=I6hOlI9cg4o', 0, 'מלחמת הכוכבים: פרק 1 - אימת הפנטום', 'סוף סוף הגיע אל מסכינו הקאלט האמריקאי שכל הקיץ מדברים עליו. בארה"ב הוא כבר הכניס קופה יפה ועכשיו תורינו להתענג על עלילות לוחמי האור והחושך - לוחמי הג’דיי של היקום - כמו שלא היכרנו מעודינו! אובי וואן קנובי (מק’גרגור) וקווי-גון ג’ין (ניסן) ינסו להציל את הכוכב נאבו - בו שולטת המלכה אמידלה (פורטמן המרשימה) מהשתלטות כלכלית וצבאית של שוחרי רעות מהרפובליקה הגלקטית.', 144, 1999),
(93, 'Star Wars: Episode II - Attack of the Clones', 'Ten years after initially meeting, Anakin Skywalker shares a forbidden romance with Padmé, while Obi-Wan investigates an assassination attempt on the Senator and discovers a secret clone army crafted for the Jedi.', 'images/movies/195829.jpg', 'images/movies/772710.jpg', '6.7', '2016-01-04 10:02:39', '2016-02-05 10:03:57', 'https://www.youtube.com/watch?v=gYbW1F_c9eM', 0, 'מלחמת הכוכבים: פרק 2 - מתקפת המשובטים', 'הפרק השני בסדרה הבלתי גמורה של מלחמת הכוכבים מבית היוצר של ג`ורג` לוקאס. עשר שנים לאחר מאורעות אימת הפאנטום, לא רק הגלקסיה עברה שינויים מהותיים, אלא גם הגיבורים, אובי ואן קאנובי, הנסיכה אמידאלה ואנאקין סקייווקר. הם נזרקים לאותה מערכה בפעם הראשונה מאז פלישת הפדרציה לקיסרות נאבו.אנאקין גדל להיות ג`דיי מתלמד בהנחייתו של אובי ואן שהפךבעצמו מתלמיד למורה. שני הג`דיי ממונים להגנת הנסיכה אמאדילה, המקבלת איומים על חייה מפלגים פוליטיים בדלניים.בזמן שמערכות יחסים נרקמות וכוחות על מתנגשים, הגיבורים נדרשים לעשות מספר החלטות, שלא רק ישפיעו על גורלם שלהם אלא גם על גורלה ועתידה של הרפובליקה.', 144, 2002),
(94, 'Star Wars: Episode III - Revenge of the Sith', 'During a space battle over Coruscant between the Galactic Republic and the Separatists, Jedi Knights Obi-Wan Kenobi and Anakin Skywalker lead a mission to rescue the kidnapped Supreme Chancellor Palpatine from Separatist commander General Grievous. After infiltrating Grievous'' flagship, the Jedi fight Count Dooku with lightsabers, which ends with Anakin killing Dooku at Palpatine''s urging. Grievous flees the battle-torn cruiser, which the Jedi crash-land on Coruscant. There, Anakin reunites with his wife, Padmé Amidala, who reveals she is pregnant. Initially excited, Anakin begins to have premonitions of Padmé dying in childbirth.', 'images/movies/988540.jpg', 'images/movies/860756.jpg', '7.7', '2016-01-04 13:51:08', '2016-02-05 09:59:57', 'https://www.youtube.com/watch?v=ICsryK_w9P0', 0, 'מלחמת הכוכבים - פרק 3: נקמת הסית''', 'הרפובליקה המשגשגת דעכה. השליט הכל יכול והנערץ פנה אל הצד האפל והפך לרודן שנוא, כשהוא משליט שלטון טרור. בעוד שתומכיו המתמעטים נהנים עדיין מרווחה ושגשוג משביע רצון, תחושת הייאוש הלכה ופשטה בכל. אפילו נאמני הממלכה האדוקים ביותר לחשו, בינם לבין עצמם, כי הימים היפים הלכו לבלי שוב, וכי כל שנשאר לקוות לו עוד הוא רגע אחד של גדולה, רגע אחד שיזכיר את תהילת העבר, לפני הסוף הבלתי נמנע.', 144, 2005),
(95, 'Undisputed 2: Last Man Standing', 'Sequel to the 2002 film. This time, Heavyweight Champ George "Iceman" Chambers is sent to a Russian Jail on trumped-up drug charges.', 'images/movies/590485.jpg', 'images/movies/586114.jpg', '7.1', '2016-01-05 11:13:56', '2016-02-05 09:58:53', 'https://www.youtube.com/watch?v=PaWj9b1av1o', 0, 'אלוף ללא עוררין 2: האיש שעומד אחרון', 'סרט ההמשך ללהיט משנת 2002 שאז ג''ורג'' צ''יימברס (מייקל ג''יי ווייט) נשלח לכלא לרצות עונש על אונס שהוא לא ביצע, הפעם ג''ורג'' צ''יימברס "איש הקרח" האלוף במשקל כבד נשלח לכלא ברוסיה בכדי לחשוף סוחר סמים מסוכן מאד. אך החיים של ג''ורג'' לא הולכים להיות קלים, כאשר פעם נוספת הוא יצתרך להוכיח לכולם בתוך כותלי בית הכלא, האם הוא באמת עדיין האלוף.', 144, 2006),
(96, 'Undisputed 3: Redemption', 'Boyka is back. This time he is fighting in the first ever inter-prison tournament with one knee.', 'images/movies/802722.jpg', 'images/movies/606301.jpg', '7.5', '2016-01-05 14:34:30', '2016-02-05 09:56:11', 'https://www.youtube.com/watch?v=6u8IA35-vz8', 0, 'אלוף ללא עוררין 3: גאולה (בלתי מנוצח)', 'זהו המשך של חלק השני כאשר בסוף חלק השני אסיר רוסי בשם בויקה נפגע בברך ובעיקבות כך צולע. האסיר הרוסי בויקה איבד את מעמדו כשליט בית הסוהר. מעמדו ירד כל כך שעכשיו הוא מנקה את בתי השימוש, אבל כשנפתח טורניר חדש בן לאומי מכל בתי הסוהר ברחבי העולם שהפרס בו הוא שיחרור, בויקה חייב לזכות בתואר שלו מחדש.', 144, 2010),
(97, 'Toy Story', 'Woody (Tom Hanks), a good-hearted cowboy doll who belongs to a young boy named Andy (John Morris), sees his position as Andy''s favorite toy jeopardized when his parents buy him a Buzz Lightyear (Tim Allen) action figure. Even worse, the arrogant Buzz thinks he''s a real spaceman on a mission to return to his home planet. When Andy''s family moves to a new house, Woody and Buzz must escape the clutches of maladjusted neighbor Sid Phillips (Erik von Detten) and reunite with their boy.', 'images/movies/642198.jpg', 'images/movies/862277.jpg', '8.3', '2016-01-06 09:56:30', '2016-02-05 10:08:13', 'https://www.youtube.com/watch?v=KYz2wyBy3kc', 0, 'צעצוע של סיפור', 'הסרט שנכנס להיסטוריה כראשון בעולם שנעשה באנימציית מחשב, גם ריתק צופים רבים לעולם הדמיון של הצעצועים. וודי (קאובוי) ובאז לייטאור (איש חלל) הם צעצועים יריבים המתחרים על ליבו של בעליהם. כשהם נופלים בטעות לידיו של ילד אחר, בריון השכונה, עליהם להתאחד כדי לברוח ולחזור לביתם. הרגשת הקסם והדמיון המופלא תלווה אתכם בכל צפייה בסרט, שזכה לפרס אוסקר מיוחד על ההישג ההיסטורי של הבמאי ג''ון לסטר. טום הנקס וטים אלן הם בין הקולות בסרט.', 145, 1995),
(98, 'Toy Story 2', 'Woody (Tom Hanks) is stolen from his home by toy dealer Al McWhiggin (Wayne Knight), leaving Buzz Lightyear (Tim Allen) and the rest of the gang to try to rescue him. But when Woody discovers that he''s actually a valuable collectible from a once-popular television show called "Woody''s Roundup" and is reunited with his horse Bullseye, Jessie the yodeling cowgirl (Joan Cusack) and his faithful sidekick, Stinky Pete the Prospector (Kelsey Grammer), he doesn''t want to leave.', 'images/movies/488009.jpg', 'images/movies/333523.jpg', '7.9', '2016-01-06 10:03:30', '2016-02-05 10:07:16', 'https://www.youtube.com/watch?v=IPHFx2wwzMg', 0, 'צעצוע של סיפור 2', 'צעצועים יישארו צעצועים - לבד מהרגעים שבעליהם אינם בסביבה - וכעת החבורה של חדר המשחקים של אנדי מוכנה ומזומנה לצאת למשחק נוסף ב"צעצוע של סיפור 2", סרט ההמשך ליצירת אנימציה שהפכה בשנת 1995 לציון דרך בתחום הקסום והמרתק הזה. אל באז, וודי ועוד צעצועים מוכרים מצטרפות כעת דמויות חדשות וצבעוניות וכולם ממלאים את המסך בהרפתקה קומית ומלאת פעולה והפתעות.', 144, 1999),
(99, 'Toy Story 3', 'With their beloved Andy preparing to leave for college, Woody (Tom Hanks), Buzz Lightyear (Tim Allen), Jessie (Joan Cusack), and the rest of the toys find themselves headed for the attic but mistakenly wind up on the curb with the trash. Woody''s quick thinking saves the gang, but all but Woody end up being donated to a day-care center. Unfortunately, the uncontrollable kids do not play nice, so Woody and the gang make plans for a great escape.', 'images/movies/925021.jpg', 'images/movies/884467.jpg', '8.4', '2016-01-06 10:08:38', '2016-02-05 09:55:58', 'https://www.youtube.com/watch?v=JcpWXaA2qeg', 0, 'צעצוע של סיפור 3', 'באז שנות אור, מוכרח לנסוע לטייוואן לאחר כשל רציני במערכות. כשהיוצרים מחליטים להשמיד את באז ואת כל דומיו, יוצאים כל הצעצועים מחדרו של אנדי בהנהגתו של וודי היישר לטייוואן במטרה להציל את באז.', 144, 2010),
(100, 'Unfaithful', 'Described by director Adrian Lyne ("Fatal Attraction") as "an erotic thriller about the body language of guilt." When Edward (Richard Gere) innocently learns that his wife Connie (Diane Lane) has lied to him about an affair, suspicion propels him to uncover the devastating details of her infidelity. Tormented by the knowledge, he confronts her lover, only to discover a level of rage within himself that he could never have imagined.', 'images/movies/894585.jpg', 'images/movies/483588.jpg', '6.7', '2016-01-06 10:46:01', '2016-02-05 10:03:41', 'https://www.youtube.com/watch?v=bMfkY9fAOCc', 0, 'בוגדת', 'גרסה מחודשת לסרטו של קלוד שברול משנת 1969. אדוארד וקני סאמר (ריצ''רד גיר ודיאן לייו) הם זוג נשוי מהפרברים, אך כשקוני מתחילה ברומן עם גבר ממנהטן, אד מגלה ובסופו של דבר רוצח את הבחור. מכאן, הנישואים המושלמים של הזוג מקבלים תפנית, והופכים למערכת יחסים מורכבת ומותחת.', 145, 2002),
(101, 'Undisputed', 'Tells the story of an undefeated world-champion prize fighter (Ving Rhames) who is convicted of rape and sent to prison, where he must confront and ultimately fight the reigning prison boxing champion (Wesley Snipes). One man fighting for his honor, another fighting for his future ... only one will emerge from the ring "Undisputed."', 'images/movies/448784.jpg', 'images/movies/173583.jpg', '6.1', '2016-01-06 11:09:40', '2016-02-05 10:03:25', 'https://www.youtube.com/watch?v=bZTcBJFgNZ0', 0, 'אלוף ללא עוררין', 'ג''ורג'' צ''יימברס הוא מתאגרף במשקל כבד מהשורה הראשונה. עולמו חרב עליו כשהוא נאשם באונס ונשלח לכלא. שם הוא שומע על מונרו האצ''נסון - אלוף בית הסוהר מזה 10 שנים. צ''ימברס לא מוכן להיות במקום השני והדבר מוביל לקרבות אליפות על התואר הנכסף.', 144, 2002),
(102, 'The Hunger Games: Catching Fire', 'After arriving safely home from their unprecedented victory in the 74th Annual Hunger Games, Katniss Everdeen (Jennifer Lawrence) and Peeta Mellark (Josh Hutcherson) discover that they must do a quick turnaround and begin a Victors Tour. As she and Peeta travel throughout the districts, Katniss senses a rebellion is stirring. However, President Snow (Donald Sutherland) proves that he is still very much in control when word comes of a cruel change in the rules for the upcoming 75th Hunger Games.', 'images/movies/424180.jpg', 'images/movies/612250.jpg', '7.6', '2016-01-06 11:37:15', '2016-02-05 09:50:57', 'https://www.youtube.com/watch?v=PH-n39PCXp8', 0, 'משחקי הרעב: התלקחות', 'קטניס אוורדין חוזרת הביתה בבטחה לאחר שזכתה במשחקי הרעב השנתיים, ה-74 במספר, עם חברה לשבט פיטה מלארק. משמעות ניצחונם היא שעליהם לעזוב את משפחתם ואת חבריהם הקרובים ולצאת ל"מסע ניצחון" במחוזות השונים. לאורך הדרך קטניס חשה שמתקומם מרד, אבל הקפיטול עדיין בשליטה כשהנשיא סנואו מתכונן לתחרות משחקי הרעב ה-75 – תחרות שעשויה לשנות את פאנם לנצח.', 145, 2013),
(103, 'Hoodwinked Too! Hood vs. Evil', 'While training with a mysterious covert ops group known as the Sisters of the Hood, Red (Hayden Panettiere) gets an urgent call from Nicky Flippers (David Ogden Stiers), head of the top-secret Happily Ever After Agency. A wicked witch (Joan Cusack) has kidnapped Hansel (Bill Hader) and Gretel (Amy Poehler), and Red''s the only one who can save them. Accompanied by the Big Bad Wolf (Patrick Warburton) and Wolf''s pal, Twitchy (Cory Edwards), Red sets out to bring the children back.', 'images/movies/188856.jpg', 'images/movies/447997.jpg', '4.8', '2016-01-09 18:08:03', '2016-02-05 09:54:59', 'https://www.youtube.com/watch?v=8fXd2rc77ms', 0, 'כיפה אדומה סוגרת חשבון', 'המשך של סרט האנימציה משנת 2004. כיפה אדומה מאומנת במדינה רחוקה ע"י קבוצה סודית שנקראת "אחיות הברדסים", כאשר היא והזאב נקראים לחקור יחד את היעלמותם של עמי ותמי.', 144, 2011),
(104, '300: Rise of an Empire', 'While King Leonidas and his 300 Spartans have their date with destiny at Thermopylae, another battle against the Persians is brewing, this time at sea. Themistocles (Sullivan Stapleton), a Greek general, sees the threat posed by the God-King Xerxes of Persia. He knows that he must unite all of Greece if he is to stand any chance of repelling the Persian invasion. Even if he accomplishes his mission, Themistocles must still face Artemisia (Eva Green), the ruthless leader of the Persian armada.', 'images/movies/569444.jpg', 'images/movies/626546.jpg', '6.3', '2016-01-09 18:15:14', '2016-02-05 09:45:41', 'https://www.youtube.com/watch?v=2zqy21Z29ps', 0, '300: עלייתה של האימפריה', '"300: עלייתה של האימפריה" היינו סרט ההמשך לסרט "300" אשר מגולל את סיפורו של הגנרל היווני דמיסטוקלס אשר נלחם בצבא פרסי אשר פולש ליוון ואותו מדריך קסרקסס, אשר היה לבן תמותה והפך לאל.', 145, 2014),
(105, 'Inception', 'Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people''s dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone''s mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb''s every move.', 'images/movies/392306.jpg', 'images/movies/679660.jpg', '8.8', '2016-01-09 18:23:33', '2016-02-05 09:55:43', 'https://www.youtube.com/watch?v=8hP9D6kZseM', 0, 'התחלה', 'Dom קוב (ליאונרדו דיקפריו) הוא גנב עם היכולת הנדירה להיכנס החלומות של אנשים ולגנוב את הסודות שלהם מהתת המודע שלהם. המיומנות שלו הפכה אותו לסחורה חמה בעולם של ריגול תעשייתי, אך גם עלתה לו בכל מה שהוא אוהב. קוב מקבל הזדמנות בגאולה כאשר הוא הציע משימה בלתי אפשרית לכאורה: לשתול רעיון במוחו של מישהו. אם הוא יצליח, זה יהיה הפשע המושלם, אבל אויב מסוכן צופה של קוב כל מהלך.', 145, 2010);
INSERT INTO `movies` (`id`, `name`, `description`, `image`, `big_image`, `imdb_rating`, `created_at`, `updated_at`, `trailer`, `popular`, `heb_name`, `heb_desc`, `view`, `year`) VALUES
(106, 'Interstellar', 'In Earth''s future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth''s population to a new home via a wormhole. But first, Brand must send former NASA pilot Cooper (Matthew McConaughey) and a team of researchers through the wormhole and across the galaxy to find out which of three planets could be mankind''s new home.', 'images/movies/650526.jpg', 'images/movies/950575.jpg', '8.6', '2016-01-10 06:24:15', '2016-02-18 18:37:25', 'https://www.youtube.com/watch?v=zSWdZVtXT7E', 0, 'בין כוכבים', 'סרטו החדש של כריסטופר נולאן הוא סרט מדע בדיוני על מסע בחלל של חבורת חוקרים העוברים דרך "חור תולעת" למימד אחר. מבוסס על עובדות מדעיות ממשיות, הסרט יחקור את הצדדים המדהימים של החורים השחורים ואת כוח המשיכה, ויציג כמה מהתיאוריות המדעיות שאלברט איינשטיין ניסה להוכיח ללא הצלחה.', 146, 2014),
(107, 'The Shawshank Redemption', 'Andy Dufresne (Tim Robbins) is sentenced to two consecutive life terms in prison for the murders of his wife and her lover and is sentenced to a tough prison. However, only Andy knows he didn''t commit the crimes. While there, he forms a friendship with Red (Morgan Freeman), experiences brutality of prison life, adapts, helps the warden, etc., all in 19 years.', 'images/movies/142008.jpg', 'images/movies/327690.jpg', '9.3', '2016-01-10 06:44:33', '2016-02-05 10:08:27', 'https://www.youtube.com/watch?v=6hB3S9bIaco', 0, 'חומות של תקווה', 'למרות שידו לא הייתה במעל, נשלח אנדי, בנקאי צעיר ומכובד, למאסר-עולם בעוון רצח אשתו ומאהבה. את סיפור 19 השנים הבאות אנו שומעים בקולו של רד, אסיר שחור שגם הוא נידון לתקופה ארוכה. מאסיר מושפל הופך אנדי ליועץ המס של מנהל הכלא, והתפקיד הזה מעניק לו כמה יתרונות.פרנק דרבונט (גרין מייל) מגיש סרט מהוקצע, אינטליגנטי ואירוני - כתוב היטב וצבוע בגוונים חמים - ומצליח אגב כך להתחמק מכל קלישאות הז''אנר, אבל מי שמחזיקים את עיקר מעמסת הסרט על כתפיהם הם טים רובינס (מיסטיק ריבר) ומורגן פרימן (שבעה חטאים) הנפלאים. עיבוד לנובלה של סטיבן קינג (בית קברות לחיות).', 145, 1994),
(108, 'The Amazing Spider-Man', 'Abandoned by his parents and raised by an aunt and uncle, teenager Peter Parker (Andrew Garfield), AKA Spider-Man, is trying to sort out who he is and exactly what his feelings are for his first crush, Gwen Stacy (Emma Stone). When Peter finds a mysterious briefcase that was his father''s, he pursues a quest to solve his parents'' disappearance. His search takes him to Oscorp and the lab of Dr. Curt Connors (Rhys Ifans), setting him on a collision course with Connors'' alter ego, the Lizard.', 'images/movies/243775.jpg', 'images/movies/730412.jpeg', '7.2', '2016-01-12 09:16:51', '2016-02-05 09:52:50', 'https://www.youtube.com/watch?v=oX9ZT3RbYE4', 0, 'ספיידרמן המופלא', 'הסרט "ספיידרמן המופלא" הינו תחילתה של טרילוגיה חדשה אשר מבוססת על שלושת הסרטים הקודמים אך מספרת על התמודדותו של פיטר פארקר (אנדרו גארפילד) מול ההבנה ואופן החיים יחד עם כוחות על חדשים אשר מקבל עקב אירוע חריג.', 144, 2012),
(109, 'Spider-Man', '"Spider-Man" centers on student Peter Parker (Tobey Maguire) who, after being bitten by a genetically-altered spider, gains superhuman strength and the spider-like ability to cling to any surface. He vows to use his abilities to fight crime, coming to understand the words of his beloved Uncle Ben: "With great power comes great responsibility."', 'images/movies/120902.jpg', 'images/movies/146169.jpg', '7.2', '2016-01-12 10:07:13', '2016-02-05 10:03:13', 'https://www.youtube.com/watch?v=O7zvehDxttM', 0, 'ספיידרמן', 'פיטר פארקר (מגווייר) הוא תלמיד תיכון מרובע הננשך על ידי עכביש רדיואקטיבי והופך לאחד מגיבורי העל האהובים ביותר בכל הזמנים: ספיידר-מן. הוא יכול לטפס על קירות ותקרות, לירות קורים ממפרקי ידיו ולפתח חוש עכבישי המזהיר אותו מסכנות שמתקרבות. בתחילה פיטר מנצל את כוחותיו בכדי לעשות כסף, אך לאחר שדודו נרצח הוא נשבע לעשות אתכל שביכולתו על מנת לנקום את מותו. באותו הזמן, איש העסקים והמדען נורמן אוסבורן (דפו) נחשף בתאונת עבודה לגז עצבים רעיל והופך להיות רשע בעל כוח עצום ופסיכוטיות בדוקה בשם "הגובלין הירוק". פיטר פארקר חייב להתמודד כעת עם שלושה דברים בחייו, עבודה חדשה בעיתון, הקרב עם "הגובלין הירוק" ועם החיזורים אחרי בת כיתתו היפהפייה, מרי ג''יין ווטסון (דאנסט), בה מעוניין גם חברו הטוב הארי אוסבורן (פרנקו), לא אחר מאשר בנו של "הגובלין הירוק". האם פיטר פארקר יוכל להתמודד עם הכל? האם ספיידר-מן יוכל לעשות זאת?', 144, 2002),
(110, 'Spectre', 'A cryptic message from the past leads James Bond (Daniel Craig) to Mexico City and Rome, where he meets the beautiful widow (Monica Bellucci) of an infamous criminal. After infiltrating a secret meeting, 007 uncovers the existence of the sinister organization SPECTRE. Needing the help of the daughter of an old nemesis, he embarks on a mission to find her. As Bond ventures toward the heart of SPECTRE, he discovers a chilling connection between himself and the enemy (Christoph Waltz) he seeks.', 'images/movies/537144.jpg', 'images/movies/771084.jpg', '7', '2016-01-12 11:06:02', '2016-02-05 09:32:45', 'https://www.youtube.com/watch?v=V_qDGeG2XZc', 0, 'ספקטר', 'הודעה סודית מעברו של בונד שולחת אותו למשימה לחשיפת ארגון מרושע. בזמן ש-"אם" נלחם בכוחות פוליטיים כדי להשאיר בפעולה את השירות החשאי, בונד מתאחד עם כמה פושעים כדי לחשוף את האמת הנוראית המסתתרת מאחורי "ספקטר".', 147, 2015),
(111, 'Men in Black', 'They are the best-kept secret in the universe. Working for a highly funded yet unofficial government agency, Kay (Tommy Lee Jones) and Jay (Will Smith) are the Men in Black, providers of immigration services and regulators of all things alien on Earth. While investigating a series of unregistered close encounters, the MIB agents uncover the deadly plot of an intergalactic terrorist who is on a mission to assassinate two ambassadors from opposing galaxies currently in residence in New York City.', 'images/movies/650390.jpg', 'images/movies/894124.jpg', '7.3', '2016-01-14 14:30:59', '2016-02-05 10:07:59', 'https://www.youtube.com/watch?v=HYUd7AOw_lk', 0, 'גברים בשחור', 'סרטו של בארי זוננפלד (משפחת אדאמס לדורותיה), על היחידה המיוחדת לטיפול בחיזרים החיים ביננו. וויל סמית הוא שוטר צעיר שרודף אחרי חשוד הנראה לו משונה קצת (ובצדק). טומי לי ג`ונס מ"היחידה", מגייס אותו לשורות ה - MIB (גברים בשחור), והשניים הם מקרה טיפוסי של "הזוג המוזר" - כלומר צוות שלא ממש ברור כיצד הם מתפקדים יחד. כמו כל אנשי היחידה, הם קוראים זה לזה בשמות קוד, לובשים חליפה שחורה סולידית (סמית: "ההבדל ביננו הוא שאני גורם לבגדים האלה להראות טוב"), ומטפלים בזכרונם של הסובבים אותם. קומדית מדע דיוני פעלתנית למדי, העוסקת באפשרות שהחיזרים כבר איתנו, מזמן ("תמיד טענתי שהמורה מכתה ג` באה ממאדים!").', 144, 1997),
(112, 'Men in Black II', 'Kay (Tommy Lee Jones) and Jay (Will Smith) reunite to provide our best line of defense against a seductress who levels the toughest challenge yet to the MIBs mission statement: protecting the earth from the scum of the universe. While investigating a routine crime, Jay uncovers a plot masterminded by Serleena (Boyle), a Kylothian monster who disguises herself as a lingerie model. When Serleena takes the MIB building hostage, there is only one person Jay can turn to -- his former MIB partner.', 'images/movies/113877.jpg', 'images/movies/886474.jpg', '6.1', '2016-01-14 14:43:22', '2016-02-05 10:02:43', 'https://www.youtube.com/watch?v=p4NJHqoojOU', 0, 'גברים בשחור 2', 'המשך לסרט הראשון, גם הפעם בבימויו של בארי זוננפלד (פרוע על המערב). משימתם החדשה של הסוכנים ג''יי (וויל סמית'', קשר בכל מחיר) וקיי (טומי לי ג''ונס, נעדרת) היא להציל את העולם (שוב), מאסון אינטר-גלאקטי! כאשר מפלצת במסווה של דוגמנית ללבני נשים (לארה פלין-בויל, האהבה שאחרי) מאיימת על השרדותו של הגזע האנושי, הגברים בשחור נכונים למשימה. כמובן שפראנק (החייזר בדמות הכלב), מתנדב לעזור.', 144, 2002),
(113, 'Black Mass', 'While his brother Bill (Benedict Cumberbatch) remains a powerful leader in the Massachusetts Senate, Irish hoodlum James "Whitey" Bulger (Johnny Depp) continues to pursue a life of crime in 1970s Boston. Approached by FBI agent John Connolly (Joel Edgerton), the lawman convinces Whitey to help the agency fight the Italian mob. As their unholy alliance spirals out of control, Bulger increases his power and evades capture to become one of the most dangerous gangsters in U.S. history.', 'images/movies/307834.jpg', 'images/movies/722140.jpg', '7.1', '2016-01-14 15:18:01', '2016-02-18 19:14:59', 'https://www.youtube.com/watch?v=CE3e3hGF2jc', 0, 'חוקי הפשע', 'סיפורו האמיתי של ג''יימס וויטי בולגר, הפושע האלים והידוע ביותר לשמצה בבוסטון של שנות ה-70 ואחיו של סנאטור בכיר. סוכן ה- FBI ג''ון קונולי משכנע את בולגר לשתף פעולה עם ה- FBI כדי לחסל אויב משותף: המאפיה האיטלקית. הברית ביניהם יוצאת משליטה ומאפשרת לווייטי להתחמק מאוכפי החוק, בעודו צובר כוח כדי להפוך לשליט האימה של עולם הפשע בבוסטון ולאחד המאפיונרים המסוכנים ביותר בהיסטוריה האמריקאית.', 148, 2015),
(114, 'Bridge of Spies', 'The story of James Donovan, a Brooklyn lawyer who finds himself thrust into the center of the Cold War when the CIA sends him on the near-impossible task to negotiate the release of a captured American U-2 pilot.', 'images/movies/901501.jpg', 'images/movies/654614.jpg', '7.8', '2016-01-18 08:49:13', '2016-02-18 18:27:09', 'https://www.youtube.com/watch?v=mBBuzHrZBro', 0, 'גשר המרגלים', 'ג''יימס דונובן (טום הנקס), עורך דין אמריקאי אשר מגוייס על ידי ה-CIA במטרה לחלץ טייס שבוי בברית המועצות בזמן המלחמה הקרה.', 146, 2015),
(115, 'Ted 2', 'Life has changed drastically for thunder buddies John (Mark Wahlberg), now a bachelor, and best pal Ted (Seth MacFarlane), now married to the woman (Jessica Barth) of his dreams. Problems arise when the couple decide to adopt a child, but the law declares Ted to be property and not a person. Angry and dejected, the lovably foulmouthed teddy bear must now seek legal help from a young lawyer (Amanda Seyfried) and a legendary, civil-rights attorney (Morgan Freeman) to get the justice he deserves.', 'images/movies/573865.jpg', 'images/movies/607403.jpg', '7', '2016-01-18 09:04:30', '2016-02-05 09:31:42', 'https://www.youtube.com/watch?v=3Vl5q06UElM', 0, 'טד 2', 'הפעם טד (סת'' מקפרלן) וג''ון (מארק וולברג) עדיין חיים את החלום בבוסטון, ג''ון רווק מאושר וטד מתחתן עם חברתו תמי- לין אותה הכיר בעבודתו כקופאי בסופרמרקט עוד בסרט הקודם. כאשר בעיות בחיי הנשואים הטריים מתחילות לצוץ, השניים מחליטים להביא ילד ראשון לעולם. תקוות הזוג נרמסות כאשר כמה עניינים טכניים עומדים בדרכם וגופי הממשל שוללים מטד את הזכות להיות הורה חוקי לילד. כעת נדרש טד לצאת למסע נגד גופי הממשל ולהוכיח בבית המשפט שהוא אנושי.', 145, 2015),
(116, 'Men in Black 3', 'Agent J (Will Smith) goes back in time and joins forces with Agent K''s (Tommy Lee Jones) younger self (Josh Brolin) to save his partner, the agency and mankind''s future.', 'images/movies/495332.jpg', 'images/movies/127070.jpg', '6.8', '2016-01-18 14:18:39', '2016-02-05 09:52:35', 'https://www.youtube.com/watch?v=IyaFEBI_L24', 0, 'גברים בשחור 3', 'הסוכן ג''יי (ויל סמית) והסוכן קיי (טומי לי ג''ונס) חוזרים... בדיוק בזמן! ג''יי כבר הספיק לראות כמה דברים לא שגרתיים ב-15 שנותיו בארגון, אבל שום דבר, אפילו חוצנים, לא מביך אותו כמו השותף המאופק שלו. אבל כשחייו של קיי וגורל כדור הארץ מונחים על כף המאזניים, הסוכן ג''יי חייב לחזור אחורה בזמן כדי לסדר את העניינים, לפני שיהיה מאוחר מדי. ג''יי מגלה שיש סודות ביקום שקיי מעולם לא גילה לו, סודות שנחשפים כאשר הוא פוגש את הסוכן קיי בצעירותו (ג''וש ברולין), ונאלץ להציל אותו, את הסוכנות ואת עתיד האנושות.', 144, 2012),
(117, 'Escape Plan', 'When a structural-security authority finds himself set up and incarcerated in the world''s most secret and secure prison, he has to use his skills to escape with help from the inside.', 'images/movies/353791.jpg', 'images/movies/600252.jpg', '6.7', '2016-01-18 17:03:19', '2016-02-05 09:49:59', 'https://www.youtube.com/watch?v=Gmt89TXjYBI', 0, 'תכנית בריחה', 'ריי ברסלין (סטאלון) הוא מהנדס בניין שהורשע בפשע שלא ביצע, כתוצאה מכך הוא נשלח לרצות את עונשו בכלא שמור שעוצב על-ידו. במהלך שהותו בכלא, ברסלין מגלה את החולשות השונות של מערך האבטחה, וכעת, הוא נעזר באמיל (ארנולד שוורצנגר), אסיר חכם ומלא רגש אשר נלחם כנגד אסירים אחרים על-מנת להישאר בחיים. אל השניים מצטרף האקר מומחה בפריצות מחשבים (פיפטי סנט), שגם הוא יעזור להם להימלט.', 144, 2013),
(118, 'Solace', 'A psychic works with the FBI in order to hunt down a serial killer.', 'images/movies/369440.jpg', 'images/movies/612803.jpg', '6.4', '2016-02-01 07:44:38', '2016-02-18 18:19:36', 'https://www.youtube.com/watch?v=Lq86v60c_Jo', 0, 'נחמה', 'לאחר סדרת רציחות מזוויעות, המשטרה מוצאת את עצמה חסרת אונים, ופונה כמוצא אחרון למדיום (אנתוני הופקינס) שיעזור להם בחקירתם על מנת לתפוס את הרוצח הסדרתי', 146, 2015),
(119, 'The Last Witch Hunter', 'The modern world holds many secrets, the most astounding being that witches still live among us. Centuries ago, Kaulder (Vin Diesel) managed to slay the all-powerful Witch Queen, decimating her followers in the process. Before her death, she cursed the valiant warrior with her own immortality, separating him from his beloved wife and daughter in the afterlife. Her resurrection now threatens the survival of the human race as Kaulder, the only one of his kind remaining, faces her vengeful wrath.', 'images/movies/443860.jpg', 'images/movies/189297.jpg', '6.0', '2016-02-01 10:20:06', '2016-02-04 15:43:40', 'https://www.youtube.com/watch?v=xsuG2JUgs_8', 0, 'צייד המכשפות האחרון', 'פנטזיית אקשן בכיכובו של ויין דיזל המגלם את קאולדר, צייד המכשפות האחרון שנותר בעולם ובעל חיי נצח. הוא מגויס במטרה לסכל את מזימתם של מכשפות מודרניות המתכננות להשתלט על העיר ניו-יורק.', 144, 2015),
(120, 'Suffragette', 'Suffragette is a 2015 British historical period drama directed by Sarah Gavron and written by Abi Morgan. The film stars Carey Mulligan, Helena Bonham Carter, Brendan Gleeson, Anne-Marie Duff, Ben Whishaw, and Meryl Streep.', 'images/movies/425660.jpg', 'images/movies/817075.jpg', '6.9', '2016-02-01 10:37:17', '2016-02-03 15:32:51', 'https://www.youtube.com/watch?v=056FI2Pq9RY', 0, 'סופרג''יסטיות', 'מוד ווטס (קארי מאליגן), צעירה העובדת במכבסה 12 שעות ביממה מאז ילדותה. גם אמה עבדה באותה מכבסה כל חייה עד שהלכה לעולמה בגיל צעיר. בוקר אחד ווטס נשלחת מהמכבסה למסור סדינים נקיים ונקלעת במקרה להפגנה של הסופרג''יסטיות - התנועה שלחמה בלונדון למען זכות ההצבעה של נשים בתחילת המאה ה20.', 143, 2015),
(121, 'Goosebumps', 'Upset about moving from the big city to a small town, young Zach Cooper (Dylan Minnette) finds a silver lining when he meets his beautiful neighbor Hannah (Odeya Rush). The teen is surprised to learn that Hannah''s mysterious father is R.L. Stine (Jack Black), the famous author of the best-selling "Goosebumps" series. When Zach accidentally unleashes the monsters from the fantastic tales, it''s up to Stine, his daughter and Cooper to return the beasts back to the books where they belong.', 'images/movies/456711.jpg', 'images/movies/887756.jpg', '6.4', '2016-02-01 10:50:28', '2016-02-18 17:36:46', 'https://www.youtube.com/watch?v=OMJ-zaoq8y8', 0, 'צמרמורת', 'זאק קופר, צעיר שלא מרוצה המעבר לעיירה קטנה מהעיר הגדולה, מוצא סיבה לאופטימיות לאחר שהוא פוגש נערה יפהפיה בשם האנה, שגרה לידו ובנוסף הוא מתיידד עם נער בשם צ''אמפ. העניינים מתחילים להסתבך כשזאק מגלה שאביה המסתורי של האנה הוא למעשה ר.ל. סטיין (ג''ק בלאק), הסופר של סדרת הספרים "צמרמורת". כשזאק מתחיל להכיר את המשפחה שנראית לו כמוזרה, הוא מגלה שסטיין מחביא סוד מסוכן: היצורים שמככבים בסיפורים שלו הם אמיתיים וסטיין שומר אותם נעולים בתוך ספריו כדי להגן על הקוראים שלו.', 144, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE IF NOT EXISTS `movie_genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=950 ;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `movie_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(194, 18, 5, '2015-12-01 14:28:47', '2015-12-01 14:28:47'),
(195, 18, 6, '2015-12-01 14:28:47', '2015-12-01 14:28:47'),
(196, 18, 2, '2015-12-01 14:28:47', '2015-12-01 14:28:47'),
(209, 21, 2, '2015-12-01 14:31:03', '2015-12-01 14:31:03'),
(210, 21, 5, '2015-12-01 14:31:03', '2015-12-01 14:31:03'),
(211, 21, 12, '2015-12-01 14:31:03', '2015-12-01 14:31:03'),
(224, 24, 2, '2015-12-03 15:05:19', '2015-12-03 15:05:19'),
(225, 24, 13, '2015-12-03 15:05:19', '2015-12-03 15:05:19'),
(226, 25, 5, '2015-12-03 15:18:41', '2015-12-03 15:18:41'),
(227, 25, 18, '2015-12-03 15:18:41', '2015-12-03 15:18:41'),
(228, 25, 8, '2015-12-03 15:18:41', '2015-12-03 15:18:41'),
(274, 20, 2, '2015-12-05 14:46:11', '2015-12-05 14:46:11'),
(275, 20, 5, '2015-12-05 14:46:11', '2015-12-05 14:46:11'),
(276, 20, 12, '2015-12-05 14:46:11', '2015-12-05 14:46:11'),
(388, 45, 2, '2015-12-23 10:42:17', '2015-12-23 10:42:17'),
(424, 30, 21, '2015-12-27 15:03:59', '2015-12-27 15:03:59'),
(425, 30, 10, '2015-12-27 15:03:59', '2015-12-27 15:03:59'),
(426, 30, 11, '2015-12-27 15:03:59', '2015-12-27 15:03:59'),
(436, 39, 8, '2015-12-27 15:26:30', '2015-12-27 15:26:30'),
(437, 39, 26, '2015-12-27 15:26:30', '2015-12-27 15:26:30'),
(438, 39, 15, '2015-12-27 15:26:30', '2015-12-27 15:26:30'),
(445, 72, 21, '2015-12-28 11:10:37', '2015-12-28 11:10:37'),
(446, 72, 10, '2015-12-28 11:10:37', '2015-12-28 11:10:37'),
(447, 72, 12, '2015-12-28 11:10:37', '2015-12-28 11:10:37'),
(448, 73, 2, '2015-12-28 11:22:26', '2015-12-28 11:22:26'),
(449, 73, 6, '2015-12-28 11:22:26', '2015-12-28 11:22:26'),
(450, 73, 7, '2015-12-28 11:22:26', '2015-12-28 11:22:26'),
(513, 89, 13, '2016-01-03 17:39:21', '2016-01-03 17:39:21'),
(514, 90, 6, '2016-01-04 07:17:36', '2016-01-04 07:17:36'),
(522, 94, 2, '2016-01-04 13:51:12', '2016-01-04 13:51:12'),
(523, 94, 5, '2016-01-04 13:51:12', '2016-01-04 13:51:12'),
(524, 94, 8, '2016-01-04 13:51:12', '2016-01-04 13:51:12'),
(588, 112, 2, '2016-01-14 14:43:23', '2016-01-14 14:43:23'),
(589, 112, 12, '2016-01-14 14:43:23', '2016-01-14 14:43:23'),
(590, 112, 6, '2016-01-14 14:43:23', '2016-01-14 14:43:23'),
(603, 116, 2, '2016-01-18 14:18:43', '2016-01-18 14:18:43'),
(604, 116, 12, '2016-01-18 14:18:43', '2016-01-18 14:18:43'),
(605, 116, 6, '2016-01-18 14:18:43', '2016-01-18 14:18:43'),
(606, 117, 2, '2016-01-18 17:03:24', '2016-01-18 17:03:24'),
(607, 117, 21, '2016-01-18 17:03:24', '2016-01-18 17:03:24'),
(608, 117, 10, '2016-01-18 17:03:24', '2016-01-18 17:03:24'),
(609, 117, 13, '2016-01-18 17:03:24', '2016-01-18 17:03:24'),
(612, 118, 10, '2016-02-01 07:45:06', '2016-02-01 07:45:06'),
(613, 118, 13, '2016-02-01 07:45:06', '2016-02-01 07:45:06'),
(614, 119, 2, '2016-02-01 10:20:15', '2016-02-01 10:20:15'),
(615, 119, 8, '2016-02-01 10:20:15', '2016-02-01 10:20:15'),
(616, 119, 5, '2016-02-01 10:20:15', '2016-02-01 10:20:15'),
(617, 120, 21, '2016-02-01 10:37:24', '2016-02-01 10:37:24'),
(618, 120, 24, '2016-02-01 10:37:24', '2016-02-01 10:37:24'),
(619, 121, 9, '2016-02-01 10:50:37', '2016-02-01 10:50:37'),
(620, 121, 5, '2016-02-01 10:50:38', '2016-02-01 10:50:38'),
(621, 121, 8, '2016-02-01 10:50:38', '2016-02-01 10:50:38'),
(622, 121, 6, '2016-02-01 10:50:38', '2016-02-01 10:50:38'),
(716, 106, 12, '2016-02-04 15:51:14', '2016-02-04 15:51:14'),
(717, 106, 5, '2016-02-04 15:51:14', '2016-02-04 15:51:14'),
(718, 106, 10, '2016-02-04 15:51:14', '2016-02-04 15:51:14'),
(719, 106, 2, '2016-02-04 15:51:14', '2016-02-04 15:51:14'),
(720, 115, 6, '2016-02-05 09:32:10', '2016-02-05 09:32:10'),
(721, 115, 8, '2016-02-05 09:32:10', '2016-02-05 09:32:10'),
(722, 114, 13, '2016-02-05 09:32:26', '2016-02-05 09:32:26'),
(723, 114, 21, '2016-02-05 09:32:26', '2016-02-05 09:32:26'),
(724, 114, 24, '2016-02-05 09:32:26', '2016-02-05 09:32:26'),
(725, 113, 2, '2016-02-05 09:32:42', '2016-02-05 09:32:42'),
(726, 113, 20, '2016-02-05 09:32:42', '2016-02-05 09:32:42'),
(727, 113, 7, '2016-02-05 09:32:42', '2016-02-05 09:32:42'),
(728, 113, 21, '2016-02-05 09:32:42', '2016-02-05 09:32:42'),
(729, 110, 2, '2016-02-05 09:32:53', '2016-02-05 09:32:53'),
(730, 110, 13, '2016-02-05 09:32:53', '2016-02-05 09:32:53'),
(731, 110, 7, '2016-02-05 09:32:53', '2016-02-05 09:32:53'),
(732, 110, 5, '2016-02-05 09:32:53', '2016-02-05 09:32:53'),
(733, 88, 13, '2016-02-05 09:33:32', '2016-02-05 09:33:32'),
(734, 88, 20, '2016-02-05 09:33:32', '2016-02-05 09:33:32'),
(735, 88, 7, '2016-02-05 09:33:32', '2016-02-05 09:33:32'),
(736, 87, 17, '2016-02-05 09:33:54', '2016-02-05 09:33:54'),
(737, 87, 9, '2016-02-05 09:33:54', '2016-02-05 09:33:54'),
(738, 86, 11, '2016-02-05 09:34:13', '2016-02-05 09:34:13'),
(739, 86, 21, '2016-02-05 09:34:13', '2016-02-05 09:34:13'),
(740, 85, 2, '2016-02-05 09:34:24', '2016-02-05 09:34:24'),
(741, 85, 13, '2016-02-05 09:34:24', '2016-02-05 09:34:24'),
(742, 84, 2, '2016-02-05 09:34:35', '2016-02-05 09:34:35'),
(743, 84, 6, '2016-02-05 09:34:35', '2016-02-05 09:34:35'),
(744, 83, 6, '2016-02-05 09:34:46', '2016-02-05 09:34:46'),
(745, 83, 21, '2016-02-05 09:34:46', '2016-02-05 09:34:46'),
(746, 83, 10, '2016-02-05 09:34:46', '2016-02-05 09:34:46'),
(747, 82, 6, '2016-02-05 09:34:56', '2016-02-05 09:34:56'),
(748, 82, 21, '2016-02-05 09:34:56', '2016-02-05 09:34:56'),
(749, 76, 2, '2016-02-05 09:35:07', '2016-02-05 09:35:07'),
(750, 76, 7, '2016-02-05 09:35:07', '2016-02-05 09:35:07'),
(751, 76, 12, '2016-02-05 09:35:07', '2016-02-05 09:35:07'),
(752, 70, 2, '2016-02-05 09:36:08', '2016-02-05 09:36:08'),
(753, 70, 5, '2016-02-05 09:36:08', '2016-02-05 09:36:08'),
(754, 70, 8, '2016-02-05 09:36:08', '2016-02-05 09:36:08'),
(755, 69, 2, '2016-02-05 09:36:43', '2016-02-05 09:36:43'),
(756, 69, 13, '2016-02-05 09:36:43', '2016-02-05 09:36:43'),
(757, 69, 5, '2016-02-05 09:36:43', '2016-02-05 09:36:43'),
(758, 68, 2, '2016-02-05 09:36:53', '2016-02-05 09:36:53'),
(759, 68, 7, '2016-02-05 09:36:53', '2016-02-05 09:36:53'),
(760, 68, 5, '2016-02-05 09:36:54', '2016-02-05 09:36:54'),
(761, 61, 11, '2016-02-05 09:37:40', '2016-02-05 09:37:40'),
(762, 61, 21, '2016-02-05 09:37:40', '2016-02-05 09:37:40'),
(763, 59, 2, '2016-02-05 09:38:01', '2016-02-05 09:38:01'),
(764, 59, 5, '2016-02-05 09:38:01', '2016-02-05 09:38:01'),
(765, 59, 12, '2016-02-05 09:38:01', '2016-02-05 09:38:01'),
(766, 55, 2, '2016-02-05 09:38:21', '2016-02-05 09:38:21'),
(767, 55, 5, '2016-02-05 09:38:21', '2016-02-05 09:38:21'),
(768, 55, 12, '2016-02-05 09:38:21', '2016-02-05 09:38:21'),
(769, 54, 9, '2016-02-05 09:38:32', '2016-02-05 09:38:32'),
(770, 54, 13, '2016-02-05 09:38:32', '2016-02-05 09:38:32'),
(771, 53, 5, '2016-02-05 09:38:56', '2016-02-05 09:38:56'),
(772, 53, 12, '2016-02-05 09:38:57', '2016-02-05 09:38:57'),
(773, 53, 13, '2016-02-05 09:38:57', '2016-02-05 09:38:57'),
(774, 52, 6, '2016-02-05 09:39:26', '2016-02-05 09:39:26'),
(775, 52, 21, '2016-02-05 09:39:26', '2016-02-05 09:39:26'),
(776, 48, 2, '2016-02-05 09:40:28', '2016-02-05 09:40:28'),
(777, 48, 6, '2016-02-05 09:40:28', '2016-02-05 09:40:28'),
(778, 48, 5, '2016-02-05 09:40:28', '2016-02-05 09:40:28'),
(779, 43, 15, '2016-02-05 09:40:51', '2016-02-05 09:40:51'),
(780, 43, 6, '2016-02-05 09:40:51', '2016-02-05 09:40:51'),
(781, 43, 8, '2016-02-05 09:40:51', '2016-02-05 09:40:51'),
(782, 43, 18, '2016-02-05 09:40:51', '2016-02-05 09:40:51'),
(783, 42, 13, '2016-02-05 09:41:02', '2016-02-05 09:41:02'),
(784, 42, 5, '2016-02-05 09:41:02', '2016-02-05 09:41:02'),
(785, 42, 21, '2016-02-05 09:41:02', '2016-02-05 09:41:02'),
(786, 31, 21, '2016-02-05 09:41:20', '2016-02-05 09:41:20'),
(787, 31, 18, '2016-02-05 09:41:20', '2016-02-05 09:41:20'),
(788, 31, 8, '2016-02-05 09:41:20', '2016-02-05 09:41:20'),
(789, 29, 2, '2016-02-05 09:42:07', '2016-02-05 09:42:07'),
(790, 29, 12, '2016-02-05 09:42:07', '2016-02-05 09:42:07'),
(791, 29, 13, '2016-02-05 09:42:07', '2016-02-05 09:42:07'),
(792, 27, 2, '2016-02-05 09:42:29', '2016-02-05 09:42:29'),
(793, 19, 15, '2016-02-05 09:44:14', '2016-02-05 09:44:14'),
(794, 19, 5, '2016-02-05 09:44:14', '2016-02-05 09:44:14'),
(795, 19, 6, '2016-02-05 09:44:14', '2016-02-05 09:44:14'),
(796, 17, 5, '2016-02-05 09:44:55', '2016-02-05 09:44:55'),
(797, 17, 2, '2016-02-05 09:44:55', '2016-02-05 09:44:55'),
(798, 17, 12, '2016-02-05 09:44:55', '2016-02-05 09:44:55'),
(799, 104, 2, '2016-02-05 09:45:51', '2016-02-05 09:45:51'),
(800, 104, 28, '2016-02-05 09:45:52', '2016-02-05 09:45:52'),
(801, 104, 21, '2016-02-05 09:45:52', '2016-02-05 09:45:52'),
(802, 104, 8, '2016-02-05 09:45:52', '2016-02-05 09:45:52'),
(803, 91, 6, '2016-02-05 09:46:18', '2016-02-05 09:46:18'),
(804, 77, 2, '2016-02-05 09:47:15', '2016-02-05 09:47:15'),
(805, 77, 7, '2016-02-05 09:47:15', '2016-02-05 09:47:15'),
(806, 77, 21, '2016-02-05 09:47:15', '2016-02-05 09:47:15'),
(807, 74, 15, '2016-02-05 09:47:27', '2016-02-05 09:47:27'),
(808, 74, 2, '2016-02-05 09:47:27', '2016-02-05 09:47:27'),
(809, 74, 5, '2016-02-05 09:47:27', '2016-02-05 09:47:27'),
(810, 62, 5, '2016-02-05 09:47:52', '2016-02-05 09:47:52'),
(811, 62, 8, '2016-02-05 09:47:52', '2016-02-05 09:47:52'),
(812, 57, 2, '2016-02-05 09:48:11', '2016-02-05 09:48:11'),
(813, 57, 13, '2016-02-05 09:48:11', '2016-02-05 09:48:11'),
(814, 28, 2, '2016-02-05 09:48:30', '2016-02-05 09:48:30'),
(815, 26, 13, '2016-02-05 09:48:59', '2016-02-05 09:48:59'),
(816, 26, 16, '2016-02-05 09:48:59', '2016-02-05 09:48:59'),
(817, 23, 5, '2016-02-05 09:49:30', '2016-02-05 09:49:30'),
(818, 23, 6, '2016-02-05 09:49:30', '2016-02-05 09:49:30'),
(819, 22, 5, '2016-02-05 09:49:40', '2016-02-05 09:49:40'),
(820, 22, 12, '2016-02-05 09:49:40', '2016-02-05 09:49:40'),
(821, 22, 13, '2016-02-05 09:49:40', '2016-02-05 09:49:40'),
(822, 102, 5, '2016-02-05 09:51:13', '2016-02-05 09:51:13'),
(823, 102, 12, '2016-02-05 09:51:13', '2016-02-05 09:51:13'),
(824, 102, 13, '2016-02-05 09:51:14', '2016-02-05 09:51:14'),
(825, 64, 5, '2016-02-05 09:51:35', '2016-02-05 09:51:35'),
(826, 64, 8, '2016-02-05 09:51:35', '2016-02-05 09:51:35'),
(827, 58, 2, '2016-02-05 09:51:53', '2016-02-05 09:51:53'),
(828, 58, 13, '2016-02-05 09:51:53', '2016-02-05 09:51:53'),
(829, 58, 7, '2016-02-05 09:51:53', '2016-02-05 09:51:53'),
(830, 108, 2, '2016-02-05 09:53:07', '2016-02-05 09:53:07'),
(831, 108, 5, '2016-02-05 09:53:07', '2016-02-05 09:53:07'),
(832, 108, 8, '2016-02-05 09:53:07', '2016-02-05 09:53:07'),
(833, 63, 5, '2016-02-05 09:53:35', '2016-02-05 09:53:35'),
(834, 63, 8, '2016-02-05 09:53:35', '2016-02-05 09:53:35'),
(835, 56, 2, '2016-02-05 09:53:55', '2016-02-05 09:53:55'),
(836, 56, 7, '2016-02-05 09:53:55', '2016-02-05 09:53:55'),
(837, 56, 13, '2016-02-05 09:53:55', '2016-02-05 09:53:55'),
(838, 51, 6, '2016-02-05 09:54:16', '2016-02-05 09:54:16'),
(839, 51, 2, '2016-02-05 09:54:16', '2016-02-05 09:54:16'),
(840, 51, 7, '2016-02-05 09:54:16', '2016-02-05 09:54:16'),
(841, 50, 15, '2016-02-05 09:54:35', '2016-02-05 09:54:35'),
(842, 50, 5, '2016-02-05 09:54:35', '2016-02-05 09:54:35'),
(843, 50, 6, '2016-02-05 09:54:35', '2016-02-05 09:54:35'),
(844, 50, 18, '2016-02-05 09:54:35', '2016-02-05 09:54:35'),
(845, 41, 15, '2016-02-05 09:54:55', '2016-02-05 09:54:55'),
(846, 41, 6, '2016-02-05 09:54:55', '2016-02-05 09:54:55'),
(847, 41, 8, '2016-02-05 09:54:55', '2016-02-05 09:54:55'),
(848, 103, 15, '2016-02-05 09:55:17', '2016-02-05 09:55:17'),
(849, 103, 6, '2016-02-05 09:55:17', '2016-02-05 09:55:17'),
(850, 103, 2, '2016-02-05 09:55:17', '2016-02-05 09:55:17'),
(851, 103, 18, '2016-02-05 09:55:17', '2016-02-05 09:55:17'),
(852, 38, 5, '2016-02-05 09:55:40', '2016-02-05 09:55:40'),
(853, 38, 21, '2016-02-05 09:55:40', '2016-02-05 09:55:40'),
(854, 38, 8, '2016-02-05 09:55:40', '2016-02-05 09:55:40'),
(855, 105, 2, '2016-02-05 09:55:53', '2016-02-05 09:55:53'),
(856, 105, 13, '2016-02-05 09:55:53', '2016-02-05 09:55:53'),
(857, 105, 8, '2016-02-05 09:55:53', '2016-02-05 09:55:53'),
(858, 105, 12, '2016-02-05 09:55:53', '2016-02-05 09:55:53'),
(859, 105, 5, '2016-02-05 09:55:53', '2016-02-05 09:55:53'),
(860, 99, 15, '2016-02-05 09:56:07', '2016-02-05 09:56:07'),
(861, 99, 5, '2016-02-05 09:56:07', '2016-02-05 09:56:07'),
(862, 99, 6, '2016-02-05 09:56:07', '2016-02-05 09:56:07'),
(863, 96, 2, '2016-02-05 09:56:20', '2016-02-05 09:56:20'),
(864, 96, 7, '2016-02-05 09:56:20', '2016-02-05 09:56:20'),
(865, 96, 21, '2016-02-05 09:56:20', '2016-02-05 09:56:20'),
(866, 81, 15, '2016-02-05 09:56:31', '2016-02-05 09:56:31'),
(867, 81, 5, '2016-02-05 09:56:31', '2016-02-05 09:56:31'),
(868, 81, 6, '2016-02-05 09:56:31', '2016-02-05 09:56:31'),
(869, 37, 2, '2016-02-05 09:56:54', '2016-02-05 09:56:54'),
(870, 49, 5, '2016-02-05 09:57:14', '2016-02-05 09:57:14'),
(871, 49, 6, '2016-02-05 09:57:14', '2016-02-05 09:57:14'),
(872, 49, 15, '2016-02-05 09:57:14', '2016-02-05 09:57:14'),
(873, 49, 18, '2016-02-05 09:57:14', '2016-02-05 09:57:14'),
(874, 35, 5, '2016-02-05 09:57:53', '2016-02-05 09:57:53'),
(875, 35, 18, '2016-02-05 09:57:53', '2016-02-05 09:57:53'),
(876, 35, 8, '2016-02-05 09:57:53', '2016-02-05 09:57:53'),
(877, 75, 15, '2016-02-05 09:58:07', '2016-02-05 09:58:07'),
(878, 75, 2, '2016-02-05 09:58:07', '2016-02-05 09:58:07'),
(879, 75, 5, '2016-02-05 09:58:07', '2016-02-05 09:58:07'),
(880, 80, 15, '2016-02-05 09:58:20', '2016-02-05 09:58:20'),
(881, 80, 5, '2016-02-05 09:58:20', '2016-02-05 09:58:20'),
(882, 80, 6, '2016-02-05 09:58:21', '2016-02-05 09:58:21'),
(883, 34, 5, '2016-02-05 09:58:47', '2016-02-05 09:58:47'),
(884, 34, 18, '2016-02-05 09:58:47', '2016-02-05 09:58:47'),
(885, 34, 8, '2016-02-05 09:58:47', '2016-02-05 09:58:47'),
(886, 95, 2, '2016-02-05 09:59:19', '2016-02-05 09:59:19'),
(887, 95, 7, '2016-02-05 09:59:19', '2016-02-05 09:59:19'),
(888, 95, 21, '2016-02-05 09:59:19', '2016-02-05 09:59:19'),
(889, 47, 15, '2016-02-05 09:59:46', '2016-02-05 09:59:46'),
(890, 47, 6, '2016-02-05 09:59:46', '2016-02-05 09:59:46'),
(891, 47, 5, '2016-02-05 09:59:46', '2016-02-05 09:59:46'),
(892, 33, 5, '2016-02-05 10:01:31', '2016-02-05 10:01:31'),
(893, 33, 8, '2016-02-05 10:01:31', '2016-02-05 10:01:31'),
(894, 33, 18, '2016-02-05 10:01:31', '2016-02-05 10:01:31'),
(895, 79, 15, '2016-02-05 10:01:46', '2016-02-05 10:01:46'),
(896, 79, 5, '2016-02-05 10:01:46', '2016-02-05 10:01:46'),
(897, 79, 6, '2016-02-05 10:01:46', '2016-02-05 10:01:46'),
(898, 36, 5, '2016-02-05 10:02:06', '2016-02-05 10:02:06'),
(899, 36, 18, '2016-02-05 10:02:06', '2016-02-05 10:02:06'),
(900, 36, 8, '2016-02-05 10:02:06', '2016-02-05 10:02:06'),
(901, 60, 5, '2016-02-05 10:02:32', '2016-02-05 10:02:32'),
(902, 60, 21, '2016-02-05 10:02:32', '2016-02-05 10:02:32'),
(903, 60, 8, '2016-02-05 10:02:32', '2016-02-05 10:02:32'),
(904, 109, 2, '2016-02-05 10:03:22', '2016-02-05 10:03:22'),
(905, 109, 8, '2016-02-05 10:03:22', '2016-02-05 10:03:22'),
(906, 109, 5, '2016-02-05 10:03:22', '2016-02-05 10:03:22'),
(907, 101, 2, '2016-02-05 10:03:38', '2016-02-05 10:03:38'),
(908, 100, 21, '2016-02-05 10:03:51', '2016-02-05 10:03:51'),
(909, 100, 11, '2016-02-05 10:03:51', '2016-02-05 10:03:51'),
(910, 93, 2, '2016-02-05 10:04:39', '2016-02-05 10:04:39'),
(911, 93, 5, '2016-02-05 10:04:39', '2016-02-05 10:04:39'),
(912, 93, 8, '2016-02-05 10:04:39', '2016-02-05 10:04:39'),
(913, 46, 2, '2016-02-05 10:05:01', '2016-02-05 10:05:01'),
(914, 46, 5, '2016-02-05 10:05:01', '2016-02-05 10:05:01'),
(915, 46, 8, '2016-02-05 10:05:01', '2016-02-05 10:05:01'),
(916, 44, 15, '2016-02-05 10:05:20', '2016-02-05 10:05:20'),
(917, 44, 6, '2016-02-05 10:05:20', '2016-02-05 10:05:20'),
(918, 44, 18, '2016-02-05 10:05:20', '2016-02-05 10:05:20'),
(919, 44, 5, '2016-02-05 10:05:20', '2016-02-05 10:05:20'),
(920, 32, 5, '2016-02-05 10:05:43', '2016-02-05 10:05:43'),
(921, 32, 18, '2016-02-05 10:05:43', '2016-02-05 10:05:43'),
(922, 32, 8, '2016-02-05 10:05:43', '2016-02-05 10:05:43'),
(923, 78, 15, '2016-02-05 10:06:06', '2016-02-05 10:06:06'),
(924, 78, 5, '2016-02-05 10:06:06', '2016-02-05 10:06:06'),
(925, 78, 6, '2016-02-05 10:06:06', '2016-02-05 10:06:06'),
(926, 98, 15, '2016-02-05 10:07:25', '2016-02-05 10:07:25'),
(927, 98, 5, '2016-02-05 10:07:25', '2016-02-05 10:07:25'),
(928, 98, 6, '2016-02-05 10:07:25', '2016-02-05 10:07:25'),
(929, 92, 5, '2016-02-05 10:07:44', '2016-02-05 10:07:44'),
(930, 92, 2, '2016-02-05 10:07:44', '2016-02-05 10:07:44'),
(931, 92, 8, '2016-02-05 10:07:44', '2016-02-05 10:07:44'),
(932, 111, 2, '2016-02-05 10:08:08', '2016-02-05 10:08:08'),
(933, 111, 12, '2016-02-05 10:08:08', '2016-02-05 10:08:08'),
(934, 111, 6, '2016-02-05 10:08:08', '2016-02-05 10:08:08'),
(935, 97, 15, '2016-02-05 10:08:21', '2016-02-05 10:08:21'),
(936, 97, 5, '2016-02-05 10:08:21', '2016-02-05 10:08:21'),
(937, 97, 6, '2016-02-05 10:08:22', '2016-02-05 10:08:22'),
(938, 107, 21, '2016-02-05 10:08:33', '2016-02-05 10:08:33'),
(939, 107, 7, '2016-02-05 10:08:33', '2016-02-05 10:08:33'),
(940, 67, 2, '2016-02-05 10:09:03', '2016-02-05 10:09:03'),
(941, 67, 5, '2016-02-05 10:09:04', '2016-02-05 10:09:04'),
(942, 67, 8, '2016-02-05 10:09:04', '2016-02-05 10:09:04'),
(943, 66, 2, '2016-02-05 10:09:15', '2016-02-05 10:09:15'),
(944, 66, 5, '2016-02-05 10:09:15', '2016-02-05 10:09:15'),
(945, 66, 8, '2016-02-05 10:09:15', '2016-02-05 10:09:15'),
(946, 65, 2, '2016-02-05 10:09:37', '2016-02-05 10:09:37'),
(947, 65, 5, '2016-02-05 10:09:37', '2016-02-05 10:09:37'),
(948, 65, 8, '2016-02-05 10:09:37', '2016-02-05 10:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `movie_links`
--

CREATE TABLE IF NOT EXISTS `movie_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `server` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1298 ;

--
-- Dumping data for table `movie_links`
--

INSERT INTO `movie_links` (`id`, `movie_id`, `link`, `server`, `created_at`, `updated_at`) VALUES
(251, 18, 'http://sh.st/ny2TR', 'allmyvideos.net', '2015-12-01 14:28:47', '2016-02-06 16:08:25'),
(252, 18, 'http://sh.st/ny2TT', 'vidspot.net', '2015-12-01 14:28:47', '2016-02-06 16:08:26'),
(263, 21, 'http://sh.st/nuGgL', 'allmyvideos.net', '2015-12-01 14:31:03', '2016-02-06 16:08:27'),
(264, 21, 'http://sh.st/nuGgZ', 'vidspot.net', '2015-12-01 14:31:03', '2016-02-06 16:08:29'),
(265, 21, 'http://sh.st/nuGgV', 'vidspot.net', '2015-12-01 14:31:03', '2016-02-06 16:08:30'),
(277, 24, 'http://sh.st/nafe6', 'allmyvideos.net', '2015-12-03 15:05:19', '2016-02-06 16:08:31'),
(278, 24, 'http://sh.st/nafe7', 'vidspot.net', '2015-12-03 15:05:19', '2016-02-06 16:08:32'),
(279, 25, 'http://sh.st/nafAI', 'allmyvideos.net', '2015-12-03 15:18:41', '2016-02-06 16:08:33'),
(280, 25, 'http://sh.st/nafAP', 'vidspot.net', '2015-12-03 15:18:41', '2016-02-06 16:08:35'),
(343, 20, 'http://sh.st/nuFrV', 'vidspot.net', '2015-12-05 14:46:09', '2016-02-06 16:08:36'),
(344, 20, 'http://sh.st/noArq', 'allmyvideos.net', '2015-12-05 14:46:09', '2016-02-06 16:08:37'),
(346, 20, 'http://sh.st/noAtw', 'youwatch.org', '2015-12-05 14:46:09', '2016-02-06 16:08:40'),
(347, 20, 'http://sh.st/nsCl0', 'goodvideohost.com', '2015-12-05 14:46:11', '2016-02-06 16:08:41'),
(520, 45, 'http://sh.st/nvc8G', 'videomega.tv', '2015-12-23 10:42:17', '2015-12-23 10:42:17'),
(521, 45, 'http://sh.st/nvc8J', 'youwatch.org', '2015-12-23 10:42:17', '2016-02-06 16:08:44'),
(522, 45, 'http://sh.st/nvc8K', 'goodvideohost.com', '2015-12-23 10:42:17', '2016-02-06 16:08:48'),
(576, 30, 'http://sh.st/naWyL', 'allmyvideos.net', '2015-12-27 15:03:59', '2016-02-06 16:08:49'),
(577, 30, 'http://sh.st/naWyX', 'vidspot.net', '2015-12-27 15:03:59', '2016-02-06 16:08:50'),
(600, 39, 'http://sh.st/nc2mb', 'youwatch.org', '2015-12-27 15:26:30', '2016-02-06 16:08:52'),
(601, 39, 'http://sh.st/nc2mW', 'allmyvideos.net', '2015-12-27 15:26:30', '2016-02-06 16:08:53'),
(602, 39, 'http://sh.st/nc2mR', 'goodvideohost.com', '2015-12-27 15:26:30', '2016-02-06 16:08:57'),
(603, 39, 'http://sh.st/nc2mP', 'vidspot.net', '2015-12-27 15:26:30', '2016-02-06 16:08:58'),
(615, 72, 'http://sh.st/nTjRC', 'openload.co', '2015-12-28 11:10:37', '2016-02-06 16:09:02'),
(616, 72, 'http://sh.st/nTjRV', 'youwatch.org', '2015-12-28 11:10:37', '2016-02-06 16:09:03'),
(617, 72, 'http://sh.st/nTjR1', 'allmyvideos.net', '2015-12-28 11:10:37', '2016-02-06 16:09:04'),
(618, 72, 'http://sh.st/nTjR3', 'vidspot.net', '2015-12-28 11:10:37', '2016-02-06 16:09:05'),
(619, 72, 'http://sh.st/nTjR5', 'goodvideohost.com', '2015-12-28 11:10:37', '2016-02-06 16:09:07'),
(620, 73, 'http://sh.st/nTkdI', 'openload.co', '2015-12-28 11:22:22', '2016-02-06 16:09:08'),
(621, 73, 'http://sh.st/nTkdS', 'youwatch.org', '2015-12-28 11:22:23', '2016-02-06 16:09:10'),
(622, 73, 'http://sh.st/nTkdG', 'allmyvideos.net', '2015-12-28 11:22:24', '2016-02-06 16:09:11'),
(623, 73, 'http://sh.st/nTkdH', 'vidspot.net', '2015-12-28 11:22:25', '2016-02-06 16:09:12'),
(624, 73, 'http://sh.st/nTkdK', 'goodvideohost.com', '2015-12-28 11:22:26', '2016-02-06 16:09:15'),
(748, 89, 'http://sh.st/nP9zS', 'openload.co', '2016-01-03 17:39:14', '2016-02-06 16:09:18'),
(749, 89, 'http://sh.st/nP9zD', 'videomega.tv', '2016-01-03 17:39:16', '2016-01-03 17:39:16'),
(750, 89, 'http://sh.st/nP9zG', 'youwatch.org', '2016-01-03 17:39:17', '2016-02-06 16:09:20'),
(751, 89, 'http://sh.st/nP9zJ', 'allmyvideos.net', '2016-01-03 17:39:18', '2016-02-06 16:09:21'),
(752, 89, 'http://sh.st/nP9zL', 'vidspot.net', '2016-01-03 17:39:19', '2016-02-06 16:09:22'),
(753, 89, 'http://sh.st/nP9zX', 'goodvideohost.com', '2016-01-03 17:39:21', '2016-02-06 16:09:27'),
(754, 90, 'http://sh.st/nAQ4J', 'goodvideohost.com', '2016-01-04 07:17:34', '2016-02-06 16:09:31'),
(755, 90, 'http://sh.st/nAQ4C', 'allmyvideos.net', '2016-01-04 07:17:36', '2016-02-06 16:09:32'),
(770, 94, 'http://sh.st/nAKXP', 'openload.co', '2016-01-04 13:51:10', '2016-02-06 16:09:34'),
(771, 94, 'http://sh.st/nAKXF', 'vidspot.net', '2016-01-04 13:51:10', '2016-02-06 16:09:35'),
(772, 94, 'http://sh.st/nAKXH', 'allmyvideos.net', '2016-01-04 13:51:12', '2016-02-06 16:09:36'),
(882, 112, 'http://sh.st/nXacI', 'openload.co', '2016-01-14 14:43:22', '2016-02-06 16:09:38'),
(883, 112, 'http://sh.st/nXacA', 'youwatch.org', '2016-01-14 14:43:23', '2016-02-06 16:09:40'),
(884, 112, 'http://sh.st/nXacD', 'goodvideohost.com', '2016-01-14 14:43:23', '2016-02-06 16:09:43'),
(907, 116, 'http://sh.st/nNwGP', 'openload.co', '2016-01-18 14:18:41', '2016-02-06 16:09:45'),
(908, 116, 'http://sh.st/nNwGF', 'allmyvideos.net', '2016-01-18 14:18:42', '2016-02-06 16:09:45'),
(909, 116, 'http://sh.st/nNwGK', 'vidspot.net', '2016-01-18 14:18:43', '2016-02-06 16:09:47'),
(910, 117, 'http://sh.st/nNdE0', 'openload.co', '2016-01-18 17:03:21', '2016-02-06 16:09:49'),
(912, 117, 'http://sh.st/nNdEi', 'vidspot.net', '2016-01-18 17:03:22', '2016-02-18 18:00:50'),
(913, 117, 'http://sh.st/nNdEd', 'allmyvideos.net', '2016-01-18 17:03:23', '2016-02-18 18:00:51'),
(914, 117, 'http://sh.st/nNdEj', 'goodvideohost.com', '2016-01-18 17:03:24', '2016-02-18 18:12:48'),
(920, 118, 'http://sh.st/QqNMJ', 'openload.co', '2016-02-01 07:45:06', '2016-02-18 18:01:08'),
(921, 118, 'http://sh.st/QqN1T', 'youwatch.org', '2016-02-01 07:45:06', '2016-02-18 18:12:56'),
(922, 118, 'http://sh.st/QqN14', 'vidspot.net', '2016-02-01 07:45:06', '2016-02-18 18:12:57'),
(923, 118, 'http://sh.st/QqN2b', 'allmyvideos.net', '2016-02-01 07:45:06', '2016-02-18 18:01:40'),
(924, 118, 'http://sh.st/QqN27', 'goodvideohost.com', '2016-02-01 07:45:06', '2016-02-18 18:12:59'),
(925, 119, 'http://sh.st/QwOSM', 'openload.co', '2016-02-01 10:20:09', '2016-02-18 18:01:57'),
(926, 119, 'http://sh.st/QwODn', 'youwatch.org', '2016-02-01 10:20:11', '2016-02-18 18:13:07'),
(927, 119, 'http://sh.st/QwOFd', 'vidspot.net', '2016-02-01 10:20:12', '2016-02-18 18:02:52'),
(928, 119, 'http://sh.st/QwOFW', 'allmyvideos.net', '2016-02-01 10:20:14', '2016-02-18 18:02:53'),
(929, 119, 'http://sh.st/QwOGm', 'goodvideohost.com', '2016-02-01 10:20:15', '2016-02-18 18:13:19'),
(930, 120, 'http://sh.st/QwFLU', 'openload.co', '2016-02-01 10:37:19', '2016-02-18 18:03:10'),
(931, 120, 'http://sh.st/QwFL6', 'youwatch.org', '2016-02-01 10:37:20', '2016-02-18 18:13:23'),
(932, 120, 'http://sh.st/QwFZy', 'allmyvideos.net', '2016-02-01 10:37:22', '2016-02-18 18:04:11'),
(933, 120, 'http://sh.st/QwFZN', 'vidspot.net', '2016-02-01 10:37:23', '2016-02-18 18:04:12'),
(934, 120, 'http://sh.st/QwFXE', 'goodvideohost.com', '2016-02-01 10:37:24', '2016-02-18 18:04:14'),
(935, 121, 'http://sh.st/QwKOj', 'openload.co', '2016-02-01 10:50:30', '2016-02-18 18:04:16'),
(936, 121, 'http://sh.st/QwKP0', 'youwatch.org', '2016-02-01 10:50:32', '2016-02-18 18:04:18'),
(937, 121, 'http://sh.st/QwKPB', 'allmyvideos.net', '2016-02-01 10:50:33', '2016-02-18 18:04:19'),
(938, 121, 'http://sh.st/QwKAk', 'vidspot.net', '2016-02-01 10:50:35', '2016-02-18 18:04:20'),
(939, 121, 'http://sh.st/QwKSx', 'goodvideohost.com', '2016-02-01 10:50:37', '2016-02-18 18:04:22'),
(987, 106, 'http://sh.st/nJw5E', 'openload.co', '2016-02-04 15:51:14', '2016-02-18 18:04:26'),
(988, 106, 'http://sh.st/nJw5T', 'youwatch.org', '2016-02-04 15:51:14', '2016-02-18 18:04:28'),
(989, 106, 'http://sh.st/nJw5O', 'goodvideohost.com', '2016-02-04 15:51:14', '2016-02-18 18:04:29'),
(990, 115, 'http://sh.st/nBV4O', 'openload.co', '2016-02-05 09:32:10', '2016-02-18 18:04:32'),
(991, 115, 'http://sh.st/nBV4K', 'youwatch.org', '2016-02-05 09:32:10', '2016-02-18 18:04:34'),
(992, 115, 'http://sh.st/nBV4L', 'vidspot.net', '2016-02-05 09:32:10', '2016-02-18 18:04:35'),
(993, 115, 'http://sh.st/nBV4M', 'allmyvideos.net', '2016-02-05 09:32:10', '2016-02-18 18:04:36'),
(994, 115, 'http://sh.st/nBV42', 'goodvideohost.com', '2016-02-05 09:32:10', '2016-02-18 18:04:37'),
(995, 114, 'http://sh.st/nBVff', 'openload.co', '2016-02-05 09:32:25', '2016-02-18 18:04:39'),
(996, 114, 'http://sh.st/nBVfk', 'youwatch.org', '2016-02-05 09:32:25', '2016-02-18 18:04:45'),
(997, 114, 'http://sh.st/nBVfl', 'vidspot.net', '2016-02-05 09:32:25', '2016-02-18 18:04:46'),
(998, 114, 'http://sh.st/nBVfc', 'allmyvideos.net', '2016-02-05 09:32:25', '2016-02-18 18:04:48'),
(999, 114, 'http://sh.st/nBVfn', 'goodvideohost.com', '2016-02-05 09:32:25', '2016-02-18 18:04:49'),
(1000, 113, 'http://sh.st/nXdtb', 'openload.co', '2016-02-05 09:32:41', '2016-02-18 18:04:52'),
(1001, 113, 'http://sh.st/nXdtE', 'youwatch.org', '2016-02-05 09:32:42', '2016-02-18 18:04:54'),
(1002, 113, 'http://sh.st/nXdtT', 'vidspot.net', '2016-02-05 09:32:42', '2016-02-18 18:04:55'),
(1003, 113, 'http://sh.st/nXdtU', 'allmyvideos.net', '2016-02-05 09:32:42', '2016-02-18 18:04:56'),
(1004, 113, 'http://sh.st/nXdtO', 'goodvideohost.com', '2016-02-05 09:32:42', '2016-02-18 18:04:58'),
(1005, 110, 'http://sh.st/nLfek', 'openload.co', '2016-02-05 09:32:52', '2016-02-18 18:05:01'),
(1006, 110, 'http://sh.st/nLfec', 'youwatch.org', '2016-02-05 09:32:52', '2016-02-18 18:05:02'),
(1007, 110, 'http://sh.st/nLfev', 'vidspot.net', '2016-02-05 09:32:52', '2016-02-18 18:05:03'),
(1008, 110, 'http://sh.st/nLfeQ', 'allmyvideos.net', '2016-02-05 09:32:52', '2016-02-18 18:05:04'),
(1009, 110, 'http://sh.st/nLfeR', 'goodvideohost.com', '2016-02-05 09:32:52', '2016-02-18 18:05:06'),
(1010, 88, 'http://sh.st/nPTDa', 'openload.co', '2016-02-05 09:33:32', '2016-02-18 18:05:08'),
(1011, 88, 'http://sh.st/nPTDg', 'youwatch.org', '2016-02-05 09:33:32', '2016-02-18 18:05:09'),
(1012, 88, 'http://sh.st/nPTDh', 'vidspot.net', '2016-02-05 09:33:32', '2016-02-18 18:05:10'),
(1013, 88, 'http://sh.st/nPTDl', 'allmyvideos.net', '2016-02-05 09:33:32', '2016-02-18 18:05:11'),
(1014, 88, 'http://sh.st/nPTDx', 'goodvideohost.com', '2016-02-05 09:33:32', '2016-02-18 18:05:12'),
(1015, 87, 'http://sh.st/nPTs1', 'openload.co', '2016-02-05 09:33:54', '2016-02-18 18:05:14'),
(1016, 87, 'http://sh.st/nPTs5', 'youwatch.org', '2016-02-05 09:33:54', '2016-02-18 18:05:16'),
(1017, 87, 'http://sh.st/nPTs6', 'vidspot.net', '2016-02-05 09:33:54', '2016-02-18 18:05:17'),
(1018, 87, 'http://sh.st/nPTs9', 'allmyvideos.net', '2016-02-05 09:33:54', '2016-02-18 18:05:18'),
(1019, 87, 'http://sh.st/nPTdw', 'goodvideohost.com', '2016-02-05 09:33:54', '2016-02-18 18:05:19'),
(1020, 86, 'http://sh.st/nPRJp', 'openload.co', '2016-02-05 09:34:12', '2016-02-18 18:05:21'),
(1021, 86, 'http://sh.st/nPRJd', 'youwatch.org', '2016-02-05 09:34:12', '2016-02-18 18:05:23'),
(1022, 86, 'http://sh.st/nPRJg', 'vidspot.net', '2016-02-05 09:34:12', '2016-02-18 18:05:24'),
(1023, 86, 'http://sh.st/nPRJh', 'allmyvideos.net', '2016-02-05 09:34:12', '2016-02-18 18:05:25'),
(1024, 86, 'http://sh.st/nPRJk', 'goodvideohost.com', '2016-02-05 09:34:12', '2016-02-18 18:05:26'),
(1025, 85, 'http://sh.st/nIpnC', 'openload.co', '2016-02-05 09:34:23', '2016-02-18 18:05:28'),
(1026, 85, 'http://sh.st/nIpnM', 'youwatch.org', '2016-02-05 09:34:23', '2016-02-18 18:05:29'),
(1027, 85, 'http://sh.st/nIpn3', 'vidspot.net', '2016-02-05 09:34:23', '2016-02-18 18:05:30'),
(1028, 85, 'http://sh.st/nIpn5', 'allmyvideos.net', '2016-02-05 09:34:23', '2016-02-18 18:05:30'),
(1029, 85, 'http://sh.st/nIpn7', 'goodvideohost.com', '2016-02-05 09:34:23', '2016-02-18 18:05:32'),
(1030, 84, 'http://sh.st/nIuOc', 'openload.co', '2016-02-05 09:34:35', '2016-02-18 18:05:34'),
(1031, 84, 'http://sh.st/nIuOm', 'youwatch.org', '2016-02-05 09:34:35', '2016-02-18 18:05:36'),
(1032, 84, 'http://sh.st/nIuOW', 'vidspot.net', '2016-02-05 09:34:35', '2016-02-18 18:05:37'),
(1033, 84, 'http://sh.st/nIuOE', 'allmyvideos.net', '2016-02-05 09:34:35', '2016-02-18 18:05:38'),
(1034, 84, 'http://sh.st/nIuOR', 'goodvideohost.com', '2016-02-05 09:34:35', '2016-02-18 18:05:39'),
(1035, 83, 'http://sh.st/nIyBe', 'openload.co', '2016-02-05 09:34:46', '2016-02-18 18:05:41'),
(1036, 83, 'http://sh.st/nIyBy', 'youwatch.org', '2016-02-05 09:34:46', '2016-02-18 18:05:44'),
(1037, 83, 'http://sh.st/nIyBi', 'vidspot.net', '2016-02-05 09:34:46', '2016-02-18 18:05:45'),
(1038, 83, 'http://sh.st/nIyBo', 'allmyvideos.net', '2016-02-05 09:34:46', '2016-02-18 18:05:46'),
(1039, 83, 'http://sh.st/nIyBp', 'goodvideohost.com', '2016-02-05 09:34:46', '2016-02-18 18:05:48'),
(1040, 82, 'http://sh.st/nU8cM', 'openload.co', '2016-02-05 09:34:56', '2016-02-18 18:05:50'),
(1041, 82, 'http://sh.st/nU8c6', 'youwatch.org', '2016-02-05 09:34:56', '2016-02-18 18:05:51'),
(1042, 82, 'http://sh.st/nU8c9', 'allmyvideos.net', '2016-02-05 09:34:56', '2016-02-18 18:05:52'),
(1043, 82, 'http://sh.st/nU8vw', 'vidspot.net', '2016-02-05 09:34:56', '2016-02-18 18:05:53'),
(1044, 82, 'http://sh.st/nU8vt', 'goodvideohost.com', '2016-02-05 09:34:56', '2016-02-18 18:05:55'),
(1045, 76, 'http://sh.st/nYdQa', 'openload.co', '2016-02-05 09:35:06', '2016-02-18 18:05:58'),
(1046, 76, 'http://sh.st/nYdQd', 'youwatch.org', '2016-02-05 09:35:06', '2016-02-18 18:05:59'),
(1047, 76, 'http://sh.st/nYdQg', 'vidspot.net', '2016-02-05 09:35:07', '2016-02-18 18:06:00'),
(1048, 76, 'http://sh.st/nYdQh', 'allmyvideos.net', '2016-02-05 09:35:07', '2016-02-18 18:06:01'),
(1049, 76, 'http://sh.st/nYdQj', 'goodvideohost.com', '2016-02-05 09:35:07', '2016-02-18 18:06:03'),
(1050, 70, 'http://sh.st/nRYTa', 'youwatch.org', '2016-02-05 09:36:08', '2016-02-18 18:06:04'),
(1051, 70, 'http://sh.st/nRYTs', 'goodvideohost.com', '2016-02-05 09:36:08', '2016-02-18 18:06:06'),
(1052, 69, 'http://sh.st/nTySf', 'openload.co', '2016-02-05 09:36:43', '2016-02-18 18:06:08'),
(1053, 69, 'http://sh.st/nRR2D', 'youwatch.org', '2016-02-05 09:36:43', '2016-02-18 18:06:10'),
(1054, 69, 'http://sh.st/nRR2F', 'allmyvideos.net', '2016-02-05 09:36:43', '2016-02-18 18:06:11'),
(1055, 69, 'http://sh.st/nRR2H', 'vidspot.net', '2016-02-05 09:36:43', '2016-02-18 18:06:12'),
(1056, 69, 'http://sh.st/nRR2L', 'goodvideohost.com', '2016-02-05 09:36:43', '2016-02-18 18:06:14'),
(1057, 68, 'http://sh.st/nRRIe', 'youwatch.org', '2016-02-05 09:36:53', '2016-02-18 18:06:17'),
(1058, 68, 'http://sh.st/nRRIt', 'allmyvideos.net', '2016-02-05 09:36:53', '2016-02-18 18:06:19'),
(1059, 68, 'http://sh.st/nRRIp', 'vidspot.net', '2016-02-05 09:36:53', '2016-02-18 18:06:20'),
(1060, 68, 'http://sh.st/nRYz5', 'goodvideohost.com', '2016-02-05 09:36:53', '2016-02-18 18:06:21'),
(1061, 61, 'http://sh.st/nQUnT', 'youwatch.org', '2016-02-05 09:37:40', '2016-02-18 18:06:24'),
(1062, 61, 'http://sh.st/nQUnI', 'vidspot.net', '2016-02-05 09:37:40', '2016-02-18 18:06:25'),
(1063, 61, 'http://sh.st/nQUnP', 'allmyvideos.net', '2016-02-05 09:37:40', '2016-02-18 18:06:26'),
(1064, 61, 'http://sh.st/nQUnS', 'goodvideohost.com', '2016-02-05 09:37:40', '2016-02-18 18:06:28'),
(1065, 59, 'http://sh.st/nm4MN', 'youwatch.org', '2016-02-05 09:38:01', '2016-02-18 18:06:29'),
(1066, 59, 'http://sh.st/nm4M3', 'allmyvideos.net', '2016-02-05 09:38:01', '2016-02-18 18:06:30'),
(1067, 59, 'http://sh.st/nm4M7', 'vidspot.net', '2016-02-05 09:38:01', '2016-02-18 18:06:31'),
(1068, 59, 'http://sh.st/nm41w', 'goodvideohost.com', '2016-02-05 09:38:01', '2016-02-18 18:06:33'),
(1069, 55, 'http://sh.st/nmpmI', 'youwatch.org', '2016-02-05 09:38:20', '2016-02-18 18:06:35'),
(1070, 55, 'http://sh.st/nmpmF', 'vidspot.net', '2016-02-05 09:38:20', '2016-02-18 18:06:36'),
(1071, 55, 'http://sh.st/nmpmX', 'allmyvideos.net', '2016-02-05 09:38:20', '2016-02-18 18:06:37'),
(1072, 55, 'http://sh.st/nmpm4', 'goodvideohost.com', '2016-02-05 09:38:20', '2016-02-18 18:06:39'),
(1073, 54, 'http://sh.st/nmiCm', 'youwatch.org', '2016-02-05 09:38:31', '2016-02-18 18:06:41'),
(1074, 54, 'http://sh.st/nmiCR', 'vidspot.net', '2016-02-05 09:38:32', '2016-02-18 18:06:42'),
(1075, 54, 'http://sh.st/nmiCO', 'allmyvideos.net', '2016-02-05 09:38:32', '2016-02-18 18:06:43'),
(1076, 54, 'http://sh.st/nmiC9', 'goodvideohost.com', '2016-02-05 09:38:32', '2016-02-18 18:06:44'),
(1077, 53, 'http://sh.st/nmiiB', 'youwatch.org', '2016-02-05 09:38:56', '2016-02-18 18:06:45'),
(1078, 53, 'http://sh.st/nmii3', 'goodvideohost.com', '2016-02-05 09:38:56', '2016-02-18 18:06:46'),
(1079, 52, 'http://sh.st/nbHsI', 'youwatch.org', '2016-02-05 09:39:26', '2016-02-18 18:06:49'),
(1080, 52, 'http://sh.st/nbHsO', 'vidspot.net', '2016-02-05 09:39:26', '2016-02-18 18:06:50'),
(1081, 52, 'http://sh.st/nbHsA', 'allmyvideos.net', '2016-02-05 09:39:26', '2016-02-18 18:06:51'),
(1082, 52, 'http://sh.st/nbHsS', 'goodvideohost.com', '2016-02-05 09:39:26', '2016-02-18 18:06:53'),
(1083, 48, 'http://sh.st/nvb5g', 'youwatch.org', '2016-02-05 09:40:28', '2016-02-18 18:06:54'),
(1084, 48, 'http://sh.st/nvb5c', 'goodvideohost.com', '2016-02-05 09:40:28', '2016-02-18 18:06:56'),
(1085, 43, 'http://sh.st/nvz2t', 'youwatch.org', '2016-02-05 09:40:51', '2016-02-18 18:06:57'),
(1086, 43, 'http://sh.st/nvz2i', 'vidspot.net', '2016-02-05 09:40:51', '2016-02-18 18:06:59'),
(1087, 43, 'http://sh.st/nvz2o', 'allmyvideos.net', '2016-02-05 09:40:51', '2016-02-18 18:07:00'),
(1088, 43, 'http://sh.st/nvz2f', 'goodvideohost.com', '2016-02-05 09:40:51', '2016-02-18 18:07:02'),
(1089, 42, 'http://sh.st/nvzWF', 'youwatch.org', '2016-02-05 09:41:01', '2016-02-18 18:07:04'),
(1090, 42, 'http://sh.st/nvzWG', 'goodvideohost.com', '2016-02-05 09:41:01', '2016-02-18 18:07:06'),
(1091, 42, 'http://sh.st/nvzWH', 'allmyvideos.net', '2016-02-05 09:41:01', '2016-02-18 18:07:06'),
(1092, 42, 'http://sh.st/nvzWL', 'vidspot.net', '2016-02-05 09:41:01', '2016-02-18 18:07:07'),
(1093, 31, 'http://sh.st/naEnc', 'allmyvideos.net', '2016-02-05 09:41:19', '2016-02-18 18:07:09'),
(1094, 31, 'http://sh.st/naEnn', 'vidspot.net', '2016-02-05 09:41:19', '2016-02-18 18:07:13'),
(1095, 29, 'http://sh.st/naQHk', 'allmyvideos.net', '2016-02-05 09:42:07', '2016-02-18 18:07:14'),
(1096, 29, 'http://sh.st/naEaA', 'allmyvideos.net', '2016-02-05 09:42:07', '2016-02-18 18:07:15'),
(1097, 29, 'http://sh.st/naEaF', 'vidspot.net', '2016-02-05 09:42:07', '2016-02-18 18:07:16'),
(1099, 29, 'http://sh.st/na1dQ', 'vidspot.net', '2016-02-05 09:42:07', '2016-02-18 18:07:18'),
(1100, 27, 'http://sh.st/nahr2', 'allmyvideos.net', '2016-02-05 09:42:29', '2016-02-18 18:07:20'),
(1101, 27, 'http://sh.st/nahr3', 'vidspot.net', '2016-02-05 09:42:29', '2016-02-18 18:07:21'),
(1102, 27, 'http://sh.st/nvxcq', 'youwatch.org', '2016-02-05 09:42:29', '2016-02-18 18:07:23'),
(1103, 19, 'http://sh.st/nuDFV', 'allmyvideos.net', '2016-02-05 09:44:14', '2016-02-18 18:07:23'),
(1104, 19, 'http://sh.st/nuDFM', 'vidspot.net', '2016-02-05 09:44:14', '2016-02-18 18:07:25'),
(1105, 17, 'http://sh.st/nBBbc', 'openload.co', '2016-02-05 09:44:55', '2016-02-18 18:07:27'),
(1106, 17, 'http://sh.st/nBBbQ', 'youwatch.org', '2016-02-05 09:44:55', '2016-02-18 18:07:28'),
(1107, 17, 'http://sh.st/nBBbW', 'goodvideohost.com', '2016-02-05 09:44:55', '2016-02-18 18:07:30'),
(1108, 104, 'http://sh.st/nHFET', 'openload.co', '2016-02-05 09:45:51', '2016-02-18 18:07:33'),
(1109, 104, 'http://sh.st/nHFEP', 'youwatch.org', '2016-02-05 09:45:51', '2016-02-18 18:07:36'),
(1110, 104, 'http://sh.st/nHFEA', 'vidspot.net', '2016-02-05 09:45:51', '2016-02-18 18:07:37'),
(1111, 104, 'http://sh.st/nHFED', 'allmyvideos.net', '2016-02-05 09:45:51', '2016-02-18 18:07:38'),
(1112, 104, 'http://sh.st/nHFEF', 'goodvideohost.com', '2016-02-05 09:45:51', '2016-02-18 18:07:41'),
(1113, 91, 'http://sh.st/nAEgn', 'openload.co', '2016-02-05 09:46:18', '2016-02-05 09:46:18'),
(1114, 91, 'http://sh.st/nAEgO', 'youwatch.org', '2016-02-05 09:46:18', '2016-02-18 18:07:47'),
(1115, 91, 'http://sh.st/nAEgF', 'vidspot.net', '2016-02-05 09:46:18', '2016-02-18 18:07:48'),
(1116, 91, 'http://sh.st/nAEgZ', 'allmyvideos.net', '2016-02-05 09:46:18', '2016-02-18 18:07:50'),
(1117, 91, 'http://sh.st/nAEgV', 'goodvideohost.com', '2016-02-05 09:46:18', '2016-02-18 18:07:52'),
(1118, 77, 'http://sh.st/nYhRE', 'openload.co', '2016-02-05 09:47:15', '2016-02-18 18:07:55'),
(1119, 77, 'http://sh.st/nYhRO', 'youwatch.org', '2016-02-05 09:47:15', '2016-02-18 18:07:57'),
(1120, 77, 'http://sh.st/nYhRA', 'vidspot.net', '2016-02-05 09:47:15', '2016-02-18 18:07:59'),
(1121, 77, 'http://sh.st/nYhRD', 'allmyvideos.net', '2016-02-05 09:47:15', '2016-02-18 18:08:02'),
(1122, 77, 'http://sh.st/nYhRG', 'goodvideohost.com', '2016-02-05 09:47:15', '2016-02-18 18:08:03'),
(1123, 74, 'http://sh.st/nTlJL', 'openload.co', '2016-02-05 09:47:27', '2016-02-18 18:08:06'),
(1124, 74, 'http://sh.st/nTlJB', 'youwatch.org', '2016-02-05 09:47:27', '2016-02-18 18:08:08'),
(1125, 74, 'http://sh.st/nTlJM', 'allmyvideos.net', '2016-02-05 09:47:27', '2016-02-18 18:08:09'),
(1126, 74, 'http://sh.st/nTlJ7', 'vidspot.net', '2016-02-05 09:47:27', '2016-02-18 18:08:11'),
(1127, 74, 'http://sh.st/nTlK0', 'goodvideohost.com', '2016-02-05 09:47:27', '2016-02-18 18:08:13'),
(1128, 62, 'http://sh.st/nQI8b', 'youwatch.org', '2016-02-05 09:47:52', '2016-02-18 18:08:15'),
(1129, 62, 'http://sh.st/nQI8n', 'goodvideohost.com', '2016-02-05 09:47:52', '2016-02-18 18:08:16'),
(1131, 57, 'http://sh.st/nmd5s', 'youwatch.org', '2016-02-05 09:48:11', '2016-02-18 18:08:19'),
(1132, 57, 'http://sh.st/nmd5d', 'vidspot.net', '2016-02-05 09:48:11', '2016-02-18 18:08:20'),
(1133, 57, 'http://sh.st/nmd5j', 'allmyvideos.net', '2016-02-05 09:48:11', '2016-02-18 18:08:21'),
(1134, 57, 'http://sh.st/nmd5k', 'goodvideohost.com', '2016-02-05 09:48:11', '2016-02-18 18:08:22'),
(1135, 28, 'http://sh.st/nvxt1', 'youwatch.org', '2016-02-05 09:48:30', '2016-02-18 18:08:24'),
(1136, 28, 'http://sh.st/nahS4', 'allmyvideos.net', '2016-02-05 09:48:30', '2016-02-18 18:08:25'),
(1137, 28, 'http://sh.st/nahS7', 'vidspot.net', '2016-02-05 09:48:30', '2016-02-18 18:08:27'),
(1138, 28, 'http://sh.st/nvxt2', 'goodvideohost.com', '2016-02-05 09:48:30', '2016-02-18 18:08:29'),
(1140, 26, 'http://sh.st/nagYx', 'allmyvideos.net', '2016-02-05 09:48:59', '2016-02-18 18:08:32'),
(1141, 26, 'http://sh.st/nagYc', 'vidspot.net', '2016-02-05 09:48:59', '2016-02-18 18:08:33'),
(1142, 23, 'http://sh.st/noPFU', 'allmyvideos.net', '2016-02-05 09:49:29', '2016-02-18 18:08:34'),
(1143, 23, 'http://sh.st/noPFI', 'vidspot.net', '2016-02-05 09:49:30', '2016-02-18 18:08:36'),
(1144, 23, 'http://sh.st/noPFP', 'youwatch.org', '2016-02-05 09:49:30', '2016-02-18 18:08:38'),
(1145, 23, 'http://sh.st/nbSGF', 'goodvideohost.com', '2016-02-05 09:49:30', '2016-02-18 18:08:39'),
(1146, 22, 'http://sh.st/nuLai', 'vidspot.net', '2016-02-05 09:49:39', '2016-02-18 18:08:40'),
(1147, 22, 'http://sh.st/nuLay', 'allmyvideos.net', '2016-02-05 09:49:40', '2016-02-18 18:08:41'),
(1148, 22, 'http://sh.st/nsCcG', 'youwatch.org', '2016-02-05 09:49:40', '2016-02-18 18:08:42'),
(1149, 102, 'http://sh.st/nDQ3o', 'openload.co', '2016-02-05 09:51:13', '2016-02-18 18:08:44'),
(1150, 102, 'http://sh.st/nDQ3s', 'youwatch.org', '2016-02-05 09:51:13', '2016-02-18 18:08:46'),
(1151, 64, 'http://sh.st/nWyIN', 'youwatch.org', '2016-02-05 09:51:35', '2016-02-18 18:08:47'),
(1152, 64, 'http://sh.st/nWyIM', 'vidspot.net', '2016-02-05 09:51:35', '2016-02-18 18:08:49'),
(1153, 64, 'http://sh.st/nWyI1', 'youwatch.org', '2016-02-05 09:51:35', '2016-02-18 18:08:51'),
(1154, 64, 'http://sh.st/nWyI3', 'allmyvideos.net', '2016-02-05 09:51:35', '2016-02-18 18:08:52'),
(1155, 64, 'http://sh.st/nWyI4', 'goodvideohost.com', '2016-02-05 09:51:35', '2016-02-18 18:08:53'),
(1156, 58, 'http://sh.st/nm3Vt', 'allmyvideos.net', '2016-02-05 09:51:53', '2016-02-18 18:08:54'),
(1157, 58, 'http://sh.st/nm3Vf', 'vidspot.net', '2016-02-05 09:51:53', '2016-02-18 18:08:57'),
(1158, 58, 'http://sh.st/nm3Vl', 'goodvideohost.com', '2016-02-05 09:51:53', '2016-02-18 18:08:59'),
(1159, 108, 'http://sh.st/nLoAa', 'openload.co', '2016-02-05 09:53:07', '2016-02-18 18:09:01'),
(1160, 108, 'http://sh.st/nLoAj', 'youwatch.org', '2016-02-05 09:53:07', '2016-02-18 18:09:03'),
(1161, 108, 'http://sh.st/nLoAl', 'goodvideohost.com', '2016-02-05 09:53:07', '2016-02-18 18:09:04'),
(1162, 63, 'http://sh.st/nQXUq', 'youwatch.org', '2016-02-05 09:53:35', '2016-02-18 18:09:06'),
(1163, 63, 'http://sh.st/nQXUe', 'goodvideohost.com', '2016-02-05 09:53:35', '2016-02-18 18:09:08'),
(1164, 56, 'http://sh.st/nmsEt', 'youwatch.org', '2016-02-05 09:53:55', '2016-02-18 18:09:10'),
(1165, 56, 'http://sh.st/nmsEz', 'goodvideohost.com', '2016-02-05 09:53:55', '2016-02-18 18:09:11'),
(1166, 51, 'http://sh.st/nbSn5', 'youwatch.org', '2016-02-05 09:54:16', '2016-02-18 18:09:13'),
(1167, 51, 'http://sh.st/nbSn6', 'vidspot.net', '2016-02-05 09:54:16', '2016-02-18 18:09:14'),
(1168, 51, 'http://sh.st/nbSn8', 'allmyvideos.net', '2016-02-05 09:54:16', '2016-02-18 18:09:15'),
(1169, 51, 'http://sh.st/nbSm0', 'goodvideohost.com', '2016-02-05 09:54:16', '2016-02-18 18:09:16'),
(1170, 50, 'http://sh.st/nvW7z', 'youwatch.org', '2016-02-05 09:54:35', '2016-02-18 18:09:17'),
(1171, 50, 'http://sh.st/nvW7x', 'allmyvideos.net', '2016-02-05 09:54:35', '2016-02-18 18:09:19'),
(1172, 50, 'http://sh.st/nvW7v', 'vidspot.net', '2016-02-05 09:54:35', '2016-02-18 18:09:20'),
(1173, 50, 'http://sh.st/nvW7n', 'goodvideohost.com', '2016-02-05 09:54:35', '2016-02-18 18:09:20'),
(1174, 41, 'http://sh.st/nvzrA', 'goodvideohost.com', '2016-02-05 09:54:55', '2016-02-18 18:09:21'),
(1175, 41, 'http://sh.st/nvzrS', 'youwatch.org', '2016-02-05 09:54:55', '2016-02-18 18:09:23'),
(1176, 41, 'http://sh.st/nvzrD', 'allmyvideos.net', '2016-02-05 09:54:55', '2016-02-18 18:09:24'),
(1177, 41, 'http://sh.st/nvzrG', 'vidspot.net', '2016-02-05 09:54:55', '2016-02-18 18:09:26'),
(1179, 103, 'http://sh.st/nHFsO', 'openload.co', '2016-02-05 09:55:16', '2016-02-18 18:09:28'),
(1180, 103, 'http://sh.st/nHFsL', 'youwatch.org', '2016-02-05 09:55:16', '2016-02-18 18:09:30'),
(1181, 103, 'http://sh.st/nHFsV', 'vidspot.net', '2016-02-05 09:55:16', '2016-02-18 18:09:31'),
(1182, 103, 'http://sh.st/nHFsB', 'allmyvideos.net', '2016-02-05 09:55:16', '2016-02-18 18:09:32'),
(1183, 103, 'http://sh.st/nHFsN', 'goodvideohost.com', '2016-02-05 09:55:17', '2016-02-18 18:09:33'),
(1184, 38, 'http://sh.st/nfi49', 'youwatch.org', '2016-02-05 09:55:40', '2016-02-18 18:09:35'),
(1185, 38, 'http://sh.st/nfi5w', 'goodvideohost.com', '2016-02-05 09:55:40', '2016-02-18 18:09:36'),
(1186, 105, 'http://sh.st/nHFZ4', 'openload.co', '2016-02-05 09:55:53', '2016-02-18 18:09:38'),
(1187, 105, 'http://sh.st/nHFZ9', 'youwatch.org', '2016-02-05 09:55:53', '2016-02-18 18:09:40'),
(1188, 105, 'http://sh.st/nHFX0', 'goodvideohost.com', '2016-02-05 09:55:53', '2016-02-18 18:09:41'),
(1189, 99, 'http://sh.st/nDv9R', 'openload.co', '2016-02-05 09:56:06', '2016-02-18 18:09:44'),
(1190, 99, 'http://sh.st/nDv9A', 'youwatch.org', '2016-02-05 09:56:06', '2016-02-18 18:09:45'),
(1191, 99, 'http://sh.st/nDv9H', 'goodvideohost.com', '2016-02-05 09:56:06', '2016-02-18 18:09:46'),
(1192, 96, 'http://sh.st/nSFtN', 'openload.co', '2016-02-05 09:56:19', '2016-02-18 18:09:48'),
(1193, 96, 'http://sh.st/nSFt6', 'youwatch.org', '2016-02-05 09:56:19', '2016-02-18 18:09:49'),
(1194, 96, 'http://sh.st/nSFyw', 'vidspot.net', '2016-02-05 09:56:19', '2016-02-18 18:09:54'),
(1195, 96, 'http://sh.st/nSFys', 'allmyvideos.net', '2016-02-05 09:56:19', '2016-02-18 18:09:54'),
(1196, 96, 'http://sh.st/nSFyg', 'goodvideohost.com', '2016-02-05 09:56:19', '2016-02-18 18:09:56'),
(1197, 81, 'http://sh.st/nYPIs', 'openload.co', '2016-02-05 09:56:31', '2016-02-18 18:09:58'),
(1198, 81, 'http://sh.st/nYPIz', 'youwatch.org', '2016-02-05 09:56:31', '2016-02-18 18:09:59'),
(1199, 81, 'http://sh.st/nYPIn', 'vidspot.net', '2016-02-05 09:56:31', '2016-02-18 18:10:00'),
(1200, 81, 'http://sh.st/nYPIm', 'goodvideohost.com', '2016-02-05 09:56:31', '2016-02-18 18:10:01'),
(1201, 37, 'http://sh.st/nsVZw', 'goodvideohost.com', '2016-02-05 09:56:54', '2016-02-18 18:10:03'),
(1202, 37, 'http://sh.st/nsVZe', 'youwatch.org', '2016-02-05 09:56:54', '2016-02-18 18:10:05'),
(1203, 49, 'http://sh.st/nvWg3', 'youwatch.org', '2016-02-05 09:57:13', '2016-02-18 18:10:06'),
(1204, 49, 'http://sh.st/nvWg5', 'allmyvideos.net', '2016-02-05 09:57:14', '2016-02-18 18:10:07'),
(1205, 49, 'http://sh.st/nvWg7', 'vidspot.net', '2016-02-05 09:57:14', '2016-02-18 18:10:08'),
(1206, 49, 'http://sh.st/nvWg8', 'goodvideohost.com', '2016-02-05 09:57:14', '2016-02-18 18:10:10'),
(1208, 35, 'http://sh.st/na2q6', 'goodvideohost.com', '2016-02-05 09:57:52', '2016-02-18 18:10:12'),
(1209, 35, 'http://sh.st/na2q7', 'youwatch.org', '2016-02-05 09:57:52', '2016-02-18 18:10:14'),
(1210, 75, 'http://sh.st/nTOv2', 'openload.co', '2016-02-05 09:58:07', '2016-02-18 18:10:16'),
(1211, 75, 'http://sh.st/nTObt', 'youwatch.org', '2016-02-05 09:58:07', '2016-02-18 18:10:18'),
(1212, 75, 'http://sh.st/nTObp', 'allmyvideos.net', '2016-02-05 09:58:07', '2016-02-18 18:10:19'),
(1213, 75, 'http://sh.st/nTObj', 'vidspot.net', '2016-02-05 09:58:07', '2016-02-18 18:10:20'),
(1214, 80, 'http://sh.st/nYEKp', 'openload.co', '2016-02-05 09:58:20', '2016-02-18 18:10:22'),
(1215, 80, 'http://sh.st/nYEKz', 'youwatch.org', '2016-02-05 09:58:20', '2016-02-18 18:10:23'),
(1216, 80, 'http://sh.st/nYEKb', 'vidspot.net', '2016-02-05 09:58:20', '2016-02-18 18:10:24'),
(1217, 80, 'http://sh.st/nYEKY', 'goodvideohost.com', '2016-02-05 09:58:20', '2016-02-18 18:10:26'),
(1218, 34, 'http://sh.st/na1IK', 'youwatch.org', '2016-02-05 09:58:46', '2016-02-18 18:10:27'),
(1219, 34, 'http://sh.st/na1IX', 'goodvideohost.com', '2016-02-05 09:58:46', '2016-02-18 18:10:29'),
(1220, 34, 'http://sh.st/na2EP', 'vidspot.net', '2016-02-05 09:58:47', '2016-02-18 18:10:30'),
(1221, 95, 'http://sh.st/nSTRS', 'openload.co', '2016-02-05 09:59:19', '2016-02-18 18:10:35'),
(1222, 95, 'http://sh.st/nSTRZ', 'youwatch.org', '2016-02-05 09:59:19', '2016-02-18 18:10:39'),
(1223, 95, 'http://sh.st/nSTR8', 'vidspot.net', '2016-02-05 09:59:19', '2016-02-18 18:10:40'),
(1224, 95, 'http://sh.st/nSTTe', 'allmyvideos.net', '2016-02-05 09:59:19', '2016-02-18 18:10:41'),
(1225, 95, 'http://sh.st/nSTTi', 'goodvideohost.com', '2016-02-05 09:59:19', '2016-02-18 18:10:43'),
(1226, 47, 'http://sh.st/nvbW9', 'youwatch.org', '2016-02-05 09:59:45', '2016-02-18 18:10:45'),
(1227, 47, 'http://sh.st/nvbEw', 'allmyvideos.net', '2016-02-05 09:59:45', '2016-02-18 18:10:45'),
(1228, 47, 'http://sh.st/nvbEt', 'vidspot.net', '2016-02-05 09:59:45', '2016-02-18 18:10:46'),
(1229, 47, 'http://sh.st/nvbEi', 'goodvideohost.com', '2016-02-05 09:59:46', '2016-02-18 18:10:47'),
(1230, 33, 'http://sh.st/naMFQ', 'youwatch.org', '2016-02-05 10:01:31', '2016-02-18 18:10:49'),
(1231, 33, 'http://sh.st/naMFR', 'goodvideohost.com', '2016-02-05 10:01:31', '2016-02-18 18:10:50'),
(1232, 33, 'http://sh.st/na2hJ', 'vidspot.net', '2016-02-05 10:01:31', '2016-02-18 18:10:51'),
(1233, 79, 'http://sh.st/nYQKC', 'openload.co', '2016-02-05 10:01:45', '2016-02-18 18:10:53'),
(1234, 79, 'http://sh.st/nYQK2', 'youwatch.org', '2016-02-05 10:01:45', '2016-02-18 18:10:55'),
(1235, 79, 'http://sh.st/nYQK7', 'vidspot.net', '2016-02-05 10:01:46', '2016-02-18 18:10:57'),
(1236, 79, 'http://sh.st/nYQL0', 'goodvideohost.com', '2016-02-05 10:01:46', '2016-02-18 18:10:58'),
(1237, 36, 'http://sh.st/nsVuA', 'goodvideohost.com', '2016-02-05 10:02:05', '2016-02-18 18:11:00'),
(1238, 36, 'http://sh.st/nsVuS', 'youwatch.org', '2016-02-05 10:02:05', '2016-02-18 18:11:01'),
(1239, 36, 'http://sh.st/nsVuF', 'vidspot.net', '2016-02-05 10:02:05', '2016-02-18 18:11:03'),
(1240, 60, 'http://sh.st/nQW6h', 'youwatch.org', '2016-02-05 10:02:32', '2016-02-18 18:11:05'),
(1241, 60, 'http://sh.st/nQW6j', 'goodvideohost.com', '2016-02-05 10:02:32', '2016-02-18 18:11:07'),
(1242, 109, 'http://sh.st/nLaPM', 'openload.co', '2016-02-05 10:03:22', '2016-02-18 18:11:10'),
(1243, 109, 'http://sh.st/nLaP2', 'youwatch.org', '2016-02-05 10:03:22', '2016-02-18 18:11:16'),
(1244, 109, 'http://sh.st/nLaP6', 'vidspot.net', '2016-02-05 10:03:22', '2016-02-18 18:11:17'),
(1246, 109, 'http://sh.st/nLaA0', 'goodvideohost.com', '2016-02-05 10:03:22', '2016-02-18 18:11:19'),
(1247, 101, 'http://sh.st/nDmKM', 'openload.co', '2016-02-05 10:03:37', '2016-02-18 18:11:21'),
(1248, 101, 'http://sh.st/nDmK2', 'youwatch.org', '2016-02-05 10:03:37', '2016-02-18 18:11:23'),
(1249, 101, 'http://sh.st/nDmK3', 'vidspot.net', '2016-02-05 10:03:37', '2016-02-18 18:11:24'),
(1250, 101, 'http://sh.st/nDmK4', 'allmyvideos.net', '2016-02-05 10:03:37', '2016-02-18 18:11:25'),
(1251, 100, 'http://sh.st/nDnFR', 'openload.co', '2016-02-05 10:03:51', '2016-02-18 18:11:27'),
(1252, 100, 'http://sh.st/nDnFI', 'youwatch.org', '2016-02-05 10:03:51', '2016-02-18 18:11:29'),
(1253, 100, 'http://sh.st/nDnFP', 'vidspot.net', '2016-02-05 10:03:51', '2016-02-18 18:11:30'),
(1254, 100, 'http://sh.st/nDnFG', 'allmyvideos.net', '2016-02-05 10:03:51', '2016-02-18 18:11:32'),
(1255, 100, 'http://sh.st/nDnFK', 'goodvideohost.com', '2016-02-05 10:03:51', '2016-02-18 18:11:33'),
(1256, 93, 'http://sh.st/nAIV8', 'openload.co', '2016-02-05 10:04:39', '2016-02-18 18:11:35'),
(1257, 93, 'http://sh.st/nAIBu', 'youwatch.org', '2016-02-05 10:04:39', '2016-02-18 18:11:37'),
(1258, 93, 'http://sh.st/nAIBp', 'vidspot.net', '2016-02-05 10:04:39', '2016-02-18 18:11:38'),
(1259, 93, 'http://sh.st/nAIBs', 'allmyvideos.net', '2016-02-05 10:04:39', '2016-02-18 18:11:39'),
(1260, 93, 'http://sh.st/nAIBf', 'goodvideohost.com', '2016-02-05 10:04:39', '2016-02-18 18:11:41'),
(1261, 46, 'http://sh.st/nvbiK', 'youwatch.org', '2016-02-05 10:05:01', '2016-02-18 18:11:44'),
(1262, 46, 'http://sh.st/nvbiZ', 'goodvideohost.com', '2016-02-05 10:05:01', '2016-02-18 18:11:45'),
(1263, 44, 'http://sh.st/nvcmA', 'youwatch.org', '2016-02-05 10:05:19', '2016-02-18 18:11:47'),
(1264, 44, 'http://sh.st/nvv2R', 'vidspot.net', '2016-02-05 10:05:19', '2016-02-18 18:11:48'),
(1265, 44, 'http://sh.st/nvv2I', 'allmyvideos.net', '2016-02-05 10:05:19', '2016-02-18 18:11:49'),
(1266, 44, 'http://sh.st/nvcmD', 'goodvideohost.com', '2016-02-05 10:05:19', '2016-02-18 18:11:51'),
(1267, 32, 'http://sh.st/naEC6', 'allmyvideos.net', '2016-02-05 10:05:43', '2016-02-18 18:11:51'),
(1268, 32, 'http://sh.st/naEC7', 'vidspot.net', '2016-02-05 10:05:43', '2016-02-18 18:11:53'),
(1269, 32, 'http://sh.st/na3yB', 'goodvideohost.com', '2016-02-05 10:05:43', '2016-02-18 18:11:53'),
(1270, 32, 'http://sh.st/na3y1', 'youwatch.org', '2016-02-05 10:05:43', '2016-02-18 18:11:56'),
(1271, 78, 'http://sh.st/nYmIU', 'openload.co', '2016-02-05 10:06:06', '2016-02-18 18:11:58'),
(1272, 78, 'http://sh.st/nYmIK', 'youwatch.org', '2016-02-05 10:06:06', '2016-02-18 18:12:00'),
(1273, 78, 'http://sh.st/nYmIV', 'vidspot.net', '2016-02-05 10:06:06', '2016-02-18 18:12:01'),
(1274, 78, 'http://sh.st/nYmIM', 'goodvideohost.com', '2016-02-05 10:06:06', '2016-02-18 18:12:03'),
(1275, 98, 'http://sh.st/nDvXT', 'openload.co', '2016-02-05 10:07:25', '2016-02-18 18:12:04'),
(1276, 98, 'http://sh.st/nDvXO', 'youwatch.org', '2016-02-05 10:07:25', '2016-02-18 18:12:07'),
(1277, 98, 'http://sh.st/nDvXF', 'goodvideohost.com', '2016-02-05 10:07:25', '2016-02-18 18:12:08'),
(1278, 92, 'http://sh.st/nARac', 'goodvideohost.com', '2016-02-05 10:07:44', '2016-02-18 18:12:09'),
(1279, 111, 'http://sh.st/nXpBk', 'openload.co', '2016-02-05 10:08:08', '2016-02-18 18:12:11'),
(1280, 111, 'http://sh.st/nXpBm', 'youwatch.org', '2016-02-05 10:08:08', '2016-02-18 18:12:12'),
(1281, 111, 'http://sh.st/nXpBQ', 'vidspot.net', '2016-02-05 10:08:08', '2016-02-18 18:12:13'),
(1282, 111, 'http://sh.st/nXpBW', 'allmyvideos.net', '2016-02-05 10:08:08', '2016-02-18 18:12:14'),
(1283, 111, 'http://sh.st/nXpBI', 'goodvideohost.com', '2016-02-05 10:08:08', '2016-02-18 18:12:16'),
(1284, 97, 'http://sh.st/nDvRU', 'openload.co', '2016-02-05 10:08:21', '2016-02-18 18:12:22'),
(1285, 97, 'http://sh.st/nDvRF', 'youwatch.org', '2016-02-05 10:08:21', '2016-02-18 18:12:23'),
(1286, 97, 'http://sh.st/nDvRH', 'goodvideohost.com', '2016-02-05 10:08:21', '2016-02-18 18:12:25'),
(1287, 107, 'http://sh.st/nJeSW', 'openload.co', '2016-02-05 10:08:33', '2016-02-18 18:12:27'),
(1288, 107, 'http://sh.st/nJeSU', 'youwatch.org', '2016-02-05 10:08:33', '2016-02-18 18:12:30'),
(1289, 107, 'http://sh.st/nJeSI', 'goodvideohost.com', '2016-02-05 10:08:33', '2016-02-18 18:12:31'),
(1290, 67, 'http://sh.st/nWpRx', 'youwatch.org', '2016-02-05 10:09:03', '2016-02-18 18:12:33'),
(1291, 67, 'http://sh.st/nWpRb', 'goodvideohost.com', '2016-02-05 10:09:03', '2016-02-18 18:12:34'),
(1292, 66, 'http://sh.st/nWo55', 'youwatch.org', '2016-02-05 10:09:15', '2016-02-18 18:12:37'),
(1293, 66, 'http://sh.st/nWo59', 'goodvideohost.com', '2016-02-05 10:09:15', '2016-02-18 18:12:37'),
(1294, 65, 'http://sh.st/nWoDu', 'youwatch.org', '2016-02-05 10:09:37', '2016-02-18 18:12:40'),
(1295, 65, 'http://sh.st/nWofY', 'allmyvideos.net', '2016-02-05 10:09:37', '2016-02-18 18:12:43'),
(1296, 65, 'http://sh.st/nWofO', 'vidspot.net', '2016-02-05 10:09:37', '2016-02-18 18:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('bgt63@walla.com', 'a74a05cbcf9f566ee6431307122f3d7f4177a4e41f66bfa4a67915a2f8f6a36c', '2015-11-21 15:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE IF NOT EXISTS `series` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `serie_genres`
--

CREATE TABLE IF NOT EXISTS `serie_genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bini Barazany', 'bgt636@gmail.com', '$2y$10$uD2C2K5eOSRpcR2kUjrKCOwiZCWrOv4x1RbVNrKy0sf4gDNENRkyW', 1, 'oZ6AeWo7Rc7PluDUGRanL4zY91iUZzQw4OsCB59SKgusIsFnosr0TX9dOXb6', '2015-11-16 09:02:17', '2016-02-18 18:25:53'),
(2, 'ביני ברזני', 'bgt63@walla.com', '$2y$10$zlHDfiHrzk6YC0zwfz2EzOEHUW6uXjjXYVrgDrMHXI1L23Z/Ug0Oi', 0, '570G2BPS0As8Q6gze9VfGvmlSzOCghmPLtyVajEahR9wYnIO4WIaXZkR6IZ0', '2015-12-03 21:39:07', '2016-02-03 17:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `watched`
--

CREATE TABLE IF NOT EXISTS `watched` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `watched`
--

INSERT INTO `watched` (`id`, `user_id`, `movie_id`, `created_at`, `updated_at`) VALUES
(1, 1, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
