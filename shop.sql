-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2017 at 04:28 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `dateAdd` date NOT NULL,
  `modified` date NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`) VALUES
(1, 'nhật trường', '1234567', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_unit` int(11) DEFAULT NULL COMMENT 'đơn vị tiền tệ: USD,VNĐ,..',
  `type` tinyint(4) DEFAULT NULL COMMENT 'loại sản phẩm:cong_nghe, thuc_an,...',
  `is_sale` tinyint(4) DEFAULT NULL,
  `is_offer` tinyint(4) DEFAULT NULL COMMENT '1 là có, 0 là không; để xác định sản phẩm có offer hay không. ',
  `id_coupon` int(11) DEFAULT NULL COMMENT 'id của sản phẩm hoặc coupon tặng kèm.',
  `images` text COMMENT 'path của img sản phẩm',
  `main_image` text COMMENT 'path img chính của sản phẩm',
  `description` text COMMENT 'mô tả sản phẩm',
  `processing_time` text COMMENT 'thời gian xử lí khi mua hàng: ví dụ chậm nhất 3 ngày',
  `addtional_info` text COMMENT 'thông tin mô tả thêm về sản phẩm',
  `view` int(11) DEFAULT NULL COMMENT 'số lượt xem sản phẩm',
  `created` date DEFAULT NULL COMMENT 'ngày khỏi tạo',
  `modified` date DEFAULT NULL COMMENT 'ngày chỉnh sửa thông tin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `price_unit`, `type`, `is_sale`, `is_offer`, `id_coupon`, `images`, `main_image`, `description`, `processing_time`, `addtional_info`, `view`, `created`, `modified`) VALUES
(1, 'Hung oc cho', 100, 1, 2, 1, 1, 1, '1 (185).jpg , 1 (186).jpg , 1 (187).jpg', '1 (185).jpg', 'test', '7 day', 'test', 0, '2017-04-24', '2017-05-03'),
(2, 'test2', 1000, 1, 1, 1, 1, 0, '1 (208).jpg', '1 (213).jpg', 'test2', '8', 'test2', 0, '2017-04-24', '2017-04-27'),
(3, 'truong oc c', 1000, 2, 1, 1, 1, 11, '1 (185).jpg , 1 (186).jpg , 1 (187).jpg', '1 (185).jpg', 'test 99', '7 ngay', 'aaaaaa', 0, '2017-05-17', '2017-05-17'),
(4, 'Hung oc cho', 250, 1, 2, 1, 1, 1, '1 (185).jpg , 1 (186).jpg , 1 (187).jpg', '1 (185).jpg', 'test', '7 day', 'test', 0, '2017-04-24', '2017-05-03'),
(5, 'Hung oc cho', 250, 1, 2, 0, 1, 1, '1 (185).jpg , 1 (186).jpg , 1 (187).jpg', '1 (185).jpg', 'test', '7 day', 'test', 0, '2017-04-24', '2017-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

CREATE TABLE `product_rating` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  `comment_title` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product_rating`
--

INSERT INTO `product_rating` (`id`, `id_product`, `id_user`, `rating`, `comment_title`, `comment_text`, `created`, `modified`) VALUES
(1, 1, 1, 0, 'test 9999', 'test 9', '2017-04-12', '2017-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `product_whishlist`
--

CREATE TABLE `product_whishlist` (
  `id` int(11) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `is_whishlist` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_whishlist`
--

INSERT INTO `product_whishlist` (`id`, `created`, `modified`, `id_product`, `id_user`, `is_whishlist`) VALUES
(1, '2017-05-02', '2017-05-13', 1, 1, 1),
(2, '2017-05-13', '2017-05-13', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `percent_sale` tinyint(4) NOT NULL,
  `form_date` date NOT NULL,
  `to_date` date NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `idproduct`, `percent_sale`, `form_date`, `to_date`, `created`, `modified`) VALUES
(1, 1, 1, '2017-05-03', '2017-05-17', '2017-05-02', '2017-05-03'),
(2, 2, 1, '2017-05-03', '2017-05-17', '2017-05-02', '2017-05-03'),
(3, 3, 100, '2017-05-18', '2017-05-27', '2017-05-17', '2017-05-17'),
(4, 4, 20, '2017-05-18', '2017-05-27', '2017-05-17', '2017-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` text NOT NULL,
  `address` varchar(250) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phone`, `address`, `created`, `modified`) VALUES
(1, '12345', '234567', '234567', '234567', '123456', '2017-04-18', '2017-04-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_whishlist`
--
ALTER TABLE `product_whishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
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
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product_whishlist`
--
ALTER TABLE `product_whishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
