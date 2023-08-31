-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 17, 2022 at 09:50 AM
-- Server version: 10.4.19-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `admin_name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `q_id` int(11) DEFAULT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `q_id`, `option1`, `option2`, `option3`, `option4`) VALUES
(1, 30, 'K', 'C', 'Ca', 'Cl'),
(2, 2, 'Java', 'C++', 'C', 'Python'),
(3, 1, 'General Language', 'Programming Language', 'Subject', 'Snake'),
(4, 3, 'Zim Den\r\n', 'Wick van Rossum\r\n', 'Niene Stom\r\n', 'Guido van Rossum'),
(5, 4, '1989', '1969', '1972', '1990'),
(6, 5, '.python', '.p', '.py', 'None of these\r\n'),
(7, 6, '/', '#', '//', '!'),
(8, 7, 'Java', 'C', 'C++', 'English'),
(9, 8, 'Indentation', 'Brackets', 'Key', 'None of these'),
(10, 9, 'printf()', 'val()', 'return()', 'print()'),
(11, 10, 'Readable Language', 'Writable Language', 'Script-able Language', 'Bug-able Language'),
(12, 11, '4', '5', '2', '8'),
(13, 12, '999', '891', '-999', '-891'),
(14, 13, '10000', '1100', '2000', '400'),
(15, 14, '9', '12', '3', '13'),
(16, 15, '7', '5', '8', '9'),
(17, 16, '0', 'Undefined', '5', 'None above these.'),
(18, 17, '50', '40', '-50', '-20'),
(20, 19, '171', '9', '90', '81'),
(21, 20, '0', '-10', '11', '1'),
(22, 38, '-89', '97', '100', '-96'),
(23, 39, '1', '110', '90', '200'),
(24, 40, 'P', 'K', 'Po', 'C'),
(26, 42, 'NaCl', 'SoCh', 'SC', 'na-cl'),
(27, 43, 'Su', 'S', 'Sp', 'Na'),
(28, 37, '90', '90.1', '89.01', '90.01'),
(29, 45, 'H', 'Li', 'He', 'L'),
(30, 46, 'Aldehyde', 'Ketone', 'Acetic acid', 'Alcohol'),
(31, 47, 'S4H12', 'OCH16', 'C14', 'C6H12O6'),
(32, 48, '6', '7', '8', '9');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `category`) VALUES
(1, 'What is Python?', 'Programming Language', 'python'),
(2, 'Which programming language is mostly used for automation and machine learning?', 'Python', 'python'),
(3, 'Who developed the Python language?', 'Guido van Rossum', 'python'),
(4, 'In which year was the Python language developed?', '1989', 'python'),
(5, 'Which one of the following is the correct extension of the Python file?', '.py', 'python'),
(6, 'Which character is used in Python to make a single line comment?', '#', 'python'),
(7, 'In which language is Python written?', 'C', 'python'),
(8, 'What do we use to define a block of code in Python language?\r\n', 'Indentation', 'python'),
(9, 'Which of the following functions is use to print in python language?\r\n', 'print()', 'python'),
(10, 'Python is said to be easily', 'Readable Language', 'python'),
(11, '2 + 2 = ', '4', 'maths'),
(12, '9 * -99', '-891', 'maths'),
(13, '(5000 / 5) + 100 =', '1100', 'maths'),
(14, '123 is divisible by ', '3', 'maths'),
(15, 'How many numbers are there in 1 Crore?', '8', 'maths'),
(16, '5/0 = ', 'Undefined', 'maths'),
(17, '200 / (-4) =', '-50', 'maths'),
(19, '9 + 9 * (0 + 9) = ', '90', 'maths'),
(20, '(0 * 10 + 11) - 10 = ', '1', 'maths'),
(30, 'What is the formula of Calcium', 'Ca', 'science'),
(37, '90 + 0.1', '90.1', 'maths'),
(38, '1+1+1-99+0', '-96', 'Maths'),
(39, '100 - 10', '90', 'Maths'),
(40, 'What is the formula of Potassium', 'K', 'Science'),
(42, 'What is the molecular formula of Sodium Chloride?', 'NaCl', 'Science'),
(43, 'What is the formula of Sulphur?', 'S', 'Science'),
(45, 'What is the formula of Helium?', 'He', 'Science'),
(46, 'Which of the following compound is mainly used in hand sanitizer?', 'Alcohol', 'Science'),
(47, 'What is the molecular formula of Glucose?', 'C6H12O6', 'Science'),
(48, ' Number of primitive data types in Java are?', '8', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `topic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic`) VALUES
(8, 'Python'),
(9, 'Maths'),
(11, 'Science'),
(25, 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `email`, `password`) VALUES
(1, 'Demo', 'demo@gmail.com', '12345678'),
(5, 'Soumyadeep Sengupta', 'soumyadeeps358@gmail.com', '12345'),
(6, 'Array', 'arpitasardar911@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`q_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
