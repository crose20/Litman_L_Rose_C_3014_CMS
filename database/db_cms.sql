-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 21, 2019 at 03:11 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Kids'),
(4, 'Gear'),
(5, 'Electronics'),
(6, 'Shoes'),
(7, 'Jerseys');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_brand` varchar(75) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_color` varchar(20) NOT NULL,
  `product_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_brand`, `product_price`, `product_color`, `product_img`) VALUES
(1, 'Saxx Men\'s Vibe Boxer Modern Fit', 'Saxx', '33.99', 'Grey', 'Saxx_Mens_Vibe_Boxer_Modern_Fit.png'),
(2, 'Under Armour Heatgear Armour Compression Men\'s Long Sleeve Top', 'Under Armour', '39.99', 'Carbon Heather/Black', 'Under_Armour_Compression_Mens_Long_Sleeve.png'),
(3, 'adidas Men\'s Must Haves Badge of Sport French Terry Pants', 'adidas', '69.99', 'Black/White', 'Adidas_Mens_French_Terry_Pants.png'),
(4, 'Columbia Men\'s Lake 22™ Hooded Down Jacket', 'Columbia', '125.97', 'Mosstone', 'Columbia_Mens_Lake_Hooded_Down_Jacket.png'),
(5, 'Quiksilver Men\'s MW Logo T Shirt', 'Quiksilver', '27.99', 'Stone Wash', 'Quiksilver_Menss_MW_Logo_TShirt.png'),
(6, 'Helly Hansen Women\'s Moss Helox Rain Jacket', 'Helly Hansen', '129.99', 'Naito Flower', 'HellyHansen_Womens_Rain_Jacket.png'),
(7, 'Nike Sportswear Women\'s Heritage Windbreaker Jacket', 'Nike', '110.00', 'Black/White', 'Nike_Womens_Heritage_Windbreaker.png'),
(8, 'adidas Women\'s Essentials Linear Tights', 'adidas', '49.99', 'Grey/True Pink', 'Adidas_Womens_Essentials_Linear_Tights.png'),
(9, 'Columbia Women\'s Hidden Skies™ Jacket', 'Columbia', '159.99', 'Pond', 'Columbia_Womens_Hidden_Skies_Jacket.png'),
(10, 'Nike Sportswear Women\'s Heritage Pullover Hoodie', 'Nike', '80.00', 'Dark Heather/Black', 'Nike_Womens_Heritage_Hoodie.png'),
(11, 'Columbia Girls\' Rain-Zilla Jacket', 'Colombia', '64.99', 'Noncturnal/Orchid', 'Columbia_Girls_Rain_Zilla_Jacket.png'),
(12, 'Columbia Toddler Boys\' Rain-Zilla Jacket', 'Columbia', '54.99', 'Navy/Green', 'Columbia_Toddler_Boys_Rain_Zilla_Jacket.png'),
(13, 'Columbia Baby Snowtop II Bunting Snow Suit', 'Columbia', '27.97', 'Red Plaid', 'Columbia_Baby_Snow_Suit.png'),
(14, 'Columbia Boys\' Endless Explorer Fleece Lined Rain Jacket', 'Columbia', '58.97', 'Black/Grey', 'Columbia_Boys_Fleece_Lined_Rain_Jacket.png'),
(15, 'Columbia Boys\' Mountain Side Jacket', 'Columbia', '59.99', 'Black/Orange', 'Columbia_Boys_Mountain_Side_Jacket.png'),
(16, 'GT Vantara Comp Men\'s Gunmetal 700C Urban Bike', 'GT', '383.97', 'Gunmetal', 'GT__Gunmetal_700C_Urban_Bike.png'),
(17, 'Rossignol Experience 74 Xpress 2 Men\'s Skis 2018/19 & LOOK Xpress 10 B83 Ski Bindings Black/Red', 'Rossignol', '314.97', 'Black/Red', 'Rossignol_Experience_Xpress_Mens_Skis.png'),
(18, 'Hydro Flask 32 oz Wide Mouth Water Bottle - White', 'Hydro Flask', '47.99', 'White', 'Hydro_Flask_Bottle.png'),
(19, 'Easton S650 -9 Youth Baseball Bat', 'Easton', '109.99', 'Grey/Black/Orange', 'Easton_S650_Youth_Baseball_Bat.png'),
(20, 'Rossignol Speed 80 Men\'s Ski Boots 2018/19 ', 'Rossignol', '229.99', 'Black/Green', 'Rossignol_Speed_Mens_Ski_Boots.png'),
(21, 'Fitbit Inspire Fitness Tracker', 'Fitbit', '99.95', 'Sangria', 'Fitbit_Inspire_Fitness_Tracker.png'),
(22, 'Apple Watch Series 4 GPS, 40mm Gold Aluminum with Pink Sport Loop Band', 'Apple', '519.00', 'Gold Aluminum', 'Apple_Watch_Series_4_GPS.png'),
(23, 'GoPro HERO7 Black Edition Action Camera', 'GoPro', '529.99', 'Black', 'GoPro_HERO7_Black_Edition_Camera.png'),
(24, 'Beats Solo3 Wireless Headphones', 'Beats', '329.99', 'Gloss Black', 'Beats_Solo3_Wireless_Headphones.png'),
(25, 'Fitbit Flex 2 Bangle Accessory', 'Fitbit', '129.99', 'Rose Gold', 'Fitbit_Flex2_Bangle_Accessory.png'),
(26, 'Merrell Men\'s Chameleon Thermo 8 Waterproof Winter Boots', 'Merrell', '199.99', 'Black', 'Merrell_Mens_Thermo_Waterproof_Boots.png'),
(27, 'adidas Men\'s Ultra Boost Running Shoes', 'adidas', '186.97', 'black', 'Adidas_Mens_UltraBoost_Running_Shoes.png'),
(28, 'ASICS Women\'s GEL Glyde 2 Mid Running Shoes', 'ASICS', '159.99', 'Grey/Pink', 'ASICS_Womens_GEL_Glyde_Running_Shoes.png'),
(29, 'adidas Women\'s Ultra Boost X All-Terrain Running Shoes', 'adidas', '261.95', 'Black/White', 'Adidas_Womens_Ultra_Boost_X_Running_Shoes.png'),
(30, 'Nike Women\'s Free RN Flyknit 2018 Running Shoes', 'Nike', '129.99', 'White/Black/Platinum', 'Nike_Womens_Free_Flyknit_Running_Shoes.png'),
(31, 'Toronto Raptors Men\'s Nike Lin Swingman Icon Jersey', 'Nike', '130.00', 'Red', 'Toronto_Raptors_Mens_Nike_Icon_Jersey.png'),
(32, 'Toronto Raptors Men\'s Mitchell and Ness Hardwood Classics Carter Jersey', 'Mitchell and Ness Hardwood Classics', '139.99', 'Purple', 'Toronto_Raptors_Mens_Classics_Carter_Jersey.png'),
(33, 'Toronto Maple Leafs adidas Parley Authentic 2019 All-Star Black Game Jersey', 'adidas', '219.99', 'Black', 'Toronto_adidas_ All_Star_Black_Jersey.png'),
(34, 'Youth Toronto Maple Leafs Auston Matthews Jersey', 'adidas', '129.99', 'White', 'Toronto_Maple_Leafs_Matthews_Jersey.png'),
(35, 'NBA 2019 All-Star Toronto Raptors Leonard Swingman Jersey', 'Nike', '150.00', 'Black', 'NBA_All_Star_Toronto_Raptors_Jersey.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_category`
--

CREATE TABLE `tbl_products_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products_category`
--

INSERT INTO `tbl_products_category` (`id`, `product_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 31, 7),
(32, 32, 7),
(33, 33, 7),
(34, 34, 7),
(35, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(20) NOT NULL,
  `user_fname` varchar(30) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_pass` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_access` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_access`) VALUES
(1, 'admin', 'admin', 'adminpassword', 'hello@admin.com', 1),
(2, 'Carter', 'carterrose', 'password', 'carterrose@gmail.com', 2),
(3, 'Logan', 'loganlitman', 'wordpass', 'loganlitman@gmail.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_products_category`
--
ALTER TABLE `tbl_products_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_products_category`
--
ALTER TABLE `tbl_products_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
