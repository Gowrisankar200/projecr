
--
-- Database: `vegetablestore.`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` bigint(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `bname`, `email`, `mobile`, `address`, `username`, `password`, `status`) VALUES
(1, 'Muhammed', 'muhammed@gmail.com', 9874569888, 'Pollachi', 'muhammed', '123', 'approved'),
(2, 'Kumar', 'kumar12@gmail.com', 9659876565, 'Coimbatore', 'kumar', '123', 'approved'),
(3, 'Priya', 'priya89@gmail.com', 9638527410, 'Erode', 'priya', '123', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pname` varchar(25) NOT NULL,
  `pqw` varchar(25) NOT NULL,
  `rate` int(25) NOT NULL,
  `company` varchar(25) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `address` varchar(25) NOT NULL,
  `path` varchar(25) NOT NULL,
  `qty` int(25) NOT NULL,
  `total` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `susername` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `pname`, `pqw`, `rate`, `company`, `mobile`, `address`, `path`, `qty`, `total`, `username`, `susername`) VALUES
(8, 'Onion', 'In stock', 50, 'Raja Traders', 9876543211, 'Erode', 'product/4.jpg', 25, 1250, 'kumar', 'raja'),
(9, 'Beetroot', 'In stock', 45, 'Raja Traders', 9876543211, 'Erode', 'product/3.jpg', 10, 450, 'kumar', 'raja'),
(10, 'Carot', 'In stock', 40, 'Raja Traders', 9876543211, 'Erode', 'product/2.jpg', 20, 800, 'kumar', 'raja');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sno` int(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `pqw` varchar(25) NOT NULL,
  `rate` varchar(25) NOT NULL,
  `company` varchar(25) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `path` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sno`, `pname`, `pqw`, `rate`, `company`, `mobile`, `email`, `address`, `username`, `path`) VALUES
(7, 1, 'Tomato', 'In stock', '38', 'Raja Traders', 9876543211, 'raja@gmail.com', 'Erode', 'raja', 'product/1.jpg'),
(8, 2, 'Carot', 'In stock', '40', 'Raja Traders', 9876543211, 'raja@gmail.com', 'Erode', 'raja', 'product/2.jpg'),
(9, 3, 'Beetroot', 'In stock', '45', 'Raja Traders', 9876543211, 'raja@gmail.com', 'Erode', 'raja', 'product/3.jpg'),
(10, 4, 'Onion', 'In stock', '50', 'Raja Traders', 9876543211, 'raja@gmail.com', 'Erode', 'raja', 'product/4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `company` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `sname`, `email`, `mobile`, `address`, `company`, `username`, `password`, `status`) VALUES
(1, 'Raja', 'raja@gmail.com', 9876543211, 'Erode', 'Raja Traders', 'raja', '123', 'approved'),
(2, 'Bala', 'bala@gmail.com', 8956237896, 'Coimbatore', 'SS Exports', 'ssexports', '123', 'approved'),
(3, 'Manikkam', 'manikbhai@gmail.com', 9658745558, 'Pollachi', 'Manik Exports', 'manik', '145', 'pending');
