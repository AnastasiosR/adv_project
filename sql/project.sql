-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2019 at 11:07 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Asus'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 2, '::1', 3, 1),
(2, 1, '::1', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Mobile Phones'),
(2, 'Cameras'),
(3, 'Smart Watch'),
(4, 'Headphones');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'Asus ZenFone 6 (256GB)', 599, 'Flipping tradition on its head, the ZenFone 6 ZS630KL Dual-SIM 256GB Smartphone from ASUS incorporates a motorized flip camera, giving you a huge 6.4\" all-screen NanoEdge display. ', '1assusZF6.jpg', 'Asus'),
(2, 1, 6, 'Google Pixel 3A', 399, 'The Pixel 3a 64GB Smartphone from Google sports premium mobile photography tools without the premium price point.', '2googlePixel.jpg', 'mobile google'),
(3, 1, 1, 'Asus Zenfone 6(64GB)', 499, 'Flipping tradition on its head, the ZenFone 6 ZS630KL Dual-SIM 64GB Smartphone from ASUS incorporates a motorized flip camera, giving you a huge 6.4\" all-screen NanoEdge display. ', '3asusZF664.jpg', 'Asus'),
(4, 1, 2, 'Samsung Galaxy A20', 160, 'The Samsung Galaxy A20 SM-A205G Dual-SIM 32GB Smartphone features a large 6.4\" Infinity-V sAMOLED display but is still engineered to be sleek and comfortable. ', '4samsungGA20.jpg', 'samsumg'),
(5, 1, 6, 'Moto G7', 249, 'The G7 64GB Smartphone from Motorola lets you get creative with your mobile photos and videos. The rear 12MP camera and 5MP depth sensor combine with the G7\'s camera software to offer you a bunch of unique modes and capabilities.', '5MOTOg7.jpg', 'MOTO motorola'),
(6, 1, 4, 'Sony Experia XA1', 199, 'Capture more of what you see with the Xperia XA1 Plus G3423 32GB Smartphone from Sony. This feature-rich smartphone offers a single rear and front camera that both sport wide-angle lenses. ', '6sonyxperia.jpg', 'SONY experia xperia'),
(7, 2, 4, 'Sony Alpha a7R', 399, 'Capture more of what you see with the Xperia XA1 Plus G3423 32GB Smartphone from Sony. This feature-rich smartphone offers a single rear and front camera that both sport wide-angle lenses. ', '7sonyAlpha.jpg', 'camera sony alpha'),
(8, 2, 6, 'Canon EOS 90D', 645, 'Situated as a versatile camera with capable photo and video traits, the Canon EOS 90D is a sleek DSLR also characterized by its high-resolution 32.5MP APS-C CMOS sensor', '8canonEos.jpg', 'camera canon'),
(9, 2, 4, 'Sony Cyber-shot DSC', 599, 'Mixing speed, reach, and portability, the Sony Cyber-shot DSC-RX100 VII is a pocket-sized camera packing a wealth of stills and video versatility. ', '9sonyCyber.jpg', 'sony cyber camera'),
(10, 2, 6, 'Nikon D75000', 1000, 'Designed as a true all-rounder, the Nikon D7500 is a DX-format DSLR offering a versatile feature-set to appeal to photographers and videographers alike. ', '10nikonD7.jpg', 'NIKON'),
(11, 2, 6, 'Nikon Z6 Mirrorless', 789, 'Get your full-frame mirrorless start with the Nikon Z 6 Mirrorless Digital Camera with FTZ Mount Adapter and Bag Kit from B&H, which pairs the camera body with the FTZ Mount Adapter for using F-mount lenses, a memory card, and a camera bag.', '11nikonZ6.jpg', 'nikon camera'),
(12, 2, 6, 'Nikon D850 DLSR', 455, 'Comprising the essentials needed to begin shooting, the Nikon D850 DSLR Camera with Accessories Kit from B&H bundles the FX-format camera body with two memory cards and a protective camera bag.', '12nikonD850.jpg', 'nikon camera'),
(13, 3, 3, 'Apple Watch Series 3', 299, 'Stay connected in style with the 42mm GPS and cellular-equipped Apple Watch Series 3, which comes with a Space Black stainless steel chassis and a Space Black stainless steel Milanese Loop band.', '13appleWatch3.jpg', 'smart watch apple'),
(14, 3, 3, 'Apple Watch Series 4', 399, 'Stay connected, stay informed, and remain healthy with the Apple Watch Series 4. This Apple Watch features a 44mm curved watch face with an LTPO OLED Retina display and digital crown.', '14appleWatchS3.jpg', 'smart watch apple'),
(15, 3, 6, 'Germin fenix 5', 425, 'Up your game with the Garmin fenix 5 in Slate Gray with a black band. This fitness watch was designed with multi-sport athletes in mind and records data useful to runners, cyclists, swimmers and more.', '15garminFenix.jpg', 'garmin fenix'),
(16, 3, 3, 'Apple Watch Nike+', 320, 'Stay connected, stay informed, and remain healthy with the Apple Watch Series 4. This Apple Watch features a 44mm curved watch face with an LTPO OLED Retina display and digital crown. ', '16appleNike.jpg', 'apple Nike'),
(17, 3, 6, 'Fitbit Versa Fitness', 249, 'With a battery life lasting 4+ days, the Fitbit Versa does it all, from fitness tracking to playing music, monitoring your heart rate, and more. ', '17Fitbit.jpg', 'fitbit wear smart watch'),
(18, 3, 6, 'Garmin fenix 5X', 399, 'Up your game with the Garmin fenix 5X Sapphire Edition in Slate Gray with a black band and a sapphire scratch-resistant lens. This fitness watch was designed with multi-sport athletes in mind and records data useful to runners, cyclists and more, ', '18garminFenix5x.jpg', 'garming smart watch'),
(19, 4, 4, 'Sony WF-1000XM3', 199, 'Engineered to provide you with complete audio freedom without distraction, WF-1000XM3 True Wireless Noise-Canceling In-Ear Earphones from Sonyincorporates sophisticated noise-canceling technologies to isolate you with only your favorite music', '19sonyWf1000.jpg', 'SONY  HEADPHONE'),
(20, 4, 4, 'Sony WH-1000XM3', 800, 'No matter where you go, you can be alone with your music by using the WH-1000XM3 Wireless Noise-Canceling Over-Ear Headphones from Sony. ', '20sony_wh1000.jpg', 'SONY HEADPHONE'),
(21, 4, 6, 'Bose QuietComfort 35', 350, 'Styled in a sleek black color, the Bose QuietComfort 35 Series II are wireless noise-canceling headphones.  ', '21boseQc.jpg', 'bose headphones'),
(22, 4, 6, 'Bose headphones 700', 299, 'Enjoy seamless integration into your mobile lifestyle with the triple black Bose Headphones 700 noise-canceling Bluetooth headphones. ', '22bose700.jpg', 'bose headphones'),
(23, 4, 4, 'Sony WH - 1000XM3', 299, 'No matter where you go, you can be alone with your music by using the WH-1000XM3 Wireless Noise-Canceling Over-Ear Headphones from Sony. ', '23sony_wh1000.jpg', 'Sony WH HEADHPONE'),
(24, 4, 5, 'LG HBS-830 TONE', 299, 'Experience clear conversations and music playback with the HBS-830 TONE Ultra Alpha Wireless In-Ear Headphones from LG.', '24lgHbs830.jpg', 'LG HEADHPONE');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'Anastasios', 'Rigatos', 'tasoscat@gmail.com', 'eb0887b08530c928df8eb7a26cb78e6b', '0401230565', 'asdasdasdasd', 'asdasdasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
