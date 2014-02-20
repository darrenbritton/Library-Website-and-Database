-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2013 at 05:17 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(15) DEFAULT NULL,
  `booktitle` varchar(30) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `edition` varchar(1) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `reserved` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`bookID`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `categoryname`) VALUES
(1, 'Action & Advent'),
(2, 'Fantasy'),
(3, 'Mystery'),
(4, 'Romance'),
(5, 'History'),
(6, 'Science'),
(7, 'Classics'),
(8, 'Literary'),
(9, 'Thriller'),
(10, 'Western');

-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `isbn`, `booktitle`, `author`, `edition`, `year`, `category`, `reserved`) VALUES
(1, '922 0577862391', 'diam lorem,', 'Micah Z. Gay', '7', '3602', 3, 'N'),
(2, '925 8478056818', 'non', 'Mona J. Daugherty', '6', '3926', 6, 'Y'),
(3, '981 8076555501', 'lobortis risus.', 'Kylie G. Bonner', '4', '5889', 9, 'Y'),
(4, '533 4253230885', 'Aliquam tincidunt,', 'Philip Burton', '9', '4310', 3, 'Y'),
(5, '001 5450614944', 'auctor quis, tristique', 'Zoe Fischer', '6', '9844', 3, 'N'),
(6, '546 5571922546', 'libero lacus, varius', 'Ebony I. Bowen', '9', '0930', 9, 'N'),
(7, '403 0505086009', 'amet, dapibus id,', 'Callie L. Mueller', '8', '7258', 2, 'N'),
(8, '807 3113619705', 'ut erat. Sed nunc', 'Julian Melendez', '8', '9647', 9, 'Y'),
(9, '609 4078192811', 'eu eros. Nam', 'Jackson W. Delgado', '4', '4804', 6, 'Y'),
(10, '145 7452521713', 'Aliquam ornare, libero', 'Dieter S. Dennis', '5', '5470', 4, 'N'),
(11, '482 6274727258', 'nulla.', 'Christopher Albert', '1', '6042', 6, 'Y'),
(12, '289 6622906633', 'non quam. Pellentesque habitan', 'Zelenia Q. Holman', '2', '5901', 1, 'Y'),
(13, '356 6362085992', 'Aenean euismod mauris', 'Laura O. Stephenson', '4', '2147', 2, 'N'),
(14, '920 2768031026', 'eros.', 'Vernon Garrett', '5', '7079', 2, 'Y'),
(15, '737 6579348379', 'non leo.', 'Miriam Bennett', '2', '3761', 8, 'Y'),
(16, '195 8335904243', 'dictum eu, eleifend', 'Eaton Bush', '6', '7571', 4, 'Y'),
(17, '217 4033468363', 'cursus luctus, ipsum', 'Mark Garrison', '9', '8645', 3, 'Y'),
(18, '655 9633776235', 'malesuada fames ac', 'Buffy H. Lindsey', '5', '5933', 7, 'N'),
(19, '880 5454197964', 'ac', 'Alfonso Brady', '5', '1896', 9, 'Y'),
(20, '040 9304768866', 'ac arcu. Nunc mauris.', 'Calista Franklin', '1', '5756', 6, 'Y'),
(21, '347 3982287055', 'gravida sagittis. Duis gravida', 'Nero Q. Head', '6', '3168', 9, 'Y'),
(22, '447 8842725912', 'lectus.', 'Richard Shannon', '5', '2005', 2, 'N'),
(23, '309 8467319034', 'enim.', 'Miranda Copeland', '6', '6398', 4, 'Y'),
(24, '447 8576934353', 'Nunc ac', 'India N. Joyner', '1', '4651', 10, 'N'),
(25, '935 3831308342', 'nonummy ac, feugiat', 'Macon Spence', '1', '9984', 7, 'Y'),
(26, '568 5948770179', 'eu, odio.', 'Audra C. Shaw', '3', '5214', 3, 'Y'),
(27, '984 4539478249', 'ligula. Aenean', 'Rae W. Bray', '1', '9414', 8, 'Y'),
(28, '904 8982412981', 'metus.', 'Karleigh H. Vinson', '1', '1490', 10, 'Y'),
(29, '575 4793786198', 'a', 'Duncan U. Baird', '1', '0792', 2, 'N'),
(30, '211 8862665342', 'a sollicitudin', 'Liberty W. Barton', '1', '6307', 1, 'Y'),
(31, '929 2401274830', 'dui,', 'Clementine Castro', '4', '1938', 3, 'Y'),
(32, '634 5648059223', 'vestibulum.', 'Herrod Frost', '9', '4926', 9, 'N'),
(33, '510 1547196146', 'venenatis lacus.', 'Melvin B. Hayes', '1', '2086', 10, 'Y'),
(34, '386 8979517713', 'Etiam gravida molestie arcu.', 'Ursa Coffey', '4', '1933', 10, 'Y'),
(35, '983 3691671298', 'purus sapien, gravida non,', 'Rosalyn F. Benton', '1', '2133', 1, 'N'),
(36, '608 6819511282', 'lacinia mattis.', 'Armando Santiago', '3', '3025', 3, 'N'),
(37, '922 6203123644', 'rutrum lorem ac risus.', 'Fitzgerald Q. Roberson', '1', '7321', 5, 'N'),
(38, '760 6933246369', 'aliquet,', 'Zenia I. Caldwell', '1', '9687', 10, 'Y'),
(39, '936 6072905142', 'est, congue a,', 'Megan Q. Mcneil', '8', '9469', 1, 'N'),
(40, '707 6432415321', 'Aliquam nisl. Nulla', 'Ginger Sosa', '2', '4984', 5, 'N'),
(41, '351 0586918334', 'amet, dapibus id, blandit', 'Kevin Copeland', '5', '2256', 3, 'Y'),
(42, '060 4214791710', 'dictum', 'Ivory Ware', '9', '6238', 5, 'N'),
(43, '564 6340565356', 'massa', 'Neil Burt', '2', '1208', 5, 'Y'),
(44, '683 1578828483', 'Nulla aliquet. Proin velit.', 'Amanda Bowman', '9', '0202', 5, 'Y'),
(45, '094 6778346265', 'Suspendisse sed dolor.', 'Ivan H. Waller', '7', '2152', 5, 'N'),
(46, '496 5802670927', 'porttitor', 'Dorian Holman', '2', '6378', 6, 'Y'),
(47, '199 6951863544', 'montes, nascetur ridiculus', 'Cooper Mendez', '7', '9375', 7, 'N'),
(48, '428 5282134098', 'semper egestas, urna', 'Aileen T. Kelley', '1', '3762', 2, 'Y'),
(49, '789 2087260404', 'adipiscing elit.', 'Cyrus Henderson', '1', '6190', 10, 'N'),
(50, '200 0902980250', 'non, dapibus rutrum,', 'Alika Y. Perkins', '3', '8425', 7, 'Y'),
(51, '558 8688581572', 'ad litora torquent per', 'Dorothy Ryan', '5', '3372', 8, 'N'),
(52, '830 3982671262', 'lorem ac risus. Morbi', 'Joan Melendez', '6', '4708', 1, 'N'),
(53, '186 9273155836', 'eu,', 'Tasha M. Holt', '2', '4379', 2, 'N'),
(54, '714 8007271437', 'Vivamus rhoncus.', 'Hammett H. George', '8', '7892', 3, 'N'),
(55, '134 9587595867', 'Phasellus libero', 'Idola Ramos', '2', '2399', 3, 'N'),
(56, '245 3792380986', 'nec luctus felis', 'Grant Luna', '6', '4676', 1, 'N'),
(57, '624 8702504895', 'ante ipsum primis in', 'Joan L. Mccarty', '4', '9094', 8, 'N'),
(58, '082 6075887392', 'lorem', 'Abra M. Zimmerman', '6', '9599', 7, 'N'),
(59, '335 4181266143', 'lorem, auctor', 'Nicholas S. Gomez', '4', '1591', 1, 'N'),
(60, '077 4038219576', 'non dui nec', 'Brody V. Macias', '1', '5527', 1, 'Y'),
(61, '810 9883912222', 'Etiam vestibulum massa rutrum', 'Jada P. Skinner', '5', '4639', 2, 'N'),
(62, '727 5375259171', 'leo. Morbi', 'Holly Zimmerman', '2', '2056', 7, 'N'),
(63, '683 3019394654', 'Sed neque. Sed eget', 'Leila Compton', '3', '1434', 5, 'N'),
(64, '117 7911920315', 'lectus. Cum sociis natoque', 'Vladimir Talley', '6', '5277', 8, 'Y'),
(65, '121 2380301321', 'augue porttitor interdum.', 'Nasim Cabrera', '2', '5161', 4, 'Y'),
(66, '806 9271661063', 'tincidunt, nunc', 'Aileen S. Chan', '8', '1597', 7, 'N'),
(67, '801 6186457029', 'sem', 'Emily Robinson', '1', '1673', 2, 'N'),
(68, '083 8845921389', 'fames ac', 'Jesse W. David', '1', '2894', 6, 'N'),
(69, '773 7566311343', 'iaculis enim, sit', 'Desiree Greene', '5', '4947', 9, 'Y'),
(70, '139 8136602014', 'ullamcorper. Duis', 'Phyllis Tucker', '3', '6560', 6, 'Y'),
(71, '743 9737863566', 'eu tempor erat', 'Althea Hughes', '9', '9605', 2, 'N'),
(72, '576 3102930893', 'ornare placerat,', 'Wayne V. Barnett', '9', '7366', 10, 'N'),
(73, '212 8991094025', 'adipiscing. Mauris molestie ph', 'Tashya Webb', '1', '0477', 8, 'Y'),
(74, '470 6835737821', 'mattis. Cras eget nisi', 'Neve Y. Mcintosh', '5', '1241', 7, 'Y'),
(75, '946 4161006833', 'iaculis quis, pede.', 'Kyle Conner', '9', '1832', 1, 'N'),
(76, '479 4168339336', 'Sed', 'Renee H. Little', '8', '4665', 5, 'Y'),
(77, '857 3277446876', 'Aenean', 'Dakota Shaffer', '8', '4758', 5, 'Y'),
(78, '482 3306684121', 'ante dictum mi, ac', 'Bryar M. Wheeler', '2', '5090', 9, 'Y'),
(79, '826 3186583168', 'ipsum. Curabitur', 'Eric L. Morton', '7', '9675', 8, 'N'),
(80, '561 3887063557', 'dictum placerat, augue.', 'Baker K. Houston', '1', '8877', 6, 'Y'),
(81, '221 7831718881', 'Nam porttitor', 'Blythe F. Hodge', '9', '5794', 6, 'N'),
(82, '101 3331262080', 'eu tellus. Phasellus elit', 'Chester H. Britt', '6', '5440', 3, 'Y'),
(83, '470 6820251423', 'urna et', 'Felicia N. Lopez', '7', '8213', 8, 'N'),
(84, '399 8705625876', 'a, arcu.', 'Rhoda D. Fowler', '9', '6244', 6, 'N'),
(85, '722 1220925541', 'dictum cursus.', 'Quail Cardenas', '1', '6782', 10, 'Y'),
(86, '650 4825046962', 'vitae dolor. Donec', 'Fiona Forbes', '9', '0586', 3, 'N'),
(87, '920 6710546692', 'Proin non massa', 'Jamal Poole', '9', '5466', 1, 'N'),
(88, '332 2538349985', 'fringilla mi lacinia', 'Sacha Hensley', '1', '2197', 7, 'N'),
(89, '461 7930579918', 'netus et malesuada fames', 'Jarrod Spencer', '6', '8460', 6, 'N'),
(90, '821 2920960430', 'luctus. Curabitur', 'Unity Meadows', '7', '4722', 2, 'N'),
(91, '374 1964994855', 'Vivamus nibh', 'Kiona Kelley', '9', '8553', 4, 'N'),
(92, '556 9211275169', 'cubilia', 'Ferdinand B. Black', '6', '1740', 4, 'N'),
(93, '367 9148450725', 'posuere vulputate, lacus. Cras', 'Kennan Chen', '2', '2064', 8, 'Y'),
(94, '410 8877016476', 'Fusce', 'Charles Vaughn', '8', '1494', 5, 'N'),
(95, '826 2370148164', 'mus. Proin vel', 'Brynne Frye', '1', '7389', 8, 'N'),
(96, '323 1404875014', 'fermentum', 'Tatum Cantrell', '4', '5643', 1, 'Y'),
(97, '279 6037432308', 'Curae; Phasellus', 'Conan Barr', '2', '1656', 4, 'N'),
(98, '931 2118146679', 'tempor erat neque non', 'Octavius Blair', '1', '2223', 10, 'N'),
(99, '026 0672791937', 'vulputate eu, odio.', 'Murphy Andrews', '4', '8241', 6, 'N'),
(100, '543 5795378179', 'In', 'Nelle Eaton', '8', '3311', 6, 'N');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `addressl1` varchar(30) DEFAULT NULL,
  `addressl2` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `firstname`, `surname`, `addressl1`, `addressl2`, `city`, `telephone`, `mobile`) VALUES
