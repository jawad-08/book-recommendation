-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 12:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recbooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ISBN` varchar(10) DEFAULT NULL,
  `bktitle` varchar(122) DEFAULT NULL,
  `bkauthor` varchar(28) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `publisher` varchar(39) DEFAULT NULL,
  `imgurls` varchar(60) DEFAULT NULL,
  `imgurlm` varchar(60) DEFAULT NULL,
  `imgurll` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ISBN`, `bktitle`, `bkauthor`, `year`, `publisher`, `imgurls`, `imgurlm`, `imgurll`) VALUES
('195153448', 'Classical Mythology', 'Mark P. O. Morford', 2002, 'Oxford University Press', 'http://images.amazon.com/images/P/0195153448.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0195153448.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0195153448.01.LZZZZZZZ.jpg'),
('2005018', 'Clara Callan', 'Richard Bruce Wright', 2001, 'HarperFlamingo Canada', 'http://images.amazon.com/images/P/0002005018.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0002005018.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0002005018.01.LZZZZZZZ.jpg'),
('60973129', 'Decision in Normandy', 'Carlo D\'Este', 1991, 'HarperPerennial', 'http://images.amazon.com/images/P/0060973129.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0060973129.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0060973129.01.LZZZZZZZ.jpg'),
('374157065', 'Flu: The Story of the Great Influenza Pandemic of 1918 and the Search for the Virus That Caused It', 'Gina Bari Kolata', 1999, 'Farrar Straus Giroux', 'http://images.amazon.com/images/P/0374157065.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0374157065.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0374157065.01.LZZZZZZZ.jpg'),
('393045218', 'The Mummies of Urumchi', 'E. J. W. Barber', 1999, 'W. W. Norton &amp; Company', 'http://images.amazon.com/images/P/0393045218.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0393045218.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0393045218.01.LZZZZZZZ.jpg'),
('399135782', 'The Kitchen God\'s Wife', 'Amy Tan', 1991, 'Putnam Pub Group', 'http://images.amazon.com/images/P/0399135782.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0399135782.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0399135782.01.LZZZZZZZ.jpg'),
('425176428', 'What If?: The World\'s Foremost Military Historians Imagine What Might Have Been', 'Robert Cowley', 2000, 'Berkley Publishing Group', 'http://images.amazon.com/images/P/0425176428.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0425176428.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0425176428.01.LZZZZZZZ.jpg'),
('671870432', 'PLEADING GUILTY', 'Scott Turow', 1993, 'Audioworks', 'http://images.amazon.com/images/P/0671870432.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0671870432.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0671870432.01.LZZZZZZZ.jpg'),
('679425608', 'Under the Black Flag: The Romance and the Reality of Life Among the Pirates', 'David Cordingly', 1996, 'Random House', 'http://images.amazon.com/images/P/0679425608.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0679425608.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0679425608.01.LZZZZZZZ.jpg'),
('074322678X', 'Where You\'ll Find Me: And Other Stories', 'Ann Beattie', 2002, 'Scribner', 'http://images.amazon.com/images/P/074322678X.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/074322678X.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/074322678X.01.LZZZZZZZ.jpg'),
('771074670', 'Nights Below Station Street', 'David Adams Richards', 1988, 'Emblem Editions', 'http://images.amazon.com/images/P/0771074670.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0771074670.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0771074670.01.LZZZZZZZ.jpg'),
('080652121X', 'Hitler\'s Secret Bankers: The Myth of Swiss Neutrality During the Holocaust', 'Adam Lebor', 2000, 'Citadel Press', 'http://images.amazon.com/images/P/080652121X.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/080652121X.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/080652121X.01.LZZZZZZZ.jpg'),
('887841740', 'The Middle Stories', 'Sheila Heti', 2004, 'House of Anansi Press', 'http://images.amazon.com/images/P/0887841740.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0887841740.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0887841740.01.LZZZZZZZ.jpg'),
('1552041778', 'Jane Doe', 'R. J. Kaiser', 1999, 'Mira Books', 'http://images.amazon.com/images/P/1552041778.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1552041778.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1552041778.01.LZZZZZZZ.jpg'),
('1558746218', 'A Second Chicken Soup for the Woman\'s Soul (Chicken Soup for the Soul Series)', 'Jack Canfield', 1998, 'Health Communications', 'http://images.amazon.com/images/P/1558746218.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1558746218.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1558746218.01.LZZZZZZZ.jpg'),
('1567407781', 'The Witchfinder (Amos Walker Mystery Series)', 'Loren D. Estleman', 1998, 'Brilliance Audio - Trade', 'http://images.amazon.com/images/P/1567407781.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1567407781.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1567407781.01.LZZZZZZZ.jpg'),
('1575663937', 'More Cunning Than Man: A Social History of Rats and Man', 'Robert Hendrickson', 1999, 'Kensington Publishing Corp.', 'http://images.amazon.com/images/P/1575663937.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1575663937.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1575663937.01.LZZZZZZZ.jpg'),
('1881320189', 'Goodbye to the Buttermilk Sky', 'Julia Oliver', 1994, 'River City Pub', 'http://images.amazon.com/images/P/1881320189.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1881320189.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1881320189.01.LZZZZZZZ.jpg'),
('440234743', 'The Testament', 'John Grisham', 1999, 'Dell', 'http://images.amazon.com/images/P/0440234743.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0440234743.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0440234743.01.LZZZZZZZ.jpg'),
('452264464', 'Beloved (Plume Contemporary Fiction)', 'Toni Morrison', 1994, 'Plume', 'http://images.amazon.com/images/P/0452264464.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0452264464.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0452264464.01.LZZZZZZZ.jpg'),
('609804618', 'Our Dumb Century: The Onion Presents 100 Years of Headlines from America\'s Finest News Source', 'The Onion', 1999, 'Three Rivers Press', 'http://images.amazon.com/images/P/0609804618.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0609804618.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0609804618.01.LZZZZZZZ.jpg'),
('1841721522', 'New Vegetarian: Bold and Beautiful Recipes for Every Occasion', 'Celia Brooks Brown', 2001, 'Ryland Peters &amp; Small Ltd', 'http://images.amazon.com/images/P/1841721522.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1841721522.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1841721522.01.LZZZZZZZ.jpg'),
('1879384493', 'If I\'d Known Then What I Know Now: Why Not Learn from the Mistakes of Others? : You Can\'t Afford to Make Them All Yourself', 'J. R. Parrish', 2003, 'Cypress House', 'http://images.amazon.com/images/P/1879384493.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1879384493.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1879384493.01.LZZZZZZZ.jpg'),
('61076031', 'Mary-Kate &amp; Ashley Switching Goals (Mary-Kate and Ashley Starring in)', 'Mary-Kate &amp; Ashley Olsen', 2000, 'HarperEntertainment', 'http://images.amazon.com/images/P/0061076031.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0061076031.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0061076031.01.LZZZZZZZ.jpg'),
('439095026', 'Tell Me This Isn\'t Happening', 'Robynn Clairday', 1999, 'Scholastic', 'http://images.amazon.com/images/P/0439095026.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0439095026.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0439095026.01.LZZZZZZZ.jpg'),
('689821166', 'Flood : Mississippi 1927', 'Kathleen Duey', 1998, 'Aladdin', 'http://images.amazon.com/images/P/0689821166.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0689821166.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0689821166.01.LZZZZZZZ.jpg'),
('971880107', 'Wild Animus', 'Rich Shapero', 2004, 'Too Far', 'http://images.amazon.com/images/P/0971880107.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0971880107.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0971880107.01.LZZZZZZZ.jpg'),
('345402871', 'Airframe', 'Michael Crichton', 1997, 'Ballantine Books', 'http://images.amazon.com/images/P/0345402871.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0345402871.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0345402871.01.LZZZZZZZ.jpg'),
('345417623', 'Timeline', 'MICHAEL CRICHTON', 2000, 'Ballantine Books', 'http://images.amazon.com/images/P/0345417623.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0345417623.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0345417623.01.LZZZZZZZ.jpg'),
('684823802', 'OUT OF THE SILENT PLANET', 'C.S. Lewis', 1996, 'Scribner', 'http://images.amazon.com/images/P/0684823802.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0684823802.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0684823802.01.LZZZZZZZ.jpg'),
('375759778', 'Prague : A Novel', 'ARTHUR PHILLIPS', 2003, 'Random House Trade Paperbacks', 'http://images.amazon.com/images/P/0375759778.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0375759778.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0375759778.01.LZZZZZZZ.jpg'),
('425163091', 'Chocolate Jesus', 'Stephan Jaramillo', 1998, 'Berkley Publishing Group', 'http://images.amazon.com/images/P/0425163091.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0425163091.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0425163091.01.LZZZZZZZ.jpg'),
('3404921038', 'Wie Barney es sieht.', 'Mordecai Richler', 2002, 'LÃ?Â¼bbe', 'http://images.amazon.com/images/P/3404921038.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/3404921038.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/3404921038.01.LZZZZZZZ.jpg'),
('3442353866', 'Der Fluch der Kaiserin. Ein Richter- Di- Roman.', 'Eleanor Cooney', 2001, 'Goldmann', 'http://images.amazon.com/images/P/3442353866.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/3442353866.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/3442353866.01.LZZZZZZZ.jpg'),
('3442410665', 'Sturmzeit. Roman.', 'Charlotte Link', 1991, 'Goldmann', 'http://images.amazon.com/images/P/3442410665.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/3442410665.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/3442410665.01.LZZZZZZZ.jpg'),
('3442446937', 'Tage der Unschuld.', 'Richard North Patterson', 2000, 'Goldmann', 'http://images.amazon.com/images/P/3442446937.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/3442446937.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/3442446937.01.LZZZZZZZ.jpg'),
('375406328', 'Lying Awake', 'Mark Salzman', 2000, 'Alfred A. Knopf', 'http://images.amazon.com/images/P/0375406328.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0375406328.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0375406328.01.LZZZZZZZ.jpg'),
('446310786', 'To Kill a Mockingbird', 'Harper Lee', 1988, 'Little Brown &amp; Company', 'http://images.amazon.com/images/P/0446310786.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0446310786.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0446310786.01.LZZZZZZZ.jpg'),
('449005615', 'Seabiscuit: An American Legend', 'LAURA HILLENBRAND', 2002, 'Ballantine Books', 'http://images.amazon.com/images/P/0449005615.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0449005615.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0449005615.01.LZZZZZZZ.jpg'),
('60168013', 'Pigs in Heaven', 'Barbara Kingsolver', 1993, 'Harpercollins', 'http://images.amazon.com/images/P/0060168013.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0060168013.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0060168013.01.LZZZZZZZ.jpg'),
('038078243X', 'Miss Zukas and the Raven\'s Dance', 'Jo Dereske', 1996, 'Avon', 'http://images.amazon.com/images/P/038078243X.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/038078243X.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/038078243X.01.LZZZZZZZ.jpg'),
('055321215X', 'Pride and Prejudice', 'Jane Austen', 1983, 'Bantam', 'http://images.amazon.com/images/P/055321215X.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/055321215X.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/055321215X.01.LZZZZZZZ.jpg'),
('067176537X', 'The Therapeutic Touch: How to Use Your Hands to Help or to Heal', 'Dolores Krieger', 1979, 'Fireside', 'http://images.amazon.com/images/P/067176537X.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/067176537X.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/067176537X.01.LZZZZZZZ.jpg'),
('61099686', 'Downtown', 'Anne Rivers Siddons', 1995, 'HarperTorch', 'http://images.amazon.com/images/P/0061099686.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0061099686.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0061099686.01.LZZZZZZZ.jpg'),
('553582909', 'Icebound', 'Dean R. Koontz', 2000, 'Bantam Books', 'http://images.amazon.com/images/P/0553582909.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0553582909.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0553582909.01.LZZZZZZZ.jpg'),
('671888587', 'I\'ll Be Seeing You', 'Mary Higgins Clark', 1994, 'Pocket', 'http://images.amazon.com/images/P/0671888587.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0671888587.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0671888587.01.LZZZZZZZ.jpg'),
('553582747', 'From the Corner of His Eye', 'Dean Koontz', 2001, 'Bantam Books', 'http://images.amazon.com/images/P/0553582747.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0553582747.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0553582747.01.LZZZZZZZ.jpg'),
('425182908', 'Isle of Dogs', 'Patricia Cornwell', 2002, 'Berkley Publishing Group', 'http://images.amazon.com/images/P/0425182908.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0425182908.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0425182908.01.LZZZZZZZ.jpg'),
('042518630X', 'Purity in Death', 'J.D. Robb', 2002, 'Berkley Publishing Group', 'http://images.amazon.com/images/P/042518630X.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/042518630X.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/042518630X.01.LZZZZZZZ.jpg'),
('440223571', 'This Year It Will Be Different: And Other Stories', 'Maeve Binchy', 1997, 'Dell', 'http://images.amazon.com/images/P/0440223571.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0440223571.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0440223571.01.LZZZZZZZ.jpg'),
('812523873', 'Proxies', 'Laura J. Mixon', 1999, 'Tor Books', 'http://images.amazon.com/images/P/0812523873.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0812523873.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0812523873.01.LZZZZZZZ.jpg'),
('842342702', 'Left Behind: A Novel of the Earth\'s Last Days (Left Behind #1)', 'Tim Lahaye', 2000, 'Tyndale House Publishers', 'http://images.amazon.com/images/P/0842342702.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0842342702.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0842342702.01.LZZZZZZZ.jpg'),
('440225701', 'The Street Lawyer', 'JOHN GRISHAM', 1999, 'Dell', 'http://images.amazon.com/images/P/0440225701.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0440225701.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0440225701.01.LZZZZZZZ.jpg'),
('60914068', 'Love, Medicine and Miracles', 'M.D. Bernie S. Siegel', 1988, 'HarperCollins Publishers', 'http://images.amazon.com/images/P/0060914068.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0060914068.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0060914068.01.LZZZZZZZ.jpg'),
('156047624', 'All the King\'s Men', 'Robert Penn Warren', 1982, 'Harvest Books', 'http://images.amazon.com/images/P/0156047624.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0156047624.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0156047624.01.LZZZZZZZ.jpg'),
('245542957', 'Pacific Northwest', 'Hans Johannes Hoefer', 1985, 'Chambers Harrap Publishers Ltd', 'http://images.amazon.com/images/P/0245542957.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0245542957.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0245542957.01.LZZZZZZZ.jpg'),
('380715899', 'A Soldier of the Great War', 'Mark Helprin', 1992, 'Avon Books', 'http://images.amazon.com/images/P/0380715899.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0380715899.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0380715899.01.LZZZZZZZ.jpg'),
('553280333', 'Getting Well Again', 'O. Carol Simonton Md', 1992, 'Bantam', 'http://images.amazon.com/images/P/0553280333.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0553280333.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0553280333.01.LZZZZZZZ.jpg'),
('961769947', 'Northwest Wines and Wineries', 'Chuck Hill', 1993, 'Speed Graphics', 'http://images.amazon.com/images/P/0961769947.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0961769947.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0961769947.01.LZZZZZZZ.jpg'),
('964778319', 'An Atmosphere of Eternity: Stories of India', 'David Iglehart', 2002, 'Sunflower Press', 'http://images.amazon.com/images/P/0964778319.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0964778319.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0964778319.01.LZZZZZZZ.jpg'),
('671623249', 'LONESOME DOVE', 'Larry McMurtry', 1986, 'Pocket', 'http://images.amazon.com/images/P/0671623249.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0671623249.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0671623249.01.LZZZZZZZ.jpg'),
('679810307', 'Shabanu: Daughter of the Wind (Border Trilogy)', 'SUZANNE FISHER STAPLES', 1991, 'Laurel Leaf', 'http://images.amazon.com/images/P/0679810307.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0679810307.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0679810307.01.LZZZZZZZ.jpg'),
('679865691', 'Haveli (Laurel Leaf Books)', 'SUZANNE FISHER STAPLES', 1995, 'Laurel Leaf', 'http://images.amazon.com/images/P/0679865691.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0679865691.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0679865691.01.LZZZZZZZ.jpg'),
('2070423204', 'Lieux dits', 'Michel Tournier', 2002, 'Gallimard', 'http://images.amazon.com/images/P/2070423204.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/2070423204.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/2070423204.01.LZZZZZZZ.jpg'),
('345260317', 'The Dragons of Eden: Speculations on the Evolution of Human Intelligence', 'Carl Sagan', 1978, 'Ballantine Books', 'http://images.amazon.com/images/P/0345260317.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0345260317.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0345260317.01.LZZZZZZZ.jpg'),
('394743741', 'The yawning heights', 'Aleksandr Zinoviev', 1980, 'Random House', 'http://images.amazon.com/images/P/0394743741.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0394743741.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0394743741.01.LZZZZZZZ.jpg'),
('042511774X', 'Breathing Lessons', 'Anne Tyler', 1994, 'Berkley Publishing Group', 'http://images.amazon.com/images/P/042511774X.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/042511774X.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/042511774X.01.LZZZZZZZ.jpg'),
('804106304', 'The Joy Luck Club', 'Amy Tan', 1994, 'Prentice Hall (K-12)', 'http://images.amazon.com/images/P/0804106304.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0804106304.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0804106304.01.LZZZZZZZ.jpg'),
('1853262404', 'Heart of Darkness (Wordsworth Collection)', 'Joseph Conrad', 1998, 'NTC/Contemporary Publishing Company', 'http://images.amazon.com/images/P/1853262404.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1853262404.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1853262404.01.LZZZZZZZ.jpg'),
('312970242', 'The Angel Is Near', 'Deepak Chopra', 2000, 'St. Martin\'s Press', 'http://images.amazon.com/images/P/0312970242.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0312970242.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0312970242.01.LZZZZZZZ.jpg'),
('1853260053', 'Tess of the D\'Urbervilles (Wordsworth Classics)', 'Thomas Hardy', 1997, 'NTC/Contemporary Publishing Company', 'http://images.amazon.com/images/P/1853260053.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1853260053.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1853260053.01.LZZZZZZZ.jpg'),
('1414035004', 'The Adventures of Drew and Ellie: The Magical Dress', 'Charles Noland', 2003, '1stBooks Library', 'http://images.amazon.com/images/P/1414035004.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1414035004.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1414035004.01.LZZZZZZZ.jpg'),
('60938412', 'The Accidental Virgin', 'Valerie Frankel', 2003, 'Avon Trade', 'http://images.amazon.com/images/P/0060938412.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0060938412.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0060938412.01.LZZZZZZZ.jpg'),
('140067477', 'The Tao of Pooh', 'Benjamin Hoff', 1983, 'Penguin Books', 'http://images.amazon.com/images/P/0140067477.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0140067477.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0140067477.01.LZZZZZZZ.jpg'),
('345465083', 'Seabiscuit', 'LAURA HILLENBRAND', 2003, 'Ballantine Books', 'http://images.amazon.com/images/P/0345465083.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0345465083.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0345465083.01.LZZZZZZZ.jpg'),
('451625889', 'The Prince', 'Niccolo Machiavelli', 1952, 'Signet Book', 'http://images.amazon.com/images/P/0451625889.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0451625889.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0451625889.01.LZZZZZZZ.jpg'),
('1558531025', 'Life\'s Little Instruction Book (Life\'s Little Instruction Books (Paperback))', 'H. Jackson Brown', 1991, 'Thomas Nelson', 'http://images.amazon.com/images/P/1558531025.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1558531025.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1558531025.01.LZZZZZZZ.jpg'),
('441783589', 'Starship Troopers', 'Robert A. Heinlein', 1987, 'Ace Books', 'http://images.amazon.com/images/P/0441783589.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0441783589.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0441783589.01.LZZZZZZZ.jpg'),
('394895894', 'The Ruby in the Smoke (Sally Lockhart Trilogy, Book 1)', 'PHILIP PULLMAN', 1988, 'Laurel Leaf', 'http://images.amazon.com/images/P/0394895894.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0394895894.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0394895894.01.LZZZZZZZ.jpg'),
('1569871213', 'Black Beauty (Illustrated Classics)', 'Anna Sewell', 1995, 'Landoll', 'http://images.amazon.com/images/P/1569871213.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/1569871213.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/1569871213.01.LZZZZZZZ.jpg'),
('375410538', 'Anil\'s Ghost', 'MICHAEL ONDAATJE', 2000, 'Knopf', 'http://images.amazon.com/images/P/0375410538.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0375410538.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0375410538.01.LZZZZZZZ.jpg'),
('966986105', 'Prescription for Terror', 'Sandra Levy Ceren', 1999, 'Andrew Scott Publishers', 'http://images.amazon.com/images/P/0966986105.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0966986105.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0966986105.01.LZZZZZZZ.jpg'),
('087113375X', 'Modern Manners: An Etiquette Book for Rude People', 'P.J. O\'Rourke', 1990, 'Atlantic Monthly Press', 'http://images.amazon.com/images/P/087113375X.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/087113375X.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/087113375X.01.LZZZZZZZ.jpg'),
('340767936', 'Turning Thirty', 'Mike Gayle', 2000, 'Hodder &amp; Stoughton General Division', 'http://images.amazon.com/images/P/0340767936.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0340767936.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0340767936.01.LZZZZZZZ.jpg'),
('743403843', 'Decipher', 'Stel Pavlou', 2002, 'Simon &amp; Schuster (Trade Division)', 'http://images.amazon.com/images/P/0743403843.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0743403843.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0743403843.01.LZZZZZZZ.jpg'),
('60930365', 'My First Cousin Once Removed: Money, Madness, and the Family of Robert Lowell', 'Sarah Payne Stuart', 1999, 'Perennial', 'http://images.amazon.com/images/P/0060930365.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0060930365.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0060930365.01.LZZZZZZZ.jpg'),
('60177586', 'Standing Firm: A Vice-Presidential Memoir', 'Dan Quayle', 1994, 'Harpercollins', 'http://images.amazon.com/images/P/0060177586.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0060177586.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0060177586.01.LZZZZZZZ.jpg'),
('71416331', 'Team Bush : Leadership Lessons from the Bush White House', 'Donald F. Kettl', 2003, 'McGraw-Hill', 'http://images.amazon.com/images/P/0071416331.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0071416331.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0071416331.01.LZZZZZZZ.jpg'),
('375509038', 'The Right Man : The Surprise Presidency of George W. Bush', 'DAVID FRUM', 2003, 'Random House', 'http://images.amazon.com/images/P/0375509038.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0375509038.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0375509038.01.LZZZZZZZ.jpg'),
('553062042', 'Daybreakers Louis Lamour Collection', 'Louis Lamour', 1981, 'Bantam Doubleday Dell', 'http://images.amazon.com/images/P/0553062042.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0553062042.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0553062042.01.LZZZZZZZ.jpg'),
('316769487', 'The Catcher in the Rye', 'J.D. Salinger', 1991, 'Little, Brown', 'http://images.amazon.com/images/P/0316769487.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0316769487.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0316769487.01.LZZZZZZZ.jpg'),
('8445071408', 'El Senor De Los Anillos: LA Comunidad Del Anillo (Lord of the Rings (Spanish))', 'J. R. R. Tolkien', 2001, 'Minotauro', 'http://images.amazon.com/images/P/8445071408.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/8445071408.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/8445071408.01.LZZZZZZZ.jpg'),
('8445071769', 'El Senor De Los Anillos: Las DOS Torres (Lord of the Rings (Paperback))', 'J. R. R. Tolkien', 2001, 'Minotauro', 'http://images.amazon.com/images/P/8445071769.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/8445071769.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/8445071769.01.LZZZZZZZ.jpg'),
('8445071777', 'El Senor De Los Anillos: El Retorno Del Rey (Tolkien, J. R. R. Lord of the Rings. 3.)', 'J. R. R. Tolkien', 2001, 'Distribooks', 'http://images.amazon.com/images/P/8445071777.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/8445071777.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/8445071777.01.LZZZZZZZ.jpg'),
('679429220', 'Midnight in the Garden of Good and Evil: A Savannah Story', 'John Berendt', 1994, 'Random House', 'http://images.amazon.com/images/P/0679429220.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0679429220.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0679429220.01.LZZZZZZZ.jpg'),
('671867156', 'Pretend You Don\'t See Her', 'Mary Higgins Clark', 1998, 'Pocket', 'http://images.amazon.com/images/P/0671867156.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0671867156.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0671867156.01.LZZZZZZZ.jpg'),
('312252617', 'Fast Women', 'Jennifer Crusie', 2001, 'St. Martin\'s Press', 'http://images.amazon.com/images/P/0312252617.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0312252617.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0312252617.01.LZZZZZZZ.jpg'),
('312261594', 'Female Intelligence', 'Jane Heller', 2001, 'St. Martin\'s Press', 'http://images.amazon.com/images/P/0312261594.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0312261594.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0312261594.01.LZZZZZZZ.jpg'),
('316748641', 'Pasquale\'s Nose: Idle Days in an Italian Town', 'Michael Rips', 2002, 'Back Bay Books', 'http://images.amazon.com/images/P/0316748641.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0316748641.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0316748641.01.LZZZZZZZ.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(30) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  `srl` bigint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `pwd`, `srl`) VALUES
('Jd', 'jd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `userid` int(6) NOT NULL,
  `ISBN` varchar(10) DEFAULT NULL,
  `bkratings` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`userid`, `ISBN`, `bkratings`) VALUES
(1, '195153448', 5),
(2, '2005018', 5),
(3, '60973129', 5),
(4, '374157065', 5),
(5, '393045218', 5),
(6, '399135782', 5),
(7, '425176428', 5),
(8, '671870432', 5),
(9, '679425608', 5),
(10, '074322678X', 5),
(11, '771074670', 5),
(12, '080652121X', 5),
(13, '887841740', 5),
(14, '1552041778', 5),
(15, '1558746218', 5),
(16, '1567407781', 5),
(17, '1575663937', 5),
(18, '1881320189', 5),
(19, '440234743', 5),
(20, '452264464', 5),
(21, '609804618', 5),
(22, '1841721522', 5),
(23, '1879384493', 5),
(24, '61076031', 5),
(25, '439095026', 5),
(26, '689821166', 5),
(27, '971880107', 5),
(28, '345402871', 5),
(29, '345417623', 5),
(30, '684823802', 5),
(31, '375759778', 5),
(32, '425163091', 5),
(33, '3404921038', 5),
(34, '3442353866', 5),
(35, '3442410665', 5),
(36, '3442446937', 5),
(37, '375406328', 5),
(38, '446310786', 5),
(39, '449005615', 5),
(40, '60168013', 5),
(41, '038078243X', 4),
(42, '055321215X', 4),
(43, '067176537X', 4),
(44, '61099686', 4),
(45, '553582909', 4),
(46, '671888587', 4),
(47, '553582747', 4),
(48, '425182908', 4),
(49, '042518630X', 4),
(50, '440223571', 4),
(51, '812523873', 4),
(52, '842342702', 4),
(53, '440225701', 4),
(54, '60914068', 4),
(55, '156047624', 4),
(56, '245542957', 4),
(57, '380715899', 4),
(58, '553280333', 4),
(59, '961769947', 4),
(60, '964778319', 4),
(61, '671623249', 4),
(62, '679810307', 4),
(63, '679865691', 4),
(64, '2070423204', 4),
(65, '345260317', 4),
(66, '394743741', 4),
(67, '042511774X', 4),
(68, '804106304', 4),
(69, '1853262404', 4),
(70, '312970242', 4),
(71, '1853260053', 4),
(72, '1414035004', 4),
(73, '60938412', 4),
(74, '140067477', 4),
(75, '345465083', 4),
(76, '451625889', 4),
(77, '1558531025', 4),
(78, '441783589', 4),
(79, '394895894', 4),
(80, '1569871213', 4),
(81, '375410538', 3),
(82, '966986105', 3),
(83, '087113375X', 3),
(84, '340767936', 3),
(85, '743403843', 3),
(86, '60930365', 3),
(87, '60177586', 3),
(88, '71416331', 3),
(89, '375509038', 3),
(90, '553062042', 3),
(91, '316769487', 3),
(92, '8445071408', 3),
(93, '8445071769', 3),
(94, '8445071777', 3),
(95, '679429220', 3),
(96, '671867156', 3),
(97, '312252617', 3),
(98, '312261594', 3),
(99, '316748641', 3),
(100, '195153448', 3),
(101, '2005018', 3),
(102, '60973129', 3),
(103, '374157065', 3),
(104, '393045218', 3),
(105, '399135782', 3),
(106, '425176428', 3),
(107, '671870432', 3),
(108, '679425608', 3),
(109, '074322678X', 3),
(110, '771074670', 3),
(111, '080652121X', 3),
(112, '887841740', 3),
(113, '1552041778', 3),
(114, '1558746218', 3),
(115, '1567407781', 3),
(116, '1575663937', 3),
(117, '1881320189', 3),
(118, '440234743', 3),
(119, '452264464', 3),
(120, '609804618', 3),
(121, '1841721522', 2),
(122, '1879384493', 2),
(123, '61076031', 2),
(124, '439095026', 2),
(125, '689821166', 2),
(126, '971880107', 2),
(127, '345402871', 2),
(128, '345417623', 2),
(129, '684823802', 2),
(130, '375759778', 2),
(131, '425163091', 2),
(132, '3404921038', 2),
(133, '3442353866', 2),
(134, '3442410665', 2),
(135, '3442446937', 2),
(136, '375406328', 2),
(137, '446310786', 2),
(138, '449005615', 2),
(139, '60168013', 2),
(140, '038078243X', 2),
(141, '055321215X', 2),
(142, '067176537X', 2),
(143, '61099686', 2),
(144, '553582909', 2),
(145, '671888587', 2),
(146, '553582747', 2),
(147, '425182908', 2),
(148, '042518630X', 2),
(149, '440223571', 2),
(150, '812523873', 2),
(151, '842342702', 2),
(152, '440225701', 2),
(153, '60914068', 2),
(154, '156047624', 2),
(155, '245542957', 2),
(156, '380715899', 2),
(157, '553280333', 2),
(158, '961769947', 2),
(159, '964778319', 2),
(160, '671623249', 2),
(161, '679810307', 1),
(162, '679865691', 1),
(163, '2070423204', 1),
(164, '345260317', 1),
(165, '394743741', 1),
(166, '042511774X', 1),
(167, '804106304', 1),
(168, '1853262404', 1),
(169, '312970242', 1),
(170, '1853260053', 1),
(171, '1414035004', 1),
(172, '60938412', 1),
(173, '140067477', 1),
(174, '345465083', 1),
(175, '451625889', 1),
(176, '1558531025', 1),
(177, '441783589', 1),
(178, '394895894', 1),
(179, '1569871213', 1),
(180, '375410538', 1),
(181, '966986105', 1),
(182, '087113375X', 1),
(183, '340767936', 1),
(184, '743403843', 1),
(185, '60930365', 1),
(186, '60177586', 1),
(187, '71416331', 1),
(188, '375509038', 1),
(189, '553062042', 1),
(190, '316769487', 1),
(191, '8445071408', 1),
(192, '8445071769', 1),
(193, '8445071777', 1),
(194, '679429220', 1),
(195, '671867156', 1),
(196, '312252617', 1),
(197, '312261594', 1),
(198, '316748641', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ratings2`
--

CREATE TABLE `ratings2` (
  `User-ID` int(6) DEFAULT NULL,
  `ISBN` varchar(10) DEFAULT NULL,
  `Book-Rating` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ratings2`
--

INSERT INTO `ratings2` (`User-ID`, `ISBN`, `Book-Rating`) VALUES
(276725, '034545104X', 0),
(276726, '155061224', 5),
(276727, '446520802', 0),
(276729, '052165615X', 3),
(276729, '521795028', 6),
(276733, '2080674722', 0),
(276736, '3257224281', 8),
(276737, '600570967', 6),
(276744, '038550120X', 7),
(276745, '342310538', 10),
(276746, '425115801', 0),
(276746, '449006522', 0),
(276746, '553561618', 0),
(276746, '055356451X', 0),
(276746, '786013990', 0),
(276746, '786014512', 0),
(276747, '60517794', 9),
(276747, '451192001', 0),
(276747, '609801279', 0),
(276747, '671537458', 9),
(276747, '679776818', 8),
(276747, '943066433', 7),
(276747, '1570231028', 0),
(276747, '1885408226', 7),
(276748, '747558167', 6),
(276748, '3442437407', 0),
(276751, '033390804X', 0),
(276751, '3596218098', 8),
(276754, '684867621', 8),
(276755, '451166892', 5),
(276760, '8440682697', 10),
(276762, '034544003X', 0),
(276762, '380000059', 0),
(276762, '380711524', 5),
(276762, '451167317', 0),
(276762, '451454952', 0),
(276762, '843920262', 0),
(276762, '3404122879', 0),
(276762, '3404182928', 0),
(276762, '3404611306', 0),
(276762, '342662429', 0),
(276762, '3426690179', 0),
(276762, '3442424216', 0),
(276762, '3442425573', 0),
(276762, '3453092007', 8),
(276762, '3453157745', 0),
(276762, '3453176944', 0),
(276762, '3453185137', 0),
(276762, '3453185323', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User-ID` varchar(2) DEFAULT NULL,
  `Location` varchar(39) DEFAULT NULL,
  `Age` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User-ID`, `Location`, `Age`) VALUES
('Us', 'Location', 'Ag'),
('1', 'nyc, new york, usa', ''),
('2', 'stockton, california, usa', '18'),
('3', 'moscow, yukon territory, russia', ''),
('4', 'porto, v.n.gaia, portugal', '17'),
('5', 'farnborough, hants, united kingdom', ''),
('6', 'santa monica, california, usa', '61'),
('7', 'washington, dc, usa', ''),
('8', 'timmins, ontario, canada', ''),
('9', 'germantown, tennessee, usa', ''),
('10', 'albacete, wisconsin, spain', '26'),
('11', 'melbourne, victoria, australia', '14'),
('12', 'fort bragg, california, usa', ''),
('13', 'barcelona, barcelona, spain', '26'),
('14', 'mediapolis, iowa, usa', ''),
('15', 'calgary, alberta, canada', ''),
('16', 'albuquerque, new mexico, usa', ''),
('17', 'chesapeake, virginia, usa', ''),
('18', 'rio de janeiro, rio de janeiro, brazil', '25'),
('19', 'weston, ,', '14'),
('20', 'langhorne, pennsylvania, usa', '19'),
('21', 'ferrol,spain, alabama, spain', '46'),
('22', 'erfurt, thueringen, germany', ''),
('23', 'philadelphia, pennsylvania, usa', ''),
('24', 'cologne, nrw, germany', '19'),
('25', 'oakland, california, usa', '55'),
('26', 'bellevue, washington, usa', ''),
('27', 'chicago, illinois, usa', '32'),
('28', 'freiburg, baden-wuerttemberg, germany', '24'),
('29', 'cuernavaca, alabama, mexico', '19'),
('30', 'anchorage, alaska, usa', '24'),
('31', 'shanghai, n/a, china', '20'),
('32', 'portland, oregon, usa', ''),
('33', 'costa mesa, california, usa', '34'),
('34', 'london, england, united kingdom', ''),
('35', 'grafton, wisconsin, usa', '17'),
('36', 'montreal, quebec, canada', '24'),
('37', 'san sebastian, n/a, spain', '23'),
('38', 'viterbo, lazio, italy', '34'),
('39', 'cary, north carolina, usa', ''),
('40', 'tonawanda, new york, usa', '32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`srl`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `srl` bigint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `userid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
