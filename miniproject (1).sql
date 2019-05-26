-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 04:32 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillNum` bigint(20) NOT NULL,
  `Date` date DEFAULT NULL,
  `AmountPaid` decimal(10,2) DEFAULT NULL,
  `PaymentID` bigint(20) DEFAULT NULL,
  `Pnum` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillNum`, `Date`, `AmountPaid`, `PaymentID`, `Pnum`) VALUES
(1, '2018-09-03', '1370.00', 1, '1'),
(2, '2018-09-13', '2300.00', 2, '2'),
(3, '2018-09-13', '1700.00', 3, '3'),
(4, '2017-05-11', '2900.00', 4, '4'),
(5, '2018-01-02', '2900.00', 5, '5'),
(6, '2018-07-12', '2900.00', 6, '6'),
(7, '2018-09-03', '1375.00', 7, '7'),
(8, '2017-01-09', '1375.00', 8, '8'),
(9, '2017-11-24', '1100.00', 9, '9'),
(10, '2017-08-11', '2182.00', 10, '10'),
(11, '2018-09-13', '1374.00', 11, '11'),
(12, '2018-03-01', '1156.00', 12, '12'),
(13, '2010-08-01', '2200.00', 13, '13'),
(14, '2008-11-11', '1370.00', 14, '14'),
(15, '2018-10-10', '2300.00', 15, '15'),
(16, '2017-01-19', '1370.00', 16, '16'),
(17, '2013-09-09', '2300.00', 17, '17'),
(18, '2012-11-19', '1750.00', 18, '18'),
(19, '2012-11-20', '2300.00', 19, '19'),
(20, '2012-01-20', '1100.00', 19, '20'),
(21, '2005-12-20', '1700.00', 20, '21');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_ID` bigint(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Mname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `DOB` date NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `LincenseIssueDate` date DEFAULT NULL,
  `LincenseIssueState` varchar(20) DEFAULT NULL,
  `LincenseNumber` varchar(20) NOT NULL,
  `Hno` int(11) DEFAULT NULL,
  `Street` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Pin` varchar(20) DEFAULT NULL,
  `Active` bit(1) DEFAULT b'0',
  `age` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_ID`, `Fname`, `Mname`, `Lname`, `Gender`, `DOB`, `Email`, `Phone`, `LincenseIssueDate`, `LincenseIssueState`, `LincenseNumber`, `Hno`, `Street`, `City`, `State`, `Pin`, `Active`, `age`) VALUES
(1, 'Fabian', 'Daniel', 'J', 'M', '1999-11-22', 'fabdanny@gmail.com', '8867530201', '2018-09-01', 'Karnataka', 'KA51 765435', 100, '3rd Cross', 'Bangalore', 'Karnataka', '560102', b'1', NULL),
(2, 'Prashant', 'Reddy', 'PS', 'M', '1996-10-12', 'prashantps@gmail.com', '9972810127', '2017-03-17', 'Tamil Nadu', 'TN69 325442', 12, '7th Cross', 'Bangalore', 'Karnataka', '560132', b'1', NULL),
(3, 'Aanchal', 'P', 'Machani', 'F', '1996-02-25', 'aanchumach@yahoo.com', '9449649025', '2016-07-29', 'Maharashtra', 'MH32 435562', 118, '25th Cross', 'Mumbai', 'Maharashtra', '400029', b'1', NULL),
(4, 'Abdul', 'Hannan', 'Khan', 'M', '1994-12-12', 'abdulhannan@hotmail.com', '7338015609', '2015-01-27', 'West Bengal', 'WB01 215232', 17, '34th cross', 'Chennai', 'Tamil Nadu', '600028', b'1', NULL),
(5, 'Radhikha', 'Seth', 'G', 'F', '1998-01-31', 'sethradhika@hotmail.com', '9945737376', '2018-09-30', 'Karnataka', 'KA01 276232', 899, '17th cross', 'Banaglore', 'Karnataka', '560026', b'0', NULL),
(6, 'Allan', 'K', 'George', 'M', '1991-10-23', 'allankk@gmail.com', '8904068680', '2012-10-30', 'Assam', 'AS01 234212', 126, '29th cross', 'Chennai', 'Tamil Nadu', '600035', b'1', NULL),
(7, 'Prerika', 'P', 'Singla', 'F', '1996-12-31', 'singlaprerika@gmail.com', '9901885041', '2018-01-26', 'Punjab', 'PB12 276302', 54, '1st cross', 'Bangalore', 'Karnataka', '560045', b'0', NULL),
(8, 'Sre', 'Varun', 'S', 'M', '1989-01-21', 'swaglord69@gmail.com', '7448015688', '2008-09-09', 'Tamil Nadu', 'TN62 245232', 119, '7th cross', 'Kottayam', 'Kerala', '686582', b'1', NULL),
(9, 'Anand', 'K', 'Karthik', 'M', '1980-12-01', 'amkily@gmail.com', '8882532100', '2002-03-21', 'Gujarat', 'GJ34 248902', 65, '112th cross', 'Bangalore', 'Karnataka', '560056', b'0', NULL),
(10, 'Ananya', 'L', 'Lakshmi', 'F', '1998-05-24', 'lakshmiananaya@gmail.com', '9982138420', '2017-07-12', 'Tamil Nadu', 'TN34 568322', 193, '3rd cross', 'Bangalore', 'Karnataka', '560045', b'1', NULL),
(11, 'Shiv', '', 'Kumar', 'M', '1985-09-17', 'shivk@gmail.com', '9967092617', '2010-10-10', 'Bihar', 'BR03 562819', 122, '12th cross', 'Patna', 'Bihar', '801507', b'1', NULL),
(12, 'Vijai', 'L', 'Sritharan', 'M', '1982-02-10', 'vijails@gmail.com', '9928192617', '2008-09-23', 'Andhra Pradesh', 'AP12 567389', 1, '8th cross', 'Hyderabad', 'Andhra Pradesh', '500025', b'1', NULL),
(13, 'Asvathama', 'Ponnada', 'P', 'F', '1990-01-07', 'asvathampp@yahoo.com', '8879302918', '2009-08-10', 'Karnataka', 'KA08 9836278', 13, '9th main', 'Bangalore', 'Karnataka', '560102', b'1', NULL),
(14, 'Debasis', 'K', 'Sundhararajan', 'M', '1987-12-27', 'dsk@hotmail.com', '8809702918', '2007-08-18', 'Karnataka', 'KA03 0046278', 3, '8th cross', 'Bangalore', 'Karnataka', '560076', b'1', NULL),
(15, 'Gopa', '', 'Trilochana', 'M', '1976-10-29', 'gopatri@gmail.com', '7339029182', '2010-12-12', 'Karnataka', 'KA01 984738', 11, 'Chruch Street', 'Bangalore', 'Karnataka', '560034', b'1', NULL),
(16, 'Sonal', 'Maria', 'Roche', 'F', '1981-02-28', 'sonal98roche@gmail.com', '9019028182', '2011-10-11', 'Karnataka', 'KA01 938738', 32, 'Crook Street', 'Bangalore', 'Karnataka', '560031', b'1', NULL),
(17, 'Kalyanavata', 'Veerender', '', 'M', '1988-10-29', 'kalyanveer@gmail.com', '9048391028', '2011-11-11', 'Karnataka', 'KA03 782910', 5, '23rd  cross', 'Bangalore', 'Karnataka', '560109', b'1', NULL),
(18, 'Damian', 'Daniel', 'Alves', 'M', '1968-11-22', 'damiandanny@gmail.com', '9906728192', '2001-01-31', 'Karnataka', 'KA51 762915', 21, '3rd Cross', 'Bangalore', 'Karnataka', '560054', b'1', NULL),
(19, 'Balaji', '', 'Iyer', 'M', '1970-10-21', 'ballaiyer@gmail.com', '9920728192', '2003-03-30', 'Tamil Nadu', 'TN01 890387', 20, '7th Cross', 'Chennai', 'Tamil Nadu', '600054', b'1', NULL),
(20, 'Mahat', '', 'Singh', 'M', '1998-10-22', 'mahatmahat@gmail.com', '992901192', '2016-10-10', 'Karanataka', 'KA01 890387', 9, '9th Cross', 'Bangalore', 'Bangalore', '560054', b'1', NULL),
(21, '123', '123', '123', 'M', '1990-01-02', '1@gmail.com', '123', '1987-03-03', '123', '123', 123, '123', '123', '123', '123', b'0', NULL);

--
-- Triggers `customer`
--
DELIMITER $$
CREATE TRIGGER `t1` BEFORE INSERT ON `customer` FOR EACH ROW BEGIN
IF((CURRENT_DATE-new.DOB)/10000)<18
THEN SIGNAL SQLSTATE'45000' SET
MESSAGE_TEXT='Age shold be greater than 18';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `Claim_ID` bigint(20) NOT NULL,
  `ClaimAmt` decimal(10,2) DEFAULT NULL,
  `DamageType` varchar(20) DEFAULT NULL,
  `FIR_Number` varchar(20) DEFAULT NULL,
  `DateofClaim` date DEFAULT NULL,
  `ClaimStatus` varchar(20) DEFAULT 'Pending',
  `CustID` bigint(20) DEFAULT NULL,
  `DateofIncident` date DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`Claim_ID`, `ClaimAmt`, `DamageType`, `FIR_Number`, `DateofClaim`, `ClaimStatus`, `CustID`, `DateofIncident`, `Description`) VALUES
(1, '26000.00', 'Crash', '89372832', '2018-10-10', 'Approved', 1, NULL, NULL),
(2, '18000.00', 'Natural', NULL, '2018-07-18', 'Approved', 7, NULL, NULL),
(3, '7000.00', 'Crash', '4398678', '2018-06-12', 'Pending', 9, NULL, NULL),
(4, '12560.00', '3rd Party', '74693344', '2018-08-29', 'Approved', 10, NULL, NULL),
(5, '34050.00', 'Crash', '6948393', '2018-08-12', 'Rejected', 4, NULL, NULL),
(6, '5000.00', 'NATURAL', NULL, '2018-08-12', 'Rejected', 1, NULL, NULL),
(7, '23060.00', 'Crash', '8734658347', '2017-02-25', 'Approved', 10, NULL, NULL),
(8, '12000.00', 'Crash', '325565465', '2018-11-23', 'Approved', 16, NULL, NULL),
(9, '27000.00', 'Natural', '', '2018-11-23', 'Rejected', 8, NULL, NULL),
(10, '7000.00', 'Natural', '', '2011-07-01', 'Rejected', 8, NULL, NULL),
(11, '13000.00', '3rd Party', '138457998', '2013-05-12', 'Approved', 8, NULL, NULL),
(12, '7000.00', 'Natural', '', '2018-11-23', 'Pending', 20, NULL, NULL),
(13, '15000.00', 'Crash', '3498734986', '2018-11-23', 'Pending', 19, NULL, NULL),
(14, '3000.00', '3rd Party', '894734693', '2018-05-29', 'Rejected', 19, NULL, NULL),
(15, '6000.00', 'Crash', '84874734693', '2010-10-10', 'Approved', 19, NULL, NULL),
(16, '13000.00', 'Natural', '', '2018-11-23', 'Pending', 14, NULL, NULL),
(17, '17000.00', 'Natural', '', '2018-11-23', 'Approved', 11, NULL, NULL),
(18, '3000.00', 'Natral', '', '2018-11-23', 'Approved', 13, NULL, NULL),
(19, '12792.00', 'Crash', '563653463', '2018-11-23', 'Approved', 15, NULL, NULL),
(20, '7699.00', '3rd Party', '523853463', '2018-11-23', 'Approved', 20, NULL, NULL),
(21, '123.00', '123', '123', '2018-11-24', 'Approved', NULL, '2008-12-31', '123');

--
-- Triggers `insurance`
--
DELIMITER $$
CREATE TRIGGER `t3` AFTER UPDATE ON `insurance` FOR EACH ROW BEGIN IF new.ClaimStatus='Approved'
THEN INSERT INTO settlement(Date,Amt,CustID,ClaimID) VALUES(CURRENT_DATE(),new.ClaimAmt,new.CustID,new.Claim_ID);
END if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` bigint(20) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `Mname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `BankName` varchar(20) DEFAULT NULL,
  `AccountNumber` varchar(20) DEFAULT NULL,
  `IsCard` bit(1) DEFAULT NULL,
  `CardNumber` bigint(16) DEFAULT NULL,
  `ExpiryDate` date DEFAULT '2022-09-01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `fname`, `Mname`, `Lname`, `BankName`, `AccountNumber`, `IsCard`, `CardNumber`, `ExpiryDate`) VALUES
(1, 'Giri', 'P', 'Kishore', 'Kotak', '1600205895', b'0', NULL, NULL),
(2, 'Prashant', 'Reddy', 'PS', 'ICICI', '1600205896', b'0', NULL, NULL),
(3, 'Aanchal', 'P', 'Machani', 'UCO', '1600205897', b'0', NULL, NULL),
(4, 'Abdul', 'Hannan', 'Khan', 'YES', '1600205898', b'0', NULL, NULL),
(5, 'Radhikha', 'Seth', 'S', 'Indian', '1600205899', b'0', NULL, NULL),
(6, 'Allan', 'K', 'George', 'Kotak', '1600205829', b'0', NULL, NULL),
(7, 'Prerika', 'P', 'Singla', 'Citi', '1600202829', b'0', NULL, NULL),
(8, 'Sre', 'Varun', 'K', 'UCO', '1600102829', b'0', NULL, NULL),
(9, 'Sonal', 'Maria', 'Roche', 'YES', '1620102829', b'0', NULL, NULL),
(10, 'Vishal', 'S', 'Menon', 'YES', '1624102829', b'0', NULL, NULL),
(11, 'Shanmuga', 'Priya', NULL, 'ICICI', '1600204687', b'0', NULL, NULL),
(12, 'Thejus', 'Maria', 'B', 'Indian', '1600202987', b'0', NULL, NULL),
(13, 'Goutham', '', 'Manimaran', 'UCO Bank', '1620129329', b'1', 5602167289728971, '2022-05-23'),
(14, 'Debasis ', 'K ', 'Sundhararajan', 'Indian', '2324502829', b'0', NULL, NULL),
(15, 'Tejas', 'Tej', 'LSus', 'ICICI', '9020102829', b'1', 7892018289728971, '2020-01-21'),
(16, 'Ashrith', 'N', 'Shetty', 'Kotak', '1590302829', b'0', NULL, NULL),
(17, 'Munish', 'S', 'Singla', 'Canara', '16267102829', b'1', 7890188289728971, '2025-05-25'),
(18, 'Amrutha', 'G', 'Nambiar', 'Uco', '1624502829', b'0', NULL, NULL),
(19, 'Greeshma', 'G', 'Gopal', 'Indina', '2700002829', b'1', 3409778289728971, '2022-02-22'),
(20, 'Dhruv', 'Sunson', 'Garg', 'HDFC', '160038293848', b'1', 5647920381925480, '2025-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `PolicyNum` varchar(20) NOT NULL,
  `IssueDate` date DEFAULT NULL,
  `EffectiveDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `CoverageType` varchar(20) DEFAULT NULL,
  `TotalAmt` decimal(10,2) DEFAULT NULL,
  `Active` bit(1) DEFAULT b'0',
  `VID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`PolicyNum`, `IssueDate`, `EffectiveDate`, `ExpiryDate`, `CoverageType`, `TotalAmt`, `Active`, `VID`) VALUES
('1', '2018-09-03', '2018-09-04', '2019-09-04', 'Liability', '1370.00', b'1', 1),
('10', '2017-08-11', '2017-08-12', '2018-08-12', 'Personal', '2182.00', b'1', 10),
('11', '2018-09-13', '2018-09-14', '2019-09-14', 'Liability', '1375.00', b'1', 7),
('12', '2018-03-01', '2018-03-02', '2019-03-03', 'Liability', '1156.00', b'1', 12),
('13', '2010-08-01', '2010-08-02', '2011-08-02', 'Personal', '2200.00', b'1', 13),
('14', '2008-11-11', '2008-11-12', '2009-11-12', 'Collision', '1370.00', b'0', 14),
('15', '2018-10-10', '2018-10-11', '2019-10-10', 'Liability', '2300.00', b'1', 15),
('16', '2017-01-19', '2017-01-20', '2018-01-20', 'Personal', '1370.00', b'1', 16),
('17', '2013-09-09', '2013-09-10', '2014-09-10', 'Liability', '2300.00', b'0', 17),
('18', '2012-11-19', '2012-11-20', '2013-11-20', 'Personal', '1750.00', b'0', 18),
('19', '2012-11-20', '2012-11-21', '2013-11-21', 'Liability', '2300.00', b'0', 19),
('2', '2018-09-13', '2018-09-14', '2019-09-14', 'Comprehensive', '2300.00', b'1', 2),
('20', '2012-01-20', '2012-01-21', '2013-01-21', 'Comprehensive', '1100.00', b'0', 20),
('21', '2005-12-20', '2005-12-21', '2006-12-21', 'Personal', '1700.00', b'0', 21),
('22', '2015-12-01', '2015-12-02', '2016-12-02', 'Liability ', '2300.00', b'0', 22),
('23', '2009-09-26', '2009-09-27', '2010-09-27', 'Personal', '1700.00', b'0', 23),
('3', '2018-09-13', '2018-09-14', '2019-09-14', 'Collison', '1700.00', b'0', 3),
('4', '2017-05-11', '2017-05-12', '2018-05-12', 'Personal', '2900.00', b'1', 4),
('5', '2018-01-01', '2018-01-02', '2019-01-02', 'Liability', '1375.00', b'1', 5),
('6', '2018-07-12', '2018-07-13', '2019-07-13', 'Liability', '1375.00', b'1', 6),
('7', '2018-09-13', '2018-09-14', '2019-09-14', 'Liability', '1375.00', b'1', 11),
('8', '2017-01-09', '2017-01-10', '2018-01-10', 'Liability', '1375.00', b'1', 8),
('9', '2017-11-24', '2017-11-25', '2018-11-25', 'Comprehensive', '1100.00', b'1', 9);

--
-- Triggers `policy`
--
DELIMITER $$
CREATE TRIGGER `t2` BEFORE INSERT ON `policy` FOR EACH ROW BEGIN
IF ((new.ExpiryDate-new.EffectiveDate/10000))<1 THEN
SIGNAL SQLSTATE '45000' SET
MESSAGE_TEXT ='Minimum lenght of the policy in 1 year';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `settlement`
--

CREATE TABLE `settlement` (
  `ID` bigint(20) NOT NULL,
  `Date` date DEFAULT NULL,
  `Amt` decimal(10,2) DEFAULT NULL,
  `CustID` bigint(20) DEFAULT NULL,
  `ClaimID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settlement`
--

INSERT INTO `settlement` (`ID`, `Date`, `Amt`, `CustID`, `ClaimID`) VALUES
(1, '2018-09-10', '19000.56', 1, 1),
(2, '2018-07-18', '17000.00', 7, 2),
(3, '2018-08-29', '17000.00', 10, 4),
(4, '2017-08-12', '14500.00', 10, 7),
(5, '2018-11-23', '12000.00', 16, 8),
(6, '2018-11-23', '13000.00', 8, 11),
(7, '2018-11-23', '6000.00', 19, 15),
(8, '2018-11-23', '3000.00', 13, 18),
(9, '2018-11-23', '17000.00', 11, 17),
(10, '2018-11-24', '123.00', NULL, 21);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `VehicleID` bigint(20) NOT NULL,
  `Years` int(4) DEFAULT NULL,
  `Make` varchar(20) DEFAULT NULL,
  `Model` varchar(20) DEFAULT NULL,
  `Colour` varchar(20) DEFAULT NULL,
  `RegNum` varchar(10) DEFAULT NULL,
  `FuelType` varchar(20) DEFAULT 'Petrol',
  `EngineNumber` int(10) DEFAULT NULL,
  `ChassisNum` varchar(20) DEFAULT NULL,
  `CustID` bigint(20) DEFAULT NULL,
  `DateOfPurchase` date DEFAULT NULL,
  `CityOfPurchase` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VehicleID`, `Years`, `Make`, `Model`, `Colour`, `RegNum`, `FuelType`, `EngineNumber`, `ChassisNum`, `CustID`, `DateOfPurchase`, `CityOfPurchase`) VALUES