(1, 'GavinLynch', 'YFR55XQJ0JO', 'Jayme', 'Scott', '9995 Mauris Av.', '31403', 'Bridgeport', '8188254', '0881599292'),
(2, 'SloaneCortez', 'YRA98XFL3AQ', 'Steven', 'Allen', '8292 Malesuada. St.', '8598DA', 'Catanzaro', '8888231', '0837171579'),
(3, 'YeoTurner', 'OHG76ZXK0LD', 'Amy', 'Copeland', '4095 Eu Ave', '25458', 'Frederick', '8286116', '0807589659'),
(4, 'PamelaAllen', 'VTU45SAD6OH', 'Rogan', 'Fuentes', 'P.O. Box 985, 8274 Malesuada R', 'Xxxx', 'Veldegem', '8882176', '0833181251'),
(5, 'ZahirJacobson', 'XSM03AID3NT', 'Hop', 'Kim', 'Ap #782-923 Tincidunt Street', '02676', 'Naperville', '8480459', '0868488883'),
(6, 'HammettVega', 'VDA21LVC0RP', 'Valentine', 'Little', '1561 Lectus Ave', '85798', 'Kirkland', '8287915', '0891769473'),
(7, 'ShafiraYates', 'BVE84CGE4PS', 'Tanek', 'Wade', 'Ap #289-3227 Non, Rd.', '5517', 'Vallepietra', '8685644', '0840148628'),
(8, 'KennedyHampton', 'LLI99BEH6SZ', 'Bell', 'Burch', '872-9530 Nulla. St.', '12713', 'Derby', '8881852', '0881798442'),
(9, 'LeonardJohns', 'DLL05FPU0SN', 'Wayne', 'Mckinney', '9104 Et Road', '70819', 'RibeirÃ£o Preto', '8284710', '0883354740'),
(10, 'SloaneMathews', 'JGL25XBS9XA', 'Gannon', 'Johnston', '5308 Ut St.', '13916', 'Red Deer', '8285092', '0808497425'),
(11, 'MailePotter', 'JEA91ZCG7OE', 'Keegan', 'York', '1397 Quis St.', '84593', 'Massa e Cozzile', '8984047', '0815006743'),
(12, 'UrielSellers', 'UIP98RYO4LX', 'Thomas', 'Donaldson', '327 Eleifend Road', '2490', 'Wollongong', '8888912', '0809659028'),
(13, 'StellaMedina', 'OHN45WXN8UI', 'Sara', 'Weaver', '1835 Libero. Av.', '53642', 'Keith', '8488166', '0806855864'),
(14, 'SerenaBell', 'BMS11NQT3GF', 'Sharon', 'Jensen', 'P.O. Box 317, 6730 Non, Av.', '28940', 'Ceranesi', '8780401', '0894846727'),
(15, 'ChancellorBritt', 'BHH06EMI9SA', 'Odysseus', 'Jarvis', '443-1904 Amet, Rd.', '12829', 'Landelies', '8086998', '0827867588'),
(16, 'MeghanMonroe', 'RBV77UQP0JL', 'Piper', 'Cameron', 'P.O. Box 564, 7917 Nonummy Rd.', 'Xxxx', 'San Pietro Avellana', '8181652', '0888007364'),
(17, 'DanielPhillips', 'MAJ00SNW8LM', 'Suki', 'Wilkinson', 'P.O. Box 916, 6074 Morbi St.', '65375', 'Malvern', '8387437', '0817467184'),
(18, 'BernardDalton', 'JMZ52KEY5AJ', 'Chantale', 'Valencia', '7275 Felis. Av.', '7359', 'Ferrazzano', '8087170', '0833671162'),
(19, 'PatienceSuarez', 'HTG46LIP1LI', 'Emily', 'Cochran', 'Ap #116-4378 Nisi. Ave', '8721LW', 'Hamme-Mille', '8781195', '0817876545'),
(20, 'SladeMcconnell', 'JZO81GTV9II', 'Jeremy', 'Crosby', 'Ap #514-5497 Curabitur Street', '78522', 'Athens', '8289937', '0875914100'),
(21, 'JesseDelgado', 'CUA83YYV1ZX', 'Maia', 'Weeks', 'P.O. Box 413, 2276 Aliquet St.', '6945', 'Presteigne', '8081724', '0841973026'),
(22, 'DeannaOwens', 'XDI86JXZ5YC', 'Frances', 'Day', '553-5471 Gravida Av.', 'RU32 5XZ', 'Wick', '8785737', '0879715642'),
(23, 'MariRivera', 'WJZ49KSN9HW', 'Chastity', 'Edwards', '3684 Non Road', '72095', 'Spittal an der Drau', '8686743', '0857506592'),
(24, 'DieterGay', 'NXA33KXC9ZS', 'Lane', 'Webb', '6484 Nec Avenue', 'Y90 5GC', 'Huntley', '8280299', '0847246758'),
(25, 'CruzBlevins', 'GYH65BHL1LF', 'Daniel', 'Taylor', '575-2412 Cum Ave', '67589', 'Ucluelet', '8684294', '0820951872'),
(26, 'ChasePerez', 'SSY31GIP5JO', 'Aurelia', 'Livingston', '5447 Sed, Av.', '1526YB', 'Shipshaw', '8583379', '0844692644'),
(27, 'JessicaMathews', 'UVI72TLH0CS', 'Jolene', 'Kent', '2834 Velit Ave', '40304', 'Port Coquitlam', '8084095', '0814784739'),
(28, 'WarrenWatkins', 'WQU16FEQ7JD', 'Joseph', 'Davidson', 'Ap #554-6610 Id, Street', '01253', 'Tokoroa', '8782353', '0879623613'),
(29, 'ShaeleighWeiss', 'INR68GXQ1OX', 'Len', 'Dillon', '9087 Eget Avenue', '7428', 'Osasco', '8084332', '0854379758'),
(30, 'AlexisPatton', 'KLC76PFB3EW', 'Wanda', 'Allen', '100-4230 Orci Av.', '5974', 'Marbaix', '8586835', '0880918315'),
(31, 'RamaSpence', 'ULT19QFX7BG', 'Yuri', 'Michael', '599-8912 Duis Rd.', '35851', 'Recanati', '8583212', '0847111490'),
(32, 'CailinHogan', 'YIR30WNG3NH', 'Maile', 'Valentine', '557-6763 Nam St.', '17276', 'Santa Maria', '8587319', '0867728432'),
(33, 'ScarletWard', 'XNN68RON3HT', 'Colby', 'Peterson', 'P.O. Box 851, 4187 Dictum Rd.', '37645', 'McCallum', '8785205', '0837814293'),
(34, 'ColinCobb', 'GGU60RUL9UU', 'Blaze', 'Fischer', 'Ap #318-2203 Ridiculus Av.', '4901', 'Cossignano', '8581813', '0818954076'),
(35, 'JenaBeasley', 'MGE79BKE2YJ', 'Azalia', 'Black', '6794 Quis Street', '4873', 'Pembroke', '8884661', '0896586651'),
(36, 'CobyMack', 'EDY22QNE3IQ', 'Zoe', 'Vincent', 'Ap #336-8009 Donec Avenue', '61534', 'Bonavista', '8289336', '0838411437'),
(37, 'NitaShelton', 'BCR52VYP5ND', 'Danielle', 'Harrison', '7927 Metus. Rd.', '03664', 'Alcobendas', '8184370', '0853217754'),
(38, 'AlanaGraves', 'KUD52MII0RP', 'Christian', 'Hatfield', '8662 Volutpat Ave', '4528', 'Helensburgh', '8383050', '0816472852'),
(39, 'MageeWeeks', 'OFD95XUK2CM', 'Rhoda', 'Carr', 'Ap #387-6648 Etiam Road', '8696', 'Lloydminster', '8489968', '0890429399'),
(40, 'DianaPittman', 'OBW14LMD8JB', 'Kyra', 'Emerson', 'Ap #399-6299 Aliquam Rd.', '56017', 'Bovesse', '8082583', '0867063180'),
(41, 'MinervaMccullough', 'QHI69SVU7OT', 'Quon', 'Hester', '7631 Interdum. St.', '9878', 'Boulogne-Billancourt', '8484424', '0817119845'),
(42, 'LeslieMercado', 'HDJ05OGI3RV', 'Omar', 'Wong', '5010 Feugiat Av.', '94143', 'Denbigh', '8986332', '0884161917'),
(43, 'RobinReynolds', 'DRF33KHM1WX', 'Basil', 'Saunders', '261-3832 Dictum Rd.', '75159', 'Pietracatella', '8186970', '0891235113'),
(44, 'StaceyChavez', 'CBU18VAZ0KN', 'Claire', 'Mathews', '406-584 Donec Rd.', '7385', 'Midway', '8582822', '0867417199'),
(45, 'ShannonMeyers', 'VJV32HUO3JU', 'Darrel', 'Mathews', '579-9772 Aliquam Av.', '30883-166', 'Candela', '8087909', '0807382878'),
(46, 'PaulHowell', 'BHL19KEZ4WJ', 'Flynn', 'Carpenter', 'P.O. Box 812, 1997 Maecenas St', 'Y9B 4W4', 'Scorrano', '8788576', '0841707581'),
(47, 'WyattMckee', 'VZK07FNM8YP', 'Lenore', 'Acosta', '4774 Non, St.', '2409', 'Firenze', '8789049', '0804042421'),
(48, 'LeslieHartman', 'MNZ05HEJ7XG', 'Scarlet', 'Guy', '3082 Vitae, Avenue', '24848', 'Zutendaal', '8389751', '0886336202'),
(49, 'EdenHendrix', 'ZEB35TPO0GB', 'Shad', 'Valentine', '4270 Etiam St.', 'L6S 0S9', 'Allentown', '8885081', '0810695478'),
(50, 'JosephStephenson', 'URT25IHK4KL', 'Benjamin', 'Gilbert', 'P.O. Box 796, 3671 A, Rd.', '1040QN', 'Parla', '8887292', '0885255404'),
(51, 'YettaGilliam', 'PFG80VDP4OP', 'Sandra', 'Roach', 'P.O. Box 617, 5085 Tellus. St.', '74662', 'Breton', '8882493', '0854429312'),
(52, 'LionelHolmes', 'PCI86HFF7QK', 'Maryam', 'Wheeler', '9879 Cursus Avenue', '65387-051', 'Pievepelago', '8486485', '0855022228'),
(53, 'JocelynOsborne', 'PJR09EWN7MN', 'Yuri', 'Olsen', '515-951 Convallis Street', 'Xxxx', 'Seattle', '8484797', '0866717464'),
(54, 'BreeBuchanan', 'ZHZ49MAZ1UF', 'Marvin', 'Dillon', 'Ap #161-9756 Diam. St.', '96277', 'Rosiï¿½res', '8486628', '0837477498'),
(55, 'CharityHumphrey', 'VLI11UYZ2WW', 'Quemby', 'Baird', 'P.O. Box 218, 7007 Sed Ave', '08805', 'Friedberg', '8386478', '0844011236'),
(56, 'DieterPetersen', 'GQJ73FDU2HZ', 'Keaton', 'Melton', '645-8354 Cum Rd.', '8730', 'Lowestoft', '8383034', '0801217834'),
(57, 'CarolynFreeman', 'FEV87LGK2PU', 'Elijah', 'Wallace', 'P.O. Box 540, 4541 Urna Road', '94397', 'Pievepelago', '8883823', '0881111134'),
(58, 'AhmedCraft', 'DVN91XUG1ZL', 'Cody', 'Garrett', '2569 Aliquam Rd.', 'P50 8HE', 'Melilla', '8681008', '0800339000'),
(59, 'GeorgiaBerg', 'XKL33NJK8NG', 'McKenzie', 'Mullen', 'Ap #509-2575 Fusce Road', 'T76 9CU', 'Baileux', '8381357', '0896518458'),
(60, 'NereaKirby', 'FIB31LXZ7WH', 'Hedy', 'Conner', '8204 Mollis Road', '51005', 'Amberloup', '8889101', '0887888615'),
(61, 'RandallPaul', 'LEQ20PLD7IX', 'Kelsie', 'Conway', '453-2513 Mi St.', '4468', 'Saint-Louis', '8783453', '0801346613'),
(62, 'GilCabrera', 'LXI20SQH4YR', 'Whilemina', 'Dudley', 'Ap #176-8095 Magna St.', '2178', 'Smithers', '8282236', '0827085526'),
(63, 'CaseyPugh', 'CDZ72PWB8DG', 'Colleen', 'Randall', '4005 Gravida Avenue', 'Xxxx', 'Bonavista', '8583622', '0872499231'),
(64, 'DarylBaldwin', 'FMQ05MFU6ZH', 'McKenzie', 'Pratt', 'P.O. Box 400, 4100 Nibh St.', 'Xxxx', 'Scarborough', '8380670', '0850371791'),
(65, 'QuinBoyle', 'ZGI79HCP0UU', 'Athena', 'Campbell', 'P.O. Box 839, 1804 Elit, Road', '40008', 'Parndorf', '8284251', '0833143524'),
(66, 'HirokoWooten', 'OQV78FZL3IU', 'Jessica', 'Schwartz', 'P.O. Box 654, 6219 Molestie St', '23871', 'Clare', '8583904', '0840578718'),
(67, 'RoganDaniel', 'RLV04WMW9AO', 'Regina', 'Quinn', 'P.O. Box 501, 3417 Nisl. Rd.', '00604', 'Alert Bay', '8080291', '0852024006'),
(68, 'AnastasiaMarsh', 'GAS73SBT7DK', 'Jordan', 'Norris', 'Ap #246-4964 Ac Street', '33502', 'Beringen', '8383774', '0877182188'),
(69, 'MelyssaHenderson', 'HBU08FWP3RX', 'Ivy', 'Matthews', '385-144 Nullam Av.', '97554', 'Sylvan Lake', '8786276', '0861263037'),
(70, 'ZoritaRussell', 'KTK64BGP2YZ', 'Ferris', 'Farrell', 'Ap #405-403 Nulla Rd.', '54643', 'Filadelfia', '8881272', '0824879277'),
(71, 'RafaelBradshaw', 'AZO87MDK2UW', 'Graiden', 'Brewer', 'Ap #418-925 Mauris Rd.', 'D1V 2IR', 'Toledo', '8288901', '0834788569'),
(72, 'FlorenceSkinner', 'NVQ36EAQ7RC', 'Ciara', 'Alvarez', '2835 Interdum Ave', '23885', 'Rocky View', '8084858', '0896619323'),
(73, 'TamekahMcfadden', 'URW80SKZ6BR', 'Scarlet', 'Barry', '372-9337 Fames St.', '89158', 'Eigenbrakel', '8481122', '0836011007'),
(74, 'LenWalls', 'OXW00ZGH2XI', 'Joel', 'Beach', '2291 Est. Rd.', '3002', 'Naninne', '8383917', '0800615441'),
(75, 'GretchenMarshall', 'ESB20QAI9KG', 'Brady', 'Byrd', '4653 Ad St.', '41309', 'Hagen', '8682876', '0887988212'),
(76, 'KevinBrooks', 'VRX23EEC8AX', 'Susan', 'Stark', '9795 Tempus St.', '34123', 'Picture Butte', '8982988', '0893327382'),
(77, 'AmayaJoyce', 'AAL39GDW5ND', 'Freya', 'Tillman', '660-5909 Eu, Rd.', '2533', 'Taber', '8785837', '0828851866'),
(78, 'UrielleSnider', 'NGT48DCM8SI', 'Curran', 'Henderson', '264-1902 Convallis St.', '21367', 'Millet', '8187804', '0881925313'),
(79, 'StephenTrevino', 'PAS40CHF0NS', 'Jasmine', 'Oliver', 'P.O. Box 286, 7865 Aliquam Roa', '89691', 'Morinville', '8384216', '0852919398'),
(80, 'HallNewman', 'SNH27GIT6HQ', 'Marcia', 'Fischer', '907-7079 Eu, St.', '70109', 'Oss', '8486939', '0883575912'),
(81, 'KareemMendoza', 'TXN53BIX9MD', 'Maggie', 'Collins', 'Ap #525-6219 Et Rd.', '6522ZX', 'Craco', '8889070', '0887187933'),
(82, 'LoisReese', 'RRM64FVI9UR', 'Deirdre', 'Hudson', 'Ap #544-198 Maecenas St.', '0011', 'Subbiano', '8289925', '0845844501'),
(83, 'LindaCarter', 'XOB11MSY9CN', 'Upton', 'Ellison', '7408 A, Rd.', '29088', 'Haren', '8887535', '0804505771'),
(84, 'MarkMaldonado', 'IYC44QMA3GF', 'Colin', 'Velez', '8128 Sed St.', '93215', 'Waarloos', '8583589', '0880898675'),
(85, 'BrettOrtega', 'ZYF25BGK0DJ', 'Xandra', 'Singleton', 'P.O. Box 322, 9694 Rhoncus Rd.', '3452', 'Isca sullo Ionio', '8487847', '0887093210'),
(86, 'XanthaGuy', 'XII74VWS7IM', 'Molly', 'Ramsey', 'Ap #365-4824 Diam Rd.', '4649', 'Brisbane', '8885597', '0861214918'),
(87, 'NoelHoward', 'AGA99QCF8NE', 'Whoopi', 'Grant', 'Ap #798-3866 Aliquam Road', '13848', 'Newport News', '8583031', '0827767931'),
(88, 'JordanClemons', 'ISY13SBR8ZG', 'Blossom', 'Sosa', '5437 Vitae Avenue', '8227AF', 'Idar-Oberstei', '8683421', '0853537442'),
(89, 'KylynnSnyder', 'XAD05MPW2ZH', 'Kane', 'Mcclure', 'P.O. Box 938, 7957 Morbi Rd.', '14506-531', 'GroÃ?petersdorf', '8388747', '0807409058'),
(90, 'HasadMosley', 'HIL61FEX2XK', 'Darius', 'Singleton', 'Ap #483-4633 Magna Av.', '5654', 'Mabomprï¿½', '8584600', '0866698734'),
(91, 'AinsleySullivan', 'XLN94DOC1KX', 'Jerome', 'Solis', '7170 Gravida St.', '3403', 'Recklinghausen', '8989672', '0848804234'),
(92, 'RhondaBerg', 'OSR29CDU1OC', 'Leila', 'Aguilar', '9072 Egestas Av.', '4116', 'Pickering', '8083788', '0860100568'),
(93, 'AzaliaMccarty', 'EKI01ZCJ0EX', 'Orlando', 'Baxter', 'Ap #816-4563 Sit Avenue', 'M3M 5M3', 'Villers-la-Loue', '8181057', '0829946042'),
(94, 'KennedyStout', 'HER73WUX6AW', 'Lydia', 'Holder', '7716 Placerat. Rd.', '6279', 'Tacoma', '8888308', '0883348773'),
(95, 'KitraSears', 'UPS30GAY0WT', 'Forrest', 'Sykes', 'P.O. Box 972, 5928 Faucibus St', '65285', 'Zierikzee', '8086342', '0830519667'),
(96, 'WhileminaDonaldson', 'ELN54ARK6JF', 'Cain', 'Mitchell', '4283 A Avenue', '09073-705', 'Wellingborough', '8881151', '0822740230'),
(97, 'NehruColon', 'XPP77UJW0OP', 'Kelly', 'Moon', 'Ap #442-3560 Nullam Av.', '47694', 'NÃ®mes', '8184304', '0803218180'),
(98, 'ShafiraBlake', 'XFE35EUR5BV', 'Gail', 'Dotson', '217-9815 Lorem, Road', '50519', 'Watford', '8183344', '0881086666'),
(99, 'WalterMercado', 'GHT24CQW5MB', 'Madeline', 'Gallegos', 'P.O. Box 396, 7448 Tristique S', '61264', 'Richmond', '8881532', '0814784680'),
(100, 'KaneOchoa', 'PWX73SRU4NW', 'Germane', 'Moss', 'P.O. Box 618, 3316 Magna Rd.', '9694', 'Romford', '8680620', '0823388335');

