-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simbasokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(9, 'women\'s sleeveless skirt', 'Women\'s crewneck crop tops and wrap draped midi skirt set with sleeveless style,sexy side slit two piece tank dress set,elegant frontal ruched design,comfortable calf length,a soft fitting cover ups.', 3600, 'sleeveless,crop top and side split skirt.jpg'),
(10, 'Drawstring Cropped Hoodie And Straight Leg Pants Set', 'Crop top design make this summer set stylish, helps show your elegant and makes you look more charming', 2700, 'Drawstring Cropped Hoodie And Straight Leg Pants Set.jpg'),
(11, 'Striped Top with Wide Pants ', 'Classic striped top paired with wide neutral pants for a relaxed yet fashionable everyday outfit', 2700, 'Striped Top with Wide Pants .png'),
(12, 'pink ribbon dress', 'Pink Ribbon Bow Detail Tie Strap Neck Romantic Summer Dress,Valentine Outfits', 3200, 'pink ribbon dress.jpg'),
(13, 'Jean Outfit', 'Effortlessly stylish 60s-inspired looks meet casual daytime vibes. Discover easy, trendy outfits perfect for everyday chic and a relaxed fashion mood', 3600, 'denim look .jpg'),
(14, 'baggy jeans', ' a comfortable,, relaxed-fit denim style featuring extra room through the hip and leg for a wide, flowing silhouett', 2600, 'baggy jeans.png'),
(15, 'cargo jeans', ' Elevate style with trendy denim cargo pants. Explore versatile looks for every occasion.', 3000, 'cargo jeans.jpg'),
(16, 'casual wear', ' Elevate style with trendy casual wear comfortable everyday clothing', 1300, 'casual outfit.jpg'),
(17, 'coffee brown suit', 'Explore men\'s brown suits, from dark to light shades. Sophisticated and versatile, perfect for any occasion.', 2500, 'coffee brownn suit.jpg'),
(18, 'denim hoodie and trouser', 'Elevate men\'s style with a trendy denim hoodie jacket and trouser outfit', 4500, 'denim hoodie & trouser.jpg'),
(19, 'wide leg pants', 'Women\'s wide-leg trousers are characterized by their wide cut and leg that gradually widens from the waist to the hem.', 1000, 'wide leg pants.jpg'),
(20, 'white shirt with denim', 'Embrace a timeless vibe with a Denim Outfit, crisp White Shirt - an effortlessly stylish blend for the modern urbanite', 900, 'white shirt with denim.jpg'),
(21, 'sweatshirt&hoodie', 'these hoodies provide the perfect balance of durability and softness, ensuring you stay cosy and fashionable all day', 2300, 'sweatshirt&hoodie.jpg'),
(22, 'streetwear', 'youth-driven fashion style merging casual comfort with urban culture', 2000, 'streetwear.png'),
(23, 'pinafore dress', ' a sleeveless, collarless garment designed for layering over shirts, blouses, or sweaters', 600, 'pinafore dress.jpg'),
(24, 'minimalist set', ' cool and effortless clothes to make you comfortable all day', 2300, 'modern minimalist set.png'),
(25, 'light blue wide leg pants', ' trendy wardrobe staple characterized by a generous, flowing cut that widens from the waist or thigh to the hem', 1600, 'light blue wide leg pants.jpg'),
(26, 'jumpsuit', ' jumpsuits are available in a great selection of vibrant colourways and trendy designs', 300, 'jumpsuit.jpg'),
(27, 'sweatshirt', '   designed for comfort, warmth, and athletic wear', 750, 'girls swetshirt.jpg'),
(28, 'polyvore shirt', '   polyvore shirt designed to make you feel comfortable all day', 500, 'shirt.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(28, 'Karina', '12345', 'ka@gmail.com', '789745638'),
(29, 'Felix', 'fee2546', 'felix23@gmail.com', '789745638');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;