-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 11:37 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db_tmf2034_g03`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `Account_Type_ID` int(6) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Access Limitation` enum('30','Unlimited') NOT NULL,
  `Extra` enum('One Device','Multiple  Device') NOT NULL,
  `price` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`Account_Type_ID`, `Name`, `Description`, `Access Limitation`, `Extra`, `price`) VALUES
(1, 'Free - User', 'Free users will only be able to have access for 30 days only', '30', 'One Device', '0.00'),
(2, 'RM17 - User', 'A registered user needs to pay the subscription of RM17 for one device viewing.', 'Unlimited', 'One Device', '17.00'),
(3, 'RM39 - User', 'A registered user needs to pay the subscription of RM39 for multiple devices viewing.', 'Unlimited', 'Multiple  Device', '39.00');

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `Actor_id` int(6) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`Actor_id`, `Name`, `Age`, `Gender`) VALUES
(1, 'Bryan Cranston', 65, 'Male'),
(2, 'Anna Gunn', 53, 'Female'),
(3, 'Aaron Paul', 42, 'Male'),
(4, 'Andy Samberg', 43, 'Male'),
(5, 'Stephanie Beatriz', 40, 'Female'),
(6, 'Andre Braugher', 56, 'Male'),
(7, 'Lily Collins', 32, 'Female'),
(8, 'Philippine Leroy-Beaulieu', 27, 'Female'),
(9, 'Ashley Park', 30, 'Female'),
(10, 'Christina Hendricks', 46, 'Female'),
(11, 'Retta', 51, 'Female'),
(12, 'Mae Whitman', 33, 'Female'),
(13, 'Viola Davis', 56, 'Female'),
(14, 'Billy Brown', 51, 'Male'),
(15, 'Alfred Enoch', 33, 'Male'),
(16, 'Jonathan Groff', 36, 'Male'),
(17, 'Holt McCallany', 58, 'Male'),
(18, 'Anna Torv', 42, 'Female'),
(19, 'Sarah Paulson', 47, 'Female'),
(20, 'Finn Wittrock', 37, 'Male'),
(21, 'Judy Davis', 66, 'Female'),
(22, 'Gillian Anderson', 53, 'Female'),
(23, 'Teresa Gallagher', 50, 'Female'),
(24, 'Rasmus Hardiker', 36, 'Male'),
(25, 'Shafiq Isa', 30, 'Male'),
(26, 'Noorhayati Maslini', 28, 'Female'),
(27, 'Azman Zulkiply', 30, 'Male'),
(28, 'Natsuki Hanae', 30, 'Male'),
(29, 'Sora Amamiya', 28, 'Female'),
(30, 'Takayuki Sugo', 69, 'Male'),
(31, 'Xanthe Huynh', 34, 'Female'),
(32, 'Ryota Osaka', 35, 'Male'),
(33, 'Ryohei Kimura', 37, 'Male'),
(34, 'Kento Yamazaki', 26, 'Male'),
(35, 'Tao Tsuchiya', 26, 'Female'),
(36, 'Nijiro Murakami', 24, 'Male'),
(37, 'Kayano Ai', 33, 'Female'),
(38, 'Irino Miyu', 33, 'Male'),
(39, 'Ono Kensho', 31, 'Male'),
(40, 'Uchida Yuuma', 28, 'Male'),
(41, 'Song Kang', 27, 'Male'),
(42, 'Lee Jin-uk', 39, 'Male'),
(43, 'Lee Si-young', 39, 'Female'),
(44, 'Jason Momoa', 41, 'Male'),
(45, 'Amber Heard', 35, 'Female'),
(46, 'Chantavit Dhanasevi', 37, 'Male'),
(47, 'Preechaya Pongthananikorn', 31, 'Female'),
(48, 'Anna Faris', 44, 'Female'),
(49, 'Regina Hall', 50, 'Female'),
(50, 'Saitama', 25, 'Male'),
(51, 'Kim Dong Seok', 31, 'Male'),
(52, 'Song Joong Ki', 36, 'Male'),
(53, 'Lee Dong Wook', 40, 'Male'),
(54, 'Han Seok Kyu', 57, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`) VALUES
(1, 'admin_1', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `admin_platform`
--

CREATE TABLE `admin_platform` (
  `admin_id` int(3) NOT NULL,
  `Series_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_platform`
--

INSERT INTO `admin_platform` (`admin_id`, `Series_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `daily_view`
--

CREATE TABLE `daily_view` (
  `view_id` int(3) NOT NULL,
  `Series_id` int(3) NOT NULL,
  `date` date NOT NULL,
  `total_view` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daily_view`
--

INSERT INTO `daily_view` (`view_id`, `Series_id`, `date`, `total_view`) VALUES
(1, 1, '2021-03-09', 2),
(2, 1, '2021-03-10', 1),
(3, 1, '2021-03-11', 1),
(4, 1, '2021-03-12', 1),
(5, 9, '2021-03-02', 2),
(6, 9, '2021-03-04', 1),
(7, 9, '2021-03-08', 1),
(8, 9, '2021-03-09', 1),
(9, 9, '2021-03-10', 1),
(10, 11, '2021-03-10', 2),
(11, 11, '2021-03-17', 2),
(12, 19, '2021-03-21', 1),
(13, 19, '2021-03-22', 1),
(14, 19, '2021-03-23', 1),
(15, 19, '2021-03-24', 1),
(16, 19, '2021-03-25', 1),
(17, 3, '2021-04-03', 1),
(18, 12, '2021-04-05', 1),
(19, 12, '2021-04-06', 2),
(20, 16, '2021-04-02', 1),
(21, 16, '2021-04-03', 1),
(22, 17, '2021-04-21', 1),
(23, 17, '2021-04-24', 1),
(24, 16, '2021-04-03', 1),
(25, 18, '2021-04-11', 2),
(26, 18, '2021-04-12', 3),
(27, 18, '2021-04-13', 1),
(28, 18, '2021-04-14', 1),
(29, 22, '2021-04-19', 1),
(30, 22, '2021-04-20', 1),
(31, 10, '2021-05-10', 1),
(32, 12, '2021-05-11', 1),
(33, 12, '2021-05-12', 1),
(34, 13, '2021-05-02', 1),
(35, 13, '2021-05-03', 1),
(36, 14, '2021-05-11', 1),
(37, 14, '2021-05-12', 3),
(38, 14, '2021-05-13', 1),
(39, 15, '2021-05-07', 1),
(40, 16, '2021-05-25', 1),
(41, 16, '2021-05-26', 1),
(42, 16, '2021-05-27', 1),
(43, 16, '2021-05-28', 1),
(48, 57, '2021-07-04', 1),
(49, 57, '2021-07-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `Director_id` int(6) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `Gender` enum('Male','Female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`Director_id`, `Name`, `Description`, `Gender`) VALUES
(1, 'Vince Gilligan', 'George Vincent Gilligan Jr. (born February 10, 1967) is an American writer, producer, and director. He is known for his television work, specifically as creator, head writer, executive producer, and director of Breaking Bad and its spin-off Better Call Saul.', 'Male'),
(2, 'Michelle MacLaren', 'Michelle MacLaren was born in 1965 in Canada. She is a producer and director, known for Breaking Bad (2008), The Walking Dead (2010) and Game of Thrones (2011).', 'Female'),
(3, 'Michael Slovis', 'Michael Slovis was born in New York City, New York, USA. He is a cinematographer and producer, known for Breaking Bad (2008), New Amsterdam (2018) and CSI: Crime Scene Investigation (2000).', 'Male'),
(4, 'Dan Goor', 'Dan Goor was born on April 28, 1975 in Washington, District of Columbia, USA. He is a writer and producer, known for Parks and Recreation (2009), Brooklyn Nine-Nine (2013) and Late Night with Conan O\'Brien (1993).', 'Male'),
(5, 'Michael Schur', 'Michael Schur was born on October 29, 1975 in West Hartford, Connecticut, USA as Michael Herbert Schur. He is a TV series creator, a writer, and producer known for series such as The Office (2005), Parks and Recreation (2009), Brooklyn Nine-Nine (2013) and The Good Place (2016). He has been married to J.J. Philbin since October 9, 2005.', 'Male'),
(6, 'Andrew Fleming', 'Andrew Fleming was born on December 30, 1965 in the USA. He is a director and producer, known for The Craft (1996), Hamlet 2 (2008) and Ideal Home (2018).', 'Male'),
(7, 'Jenna Bans', 'Jenna Bans is a producer and writer, known for Desperate Housewives (2004), Good Girls (2018) and Off the Map (2011). She has been married to Justin Spitzer since November 24, 2007. They have two children.', 'Female'),
(8, 'Peter Nowalk', 'Peter Nowalk is a producer and writer, known for Grey\'s Anatomy (2005), How to Get Away with Murder (2014) and Scandal (2012).', 'Male'),
(9, 'Joe Penhall', 'Joe Penhall is a writer and producer, known for The Road (2009), Mindhunter (2017) and Enduring Love (2004).', 'Male'),
(10, 'Ryan Murphy', 'Born November 9, 1965 in Indianapolis, Indiana, US as Ryan Patrick Murphy, he is an American writer, director, and producer, responsible for creating such hits as Nip/Tuck (2003), Glee (2009) and American Horror Story (2011).', 'Male'),
(11, 'Evan Romansky', 'Evan Romansky (born November 19, 1990) is an American screenwriter. He is widely known for being the creator and co-executive producer for Ratched (TV Series). On September 7, 2017 it was announced that Romansky\'s series Ratched (TV Series), was acquired by Netflix for a two-season, 18-episode, straight-to-series order. The show is expected to release in 2018.', 'Male'),
(12, 'Gorô Miyazaki', 'Graduated from Shinshu University, Faculty of Agriculture, Goro Miyazaki started his career as a construction consultant, and he designed parks or public institutions. Because his father, Hayao Miyazaki, is a world-famous filmmaker, he always had complex feeling towards his father. He decided not to work for anything related to animation, to avid to be compared with Hayao. However, the turning point came to his life in 1990s, which was the new project of construction of Studio Ghibli Museum in Mitaka, Tokyo.', 'Male'),
(13, 'Muhammad Usamah Zaid', 'Muhammad Usamah Zaid is a director and writer, known for Ejen Ali: The Movie (2019), Ejen Ali (2016) and Upin & Ipin (2007).', 'Male'),
(14, 'Shuhei Morita', 'Shuhei Morita was born on June 22, 1978 in Yamatotakada, Japan. He is a director and writer, known for Short Peace (2013), Kakurenbo (2005) and Possessions (2012).', 'Male'),
(15, 'Shigeyuki Miya', 'Shigeyuki MIYA is best known for directing The Kawai Complex Guide to Manors and Hostel Behavior, Blood Lad, Supernatural The Animation, and Aoi Bungaku Series. Also known for being director & character designer of Buzzer Beater.', 'Male'),
(16, 'Toshiki Hirano', 'Toshiki Hirano is a Japanese anime director, animator, and character designer. His wife is a fellow animator and manga artist Narumi Kakinouchi. Some of his works have appeared in the adult manga magazine Lemon People. He is representative of Toshiki Hirano Office Ltd.', 'Male'),
(17, '	Shinsuke Sato', 'Shinsuke Sato is a Japanese filmmaker, screenwriter and video game designer. He has directed several live-action film adaptations of manga and anime, including The Princess Blade, Gantz, I Am a Hero, Bleach, Inuyashiki, and Kingdom. \r\nBorn: September 16, 1970 (age 50 years),', 'Male'),
(18, 'Tatsuyuki Nagai', 'Tatsuyuki Nagai is a Japanese anime storyboard artist and director. He made his full directorial debut in 2006 with Honey and Clover II, after which he had directed 2007\'s Idolmaster: Xenoglossia and born on January 24, 1976 (age 45 years)', 'Male'),
(19, 'Tomochi Kosaka', 'Tomochi Kosaka is an animator with TMS and the Chief Series Director on the hit anime ReLIFE. Kosaka has seen multiple successes in a wide range of job roles, such as animation director, prop designer, and character designer. He has most recently taken part in the Yowamushi Pedal anime series as assistant character designer, production director, and animation director. The upcoming ReLife anime series is his first work as Chief Series Director.', 'Male'),
(20, 'Lee Eung-Bok', 'Born in 1969 (age 52 years) in South Korea.', 'Male'),
(21, 'James Wan', 'An Australian film director, screenwriter, producer, and comic book writer. He is also the founder of Atomic Monster Productions, which has produced film and television projects.', 'Male'),
(22, 'Keenen Ivory Wayans', 'Keenen Ivory Desuma Wayans Sr. (born June 8, 1958) is an American actor, comedian, filmmaker, and a member of the Wayans family of entertainers. He first came to prominence as the host and the creator of the 1990–1994 Fox sketch comedy series In Living Color. ', 'Male'),
(23, 'David Zucker', 'David S. Zucker (born October 16, 1947) is an American film director, producer, and screenwriter. Associated mostly with parody comedies, Zucker is recognized as the director and writer of the critically successful 1980 film Airplane! as well as being the creator of The Naked Gun franchise and for directing Scary Movie 3 and Scary Movie 4.', 'Male'),
(24, 'Malcolm D. Lee', 'Malcolm D. Lee (born January 11, 1970) is an American director, producer and screenwriter. He is known for directing numerous comedy films, including The Best Man (1999), Undercover Brother (2002), Roll Bounce (2005), Welcome Home Roscoe Jenkins (2008), Soul Men (2008), Scary Movie 5 (2013), The Best Man Holiday (2013), Girls Trip (2017), and Night School (2018).', 'Male'),
(25, 'Mez Tharatorn', 'Mez Tharatorn was born in Thailand. Mez Tharatorn movies and tv shows: ATM 2: Koo ver Error Er Rak...\r\nMez Tharatorn is a member of Thailand', 'Male'),
(26, 'Tomohiro', 'Tomohiro or ONE (born October 29, 1986) is the alias of a Japanese manga artist, best known for his manga series One-Punch Man (2009–present). He serialized Mob Psycho 100 in the online version of Weekly Shonen Sunday known as Ura Sunday which ended in December 2017. A spin-off of Mob Psycho 100, called REIGEN was created.', 'Male'),
(27, 'Oh Jin Seok', 'Oh Jin Suk is a South Korean TV drama director who is known mostly for the SBS dramas \"Yong Pal\" and \"My Sassy Girl\".', 'Male'),
(28, 'Baek Sang Hoon', 'Baek Sang Hoon is a South Korean TV drama director who is known mostly for the drama Descendants of The Sun.', 'Male'),
(29, ' Kang Shin Hyo', 'Kang Shin Hyo is a korean director.', 'Male'),
(30, 'Yoo In Shik', 'Yoo In Shik is a Korean Director.', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `direct_tv_series`
--

CREATE TABLE `direct_tv_series` (
  `Director_id` int(6) NOT NULL,
  `Series_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `direct_tv_series`
--

INSERT INTO `direct_tv_series` (`Director_id`, `Series_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 4),
(8, 5),
(9, 6),
(10, 7),
(11, 7),
(12, 8),
(13, 9),
(14, 10),
(15, 11),
(16, 11),
(17, 12),
(18, 13),
(19, 14),
(20, 15),
(21, 16),
(22, 18),
(23, 18),
(24, 18),
(25, 17),
(26, 19),
(27, 23),
(28, 20),
(29, 21),
(30, 20);

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `Ep_id` int(6) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Duration` float(5,2) NOT NULL,
  `Season_id` int(6) NOT NULL,
  `views` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`Ep_id`, `Title`, `Duration`, `Season_id`, `views`) VALUES
(1, 'Pilot', 48.00, 1, 0),
(2, 'Cat\'s in the Bag...', 48.00, 1, 0),
(3, '...And the Bag\'s in the River', 48.00, 1, 0),
(4, 'Cancer Man', 48.00, 1, 0),
(5, 'Gray Matter', 48.00, 1, 0),
(6, 'Crazy Handful of Nothin\'', 48.00, 1, 0),
(7, 'A No-Rough-Stuff-Type Deal', 48.00, 1, 0),
(8, 'Seven Thirty-Seven', 48.00, 2, 0),
(9, 'Gilled', 48.00, 2, 0),
(10, 'Bit by a Dead Bee', 48.00, 2, 0),
(11, 'Down', 48.00, 2, 0),
(12, 'Breakage', 48.00, 2, 0),
(13, 'No Más', 48.00, 3, 0),
(14, 'Caballo sin Nombre', 48.00, 3, 0),
(15, 'I.F.T.', 48.00, 3, 0),
(16, 'Green Light', 48.00, 3, 0),
(17, 'Más', 48.00, 3, 0),
(18, 'Box Cutter', 48.00, 4, 0),
(19, 'Thirty-Eight Snub', 48.00, 4, 0),
(20, 'Open House', 48.00, 4, 0),
(21, 'Bullet Points', 48.00, 4, 0),
(22, 'Shotgun', 48.00, 4, 0),
(23, 'Live Free or Die', 48.00, 5, 0),
(24, 'Madrigal', 48.00, 5, 0),
(25, 'Hazard Pay', 48.00, 5, 0),
(26, 'Fifty-One', 48.00, 5, 0),
(27, 'Dead Freight', 48.00, 5, 0),
(28, 'Pilot', 48.00, 6, 0),
(29, 'The Tagger', 48.00, 6, 0),
(30, 'The Slump', 48.00, 6, 0),
(31, 'Undercover', 48.00, 7, 0),
(32, 'Chocolate Milk', 48.00, 7, 0),
(33, 'The Jimmy Jab Games', 48.00, 7, 0),
(34, 'New Captain', 48.00, 8, 0),
(35, 'The Funeral', 48.00, 8, 0),
(36, 'Boyle\'s Hunch', 48.00, 8, 0),
(37, 'Coral Palms, Part 1', 48.00, 9, 0),
(38, 'Coral Palms, Part 2', 48.00, 9, 0),
(39, 'Coral Palms, Part 3', 48.00, 9, 0),
(40, 'The Big House Pt. 1', 22.00, 10, 0),
(41, 'The Big House Pt. 2', 22.00, 10, 0),
(42, 'Kicks', 22.00, 10, 0),
(43, 'Honeymoon', 22.00, 11, 0),
(44, 'Hitchcock & Scully', 22.00, 11, 0),
(45, 'The Tattler', 22.00, 11, 0),
(46, 'Manhunter', 22.00, 12, 0),
(47, 'Captain Kim', 22.00, 12, 0),
(48, 'Pimemento', 22.00, 12, 0),
(49, 'Episode #8.1', 22.00, 13, 0),
(50, 'Episode #8.2', 22.00, 13, 0),
(51, 'Episode #8.3', 22.00, 13, 0),
(52, 'Emily in Paris', 29.00, 14, 0),
(53, 'Masculin Féminin', 29.00, 14, 0),
(54, 'Sexy or Sexiest', 29.00, 14, 0),
(55, 'Episode #2.1', 29.00, 15, 0),
(56, 'Pilot', 44.00, 16, 0),
(57, 'Mo Money, Mo Problems', 44.00, 16, 0),
(58, 'I\'d Rather Be Crafting', 44.00, 17, 0),
(59, 'Slow Down, Children at Play', 44.00, 17, 0),
(60, 'Find Your Beach', 44.00, 18, 0),
(61, 'One Night in Bangkok', 44.00, 19, 0),
(62, 'Pilot', 43.00, 20, 0),
(63, 'It\'s Time to Move On', 43.00, 21, 0),
(64, 'We\'re Good People Now', 43.00, 22, 0),
(65, 'There Are Worse Things Than Murder', 43.00, 22, 0),
(66, 'Episode #1.1', 60.00, 23, 0),
(67, 'Episode #1.2', 60.00, 23, 0),
(68, 'Episode #2.1', 60.00, 24, 0),
(69, 'Pilot', 56.00, 25, 0),
(70, 'Ice Pick', 56.00, 25, 0),
(71, 'Episode #2.1', 56.00, 26, 0),
(72, 'The Child Born on a Stormy Night', 25.00, 27, 0),
(73, 'First Trip to the Forest', 25.00, 27, 0),
(74, 'The Forest, the Stars and the Dwarfs', 25.00, 27, 0),
(75, 'Misi: Iris', 21.00, 28, 0),
(76, 'Misi: Alpha', 21.00, 28, 0),
(77, 'Misi: Akademi', 21.00, 29, 0),
(78, 'Misi: Orientasi', 21.00, 29, 0),
(79, 'Tragedy', 27.00, 30, 0),
(80, 'Incubation', 27.00, 30, 0),
(81, 'New Surge', 27.00, 31, 0),
(82, 'START: Those Who Hunt', 27.00, 32, 0),
(83, 'Place: And So, Once Again', 27.00, 33, 0),
(84, 'She\'s a Skeleton Now', 24.00, 34, 0),
(85, 'Back Home, But Not Really', 24.00, 34, 0),
(86, 'You Had It All Along', 24.00, 34, 0),
(87, 'Episode 1', 49.00, 35, 0),
(88, 'Episode 2', 51.00, 35, 0),
(89, 'Episode 3', 42.00, 35, 0),
(90, 'Episode 4', 47.00, 35, 0),
(91, 'Episode 5', 52.00, 35, 0),
(92, 'Episode 6', 42.00, 35, 0),
(93, 'Episode 7', 48.00, 35, 0),
(94, 'Episode 8', 53.00, 35, 0),
(95, 'Super Peace Busters', 22.00, 36, 0),
(96, 'The Hero Menma', 22.00, 36, 0),
(97, 'Menma Search Party', 22.00, 36, 0),
(98, 'A White Dress, A Blue Ribbon', 22.00, 36, 0),
(99, 'Tunnels', 22.00, 36, 0),
(100, 'Forget Me, Forget Me Not', 22.00, 36, 0),
(101, 'True Wish', 22.00, 36, 0),
(102, 'I Wonder', 22.00, 36, 0),
(103, 'Menma and the Rest', 22.00, 36, 0),
(104, 'Fireworks', 22.00, 36, 0),
(105, 'The Flower That Bloomed That Summer', 22.00, 36, 0),
(106, 'Kaizaki Arata (27), Unemployed', 23.00, 37, 0),
(107, 'Communication Skills: Zero', 23.00, 37, 0),
(108, 'You\'re Old Now', 23.00, 37, 0),
(109, 'Fall', 23.00, 37, 0),
(110, 'Overlap', 23.00, 37, 0),
(111, 'This Isn\'t the First Time', 23.00, 37, 0),
(112, 'Test Subject 001->002', 23.00, 37, 0),
(113, 'Rift', 23.00, 37, 0),
(114, 'Revenge', 23.00, 37, 0),
(115, 'Everyone\'s Selfish Desires', 23.00, 37, 0),
(116, 'A Trip to the Past', 23.00, 37, 0),
(117, 'Double Panic', 23.00, 37, 0),
(118, 'Confession', 23.00, 37, 0),
(119, 'Episode 1', 50.00, 38, 0),
(120, 'Episode 2', 57.00, 38, 0),
(121, 'Episode 3', 46.00, 38, 0),
(122, 'Episode 4', 47.00, 38, 0),
(123, 'Episode 5', 45.00, 38, 0),
(124, 'Episode 6', 54.00, 38, 0),
(125, 'Episode 7', 49.00, 38, 0),
(126, 'Episode 8', 53.00, 38, 0),
(127, 'Episode 9', 55.00, 38, 0),
(128, 'Episode 10', 59.00, 38, 0),
(129, 'Aquaman', 143.00, 39, 0),
(130, 'ATM: Er Rak Error', 123.00, 40, 0),
(131, 'Scary Movie (film series)', 88.00, 41, 0),
(132, 'One-Punch Man', 24.00, 42, 0),
(134, 'we', 12.00, 25, 0),
(135, 'erewrw', 48.00, 46, 0),
(136, 'rrr', 12.00, 46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `Genre_id` int(3) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Genre_id`, `Name`) VALUES
(1, 'Crime'),
(2, 'Thillers'),
(3, 'Comedy'),
(4, 'Romance'),
(5, 'Drama'),
(6, 'Mystery'),
(7, 'Animation'),
(8, 'Family'),
(9, 'Fantasy'),
(10, 'Action'),
(11, 'Sci-Fi'),
(12, 'Slice of life'),
(13, 'Supernatural'),
(14, 'School'),
(15, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `genre_tv_series`
--

CREATE TABLE `genre_tv_series` (
  `Genre_id` int(3) NOT NULL,
  `Series_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre_tv_series`
--

INSERT INTO `genre_tv_series` (`Genre_id`, `Series_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 20),
(1, 23),
(2, 1),
(2, 6),
(2, 12),
(3, 2),
(3, 3),
(3, 4),
(3, 9),
(3, 11),
(3, 18),
(4, 3),
(4, 14),
(4, 17),
(4, 22),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 10),
(5, 13),
(5, 15),
(6, 5),
(6, 7),
(6, 12),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 19),
(8, 8),
(9, 8),
(9, 12),
(9, 15),
(9, 21),
(10, 9),
(10, 10),
(10, 11),
(10, 12),
(10, 16),
(11, 12),
(12, 13),
(12, 14),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `Account_id` int(6) NOT NULL,
  `Series_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`Account_id`, `Series_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `receipt_id` int(2) NOT NULL,
  `user_id` int(6) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`receipt_id`, `user_id`, `Date`) VALUES