--
-- Constraints for dumped tables
--


--
-- Table structure for table `reservedbooks`
--

CREATE TABLE IF NOT EXISTS `reservedbooks` (
  `reservationID` int(11) NOT NULL AUTO_INCREMENT,
  `book` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `reservationdate` date DEFAULT NULL,
  PRIMARY KEY (`reservationID`),
  KEY `book` (`book`),
  KEY `user` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `reservedbooks`
--

INSERT INTO `reservedbooks` (`reservationID`, `book`, `user`, `reservationdate`) VALUES
(1, 60, 33, '2013-12-24'),
(2, 46, 63, '2013-09-11'),
(3, 23, 39, '2012-11-25'),
(4, 45, 12, '2014-04-23'),
(5, 51, 29, '2013-11-30'),
(6, 76, 86, '2014-05-12'),
(7, 19, 21, '2013-05-26'),
(8, 32, 76, '2014-08-30'),
(9, 11, 92, '2013-05-12'),
(10, 68, 62, '2012-11-30'),
(11, 20, 86, '2013-01-12'),
(12, 18, 89, '2014-01-16'),
(13, 70, 70, '2012-12-07'),
(14, 23, 63, '2013-10-13'),
(15, 41, 12, '2014-09-11'),
(16, 88, 100, '2013-06-05'),
(17, 45, 34, '2013-01-16'),
(18, 63, 67, '2014-09-22'),
(19, 73, 7, '2014-02-18'),
(20, 79, 23, '2013-11-16'),
(21, 35, 55, '2013-04-14'),
(22, 8, 54, '2013-10-17'),
(23, 76, 40, '2014-08-02'),
(24, 29, 86, '2013-05-21'),
(25, 32, 97, '2013-09-29'),
(26, 48, 52, '2013-08-04'),
(27, 83, 66, '2013-08-14'),
(28, 40, 52, '2013-05-22'),
(29, 35, 62, '2013-11-30'),
(30, 14, 75, '2013-03-19'),
(31, 74, 2, '2014-02-13'),
(32, 75, 18, '2014-03-02'),
(33, 35, 37, '2013-06-28'),
(34, 85, 7, '2014-10-06'),
(35, 44, 64, '2014-09-07'),
(36, 30, 79, '2014-04-20'),
(37, 18, 38, '2014-04-07'),
(38, 32, 93, '2013-02-11'),
(39, 78, 60, '2013-02-19'),
(40, 79, 10, '2012-12-10'),
(41, 57, 26, '2014-08-12'),
(42, 61, 39, '2014-01-31'),
(43, 91, 100, '2014-09-13'),
(44, 91, 26, '2013-02-22'),
(45, 61, 4, '2014-08-16'),
(46, 1, 34, '2014-05-16'),
(47, 5, 75, '2012-12-11'),
(48, 52, 40, '2014-08-07'),
(49, 12, 37, '2013-08-21'),
(50, 47, 55, '2014-03-01'),
(51, 1, 77, '2013-05-16'),
(52, 33, 18, '2014-06-11'),
(53, 14, 64, '2014-02-08'),
(54, 11, 92, '2013-07-13'),
(55, 24, 90, '2014-03-07'),
(56, 1, 81, '2014-02-25'),
(57, 15, 61, '2014-10-06'),
(58, 20, 6, '2014-08-11'),
(59, 61, 10, '2013-08-02'),
(60, 32, 21, '2013-07-29'),
(61, 14, 32, '2014-05-24'),
(62, 55, 19, '2013-08-05'),
(63, 6, 7, '2013-03-07'),
(64, 58, 17, '2013-06-04'),
(65, 43, 5, '2013-06-17'),
(66, 72, 43, '2012-11-30'),
(67, 81, 4, '2014-04-24'),
(68, 61, 95, '2014-07-22'),
(69, 68, 72, '2013-06-13'),
(70, 87, 92, '2014-03-07'),
(71, 61, 87, '2013-02-12'),
(72, 72, 76, '2013-05-03'),
(73, 48, 92, '2013-04-24'),
(74, 82, 8, '2014-08-21'),
(75, 1, 13, '2013-10-19'),
(76, 29, 15, '2013-01-11'),
(77, 44, 83, '2013-04-20'),
(78, 33, 49, '2014-04-12'),
(79, 89, 91, '2013-07-17'),
(80, 66, 32, '2014-01-03'),
(81, 95, 37, '2013-08-24'),
(82, 74, 76, '2014-07-31'),
(83, 41, 34, '2013-11-11'),
(84, 71, 9, '2014-10-24'),
(85, 6, 57, '2013-12-15'),
(86, 100, 66, '2012-12-09'),
(87, 44, 72, '2013-06-08'),
(88, 41, 92, '2014-10-28'),
(89, 63, 22, '2013-04-02'),
(90, 99, 64, '2014-03-03'),
(91, 35, 28, '2013-12-03'),
(92, 78, 78, '2013-06-08'),
(93, 11, 11, '2012-12-18'),
(94, 27, 100, '2013-05-16'),
(95, 1, 92, '2014-02-05'),
(96, 31, 96, '2013-08-31'),
(97, 29, 5, '2014-10-03'),
(98, 72, 70, '2014-02-21'),
(99, 39, 43, '2013-09-28'),
(100, 78, 44, '2013-12-05');

--
-- Triggers `reservedbooks`
--
DROP TRIGGER IF EXISTS `ReservedBooksOnInsert`;
DELIMITER //
CREATE TRIGGER `ReservedBooksOnInsert` BEFORE INSERT ON `reservedbooks`
 FOR EACH ROW SET NEW.ReservationDate = IFNULL(NEW.reservationdate, CURDATE())
//
DELIMITER ;
--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`categoryID`) ON DELETE CASCADE;

--
-- Constraints for table `reservedbooks`
--
ALTER TABLE `reservedbooks`
  ADD CONSTRAINT `reservedbooks_ibfk_1` FOREIGN KEY (`book`) REFERENCES `book` (`bookID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservedbooks_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`userID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
