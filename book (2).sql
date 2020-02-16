-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2019 at 05:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asg4`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(50) NOT NULL,
  `book_author_last` varchar(50) NOT NULL,
  `book_author_first` varchar(50) NOT NULL,
  `book_edition` int(11) DEFAULT NULL,
  `book_isbn` varchar(20) DEFAULT NULL,
  `book_condition` int(11) NOT NULL,
  `book_description` varchar(200) DEFAULT NULL,
  `book_binding` int(11) NOT NULL,
  `book_date_published` date NOT NULL,
  `book_comments` text,
  `book_price` decimal(10,2) NOT NULL,
  `book_sellable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `book_author_last`, `book_author_first`, `book_edition`, `book_isbn`, `book_condition`, `book_description`, `book_binding`, `book_date_published`, `book_comments`, `book_price`, `book_sellable`) VALUES
(1, 'A Catskill Eagle', 'Parker', 'Robert', 1, '764526413', 2, 'There she engages a \r\nrelationship with a wealthy heir, Russell Costigan. The story begins with her \r\nletter.', 2, '1985-05-01', 'Best Seller', '24.99', 1),
(3, 'Cabbages and Kings', 'Henry', 'O', 3, '456787574', 1, 'It takes its title from the poem \"The Walrus and the Carpenter\", featured in Lewis Carroll\'s Through the Looking Glass. ', 2, '1904-12-17', 'It was inspired by the characters and situations that O. Henry encountered in Honduras in the late 1890s.', '29.99', 0),
(4, 'A Darkling Plain', 'Reeve', ' Philip ', 1, '12121245555', 2, 'Theo Ngoni has returned to Zagwa and rejoined his family.', 1, '2006-01-01', 'The title is derived from Matthew Arnold\'s poem Dover Beach. ', '12.99', 1),
(5, 'Acidity', 'Paracha', 'Nadeem', 1, NULL, 1, 'A controversial cult favorite among many young Pakistanis and Indians.', 1, '2003-00-00', 'Written exclusively for the website Chowk.com ', '7.99', 1),
(6, 'Blood Music', 'Bear', 'Greg', 4, '0-87795-720-7', 1, 'In the novel, renegade biotechnologist Vergil Ulam creates simple biological computers based on his own lymphocytes. ', 2, '1985-01-04', 'The book\'s structure is titled \"inter-phase\", \"prophase\", \"metaphase\", \"anaphase\", \"telophase\", and \"interphase\". This mirrors the major phases of cell cycle: interphase and mitosis.', '12.99', 0),
(7, 'The Hydrogen Sonata', 'Banks', 'Iain', 1, '978-0356501505', 2, 'The Gzilt, a civilisation that almost joined the Culture 10,000 years before the novel, have decided to Sublime, leaving behind “the Real” to take up residence in higher dimensions. ', 4, '2012-10-04', 'Banks\' last science fiction novel, as he died of gall bladder cancer in June 2013.[4]', '19.99', 1),
(8, 'The Midwich Cuckoos', 'Wyndham', 'John', 5, NULL, 3, 'It tells the tale of an English village in which the women become pregnant by brood parasitic aliens.', 3, '1957-05-08', 'Famously branded a \"cosy catastrophe\" by Brian Aldiss.', '5.99', 1),
(9, 'The Drawing of the Dark', 'Powers', 'Tim', 2, '0-345-43081-6', 3, 'The year is 1529, and Brian Duffy, a world-weary Irish mercenary soldier, is hired in Venice by the mysterious Aurelianus to go to Vienna and work as a bouncer at the Zimmerman Inn, former monastery a', 2, '1979-01-01', NULL, '4.99', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
