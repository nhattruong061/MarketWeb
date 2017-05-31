-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 31, 2017 lúc 05:01 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cast`
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
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`) VALUES
(1, 'nhật trường', '1234567', '1234567890');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_user`
--

CREATE TABLE `order_user` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `number_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(11) CHARACTER SET latin1 NOT NULL,
  `state` int(11) NOT NULL COMMENT '0: chưa duyệt;1: đang giao;2: đã giao',
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `id_roduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_user`
--

INSERT INTO `order_user` (`id`, `id_product`, `number_product`, `id_user`, `address`, `phone`, `state`, `created`, `modified`, `id_roduct`) VALUES
(1, 1, 2, 1, '123 Tran Hung Dao', '0123456789', 0, '2017-05-01', '2017-05-01', NULL),
(2, 2, 1, 1, '123 Tran Hung Dao', '0123456789', 0, '2017-05-01', '2017-05-01', NULL),
(3, 3, 4, 2, '123 Tran Hung Dao', '0123456789', 0, '2017-05-01', '2017-05-01', NULL),
(6, 3, 1, -1, 'abc', '1234', 0, '2017-05-30', '2017-05-30', NULL),
(7, 2, 1, -1, 'abc', '1234', 0, '2017-05-30', '2017-05-30', NULL),
(8, 3, 2, -1, '123 abc', '123456789', 0, '2017-05-31', '2017-05-31', NULL),
(9, 2, 1, -1, '123 abc', '123456789', 0, '2017-05-31', '2017-05-31', NULL),
(10, 2, 1, 1, 'qbc', '0123456789', 0, '2017-05-31', '2017-05-31', NULL),
(11, 3, 2, 1, 'qbc', '0123456789', 0, '2017-05-31', '2017-05-31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
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
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `price_unit`, `type`, `is_sale`, `is_offer`, `id_coupon`, `images`, `main_image`, `description`, `processing_time`, `addtional_info`, `view`, `created`, `modified`) VALUES
(1, 'Iphone 9', 100, 1, 2, 1, 1, 1, '1 (185).jpg , 1 (186).jpg , 1 (187).jpg', '1 (185).jpg', 'test samsung', '7 day', 'test', 0, '2017-04-24', '2017-05-03'),
(2, 'Samsung ', 1000, 1, 1, 1, 1, 0, '1 (208).jpg', '1 (213).jpg', 'test2 samsung,', '8', 'test2', 0, '2017-04-24', '2017-04-27'),
(3, 'Iphone 10', 1000, 2, 1, 1, 1, 11, '1 (185).jpg , 1 (186).jpg , 1 (187).jpg', '1 (185).jpg', 'test 99', '7 ngay', 'aaaaaa', 0, '2017-05-17', '2017-05-17'),
(4, 'Samsung Galaxy S8+', 250, 1, 2, 1, 1, 1, '1 (185).jpg , 1 (186).jpg , 1 (187).jpg', '1 (185).jpg', 'test', '7 day', 'test', 0, '2017-04-24', '2017-05-03'),
(5, 'Oppo F3', 250, 1, 2, 0, 1, 1, '1 (185).jpg , 1 (186).jpg , 1 (187).jpg', '1 (185).jpg', 'test', '7 day', 'test', 0, '2017-04-24', '2017-05-03'),
(6, 'Nokia', 399, 2, 3, 1, 1, 2, 's1.png , s2.jpg , s2.png', 's1.png', 'Nokia phone ', '4 date', '', 0, '2017-05-31', '2017-05-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_rating`
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
-- Đang đổ dữ liệu cho bảng `product_rating`
--

INSERT INTO `product_rating` (`id`, `id_product`, `id_user`, `rating`, `comment_title`, `comment_text`, `created`, `modified`) VALUES
(1, 1, 1, 0, 'test 9999', 'test 9', '2017-04-12', '2017-05-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_whishlist`
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
-- Đang đổ dữ liệu cho bảng `product_whishlist`
--

INSERT INTO `product_whishlist` (`id`, `created`, `modified`, `id_product`, `id_user`, `is_whishlist`) VALUES
(1, '2017-05-02', '2017-05-31', 1, 1, 0),
(2, '2017-05-13', '2017-05-13', 1, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
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
-- Đang đổ dữ liệu cho bảng `sale`
--

INSERT INTO `sale` (`id`, `idproduct`, `percent_sale`, `form_date`, `to_date`, `created`, `modified`) VALUES
(1, 1, 1, '2017-05-03', '2017-05-17', '2017-05-02', '2017-05-03'),
(2, 2, 1, '2017-05-03', '2017-05-17', '2017-05-02', '2017-05-03'),
(3, 3, 100, '2017-05-18', '2017-05-27', '2017-05-17', '2017-05-17'),
(4, 4, 20, '2017-05-18', '2017-05-27', '2017-05-17', '2017-05-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `modified` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `address`, `created`, `modified`, `name`, `phone`) VALUES
(1, 'admin@gmail.com', '$2a$10$jW/2KeGL5CR9xhn4Ccntout/dM6pTS89q3F0jNdCpdxlLxGkyi2Hm', '123 Trần Hưng Đạo', '', NULL, 'Nguyễn Văn A', '0123456789'),
(2, 'member@gmail.com', '$2a$10$1/qEXBXv6WThbCy7qx3Fw.rnvmM7R3YNPTbb86drfkkzWcfLtr/O6', '456 An Dương Vương', NULL, NULL, 'Nguyễn Văn B', '0123456788');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_user`
--
ALTER TABLE `order_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_whishlist`
--
ALTER TABLE `product_whishlist`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cast`
--
ALTER TABLE `cast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `order_user`
--
ALTER TABLE `order_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `product_whishlist`
--
ALTER TABLE `product_whishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
