-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2018 at 02:18 AM
-- Server version: 5.5.62-0+deb8u1
-- PHP Version: 5.6.38-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pandeyy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Contact`
--

CREATE TABLE IF NOT EXISTS `Contact` (
  `place` varchar(30) NOT NULL,
  `Contact_Person` varchar(30) NOT NULL,
  `ContactNo` int(10) NOT NULL,
  `Activity_Field` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Contact`
--

INSERT INTO `Contact` (`place`, `Contact_Person`, `ContactNo`, `Activity_Field`) VALUES
('dublin', 'eimar', 855688123, 'employment generation'),
('dublin', 'adam', 855688562, 'Teaching'),
('dublin', 'martin', 855688589, 'Teaching'),
('cork', 'alan', 855688899, 'Teaching'),
('dublin', 'wren', 2147483647, 'anti begging');

--
-- Triggers `Contact`
--
DELIMITER //
CREATE TRIGGER `contins` BEFORE UPDATE ON `Contact`
 FOR EACH ROW BEGIN
     IF NEW.ContactNo < 0 THEN
         SET NEW.ContactNo = 0;
    
    END IF;
    END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `day_details`
--

CREATE TABLE IF NOT EXISTS `day_details` (
  `Volunteer_ID` int(11) DEFAULT NULL,
  `Work_ID` int(11) DEFAULT NULL,
  `Days` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day_details`
--

INSERT INTO `day_details` (`Volunteer_ID`, `Work_ID`, `Days`) VALUES
(1, 1, 'mon tue wed'),
(2, 2, 'tue wed thur'),
(3, 3, 'wed thur fri'),
(4, 1, 'fri sat sun'),
(5, 2, 'sat sun mon');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Schedule`
--
CREATE TABLE IF NOT EXISTS `Schedule` (
`name` varchar(30)
,`work_` varchar(50)
,`value` varchar(30)
);
-- --------------------------------------------------------

--
-- Table structure for table `shop_details`
--

CREATE TABLE IF NOT EXISTS `shop_details` (
  `Shop_ID` int(4) NOT NULL DEFAULT '0',
  `Shop_Name` varchar(30) NOT NULL,
  `Volunteer_ID` int(4) DEFAULT NULL,
  `Shop_Owner` varchar(30) NOT NULL,
  `Contact` int(10) DEFAULT NULL,
  `Place` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_details`
--

INSERT INTO `shop_details` (`Shop_ID`, `Shop_Name`, `Volunteer_ID`, `Shop_Owner`, `Contact`, `Place`) VALUES
(100, 'store a', 2, 'Cris', 688526, 'Dublin'),
(101, 'store b', 5, 'Leo', 688589, 'cork'),
(102, 'store c', 2, 'marius', 688547, 'Dublin'),
(103, 'store d', 5, 'darius', 688538, 'cork'),
(104, 'store e', 2, 'dan', 688565, 'Dublin');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `School_ID` varchar(4) DEFAULT NULL,
  `Roll_NO` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(30) NOT NULL,
  `Fathers_Name` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `Class` varchar(6) NOT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`School_ID`, `Roll_NO`, `Name`, `Fathers_Name`, `DOB`, `Class`, `Address`) VALUES
('h1', 1, 'Sorcha', 'john', '2005-02-03', 'eight', 'Dublin'),
('h1', 2, 'Jen', 'james', '2007-04-08', 'six', 'Dublin'),
('h1', 3, 'Eilis', 'richard', '2005-08-04', 'seven', 'Dublin'),
('h2', 4, 'Stephen', 'dom', '2004-01-05', 'nine', 'cork'),
('h2', 5, 'Cris', 'dave', '2005-03-09', 'eight', 'cork');

-- --------------------------------------------------------

--
-- Table structure for table `teach_details`
--

CREATE TABLE IF NOT EXISTS `teach_details` (
  `Volunteer_ID` int(11) DEFAULT NULL,
  `School_ID` varchar(4) NOT NULL DEFAULT '',
  `School_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teach_details`
--

INSERT INTO `teach_details` (`Volunteer_ID`, `School_ID`, `School_Name`) VALUES
(3, 'h1', 'hall 1'),
(3, 'h2', 'hall 2');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE IF NOT EXISTS `team_members` (
  `Volunteer_ID` int(11) NOT NULL DEFAULT '0',
  `Work_id` int(11) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `ContactNo` int(11) DEFAULT NULL,
  `College` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`Volunteer_ID`, `Work_id`, `Name`, `DOB`, `Gender`, `Email_id`, `ContactNo`, `College`) VALUES
(1, 1, 'Yash', '1997-09-15', 'male', 'yash@gmail.com', 851074416, 'TCD'),
(2, 2, 'Ciara', '1997-09-15', 'Female', 'ciara@gmail.com', 851074444, 'UCD'),
(3, 3, 'Jenny', '1997-09-15', 'Female', 'jenny@gmail.com', 851071234, 'TCD'),
(4, 1, 'Aniket', '1997-09-15', 'Female', 'aniket@gmail.com', 851075678, 'TCD'),
(5, 2, 'Sarah', '1997-09-15', 'Female', 'sarah@gmail.com', 851079101, 'UCD');

--
-- Triggers `team_members`
--
DELIMITER //
CREATE TRIGGER `tmins` BEFORE UPDATE ON `team_members`
 FOR EACH ROW BEGIN
     IF NEW.Volunteer_ID = 0 THEN
         SET NEW.Volunteer_ID = 0;
     
    END IF;
    END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `work_master`
--

CREATE TABLE IF NOT EXISTS `work_master` (
  `Work_id` int(11) NOT NULL DEFAULT '0',
  `Work_` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_master`
--

INSERT INTO `work_master` (`Work_id`, `Work_`) VALUES
(1, 'anti-begging'),
(2, 'employment generation'),
(3, 'teaching');

-- --------------------------------------------------------

--
-- Structure for view `Schedule`
--
DROP TABLE IF EXISTS `Schedule`;

CREATE ALGORITHM=UNDEFINED DEFINER=`pandeyy`@`localhost` SQL SECURITY DEFINER VIEW `Schedule` AS select `team_members`.`Name` AS `name`,`work_master`.`Work_` AS `work_`,`day_details`.`Days` AS `value` from ((`team_members` join `work_master`) join `day_details`);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
 ADD UNIQUE KEY `ContactNo` (`ContactNo`);

--
-- Indexes for table `day_details`
--
ALTER TABLE `day_details`
 ADD KEY `Volunteer_ID` (`Volunteer_ID`), ADD KEY `Work_ID` (`Work_ID`);

--
-- Indexes for table `shop_details`
--
ALTER TABLE `shop_details`
 ADD PRIMARY KEY (`Shop_ID`), ADD UNIQUE KEY `Contact` (`Contact`), ADD KEY `Volunteer_ID` (`Volunteer_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`Roll_NO`), ADD KEY `School_ID` (`School_ID`);

--
-- Indexes for table `teach_details`
--
ALTER TABLE `teach_details`
 ADD PRIMARY KEY (`School_ID`), ADD KEY `Volunteer_ID` (`Volunteer_ID`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
 ADD PRIMARY KEY (`Volunteer_ID`), ADD UNIQUE KEY `Email_id` (`Email_id`), ADD UNIQUE KEY `ContactNo` (`ContactNo`), ADD KEY `Work_id` (`Work_id`);

--
-- Indexes for table `work_master`
--
ALTER TABLE `work_master`
 ADD PRIMARY KEY (`Work_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `day_details`
--
ALTER TABLE `day_details`
ADD CONSTRAINT `day_details_ibfk_1` FOREIGN KEY (`Volunteer_ID`) REFERENCES `team_members` (`Volunteer_ID`),
ADD CONSTRAINT `day_details_ibfk_2` FOREIGN KEY (`Work_ID`) REFERENCES `work_master` (`Work_id`);

--
-- Constraints for table `shop_details`
--
ALTER TABLE `shop_details`
ADD CONSTRAINT `shop_details_ibfk_1` FOREIGN KEY (`Volunteer_ID`) REFERENCES `team_members` (`Volunteer_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`School_ID`) REFERENCES `teach_details` (`School_ID`);

--
-- Constraints for table `teach_details`
--
ALTER TABLE `teach_details`
ADD CONSTRAINT `teach_details_ibfk_1` FOREIGN KEY (`Volunteer_ID`) REFERENCES `team_members` (`Volunteer_ID`);

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
ADD CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`Work_id`) REFERENCES `work_master` (`Work_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
