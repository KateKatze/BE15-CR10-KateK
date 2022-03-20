-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 02:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr10_katek_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `be15_cr10_katek_biglibrary` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `be15_cr10_katek_biglibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` int(11) NOT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `ISBN` int(13) NOT NULL,
  `short_description` varchar(300) NOT NULL,
  `book_type` varchar(13) NOT NULL,
  `author_first_name` varchar(50) NOT NULL,
  `author_last_name` varchar(50) NOT NULL,
  `publisher_name` varchar(50) NOT NULL,
  `publisher_address` varchar(50) NOT NULL,
  `publish_date` date NOT NULL,
  `book_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `picture`, `title`, `ISBN`, `short_description`, `book_type`, `author_first_name`, `author_last_name`, `publisher_name`, `publisher_address`, `publish_date`, `book_status`) VALUES
(1, '62371706d1748.jpg', 'Anna Karenina', 2147483647, 'Anna Karenina tells of the doomed love affair between the sensuous and rebellious Anna and the dashing officer, Count Vronsky. Tragedy unfolds as Anna rejects her passionless marriage and must endure the hypocrisies of society. Set against a vast and richly textured canvas of nineteenth-century Russ', 'Book', 'Leo', 'Tolstoy', 'BookPublisher', 'Street 1, City', '2022-03-10', 'available'),
(2, '623713cd46f3d.jpg', 'Madame Bovary', 2147483646, 'For daring to peer into the heart of an adulteress and enumerate its contents with profound dispassion, the author of Madame Bovary was tried for ', 'Book', 'Gustave', 'Flaubert', 'Bravo', 'Bigstreet 5, Bigcity', '2022-01-19', 'not available'),
(3, '623715e26277f.jpg', 'War and Peace', 2147483645, 'Epic in scale, War and Peace delineates in graphic detail events leading up to Napoleons invasion of Russia, and the impact of the Napoleonic era on Tsarist society, as seen through the eyes of five Russian aristocratic families.', 'DVD', 'Leo', 'Tolstoy', 'HalloPub', 'Smallstreet 4, Smallcity', '2021-03-19', 'available'),
(4, '62371713d8373.jpg', 'The Great Gatsby', 214748364, 'The novel chronicles an era that Fitzgerald himself dubbed the Jazz Age. Following the shock and chaos of World War I, American society enjoyed unprecedented levels of prosperity during the roaring 1920s as the economy soared. At the same time, Prohibition, the ban on the sale and manufacture of', 'CD', 'F. Scott', 'Fitzgerald', 'CDPub', 'Cdgasse 1, Cdcity', '2020-03-20', 'not available'),
(5, '623717202db34.jpg', 'Lolita', 2147483643, 'The book is internationally famous for its innovative style and infamous for its controversial subject: the protagonist and unreliable narrator, middle aged Humbert Humbert, becomes obsessed and sexually involved with a twelve-year-old girl named Dolores Haze.', 'Book', 'Vladimir', 'Nabokov', 'RusPub', 'Russtreet 8, Ruscity', '2019-08-01', 'available'),
(6, '6237172c03a80.jpg', 'Middlemarch', 2147483642, 'Mary Anne Evans (22 November 1819 – 22 December 1880; alternatively Mary Ann or Marian), known by her pen name George Eliot, was an English novelist, poet, journalist, translator, and one of the leading writers of the Victorian era. She wrote seven novels, including Adam Bede (1859), The Mill on the', 'DVD', 'George', 'Eliot', 'DVDPub', 'Dvdstreet 3, Dvdcity', '2018-09-29', 'available'),
(7, '6237173c67ebe.jpg', 'The Adventures of Huckleberry ', 2147483641, 'Revered by all of the towns children and dreaded by all of its mothers, Huckleberry Finn is indisputably the most appealing child-hero in American literature. Unlike the tall-tale, idyllic world of Tom Sawyer, The Adventures of Huckleberry Finn is firmly grounded in early reality. From the abusive ', 'Book', 'Mark', 'Twain', 'KidsPub', 'Kidstreet 10, Kidcity', '2021-01-31', 'available'),
(8, '623717456c5e8.jpg', 'The Stories of Anton Chekhov', 2147483637, 'Anton Pavlovich Chekhov was a Russian short-story writer, playwright and physician, considered to be one of the greatest short-story writers in the history of world literature. His career as a dramatist produced four classics and his best short stories are held in high esteem by writers and critics.', 'DVD', 'Anton', 'Chekhov', 'RusBooks', 'Moscowstreet 1, Moscow', '2016-05-03', 'available'),
(9, '6237175b43c9e.jpg', 'In Search of Lost Time', 2147483633, 'Swanns Way, the first part of A la recherche de temps perdu, Marcel Prousts seven-part cycle, was published in 1913. In it, Proust introduces the themes that run through the entire work. The narrator recalls his childhood, aided by the famous madeleine; and describes M. Swanns passion for Odette.', 'Book', 'Marcel', 'Proust', 'KidsPub', 'Kidstreet 10, Kidcity', '2012-06-06', 'available'),
(10, '623717abc6ff8.jpg', 'Hamlet', 2147483622, 'The Tragedy of Hamlet, Prince of Denmark, or more simply Hamlet, is a tragedy by William Shakespeare, believed to have been written between 1599 and 1601. The play, set in Denmark, recounts how Prince Hamlet exacts revenge on his uncle Claudius, who has murdered Hamlets father, the King, and then t', 'CD', 'William', 'Shakespeare', 'BookPublisher', 'Street 1, City', '2018-11-10', 'not available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
