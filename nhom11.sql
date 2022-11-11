-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 04, 2022 lúc 01:32 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom11`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Oppo'),
(3, 'Samsung'),
(4, 'Nokia'),
(5, 'Sony'),
(6, 'MSI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'iPad Pro M1 11 inch 5G', 1, 1, 41990000, '', 'Màn hình 11 inch sử dụng tấm nền Liquid Retina cho khung hình iPad hiển thị rực rỡ, sống động, chân thực, độ phân giải đạt 1668 x 2388 Pixels hiển thị chi tiết sắc nét, kết hợp cạnh viền mỏng cho không gian trải nghiệm màn hình thật đã mắt.\r\n\r\n', 1, '2022-09-22 03:36:20'),
(2, 'Đồng hồ thông minh Apple Watch Ultra LTE', 5, 1, 23990000, '', 'Nếu bạn cảm thấy “nhàm chán\" với kiểu thiết kế của những chiếc đồng hồ thông minh Apple Watch trước đây thì Apple Watch Ultra LTE sẽ giúp bạn xóa tan định kiến này. Đồng hồ mang diện mạo hoàn toàn mới, nổi bật nhất là kích thước khá to 49mm và có phần hơi hầm hố nên sẽ rất phù hợp với những bạn có cổ tay lớn, đặc biệt là phái mạnh.\r\n\r\nSiêu phẩm nhà Apple mang đến ba lựa chọn về màu sắc trẻ trung, kết hợp cùng dây đeo silicone đã làm tôn lên vẻ hiện đại nhưng vẫn không kém phần thời thượng. Tuy vậy, đồng hồ vẫn tạo cảm giác thoải mái khi đeo trên tay nhờ vào dây đeo được làm dạng lượn sóng, giúp thoáng khí và hạn chế bám mồ hôi đặc biệt là khi vận động mạnh.', 1, '2022-08-16 08:36:20'),
(3, 'Điện thoại OPPO Find X5 Pro 5G', 2, 2, 28990000, '', 'Điều làm mình mê hoặc ngay từ cái nhìn đầu tiên là mặt lưng hết sức bóng bẩy, trên phiên bản màu đen thì mình hoàn toàn có thể sử dụng máy với công dụng tương tự như một chiếc gương soi tiện ích.\r\nKhác với phần lớn điện thoại khác trên thị trường, Find X5 Pro 5G được chế tạo phần mặt lưng từ vật liệu gốm cao cấp, trải qua 14 quy trình với hơn 269 phút đánh bóng để đạt được độ nhẵn mịn, tạo cho mình một cảm giác cầm nắm chắc chắn hơn bởi độ bám dính cao.', 1, '2020-10-14 03:43:49'),
(4, 'Laptop Apple MacBook Pro 16 M1 Max 2021', 1, 3, 85990000, '', 'Con chip Apple M1 Max mang một sức mạnh siêu cấp với cấu trúc 10 nhân và tốc độ băng trong lên đến 400 GB/s memory bandwidth cho hiệu suất của Apple nhanh hơn khoảng 70% so với thế hệ tiền nhiệm Apple M1, từ đó mang lại cho bạn một tốc độ xử lý đáng kinh ngạc giúp giải quyết tốt từ các công việc văn phòng cơ bản đến phức tạp trên các phần mềm Office 365 cũng như đồ họa chuyên nghiệp trên Figma, Photoshop, AI, Pr, AutoCAD,...\r\n\r\nTích hợp với bộ CPU hiện đại trên là card đồ họa GPU 32 nhân cho hiệu suất nhanh hơn gấp 4 lần so với M1, năng cao khả năng xử lý đồ họa, thoả mãn niềm đam mê sáng tạo cho bạn, thiết kế 2D, 3D hiệu quả, render video tuyệt vời, đồng thời tiết kiệm điện năng đáng kể, thấp hơn 70% so với chip 8 nhân của PC/laptop.\r\n\r\nBộ nhớ RAM 32 GB đa nhiệm cực mượt mà, tăng tốc độ truy xuất dữ liệu, giảm thời gian chờ, mọi thao tác được phản hồi tức thời, bạn có thể dễ dàng mở nhiều phần mềm thiết kế để chỉnh sửa nhiều tệp hình ảnh phức tạp vừa render.', 1, '2020-10-16 03:45:53'),
(5, 'Laptop MSI Creator Z16P B12UGST', 6, 3, 73990000, '', '• Laptop MSI Creator mang trong mình cấu hình mạnh mẽ vượt trội của CPU Intel Core i7 12700H tiết kiệm điện năng hơn thế hệ cũ, kết hợp card màn hình rời NVIDIA RTX 3070Ti Max-Q 8 GB giúp xử lý trôi chảy các tác vụ trong thời gian ngắn, sẵn sàng chinh phục mọi thử thách sáng tạo, hoà mình vào không gian làm việc thăng hoa nhất.\r\n\r\n• Laptop MSI được trang bị 32 GB RAM với dòng DDR5 thế hệ mới cho khả năng đa nhiệm thoải mái, hiệu suất ấn tượng, làm việc chuyên nghiệp không sợ tình trạng giật lag xảy ra. Bộ nhớ trong SSD 2 TB đem lại không gian lưu trữ rộng rãi, tốc độ truy xuất dữ liệu hay khởi động ứng dụng, laptop đều cực nhanh.\r\n\r\n• Laptop màn hình cảm ứng 16 inch với độ phân giải QHD+ (2560 x 1600), tần số quét 165 Hz, 100% DCI-P3 mang lại chất lượng hiển thị sắc nét, màu sắc chuẩn xác phục vụ cho nhu cầu làm đồ hoạ nâng cao. Tấm nền IPS mở rộng góc nhìn người dùng lên đến 178 độ.\r\n\r\n• Được hoàn thiện từ vỏ kim loại sang trọng, đẳng cấp tạo nên một sức hút mãnh liệt. Chiếc máy có khối lượng 2.39 kg, độ mỏng 19 mm vừa vặn trong chiếc balo để mang theo bên người. ', 1, '2020-10-16 08:23:33'),
(6, 'Loa siêu trầm không dây tùy chọn Sony SA-SW3 ', 5, 4, 8000000, '', 'Tổng công suất 200 W\r\nSố đường tiếng của loa 1 đường tiếng\r\n', 0, '2019-10-16 00:31:22'),
(7, 'Điện thoại iPhone 14 Pro Max 1TB', 1, 2, 49490000, '', 'Cho đến nay thì kiểu dáng thiết kế vuông vức như thế hệ iPhone 13 series vẫn được người dùng rất ưa chuộng vậy nên Apple đã giữ nguyên tạo hình này trên iPhone 14 Pro Max, các cạnh và hai mặt được gia công phẳng giúp cho điện thoại toát lên vẻ ngoài sang trọng đầy tính thời thượng.', 1, '2022-08-10 04:00:42'),
(16, 'Máy tính bảng Samsung Galaxy Tab S7 FE', 3, 1, 12990000, '', 'Với lối thiết kế nguyên khối (unibody) cùng các cạnh được tạo dáng vuông vắn khiến cho Samsung Galaxy Tab S7 FE WiFi trở nên sang trọng khi cầm nắm trên tay bởi sự đơn giản và tinh tế trên một máy tính bảng chỉ nhẹ 610 g và mỏng 6.3 mm.Với kích thước màn hình lên đến 12.4 inch mang lại không gian làm việc rộng lớn giúp bạn thỏa sức sáng tạo và làm việc hiệu quả hay giải trí tốt hơn khi máy đem đến khả năng bao quát tầm nhìn lớn trên các tác vụ chơi game, đắm chìm trong những khung hình khi thưởng thức các bộ phim bom tấn.\r\n\r\n', 1, '2020-09-22 00:29:20'),
(17, 'Laptop MSI Gaming Alpha 15 B5EEK R7', 6, 3, 32490000, '', 'Laptop MSI Gaming Alpha được trang bị bộ vi xử lý AMD Ryzen 7 5800H mạnh mẽ, mình đã thử đo hiệu năng bằng công cụ Cinebench R23 thì không chênh lệch nhiều so với dòng AMD Ryzen 7 6800H do có cùng cấu trúc 8 nhân và 16 luồng, so về mặt tổng thể chỉ hơn khoảng 6% đến 8%.Nhờ có công nghệ AMD Smart Shift cho phép CPU và GPU rời hoạt động cùng nhau để tăng hiệu suất và tiết kiệm điện năng nên khi mình chơi những tựa game sử dụng nhiều CPU như CS:GO hay VALORANT cho trải nghiệm mượt mà, FPS cao và ổn định. Hệ thống tản nhiệt của máy cũng hoạt động tốt khi mình cài đặt ở chế độ Performance, nhiệt độ luôn được tối ưu ở mức dưới 90 độ.', 1, '2019-09-11 01:09:11'),
(15, 'Laptop Apple MacBook Air M2 2022 16GB/256GB/8-core GPU (Z16000051)', 1, 3, 36490000, '', 'Tiếp nối sự thành công của M1, thế hệ M2 sử dụng quy trình sản xuất 5 nm hiện đại với CPU 8 nhân, GPU 8 nhân cho các tác vụ thiết kế đồ họa, chỉnh sửa hình ảnh hay render video trên các ứng dụng như Photoshop, Adobe Illustrator, Adobe Premiere,... chưa bao giờ dễ dàng hơn đến thế.\r\n\r\nHiệu suất tăng cao nhờ sự hỗ trợ của 20 tỷ bóng bán dẫn, tăng hơn 25% so với thế hệ M1, tốc độ băng thông lên đến 100 GB/s, hứa hẹn cung cấp trải nghiệm nhanh hơn 15 lần so với các mẫu MacBook Air chạy chip Intel. ', 1, '2021-11-17 00:29:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'tablet'),
(2, 'điện thoại'),
(3, 'laptop'),
(4, 'loa'),
(5, 'đồng hồ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
