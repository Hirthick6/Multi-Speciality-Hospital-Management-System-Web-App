-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 09:12 PM
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
-- Database: `hms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `id` int(11) NOT NULL,
  `appointment_id` varchar(250) NOT NULL,
  `patient_name` varchar(250) NOT NULL,
  `department` varchar(250) NOT NULL,
  `doctor` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`id`, `appointment_id`, `patient_name`, `department`, `doctor`, `date`, `time`, `message`, `status`, `created_at`) VALUES
(1, 'APT-1', 'Paul Smith,24/04/1991', 'ENT', 'Jane Smith', '08/05/2023', '10:00 AM', 'Appointment fix with paul smith', 1, '2023-05-05 18:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `department_name`, `description`, `status`, `created_at`) VALUES
(1, 'Dentists', 'Dentists', 1, '2023-05-05 16:50:33'),
(2, 'Neurology', 'Neurology', 1, '2023-05-05 16:50:49'),
(3, 'Opthalmology', 'Opthalmology', 1, '2023-05-05 16:51:28'),
(4, 'ENT', 'ENT', 1, '2023-05-05 18:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `emailid` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `bio` text NOT NULL,
  `employee_id` varchar(250) NOT NULL,
  `joining_date` varchar(250) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `role` varchar(50) NOT NULL COMMENT '1=Admin, 2=Doctor, 3=Nurse, 4=Accountant',
  `status` tinyint(4) NOT NULL COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `first_name`, `last_name`, `username`, `emailid`, `password`, `dob`, `gender`, `address`, `bio`, `employee_id`, `joining_date`, `phone`, `role`, `status`, `created_at`) VALUES
(1, 'admin', '', 'admin', 'admin@hms.com', 'AdminHMS@123#$', '', '', '', '', '', '', '', '1', 1, '2023-05-05 17:52:39'),
(7, 'Jane', 'Smith', 'jane', 'jane@hms.com', 'Jane@123#$', '07/03/1990', 'Male', 'USA', 'MBBS, MD', '1', '04/05/2023', '9876543210', '2', 1, '2023-05-05 18:10:58'),
(8, 'Jyoti', 'Batra', 'jyoti', 'jyoti@xyz.com', 'Jyoti@123#$', '24/08/1988', 'Male', 'USA', 'MBBS, MD', '2', '03/05/2023', '9876543210', '2', 1, '2023-05-05 18:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patient`
--

CREATE TABLE `tbl_patient` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dob` varchar(250) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `patient_type` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_patient`
--

INSERT INTO `tbl_patient` (`id`, `first_name`, `last_name`, `email`, `dob`, `gender`, `patient_type`, `address`, `phone`, `status`, `created_at`) VALUES
(1, 'Paul', 'Smith', 'paul@abc.com', '24/04/1991', 'Male', 'InPatient', 'USA', '1234567890', 1, '2023-05-05 18:12:33'),
(2, 'Sachin', 'Kumar', 'sachin@gmail.com', '09/03/1988', 'Male', 'OutPatient', 'USA', '1234567890', 0, '2023-05-05 18:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `title`, `role`, `created_at`) VALUES
(1, 'Doctor', 2, '2023-05-05 13:13:56'),
(2, 'Nurse', 3, '2023-05-05 13:16:12'),
(3, 'Accountant', 4, '2023-05-05 13:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `id` int(11) NOT NULL,
  `doctor_name` varchar(250) NOT NULL,
  `available_days` text NOT NULL,
  `start_time` varchar(250) NOT NULL,
  `end_time` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`id`, `doctor_name`, `available_days`, `start_time`, `end_time`, `message`, `status`, `created_at`) VALUES
(1, 'Jane Smith', 'Monday, Wednesday, Friday', '11:00 AM', '5:00 PM', 'Monday, Wednesday and Friday from 11 am to 5 pm', 1, '2023-05-05 18:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_week`
--

CREATE TABLE `tbl_week` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_week`
--

INSERT INTO `tbl_week` (`id`, `name`, `created_at`) VALUES
(1, 'Sunday', '2023-05-05 11:16:11'),
(2, 'Monday', '2023-05-05 11:16:25'),
(3, 'Tuesday', '2023-05-05 11:16:37'),
(4, 'Wednesday', '2023-05-05 11:16:49'),
(5, 'Thursday', '2023-05-05 11:16:58'),
(6, 'Friday', '2023-05-05 11:17:06'),
(7, 'Saturday', '2023-05-05 11:17:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_patient`
--
ALTER TABLE `tbl_patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_week`
--
ALTER TABLE `tbl_week`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_patient`
--
ALTER TABLE `tbl_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_week`
--
ALTER TABLE `tbl_week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