(1, 2016, 'KTM', 'Duke 200', 'Orange', 'KA01HW7914', 'Petrol', 65432345, 'CW34DJJ2343', 1, '2018-11-11', 'Bangalore'),
(2, 2014, 'Bajaj', 'Dominar 400', 'Black', 'KA51AQ4657', 'Petrol', 65421645, 'KJ34CUY3143', 2, '2017-09-09', 'Chennai'),
(3, 2016, 'Bajaj', 'Pulsar 220', 'Blue', 'MH01GA1244', 'Petrol', 98768345, 'GQ341HIJ2343', 1, '2018-11-11', 'Bangalore'),
(4, 2015, 'TVS', 'Zest', 'Blue', 'MH01AP6969', 'Petrol', 36728145, 'JI332MIJ1343', 3, '2016-11-25', 'Mumbai'),
(5, 2015, 'TVS', 'Zest', 'Blue', 'KA51TQ6219', 'Petrol', 46723145, 'KI332MQW1213', 5, '2018-11-11', 'Bangalore'),
(6, 2016, 'TVS', 'Apache', 'Grey', 'TN01KI1419', 'Petrol', 67923643, 'OL432RQL2113', 4, '2015-11-11', 'Chennai'),
(7, 2012, 'Royal Enfield', 'Classic', 'Grey', 'TN01JI1139', 'Petrol', 59382749, 'PM822KIL1313', 6, '2013-02-25', 'Chennai'),
(8, 2015, 'Royal Enfield', 'Thunderbird', 'Black', 'KL01JI1276', 'Petrol', 987668899, 'M4332QRL1213', 8, '2009-01-01', 'Calicut'),
(9, 2011, 'BMW', 'G310R', 'White', 'KA01JW3465', 'Petrol', 8492847, 'MP223MBL1113', 9, '2003-04-01', 'Bangalore'),
(10, 2011, 'TVS', 'Jupiter', 'White', 'KA01LW1213', 'Petrol', 72819382, 'OP123MNJ8765', 10, '2018-03-01', 'Bangalore'),
(11, 2011, 'TVS', 'Zest', 'White', 'KA51MQ2161', 'Petrol', 83920921, 'KI123BH02837', 7, '2018-11-11', 'Bangalore'),
(12, 2010, 'Hero', 'Splendor', 'Blue', 'TN01YQ9827', 'Petrol', 45643453, 'GH28FV1828', 4, '2017-01-31', 'Chennai'),
(13, 2010, 'Suzuki', 'Intruder', 'Black', 'BR01QW4329', 'Petrol', 2578653, 'CW34DJJ2390', 11, '2010-08-01', 'Patna'),
(14, 2009, 'Mahindra', 'MOJO XT', 'Black', 'AP01YT2329', 'Petrol', 228198653, 'KI34JJJ8990', 12, '2008-11-11', 'Hyderbad'),
(15, 2010, 'Mahindra', 'Gusto', 'Blue', 'KA01HH1229', 'Petrol', 2819201, 'XX34DKK9820', 13, '2018-10-10', 'Bangalore'),
(16, 2011, 'UM', 'Commando', 'Black', 'KA54OP4329', 'Petrol', 29102653, 'KP34OPJ2390', 14, '2017-01-19', 'Bangalore'),
(17, 2011, 'Big DOg', 'Chopper', 'Red', 'KA02PP4929', 'Petrol', 908865783, 'PP34OLJ0990', 15, '2013-09-09', 'Bangalore'),
(18, 2012, 'Aprilia', 'SR150', 'White', 'KA01SS9229', 'Petrol', 73820153, 'PO34BQJ2390', 16, '2012-11-19', 'Bangalore'),
(19, 2012, 'Harley Davidson', 'Strret 750', 'White', 'KA01SH1229', 'Petrol', 78390153, 'PO34BQ00890', 17, '2012-11-20', 'Bangalore'),
(20, 2012, 'Aprilia', 'SRV850', 'Red', 'KA54ST2245', 'Petrol', 92910153, 'PO98BIP1190', 17, '2012-01-20', 'Bangalore'),
(21, 2003, 'Honda', 'Dio', 'White', 'KA03HW1129', 'Petrol', 2147483647, 'OP82GHJ28190', 18, '2005-12-20', 'Bangalore'),
(22, 2003, 'Honda', 'CB Shine', 'Red', 'TN03KS0029', 'Petrol', 72819283, 'LO34BJU7281', 19, '2015-12-01', 'Chennai'),
(23, 2008, 'Ducati', 'Scrambler', 'Black', 'KA01LK0086', 'Petrol', 92043718, 'PO34MNK2980', 20, '2009-09-26', 'Bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillNum`),
  ADD KEY `PaymentID` (`PaymentID`),
  ADD KEY `Pnum` (`Pnum`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD UNIQUE KEY `LincenseNumber` (`LincenseNumber`),
  ADD UNIQUE KEY `Phone` (`Phone`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`Claim_ID`),
  ADD KEY `CustID` (`CustID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD UNIQUE KEY `AccountNumber` (`AccountNumber`),
  ADD UNIQUE KEY `CardNumber` (`CardNumber`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`PolicyNum`),
  ADD KEY `VID` (`VID`);

--
-- Indexes for table `settlement`
--
ALTER TABLE `settlement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CustID` (`CustID`),
  ADD KEY `ClaimID` (`ClaimID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VehicleID`),
  ADD UNIQUE KEY `RegNum` (`RegNum`),
  ADD UNIQUE KEY `EngineNumber` (`EngineNumber`),
  ADD UNIQUE KEY `ChassisNum` (`ChassisNum`),
  ADD KEY `CustID` (`CustID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillNum` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cust_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `Claim_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `settlement`
--
ALTER TABLE `settlement`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `VehicleID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`Payment_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`Pnum`) REFERENCES `policy` (`PolicyNum`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customer` (`Cust_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `policy`
--
ALTER TABLE `policy`
  ADD CONSTRAINT `policy_ibfk_1` FOREIGN KEY (`VID`) REFERENCES `vehicle` (`VehicleID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `settlement`
--
ALTER TABLE `settlement`
  ADD CONSTRAINT `settlement_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customer` (`Cust_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `settlement_ibfk_2` FOREIGN KEY (`ClaimID`) REFERENCES `insurance` (`Claim_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customer` (`Cust_ID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
