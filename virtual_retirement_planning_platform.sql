-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 07:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtual_retirement_planning_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `Username` varchar(23) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Username`, `Email`, `Password`) VALUES
(1, 'duwamariya', 'duwamariya4@gmail.com', 'Ntwali@22');

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `Analytics_ID` int(11) NOT NULL,
  `Workshop_ID` int(11) DEFAULT NULL,
  `Session_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Attendance_Count` int(11) DEFAULT NULL,
  `Feedback_Analysis` text DEFAULT NULL,
  `Report_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `analytics`
--

INSERT INTO `analytics` (`Analytics_ID`, `Workshop_ID`, `Session_ID`, `User_ID`, `Attendance_Count`, `Feedback_Analysis`, `Report_Date`) VALUES
(1, 1, 1, 1, 5, '8', '2024-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `Attendance_ID` int(11) NOT NULL,
  `Workshop_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Attendance_Status` varchar(50) DEFAULT NULL,
  `Attendance_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`Attendance_ID`, `Workshop_ID`, `User_ID`, `Attendance_Status`, `Attendance_Date`) VALUES
(1, 1, 1, 'kahgh', '2024-05-10'),
(2, 2, 2, 'ring', '2024-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Feedback_ID` int(11) NOT NULL,
  `Workshop_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Rating` decimal(3,2) DEFAULT NULL,
  `Comments` text DEFAULT NULL,
  `Submission_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Feedback_ID`, `Workshop_ID`, `User_ID`, `Rating`, `Comments`, `Submission_Date`) VALUES
(1, 1, 1, 3.00, 'koop', '2024-05-04'),
(2, 2, 2, 6.00, 'agoop', '2024-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `Instructor_ID` int(11) NOT NULL,
  `First_Name` varchar(100) DEFAULT NULL,
  `Last_Name` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Expertise_Area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`Instructor_ID`, `First_Name`, `Last_Name`, `Email`, `Expertise_Area`) VALUES
(1, 'oliva', 'vava', 'ni@gmail.com', 'muboni'),
(3, 'jik', 'lool', 'di@gmail.com', 'ako');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `Notification_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`Notification_ID`, `User_ID`, `Message`, `Status`) VALUES
(1, 1, 'gtii', 'miik'),
(2, 2, 'mook', 'doool');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `Resource_ID` int(11) NOT NULL,
  `Workshop_ID` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`Resource_ID`, `Workshop_ID`, `Title`, `Description`, `Type`) VALUES
(1, 1, 'bbb', 'cyhu', 'stdgf'),
(2, 2, 'mool', 'maki', 'pool');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `Session_ID` int(11) NOT NULL,
  `Workshop_ID` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Start_Time` datetime DEFAULT NULL,
  `End_Time` datetime DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`Session_ID`, `Workshop_ID`, `Title`, `Description`, `Start_Time`, `End_Time`, `Location`) VALUES
(1, 1, 'gook', 'maki', '2024-05-01 00:00:00', '2024-05-04 00:00:00', 'bool'),
(2, 1, 'fool', 'hipo', '2024-04-30 00:00:00', '2024-05-18 00:00:00', 'bool');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Transaction_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Workshop_ID` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Payment_Method` varchar(50) DEFAULT NULL,
  `Transaction_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Transaction_ID`, `User_ID`, `Workshop_ID`, `Amount`, `Payment_Method`, `Transaction_Date`) VALUES
(1, 1, 1, 23.00, 'kok', '2024-05-11'),
(2, 1, 2, 200.00, 'cash', '2024-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Fullname` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) NOT NULL,
  `PhoneNumber` int(30) DEFAULT NULL,
  `RegistrationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `Password`, `Email`, `Fullname`, `Gender`, `PhoneNumber`, `RegistrationDate`) VALUES
(1, 'fifi@gmail.com', 'mama@gmail.com', '2024-05-10', '', 781001277, '2024-05-10'),
(2, '123', 'a@gmail.com', 'diane', '', 781001277, '2024-05-01'),
(3, 'mama', 'mama@gmail.com', 'cool boo', 'female', 2147483647, '2024-05-10'),
(4, 'love', 'lo@gmail.com', 'bebe cool', 'female', 794455676, '2024-05-02'),
(5, 'Ntwali@22', 'duwamariya4@gmail.com', 'Diane UWAMARIYA', 'female', 781001277, '2024-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `Workshop_ID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Instructor_ID` int(11) DEFAULT NULL,
  `Maximum_Capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`Workshop_ID`, `Title`, `Description`, `Start_Date`, `End_Date`, `Duration`, `Instructor_ID`, `Maximum_Capacity`) VALUES
(1, 'tio', 'fii', '2024-05-04', '2024-06-01', 21, NULL, 32),
(2, 'may', 'pool', '2024-05-01', '2024-03-31', 4, 1, 30),
(3, 'monkey', 'shhot', '2024-04-29', '2024-05-10', 5, 1, 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`Analytics_ID`),
  ADD KEY `Workshop_ID` (`Workshop_ID`),
  ADD KEY `Session_ID` (`Session_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`Attendance_ID`),
  ADD KEY `Workshop_ID` (`Workshop_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Feedback_ID`),
  ADD KEY `Workshop_ID` (`Workshop_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`Instructor_ID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`Notification_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`Resource_ID`),
  ADD KEY `Workshop_ID` (`Workshop_ID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`Session_ID`),
  ADD KEY `Workshop_ID` (`Workshop_ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Transaction_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Workshop_ID` (`Workshop_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`Workshop_ID`),
  ADD KEY `Instructor_ID` (`Instructor_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `Attendance_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `Session_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `Workshop_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analytics`
--
ALTER TABLE `analytics`
  ADD CONSTRAINT `analytics_ibfk_1` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshops` (`Workshop_ID`),
  ADD CONSTRAINT `analytics_ibfk_2` FOREIGN KEY (`Session_ID`) REFERENCES `sessions` (`Session_ID`),
  ADD CONSTRAINT `analytics_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_id`);

--
-- Constraints for table `attendees`
--
ALTER TABLE `attendees`
  ADD CONSTRAINT `attendees_ibfk_1` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshops` (`Workshop_ID`),
  ADD CONSTRAINT `attendees_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshops` (`Workshop_ID`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_id`);

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshops` (`Workshop_ID`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshops` (`Workshop_ID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshops` (`Workshop_ID`);

--
-- Constraints for table `workshops`
--
ALTER TABLE `workshops`
  ADD CONSTRAINT `workshops_ibfk_1` FOREIGN KEY (`Instructor_ID`) REFERENCES `instructors` (`Instructor_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