(1, 1, '2021-06-01'),
(2, 2, '2021-06-30'),
(3, 4, '2021-07-01'),
(4, 3, '2021-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `Season_id` int(6) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Total Episode` int(6) NOT NULL,
  `Date Publish` date NOT NULL,
  `Series_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`Season_id`, `Title`, `Total Episode`, `Date Publish`, `Series_id`) VALUES
(1, 'Season 1', 7, '2008-01-20', 1),
(2, 'Season 2', 13, '2009-03-08', 1),
(3, 'Season 3', 13, '2010-03-21', 1),
(4, 'Season 4', 13, '2011-07-17', 1),
(5, 'Season 5', 16, '2012-07-15', 1),
(6, 'Season 1', 29, '2012-09-17', 2),
(7, 'Season 2', 23, '2014-09-28', 2),
(8, 'Seaon 3', 23, '2015-09-27', 2),
(9, 'Season 4', 22, '2016-09-20', 2),
(10, 'Season 5', 22, '2017-09-26', 2),
(11, 'Season 6', 18, '2019-01-10', 2),
(12, 'Season 7', 13, '2020-02-06', 2),
(13, 'Season 8', 10, '2021-05-31', 2),
(14, 'Season 1', 10, '2020-10-02', 3),
(15, 'Season 2', 1, '2021-01-01', 3),
(16, 'Season 1', 10, '2018-02-26', 4),
(17, 'Season 2', 13, '2019-03-03', 4),
(18, 'Season 3', 11, '2020-02-16', 4),
(19, 'Season 4', 9, '2021-03-07', 4),
(20, 'Season 1', 15, '2014-09-25', 5),
(21, 'Season 2', 15, '2016-03-17', 5),
(22, 'Season 3', 15, '2016-09-22', 5),
(23, 'Season 1', 10, '2017-10-13', 6),
(24, 'Season 2', 9, '2019-08-16', 6),
(25, 'Season 1', 8, '2020-09-18', 7),
(26, 'Season 2', 10, '2021-01-01', 7),
(27, 'Season 1', 26, '2017-01-27', 8),
(28, 'Season 1', 13, '2016-04-08', 9),
(29, 'Season 2', 13, '2017-09-22', 9),
(30, 'Season 1', 12, '2014-07-03', 10),
(31, 'Season 2: Tokyo Ghoul ?A', 12, '2015-01-09', 10),
(32, 'Tokyo Ghoul: re', 12, '2018-04-03', 10),
(33, 'Tokyo Ghoul: re Season 2', 12, '2018-09-29', 10),
(34, 'Season 1', 11, '2013-07-07', 11),
(35, 'Season 1', 8, '2020-12-10', 12),
(36, 'Season 1', 11, '2011-04-15', 13),
(37, 'Season 1', 13, '2016-07-02', 14),
(38, 'Season 1', 10, '2020-12-18', 15),
(39, 'Aquaman (film)', 1, '2018-11-26', 16),
(40, 'ATM: Er Rak Error', 1, '2012-01-19', 17),
(41, 'Scary Movie (film series)', 5, '2000-07-07', 18),
(42, 'One-Punch Man', 24, '2015-10-04', 19),
(43, 'Romantic Doctor, Teacher Kim', 20, '2016-11-07', 22),
(44, 'Romantic Doctor, Teacher Kim 2', 16, '2020-01-06', 22),
(46, 'qqq', 33, '2021-07-04', 57);

-- --------------------------------------------------------

--
-- Table structure for table `tv_series`
--

CREATE TABLE `tv_series` (
  `Series_id` int(6) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Total_Season` int(6) NOT NULL,
  `Total_Episode` int(6) NOT NULL,
  `Award` varchar(255) NOT NULL,
  `Language` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Age_Restriction` enum('Yes','No') NOT NULL,
  `total_views` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_series`
--

INSERT INTO `tv_series` (`Series_id`, `Title`, `Total_Season`, `Total_Episode`, `Award`, `Language`, `Description`, `Age_Restriction`, `total_views`) VALUES
(1, 'Breaking Bad', 5, 62, '58 Primetime Emmy Awards, 27 Saturn Awards, 20 Writers Guild of America Awards, 16 Television Critics Association Awards, 15 Satellite Awards.', 'English', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'Yes', 5),
(2, 'Brooklyn Nine-Nine ', 8, 153, 'GLAAD Media Award, 11 Emmy Awards, 7 Teen Choice Awards, 6 Satellite Awards, 8 NAACP Image Awards and 2 Golden Globes.', 'English', 'Comedy series following the exploits of Det. Jake Peralta and his diverse, lovable colleagues as they police the NYPD\'s 99th Precinct.', 'Yes', 0),
(3, 'Emily in Paris', 2, 11, 'Golden Globe Awards and MTV Movie & TV Awards', 'French and English', 'A young American woman from the Midwest is hired by a marketing firm in Paris to provide them with an American perspective on things', 'Yes', 1),
(4, 'Good Girls', 4, 43, 'Satellite Awards Best Actress in a Series, Comedy or Musical Christina Hendricks.', 'English', 'Three suburban mothers suddenly find themselves in desperate circumstances and decide to stop playing it safe and risk everything to take their power back.\r\n', 'Yes', 0),
(5, 'How to Get Away with Murder ', 6, 90, 'AFI Awards TV Program of the Year, African - American Film Critics Association Best TV Drama, ASCAP Film and Television Music Awards Top Television Series, 2 GALECA: The Society of LGBTQ Entertainment Critics and 3 GLAAD Media Awards ', 'English and Spanish', 'A group of ambitious law students and their brilliant criminal defense professor become involved in a twisted murder plot that promises to change the course of their lives.', 'Yes', 0),
(6, 'Mindhunter', 2, 19, '2 Primetime Emmy Awards, Academy of Science Fiction, Fantasy & Horror Films, American Cinema Editors, American Society of Cinematographers, 2 IGN Summer Movie Awards, 2 Online Film & Television Association and many more.', 'English', 'Set in the late 1970s, two FBI agents are tasked with interviewing serial killers to solve open cases.', 'Yes', 0),
(7, 'Ratched', 2, 18, 'Golden Globes, Critics Choice Super Awards, GLAAD Media Awards and Hollywood Makeup Artist and Hair Stylist Guild Awards', 'English', 'In 1947, Mildred Ratched begins working as a nurse at a leading psychiatric hospital. But beneath her stylish exterior lurks a growing darkness.', 'Yes', 0),
(8, 'Ronja, the Robber\'s Daughter ', 1, 26, 'Asian Television Awards and International Emmy Awards.', 'English and Japanese', 'The story follows Ronja, a young girl whose father is the chief of a tribe of bandits. They live in a huge castle in the forest with the bandits. In this story Ronja encounters mystical creatures as she explores and experiences life in the forest. Somewhere along the lines she makes friends with another young child much like herself. The title is based on the fantasy story Ronia the Robber\'s Daughter, written by Swedish author Astrid Lindgren.', 'No', 0),
(9, 'Ejen Ali', 2, 26, 'Asian Academy Creative Awards', 'English, Malay and Hindi', 'A boy accidentally becomes a MATA agent after using Infinity Retinal Intelligent System (I.R.I.S) which is a prototype device created by Meta Advance Tactical Agency (M.A.T.A).', 'No', 6),
(10, 'Tokyo Ghoul', 4, 48, '2 Behind the Voice Actors Awards', 'English and Japanese', 'A Tokyo college student is attacked by a ghoul, a superpowered human who feeds on human flesh. He survives, but has become part ghoul and becomes a fugitive on the run.', 'Yes', 1),
(11, 'Blood Lad', 1, 11, 'Empty', 'Japanese', 'A vampire punk falls in love with a kind human girl, and when she is killed and turned into a ghost, he sets out on a quest to resurrect her.', 'Yes', 4),
(12, 'Alice in Borderland', 1, 8, 'Empty', 'Japanese', 'An aimless gamer and his two friends find themselves in a parallel Tokyo, where they\'re forced to compete in a series of sadistic games to survive.', 'Yes', 5),
(13, 'Anohana: The Flower We Saw That Day', 1, 11, 'Empty', 'Japanese', 'Jinta Yadomi is peacefully living as a recluse, spending his days away from school and playing video games at home instead. One hot summer day, his childhood friend, Meiko \"Menma\" Honma, appears and pesters him to grant a forgotten wish. He pays her no mind, which annoys her, but he doesn\'t really care. After all, Menma already died years ago.\r\n\r\nAt first, Jinta thinks that he is merely hallucinating due to the summer heat, but he is later on convinced that what he sees truly is the ghost of Menma. Jinta and his group of childhood friends grew apart after her untimely death, but they are drawn together once more as they try to lay Menma\'s spirit to rest. Re-living their pain and guilt, will they be able to find the strength to help not only Menma move on—but themselves as well?', 'No', 2),
(14, 'ReLIFE', 1, 13, 'Winner\r\nBTVA People\'s Choice Voice Acting Award	Best Female Vocal Performance in an Anime Television Series/OVA in a Supporting Role\r\nCaitlin Glass for english voice actor\r\nAs the voice of \"Kokoro Amatsu\".', 'Japanese', 'Dismissed as a hopeless loser by those around him, 27-year-old Arata Kaizaki bounces around from one job to another after quitting his first company. His unremarkable existence takes a sharp turn when he meets Ryou Yoake, a member of the ReLife Research Institute, who offers Arata the opportunity to change his life for the better with the help of a mysterious pill. Taking it without a second thought, Arata awakens the next day to find that his appearance has reverted to that of a 17-year-old.\r\n\r\nArata soon learns that he is now the subject of a unique experiment and must attend high school as a transfer student for one year. Though he initially believes it will be a cinch due to his superior life experience, Arata is proven horribly wrong on his first day: he flunks all his tests, is completely out of shape, and can\'t keep up with the new school policies that have cropped up in the last 10 years. Furthermore, Ryou has been assigned to observe him, bringing Arata endless annoyance. ReLIFE follows Arata\'s struggle to adjust to his hectic new lifestyle and avoid repeating his past mistakes, all while slowly discovering more about his fellow classmates.', 'No', 5),
(15, 'Sweet home', 1, 10, 'Empty', 'Korean', 'As humans turn into savage monsters and wreak terror, one troubled teen and his apartment neighbors fight to survive and to hold on to their humanity.', 'Yes', 1),
(16, 'Aquaman', 1, 1, 'Nominee Saturn Award\r\nBest Comic-to-Film Motion Picture', 'English', 'The film was directed by James Wan, from a screenplay by David Leslie Johnson-McGoldrick and Will Beall. It stars Jason Momoa as Aquaman, who sets out to lead the underwater kingdom of Atlantis and stop his half-brother, King Orm, from uniting the seven underwater kingdoms to destroy the surface world.', 'Yes', 6),
(17, 'ATM: Er Rak Error', 1, 1, 'Thailand\'s seventh top-grossing film of all time and GTH\'s highest grossing film until it was surpassed in 2013 by Pee Mak.', 'Thai', 'In a bank that forbids fraternization lest one person in the couple be forced out, Sua (Chantavit Dhanasevi) and Jib (Preechaya Pongthananikorn), two career-bound overachievers, have nevertheless been discreetly dating for 5 years. Frustrated with having to keep their relationship hidden, Sua and Jib decide to get married. However, neither are willing to resign from their jobs.', 'No', 2),
(18, 'Scary Movie', 5, 5, 'Blockbuster Entertainment Awards \r\nBMI Film & TV Awards\r\nBogey Awards, Germany \r\nGolden Screen, Germany\r\nNielsen/EDI Gold Reel Awards\r\nTeen Choice Awards\r\nThe Stinkers Bad Movie Awards\r\nWorld Stunt Awards', 'English', 'Scary Movie is an American film series that comprises five parody films mainly focusing on spoofing horror films. The two recurring actors of the series are Anna Faris and Regina Hall as Cindy Campbell and Brenda Meeks, appearing in all films except the fifth installment.', 'Yes', 7),
(19, 'One Punch Man', 2, 24, '7th Manga Taisho\r\n26th Eisner Award\r\n28th Harvey Award\r\n2nd Sugoi Japan Award\r\n62nd Shogakukan Manga Award', 'Japanese', 'A Japanese superhero franchise created by the artist ONE. It tells the story of Saitama, a superhero who can defeat any opponent with a single punch but seeks to find a worthy opponent after growing bored by a lack of challenge due to his overwhelming strength. ', 'No', 5),
(20, 'The Descendant of the Sun', 1, 19, 'The Grand Prize in television at the 52nd Baeksang Arts Awards and was named the Most Popular Show of the year by Korea Broadcasting Advertising Corporation.', 'Korean', 'A love story that develops between a surgeon and a special forces officer.\r\n\r\nKang Mo Yeon is a pretty and assertive woman who works as a cardiothoracic surgeon at Haesung Hospital. She isn\'t afraid to admit her mistakes and believes that capability overrides whatever connections you have. However, she is soon faced with the reality that she cannot advance with just capability. Her life is forever changed when she encounters Yoo Shi Jin, the Captain and team leader of Alpha Team who cares more about protecting anybody in need of help as well as his country, even if it goes against the order of his superiors. This drama will tell of how they both bond together in a time of war and overcome the odds against them.', 'No', 0),
(21, 'Tale of the Nine-Tailed', 1, 16, 'Empty', 'Korean', 'The mythical nine-tailed fox, or gumiho, Lee Yeon had to settle in the city many centuries ago. Able to transform into human form, he eradicates supernatural beings that threaten the mortal world. His real aim is to find the reincarnation of his lost first love.\r\n\r\nThe talented television producer Nam Ji Ah works in a show that features urban myths. In the past, her parents were involved in a mysterious car accident and disappeared, and she suspects that Lee Yeon might be connected with this accident.\r\n\r\nThe half-brother to Lee Yeon is the captivating Lee Rang. Despite being half-human himself, he harbors a deep-seated contempt for all people. For sport, he will unleash his seductive prowess upon his human-du-jour, by promising to grant them their wishes, only to trick them into paying a hefty price for their earthly desires.', 'No', 0),
(22, 'Romantic Doctor, Teacher Kim', 2, 32, 'Empty', 'Korean', '“Romantic Doctor Kim” is a “real doctor” story set in a small, humble hospital called Dol Dam Hospital. It is a story about people who meet Kim Sa Bu (Han Suk Kyu), a genius doctor, and discover “real romance.”', 'No', 2),
(23, 'Yong Pal', 1, 18, 'Empty', 'Korean', 'Kim Tae Hyeon is a talented surgeon. Desperate for money to pay his sister\'s medical bills, he adopts the code name Yong Pal and offers his medical skills to those in need of medical attention but who cannot do so publicly, dealing with gangsters and corrupt plutocrats. It is while making such a house call that Tae Hyeon rescues \"sleeping beauty\" Han Yeo Jin, a chaebol heiress, from a medically induced coma, leading to unintended consequences.', 'No', 0),
(24, 'bad genius', 2, 20, 'none', 'Thailand', 'They cheating on exam', 'Yes', 0),
(57, 'test123', 2, 1, 'test1', 'test2', 'test3', 'Yes', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tv_series_cast`
--

CREATE TABLE `tv_series_cast` (
  `Series_id` int(6) NOT NULL,
  `Actor_id` int(6) NOT NULL,
  `Cast_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_series_cast`
--

INSERT INTO `tv_series_cast` (`Series_id`, `Actor_id`, `Cast_Name`) VALUES
(1, 1, 'Walter White'),
(1, 2, 'Skyler White'),
(1, 3, 'Jesse Pinkman'),
(2, 4, 'Jake Peralta'),
(2, 5, 'Rosa Diaz'),
(2, 6, 'Raymond Holt'),
(3, 7, 'Emily Cooper'),
(3, 8, 'Sylvie Grateau'),
(3, 9, 'Mindy Chen'),
(4, 10, 'Beth Boland'),
(4, 11, 'Ruby Hill'),
(4, 12, 'Annie Marks'),
(5, 13, 'Annalise Keating'),
(5, 14, 'Nate Lahey'),
(5, 15, 'Wes Gibbins'),
(6, 16, 'Holden Ford'),
(6, 17, 'Bill Tench'),
(6, 18, 'Dr. Wendy Carr'),
(7, 19, 'Nurse Mildred Ratched'),
(7, 20, 'Edmund Tolleson'),
(7, 21, 'Gwendolyn Briggs'),
(8, 22, 'Narrator'),
(8, 23, 'Ronja'),
(8, 24, 'Fjosok'),
(9, 25, 'Bakar'),
(9, 26, 'Alicia'),
(9, 27, 'General Rama'),
(10, 28, 'Ken Kaneki'),
(10, 29, 'Touka Kirishima'),
(10, 30, 'Yoshimura'),
(11, 31, 'Fuyumi Yanagi'),
(11, 32, 'Staz Charlie Blood'),
(11, 33, 'Braz D. Blood'),
(12, 34, ' Ryohei Arisu'),
(12, 35, 'Yuzuha Usagi'),
(12, 36, 'Chishiya'),
(13, 37, 'Honma Meiko'),
(13, 38, 'Yadomi Jinta'),
(14, 37, 'Hishiro Chizuru'),
(14, 39, 'Kaizaki Arata'),
(14, 40, 'Ooga Kazuomi'),
(15, 41, 'Cha Hyun-Su'),
(15, 42, 'Pyeon Sang-Wook'),
(15, 43, 'Seo Yi-Kyung'),
(16, 44, 'Aquaman'),
(16, 45, 'Mera'),
(17, 46, 'Sua '),
(17, 47, 'Jib '),
(18, 48, 'Cindy Campbell'),
(18, 49, 'Brenda Meeks'),
(19, 50, 'Saitama'),
(20, 52, 'Yoo Si Jin'),
(21, 53, 'Lee Yeon'),
(22, 54, 'Kim Sa Bu'),
(23, 51, 'Kim Tae Hyeon');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `Account_id` int(6) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Phone` varchar(13) NOT NULL,
  `Birthday` date NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Account_Type_ID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`Account_id`, `Username`, `Email`, `Password`, `Phone`, `Birthday`, `StartDate`, `EndDate`, `Account_Type_ID`) VALUES
(1, 'Hafiz', 'hafiz@gmail.com', 'ABC123', '601122334455', '2000-03-15', '2021-05-09', '2021-06-09', 1),
(2, 'zaizai', 'zai@yahoo.com', 'Asdf1234.', '0128493532', '2000-05-02', '2021-05-09', '2021-06-09', 2),
(3, 'Calvin', 'calvin@gmail.com', 'ayowtf69', '0696969429', '2021-05-01', '2021-05-04', '2021-05-05', 1),
(4, 'Farhan', 'farhan@gmail.com', 'haha1234', '0166193227', '2011-05-19', '2021-04-01', '2021-05-31', 3),
(5, 'testautoincrement', 'autoincrement@gmail.', '123', '0123456789', '2012-07-05', '2021-07-08', '2021-07-14', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`Account_Type_ID`);

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`Actor_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_platform`
--
ALTER TABLE `admin_platform`
  ADD PRIMARY KEY (`admin_id`,`Series_id`),
  ADD KEY `admin_id` (`admin_id`,`Series_id`),
  ADD KEY `Series_id` (`Series_id`);

--
-- Indexes for table `daily_view`
--
ALTER TABLE `daily_view`
  ADD PRIMARY KEY (`view_id`),
  ADD KEY `Series_id` (`Series_id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`Director_id`);

--
-- Indexes for table `direct_tv_series`
--
ALTER TABLE `direct_tv_series`
  ADD PRIMARY KEY (`Director_id`,`Series_id`),
  ADD KEY `Director_id` (`Director_id`),
  ADD KEY `Series_id` (`Series_id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`Ep_id`),
  ADD KEY `Season_id` (`Season_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Genre_id`);

--
-- Indexes for table `genre_tv_series`
--
ALTER TABLE `genre_tv_series`
  ADD PRIMARY KEY (`Genre_id`,`Series_id`),
  ADD KEY `Genre_id` (`Genre_id`),
  ADD KEY `Series_id` (`Series_id`);

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`Account_id`,`Series_id`),
  ADD KEY `Account_id` (`Account_id`),
  ADD KEY `Series_id` (`Series_id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`Season_id`),
  ADD KEY `Series_id` (`Series_id`);

--
-- Indexes for table `tv_series`
--
ALTER TABLE `tv_series`
  ADD PRIMARY KEY (`Series_id`);

--
-- Indexes for table `tv_series_cast`
--
ALTER TABLE `tv_series_cast`
  ADD PRIMARY KEY (`Series_id`,`Actor_id`),
  ADD KEY `Series_id` (`Series_id`),
  ADD KEY `Actor/Actress_id` (`Actor_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`Account_id`),
  ADD KEY `Account_Type_ID` (`Account_Type_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `Account_Type_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `Actor_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daily_view`
--
ALTER TABLE `daily_view`
  MODIFY `view_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `Director_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `Ep_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `Genre_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `receipt_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `Season_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tv_series`
--
ALTER TABLE `tv_series`
  MODIFY `Series_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `Account_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_platform`
--
ALTER TABLE `admin_platform`
  ADD CONSTRAINT `admin_platform_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `admin_platform_ibfk_2` FOREIGN KEY (`Series_id`) REFERENCES `tv_series` (`Series_id`);

--
-- Constraints for table `daily_view`
--
ALTER TABLE `daily_view`
  ADD CONSTRAINT `daily_view_ibfk_1` FOREIGN KEY (`Series_id`) REFERENCES `tv_series` (`Series_id`);

--
-- Constraints for table `direct_tv_series`
--
ALTER TABLE `direct_tv_series`
  ADD CONSTRAINT `direct_tv_series_ibfk_1` FOREIGN KEY (`Director_id`) REFERENCES `director` (`Director_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `direct_tv_series_ibfk_2` FOREIGN KEY (`Series_id`) REFERENCES `tv_series` (`Series_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`Season_id`) REFERENCES `season` (`Season_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `genre_tv_series`
--
ALTER TABLE `genre_tv_series`
  ADD CONSTRAINT `genre_tv_series_ibfk_1` FOREIGN KEY (`Genre_id`) REFERENCES `genre` (`Genre_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `genre_tv_series_ibfk_2` FOREIGN KEY (`Series_id`) REFERENCES `tv_series` (`Series_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `platform`
--
ALTER TABLE `platform`
  ADD CONSTRAINT `platform_ibfk_1` FOREIGN KEY (`Account_id`) REFERENCES `user_account` (`Account_id`),
  ADD CONSTRAINT `platform_ibfk_2` FOREIGN KEY (`Series_id`) REFERENCES `tv_series` (`Series_id`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`Account_id`);

--
-- Constraints for table `season`
--
ALTER TABLE `season`
  ADD CONSTRAINT `season_ibfk_1` FOREIGN KEY (`Series_id`) REFERENCES `tv_series` (`Series_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tv_series_cast`
--
ALTER TABLE `tv_series_cast`
  ADD CONSTRAINT `tv_series_cast_ibfk_1` FOREIGN KEY (`Actor_id`) REFERENCES `actor` (`Actor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tv_series_cast_ibfk_2` FOREIGN KEY (`Series_id`) REFERENCES `tv_series` (`Series_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_account`
--
ALTER TABLE `user_account`
  ADD CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`Account_Type_ID`) REFERENCES `account_type` (`Account_Type_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
