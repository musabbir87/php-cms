-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2017 at 07:57 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'CSS'),
(3, 'JAVA'),
(4, 'PHP'),
(5, 'Bootstrap'),
(25, 'Jommla'),
(26, 'Magento'),
(27, 'OOP'),
(28, 'PDO');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(5, 8, 'Joti', 'joti@gmail.com', 'jdl;ksajfjsl;a', 'approved', '2017-02-14'),
(6, 8, 'Joti', 'joti@gmail.com', 'jdl;ksajfjsl;a', 'approved', '2017-02-14'),
(7, 8, 'Joti', 'joti@gmail.com', 'jdl;ksajfjsl;a', 'approved', '2017-02-14'),
(8, 8, 'Joti', 'joti@gmail.com', 'jdl;ksajfjsl;a', 'approved', '2017-02-14'),
(29, 8, 'Joti', 'joti@gmail.com', 'dfsgsdfgsdfg', 'unapproved', '2017-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(8, 2, 'Bootstrap Tutorial set', 'Joti rahman', '2017-02-16', '1477585745_nokias-lumia-920.png', '         very very Good tutorial.....                                        ', 'html, css , java, Jquery', '48', 'published'),
(9, 2, 'Html', 'Joti', '2017-02-16', '1477585745-lumia720wrap.jpg', '        asdfsdafsadfsadfsadf        ', 'html, css', '6', 'published'),
(10, 2, 'PHP', 'Joti', '2017-02-16', 'download (6).jpg', '                dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf               dsafsdafsdafsadfsdaf                ', 'html, css', '7', 'published'),
(11, 2, 'Exampale CSS', 'Joti', '2017-02-16', 'images (2).jpg', '                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed luctus justo. Nullam at eros in sem suscipit ultricies feugiat sit amet sem. Etiam ultricies dictum neque, quis interdum purus convallis a. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis lectus ante, feugiat finibus fermentum vitae, fermentum nec felis. Fusce urna quam, malesuada nec faucibus nec, sodales sed felis. Mauris in lacus eu velit cursus rhoncus. Nulla dignissim, nisi sed posuere tincidunt, justo urna consequat metus, eget mattis augue massa sed ante.                ', 'html, css , java, Jquery', '4', 'published'),
(12, 2, 'OOP tutorial', 'Dante', '2017-02-16', 'images.jpg', '        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed luctus justo. Nullam at eros in sem suscipit ultricies feugiat sit amet sem. Etiam ultricies dictum neque, quis interdum purus convallis a. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis lectus ante, feugiat finibus fermentum vitae, fermentum nec felis. Fusce urna quam, malesuada nec faucibus nec, sodales sed felis. Mauris in lacus eu velit cursus rhoncus. Nulla dignissim, nisi sed posuere tincidunt, justo urna consequat metus, eget mattis augue massa sed ante.        ', 'PHP, OOP', '4', 'published'),
(13, 2, '', '', '2017-02-16', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'joti', '123', 'Dastan', 'Dante', 'joti@gmail.com', '', 'admin', ''),
(2, 'musa', '12345', 'Musabbir', 'Rahman', 'musabbir@gmail.com', '', 'admin', ''),
(3, 'oishi', '123456', 'Oishi', 'Rahman', 'oishi@gmail.com', '', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
