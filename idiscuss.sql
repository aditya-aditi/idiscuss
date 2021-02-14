-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 10:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is an interpreted, high-level and general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.', '2020-12-01 09:52:37'),
(2, 'Javascript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification.', '2020-12-01 09:53:38'),
(3, 'Django', 'This is a python framework.', '2020-12-02 13:17:09'),
(4, 'Flask', 'This is a another python framework.', '2020-12-02 13:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(11) NOT NULL,
  `comment_by` int(11) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'Visit this website for learning python :-   https://codewithharry.com ', 1, 5, '2020-12-12 16:31:36'),
(2, 'https://codewithharry.com/videos/', 1, 6, '2020-12-14 10:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `sno.` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `concern` text NOT NULL,
  `dp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`sno.`, `name`, `email`, `concern`, `dp`) VALUES
(1, 'Aditya Raj', 'rdhgfghfc@hvjhykggygyuk', 'ghtytdtyytftytd', '2020-12-12 15:34:45'),
(2, 'Aditya Raj', 'adityarajsah2008@gmail.com', 'Very good forum website!!!!!!!!!!!!!!!!!!!!!\r\n', '2020-12-14 09:47:58'),
(3, 'x', 'x@x.com', 'kdkdkdkd', '2020-12-14 10:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(11) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(11) NOT NULL,
  `thread_user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'Material', 'Can I get a material to learn python.', 1, 5, '2020-12-12 16:26:58'),
(2, '&gt;', '&gt;', 2, 5, '2020-12-12 16:37:50'),
(3, '&lt;script&gt;alert(\"Hello\")&lt;/script&gt;', 'Please explain what is these?', 2, 5, '2020-12-12 16:42:10'),
(4, 'Unable to install pyaudio', 'Unable to install pyaudio', 1, 6, '2020-12-14 10:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `username`, `password`, `timestamp`) VALUES
(1, 'aditya.rakesh', '$2y$10$zVFz4MkocDSsQ0tC/PwyyOm3eVisvQShZAYNazGj89btar2QfUxQy', '2020-12-08 12:08:31'),
(2, 'aditi.rakesh', '$2y$10$T7gnsu4CxGNOB.79DR.2SutuCIQUOxO4shgQzJ0/DAn0YDiMrLZES', '2020-12-09 11:35:24'),
(3, '', '$2y$10$OtiZElVC4nTHBrh559kJoevfk10o53M53yZbD9I4vN.FohOUziX2K', '2020-12-10 13:19:58'),
(4, 'aditi.anand', '$2y$10$Yj8TrP/xelJbbtdOb7XqVOsUBI2co2vSBlOu7yIRBN8ZO8lQ8zOwW', '2020-12-11 13:31:45'),
(5, 'pavani.rakesh', '$2y$10$aaUnlDkc5Bm.t97wrt5SXOrwOXIs.ZzX0EyuXVOLEryU2O8UyOJ92', '2020-12-12 15:19:45'),
(6, 'admin', '$2y$10$oxNjJGM4bBAOGNam8EG0p.AuB.Kf2AYSy6/DLld0zunBbr5eYEZEO', '2020-12-14 10:41:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sno.`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sno.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
