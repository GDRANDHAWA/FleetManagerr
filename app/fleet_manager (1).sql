-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 26, 2019 at 03:12 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleet_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_signup`
--

DROP TABLE IF EXISTS `admin_signup`;
CREATE TABLE IF NOT EXISTS `admin_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_signup`
--

INSERT INTO `admin_signup` (`id`, `Name`, `Username`, `Email`, `Password`, `Mobile`) VALUES
(1, 'Rohit', 'Rohit3049', 'rohitazad@icloud.com', '12345', '5555215556');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE IF NOT EXISTS `driver` (
  `Did` int(11) NOT NULL AUTO_INCREMENT,
  `Aid` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `vehicle` varchar(10) NOT NULL,
  `DLicense` varchar(10) NOT NULL,
  `Mobile` varchar(12) NOT NULL,
  `Password` varchar(15) NOT NULL,
  PRIMARY KEY (`Did`),
  KEY `Aid` (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Did`, `Aid`, `Name`, `Username`, `vehicle`, `DLicense`, `Mobile`, `Password`) VALUES
(1, 1, 'Gurmandeep', 'gsingh', 'GE348M', 'CHD33B68', '12345678', '123456'),
(2, 1, 'Rajan', 'raj', 'H45T67', '28445577', '6043781828', 'rajamrit'),
(3, 1, 'Jatin', 'jatin69', 'GH6AS4', 'DL56789', '6045557788', '123456'),
(4, 1, 'John', 'johndoe', 'PE6IS5', 'DL545435', '6041113333', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `driver_log`
--

DROP TABLE IF EXISTS `driver_log`;
CREATE TABLE IF NOT EXISTS `driver_log` (
  `dLog_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `FromLocation` varchar(25) NOT NULL,
  `ToLocation` varchar(25) NOT NULL,
  `Material` varchar(25) NOT NULL,
  `Distance` varchar(15) NOT NULL,
  `FuelCard` varchar(10) NOT NULL,
  `Odometer` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`dLog_id`),
  KEY `Did` (`d_id`),
  KEY `Aid` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_log`
--

INSERT INTO `driver_log` (`dLog_id`, `d_id`, `a_id`, `FromLocation`, `ToLocation`, `Material`, `Distance`, `FuelCard`, `Odometer`, `Date`) VALUES
(5, 1, 1, 'Seattle', 'Vancouver', 'Asphalt', '250', '6400', '435353', '2019-11-01'),
(6, 1, 1, 'Vancouver', 'Seattle', 'Gravel', '500', '4955', '123456', '2019-11-02'),
(7, 2, 1, 'Surrey', 'Calgary', 'Furniture', '700', '6400', '345678', '2019-11-03'),
(8, 2, 1, 'Richmond', 'Toronto', 'Mixed', '800', '4955', '564555', '2019-11-04'),
(9, 1, 1, 'Seattle', 'Prince George', 'Frozen Food', '1200', '6400', '765332', '2019-11-05'),
(10, 1, 1, 'Seattle', 'Vancouver', 'Asphalt', '900', '6400', '435353', '2019-10-01'),
(11, 1, 1, 'Vancouver', 'Seattle', 'Gravel', '400', '4955', '123456', '2019-10-02'),
(12, 2, 1, 'Surrey', 'Calgary', 'Furniture', '450', '6400', '345678', '2019-10-03'),
(13, 1, 1, 'Richmond', 'Toronto', 'Mixed', '1500', '4955', '564555', '2019-10-04'),
(14, 2, 1, 'Seattle', 'Prince George', 'Frozen Food', '167', '6400', '765332', '2019-11-05'),
(15, 1, 1, 'Seattle', 'Vancouver', 'Asphalt', '690', '6400', '435353', '2019-11-13'),
(16, 2, 1, 'Seattle', 'Vancouver', 'Gravel', '469', '5555', '123456', '2019-11-12'),
(17, 1, 1, 'Surrey', 'Calgary', 'Cars', '450', '6400', '345678', '2019-11-11'),
(18, 2, 1, 'Toronto', 'Richmond', 'Mixed', '123', '5555', '564555', '2019-11-10'),
(19, 1, 1, 'Prince George', 'Seattle', 'Seafood', '666', '3400', '765332', '2019-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `mechanic`
--

DROP TABLE IF EXISTS `mechanic`;
CREATE TABLE IF NOT EXISTS `mechanic` (
  `Mid` int(11) NOT NULL AUTO_INCREMENT,
  `Aid` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `SecurityQuestion` varchar(30) NOT NULL,
  `SecurityAnswer` varchar(30) NOT NULL,
  PRIMARY KEY (`Mid`),
  KEY `Aid` (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mechanic`
--

INSERT INTO `mechanic` (`Mid`, `Aid`, `Name`, `Mobile`, `Email`, `Username`, `Password`, `SecurityQuestion`, `SecurityAnswer`) VALUES
(1, 1, 'Arshdeep Brar', '7782366006', 'arsh@brar.ca', 'arsh07', 'Qwerty123@', 'Football Club', 'Southampton'),
(2, 1, 'Sid', '7782364545', 'sid@gmail.com', 'sid17', 'Qwerty123$', 'Best Food?', 'Chicken'),
(3, 1, 'Prince', '6047789999', 'prince@icloud.com', 'prince77', 'Qwerty123%', 'Hobby', 'Working out');

-- --------------------------------------------------------

--
-- Table structure for table `mechanic_log`
--

DROP TABLE IF EXISTS `mechanic_log`;
CREATE TABLE IF NOT EXISTS `mechanic_log` (
  `MLid` int(11) NOT NULL AUTO_INCREMENT,
  `Mid` int(11) NOT NULL,
  `Aid` int(11) NOT NULL,
  `Wid` int(11) NOT NULL,
  `VehiclePlate` varchar(15) NOT NULL,
  `NumofHours` int(11) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`MLid`),
  KEY `Mid` (`Mid`),
  KEY `Aid` (`Aid`),
  KEY `Wid` (`Wid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mechanic_log`
--

INSERT INTO `mechanic_log` (`MLid`, `Mid`, `Aid`, `Wid`, `VehiclePlate`, `NumofHours`, `Date`) VALUES
(1, 1, 1, 1, 'H45T67', 4, '2019-10-30'),
(5, 1, 1, 5, 'H45T67', 4, '2019-10-30'),
(13, 2, 1, 6, 'GE348M', 7, '2019-11-27'),
(14, 3, 1, 9, 'GH6AS4', 15, '2019-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `orderparts`
--

DROP TABLE IF EXISTS `orderparts`;
CREATE TABLE IF NOT EXISTS `orderparts` (
  `Opid` int(11) NOT NULL AUTO_INCREMENT,
  `Mid` int(11) NOT NULL,
  `Vid` int(11) NOT NULL,
  `Aid` int(11) NOT NULL,
  `LicensePlate` varchar(10) NOT NULL,
  `PartsOrdered` varchar(50) NOT NULL,
  `Company` varchar(25) NOT NULL,
  `Invoice` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Opid`),
  KEY `Mid` (`Mid`),
  KEY `Aid` (`Aid`),
  KEY `Vid` (`Vid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderparts`
--

INSERT INTO `orderparts` (`Opid`, `Mid`, `Vid`, `Aid`, `LicensePlate`, `PartsOrdered`, `Company`, `Invoice`, `Total`, `Date`) VALUES
(6, 1, 1, 1, 'GE348M', 'coolant, wipers, door handle', 'Progressive Toyota', 'FLMGE337DO', '1299', '2019-11-08'),
(7, 2, 3, 1, 'H45T67', 'Misc. Service material', 'NW Auto', 'FLMT6775FO', '399', '2019-11-26'),
(8, 3, 6, 1, 'GH6AS4', 'Spark Plugs, Cables', 'Western Auto', 'FLMAS427DA', '699', '2019-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `sos_logs`
--

DROP TABLE IF EXISTS `sos_logs`;
CREATE TABLE IF NOT EXISTS `sos_logs` (
  `SOS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Aid` int(11) NOT NULL,
  `Did` int(11) NOT NULL,
  `Latitude` varchar(20) NOT NULL,
  `Longitude` varchar(20) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `TStamp` varchar(40) NOT NULL,
  PRIMARY KEY (`SOS_ID`),
  KEY `Aid` (`Aid`),
  KEY `Did` (`Did`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sos_logs`
--

INSERT INTO `sos_logs` (`SOS_ID`, `Aid`, `Did`, `Latitude`, `Longitude`, `Address`, `TStamp`) VALUES
(7, 1, 1, '49.2171', '-122.894', '54 E Columbia St, New Westminster, BC V3L 3V8, Canada', 'Tue Nov 19 05:00:04 PST 2019'),
(8, 1, 2, '49.2171', '-122.894', '54 E Columbia St, New Westminster, BC V3L 3V8, Canada', 'Tue Nov 19 13:57:15 PST 2019'),
(9, 1, 3, '49.2171', '-122.894', '54 E Columbia St, New Westminster, BC V3L 3V8, Canada', 'Wed Nov 20 19:31:21 PST 2019'),
(10, 1, 2, '49.2166867', '-122.895335', '28 Richmond St, New Westminster, BC V3L 5P4, Canada', 'Sat Nov 23 11:13:38 PST 2019'),
(11, 1, 1, '49.2166867', '-122.895335', '28 Richmond St, New Westminster, BC V3L 5P4, Canada', 'Sun Nov 24 20:28:03 PST 2019'),
(12, 1, 4, '37.4219983', '-122.084', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 'Sun Nov 24 20:43:59 PST 2019'),
(13, 1, 1, '49.2166867', '-122.895335', '28 Richmond St, New Westminster, BC V3L 5P4, Canada', 'Sun Nov 24 21:57:39 PST 2019'),
(14, 1, 1, '49.2166867', '-122.895335', '28 Richmond St, New Westminster, BC V3L 5P4, Canada', 'Sun Nov 24 22:09:15 PST 2019'),
(15, 1, 1, '49.2166867', '-122.895335', '28 Richmond St, New Westminster, BC V3L 5P4, Canada', 'Sun Nov 24 22:10:29 PST 2019'),
(16, 1, 1, '49.2166867', '-122.895335', '28 Richmond St, New Westminster, BC V3L 5P4, Canada', 'Sun Nov 24 22:14:00 PST 2019');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_table`
--

DROP TABLE IF EXISTS `vehicle_table`;
CREATE TABLE IF NOT EXISTS `vehicle_table` (
  `Vid` int(11) NOT NULL AUTO_INCREMENT,
  `Aid` int(11) NOT NULL,
  `VehicleType` varchar(20) NOT NULL,
  `VehicleCompany` varchar(20) NOT NULL,
  `VehicleName` varchar(20) NOT NULL,
  `LicensePlate` varchar(10) NOT NULL,
  `EngineNumber` varchar(20) NOT NULL,
  `VinNumber` varchar(20) NOT NULL,
  `InsuranceStartDate` date NOT NULL,
  `InsuranceEndDate` date NOT NULL,
  PRIMARY KEY (`Vid`),
  KEY `Aid` (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_table`
--

INSERT INTO `vehicle_table` (`Vid`, `Aid`, `VehicleType`, `VehicleCompany`, `VehicleName`, `LicensePlate`, `EngineNumber`, `VinNumber`, `InsuranceStartDate`, `InsuranceEndDate`) VALUES
(1, 1, 'Pickup Truck', 'Dodge', 'Ram', 'GE348M', '123456', '123456789', '2019-11-01', '2019-12-17'),
(3, 1, 'Pickup Truck', 'Ford', 'F-150', 'H45T67', '58435347', '544324222', '2019-09-29', '2019-11-30'),
(4, 1, 'Semi Truck', 'Volvo', 'VNR Series', 'QW1345', '6543666443', '545433345', '2019-11-14', '2019-11-30'),
(5, 1, 'Tanker Truck', 'Peterbilt', '379 Sleeper', 'CH0166', '75456435533', '67453333', '2019-11-01', '2020-01-29'),
(6, 1, 'Straight Truck', 'Daimler Trucks', 'Cascadia', 'GH6AS4', '7854544444', '976565544', '2019-11-06', '2020-02-29'),
(7, 1, 'Semi Truck', 'Navistar', 'ProStar', 'WYNGMP', '5453435343', '3454543', '2019-11-01', '2020-04-30'),
(8, 1, 'Tanker Truck', 'Paccar', 'MX - 13', 'PE6IS5', '546435354335', '34453543', '2019-09-08', '2020-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `workorder`
--

DROP TABLE IF EXISTS `workorder`;
CREATE TABLE IF NOT EXISTS `workorder` (
  `Wid` int(11) NOT NULL AUTO_INCREMENT,
  `Aid` int(11) NOT NULL,
  `Did` int(11) NOT NULL,
  `VinNumber` varchar(15) NOT NULL,
  `VCompany` varchar(15) NOT NULL,
  `VehicleName` varchar(20) NOT NULL,
  `LicensePlate` varchar(20) NOT NULL,
  `VehicleType` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Issue` varchar(50) NOT NULL,
  `Status` varchar(15) NOT NULL,
  PRIMARY KEY (`Wid`),
  KEY `Aid` (`Aid`),
  KEY `Did` (`Did`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workorder`
--

INSERT INTO `workorder` (`Wid`, `Aid`, `Did`, `VinNumber`, `VCompany`, `VehicleName`, `LicensePlate`, `VehicleType`, `Date`, `Issue`, `Status`) VALUES
(1, 1, 1, '123456789', 'Dodge', 'Ram', 'GE348M', 'Pickup Truck', '2019-11-27', 'oil leak', 'Closed'),
(5, 1, 1, '544324222', 'Ford', 'F-150', 'H45T67', 'Pickup Truck', '2019-11-30', 'oil change', 'Open'),
(6, 1, 1, '123456789', 'Dodge', 'Ram', 'GE348M', 'Pickup Truck', '2019-12-18', 'Service due', 'Open'),
(7, 1, 4, '34453543', 'Paccar', 'MX - 13', 'PE6IS5', 'Tanker Truck', '2019-12-27', 'General checkup', 'Open'),
(8, 1, 2, '544324222', 'Ford', 'F-150', 'H45T67', 'Pickup Truck', '2019-11-30', 'Axle fix', 'Open'),
(9, 1, 3, '976565544', 'Daimler Trucks', 'Cascadia', 'GH6AS4', 'Straight Truck', '2019-12-02', 'Engine trouble', 'Open');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`Aid`) REFERENCES `admin_signup` (`id`);

--
-- Constraints for table `driver_log`
--
ALTER TABLE `driver_log`
  ADD CONSTRAINT `driver_log_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin_signup` (`id`),
  ADD CONSTRAINT `driver_log_ibfk_2` FOREIGN KEY (`d_id`) REFERENCES `driver` (`Did`);

--
-- Constraints for table `mechanic`
--
ALTER TABLE `mechanic`
  ADD CONSTRAINT `mechanic_ibfk_1` FOREIGN KEY (`Aid`) REFERENCES `admin_signup` (`id`);

--
-- Constraints for table `mechanic_log`
--
ALTER TABLE `mechanic_log`
  ADD CONSTRAINT `mechanic_log_ibfk_1` FOREIGN KEY (`Aid`) REFERENCES `admin_signup` (`id`),
  ADD CONSTRAINT `mechanic_log_ibfk_2` FOREIGN KEY (`Wid`) REFERENCES `workorder` (`Wid`),
  ADD CONSTRAINT `mechanic_log_ibfk_3` FOREIGN KEY (`Mid`) REFERENCES `mechanic` (`Mid`);

--
-- Constraints for table `orderparts`
--
ALTER TABLE `orderparts`
  ADD CONSTRAINT `orderparts_ibfk_1` FOREIGN KEY (`Mid`) REFERENCES `mechanic` (`Mid`),
  ADD CONSTRAINT `orderparts_ibfk_2` FOREIGN KEY (`Vid`) REFERENCES `vehicle_table` (`Vid`),
  ADD CONSTRAINT `orderparts_ibfk_3` FOREIGN KEY (`Aid`) REFERENCES `admin_signup` (`id`);

--
-- Constraints for table `sos_logs`
--
ALTER TABLE `sos_logs`
  ADD CONSTRAINT `sos_logs_ibfk_1` FOREIGN KEY (`Aid`) REFERENCES `admin_signup` (`id`),
  ADD CONSTRAINT `sos_logs_ibfk_2` FOREIGN KEY (`Did`) REFERENCES `driver` (`Did`);

--
-- Constraints for table `vehicle_table`
--
ALTER TABLE `vehicle_table`
  ADD CONSTRAINT `vehicle_table_ibfk_1` FOREIGN KEY (`Aid`) REFERENCES `admin_signup` (`id`);

--
-- Constraints for table `workorder`
--
ALTER TABLE `workorder`
  ADD CONSTRAINT `workorder_ibfk_1` FOREIGN KEY (`Aid`) REFERENCES `admin_signup` (`id`),
  ADD CONSTRAINT `workorder_ibfk_2` FOREIGN KEY (`Did`) REFERENCES `driver` (`Did`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
