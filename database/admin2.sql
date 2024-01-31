-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 06:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `Booknumber` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `Booknumber`, `Title`, `Author`, `Quantity`) VALUES
(6, 2824, 'Synergistic zero administration challenge', 'Morgan Schultz', 12),
(7, 5506, 'Fundamental fresh-thinking artificial intelligence', 'Samantha Brown', 31),
(8, 4657, 'Switchable explicit budgetary management', 'Cynthia Andrade', 17),
(9, 2679, 'Cloned national Internet solution', 'Christopher Clark', 87),
(10, 9935, 'Streamlined transitional intranet', 'Elizabeth Ramirez', 11),
(11, 7912, 'Networked upward-trending service-desk', 'Arthur Gardner', 5),
(12, 1488, 'Business-focused secondary toolset', 'Lisa Stephens', 12),
(13, 4582, 'Optional well-modulated initiative', 'Courtney Coleman', 30),
(14, 9279, 'Cross-group 3rdgeneration Graphic Interface', 'Derek Farmer MD', 78),
(15, 1434, 'Pre-emptive optimizing challenge', 'Hailey Waller', 72),
(16, 4257, 'Multi-layered asymmetric solution', 'Andrea Pierce', 92),
(17, 9928, 'Multi-channeled needs-based open architecture', 'Helen Blackburn', 54),
(18, 4611, 'Cross-platform 4thgeneration process improvement', 'Shannon Conrad', 58),
(19, 5557, 'Enterprise-wide incremental intranet', 'David Ellison', 1),
(20, 3615, 'Ameliorated cohesive parallelism', 'Jessica Anderson', 90),
(21, 7924, 'Multi-tiered multi-state task-force', 'Christopher Carroll', 44),
(22, 5552, 'Multi-channeled dynamic monitoring', 'Christopher George', 20),
(23, 4527, 'Implemented solution-oriented data-warehouse', 'Anthony Krause', 98),
(24, 6514, 'Phased 24/7 initiative', 'Edward Ware', 14),
(25, 2519, 'Enterprise-wide stable model', 'Alexis Walton', 49),
(26, 2584, 'Realigned full-range support', 'Anna Grant', 46),
(27, 6635, 'Front-line background protocol', 'Rachel Wagner', 78),
(28, 5333, 'Profit-focused transitional open system', 'Ross Deleon', 6),
(29, 8527, 'Programmable multi-state ability', 'Glenn Ramirez', 69),
(30, 3045, 'Virtual web-enabled framework', 'Misty Jennings', 48),
(31, 2291, 'Cross-group neutral budgetary management', 'Leonard Bush', 71),
(32, 5803, 'Customizable scalable hierarchy', 'Megan Fisher', 81),
(33, 6925, 'Devolved holistic success', 'Spencer Bird', 74),
(34, 4150, 'Cloned reciprocal structure', 'Mark Woods', 91),
(35, 2139, 'Synergized multi-tasking model', 'Alexis Bird', 6),
(36, 4733, 'Pre-emptive composite task-force', 'Ashley Norman', 99),
(37, 5741, 'Quality-focused foreground function', 'Nicole Johnson', 11),
(38, 4814, 'Secured multi-state hardware', 'Casey Wheeler', 13),
(39, 7227, 'Extended human-resource process improvement', 'Peter Holden', 36),
(40, 8428, 'Assimilated composite moratorium', 'Richard Martin', 82),
(41, 6977, 'Virtual client-driven productivity', 'Jacob Preston', 21),
(42, 7065, 'Multi-layered regional artificial intelligence', 'Samantha Strickland MD', 46),
(43, 4432, 'Managed homogeneous middleware', 'Shelly Castaneda', 86),
(44, 5374, 'Persevering grid-enabled Internet solution', 'Elijah Reyes', 90),
(45, 2169, 'Pre-emptive cohesive success', 'Sara Vincent', 78),
(46, 3803, 'Re-contextualized bandwidth-monitored implementation', 'Darlene Smith', 69),
(47, 5010, 'Stand-alone explicit access', 'Mrs. Paula Lopez', 21),
(48, 8573, 'Switchable incremental capacity', 'Albert Williams', 49),
(49, 5422, 'Cross-platform tangible neural-net', 'Jessica Young', 82),
(50, 4598, 'Sharable systemic synergy', 'Brandon Rush', 88),
(51, 6313, 'Re-engineered user-facing ability', 'Nicole French', 99),
(52, 1916, 'Virtual upward-trending orchestration', 'Christina Dixon', 30),
(53, 1525, 'Horizontal bandwidth-monitored utilization', 'Jean Mendez', 41),
(54, 7572, 'Secured clear-thinking contingency', 'Amber Snyder', 35),
(55, 2084, 'Networked zero administration hardware', 'Barbara King', 28),
(56, 6155, 'Face-to-face optimal Graphical User Interface', 'Jeffrey Bentley', 28),
(57, 9179, 'Synergized system-worthy focus group', 'Reginald Benjamin', 51),
(58, 8517, 'Customizable encompassing ability', 'Michael Smith', 19),
(59, 5339, 'Sharable actuating knowledge user', 'Tara Osborne', 18),
(60, 5040, 'Synergistic mission-critical architecture', 'Courtney Johnson', 96),
(61, 9830, 'Ergonomic bi-directional standardization', 'Charles Merritt', 34),
(62, 8019, 'Phased human-resource access', 'Jason Rowe', 75),
(63, 7543, 'Face-to-face zero tolerance workforce', 'Julia King', 47),
(64, 4593, 'Customizable asynchronous secured line', 'Amy Townsend', 18),
(65, 9348, 'Integrated client-server model', 'Dustin Rollins', 64),
(66, 2489, 'Triple-buffered regional moderator', 'Rebecca Holloway', 97),
(67, 1771, 'Re-contextualized full-range knowledge user', 'Dr. Sandra Knight', 15),
(68, 3504, 'Future-proofed 6thgeneration budgetary management', 'Stephanie Monroe', 81),
(69, 3621, 'Diverse even-keeled time-frame', 'Rebecca Patterson', 88),
(70, 7916, 'Quality-focused systematic leverage', 'Heather Herrera', 77),
(71, 2040, 'Enterprise-wide client-driven methodology', 'Melanie Hicks', 50),
(72, 7252, 'Distributed incremental portal', 'Michael Phillips', 77),
(73, 8668, 'Sharable explicit conglomeration', 'Robin Thompson', 68),
(74, 5119, 'Assimilated client-server ability', 'Larry Barrera', 70),
(75, 1188, 'De-engineered background function', 'Casey Nunez', 88),
(76, 2876, 'Down-sized solution-oriented capability', 'Laura Young', 88),
(77, 9797, 'Ergonomic value-added success', 'Ashley Martin', 97),
(78, 5371, 'Multi-channeled foreground functionalities', 'Timothy Weber', 99),
(79, 6573, 'Configurable upward-trending forecast', 'Kevin Weaver', 15),
(80, 5808, 'Front-line encompassing forecast', 'Amy Rodriguez', 56),
(81, 3591, 'Customizable radical knowledgebase', 'Samantha Morales', 59),
(82, 1053, 'Implemented fresh-thinking forecast', 'James Wilson', 93),
(83, 5315, 'Configurable stable architecture', 'Kari Clark', 65),
(84, 3927, 'Function-based multi-state firmware', 'Amy Vega', 65),
(85, 2743, 'Advanced hybrid collaboration', 'Sarah Herrera', 81),
(86, 5889, 'Quality-focused grid-enabled parallelism', 'Ryan Baldwin', 82),
(87, 9317, 'User-centric well-modulated database', 'Charles Johnson', 78),
(88, 4258, 'Intuitive 3rdgeneration initiative', 'Kelly Rodriguez', 20),
(89, 7126, 'Monitored demand-driven moratorium', 'Mitchell Hutchinson', 98),
(90, 3646, 'Front-line responsive time-frame', 'Derek Johnson', 70),
(91, 9689, 'Team-oriented stable emulation', 'Jennifer Davis', 1),
(92, 6310, 'Distributed demand-driven intranet', 'Cory Mccarthy', 63),
(93, 1319, 'Switchable full-range process improvement', 'Mr. Travis Walters', 15),
(94, 6947, 'Secured user-facing paradigm', 'Andrew Medina', 40),
(95, 4923, 'Stand-alone responsive matrix', 'Sherry Lucas', 8),
(96, 4946, 'Proactive content-based extranet', 'Sharon Lewis', 73),
(97, 2290, 'Fundamental leadingedge process improvement', 'Richard Long', 11),
(98, 8962, 'Team-oriented didactic strategy', 'Bryan Edwards', 9),
(99, 9727, 'Configurable fault-tolerant throughput', 'Joshua Hess', 99),
(100, 3060, 'Configurable disintermediate migration', 'Angel Austin', 17),
(101, 8787, 'Innovative systemic encoding', 'Jennifer Richardson', 71),
(102, 3705, 'Persistent bi-directional installation', 'James Wheeler', 34),
(103, 9645, 'Open-source impactful analyzer', 'Donna Lane DDS', 78),
(104, 7932, 'Cross-group zero-defect encryption', 'Jaime Brown', 28),
(105, 9835, 'Front-line logistical open system', 'Raymond Brown', 97),
(106, 4295, 'Distributed content-based policy', 'Tyler Brown', 92),
(107, 6107, 'Quality-focused value-added service-desk', 'Samuel Woods', 52),
(108, 7118, 'Programmable needs-based orchestration', 'Kristine Hendricks', 57),
(109, 9479, 'Multi-layered motivating challenge', 'Gary Smith', 58),
(110, 2982, 'Exclusive methodical time-frame', 'Samuel Oliver', 32),
(111, 4681, 'Decentralized demand-driven moderator', 'Michael Houston', 9),
(112, 6539, 'Multi-channeled upward-trending archive', 'Joseph Campbell', 3),
(113, 4770, 'Business-focused dynamic firmware', 'Elizabeth King', 76),
(114, 4608, 'Triple-buffered scalable approach', 'Regina Stewart', 1),
(115, 2163, 'Seamless fresh-thinking analyzer', 'Anthony Murphy', 91),
(116, 1964, 'Business-focused motivating budgetary management', 'Brandon Bean', 30),
(117, 2104, 'Quality-focused user-facing hub', 'Daniel Williams', 5),
(118, 6413, 'Integrated zero administration core', 'Susan Burch', 10),
(119, 9423, 'Reverse-engineered discrete instruction set', 'Samuel Brown', 31),
(120, 5562, 'Persevering contextually-based superstructure', 'Brian Graham', 86),
(121, 8953, 'Ergonomic next generation adapter', 'Chad Odonnell', 28),
(122, 9834, 'Enterprise-wide stable archive', 'Robert Dougherty', 17),
(123, 8744, 'Intuitive full-range encryption', 'Rachel Ramirez', 32),
(124, 8749, 'Diverse exuding superstructure', 'Dillon Vega', 53),
(125, 4119, 'Multi-layered disintermediate orchestration', 'Tina Glenn', 13),
(126, 2588, 'Automated responsive flexibility', 'Andrea Hutchinson', 85),
(127, 8062, 'Stand-alone dedicated knowledge user', 'David Smith', 46),
(128, 7939, 'User-centric disintermediate support', 'Scott Harris', 53),
(129, 8651, 'Triple-buffered maximized throughput', 'Danielle Gonzalez', 94),
(130, 1887, 'Focused object-oriented software', 'Claudia Robinson', 87),
(131, 2612, 'Digitized asymmetric collaboration', 'Erica Krause', 8),
(132, 7596, 'Enhanced stable knowledgebase', 'Willie Pena', 94),
(133, 6559, 'Visionary zero tolerance synergy', 'Ashley Allison', 14),
(134, 5073, 'Synergistic context-sensitive structure', 'Debra Gordon', 25),
(135, 4116, 'Expanded needs-based projection', 'Carrie Hampton', 69),
(136, 8350, 'Multi-layered incremental task-force', 'John Jacobson', 18),
(137, 7912, 'Universal optimizing support', 'Rebecca Davis', 24),
(138, 5563, 'Team-oriented bifurcated knowledge user', 'James Hensley', 60),
(139, 5092, 'Innovative analyzing customer loyalty', 'Andrea Taylor', 10),
(140, 8260, 'Compatible reciprocal service-desk', 'Ryan Davis', 71),
(141, 2604, 'Multi-tiered 5thgeneration methodology', 'Christopher Armstrong', 7),
(142, 9856, 'Mandatory discrete help-desk', 'Anita Jones', 2),
(143, 2528, 'Customer-focused 3rdgeneration capacity', 'Gerald Sutton', 97),
(144, 4872, 'Progressive fault-tolerant core', 'Christopher Oconnor', 22),
(145, 7658, 'Managed client-server structure', 'Brett Osborne', 63),
(146, 8886, 'Re-engineered modular array', 'Doris Johnson', 28),
(147, 7570, 'Progressive composite alliance', 'Warren Martinez', 8),
(148, 3697, 'Re-engineered tertiary adapter', 'Michael Shah', 49),
(149, 1035, 'Re-engineered even-keeled infrastructure', 'Sophia Bennett', 50),
(150, 5345, 'Face-to-face empowering algorithm', 'Kathryn Hawkins', 59),
(151, 5673, 'Profit-focused fault-tolerant frame', 'Robert Brown', 55),
(152, 8973, 'Customer-focused analyzing synergy', 'Joshua Brown', 20),
(153, 4111, 'Advanced systemic matrix', 'Rachel Lee', 38),
(154, 4566, 'Multi-lateral full-range database', 'Christopher Ware', 8),
(155, 9883, 'Future-proofed actuating conglomeration', 'Karina Fleming', 8),
(156, 6138, 'Seamless grid-enabled data-warehouse', 'David Harris', 8),
(157, 1821, 'Seamless asymmetric focus group', 'Emily Marshall', 75),
(158, 8811, 'Balanced composite capacity', 'Lauren Black', 65),
(159, 9701, 'Programmable client-server moderator', 'Judith Henderson', 21),
(160, 1931, 'Front-line 6thgeneration parallelism', 'Cynthia Calderon', 9),
(161, 2312, 'Persevering maximized time-frame', 'Jacqueline Warren', 24),
(162, 2122, 'User-friendly full-range groupware', 'Duane Edwards', 77),
(163, 2113, 'Compatible client-driven migration', 'Todd Rojas', 87),
(164, 4853, 'Virtual secondary Graphic Interface', 'Jamie Klein', 52),
(165, 2964, 'Extended static hardware', 'Cathy Watts', 73),
(166, 5033, 'Horizontal bottom-line concept', 'Zachary Ruiz', 75),
(167, 1651, 'Managed maximized info-mediaries', 'Jared Hall', 80),
(168, 2343, 'Managed radical knowledge user', 'Daniel Lee', 54),
(169, 9565, 'Ergonomic intermediate Internet solution', 'Steve Scott', 41),
(170, 5272, 'Compatible local contingency', 'Connie Cortez', 27),
(171, 6147, 'Enhanced systematic projection', 'Henry Moss', 31),
(172, 5351, 'Decentralized context-sensitive extranet', 'Jonathan Hernandez', 51),
(173, 3144, 'Re-engineered client-server implementation', 'Christopher Shaw', 86),
(174, 5915, 'Decentralized mobile pricing structure', 'Heather Jones', 59),
(175, 6180, 'Synergistic asynchronous Graphical User Interface', 'Nicholas Moreno', 97),
(176, 2188, 'Streamlined explicit support', 'Kelly Montes', 2),
(177, 8508, 'Universal multi-state encoding', 'William Barnett', 80),
(178, 2638, 'Automated contextually-based Local Area Network', 'Christopher Williamson', 10),
(179, 9808, 'Configurable intermediate capability', 'Jeremy Morgan', 28),
(180, 9288, 'Optional systematic frame', 'Alec Fernandez', 34),
(181, 3170, 'Robust 6thgeneration access', 'Christina Davis', 45),
(182, 2127, 'Devolved incremental algorithm', 'Victoria Watkins', 32),
(183, 7054, 'Ameliorated zero-defect focus group', 'James Allen', 37),
(184, 3584, 'Object-based intermediate neural-net', 'Chad Bennett', 57),
(185, 9900, 'Cloned optimizing monitoring', 'Lisa Thomas', 91),
(186, 5956, 'Cross-platform client-driven superstructure', 'Sabrina Stewart', 79),
(187, 9666, 'Implemented 5thgeneration service-desk', 'Matthew Brown', 2),
(188, 5905, 'User-centric empowering middleware', 'Gerald Hull', 85),
(189, 2697, 'Realigned secondary strategy', 'Lisa Wood', 18),
(190, 5333, 'Front-line 6thgeneration Graphical User Interface', 'John Brown', 15),
(191, 2753, 'Profound system-worthy implementation', 'Eric Combs', 96),
(192, 3546, 'Synchronized 24/7 challenge', 'Deborah Mooney', 35),
(193, 5616, 'Public-key value-added open system', 'Cynthia Howell', 78),
(194, 4450, 'Digitized mobile implementation', 'Sara Lopez', 92),
(195, 6617, 'Front-line radical instruction set', 'Christopher Mitchell', 27),
(196, 5325, 'Cross-group national instruction set', 'Barry Thomas', 65),
(197, 9004, 'Synergized impactful circuit', 'Richard Flynn', 33),
(198, 1832, 'Ergonomic interactive infrastructure', 'James Ross', 12),
(199, 7939, 'Digitized demand-driven alliance', 'Melissa Burns', 36),
(200, 1722, 'Multi-lateral analyzing function', 'Anna Porter', 1),
(201, 6464, 'Extended mobile projection', 'Patricia Brown', 99),
(202, 3143, 'Synergistic uniform Local Area Network', 'Samantha Stewart', 82),
(203, 5291, 'Public-key client-driven help-desk', 'Shelley Kim MD', 21),
(204, 8239, 'Universal intermediate help-desk', 'Kelly Mosley', 71),
(205, 8007, 'Reactive global alliance', 'Joshua Richardson', 72),
(206, 1158, 'Virtual stable frame', 'Monica Cruz', 15),
(207, 2232, 'Diverse radical database', 'Kara Hester', 89),
(208, 3442, 'Reverse-engineered impactful matrix', 'Philip Lee', 70),
(209, 1590, 'Sharable analyzing application', 'Wendy Perkins', 48),
(210, 3426, 'Ergonomic leadingedge open architecture', 'Carolyn White', 56),
(211, 3088, 'Sharable next generation matrix', 'Eric Wood', 6),
(212, 6050, 'Organic grid-enabled strategy', 'Kristi Cox', 47),
(213, 1653, 'Future-proofed maximized standardization', 'Chad Riley', 46),
(214, 4441, 'Ameliorated 5thgeneration infrastructure', 'Kyle Young', 88),
(215, 5088, 'Multi-lateral asymmetric frame', 'Sara Andrews DVM', 86),
(216, 2684, 'Up-sized scalable conglomeration', 'Anthony Simpson', 46),
(217, 7658, 'Fully-configurable local alliance', 'Joe Collins', 80),
(218, 3532, 'Enhanced dedicated core', 'Michelle Kline', 31),
(219, 3662, 'Robust modular pricing structure', 'Austin Schneider', 23),
(220, 7755, 'Multi-layered mobile infrastructure', 'Alyssa Lewis', 4),
(221, 3938, 'Enterprise-wide full-range implementation', 'Lisa Morgan', 95),
(222, 6442, 'Synchronized optimal support', 'Michelle Lee', 53),
(223, 5065, 'Synergized zero tolerance service-desk', 'Michael Mclean', 35),
(224, 3608, 'Multi-layered 24hour framework', 'David Short', 90),
(225, 2771, 'Persistent holistic knowledgebase', 'Zachary Cervantes', 49),
(226, 1634, 'Fully-configurable scalable alliance', 'William Santana', 61),
(227, 4644, 'Intuitive holistic data-warehouse', 'Jennifer Perez', 26),
(228, 8541, 'Open-architected explicit projection', 'Eric Wilcox', 45),
(229, 6000, 'Open-architected didactic data-warehouse', 'Suzanne Morales', 30),
(230, 4652, 'Organic national solution', 'Matthew Cooper', 4),
(231, 4164, 'Function-based stable hierarchy', 'Michael Jackson', 52),
(232, 6378, 'Stand-alone secondary software', 'Suzanne Wall', 36),
(233, 2137, 'User-centric user-facing infrastructure', 'Mary Weiss', 99),
(234, 5573, 'Multi-lateral bottom-line success', 'Jennifer Hale', 45),
(235, 9346, 'Reactive even-keeled parallelism', 'Timothy Dixon', 52),
(236, 9785, 'Compatible bottom-line focus group', 'Lisa Morales', 43),
(237, 1452, 'Programmable tangible data-warehouse', 'Brian Stark', 15),
(238, 5279, 'Re-contextualized zero tolerance focus group', 'Michelle Montes', 23),
(239, 5349, 'Integrated transitional secured line', 'Janice Delgado MD', 5),
(240, 2776, 'Enhanced fault-tolerant Graphical User Interface', 'Ashley Foster', 77),
(241, 8119, 'Open-architected reciprocal synergy', 'Miss Sylvia Joseph', 45),
(242, 6139, 'Switchable dedicated portal', 'Mark Roberts', 56),
(243, 9379, 'Re-contextualized dynamic instruction set', 'Sharon Swanson', 15),
(244, 7311, 'Customer-focused client-driven core', 'Robert Baker', 74),
(245, 4114, 'Self-enabling mission-critical array', 'Tina Baker', 33),
(246, 1727, 'Face-to-face mission-critical application', 'Michael Page', 91),
(247, 8144, 'User-friendly optimizing portal', 'Jerry Horton', 1),
(248, 9518, 'Automated value-added emulation', 'Timothy White', 69),
(249, 4228, 'Synergized background implementation', 'Todd Reed', 47),
(250, 8066, 'Multi-tiered multimedia analyzer', 'Amber Hughes', 9),
(251, 6409, 'Self-enabling directional hierarchy', 'Alison Payne', 80),
(252, 6143, 'Inverse human-resource application', 'William Sanders', 85),
(253, 3041, 'Upgradable client-server installation', 'Judy Dixon', 93),
(254, 5920, 'Inverse full-range website', 'Kayla Williams', 65),
(255, 6067, 'Ameliorated multi-tasking workforce', 'Sydney Mendoza', 86),
(256, 7691, 'Public-key foreground hierarchy', 'James Camacho', 42),
(257, 7592, 'Proactive object-oriented circuit', 'Patricia Barnes', 90),
(258, 5844, 'Synergized holistic initiative', 'Ann Roy', 71),
(259, 3085, 'Stand-alone motivating toolset', 'Kelly Cook DVM', 25),
(260, 7888, 'Switchable system-worthy conglomeration', 'Shane Dyer', 86),
(261, 7211, 'Profound discrete matrix', 'Emily Grant', 87),
(262, 3851, 'Secured even-keeled groupware', 'Elizabeth Nguyen', 79),
(263, 5930, 'Re-engineered 5thgeneration model', 'Donna Leon', 52),
(264, 9977, 'Synergized secondary framework', 'Curtis Fisher', 1),
(265, 5978, 'Visionary local process improvement', 'Jim Perez', 37),
(266, 4443, 'Self-enabling cohesive middleware', 'Joseph Miller DVM', 56),
(267, 6279, 'Visionary multi-tasking matrices', 'Mrs. Tracy Alexander', 60),
(268, 8238, 'Synergized disintermediate database', 'Richard Green', 57),
(269, 4501, 'Front-line web-enabled circuit', 'Carmen Hamilton', 66),
(270, 8752, 'Quality-focused local solution', 'Stacy Sutton', 95),
(271, 3780, 'Ergonomic content-based intranet', 'Regina Powell', 85),
(272, 2389, 'Down-sized hybrid parallelism', 'Paul Collins', 37),
(273, 9445, 'Centralized 3rdgeneration info-mediaries', 'Victor Ayala', 85),
(274, 6491, 'Organic human-resource benchmark', 'Richard Johnson', 12),
(275, 4848, 'Total disintermediate extranet', 'Alicia Fox', 87),
(276, 6085, 'Down-sized asymmetric initiative', 'Vanessa Livingston', 29),
(277, 4262, 'Assimilated value-added customer loyalty', 'Jonathan Braun', 19),
(278, 1400, 'Virtual neutral synergy', 'Karen Byrd', 6),
(279, 5011, 'Enhanced tangible circuit', 'Jaclyn Keller', 61),
(280, 2193, 'Public-key radical hardware', 'Edward Bailey', 59),
(281, 7790, 'Diverse asynchronous knowledgebase', 'Victoria Hoffman', 81),
(282, 4185, 'Ergonomic value-added middleware', 'Edwin Cochran', 92),
(283, 7291, 'Re-engineered optimizing architecture', 'James Wilson', 64),
(284, 7547, 'Monitored encompassing info-mediaries', 'Anthony Robinson', 32),
(285, 3417, 'Organized even-keeled Graphic Interface', 'Danielle Mckinney', 84),
(286, 1090, 'Assimilated scalable paradigm', 'Heather Carey', 97),
(287, 2746, 'Diverse context-sensitive hub', 'Angela Jones', 100),
(288, 7965, 'Reduced 3rdgeneration strategy', 'Andrea Houston', 29),
(289, 3881, 'Streamlined tangible artificial intelligence', 'Joseph Campbell', 90),
(290, 9486, 'Object-based high-level strategy', 'Stephen Hughes', 60),
(291, 1822, 'Synergized bi-directional function', 'Dale Sloan', 72),
(292, 5082, 'Assimilated client-driven strategy', 'Ryan Johnston', 16),
(293, 8478, 'Customer-focused reciprocal implementation', 'Emily Sims', 18),
(294, 8612, 'Down-sized full-range methodology', 'Mary Henderson', 86),
(295, 9702, 'Front-line demand-driven strategy', 'Deborah Liu', 72),
(296, 6198, 'Team-oriented heuristic leverage', 'Brian May', 97),
(297, 8251, 'De-engineered methodical info-mediaries', 'James Wood', 79),
(298, 9270, 'Monitored bifurcated approach', 'Michele Davis', 55),
(299, 9976, 'Expanded 4thgeneration ability', 'Jeremy Riddle', 58),
(300, 3607, 'Progressive multimedia monitoring', 'Tanner Rodriguez', 96),
(301, 8777, 'Organic tangible task-force', 'Christopher Hampton', 58),
(302, 5246, 'Team-oriented discrete infrastructure', 'Oscar Pierce', 97),
(303, 5050, 'Progressive directional application', 'Tracy Soto', 82),
(304, 5543, 'Fundamental client-server Local Area Network', 'Tiffany Harvey', 99),
(305, 9540, 'Diverse tertiary emulation', 'Eddie Bush', 63),
(306, 4919, 'Multi-layered mobile model', 'Ryan Brown', 36),
(307, 8206, 'Intuitive asynchronous infrastructure', 'Heather Sanders', 10),
(308, 5681, 'Inverse multimedia flexibility', 'Theresa Turner', 31),
(309, 5451, 'Extended static hub', 'Michael Cabrera', 43),
(310, 6238, 'Open-source mission-critical secured line', 'Margaret Brown', 70),
(311, 2320, 'Synergized grid-enabled throughput', 'Dr. Brian Vasquez', 18),
(312, 3471, 'Enhanced 3rdgeneration protocol', 'Kenneth Schneider', 30),
(313, 7275, 'Cloned incremental throughput', 'Tracy Jackson', 89),
(314, 3503, 'De-engineered didactic benchmark', 'Andrea Mora', 91),
(315, 4505, 'Programmable solution-oriented installation', 'Catherine Taylor', 9),
(316, 7797, 'Cross-group maximized migration', 'Thomas Lutz', 53),
(317, 6421, 'Distributed methodical analyzer', 'Brian Bowman', 70),
(318, 8633, 'Cross-platform multi-state parallelism', 'Thomas Carter', 54),
(319, 2020, 'Extended contextually-based superstructure', 'Melissa Huang', 27),
(320, 7883, 'Grass-roots transitional solution', 'Kyle Edwards', 50),
(321, 1320, 'Mandatory modular artificial intelligence', 'Angela Reyes', 98),
(322, 7232, 'Fundamental needs-based adapter', 'Mr. Keith Nelson', 62),
(323, 1096, 'Persistent empowering core', 'Kevin Powell', 46),
(324, 5892, 'Automated modular software', 'April Carpenter', 97),
(325, 7389, 'Multi-layered mission-critical paradigm', 'Bethany Simon', 54),
(326, 9818, 'User-friendly interactive secured line', 'Veronica Buchanan', 96),
(327, 9947, 'Virtual motivating Internet solution', 'Mr. Robert Wilson', 78),
(328, 4613, 'Advanced 6thgeneration instruction set', 'Richard Daniel', 63),
(329, 4595, 'Expanded global application', 'Bryan Williams', 35),
(330, 8140, 'Enhanced human-resource artificial intelligence', 'James Peterson', 63),
(331, 1475, 'Cross-group cohesive neural-net', 'Daniel Scott', 50),
(332, 6507, 'Multi-tiered maximized model', 'George Thomas', 86),
(333, 7624, 'Managed eco-centric superstructure', 'Nicholas Dudley', 93),
(334, 3704, 'Advanced user-facing frame', 'Courtney Serrano', 60),
(335, 3091, 'Operative next generation challenge', 'Ian Cole', 80),
(336, 9751, 'Customizable intangible open architecture', 'Kevin French', 4),
(337, 7455, 'Monitored intermediate core', 'John Bailey', 76),
(338, 1444, 'Robust background contingency', 'Kevin Davis', 11),
(339, 8022, 'Intuitive mission-critical architecture', 'Marie Berry', 18),
(340, 8564, 'Optimized holistic Local Area Network', 'Luis Owens', 24),
(341, 1823, 'Versatile stable challenge', 'Bradley Ramos', 34),
(342, 7211, 'Open-source client-driven hub', 'Adam Huerta', 42),
(343, 4467, 'Organic dedicated intranet', 'Darrell Hernandez', 59),
(344, 6355, 'Function-based multi-state hardware', 'Kevin Logan', 44),
(345, 7211, 'Pre-emptive coherent parallelism', 'Shannon Oliver', 36),
(346, 7906, 'Synergized reciprocal parallelism', 'Kelly Rodriguez', 33),
(347, 2341, 'Multi-lateral coherent middleware', 'Christopher Nash', 61),
(348, 1317, 'Multi-tiered methodical solution', 'David Mitchell', 96),
(349, 9837, 'Programmable explicit benchmark', 'Deborah Walter', 7),
(350, 6733, 'Extended bi-directional info-mediaries', 'Robert Williamson', 29),
(351, 2124, 'Mandatory bottom-line secured line', 'Victoria Garza', 100),
(352, 1659, 'De-engineered uniform migration', 'Sandy White', 97),
(353, 1508, 'Horizontal 3rdgeneration structure', 'Teresa Wright', 32),
(354, 4266, 'Cloned disintermediate system engine', 'Ellen Hoffman', 3),
(355, 3496, 'Sharable didactic budgetary management', 'Vincent Smith', 31),
(356, 3068, 'Future-proofed systemic adapter', 'Andrew Vasquez', 61),
(357, 2874, 'Centralized attitude-oriented neural-net', 'Robert Gonzalez', 73),
(358, 4571, 'Multi-lateral demand-driven Graphical User Interface', 'Tina Crawford', 60),
(359, 5198, 'Optional actuating capacity', 'Sara Jones', 99),
(360, 7043, 'Multi-channeled global definition', 'Paula White', 22),
(361, 2876, 'Reduced high-level workforce', 'Joseph Bradley', 100),
(362, 3683, 'Public-key demand-driven conglomeration', 'Gregory Rocha', 40),
(363, 2771, 'Fully-configurable context-sensitive archive', 'Marcus Davis', 75),
(364, 1420, 'Assimilated transitional functionalities', 'Christopher Smith', 40),
(365, 7149, 'Visionary full-range Local Area Network', 'Donna Bailey', 51),
(366, 4249, 'Networked regional knowledgebase', 'Melissa Harrison', 10),
(367, 4978, 'Devolved contextually-based protocol', 'Rachel Pollard', 14),
(368, 5941, 'Ergonomic mobile challenge', 'Anne Jones', 88),
(369, 2983, 'Multi-channeled multi-tasking product', 'Steven York', 73),
(370, 1672, 'Compatible asymmetric framework', 'Danielle Macdonald', 45),
(371, 9728, 'Team-oriented holistic algorithm', 'Patty Holden', 55),
(372, 7071, 'Down-sized global access', 'Kimberly Shaw', 9),
(373, 9289, 'Streamlined grid-enabled monitoring', 'Jenny Miller', 83),
(374, 6590, 'Programmable well-modulated interface', 'Raymond Wright', 2),
(375, 7882, 'Digitized 24/7 frame', 'John Koch', 63),
(376, 2729, 'Grass-roots demand-driven definition', 'Stephen Perkins', 56),
(377, 6934, 'Inverse responsive application', 'Patricia George', 82),
(378, 8532, 'Synergized directional toolset', 'Mark Myers', 91),
(379, 3506, 'Digitized foreground time-frame', 'Andrea Johnson', 56),
(380, 3885, 'Intuitive maximized Internet solution', 'John Dunlap', 94),
(381, 9548, 'Expanded reciprocal ability', 'Erin Freeman', 84),
(382, 5425, 'Public-key hybrid complexity', 'Thomas Smith', 79),
(383, 9817, 'Networked analyzing approach', 'Eric Davis', 100),
(384, 8921, 'Inverse 3rdgeneration groupware', 'Danielle Willis', 60),
(385, 8136, 'Integrated empowering open system', 'John Cooper', 94),
(386, 5397, 'Right-sized mission-critical approach', 'Gina Rodriguez', 42),
(387, 5022, 'Future-proofed encompassing synergy', 'Vincent Green', 12),
(388, 5569, 'Enhanced contextually-based standardization', 'Lindsey English', 58),
(389, 4995, 'Quality-focused human-resource flexibility', 'Debra Ali', 97),
(390, 8613, 'Synergistic intangible complexity', 'Joshua Taylor', 73),
(391, 7209, 'Digitized 3rdgeneration portal', 'Randy Pierce', 44),
(392, 1470, 'De-engineered clear-thinking collaboration', 'Ashley Bennett', 64),
(393, 6325, 'Adaptive bi-directional project', 'Donna Burnett', 24),
(394, 8988, 'Reactive interactive forecast', 'Lauren Carpenter', 28),
(395, 6813, 'Customer-focused fault-tolerant conglomeration', 'Grace Webb', 34),
(396, 6576, 'Customer-focused upward-trending attitude', 'Jill Thompson', 36),
(397, 5526, 'Networked national function', 'James Harris', 72),
(398, 1166, 'Reverse-engineered contextually-based core', 'Jared Elliott', 67),
(399, 4130, 'Cross-group web-enabled neural-net', 'Marvin Juarez', 11),
(400, 4954, 'Public-key upward-trending service-desk', 'Amy Riley', 93),
(401, 7658, 'Team-oriented global protocol', 'Emily Rodriguez', 63),
(402, 4937, 'Open-source well-modulated focus group', 'Virginia James', 89),
(403, 8800, 'Decentralized uniform orchestration', 'Steven Curtis', 83),
(404, 9041, 'Decentralized fault-tolerant model', 'Angela Campbell', 58),
(405, 1282, 'Customizable full-range Graphic Interface', 'Curtis Hampton', 12),
(406, 5820, 'Synergistic human-resource complexity', 'Jasmine Potter', 29),
(407, 7625, 'Organic high-level knowledge user', 'Matthew Bradley', 89),
(408, 4986, 'Innovative discrete monitoring', 'Melvin Crawford', 40),
(409, 7046, 'Function-based uniform data-warehouse', 'Bonnie Stein', 61),
(410, 9698, 'Stand-alone multimedia workforce', 'Donald Fisher', 45),
(411, 7971, 'Networked dynamic project', 'Laurie Calhoun', 96),
(412, 6419, 'Upgradable empowering access', 'Jamie Young', 46),
(413, 8434, 'Persistent intangible encryption', 'Carrie Hunt', 30),
(414, 6023, 'Streamlined upward-trending support', 'Thomas Cisneros', 33),
(415, 4777, 'Cross-group system-worthy productivity', 'Peter Carter', 16),
(416, 4155, 'Robust local paradigm', 'Margaret Thomas', 41),
(417, 2958, 'Function-based foreground policy', 'Lisa Bell', 96),
(418, 9779, 'Automated composite encryption', 'Kimberly Jones', 98),
(419, 4033, 'Operative optimal middleware', 'Jennifer Cantrell', 25),
(420, 4545, 'Digitized tangible strategy', 'George Espinoza', 95),
(421, 8933, 'Down-sized heuristic leverage', 'Daniel Hall', 36),
(422, 9595, 'Versatile secondary hierarchy', 'Hannah May', 77),
(423, 5636, 'Switchable client-driven help-desk', 'Frank Ballard', 13),
(424, 4180, 'Profound 5thgeneration monitoring', 'Makayla Gardner', 38),
(425, 4727, 'Total uniform data-warehouse', 'Lisa Taylor', 47),
(426, 3939, 'Mandatory logistical solution', 'Mr. Spencer Sims III', 39),
(427, 1231, 'Robust 24hour solution', 'Chris Diaz', 91),
(428, 9751, 'Cloned system-worthy success', 'Catherine Dudley', 17),
(429, 5494, 'Multi-channeled 24/7 flexibility', 'Angela Roberts', 6),
(430, 1893, 'Balanced needs-based throughput', 'Krystal Nguyen', 71),
(431, 5786, 'Fundamental mobile framework', 'Linda Lawson', 90),
(432, 3068, 'Fundamental transitional strategy', 'Lisa Flores', 82),
(433, 9042, 'Fully-configurable mission-critical info-mediaries', 'Whitney Steele', 14),
(434, 1200, 'Managed hybrid Graphic Interface', 'Kristina Ray', 74),
(435, 5658, 'Public-key systematic secured line', 'Alexa Holland', 61),
(436, 8843, 'Up-sized executive Internet solution', 'Stephanie Cook', 57),
(437, 6582, 'Automated client-server open architecture', 'James Morgan', 24),
(438, 1841, 'Ergonomic zero-defect focus group', 'Regina Hansen', 33),
(439, 8827, 'Integrated cohesive portal', 'Frederick Vargas', 15),
(440, 2070, 'Down-sized executive solution', 'Linda Rodriguez', 52),
(441, 9056, 'Operative well-modulated parallelism', 'Connor Nguyen', 10),
(442, 1878, 'Programmable reciprocal Graphical User Interface', 'Peter Campos', 20),
(443, 3444, 'Organic national array', 'Donald Bailey', 73),
(444, 5978, 'Reduced optimal conglomeration', 'Janet Smith', 11),
(445, 5066, 'Operative asynchronous budgetary management', 'Marcus Valencia', 16),
(446, 7818, 'Profound optimal database', 'Kristin Delgado', 78),
(447, 4697, 'Reactive reciprocal alliance', 'Michaela Mcgee', 100),
(448, 9561, 'Triple-buffered even-keeled frame', 'Cheryl Hardy MD', 49),
(449, 8381, 'Cloned scalable solution', 'Melissa Kim', 57),
(450, 5871, 'Centralized executive encoding', 'Kristina Dixon', 76),
(451, 8025, 'Down-sized regional access', 'Glenn Ray', 40),
(452, 1986, 'Ergonomic coherent service-desk', 'Jonathan Stevenson', 79),
(453, 2625, 'Balanced homogeneous intranet', 'Sergio Chang', 98),
(454, 4404, 'Realigned homogeneous analyzer', 'Robin Hawkins', 81),
(455, 4457, 'Ameliorated tertiary concept', 'Jacqueline Lowe PhD', 34),
(456, 2330, 'Intuitive regional moratorium', 'Eric Smith', 21),
(457, 4929, 'Upgradable homogeneous archive', 'Hannah Gray', 23),
(458, 2229, 'Fundamental analyzing superstructure', 'Bobby Herring', 21),
(459, 1043, 'Versatile bandwidth-monitored pricing structure', 'Alexandra Smith', 53),
(460, 8381, 'Networked 4thgeneration system engine', 'Richard Mcconnell', 89),
(461, 8699, 'Team-oriented incremental support', 'Mike Logan', 38),
(462, 1534, 'Automated context-sensitive core', 'Brian Key', 30),
(463, 5720, 'Devolved multimedia leverage', 'Marcus Garcia', 91),
(464, 5632, 'Organic systematic encoding', 'Cheryl Sanchez', 90),
(465, 8438, 'Reverse-engineered bottom-line circuit', 'David Kennedy', 10),
(466, 4824, 'Horizontal multi-tasking architecture', 'John Cohen', 34),
(467, 4241, 'Persevering reciprocal portal', 'Lisa Sutton', 55),
(468, 2880, 'Triple-buffered hybrid toolset', 'Christina Wheeler', 70),
(469, 4683, 'Reduced web-enabled leverage', 'Shelia Mitchell', 83),
(470, 3441, 'Multi-lateral bottom-line workforce', 'Anne Bishop', 35),
(471, 3330, 'Vision-oriented needs-based service-desk', 'Andrew Buckley', 10),
(472, 1977, 'Self-enabling 6thgeneration protocol', 'Terry Jimenez', 22),
(473, 6039, 'Multi-tiered zero tolerance parallelism', 'Richard Wallace', 77),
(474, 5728, 'Optimized secondary benchmark', 'Stacy Ayers', 57),
(475, 3037, 'Optional intangible groupware', 'Mary Hutchinson', 60),
(476, 5982, 'Digitized eco-centric flexibility', 'Jason Rowe', 90),
(477, 7594, 'Re-engineered human-resource emulation', 'Nicole Fuller', 35),
(478, 9199, 'Automated attitude-oriented knowledge user', 'Nancy Johnson', 70),
(479, 9090, 'Realigned leadingedge superstructure', 'Thomas Collins', 57),
(480, 2317, 'Right-sized national contingency', 'Anthony Smith', 77),
(481, 1653, 'Self-enabling national process improvement', 'Steven Ramirez', 56),
(482, 6280, 'Adaptive coherent definition', 'Kristy Bryan', 78),
(483, 5102, 'Persistent mission-critical adapter', 'Gregory Johnson', 4),
(484, 2496, 'Managed secondary standardization', 'Sarah Swanson', 30),
(485, 1339, 'Secured 4thgeneration core', 'Rita Patel DVM', 98),
(486, 5415, 'Versatile motivating project', 'Jeremy Thompson', 74),
(487, 1659, 'Cross-platform static extranet', 'Manuel Hill', 98),
(488, 3870, 'Synergistic full-range parallelism', 'Ryan Mcintyre', 61),
(489, 9502, 'Adaptive human-resource open architecture', 'Rebecca Reyes', 84),
(490, 8245, 'Reverse-engineered human-resource workforce', 'Christina Martinez', 36),
(491, 3973, 'Reduced hybrid function', 'John Mcbride', 75),
(492, 8141, 'Down-sized holistic protocol', 'Dr. Kevin Ramirez', 82),
(493, 9056, 'Vision-oriented asymmetric model', 'Walter Contreras', 12),
(494, 8700, 'Upgradable attitude-oriented adapter', 'Joseph Nelson', 45),
(495, 7690, 'Adaptive 4thgeneration moderator', 'Paula Miller', 43),
(496, 6260, 'Ameliorated bandwidth-monitored analyzer', 'Tracy Barber', 86),
(497, 2713, 'Mandatory fault-tolerant website', 'Evelyn White', 21),
(498, 6403, 'Synchronized radical attitude', 'Penny Hubbard', 53),
(499, 9117, 'Ergonomic heuristic hardware', 'Paul Ellis', 37),
(500, 7561, 'Configurable multi-tasking knowledgebase', 'Christopher Smith', 98),
(501, 1601, 'Seamless multi-tasking customer loyalty', 'Richard Williamson', 59),
(502, 2442, 'Realigned discrete paradigm', 'Brooke Hunter', 41),
(503, 5135, 'Advanced radical conglomeration', 'Paul Ortiz', 42),
(504, 2899, 'Profit-focused multi-state utilization', 'Jordan Lopez', 99),
(505, 7622, 'Grass-roots foreground secured line', 'Sara Sweeney', 66);

-- --------------------------------------------------------

--
-- Table structure for table `issuedbooks`
--

CREATE TABLE `issuedbooks` (
  `id` int(11) NOT NULL,
  `Studentname` varchar(255) NOT NULL,
  `Booknumber` int(11) NOT NULL,
  `Booktitle` varchar(255) NOT NULL,
  `issueddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issuedbooks`
--

INSERT INTO `issuedbooks` (`id`, `Studentname`, `Booknumber`, `Booktitle`, `issueddate`) VALUES
(26, 'ali@gmail.com', 9935, 'Streamlined transitional intranet', '2024-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id`, `name`, `email`, `password`) VALUES
(11, 'Aina', 'aina@gmail.com', 'ina@12345');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fine` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `contact`, `address`, `password`, `fine`) VALUES
(12, 'Ali', 'ali@gmail.com', '03219188918', 'jds', '03086844505', 0),
(13, 'Hassnain', 'ali1@gmail.com', '03219188918', 's-19', '03086844505', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuedbooks`
--
ALTER TABLE `issuedbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `issuedbooks`
--
ALTER TABLE `issuedbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
